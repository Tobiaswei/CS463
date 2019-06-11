cmake_minimum_required(VERSION 3.13)
project(mp3)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)
include_directories(README-images)
include_directories(trusted)
include_directories(untrusted)

add_executable(mp3
        README-images/expected-make-output.png
        README-images/expected-run-output-client.png
        README-images/expected-run-output-server.png
        trusted/Wolfssl_Enclave.c
        trusted/Wolfssl_Enclave.config.xml
        trusted/Wolfssl_Enclave.edl
        trusted/Wolfssl_Enclave.h
        trusted/Wolfssl_Enclave.lds
        trusted/Wolfssl_Enclave_private.pem
        untrusted/App.c
        untrusted/App.h
        untrusted/client-tls.c
        untrusted/client-tls.h
        untrusted/server-tls.c
        untrusted/server-tls.h
        untrusted/stdafx.h
        Makefile
        MP3_handout.pdf
        README.md
        sgx_u.mk)
