#!/bin/sh

image=docker.io/jodoherty/djgpp:gcc-11.1.0

exec docker run \
       -it --rm \
       -v `pwd`:/home/djgpp/src \
       --user $(id -u):$(id -g) \
       $image "$@"
