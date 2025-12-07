#!/bin/sh

FILE=$1
COMPILER_FLAGS=$(pwd)/compiler-flags
COMPILER=$(pwd)/compiler

get-deps()
{
	cat $(gcc $(cat compiler-flags) -MM $FILE | sed -e 's/.*: //' -e 's/\\$//' -e 's/^ //' | tr ' ' '\n' | sed '/^$/d' | sort) | b3sum | cut -d' ' -f1
}

get-hash() 
{
	(cat $FILE $COMPILER_FLAGS $COMPILER | b3sum | cut -d' ' -f1 && get-deps) | b3sum | cut -d' ' -f1
}

echo $(pwd)/.cache/`get-hash`
