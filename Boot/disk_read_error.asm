disk_error:
    mov si, error_msg
print:
    lodsb
    or al, al
    jz done
    mov ah, 0x0E
    int 10h
    jmp print

done:
    mov ah, 0x02
    mov bh, 0x00
    add dh, 1
    int 10h
    ret

print_string:
    lodsb
    or al, al
    jz stop
    mov ah, 0x0E
    int 10h
    jmp print_string

stop:
    mov al, ' '
    int 10h
    ret

error_msg db "Disk read operation failed!", 0