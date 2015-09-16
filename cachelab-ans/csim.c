/* 
 * csim.c - Cache Simulator
 *  Author: Jiexi Lin
 *	AndrewID: jiexil
 *
 * 	Usage: ./csim-ref [-hv] -s <s> -E <E> -b <b> -t <tracefile>
 * 		-h: Optional help flag that prints usage info
 *		-v: Optional verbose flag that displays trace info
 *		-s <s>: Number of set index bits (S = 2s is the number of sets)
 * 		-E <E>: Associativity (number of lines per set)
 *		-b <b>: Number of block bits (B = 2b is the block size)
 *		-t <tracefile>: Name of the valgrind trace to replay
 *  
 */ 
#include <stdio.h>
#include <getopt.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "cachelab.h"
#define ERROR_MISS_ARG 1
#define ERROR_INVALID_ARG 2
#define ERROR_MISS_OPTION_ARG 3
#define STATE_HIT 0
#define STATE_MISS 1
#define STATE_MISS_EVICT 2
#define ADDRESS_BITS 64

char verboseFlag = 0;
int setNum = -1;
int lineNum = -1;
FILE *traceFile = NULL;

int setBits = -1;
int blockBits = -1;
unsigned long setMask = 0;

int hitCount;
int missCount;
int evictCount;
int timeStamp;

struct CacheLine
{
	int valid;
	int timeStamp;
	unsigned long tag;
};

struct CacheLine** myCache;

/*
 * initCache - This is the helper function which allocates memory to cache.
 *		It also init all valid bits to 0.
 */
void initCache()
{
	int i,j;

	myCache = (struct CacheLine **) malloc ( sizeof(struct CacheLine*) * setNum );
	for( i = 0; i < setNum; ++i )
	{
		myCache[i] = (struct CacheLine *) malloc( sizeof(struct CacheLine) * lineNum );
		for( j = 0; j < lineNum; ++j )
			myCache[i][j].valid = 0;
	}

}

/*
 * freeCache - This is the helper function which recycles memory from cache.
 */
void freeCache()
{
	int i;
	for( i = 0; i < setNum; ++i )
		free(myCache[i]);
	free(myCache);
}

/*
 * accessCache - This function access the cache by a given address.
 *		The return value is one of the three states: STATE_HIT, 
 *		STATE_MISS, STATE_EVICT. It also updates the contents of the
 *		cache. When eviction happens, it applies LRU rules according 
 *		to the cache line's time stamp.
 */
int accessCache( unsigned long address )
{
	int setIndex, tagValue, i, state;
	int evict, evictTime;

	setIndex = (address & setMask) >> blockBits;
	tagValue = address >> (blockBits+setBits);
	state = STATE_MISS_EVICT;
	evictTime = myCache[setIndex][0].timeStamp;
	evict = 0;

	timeStamp++;

	for( i = 0; i < lineNum; ++i )
	{
		//Cold miss
		if(!myCache[setIndex][i].valid)
		{
			state = STATE_MISS;
			break;
		}
		//Track the LRU cache line
		if( myCache[setIndex][i].timeStamp < evictTime )
		{
			evict = i;
			evictTime = myCache[setIndex][i].timeStamp;
		}
		//Cache Hit
		if( myCache[setIndex][i].tag == tagValue )
		{
			myCache[setIndex][i].timeStamp = timeStamp;
			return STATE_HIT;
		}
	}

	//Handle Miss/Evict
	i = (state == STATE_MISS_EVICT)?evict:i;
	myCache[setIndex][i].valid = 1;
	myCache[setIndex][i].timeStamp = timeStamp;
	myCache[setIndex][i].tag = tagValue;

	return state;
}

/*
 * printHelpAndExit - This function print help info and exit.
 *		According to the input errorID, it provides different
 *		help messages.
 */
void printHelpAndExit( int errorID )
{
	switch(errorID)
	{
		case ERROR_MISS_ARG: 
			printf("Missing required command line argument\n");
			break;
		case ERROR_INVALID_ARG:
			printf("Invalid command line argument\n");
			break;
		case ERROR_MISS_OPTION_ARG:
			printf("Option requires an argument\n");
			break;
	}
	printf
	(
		"Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>\n"
		"Options:\n"
		"  -h\t\tPrint this help message.\n"
		"  -v\t\tOptional verbose flag.\n"
		"  -s\t<num>\t Number of set index bits (S = 2^s is the number of sets)\n"
		"  -E\t<num>\t Associativity (number of lines per set)\n"
		"  -b\t<num>\t Number of block bits (B= 2^b is the block size)\n"
		"  -t\t<tracefile>\t Name of the valgrind trace to replay\n"
		"\n"
		"Examples:\n"
		"  linux>  ./csim -s 4 -E 1 -b 4 -t traces/yi.trace\n"
		"  linux>  ./csim -v -s 8 -E 2 -b 4 -t traces/yi.trace\n"
	);
	exit(errorID);
}

/*
 *	main
 */
int main( int argc, char * argv[] )
{
	int opt = 0;
	char opType[8];
	unsigned long address;
	int bSize, state;

	//Get options
	while((opt = getopt(argc,argv,":hvs:E:b:t:")) != -1 )
	{
		switch(opt)
		{
			case 'v':
				verboseFlag = 1;
				break;
			case 'h':
				printHelpAndExit(0);
			case 's':
				//Assume atoi always success
				setBits = atoi(optarg);
				if( setBits < 0 )
					printHelpAndExit(ERROR_INVALID_ARG);
				break;
			case 'E':
				lineNum = atoi(optarg);
				if( lineNum < 0 )
					printHelpAndExit(ERROR_INVALID_ARG);
				break;
			case 'b':
				blockBits = atoi(optarg);
				if( blockBits < 0 )
					printHelpAndExit(ERROR_INVALID_ARG);
				break;
			case 't':
				traceFile = fopen(optarg,"r");
				if( traceFile == NULL )
				{
					printf( "Cannot open %s\n",optarg);
					exit(1);
				}
				break;
			case '?':
				printHelpAndExit(ERROR_INVALID_ARG);
			case ':':
				printHelpAndExit(ERROR_MISS_OPTION_ARG);
			default:
				printHelpAndExit(0);
		}
	}
	//Check if miss arguments
	if( setBits < 0 || lineNum < 0 || blockBits < 0 || traceFile == NULL )
		printHelpAndExit(ERROR_MISS_ARG);

	hitCount = 0;
	missCount = 0;
	evictCount = 0;
	timeStamp = 0;

	setNum = (1<<setBits);
	setMask = ~((~0L << (setBits+blockBits))|((1L << blockBits)-1L));
	initCache();

	while( fscanf(traceFile, "%s %lx,%d", opType, &address, &bSize) != EOF )
	{
		if(opType[0] == 'I') 
			continue;
		state = accessCache(address);
		switch(state)
		{
			case STATE_HIT:
				++hitCount;
				break;
			case STATE_MISS:
				++missCount;
				break;
			case STATE_MISS_EVICT:
				++missCount;
				++evictCount;
		}
		if( opType[0] == 'M' )
			++hitCount;

		if( verboseFlag == 1 )
		{
			printf("%s %lx,%d ", opType, address, bSize );
			switch( state )
			{
				case STATE_HIT:
					printf("hit ");
					break;
				case STATE_MISS:
					printf("miss ");
					break;
				case STATE_MISS_EVICT:
					printf("miss eviction ");
			}
			if(opType[0] == 'M')
				printf("hit");
			printf("\n");
		}
	}

	printSummary( hitCount, missCount, evictCount );
	freeCache();
	fclose(traceFile);
	return 0;
}






