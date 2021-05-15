CC=i586-pc-msdosdjgpp-gcc
CXX=i586-pc-msdosdjgpp-g++
LD=i586-pc-msdosdjgpp-ld
AS=i586-pc-msdosdjgpp-as
CFLAGS=-O2
CXXFLAGS=-O2

dos_objects=obj/dos/myputs.o obj/dos/joystick.o
vendor_objects=obj/vendor/image.o
hello_objects=obj/hello.o $(dos_objects) $(vendor_objects)

all: directories bin/hello.exe
.PHONY: all

directories:
	@mkdir -p bin obj/dos obj/vendor
	@cp runtime/CWSDPMI.EXE bin/
.PHONY: directories

clean:
	$(RM) -r bin obj
.PHONY: clean

bin/hello.exe: $(hello_objects)
	$(CXX) -o $@ $^

obj/%.o: src/%.c
	$(CC) -Wall -pedantic -std=c17 -c $(CFLAGS) $(CPPFLAGS) $< -o $@

obj/%.o: src/%.cc
	$(CXX) -Wall -pedantic -std=c++2a -c $(CXXFLAGS) $(CPPFLAGS) $< -o $@

# A lot of DOS-specific DJGPP headers won't work if we use strict ISO C.
obj/dos/%.o: src/dos/%.c
	$(CC) -Wall -pedantic -std=gnu17 -c $(CFLAGS) $(CPPFLAGS) $< -o $@

obj/dos/%.o: src/dos/%.cc
	$(CXX) -Wall -pedantic -std=gnu++2a -c $(CXXFLAGS) $(CPPFLAGS) $< -o $@

obj/vendor/%.o: src/vendor/%.c
	$(CC) -std=gnu17 -c $(CFLAGS) $(CPPFLAGS) $< -o $@

