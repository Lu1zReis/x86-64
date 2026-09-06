bits 64

section .text
global memcpy_asm

memcpy_asm:
    xor rcx, rcx

.loop:

    cmp rcx, rdx          ; verificando se o contador chegou em n (qnt bytes definidos para passar)
    je .end

    ; passando o byte para src
    mov al, [rsi + rcx]
    mov [rdi + rcx], al
    
    inc rcx

    jmp .loop

.end:
    mov rax, rdi
    ret