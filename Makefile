all: libtest-warmup-lib.a

libtest-warmup-lib.a: hello.c
	cc -c hello.c
	ar -rc libtest-warmup-lib.a hello.o

install: libtest-warmup-lib.a hello.h
	cp libtest-warmup-lib.a $(cur__install)/lib/
	mkdir -p $(cur__install)/include
	cp hello.h $(cur__install)/include/
