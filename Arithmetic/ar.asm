default rel

section .data
    num1 db 5
    num2 db 2
    fmt db "Sum = %d", 10, 0

section .text
    extern printf
    global main

main:
    sub rsp, 40

    movzx rax, byte [num1]
    movzx rbx, byte [num2]

    add rax, rbx    ;sum is stored in rax

    mov rcx, fmt
    mov rdx, rax
    call printf

    add rsp, 40
    ret