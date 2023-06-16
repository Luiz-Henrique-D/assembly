section .data
    msg db "Hello, world", 0XA
    tam equ $- msg

section .text

global _start

_start:
    mov EAX, 0X4
    mov EBX, 0x1
    mov ECX, msg
    mov EDX, tam

    int 0x80

    output:

    ; destino, origem
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80