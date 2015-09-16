/*
 * cache.c
 *	 - the realization of a loose LRU cache
 *	 - use an Open Hash table to store cache block
 *	 - Implement LRU by moving the hitted blocks to the end 
 *	   and evict the head nodes
 *	 - Use two sets of semophores:
 *		- rw lock to achieve exclusive writers and mutual readers
 *
 * AndrewID: jiexil
 * Name: Jiexi Lin
 * Nickname: railgun
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cache.h"
#include <assert.h>

//#define DEBUG 

#ifdef DEBUG
# define dbg_printf(...)    printf(__VA_ARGS__); fflush(stdout)
# define dbg_enter()  dbg_printf("Enter function: %s()\n", __func__)
# define dbg_exit() dbg_printf("Exit function %s()\n", __func__)
#else
# define dbg_printf(...)
# define dbg_enter()
# define dbg_exit()
#endif

static int init_list(blist_t *lp);
static int init_block(block_t *bp, 
	cid_t *cid, const char *content, size_t size);
static void destroy_list(blist_t *lp);
static void destroy_block(block_t *bp);
static unsigned hash_index(char *id);
static void evict_to_fit( cache_t *cp, int size );
static void push_back(block_t *head, block_t *bp);
static void promote_lru(block_t *lp, block_t *bp);
static block_t *search_lru(cache_t *cp, cid_t *cid );
static void checklist(cache_t *cp);

/*
 * init_cache - initialize the whole cache
 */
int init_cache(cache_t *cp){
	dbg_enter();

	cp->readcnt = 0;
	cp->total_size = 0;
	Sem_init(&(cp->rcnt_mutex), 0, 1);
	Sem_init(&(cp->write_sem), 0, 1);

	int i = 0;
	for(; i < HASHSIZE; ++i )
		if(init_list(&(cp->lists[i])) < 0){
			fprintf(stderr, "error init cache\n");
			return -1;
		}

	dbg_exit();
	return 0;
}

/*
 * init_list - initialize a list in the open hash
 */
int init_list(blist_t *lp) {
	dbg_enter();

	Sem_init(&(lp->list_mutex), 0, 1);
	if((lp->head = (block_t*)malloc(sizeof(block_t))) < 0){
		fprintf(stderr, "error init list\n");
		return -1;
	}
	if( init_block(lp->head, NULL, NULL, 0) < 0 )
		return -1;
	lp->head->next = lp->head;
	lp->head->prev = lp->head;
	return 0;
}

/*
 * init_block - initialize a block
 */
int init_block(block_t *bp, 
	cid_t *cid, const char *content, size_t size) {

	if( cid != NULL ){
		if((bp->id = (char*)malloc(MAXLINE)) < 0){
			fprintf(stderr, "error init block\n" );
			return -1;
		}
		strncpy(bp->id, cid->id, MAXLINE);
	}
	else
		bp->id = NULL;

	if( content && size ){
		if((bp->content = (char*)malloc(size)) < 0) {
			fprintf(stderr, "error init block\n");
			return -1;
		}
		memcpy((void *)bp->content, content, size);
		bp->size = size;
	}
	else{
		bp->content = NULL;
		bp->size = 0;
	}

	bp->prev = NULL;
	bp->next = NULL;
	dbg_exit();
	return 0;
}

/*
 * destroy_cache - destroy the whole cache
 */
void destroy_cache(cache_t *cp) {
	int i = 0;
	dbg_enter();

	for(; i < HASHSIZE; ++i )
		destroy_list(&(cp->lists[i]));
	dbg_exit();
}

/*
 * destroy_list - destroy a list of blocks
 */
void destroy_list( blist_t *lp) {
	block_t *bp = lp->head;
	dbg_enter();

	while(bp->next != lp->head) {
		bp = bp->next;
		destroy_block(bp);
	}
	destroy_block(lp->head);
	dbg_exit();
}

/*
 * destroy_block - destroy a cache block
 */
void destroy_block( block_t *bp) {
	dbg_enter();

	if(bp->id != NULL) Free(bp->id);
	if(bp->content != NULL) Free(bp->content);
	bp->next = NULL;
	bp->prev = NULL;
	Free(bp);

	dbg_exit();
}

// BKDR Hash Function: string -> unsigned int
unsigned int hash_index(char *str)
{
    unsigned int seed = 131; // 31 131 1313 13131 131313 etc..
    unsigned int hash = 0;

    while (*str)
    {
        hash = hash * seed + (*str++);
    }

    return (hash & 0x7FFFFFFF) % HASHSIZE;
}

/*
 * gen_cid - generate the key of the cache block from uri
 */
void gen_cid(cid_t *cid, 
	const char *host, const char *port, const char *path){
	//copy host in a case insensitive way
	const char *p = host;
	char *q = cid->id;

	while( *p )
		*(q++) = tolower(*(p++));
	*q = 0;

	strcat(cid->id,":");
	strcat(cid->id,port);
	strcat(cid->id,path);

	cid->index = hash_index(cid->id);
}

