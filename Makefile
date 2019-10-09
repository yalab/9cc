CC = gcc

bin = test1

all:
	$(CC) -o $(bin) test1.c

run: all
	./$(bin); echo $$?

