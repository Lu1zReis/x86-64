#include <stdio.h>
#include "libasm/libasm.h"

int main(void)
{
    char texto[] = "Hello Assembly!";

    printf("Tamanho: %zu\n", strlen_asm(texto));

    return 0;
}