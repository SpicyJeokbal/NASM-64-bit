
default rel

section .data
    fmt db "%d", 10, 0

section .text
    extern printf
    global main

main:
    sub rsp, 40

    mov rbx, 5

do_start:
    lea rcx, [fmt]
    mov rdx, rbx
    xor rax, rax
    call printf

    dec rbx

    cmp rbx, 0
    jg do_start

    add rsp, 40
    ret