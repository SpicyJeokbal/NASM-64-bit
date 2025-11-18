

default rel

section .data
    fmt db "%d", 10, 0

section .text
    extern printf
    global main

main:
    sub rsp, 40

    mov rbx, 5

while_check:
    cmp rbx, 0
    jle while_end  ;if i <= 0, break the loop

    lea rcx, [fmt]
    mov rdx, rbx
    xor rax, rax
    call printf

    dec rbx

    jmp while_check

while_end:
    add rsp, 40
    ret
