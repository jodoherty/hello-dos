# Example DJGPP Cross Compiled DOS Project

This project contains a simple Makefile and source layout demonstrating how to
write portable C and C++ with DOS specific code as well as third-party code.

You can use my DJGPP cross compiler in a Docker container by utilizing the
djgpp.sh wrapper script. Assuming you have Docker installed, just run the
following to build this project:

```
./djgpp.sh make
```

If you have DOSBox installed, you can then run your compiled program with the
convenience script:

```
./run.sh
```

If you use this as a project template, you can use the following as your build
and run one-liner:

```
./djgpp.sh make && ./run.sh
```

## What next?

Looking for something to do with this project skeleton? Check out David
Brackeen's 256-Color VGA Programming in C series. It's a classic and includes
DJGPP examples for all of the topics.

http://www.brackeen.com/vga/

The example third-party image loading code in the vendor directory is from the
stb single-file publid domain libraries collection.

https://github.com/nothings/stb

Definitely check it out.

## What about licensing?

This repository is in the public domain. Feel free to clone and use it as a
template for your own project without attribution.

