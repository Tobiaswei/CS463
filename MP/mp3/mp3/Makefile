SGX_SDK ?= /opt/intel/sgxsdk
SGX_MODE ?= HW
SGX_ARCH ?= x64
SGX_DEBUG ?= 1
SGX_WOLFSSL_LIB ?= ./

ifndef WOLFSSL_ROOT
$(error WOLFSSL_ROOT is not set. Please set to root wolfssl directory)
endif



all:
	$(MAKE) -ef sgx_u.mk all
	$(MAKE) -ef sgx_t.mk all

clean:
	$(MAKE) -ef sgx_u.mk clean
	$(MAKE) -ef sgx_t.mk clean

