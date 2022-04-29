:: Windows build script
@echo off

set CC=gcc
set CFLAGS=-Wall -Werror -Wextra -pedantic -O2 -s
set SOURCE=12.c
set TARGET=12.exe

%CC% %CFLAGS% %SOURCE% -o %TARGET% -lm

echo "%TARGET%" built successfully
echo Usage: "%TARGET% <number>" e.g. "%TARGET% 500"
