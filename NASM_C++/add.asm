
default rel

section .data

section .text
    global add_two

add_two:
    mov eax, ecx
    add eax, edx
    ret

