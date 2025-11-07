
default rel

section .data
    fmt_in db "%d", 0
    fmt_out db "You entered: %d",10 , 0
    num    dq 0        ;space to store input(8 bytes)

section .text
    extern printf, scanf
    global main

main:
    sub rsp, 40
    ;scanf("%d", &num)
    lea rcx, [fmt_in]
    lea rdx, [num]
    call scanf

    lea rcx, [fmt_out]
    mov rdx, [num]
    call printf

    add rsp, 40
    ret