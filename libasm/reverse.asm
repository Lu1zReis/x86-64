; char *reverse_asm(const char *src, char *dest, size_t len);
;                     rdi,          rsi,       rdx

bits 64

section .text

global reverse_asm

reverse_asm:
    mov rcx, rdx          ; rcx = len
    xor rbx, rbx          ; rbx = índice do destino

    dec rcx               ; último índice da origem

.loop:
    cmp rcx, -1
    je .end

    mov al, [rdi + rcx]   ; pega origem[rcx]
    mov [rsi + rbx], al   ; coloca em destino[rbx]

    dec rcx
    inc rbx

    jmp .loop

.end:
    mov byte [rsi + rbx], 0 ; '\0'

    mov rax, rsi             ; retorna destino
    ret
