CC=i586-pc-msdosdjgpp-gcc
LD=i586-pc-msdosdjgpp-ld
AS=i586-pc-msdosdjgpp-as
CFLAGS=-Wall -pedantic -std=c17

all: hello.exe
.PHONY: all

hello.exe: hello.o
	$(CC) -o $@ $^

