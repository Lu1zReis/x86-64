; size_t strcmp_asm(const char *str, const char *str2);
;                               rdi,              rsi

section .text
global strcmp_asm

strcmp_asm:
    xor rcx, rcx                ; contador do rdi e rsi

.loop:
    cmp byte [rdi + rcx], 0     ; verificando se chegou no fim em str1
    jz .b_greater

    cmp byte [rsi + rcx], 0     ; verificando se chegou no fim em str2
    jz .a_greater

    mov al, [rsi + rcx]
    cmp byte [rdi + rcx], al
    jne .not_equal

    inc rcx

    jmp .loop

.equal:
    mov rax, 0
    ret

.b_greater:
    cmp byte [rsi + rcx], 0
    jz .equal
    mov rax, 1
    ret

.a_greater:
    cmp byte [rdi + rcx], 0
    jz .equal
    mov rax, -1
    ret

.not_equal:
    mov al, [rdi + rcx]
    cmp byte [rdi + rcx], al
    jl .b_greater
    jmp .a_greater
