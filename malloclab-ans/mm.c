/*
 * mm.c
 *
 * AndrewID: jiexil
 * Name: Jiexi Lin
 * Nickname: railgun
 * 
 * Main Idea:
 *      Binary seglist with an optimized best fit policy
 * 
 * Reference:
 *      csapp: mm.c
 *
 * Settings:
 *      1) Number of seglists: 9
 *          [16B,32B), [32B, 64B), ..., [4096B, +inf)
 *      2) Chunksize: 256B
 *      3) Min block size: 16B
 *      4) Alignment: 8B
 *           All block pointers should be 8B aligned
 *
 * Optimizations:
 *      1) Use 4 byte offsets instead of 8 byte pointers
 *      2) Eliminate the footers
 *      3) Use a released best fit policy when scanning the seglist
 *      4) Take the last block into account when extending the heap
 *
 * Other policies:
 *      1) LIFO insert policy within a seglist
 *      2) Split if the remaining part is larger than min block size
 *      3) Immediately coalesce
 *
 * Heap structure:
 * low  +---------------------------+  <-- free_listp
 *      | 9 x 8B seglist headers    |
 *      +---------------------------+  <-- seglist_end
 *      | 4B Padding                |
 *      +---------------------------+
 *      | 4B header     first block |
 *      +---------------------------+  <-- heap_listp (first block pointer)
 *      |            ...            |
 *      +---------------------------+
 *      | Epilogue header           |
 * high +---------------------------+  <-- brk pointer
 *
 *      Seglist header contains two offsets, the seglist structure is:
 *        +------------------------------+ 
 *        | +----+    +----+    +----+   |
 * header +-|prev| <--|prev| <--|prev| <-+
 *          +----+    +----+    +----+
 *      +-> |next|--> |next|--> |next|-+
 *      |   +----+    +----+    +----+ |
 *      +------------------------------+
 *
 * Block structure (free block):
 *      31                3   2   1   0
 *  low +------------------+----------+
 *      |header:block size |pa/pf, a/f|      
 *      +------------------+----------+  <-- block pointer
 *      |4B previous free block offset|
 *      +-----------------------------+
 *      |4B next free block offset    |
 *      +-----------------------------+
 *      |footer:block size | undefine |  
 * high +-----------------------------+
 *
 *      Only the free block has a footer and the two offsets.   
 *      The pa/pf bit in header indicates whether the previous block is free.
 *      Block pointers always point to the payload.
 *      The "block size" in the epilogue header is always 0.
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */

//#define DEBUG 
#ifdef DEBUG
# define VERBOSE 1
# define dbg_printf(...)    printf(__VA_ARGS__)
#else
# define VERBOSE 0
# define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* private global variables */
static char *free_listp = 0;    // Pointer to the first seglist header
static char *heap_listp = 0;    // Pointer to the first block (virtual)
static char *seglist_end = 0;   // Boundary of the seglist header array


// Begin mallocmacros
// Basic constants
#define ALIGNMENT 8 	 		// double word allignment
#define WSIZE 4 	  			// word size, footer/header/offset
#define DSIZE 8	      		// size of: size_t, pointers, seglist headers
#define MINBLOCK 16				// Minimal block size:
							    //	4B header, 4B*2 offsets, 4B footer
#define LOGMINSB 4              // log2(MINBLOCK)
#define LOGMAXSB 12             // Max seglist block size is 2^(LOGMAXSB) Byte
#define CHUNKSIZE (1 << 8)      // Extend heap by this amount 
#define UIMAX     (1 << 31)     // Max unsigned int

//flags
#define ALLOC 0x1
#define PREALLOC 0x2

#define MAX(x,y) ((x) > (y)? (x) : (y))
#define MIN(x,y) ((x) < (y)? (x) : (y))

/* Pack a size prev block's allocated bit, allocated bit into a word */
#define PACK(size, prev_alloc, alloc)  ((size) | (prev_alloc) | (alloc))

/* Read and write a word at address p */
#define GETW(p)       (*(unsigned int *)(p))         
#define PUTW(p, val)  (*(unsigned int *)(p) = (unsigned int)(val)) 

/* Read a 8 byte pointer at address p, *p is the offset from heap */
#define GETPT(p)        ((char *)(free_listp + GETW(p)))

/* Get the pointer p's offset from the heap starting point */
#define GETOFFSET(p)    ((unsigned long)p - (unsigned long)free_listp)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      
#define FTRP(bp)       ((char *)(bp) + (GETW(HDRP(bp)) & ~(ALIGNMENT-1))\
                        - DSIZE)

