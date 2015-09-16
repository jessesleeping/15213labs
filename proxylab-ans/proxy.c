/*
 * proxy.c
 *	 - A simple proxy
 *	 - Only handles the GET method
 *   - Concurrent threads
 *   - Loose LRU cache
 *
 * AndrewID: jiexil
 * Name: Jiexi Lin
 * Nickname: railgun
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "csapp.h"
#include "cache.h"

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

#define MIN(x,y) ((x) < (y) ? (x) : (y))

/* You won't lose style points for including these long lines in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *connection_hdr = "Connection: close\r\n";
static const char *proxy_connection_hdr = "Proxy-connection: close\r\n";

typedef struct {
    char method[MAXLINE];
    char host[MAXLINE];
    char path[MAXLINE];
    char port[MAXLINE];
    char version[MAXLINE];
} request_line;

typedef struct {
    char *content;
    size_t length;
    size_t capacity;
} web_object;

//Function prototype
static void* thread_job(void *vargp);
static int read_parse_request_line(request_line *rlp, rio_t *rp);
static int client2server(request_line *rlp, rio_t *rp);
static int server2client(int clientfd, int serverfd, 
    web_object *wbp, cid_t *cid);
static int handle_request_header(int serverfd, char *buf, int nread);

static int init_web_object(web_object *wbp);
static int update_web_object(web_object *wbp, char *buf, ssize_t l);
static void destory_web_object(web_object *wbp);
static int parse_response_line(char *rl, int *e);
static int parse_response_header(char *buf, int *ep, int *elp);

//Global variable
cache_t cache;

int main( int argc, char *argv[] ) {
    int listenfd, *connfdp;
    socklen_t clientlen;
    pthread_t tid;
    struct sockaddr_in clientaddr;

    //ignore SIGPIPE
    Signal(SIGPIPE, SIG_IGN);

    //init cache
    if(init_cache(&cache) < 0)
        return 1;

    //check arguments
    if( argc != 2 ){
    	fprintf(stderr, "usage: %s <port>\n", argv[0]);
    	exit(1);
    }

    listenfd = Open_listenfd(argv[1]);
    if( listenfd < 0 ) {
    	fprintf(stderr, "Cannot open the port: %s\n", argv[1]);
    	exit(1);
    }

    while(1) {

        if((connfdp = (int*)malloc(sizeof(int))) == NULL ){
            fprintf(stderr, "malloc failed, ignore current request\n");
            continue;
        }

        *connfdp = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        dbg_printf("Accept client on fd %d\n", *connfdp);

        Pthread_create(&tid, NULL, (void *)thread_job, (void *)connfdp);
    }

    destroy_cache(&cache);
    return 0;
}

/*
 * thread_job - the thread routine that handles the http request
 *   - parse the request line
 *   - search the cache and forward the cached content if hit
 *   - if cache miss, get the resource from server and update the cache
 */
static void *thread_job( void *vargp ) {
    dbg_enter();

    Pthread_detach(pthread_self());
    int clientfd = *(int *)vargp;
    int serverfd = -1, rc;
    web_object wb;
    cid_t cid;
    rio_t rio;
    request_line rl;    
    
    Free(vargp);
    Rio_readinitb(&rio, clientfd);

    //Parse the request line
    if(read_parse_request_line(&rl, &rio) < 0 ) {
        fprintf(stderr, "bad request line\n");
        Close(clientfd);
        dbg_printf("error and thread exit\n");
        Pthread_exit(NULL);
    }
    //non-GET
    if( strcmp("GET", rl.method) != 0 ){
        dbg_printf("non-GET: %s\n", rl.method);
        Close(clientfd);
        Pthread_exit(NULL);
    }
    //Only handle GET method
    gen_cid(&cid, rl.host, rl.port, rl.path);

    //Check if cache hit
    rc = try_from_cache(&cache, clientfd, &cid);
    if( rc == -1 ) {
        //error
        fprintf(stderr,"error when trying cache\n");
        Close(clientfd);
        Pthread_exit(NULL);
    }
    else if( rc == 0 ) {
        //Cache miss. Send request to the server
        if((serverfd = client2server(&rl, &rio)) < 0 ) {
            fprintf(stderr, "error forwarding to server\n");
            Close(clientfd);
            dbg_printf("error and thread exit\n");
            Pthread_exit(NULL);
        }

        //Get resource from server and update the cache
        init_web_object(&wb);
        if(server2client(clientfd, serverfd, &wb, &cid) < 0 )
            fprintf(stderr, "error forwarding to client\n");
        destory_web_object(&wb);
        Close(serverfd);
    }

    Close(clientfd);
    dbg_exit();
    Pthread_exit(NULL);
    
    return NULL;
}

