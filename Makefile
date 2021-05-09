CC=i586-pc-msdosdjgpp-gcc
LD=i586-pc-msdosdjgpp-ld
AS=i586-pc-msdosdjgpp-as
CFLAGS=-Wall -pedantic -std=gnu17

all: hello.exe
.PHONY: all

clean:
	$(RM) hello.exe *.o
.PHONY: clean

hello.exe: hello.o
	$(CC) -o $@ $^

