section .text
global timer

timer:
    mov ecx, [esp + 4]
start_timer:
    cmp ecx, 0
    jle end_timer
    dec ecx
    jmp start_timer

end_timer:
    ret