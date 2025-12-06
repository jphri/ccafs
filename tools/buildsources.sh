#!/bin/sh

parallel -j6 tools/build.sh {} ::: $@
