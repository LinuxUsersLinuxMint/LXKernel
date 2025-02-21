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
    lodsb
    or al, al
    jz err_done
    mov ah, 0x0E
    int 0x10
    jmp error_msg

err_done:
    ret