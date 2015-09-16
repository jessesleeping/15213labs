/* 
 * Student Name: Jiexi Lin
 * Andrew ID: jiexil
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, k, l, t0, t1, t2, t3, t4, t5, t6, t7;
    REQUIRES(M > 0);
    REQUIRES(N > 0);

    if( M == 32 && N == 32 )
    {
        for( j = 0; j < 32; j += 8 )
        {
            for( i = 0; i < 32; ++i )
            {
                //Do local transpose on diagonal block
                if( i == j )
                {   
                    //Copy
                    for( k = i; k < i + 8; ++k )
                    {
                        t0 = A[k][i];
                        t1 = A[k][i+1];
                        t2 = A[k][i+2];
                        t3 = A[k][i+3];
                        t4 = A[k][i+4];
                        t5 = A[k][i+5];
                        t6 = A[k][i+6];
                        t7 = A[k][i+7];
                        B[k][i] = t0;
                        B[k][i+1] = t1;
                        B[k][i+2] = t2;
                        B[k][i+3] = t3;
                        B[k][i+4] = t4;
                        B[k][i+5] = t5;
                        B[k][i+6] = t6;
                        B[k][i+7] = t7;
                    }

                    //Local transpose
                    for( k = i; k < i + 8; ++k )
                    {
                        for( l = k + 1; l < i + 8; ++l )
                        {
                            t0 = B[k][l];
                            B[k][l] = B[l][k];
                            B[l][k] = t0;
                        }
                    }
                    i += 7;
                }
                //Simple buffered block transpose
                else
                {
                     t0 = A[i][j];
                     t1 = A[i][j+1];
                     t2 = A[i][j+2];
                     t3 = A[i][j+3];
                     t4 = A[i][j+4];
                     t5 = A[i][j+5];
                     t6 = A[i][j+6];
                     t7 = A[i][j+7];
                     B[j][i] = t0;
                     B[j+1][i] = t1;
                     B[j+2][i] = t2;
                     B[j+3][i] = t3;
                     B[j+4][i] = t4;
                     B[j+5][i] = t5;
                     B[j+6][i] = t6;
                     B[j+7][i] = t7;
                }
            }
        }
    }
    else if( M == 64 && N == 64 )
    {
        for( j = 0; j < 64; j += 8 )
        {
            for( i = 0; i < 64; i += 8 )
            {
                
                //Obmit diagonal
                if( i == j )
                    continue;
                else
                {
                    //b(1,1) = aT(1,1), b(1,2) = aT(1,2)
                    for( k = i; k < i + 4; ++k )
                    {
                        t0 = A[k][j];
                        t1 = A[k][j+1];
                        t2 = A[k][j+2];
                        t3 = A[k][j+3];
                        t4 = A[k][j+4];
                        t5 = A[k][j+5];
                        t6 = A[k][j+6];
                        t7 = A[k][j+7];
                        B[j][k] = t0;
                        B[j+1][k] = t1;
                        B[j+2][k] = t2;
                        B[j+3][k] = t3;
                        B[j][k+4] = t4;
                        B[j+1][k+4] = t5;
                        B[j+2][k+4] = t6;
                        B[j+3][k+4] = t7;
                    }
                    //b(1,2) = aT(2,1), b(2,1) = b(1,2)
                    for( k = j; k < j + 4; ++k )
                    {
                        t0 = B[k][i+4];
                        t1 = B[k][i+5];
                        t2 = B[k][i+6];
                        t3 = B[k][i+7];
                        t4 = A[i+4][k];
                        t5 = A[i+5][k];
                        t6 = A[i+6][k];
                        t7 = A[i+7][k];
                        B[k][i+4] = t4;
                        B[k][i+5] = t5;
                        B[k][i+6] = t6;
                        B[k][i+7] = t7;
                        B[k+4][i] = t0;
                        B[k+4][i+1] = t1;
                        B[k+4][i+2] = t2;
                        B[k+4][i+3] = t3;
                    }
                    //b(2,2) = aT(2,2)
                    for( k = i + 4; k < i + 8; ++k )
                    {
                        t0 = A[k][j+4];
                        t1 = A[k][j+5];
                        t2 = A[k][j+6];
                        t3 = A[k][j+7];
                        B[j+4][k] = t0;
                        B[j+5][k] = t1;
                        B[j+6][k] = t2;
                        B[j+7][k] = t3;
                    }
                }
            }
        }
        //Handle Diagonal
        for( j = 0; j < 48; j += 8 )
        {
            //Take B[48~52][], B[56~63][] as buffer
            i = j;
            //b(1,1) = aT(1,1), b(1,2) = aT(1,2)
            for( k = i; k < i + 4; ++k )
            {
                t0 = A[k][j];
                t1 = A[k][j+1];
                t2 = A[k][j+2];
                t3 = A[k][j+3];
                t4 = A[k][j+4];
                t5 = A[k][j+5];
                t6 = A[k][j+6];
                t7 = A[k][j+7];
                B[48][k-i+48] = t0;
                B[49][k-i+48] = t1;
                B[50][k-i+48] = t2;
                B[51][k-i+48] = t3;
                B[48][k-i+52] = t4;
                B[49][k-i+52] = t5;
                B[50][k-i+52] = t6;
                B[51][k-i+52] = t7;
            }
            //b(1,2) = aT(2,1), b(2,1) = b(1,2)
            for( k = j; k < j + 4; ++k )
            {
                t0 = B[k-i+48][52];
                t1 = B[k-i+48][53];
                t2 = B[k-i+48][54];
                t3 = B[k-i+48][55];
                t4 = A[i+4][k];
                t5 = A[i+5][k];
                t6 = A[i+6][k];
                t7 = A[i+7][k];
                B[k-i+48][52] = t4;
                B[k-i+48][53] = t5;
                B[k-i+48][54] = t6;
                B[k-i+48][55] = t7;
                B[k-i+56][56] = t0;
                B[k-i+56][57] = t1;
                B[k-i+56][58] = t2;
                B[k-i+56][59] = t3;
            }
            //b(2,2) = aT(2,2)
            for( k = i + 4; k < i + 8; ++k )
            {
                t0 = A[k][j+4];
                t1 = A[k][j+5];
                t2 = A[k][j+6];
                t3 = A[k][j+7];
                B[56][k-i+56] = t0;
                B[57][k-i+56] = t1;
                B[58][k-i+56] = t2;
                B[59][k-i+56] = t3;
            }
            //copy back to B[j][i]
            for( k = i; k < i + 4; ++k )
            {
                t0 = B[48+k-i][48];
                t1 = B[48+k-i][49];
                t2 = B[48+k-i][50];
                t3 = B[48+k-i][51];
                t4 = B[48+k-i][52];
                t5 = B[48+k-i][53];
                t6 = B[48+k-i][54];
                t7 = B[48+k-i][55];
                B[k][i] = t0;
                B[k][i+1] = t1;
                B[k][i+2] = t2;
                B[k][i+3] = t3;
                B[k][i+4] = t4;
                B[k][i+5] = t5;
                B[k][i+6] = t6;
                B[k][i+7] = t7;                
            }
            for( k = i + 4; k < i + 8; ++k )
            {
                t0 = B[52+k-i][56];
                t1 = B[52+k-i][57];
                t2 = B[52+k-i][58];
                t3 = B[52+k-i][59];
                t4 = B[52+k-i][60];
                t5 = B[52+k-i][61];
                t6 = B[52+k-i][62];
                t7 = B[52+k-i][63];
                B[k][i+0] = t0;
                B[k][i+1] = t1;
                B[k][i+2] = t2;
                B[k][i+3] = t3;
                B[k][i+4] = t4;
                B[k][i+5] = t5;
                B[k][i+6] = t6;
                B[k][i+7] = t7;                
            }
        }
        //Last 2 diagonal blocks
        for(j = 48; j < 64; j += 8 )
        {
            i = j;
            //Copy a(1,1),a(1,2) to b(1,1),b(1,2)
            for( k = i; k < i + 4; ++k )
            {
                t0 = A[k][j];
                t1 = A[k][j+1];
                t2 = A[k][j+2];
                t3 = A[k][j+3];
                t4 = A[k][j+4];
                t5 = A[k][j+5];
                t6 = A[k][j+6];
                t7 = A[k][j+7];
                B[k][j] = t0;
                B[k][j+1] = t1;
                B[k][j+2] = t2;
                B[k][j+3] = t3;
                B[k][j+4] = t4;
                B[k][j+5] = t5;
                B[k][j+6] = t6;
                B[k][j+7] = t7;
            }
            //Local transpose: b(1,1) = bT(1,1), b(1,2) = bT(1,2)
            for( k = i; k < i + 4; ++k )
            {
                for( l = k + 1; l < i + 4; ++l )
                {
                    t0 = B[k][l];
                    t1 = B[k][l+4];
                    B[k][l] = B[l][k];
                    B[k][l+4] = B[l][k+4];
                    B[l][k] = t0;
                    B[l][k+4] = t1;
                }
            }
            //Copy a(2,1),a(2,2) to b(2,1),b(2,2)
            for( k = i + 4; k < i + 8; ++k )
            {
                t0 = A[k][j];
                t1 = A[k][j+1];
                t2 = A[k][j+2];
                t3 = A[k][j+3];
                t4 = A[k][j+4];
                t5 = A[k][j+5];
                t6 = A[k][j+6];
                t7 = A[k][j+7];
                B[k][j] = t0;
                B[k][j+1] = t1;
                B[k][j+2] = t2;
                B[k][j+3] = t3;
                B[k][j+4] = t4;
                B[k][j+5] = t5;
                B[k][j+6] = t6;
                B[k][j+7] = t7;
            }
            //Local transpose: b(1,1) = bT(1,1), b(1,2) = bT(1,2)
            for( k = i + 4; k < i + 8; ++k )
            {
                for( l = k + 1; l < i + 8; ++l )
                {
                    t0 = B[k][l];
                    t1 = B[k][l-4];
                    B[k][l] = B[l][k];
                    B[k][l-4] = B[l][k-4];
                    B[l][k] = t0;
                    B[l][k-4] = t1;
                }
            }
            //Swap: b(1,2),b(2,1)
            for( k = i + 4; k < i + 8; ++k )
            {
                t0 = B[k][j];
                t1 = B[k][j+1];
                t2 = B[k][j+2];
                t3 = B[k][j+3];
                t4 = B[k-4][j+4];
                t5 = B[k-4][j+5];
                t6 = B[k-4][j+6];
                t7 = B[k-4][j+7];
                B[k-4][j+4] = t0;
                B[k-4][j+5] = t1;
                B[k-4][j+6] = t2;
                B[k-4][j+7] = t3;
                B[k][j] = t4;
                B[k][j+1] = t5;
                B[k][j+2] = t6;
                B[k][j+3] = t7;
            }

        }
    }
    else if( M == 61 && N == 67 )
    {
    //Simple buffered block transpose
        for( j = 0; j < 56; j += 8 )
        {
            for( i = 0; i < 67; ++i )
            {
                t0 = A[i][j];
                t1 = A[i][j+1];
                t2 = A[i][j+2];
                t3 = A[i][j+3];
                t4 = A[i][j+4];
                t5 = A[i][j+5];
                t6 = A[i][j+6];
                t7 = A[i][j+7];
                B[j][i] = t0;
                B[j+1][i] = t1;
                B[j+2][i] = t2;
                B[j+3][i] = t3;
                B[j+4][i] = t4;
                B[j+5][i] = t5;
                B[j+6][i] = t6;
                B[j+7][i] = t7;
            }
        }
        for( i = 0; i < 67; ++i )
        {
            t0 = A[i][j];
            t1 = A[i][j+1];
            t2 = A[i][j+2];
            t3 = A[i][j+3];
            t4 = A[i][j+4];
            B[j][i] = t0;
            B[j+1][i] = t1;
            B[j+2][i] = t2;
            B[j+3][i] = t3;
            B[j+4][i] = t4;
        }
    }

    ENSURES(is_transpose(M,N,A,B));
}


/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

    ENSURES(is_transpose(M, N, A, B));
}

char trans_old_desc[] = "Not that crazy on 64x64";
void trans_old(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, k, l, t0, t1, t2, t3, t4, t5, t6, t7;
    REQUIRES(M > 0);
    REQUIRES(N > 0);

    if( M == 32 && N == 32 )
    {
        for( j = 0; j < 32; j += 8 )
        {
            for( i = 0; i < 32; ++i )
            {
                //Do local transpose on diagonal block
                if( i == j )
                {   
                    //Copy
                    for( k = i; k < i + 8; ++k )
                    {
                        t0 = A[k][i];
                        t1 = A[k][i+1];
                        t2 = A[k][i+2];
                        t3 = A[k][i+3];
                        t4 = A[k][i+4];
                        t5 = A[k][i+5];
                        t6 = A[k][i+6];
                        t7 = A[k][i+7];
                        B[k][i] = t0;
                        B[k][i+1] = t1;
                        B[k][i+2] = t2;
                        B[k][i+3] = t3;
                        B[k][i+4] = t4;
                        B[k][i+5] = t5;
                        B[k][i+6] = t6;
                        B[k][i+7] = t7;
                    }

                    //Local transpose
                    for( k = i; k < i + 8; ++k )
                    {
                        for( l = k + 1; l < i + 8; ++l )
                        {
                            t0 = B[k][l];
                            B[k][l] = B[l][k];
                            B[l][k] = t0;
                        }
                    }
                    i += 7;
                }
                //Simple buffered block transpose
                else
                {
                     t0 = A[i][j];
                     t1 = A[i][j+1];
                     t2 = A[i][j+2];
                     t3 = A[i][j+3];
                     t4 = A[i][j+4];
                     t5 = A[i][j+5];
                     t6 = A[i][j+6];
                     t7 = A[i][j+7];
                     B[j][i] = t0;
                     B[j+1][i] = t1;
                     B[j+2][i] = t2;
                     B[j+3][i] = t3;
                     B[j+4][i] = t4;
                     B[j+5][i] = t5;
                     B[j+6][i] = t6;
                     B[j+7][i] = t7;
                }
            }
        }
    }
    else if( M == 64 && N == 64 )
    {
        for( j = 0; j < 64; j += 8 )
        {
            for( i = 0; i < 64; i += 8 )
            {
                
                //Diagonal
                if( i == j )
                {   
                    //Copy a(1,1),a(1,2) to b(1,1),b(1,2)
                    for( k = i; k < i + 4; ++k )
                    {
                        t0 = A[k][j];
                        t1 = A[k][j+1];
                        t2 = A[k][j+2];
                        t3 = A[k][j+3];
                        t4 = A[k][j+4];
                        t5 = A[k][j+5];
                        t6 = A[k][j+6];
                        t7 = A[k][j+7];
                        B[k][j] = t0;
                        B[k][j+1] = t1;
                        B[k][j+2] = t2;
                        B[k][j+3] = t3;
                        B[k][j+4] = t4;
                        B[k][j+5] = t5;
                        B[k][j+6] = t6;
                        B[k][j+7] = t7;
                    }
                    //Local transpose: b(1,1) = bT(1,1), b(1,2) = bT(1,2)
                    for( k = i; k < i + 4; ++k )
                    {
                        for( l = k + 1; l < i + 4; ++l )
                        {
                            t0 = B[k][l];
                            t1 = B[k][l+4];
                            B[k][l] = B[l][k];
                            B[k][l+4] = B[l][k+4];
                            B[l][k] = t0;
                            B[l][k+4] = t1;
                        }
                    }
                    //Copy a(2,1),a(2,2) to b(2,1),b(2,2)
                    for( k = i + 4; k < i + 8; ++k )
                    {
                        t0 = A[k][j];
                        t1 = A[k][j+1];
                        t2 = A[k][j+2];
                        t3 = A[k][j+3];
                        t4 = A[k][j+4];
                        t5 = A[k][j+5];
                        t6 = A[k][j+6];
                        t7 = A[k][j+7];
                        B[k][j] = t0;
                        B[k][j+1] = t1;
                        B[k][j+2] = t2;
                        B[k][j+3] = t3;
                        B[k][j+4] = t4;
                        B[k][j+5] = t5;
                        B[k][j+6] = t6;
                        B[k][j+7] = t7;
                    }
                    //Local transpose: b(1,1) = bT(1,1), b(1,2) = bT(1,2)
                    for( k = i + 4; k < i + 8; ++k )
                    {
                        for( l = k + 1; l < i + 8; ++l )
                        {
                            t0 = B[k][l];
                            t1 = B[k][l-4];
                            B[k][l] = B[l][k];
                            B[k][l-4] = B[l][k-4];
                            B[l][k] = t0;
                            B[l][k-4] = t1;
                        }
                    }
                    //Swap: b(1,2),b(2,1)
                    for( k = i + 4; k < i + 8; ++k )
                    {
                        t0 = B[k][j];
                        t1 = B[k][j+1];
                        t2 = B[k][j+2];
                        t3 = B[k][j+3];
                        t4 = B[k-4][j+4];
                        t5 = B[k-4][j+5];
                        t6 = B[k-4][j+6];
                        t7 = B[k-4][j+7];
                        B[k-4][j+4] = t0;
                        B[k-4][j+5] = t1;
                        B[k-4][j+6] = t2;
                        B[k-4][j+7] = t3;
                        B[k][j] = t4;
                        B[k][j+1] = t5;
                        B[k][j+2] = t6;
                        B[k][j+3] = t7;
                    }
                }
                else
                {
                    //b(1,1) = aT(1,1), b(1,2) = aT(1,2)
                    for( k = i; k < i + 4; ++k )
                    {
                        t0 = A[k][j];
                        t1 = A[k][j+1];
                        t2 = A[k][j+2];
                        t3 = A[k][j+3];
                        t4 = A[k][j+4];
                        t5 = A[k][j+5];
                        t6 = A[k][j+6];
                        t7 = A[k][j+7];
                        B[j][k] = t0;
                        B[j+1][k] = t1;
                        B[j+2][k] = t2;
                        B[j+3][k] = t3;
                        B[j][k+4] = t4;
                        B[j+1][k+4] = t5;
                        B[j+2][k+4] = t6;
                        B[j+3][k+4] = t7;
                    }
                    //b(1,2) = aT(2,1), b(2,1) = b(1,2)
                    for( k = j; k < j + 4; ++k )
                    {
                        t0 = B[k][i+4];
                        t1 = B[k][i+5];
                        t2 = B[k][i+6];
                        t3 = B[k][i+7];
                        t4 = A[i+4][k];
                        t5 = A[i+5][k];
                        t6 = A[i+6][k];
                        t7 = A[i+7][k];
                        B[k][i+4] = t4;
                        B[k][i+5] = t5;
                        B[k][i+6] = t6;
                        B[k][i+7] = t7;
                        B[k+4][i] = t0;
                        B[k+4][i+1] = t1;
                        B[k+4][i+2] = t2;
                        B[k+4][i+3] = t3;
                    }
                    //b(2,2) = aT(2,2)
                    for( k = i + 4; k < i + 8; ++k )
                    {
                        t0 = A[k][j+4];
                        t1 = A[k][j+5];
                        t2 = A[k][j+6];
                        t3 = A[k][j+7];
                        B[j+4][k] = t0;
                        B[j+5][k] = t1;
                        B[j+6][k] = t2;
                        B[j+7][k] = t3;
                    }
                }
            }
        }
    }
    else if( M == 61 && N == 67 )
    {
    //Simple buffered block transpose
        for( j = 0; j < 56; j += 8 )
        {
            for( i = 0; i < 67; ++i )
            {
                t0 = A[i][j];
                t1 = A[i][j+1];
                t2 = A[i][j+2];
                t3 = A[i][j+3];
                t4 = A[i][j+4];
                t5 = A[i][j+5];
                t6 = A[i][j+6];
                t7 = A[i][j+7];
                B[j][i] = t0;
                B[j+1][i] = t1;
                B[j+2][i] = t2;
                B[j+3][i] = t3;
                B[j+4][i] = t4;
                B[j+5][i] = t5;
                B[j+6][i] = t6;
                B[j+7][i] = t7;
            }
        }
        for( i = 0; i < 67; ++i )
        {
            t0 = A[i][j];
            t1 = A[i][j+1];
            t2 = A[i][j+2];
            t3 = A[i][j+3];
            t4 = A[i][j+4];
            B[j][i] = t0;
            B[j+1][i] = t1;
            B[j+2][i] = t2;
            B[j+3][i] = t3;
            B[j+4][i] = t4;
        }
    }

    ENSURES(is_transpose(M,N,A,B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);
    registerTransFunction(trans_old, trans_old_desc);
}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

