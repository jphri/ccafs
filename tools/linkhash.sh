#!/bin/sh
FILES="$@"
LINKER_FLAGS=$(pwd)/linker-flags
LINKER=$(pwd)/linker

get-hash() 
{
	echo -n "$FILES" | cat - $LINKER_FLAGS $LINKER | b3sum - | cut -f1 -d' '
}

echo $(pwd)/.cache/`get-hash`
