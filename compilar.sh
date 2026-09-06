#!/bin/bash
set -e

nasm -f elf64 libasm/strlen.asm -o libasm/strlen.o
nasm -f elf64 libasm/memcpy.asm -o libasm/memcpy.o
nasm -f elf64 libasm/memset.asm -o libasm/memset.o

gcc -c main.c -o saida.o
gcc -no-pie libasm/strlen.o libasm/memcpy.o libasm/memset.o saida.o -o resultado

./resultado
