#!/bin/sh

for file in $@; do
	tools/comphash.sh $file
done
