FILE="$1"
COMPILER_FLAGS=$(pwd)/compiler-flags
OBJECT_FILE="$(tools/comphash.sh $FILE)"


if [ ! -f $OBJECT_FILE ]; then
	echo "Building $FILE..." 1>&2
	gcc `cat $COMPILER_FLAGS` -c -o $OBJECT_FILE $FILE 
fi && echo $OBJECT_FILE
