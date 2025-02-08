[BITS 16]
[org 0x7c00]

boot:
    mov ah, 0x0E

load_os:
    mov ah, 0x02
    mov al, 3
    mov ch, 0
    mov cl, 2
    mov dh, 0
    mov dl, 0x80
    mov bx, 0x1000
    int 0x13
    jc disk_error

    jmp 0x1000

%include "Boot/disk_read_error.asm"

times 510 - ($ - $$) db 0
dw 0xAA55