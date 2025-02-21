section .text
    global vga_set_color

vga_set_color:
    mov al, [esp+4]             
    mov edi, 0xB8000      
    mov cx, 2000          

.loop:
    mov byte [edi + 1], al  
    add edi, 2             
    loop .loop            

    ret                   