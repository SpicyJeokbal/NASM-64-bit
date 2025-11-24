

default rel

section .data
    ;define constant. Most common
    LEN dq 5
    fmt db "%d", 10, 0


section .text
    extern printf
    global main

main:
    sub rsp, 40

    lea rcx, [fmt]
    mov rdx, [LEN]
    xor rax, rax
    call printf

    add rsp, 40
    ret