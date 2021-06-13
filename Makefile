CC_DIST = gcc
AR_DIST = ar
CC = $(PREFIX)$(CC_DIST)
AR = $(PREFIX)$(AR_DIST)

all: libtest-warmup-lib.a

libtest-warmup-lib.a: hello.c
	$(CC) -c hello.c
	$(AR) -rc libtest-warmup-lib.a hello.o

install: libtest-warmup-lib.a hello.h
	cp libtest-warmup-lib.a $(cur__install)/lib/
	mkdir -p $(cur__install)/include
	cp hello.h $(cur__install)/include/
