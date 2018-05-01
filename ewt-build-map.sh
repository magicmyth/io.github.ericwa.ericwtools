#!/bin/sh
##
# Runs all build tools for a complete map compile.
#

MAP="$1"
MAP_PATH=`dirname "$MAP"`
NO_THREADS=`nproc`
echo "Building map: $MAP"
MAP_NAME=`basename -s .map "$MAP"`
MAP_BSP="$MAP_PATH/$MAP_NAME.bsp"

qbsp "$MAP"
vis -threads $NO_THREADS  "$MAP_BSP"
light -threads $NO_THREADS "$MAP_BSP"
