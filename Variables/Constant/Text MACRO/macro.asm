
default rel

section .data
    %define arg1 rcx
    %define arg2 rdx
    msg db "hello", 0
    fmt db "%s", 10, 0


section .text
    extern printf
    global main

main:
    sub rsp, 40

    lea arg1, [fmt]
    lea arg2, msg
    xor rax, rax
    call printf

    add rsp, 40
    ret