#!/bin/sh

FILE=$1
COMPILER_FLAGS=$(pwd)/compiler-flags
COMPILER=$(pwd)/compiler

get-hash() 
{
	cpp `cat $COMPILER_FLAGS` $FILE | cat - $COMPILER_FLAGS | (cat - && `cat $COMPILER` -v 2>&1) | b3sum - | cut -f1 -d' '
}

echo $(pwd)/.cache/`get-hash`
