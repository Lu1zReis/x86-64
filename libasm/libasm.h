#ifndef LIBASM_H
#define LIBASM_H

#include <stddef.h>

size_t strlen_asm(const char *str);
void *memcpy_asm(void *dest, const void *src, size_t n);

#endif