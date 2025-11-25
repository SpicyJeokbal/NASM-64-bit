# NASM-64-bit


To run the asm file, follow these commands:

```bash
nasm -f win64 fileName.asm -o fileName.obj
gcc fileName.obj -o fileName.exe
fileName.exe
```
or You can create a bat file and place it together with the asm file and double click it

```bash
@echo off
nasm -f win64 fileName.asm -o fileName.obj
gcc fileName.obj -o fileName.exe
fileName.exe
pause
```
