

default rel

section .data
    msg db "Hello", 10, 0
    fmt db "%c", 10, 0

section .text
    extern printf
    global main

main:
    sub rsp, 40

    lea rbx, [msg]

loop_start:
    movzx rax, byte[rbx]
    test al, al ;check if the the letter is 0
    jz loop_end

    lea rcx, [fmt]
    movzx rdx, al
    xor rax, rax
    call printf

    inc rbx
    jmp loop_start

loop_end:
    add rsp, 40
    ret