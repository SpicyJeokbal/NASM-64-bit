
default rel

section .data
    fmt_in1 db "Enter first number: ", 0
    fmt_in2 db "Enter second number: ", 0
    fmt_scan db "%d", 0
    fmt_out1 db "The sum is: %d", 10, 0
    num1    dq 0
    num2    dq 0

section .text
    extern printf, scanf
    global main

main:
    sub rsp, 40

    ;scanf("%d", &x)
    ;1st number
    lea rcx, [fmt_in1]
    call printf
    lea rcx, [fmt_scan]
    lea rdx, [num1]
    call scanf

    ;2nd number
    lea rcx, [fmt_in2]
    call printf
    lea rcx, [fmt_scan]
    lea rdx, [num2]
    call scanf

    mov rax, [num1]
    add rax, [num2]

    lea rcx, [fmt_out1]
    mov rdx, rax
    call printf

    add rsp, 40
    ret