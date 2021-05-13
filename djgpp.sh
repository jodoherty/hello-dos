#!/bin/sh

image=docker.io/jodoherty/djgpp:gcc-11.1.0

docker run --user $(id -u):$(id -g) -it --rm -v `pwd`:/home/djgpp/src $image "$@"
