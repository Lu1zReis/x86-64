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


    char dest[6];

    char *res = memset_asm(dest, 'A', sizeof(dest)-1); // se deixarmos ate o limite, ele pode pegar o espaco da memoria de outra variavel

    printf("TESTE: %s\n", dest);

    return 0;
}