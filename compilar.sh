#!/bin/bash
set -e

nasm -f elf64 libasm/strlen.asm -o libasm/strlen.o
nasm -f elf64 libasm/memcpy.asm -o libasm/memcpy.o
nasm -f elf64 libasm/memset.asm -o libasm/memset.o
nasm -f elf64 libasm/strcmp.asm -o libasm/strcmp.o
nasm -f elf64 libasm/reverse.asm -o libasm/reverse.o


gcc -c main.c -o saida.o
gcc -no-pie libasm/strlen.o libasm/memcpy.o libasm/memset.o libasm/strcmp.o libasm/reverse.o saida.o -o resultado

./resultado
