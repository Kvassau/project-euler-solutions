:: Windows build script
@echo off

set SOURCE=3.rs
set TARGET=3.exe

rustc %SOURCE% -o %TARGET%

echo "%TARGET%" built successfully
echo Usage: "%TARGET% <number>" e.g. "%TARGET% 600851475143"
