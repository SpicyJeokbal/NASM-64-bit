
@echo off
nasm -f win64 lib.asm -o lib.obj
nasm -f win64 main.asm -o main.obj
gcc main.obj lib.obj -o program.exe
program.exe
pause