CC=i586-pc-msdosdjgpp-gcc
LD=i586-pc-msdosdjgpp-ld
AS=i586-pc-msdosdjgpp-as
CFLAGS=-Wall -pedantic -O2

all: hello.exe
.PHONY: all

clean:
	$(RM) hello.exe *.o dos/*.o
.PHONY: clean

hello.exe: hello.o dos/myputs.o dos/joystick.o
	$(CC) -o $@ $^

%.o: %.c
	$(CC) -std=c17 -c $(CFLAGS) $(CPPFLAGS) $< -o $@

dos/%.o: dos/%.c
	$(CC) -std=gnu17 -c $(CFLAGS) $(CPPFLAGS) $< -o $@
