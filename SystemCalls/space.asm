section .text
global space

space:
    mov al, ' '
    int 10h
    ret