#!/bin/sh
FILES="$@"
LINKER_FLAGS=$(pwd)/linker-flags
LINKER=$(pwd)/linker
OBJECT_FILE="$(tools/linkhash.sh $FILES)"

if [ ! -f $OBJECT_FILE ]; then
	echo "Linking $FILES..." 1>&2
	`cat $LINKER` `cat $LINKER_FLAGS` -o $OBJECT_FILE $FILES 
fi && echo $OBJECT_FILE