/* get the size, prev allocated and allocated fields from block pointer bp */
#define GET_SIZE(bp)  (GETW(HDRP(bp)) & ~(ALIGNMENT-1))         
#define GET_ALLOC(bp) (GETW(HDRP(bp)) & ALLOC)
#define GET_PREALLOC(bp) (GETW(HDRP(bp)) & PREALLOC)

/* Given block ptr bp, return the block pointer of the prev/next free block */
#define GET_PREVFBP(bp) GETPT(bp)
#define GET_NEXTFBP(bp) GETPT(((char *)(bp) + WSIZE))

/* Given block ptr bp, return the address where prev/next offset is stored */
#define PREV_FPP(bp)    ((char*)(bp))
#define NEXT_FPP(bp)    ((char*)(bp)+4)

/* Given block ptr bp, compute address of adjacent blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(bp))
#define PREV_BLKP(bp)  ((char *)(bp) - \
                        (GETW((char *)bp - DSIZE) & ~(ALIGNMENT-1)) )

/* set/reset next block's PREALLOC bit */
#define SET_NBLK_PREALLOC(bp) (PUTW(HDRP(NEXT_BLKP(bp)), \
                              (GETW(HDRP(NEXT_BLKP(bp)))|PREALLOC) ) )
#define RESET_NBLK_PREALLOC(bp) (PUTW(HDRP(NEXT_BLKP(bp)), \
                                (GETW(HDRP(NEXT_BLKP(bp)))& ~PREALLOC)))

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~(ALIGNMENT-1))

//Points to the "payload" if the epilogue header
#define LASTBP ((unsigned char*)mem_heap_hi()+1)

/* Function prototypes for internal helper routines */
static void *extend_heap(size_t size);
static void place(void *bp, size_t asize);
static void *find_fit(size_t asize);
static void *coalesce(void *bp);
static void printblock(void *bp); 
static int checkheap(int verbose);
static int checkblock(void *bp);
static int checkfreelist(int verbose, int freeCount);
static inline int in_heap(const void *p);
static void seg_insert(void *bp, size_t size);
static inline void delete(void *bp);
static inline size_t get_seg_index(size_t size);


/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void) {
    dbg_printf("Enter mm_init()\n");
    int i;

    if((free_listp = mem_sbrk((LOGMAXSB-LOGMINSB+2)*DSIZE)) == (void *)-1) {
    	return -1;
    }

    //init seglist headers
    for( i = 0; i <= (LOGMAXSB - LOGMINSB); ++i ) {
        PUTW(free_listp + i*DSIZE, i*DSIZE);
        PUTW(free_listp + i*DSIZE + WSIZE, i*DSIZE);
    }

    PUTW(free_listp + i*DSIZE, 0);      //Padding
    PUTW(free_listp + i*DSIZE + WSIZE, 
         PACK(0, PREALLOC, ALLOC));	    //Epilogue header

    heap_listp = free_listp + (i+1)*DSIZE;
    seglist_end = heap_listp - DSIZE;

    if( extend_heap(CHUNKSIZE) == NULL) {
        dbg_printf("Exit mm_init() with error\n");
    	return -1;
    }

    dbg_printf("\theap_listp = %p, free_listp = %p\nExit mm_init()\n", 
        heap_listp, free_listp);

    return 0;
}

/*
 * malloc
 */
void *malloc (size_t size) {
    size_t asize;		// Adjusted block size
    size_t extendsize;  // Amount to extend heap if no fit
    void *bp;

    dbg_printf("Enter malloc(size = %lu)\n",size);

    if( heap_listp == NULL ){
    	mm_init();
    }

    if( size == 0 ){
    	dbg_printf("Exit malloc()\n");
        return NULL;
    }

    if( size <= MINBLOCK - WSIZE ){
    	asize = MINBLOCK;
    }
    else{
    	asize = ALIGN(size+WSIZE);
    }

    if((bp = find_fit(asize)) !=  NULL ){
        //Find suitable free block
    	place(bp, asize);
        dbg_printf("Exit malloc()\n");
    	return bp;
    }

    //No fit block
    extendsize = asize;
    if( !GET_PREALLOC(LASTBP) ){
        extendsize -= GET_SIZE(PREV_BLKP(LASTBP));
    }

    extendsize = MAX(extendsize, CHUNKSIZE);
    if(( bp = extend_heap(extendsize)) == NULL ){
        dbg_printf("Exit malloc() with error in extend_heap()\n");
    	return NULL;
    }

    place(bp,asize);
    
    dbg_printf("Exit malloc()\n");
    return bp;
}

/*
 * free
 */
