section .text
global clear_screen

clear_screen:
    mov ax, 0x6000
    mov cx, 0x0000
    mov dx, 0x184F
    int 10h