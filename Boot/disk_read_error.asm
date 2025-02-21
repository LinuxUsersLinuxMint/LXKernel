disk_error:
    mov si, error_msg
print:
    lodsb
    or al, al
    jz done
    mov ah, 0x0E
    int 0x10
    jmp print

done:
    mov ah, 0x02
    mov bh, 0x00
    add dh, 1
    int 0x10
    ret

print_string:
    lodsb
    or al, al
    jz stop
    mov ah, 0x0E
    int 0x10
    jmp print_string

stop:
    mov ah, 0x0E
    mov al, ' '
    int 0x10
    ret

error_msg db "Disk read operation failed!", 0