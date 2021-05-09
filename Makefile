CC=i586-pc-msdosdjgpp-gcc
LD=i586-pc-msdosdjgpp-ld
AS=i586-pc-msdosdjgpp-as
CFLAGS=-Wall -pedantic

all: hello.exe
.PHONY: all

clean:
	$(RM) hello.exe *.o
.PHONY: clean

hello.exe: hello.o myputs_dos.o joystick_dos.o
	$(CC) -o $@ $^

%.o: %.c
	$(CC) -std=c17 -c $(CFLAGS) $(CPPFLAGS) $< -o $@

%_dos.o: %_dos.c
	$(CC) -std=gnu17 -c $(CFLAGS) $(CPPFLAGS) $< -o $@
