#!/bin/sh

clang++ -Xclang -load -Xclang ./lib/*.so test.cpp

./a.out
