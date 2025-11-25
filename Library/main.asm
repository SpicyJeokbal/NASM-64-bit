
default rel

section .data
    fmt db "%d", 10, 0

section .text
    extern printf
    extern ADD_NUMS
    global main

main:
    sub rsp, 40

    mov rcx, 10
    mov rdx, 5
    call ADD_NUMS

    lea rcx, [fmt]
    mov rdx, rax
    xor rax, rax
    call printf

    add rsp, 40
    ret