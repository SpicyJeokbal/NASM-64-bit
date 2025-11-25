

default rel

section .text
    extern printf
    global ADD_NUMS

ADD_NUMS:
    mov rax, rcx
    add rax, rdx
    ret
