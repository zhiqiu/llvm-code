#!/bin/sh
cp ../build/src/getInst .
rm /tmp/LogFile
#clang++ -Xclang -load -Xclang ../build/lib/*.so test.cpp
clang -emit-llvm -S -o test.bc test.c
./getInst -r test.bc
#clang -S test.bc -o test.s
clang -c test.bc -o test.o
clang -c MyRecord.c
clang  test.o MyRecord.o -o test

./test