/*
 * read_parse_request_line - read and parse the request line from the client 
 *   - store the request line into rlp->request_line
 *   - separate different part by '\0'
 * 
 * return -1 when fails
 * return 0 when success
 */
static int read_parse_request_line(request_line *rlp, rio_t *rp){
    dbg_enter();

    char buf[MAXLINE] = "";
    char uri[MAXLINE] = "";
    char host_port[MAXLINE] = "";
    ssize_t len;

    rlp->method[0] = 0;
    rlp->host[0] = 0;
    strcpy(rlp->path, "/");
    strcpy(rlp->port, "80");
    rlp->version[0] = 0;
    

    if( (len = Rio_readlineb(rp, buf, MAXLINE)) <= 0 ){
        fprintf(stderr, "error: bad request line\n");
        return -1;
    }

    dbg_printf("Request Line: %s\n", buf);
    if( sscanf(buf, "%[^ ] %[^ ] %s", rlp->method, uri, rlp->version) != 3){
        fprintf(stderr, "error: bad request line\"%s\"\n", buf);
        return -1;
    }
    //Check the case insensitive part
    if( strncasecmp(uri,"http://",strlen("http://")) != 0 )
        return -1;
    //Parse twice in case of default port#
    sscanf(uri+strlen("http://"), 
          "%[^/]%s", host_port, rlp->path);
    sscanf(host_port, "%[^:]:%s", rlp->host, rlp->port);

    strcpy(rlp->version, "HTTP/1.0");
    dbg_exit();
    return 0;
}

/*
 * client2server - Forward the client http request to the server
 *   - Open the server socket
 *   - Properly manipulate some required headers
 *   - Directly forward other headers to the server
 *   - Suitable for non-GET method
 *   - Make the Host header at the end of headers
 * 
 * return -1 on failing
 * return 0 on succeed
 */
static int client2server( request_line *rlp, rio_t *rp) {
    dbg_enter();

    int serverfd;
    char buf[MAXLINE] = "";
    int have_host = 0, type;
    ssize_t nread = 0;

    //Open the socket to server. May have unhandled error
    serverfd = Open_clientfd(rlp->host, rlp->port);
    if( serverfd < 0 ){
        return -1;
    }

    //Send the request line to server
    //No need to check the length.
    //We do not allow client requestline to exceed MAXLINE
    sprintf(buf, "%s %s %s\r\n", rlp->method, rlp->path, rlp->version);

    if(Rio_writen(serverfd, buf, strlen(buf)) < 0 ){
        return -1;
    }

    //Send the User-Agent Connection and Proxy-Connection headers
    if(Rio_writen(serverfd, 
                (void *)user_agent_hdr, strlen(user_agent_hdr)) < 0)
        return -1;
    if(Rio_writen(serverfd, 
                (void *)connection_hdr, strlen(connection_hdr)) < 0)
        return -1;
    if(Rio_writen(serverfd,
                (void *)proxy_connection_hdr, 
                strlen(proxy_connection_hdr)) < 0)
        return -1;


    if((nread = Rio_readlineb(rp, buf, MAXLINE)) <= 0)
        return -1;

    while(strcmp(buf, "\r\n") != 0 ) {
        type = handle_request_header(serverfd, buf, nread);

        if( type == -1 )
            return -1;
        else if( type == 1 )
            have_host = 1;
        
        if((nread=Rio_readlineb(rp, buf, MAXLINE)) <= 0)
            return -1;
    }

    //Print the Host header at the end
     if( !have_host ) {
         sprintf(buf, "Host:%s\r\n", rlp->host);
         if(Rio_writen(serverfd, buf, strlen(buf)) < 0 )
             return -1;
     }

    //Send the "\r\n" ending
    if( Rio_writen(serverfd, "\r\n", strlen("\r\n")) < 0 )
        return -1;
    dbg_exit();
    return serverfd;
}