void free(void *bp) {

    dbg_printf("Enter free(bp = %p), size = %u\n",
                 bp, (bp == NULL)? 0: GET_SIZE(bp));

    if( bp == NULL ) {
        dbg_printf("Exit free()\n");
    	return;
    }

    size_t size = GET_SIZE(bp);

    //Set the flag bits
    PUTW(HDRP(bp),PACK(size, GET_PREALLOC(bp), 0)); //Set header
    PUTW(FTRP(bp),GETW(HDRP(bp)));                  //Set footer
    RESET_NBLK_PREALLOC(bp);          //Reset the pa/pf bit in the next block
    coalesce(bp);
    dbg_printf("Exit free()\n");
}

/*
 * realloc - reference: csapp:mm.c
 */
void *realloc(void *bp, size_t size) {
	size_t oldsize;
	void *newptr;

    dbg_printf("Enter realloc(bp = %p, size = %lu)\n", bp, size);

	if( size == 0 ) {
		free(bp);
        dbg_printf("Exit realloc()\n");
		return 0;
	}

	if( bp == NULL ) {
		newptr = malloc(size);
        dbg_printf("Exit realloc()\n");
        return newptr;
	}

	if((newptr = malloc(size)) == NULL ) {
        dbg_printf("Exit realloc() with error in malloc()\n");
		return 0;
	}

	oldsize = GET_SIZE(bp);
	if( size < oldsize ) {
		oldsize = size;
	}

    //Copy and free
	memcpy(newptr, bp, oldsize);
    free(bp);
    dbg_printf("Exit realloc()\n");
    return newptr;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc (size_t nmemb, size_t size) {
	size_t bytes = nmemb * size;

    dbg_printf("Enter calloc(nmemb = %lu, size = %lu)", nmemb, size);

    void *newptr = malloc(bytes);
    if( newptr == NULL )
    	return NULL;
    memset( newptr, 0, bytes );
    dbg_printf("Exit calloc()\n");
    return newptr;
}

/*
 * mm_checkheap
 */
void mm_checkheap(int lineno) {
    int res = 0;
    dbg_printf("CHECK START\n");

    //check heap structure consistency
    if( (res = checkheap(VERBOSE)) < 0 ) {
        printf("\tError occur at line %d\n", lineno);
        return;
    }   

    //check free list structure consistency
    if( checkfreelist(VERBOSE,res) < 0 ) {
        printf("\tError occur at line %d in free list test\n", lineno);
    }

    dbg_printf("CHECK END\n");
    return;
}

/*
 * 
 * The remaining routines are internal helper routines 
 */

/* 
 * extend_heap - Extend heap with free block and return its block pointer
 */
static void *extend_heap(size_t size) {
    char *bp;

    if ((bp = mem_sbrk(size)) == (void*)-1)  
		return NULL;                                      

    /* Initialize free block header/footer and the epilogue header */
    PUTW(HDRP(bp), PACK(size, GET_PREALLOC(bp), 0)); /* Free block header */
    PUTW(FTRP(bp), GETW(HDRP(bp)));                  /* Free block footer */  
    PUTW(HDRP(NEXT_BLKP(bp)), PACK(0, 0, ALLOC));    /* New epilogue header */

    /* Coalesce if the previous block was free */
    return coalesce(bp);                                          
}

/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 */
static void *coalesce(void *bp)  {
    unsigned int prev_alloc = GET_PREALLOC(bp);
    unsigned int next_alloc = GET_ALLOC(NEXT_BLKP(bp));
    unsigned int size = GET_SIZE(bp);

    if (prev_alloc && next_alloc) {            /* Case 1 */
    	seg_insert(bp, size);
		return bp;
    }

    else if (prev_alloc && !next_alloc) {      /* Case 2 */
		size += GET_SIZE(NEXT_BLKP(bp));
        delete((void*)(NEXT_BLKP(bp)));
		PUTW(HDRP(bp), PACK(size, PREALLOC, 0));
		PUTW(FTRP(bp), GETW(HDRP(bp)));
		seg_insert(bp,size);
    }

    else if (!prev_alloc && next_alloc) {      /* Case 3 */
    	size += GET_SIZE(PREV_BLKP(bp));
        delete((void*)(PREV_BLKP(bp)));
    	PUTW(FTRP(bp), PACK(size, GET_PREALLOC(PREV_BLKP(bp)), 0));
    	PUTW(HDRP(PREV_BLKP(bp)), GETW(FTRP(bp)));
    	bp = PREV_BLKP(bp);
    	seg_insert(bp, size);
    }

    else {                                     /* Case 4 */
    	size += GET_SIZE(PREV_BLKP(bp)) + 
    	    GET_SIZE(NEXT_BLKP(bp));
        delete(PREV_BLKP(bp));
        delete(NEXT_BLKP(bp));
    	PUTW(HDRP(PREV_BLKP(bp)), PACK(size, GET_PREALLOC(PREV_BLKP(bp)), 0));
    	PUTW(FTRP(NEXT_BLKP(bp)), GETW(HDRP(PREV_BLKP(bp))));
    	bp = PREV_BLKP(bp);
    	seg_insert(bp, size);
    }

    return bp;
}

/* $end mmextendheap */

/* 
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size.
 *		   Also responsible for setting the a/f and pa/pf bits as well as
 *         managing the freelist.
 */
static void place(void *bp, size_t asize) {
    size_t csize = GET_SIZE(bp);
    delete(bp);   

    if ((csize - asize) >= MINBLOCK) { 
	   PUTW(HDRP(bp), PACK(asize, GET_PREALLOC(bp), 1));
	   bp = NEXT_BLKP(bp);
	   PUTW(HDRP(bp), PACK(csize-asize, PREALLOC, 0));
	   PUTW(FTRP(bp), GETW(HDRP(bp)));
       //Next block's PREALLOC bit is still correct

	   seg_insert(bp, csize - asize);
    }
    else { 
	   PUTW(HDRP(bp), PACK(csize, GET_PREALLOC(bp), 1));
	   SET_NBLK_PREALLOC(bp);
    }
}

/* 
 * find_fit - Find a fit for a block with asize bytes
 *            If not found, return NULL
 */
static void *find_fit(size_t asize) {
    /* Nearly best fit search within the seglist */
    char *bp, *res = NULL;
    char *fp = free_listp + (get_seg_index(asize) * DSIZE);
    unsigned int gap, size;

    for(; fp != seglist_end; fp += DSIZE ) {
        gap = UIMAX;
        for( bp = GET_PREVFBP(fp); bp != fp; bp = GET_PREVFBP(bp) ) {
            size = GET_SIZE(bp);
            if(size < asize )
                continue;
            if(size - asize < MINBLOCK)
                /* Early return if block size is bigger than asize by at most
                   MINBLOCK */
                return (void *)bp;
            if(size - asize < gap){
                res = bp;
                gap = size - asize;
            }
        }
        if( res != NULL )
            // return the best fit block in current seglist
            return (void*) res;
    }

    return NULL; //no fit
}

static void printblock(void *bp) {
    size_t size, alloc, palloc;

    size = GET_SIZE(bp);
    alloc = GET_ALLOC(bp);
    palloc = GET_PREALLOC(bp);

    printf("Block %p:\n",bp);

    if (size == 0) {
	   printf("\t EOL\n");
	   return;
    }

    printf("\theader: [%lu:%s:%c] ", 
            size, (palloc ? "pa" : "pf" ), (alloc ? 'a' : 'f'));
    
    //Only free block has footers and offsets
    if( !alloc ) {
        size = (GETW(FTRP(bp))& ~(ALIGNMENT-1));
        alloc = (GETW(FTRP(bp)) & ALLOC);
        palloc = (GETW(FTRP(bp)) & PREALLOC);
        printf("footer: [%lu:%s:%c]\n", 
               size, (palloc ? "pa" : "pf" ), (alloc ? 'a' : 'f'));
        printf("\tprev:%p, next:%p", GET_PREVFBP(bp), GET_NEXTFBP(bp));
    }

    printf("\n");
    return;
}

static int checkblock(void *bp) {
	int res = 0;

    //Check block pointers range
    if( !in_heap(bp) ){
        printf("Error: %p is not in heap\n", bp);
        return -1;
    }
    if( (char*)bp < heap_listp ) {
        printf("Error: %p is not a block pointer\n", bp);
        return -1;
    }

    //Check alignment
    if ((size_t)bp % 8){
		res = -1;
		printf("Error: %p is not doubleword aligned\n", bp);
	}
    //Check header-footer consistency
    if (!GET_ALLOC(bp) && GET_SIZE(bp) != (GETW(FTRP(bp))& ~(ALIGNMENT-1)) ) {
		res = -1;
		printf("Error: header does not match footer at %p\n", bp);
	}
    //Check a/f bit - pa/pf bit consistenct
	if ( GET_ALLOC(bp) != (GET_PREALLOC(NEXT_BLKP(bp)) >> 1 )) {
		res = -1;
		printf("Error: inconsistency alloc bit and  prealloc bit at %p\n", bp);
	}
    //Check no adjacent free blocks
	if ( !GET_ALLOC(bp) && (!GET_ALLOC(NEXT_BLKP(bp)) || !GET_PREALLOC(bp))) {
		res = -1;
		printf("Error: consecutive free blocks\n");
	}

    return res;
}



/* 
 * checkheap - Minimal check of the heap for consistency 
 *             return the number of free blocks or -1 if error
 */
int checkheap(int verbose) {
    char *bp = heap_listp;
    int freeCount = 0;
    int res = 0;

    dbg_printf("HEAP CHECK START\n");

    if( GETW(heap_listp - DSIZE) != 0 ){
        printf("Bad padding before first block\n");
        res = -1;
    }

    for (bp = heap_listp; GET_SIZE(bp) > 0; bp = NEXT_BLKP(bp)) {
        if( checkblock(bp) < 0 ){
            printblock(bp);
            res = -1;
        }
        else if( verbose ){
            printblock(bp);
        }

        if( !GET_ALLOC(bp) ){
            ++freeCount;
        }
    }

    //Check the epilogue header
    if ((GET_SIZE(bp) != 0) || !(GET_ALLOC(bp)))
	    printf("Bad epilogue header\n");
    else if( verbose )
        printblock(bp);

    dbg_printf("HEAP CHECK END\n");
    return (res < 0) ? res : freeCount;
}

int checkfreelist(int verbose, int freeCount){
    char *fp, *bp, *prevbp, *nextbp;
    int res = 0, lows = 8, size;
    int count = 0;

    dbg_printf("FREELIST CHECK START, #fb = %d\n", freeCount);

    if( free_listp != mem_heap_lo() ){
        printf("Error: Bad free list sentry node (%p)\n", free_listp);
        dbg_printf("Exit checkfreelist with error\n");
        return -1;
    }

    for( fp = free_listp; fp != seglist_end; fp += DSIZE ) {
        lows <<= 1;
        if(verbose) {
            printf("Seg(%p): %d byte\n", fp, lows);
        }

        for(bp = GET_NEXTFBP(fp); bp != fp; bp = GET_NEXTFBP(bp)) {
            prevbp = GET_PREVFBP(bp);
            nextbp = GET_NEXTFBP(bp);
            size = GET_SIZE(bp);

            //Check if block is unallocated
            if( GET_ALLOC(bp) ){
                printf("Error: Allocated block in free list (%p)\n", bp);
                checkblock(bp);
                res = -1;
            }
            
            //Check if freeblock count matches
            if(++count > freeCount){
                printf("Error: Too many free blocks in the free list\n");
                res = -1;
            }
            
            //Check if the pointer's value is valid
            if( !in_heap((void*)prevbp) || !in_heap((void*)nextbp)) {
                printf("Error: Free list pointer out of range\n");
                res = -1;
            }

            //Check the consistency of the double linked list
            if( GET_NEXTFBP(prevbp) != (char *)bp  ){
                printf("Error: Inconsistency prev/next pointers\n");
                res = -1;
            }

            //Check the block size consistency in the seglist
            if( (size < lows) || 
                ( (lows != (1<<LOGMAXSB)) && (size > (lows << 1)) ) ) {
                printf("Error: Free block size does not fit the seglist\n");
                res = -1;
            }

            if( res == -1 || verbose ) {
                printblock(bp);
            }
        }
    }

    dbg_printf("FREELIST CHECK END\n");
    return res;
}

/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static inline int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Insert a free block via a seglist flavor, use LIFO approach
 */
static void seg_insert(void *bp, size_t size) {
	char *t;
    char *fp = free_listp + (get_seg_index(size) * DSIZE);

    t = GET_NEXTFBP(fp);
    PUTW(NEXT_FPP(fp), GETOFFSET(bp));
    PUTW(NEXT_FPP(bp), GETOFFSET(t));
    PUTW(PREV_FPP(t), GETOFFSET(bp));
    PUTW(PREV_FPP(bp), GETOFFSET(fp));
}

/*
 * Delete a free block from the list
 */
static inline void delete(void *bp) {
	PUTW(NEXT_FPP(GET_PREVFBP(bp)), GETW(NEXT_FPP(bp)));
	PUTW(PREV_FPP(GET_NEXTFBP(bp)), GETW(PREV_FPP(bp)));
}


/*
 * Get the seglist index of a block of certain size
 */
static inline size_t get_seg_index(size_t size) {
    //Leveraging the float's exp part
    union{ float f; unsigned int ui; } fcast;
    fcast.f = (float)size;
    return MIN(((fcast.ui >> 23) & 0xff) - 127, LOGMAXSB) - LOGMINSB;
}
