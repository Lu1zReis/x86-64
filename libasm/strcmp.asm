section .text
global strcmp_asm

strcmp_asm:
    xor rcx, rcx      ; contador do rdi e rsi

.loop:
    cmp byte [rdi + rcx], 0
    jz .b_greater

    cmp byte [rsi + rcx], 0
    jz .a_greater

    mov ah, [rdi + rcx]
    cmp byte [rdi + rcx], ah
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
    mov ah, [rdi + rcx]
    cmp byte [rdi + rcx], ah
    jl .b_greater
    jmp .a_greater
