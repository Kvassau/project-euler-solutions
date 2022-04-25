#!/bin/sh

# Linux/BSD Build Script
set -eu

CC="gcc" 
CFLAGS="-Wall -Werror -Wextra -pedantic"
SOURCE="3.c" 
TARGET="3.bin" 

$CC $CFLAGS $SOURCE -o $TARGET

echo \"$TARGET\" built successfully
echo Usage: \"./$TARGET \<number\>\" e.g. \"./$TARGET 600851475143\"
