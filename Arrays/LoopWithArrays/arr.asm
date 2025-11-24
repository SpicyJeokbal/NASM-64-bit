

default rel

section .data
    num dq 10, 20, 30, 40, 50
    fmt db "%lld", 10, 0
    len equ 5

section .text
    extern printf
    global main

main:
    sub rsp, 40

    xor r12, r12 ;loop counter

loop_start:  

    lea rax, [num]
    mov rbx, [rax + 8*r12]

    lea rcx, [fmt]
    mov rdx, rbx
    xor rax, rax
    call printf

    inc r12
    cmp r12, len
    jl loop_start


    add rsp, 40
    xor rax, rax
    ret