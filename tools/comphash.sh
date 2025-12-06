#!/bin/sh

FILE=$1
COMPILER_FLAGS=$(pwd)/compiler-flags

get-hash() 
{
	cpp `cat $COMPILER_FLAGS` $FILE | cat - $COMPILER_FLAGS | (cat - && gcc -v 2>&1) | sha256sum - | cut -f1 -d' '
}

echo $(pwd)/.cache/`get-hash`