/*
 * handle_request_header - parse the request header and send to server
 *   - ignore the User-Agent , Connection, Proxy-Connection headers
 *   - directly forward other header to the server
 * 
 * return -1 on error
 * return 0 on success with normal header
 * return 1 on success with Host header
 */
static int handle_request_header(int serverfd, char *buf, int nread) {
    dbg_enter();
    char key[MAXLINE];
    char value[MAXLINE];

    int type = 0; // 0:normal, 1:Host header

    if(sscanf(buf, "%[^:]:%s", key, value) != 2 ){
        fprintf(stderr, "error: bad header: \"%s\"\n", buf);
        return -1;
    }

    //ignore the User-Agent , Connection, Proxy-Connection headers
    if( strcasecmp(key, "User-Agent") == 0 )
        return 0;
    if( strcasecmp(key, "Connection") == 0 )
        return 0;
    if( strcasecmp(key, "Proxy-Connection") == 0 )
        return 0;


    if( strcasecmp(key, "Host") == 0 ) 
        type = 1;

    if( Rio_writen(serverfd, buf, nread) <  0 )
        return -1;
    
    return type;
    dbg_exit();
}

/*
 * server2client - forward the server's response to client
 *   - update the cache
 *   - do not consider the HEAD request
 *
 * return -1 on error
 * return 0 on success
 */
static int server2client(int clientfd, int serverfd, 
    web_object *wbp, cid_t *cid) {
    dbg_enter();

    ssize_t nread, total_read = 0;
    char buf[MAXLINE] = "";
    int has_entity = 1, entity_len = -1, nleft, cache_it = 1;

    rio_t rio;
    Rio_readinitb(&rio, serverfd);

    //Handling response line and headers
    if( (total_read = Rio_readlineb(&rio, buf, MAXLINE)) < 0 )
        return -1;
    //Parse the response line, cache it and send to client
    if (parse_response_line(buf,&has_entity) < 0 ) 
        return -1;
    if( total_read > MAX_OBJECT_SIZE ){
        cache_it = 0;
    }
    else if( update_web_object(wbp, buf, total_read) < 0 ) {
        return -1;
    }
    if( Rio_writen(clientfd, buf, total_read) < 0 ) {
        return -1;
    }
    //Handle other request headers
    do {
        nread = Rio_readlineb(&rio, buf, MAX_OBJECT_SIZE);
        if( nread <= 0 ) {
            fprintf(stderr, "error: early termination\n");
            return -1;
        }

        total_read += nread;
        if( total_read > MAX_OBJECT_SIZE )
            cache_it = 0;
        else if( update_web_object(wbp, buf, nread) < 0 ){
            return -1;
        }

        if( parse_response_header(buf, &has_entity, &entity_len) < 0 ){
            return -1;
        }
        if( Rio_writen(clientfd, buf, nread) < 0 )
            return -1;
    }while(strcmp(buf, "\r\n") != 0);

    //Handle the entity
    if( has_entity == 1 && entity_len != 0 ) {
        nleft = entity_len;
        while( nread > 0 || entity_len == -1 ){
            nread = Rio_readnb(&rio, buf, MAXLINE);
            if( nread == 0 )
                break;
            if( nread < 0 )
                return -1;
            total_read += nread;
            if( nleft > 0 )
                nleft -= nread;

            if( total_read > MAX_OBJECT_SIZE )
                cache_it = 0;
            else if( update_web_object(wbp, buf, nread) < 0 ) {
                return -1;
            }

            if( Rio_writen(clientfd, buf, nread) < 0 )
                return -1;
        }
    }

    if( entity_len > 0 && nleft != 0 ) {
        fprintf(stderr, "error: entity length miss matched\n" );
        return -1;
    }

    //Cache the web object
    if( cache_it ){
        if(update_cache(&cache, cid, wbp->content, wbp->length) < 0 )
            return -1;
    }
    dbg_exit();
    return 0;
}

