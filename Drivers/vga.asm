section .data
    global VGA_COLOR_BLACK
    global VGA_COLOR_BLUE
    global VGA_COLOR_GREEN
    global VGA_COLOR_CYAN
    global VGA_COLOR_RED
    global VGA_COLOR_MAGENTA
    global VGA_COLOR_YELLOW
    global VGA_COLOR_WHITE
    global VGA_COLOR_GRAY
    global VGA_COLOR_LIGHT_BLUE
    global VGA_COLOR_LIGHT_GREEN
    global VGA_COLOR_LIGHT_CYAN
    global VGA_COLOR_LIGHT_RED
    global VGA_COLOR_LIGHT_MAGENTA
    global VGA_COLOR_LIGHT_YELLOW
    global VGA_COLOR_LIGHT_WHITE

    VGA_COLOR_BLACK db 0x00
    VGA_COLOR_BLUE db 0x01
    VGA_COLOR_GREEN db 0x02
    VGA_COLOR_CYAN db 0x03
    VGA_COLOR_RED db 0x04
    VGA_COLOR_MAGENTA db 0x05
    VGA_COLOR_YELLOW db 0x06
    VGA_COLOR_WHITE db 0x07
    VGA_COLOR_GRAY db 0x08
    VGA_COLOR_LIGHT_BLUE db 0x09
    VGA_COLOR_LIGHT_GREEN db 0x0A
    VGA_COLOR_LIGHT_CYAN db 0x0B
    VGA_COLOR_LIGHT_RED db 0x0C
    VGA_COLOR_LIGHT_MAGENTA db 0x0D
    VGA_COLOR_LIGHT_YELLOW db 0x0E
    VGA_COLOR_LIGHT_WHITE db 0x0F

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