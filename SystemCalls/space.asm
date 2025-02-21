section .text
global space

space:
    mov ah, 0x0E
    mov al, ' '
    int 10h
    ret