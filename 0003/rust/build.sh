#!/bin/sh

# Linux/BSD Build Script
set -eu

SOURCE="3.rs" 
TARGET="3.bin" 

rustc $SOURCE -o $TARGET

echo \"$TARGET\" built successfully
echo Usage: \"./$TARGET \<number\>\" e.g. \"./$TARGET 600851475143\"
