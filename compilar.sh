#!/bin/bash
set -e

nasm -f elf64 libasm/strlen.asm -o strlen.o
nasm -f elf64 libasm/memcpy.asm -o memcpy.o

gcc -c main.c -o saida.o
gcc -no-pie strlen.o memcpy.o saida.o -o resultado

./resultado
