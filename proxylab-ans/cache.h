/*
 * cache.h
 *	 - prototype and definition for web page cache
 * AndrewID: jiexil
 * Name: Jiexi Lin
 * Nickname: railgun
 *
 */
#include "csapp.h"

#define HASHSIZE 1009
/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

//cache id
typedef struct {
	char id[MAXLINE];
	unsigned int index;
} cid_t;

//cache block, double linked list
typedef struct block_t{
    char *id;
    char *content;
    int size;
  	struct block_t *prev;
    struct block_t *next;
} block_t;

//block list
typedef struct {
	sem_t list_mutex;
	block_t *head;
} blist_t;

//cache
typedef struct {
	blist_t lists[HASHSIZE];
	int readcnt;
	int total_size;
	sem_t write_sem;
	sem_t rcnt_mutex;
} cache_t;


int init_cache(cache_t *cp);
void destroy_cache(cache_t *cp);
void gen_cid(cid_t *cid, 
	const char *host, const char *port, const char *path);

int try_from_cache(cache_t *cp, int clientfd, cid_t *cid);
int update_cache( cache_t *cp, cid_t *cid, 
	const char *content, size_t size);