/*
 * search_lru - search the cache for cache hit. And update to implement LRU.
 *	 - if hit, promote the hitted block to the end of its list
 *
 * return NULL if cache miss
 * return a pointer pointed the hitted block if cache hist
 */
block_t *search_lru( cache_t *cp, cid_t *cid ){
	int index = cid->index;
	//lock the list
	dbg_enter();

	P(&(cp->lists[index].list_mutex));
	checklist(cp);

	block_t *head = cp->lists[index].head;
	block_t *bp = cp->lists[index].head->next;

	while(bp != head){
		if(strcmp(bp->id, cid->id) == 0)
			break;
		bp = bp->next;
	}

	//find & promote
	if( bp != head ) {
		promote_lru(head, bp);
	}
	else
		bp = NULL;
	//not found

	//unlock the list
	checklist(cp);
	V(&(cp->lists[index].list_mutex));

	dbg_exit();
	return bp;
}

/*
 * try_from_cache - try to read from cache via a key
 *
 *	return 0 on cache miss
 * 	return 1 on cache hit
 *	return -1 on error
 */
int try_from_cache( cache_t *cp, int clientfd, cid_t *cid) {

	block_t *bp;
	int rc;
	dbg_enter();

	//First reader grap the write lock
	P(&(cp->rcnt_mutex));
	(cp->readcnt)++;
	if( cp->readcnt == 1 )
		P(&(cp->write_sem));
	V(&(cp->rcnt_mutex));

	if((bp = search_lru(cp, cid)) != NULL ){
		//cache hit, transfer to client
		if( Rio_writen(clientfd, bp->content, bp->size) < 0 )
				rc = -1;
		else
			rc = 1;
	}
	else
		rc = 0;

	P(&(cp->rcnt_mutex));
	(cp->readcnt)--;
	if( cp->readcnt == 0 )
		V(&(cp->write_sem));
	V(&(cp->rcnt_mutex));

	dbg_exit();
	return rc;
}

/*
 * update_cache - insert a new block into cache, evict if neccessary
 *	
 *	return -1 on error
 * 	return 0 on success
 */
int update_cache( cache_t *cp, cid_t *cid, 
	const char *content, size_t size ) { 
	dbg_enter();

	block_t *bp;
	int rc = 0;
	//Grap write lock
	P(&(cp->write_sem));
	checklist(cp);
	
	if( cp->total_size + size > MAX_CACHE_SIZE )
		evict_to_fit( cp, size );

	if((bp = (block_t*)malloc(sizeof(block_t))) < 0
		|| init_block(bp, cid, content, size) < 0){
		rc = -1;
	}
	else
		push_back(cp->lists[cid->index].head, bp);

	cp->total_size += size;
	//Return write lock
	V(&cp->write_sem);

	checklist(cp);
	dbg_exit();
	return rc;
}

/*
 * evict_to_fit - evict in an LRU manner to spare mem for a new block
 *	 - always evict the head of a list
 *	 - work through head nodes of all lists... a loose LRU manner...
 *	 - evict until fit
 *
 *	return -1 on error
 *	return 0 on success
 */
void evict_to_fit( cache_t *cp, int size ){
	int i = 0;
	block_t *head, *bp;

	dbg_enter();
	checklist(cp);
	while(cp->total_size + size > MAX_CACHE_SIZE){
		head = cp->lists[i].head;
		i = (i+1)%HASHSIZE;

		if( head->next == head )
			continue;
		//Need no lock. We are exclusive writers
		cp->total_size -= head->next->size;	
		bp = head->next;	
		head->next = bp->next;
		bp->next->prev = head;

		destroy_block(bp);
	}
	checklist(cp);
	dbg_exit();
}

/*
 * push_back - push a block node into the back of a list
 */
void push_back(block_t *head, block_t *bp){
	dbg_enter();
	block_t *rear = head->prev;
	rear->next = bp;
	bp->prev = rear;
	bp->next = head;
	head->prev = bp;
	dbg_exit(); 
}

/*
 * promote_lru - delete a node from the list, and reinsert in at back
 */
void promote_lru( block_t *head, block_t *bp ) {
	dbg_enter();
	//delete from list
	bp->prev->next = bp->next;
	bp->next->prev = bp->prev;

	//insert at back
	push_back(head, bp);
	dbg_exit();
}

void checklist(cache_t *cp ){
#ifdef DEBUG
	int i = 0;
	block_t *bp, *head;
	for(; i < HASHSIZE; ++i){
		head = cp->lists[i].head;
		bp = head;
		do{
			assert(bp->next->prev == bp);
			bp = bp->next;
		}while(bp != head);
	}
#else
	cp = NULL;
#endif
}