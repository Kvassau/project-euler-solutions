:: Windows build script
@echo off

set CC=gcc
set CFLAGS=-Wall -Werror -Wextra -pedantic
set SOURCE=3.c
set TARGET=3.exe

%CC% %CFLAGS% %SOURCE% -o %TARGET%

echo "%TARGET%" built successfully
echo Usage: "3 <number>" e.g. "3 600851475143"
