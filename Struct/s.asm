

default rel

section .data

    fmt db "%s %d %d", 10, 0
    person:
        name db "Bob", 0
        age db 25
        height db 180

section .text
    extern printf
    global main

main:
    sub rsp, 40

    lea rbx, [person]

    lea rcx, [fmt]
    lea rdx, [rbx]
    movzx r8d, byte [rbx+4]
    movzx r9d, byte [rbx+5]
    xor rax, rax
    call printf

    add rsp, 40
    ret