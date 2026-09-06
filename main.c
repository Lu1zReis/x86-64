#include <stdio.h>
#include "libasm/libasm.h"

int main(void)
{
    char texto[] = "Hello Assembly!";
    printf("Tamanho: %zu\n", strlen_asm(texto));


    int valor = 10, valor2;

    memcpy_asm(&valor2, &valor, sizeof(valor));

    printf("%d\n", valor2);

    char origem[] = "Hello";
    char destino[6];

    char *result = memcpy_asm(destino, origem, sizeof(origem));

    printf("%s\n", destino);

    return 0;
}