section .text
global error_msg

start:
    mov ah, 0x0E
error_msg:
    mov al, 'E'
    int 10h
    mov al, 'r'
    int 10h
    mov al, 'r'
    int 10h
    mov al, 'o'
    int 10h
    mov al, 'r'
    call print_string

%include "print_string.asm"