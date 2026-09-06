bits 64

section .text
global strlen_asm

strlen_asm:
    xor rcx, rcx          ; contador = 0

.contagem:
    cmp byte [rdi + rcx], 0
    je .fim

    inc rcx
    jmp .contagem

.fim:
    mov rax, rcx
    ret