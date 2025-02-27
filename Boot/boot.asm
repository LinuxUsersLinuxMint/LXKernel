[BITS 16]
[org 0x7c00]

Bootloadername db "LXBootloader", 0
Bootloaderversion db "v0.1", 0

boot:
    mov ax, 0x0600
    mov bh, 0x07
    mov cx, 0x0000
    mov dx, 0x184F
    int 0x10

    mov ah, 0x02
    mov bh, 0x00
    mov dh, 0x00
    mov dl, 0x00
    int 0x10

    mov si, Bootloadername
    call print_string

    mov si, Bootloaderversion
    call print

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