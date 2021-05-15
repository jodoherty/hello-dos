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
