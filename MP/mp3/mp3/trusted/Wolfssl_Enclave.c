#include <stdarg.h>
#include <stdio.h>      /* vsnprintf */
#include <stdlib.h>

#include "Wolfssl_Enclave_t.h"

#include "sgx_trts.h"

#include "math.h"

#define NUM_SAMPLES 90
#define NUM_FEATURES 4
#define MAX_ITER 500
#define LEARNING_RATE 0.01

typedef struct {
    double* samples[NUM_SAMPLES];
    int labels[NUM_SAMPLES];
    double predict_labels[NUM_SAMPLES];
    double weights[NUM_FEATURES];
    double z[NUM_SAMPLES];
    double g[NUM_FEATURES];
} vars_t;

static vars_t* v = NULL;

#if defined(XMALLOC_USER) || defined(XMALLOC_OVERRIDE)
    #warning verfication of heap hint pointers needed when overriding default malloc/free
#endif

#if defined(WOLFSSL_STATIC_MEMORY)
/* check on heap hint when used, aborts if pointer is not in Enclave.
 * In the default case where wolfSSL_Malloc is used the heap hint pointer is not
 * used.*/
static void checkHeapHint(WOLFSSL_CTX* ctx, WOLFSSL* ssl)
{
    WOLFSSL_HEAP_HINT* heap;
    if ((heap = (WOLFSSL_HEAP_HINT*)wolfSSL_CTX_GetHeap(ctx, ssl)) != NULL) {
        if(sgx_is_within_enclave(heap, sizeof(WOLFSSL_HEAP_HINT)) != 1)
            abort();
        if(sgx_is_within_enclave(heap->memory, sizeof(WOLFSSL_HEAP)) != 1)
            abort();
    }
}
#endif /* WOLFSSL_STATIC_MEMORY */


int wc_test(void* args)
{
#ifdef HAVE_WOLFSSL_TEST
	return wolfcrypt_test(args);
#else
    /* wolfSSL test not compiled in! */
    return -1;
#endif /* HAVE_WOLFSSL_TEST */
}

int wc_benchmark_test(void* args)
{

#ifdef HAVE_WOLFSSL_BENCHMARK
    return benchmark_test(args);
#else
    /* wolfSSL benchmark not compiled in! */
    return -1;
#endif /* HAVE_WOLFSSL_BENCHMARK */
}

void enc_wolfSSL_Debugging_ON(void)
{
    wolfSSL_Debugging_ON();
}

void enc_wolfSSL_Debugging_OFF(void)
{
    wolfSSL_Debugging_OFF();
}

int enc_wolfSSL_Init(void)
{
    return wolfSSL_Init();
}

WOLFSSL_METHOD* enc_wolfTLSv1_2_client_method(void)
{
    return wolfTLSv1_2_client_method();
}

WOLFSSL_METHOD* enc_wolfTLSv1_2_server_method(void)
{
    return wolfTLSv1_2_server_method();
}


WOLFSSL_CTX* enc_wolfSSL_CTX_new(WOLFSSL_METHOD* method)
{
    if(sgx_is_within_enclave(method, wolfSSL_METHOD_GetObjectSize()) != 1)
        abort();
    return wolfSSL_CTX_new(method);
}

int enc_wolfSSL_CTX_use_certificate_chain_buffer_format(WOLFSSL_CTX* ctx,
        const unsigned char* buf, long sz, int type)
{
    if(sgx_is_within_enclave(ctx, wolfSSL_CTX_GetObjectSize()) != 1)
        abort();

#if defined(WOLFSSL_STATIC_MEMORY)
    checkHeapHint(ctx, NULL);
#endif

    return wolfSSL_CTX_use_certificate_chain_buffer_format(ctx, buf, sz, type);
}

int enc_wolfSSL_CTX_use_certificate_buffer(WOLFSSL_CTX* ctx,
        const unsigned char* buf, long sz, int type)
{
    if(sgx_is_within_enclave(ctx, wolfSSL_CTX_GetObjectSize()) != 1)
        abort();

#if defined(WOLFSSL_STATIC_MEMORY)
    checkHeapHint(ctx, NULL);
#endif

    return wolfSSL_CTX_use_certificate_buffer(ctx, buf, sz, type);
}

int enc_wolfSSL_CTX_use_PrivateKey_buffer(WOLFSSL_CTX* ctx, const unsigned char* buf,
                                            long sz, int type)
{
    if(sgx_is_within_enclave(ctx, wolfSSL_CTX_GetObjectSize()) != 1)
        abort();

#if defined(WOLFSSL_STATIC_MEMORY)
    checkHeapHint(ctx, NULL);
#endif

    return wolfSSL_CTX_use_PrivateKey_buffer(ctx, buf, sz, type);
}

int enc_wolfSSL_CTX_load_verify_buffer(WOLFSSL_CTX* ctx, const unsigned char* in,
                                       long sz, int format)
{
    if(sgx_is_within_enclave(ctx, wolfSSL_CTX_GetObjectSize()) != 1)
        abort();

#if defined(WOLFSSL_STATIC_MEMORY)
    checkHeapHint(ctx, NULL);
#endif

    return wolfSSL_CTX_load_verify_buffer(ctx, in, sz, format);
}

int enc_wolfSSL_CTX_set_cipher_list(WOLFSSL_CTX* ctx, const char* list) {
    if(sgx_is_within_enclave(ctx, wolfSSL_CTX_GetObjectSize()) != 1)
        abort();

#if defined(WOLFSSL_STATIC_MEMORY)
    checkHeapHint(ctx, NULL);
#endif

    return wolfSSL_CTX_set_cipher_list(ctx, list);
}

