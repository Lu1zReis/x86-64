; void *memset(void *ptr, int value, size_t num);
;               rdi,         rsi,        rdx

bits 64

section .text
global memset_asm
memset_asm:
    xor rcx, rcx
    
.loop:
    cmp rcx, rdx
    je .end
    
    mov byte [rdi + rcx], sil

    inc rcx
    jmp .loop

.end:
    mov rax, rdi
    ret