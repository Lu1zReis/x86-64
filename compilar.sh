#!/bin/bash
set -e

nasm -f elf64 libasm/strlen.asm -o strlen.o
gcc -c main.c -o saida.o
gcc -no-pie strlen.o saida.o -o resultado

./resultado
