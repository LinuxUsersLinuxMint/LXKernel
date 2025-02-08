section .text
global timer

timer:
    mov eax, [esp + 4]
    mov ecx, [eax]
start_timer:
    cmp ecx, 0
    jle end_timer
    dec ecx
    mov [eax], ecx
    jmp start_timer

end_timer:
    ret