/*
 * init_web_object - initialize the web object
 *   - init buffer length is MAXLINE
 *  
 * return -1 on error
 * return 0 on success
 */
static int init_web_object(web_object *wbp) {
    dbg_enter();

    if((wbp->content = (char*)malloc(sizeof(char)*MAXLINE)) == NULL)
        return -1;

    wbp->length = 0;
    wbp->capacity = MAXLINE;

    dbg_exit();
    return 0;
}

/*
 * update_web_object - append the content of buf onto web_object
 *   - apply for additional mem if necessary
 */
static int update_web_object( web_object *wbp, char *buf, ssize_t l ) {
    dbg_enter();
    char *new_content;
    size_t new_cap = wbp->capacity;

    //See if exceed max object size
    if( l + wbp->length > MAX_OBJECT_SIZE )
        return -1;

    //Apply for new mem
    if( l + wbp->length > wbp->capacity ) {
        while( new_cap < l+wbp->length )
            new_cap <<= 1;

        new_cap = MIN(new_cap, MAX_OBJECT_SIZE);
        if((new_content = realloc(wbp->content, new_cap)) == NULL )
            return -1;
        wbp->capacity = new_cap;
        wbp->content = new_content;
    }

    memcpy((void*)(wbp->content + wbp->length), buf, l);
    wbp->length += l;
    dbg_exit();
    return 0;
}

/*
 * destory_web_object - free the mem of web object
 */
static void destory_web_object( web_object *wbp ) {
    dbg_enter();

    free(wbp->content);
    wbp->length = 0;
    wbp->capacity = 0;

    dbg_exit();
}

/*
 * parse_response_line - parse the response line stored in rl
 *   - check if the response type has entity
 *   - store the check result at *e
 *
 * return -1 on error
 * return 0 on success
 */
static int parse_response_line(char *rl, int *e) {
    dbg_enter();
    dbg_printf("Response line: %s\n", rl);

    char version[MAXLINE], phrase[MAXLINE];
    char status[MAXLINE] = "";

    if( sscanf(rl, "%s %s %s", version, status, phrase) != 3 ){
        return -1;
    }

    if( status[0] == '1' 
        || strcmp(status, "204") == 0 
        || strcmp(status, "304") == 0 )
        *e = 0;
    else
        *e = 1;

    dbg_exit();
    return 0;
}

/*
 * parse_response_header - get the content size from headers
 *   - store the content size at *elp
 *   - if the content size is zero, set *ep = 0
 * 
 * return -1 on error
 * return 0 on success
 */
static int parse_response_header(char *buf, int *ep, int *elp){
    dbg_enter();

    int length = -1;
    char key[MAXLINE];
    char value[MAXLINE];
    //Find the end of headers
    if( strcmp(buf, "\r\n") == 0 )
        return 0;
    if( sscanf(buf, "%[^:]:%s", key, value) != 2) {
        return -1;
    }
    if( strcasecmp(key, "Content-length") == 0 ) {
        length = atoi(value);

        *elp = length;
        if( length == 0 )
            *ep = 0;
    }

    dbg_exit();
    return 0;
}

