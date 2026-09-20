#ifndef LIBASM_H
#define LIBASM_H

#include <stddef.h>

size_t strlen_asm(const char *str);
void *memcpy_asm(void *dest, const void *src, size_t n);
void *memset_asm(void *ptr, int value, size_t num);
size_t strcmp_asm(const char *str, const char *str2);
void *reverse_asm(void *ptr, void *src, size_t len);

#endif