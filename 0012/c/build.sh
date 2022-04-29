#!/bin/sh

# Linux/BSD Build Script
set -eu

CC="gcc" 
CFLAGS="-Wall -Werror -Wextra -pedantic -O2 -s"
SOURCE="12.c" 
TARGET="12.bin" 

$CC $CFLAGS $SOURCE -o $TARGET -lm

echo \"$TARGET\" built successfully
echo Usage: \"./$TARGET \<number\>\" e.g. \"./$TARGET 500\"
