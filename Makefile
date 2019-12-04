CFLAGS = -std=c11 -g -static
CC = gcc

bin = test1

9cc: 9cc.c

test: 9cc
	./test.sh

clean:
	rm -f 9cc *.o *.s [0-9] tmp

.PHONY: test clean

run-t:
	gcc -o t t.c && ./t
