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
    hlt

error_msg db "Disk read operation failed!", 0