WOLFSSL* enc_wolfSSL_new( WOLFSSL_CTX* ctx)
{
    if(sgx_is_within_enclave(ctx, wolfSSL_CTX_GetObjectSize()) != 1)
        abort();
    return wolfSSL_new(ctx);
}

int enc_wolfSSL_set_fd(WOLFSSL* ssl, int fd)
{
    if(sgx_is_within_enclave(ssl, wolfSSL_GetObjectSize()) != 1)
        abort();

#if defined(WOLFSSL_STATIC_MEMORY)
    checkHeapHint(NULL, ssl);
#endif

    return wolfSSL_set_fd(ssl, fd);
}

int enc_wolfSSL_connect(WOLFSSL* ssl)
{
    if(sgx_is_within_enclave(ssl, wolfSSL_GetObjectSize()) != 1)
        abort();

#if defined(WOLFSSL_STATIC_MEMORY)
    checkHeapHint(NULL, ssl);
#endif

    return wolfSSL_connect(ssl);
}

//TODO: currently this function is being used by both client and server
int enc_wolfSSL_write(WOLFSSL* ssl, const void* in, int sz)
{
    if(sgx_is_within_enclave(ssl, wolfSSL_GetObjectSize()) != 1)
        abort();

#if defined(WOLFSSL_STATIC_MEMORY)
    checkHeapHint(NULL, ssl);
#endif

    return wolfSSL_write(ssl, in, sz);
}

int enc_wolfSSL_get_error(WOLFSSL* ssl, int ret)
{
    if(sgx_is_within_enclave(ssl, wolfSSL_GetObjectSize()) != 1)
        abort();

#if defined(WOLFSSL_STATIC_MEMORY)
    checkHeapHint(NULL, ssl);
#endif

    return wolfSSL_get_error(ssl, ret);
}

//TODO: currently this function is being used by both client and server
int enc_wolfSSL_read(WOLFSSL* ssl, void* data, int sz)
{
    if(sgx_is_within_enclave(ssl, wolfSSL_GetObjectSize()) != 1)
        abort();

#if defined(WOLFSSL_STATIC_MEMORY)
    checkHeapHint(NULL, ssl);
#endif

    return wolfSSL_read(ssl, data, sz);
}

void enc_wolfSSL_free(WOLFSSL* ssl)
{
    if(sgx_is_within_enclave(ssl, wolfSSL_GetObjectSize()) != 1)
        abort();

#if defined(WOLFSSL_STATIC_MEMORY)
    checkHeapHint(NULL, ssl);
#endif

    wolfSSL_free(ssl);
}

void enc_wolfSSL_CTX_free(WOLFSSL_CTX* ctx)
{
    if(sgx_is_within_enclave(ctx, wolfSSL_CTX_GetObjectSize()) != 1)
        abort();

#if defined(WOLFSSL_STATIC_MEMORY)
    checkHeapHint(ctx, NULL);
#endif

    wolfSSL_CTX_free(ctx);
}

int enc_wolfSSL_Cleanup(void)
{
    wolfSSL_Cleanup();
}

void printf(const char *fmt, ...)
{
    char buf[BUFSIZ] = {'\0'};
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(buf, BUFSIZ, fmt, ap);
    va_end(ap);
    ocall_print_string(buf);
}

int sprintf(char* buf, const char *fmt, ...)
{
    va_list ap;
    int ret;
    va_start(ap, fmt);
    ret = vsnprintf(buf, BUFSIZ, fmt, ap);
    va_end(ap);
    return ret;
}

double current_time(void)
{
    double curr;
    ocall_current_time(&curr);
    return curr;
}

int LowResTimer(void) /* low_res timer */
{
    int time;
    ocall_low_res_time(&time);
    return time;
}

size_t recv(int sockfd, void *buf, size_t len, int flags)
{
    size_t ret;
    int sgxStatus;
    sgxStatus = ocall_recv(&ret, sockfd, buf, len, flags);
    return ret;
}

size_t send(int sockfd, const void *buf, size_t len, int flags)
{
    size_t ret;
    int sgxStatus;
    sgxStatus = ocall_send(&ret, sockfd, buf, len, flags);
    return ret;
}

/* functions for Logistic Regression */

//helper function
double sigmoid(double z) {
    return 1.0 / (1.0 + exp((-1.0) * z));
}

//helper function
void predict()
{
    for(int i = 0; i < NUM_SAMPLES; i++) {
        v->z[i] = 0;
        for(int j = 0; j < NUM_FEATURES; j++) {
            v->z[i] += v->samples[i][j] * v->weights[j];
        }
    }

    for(int i = 0; i < NUM_SAMPLES; i++) {
        v->predict_labels[i] = sigmoid(v->z[i]);
    }
}

//helper function
void update_weights()
{
    predict();

    for(int i = 0; i < NUM_FEATURES; i++) {
        double temp = 0.0;
        for(int j = 0; j < NUM_SAMPLES; j++) {
            temp += v->samples[j][i] * (v->predict_labels[j] - (double) v->labels[j]);
        }
        v->g[i] = temp;
        v->g[i] /= NUM_SAMPLES;
        v->g[i] *= LEARNING_RATE;
        v->weights[i] -= v->g[i];
    }
}

/**
 * This is an ECALL function that trains the model using the Logistic Regression algorithm.
 * For more information regarding the algorithm, please refer to the MP3 documentation.
 *  
 * Note: This function MUST run after static variable v is initialized and all 
 * sample data are filled up.
 * 
 * @param double* weights  weight array to be returned after the training
 * @param size_t len       size of the weight array
 **/
void ecall_train(double* weights, size_t len)
{
    for(int i = 0; i < NUM_FEATURES; i++)
        v->weights[i] = 0;

    for(int i = 0; i < MAX_ITER; i++)
        update_weights();

    memcpy(weights, v->weights, sizeof(double) * NUM_FEATURES);
}