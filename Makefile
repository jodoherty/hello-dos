CC=i586-pc-msdosdjgpp-gcc
LD=i586-pc-msdosdjgpp-ld
AS=i586-pc-msdosdjgpp-as
CFLAGS=-O2

all: hello.exe
.PHONY: all

clean:
	$(RM) hello.exe common/*.o dos/*.o *~ dos/*~ vendor/*.o vendor/*~
.PHONY: clean

format:
	find common dos -name '*.c' -type f -exec indent -kr '{}' ';'
	find common dos -name '*.h' -type f -exec indent -kr '{}' ';'
.PHONY: format

hello.exe: common/hello.o vendor/image.o dos/myputs.o dos/joystick.o
	$(CC) -o $@ $^

%.o: %.c
	$(CC) -Wall -pedantic -std=c17 -c $(CFLAGS) $(CPPFLAGS) $< -o $@

# A lot of DOS-specific DJGPP headers won't work if we use strict ISO C.
dos/%.o: dos/%.c
	$(CC) -Wall -pedantic -std=gnu17 -c $(CFLAGS) $(CPPFLAGS) $< -o $@

vendor/%.o: vendor/%.c
	$(CC) -std=gnu17 -c $(CFLAGS) $(CPPFLAGS) $< -o $@
