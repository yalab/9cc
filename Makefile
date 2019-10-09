CC = gcc

bin = test1

build:
	$(CC) -o $(bin) test1.c

run: all
	./$(bin); echo $$?

objdump: build
	objdump -d ./$(bin)

