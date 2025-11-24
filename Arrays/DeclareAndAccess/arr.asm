


default rel

section .data
    nums db 10, 20, 30, 40, 50 ;1 byte each
    numsw dw 100, 200, 300 ;2 bytes each
    numsd dd 10, 20, 30 ;4 bytes each
    numsq dq 1, 2, 3, 4, 5 ;8 bytes each
    fmt db "%d", 10, 0

section .text
    extern printf
    global main

main:
    sub rsp, 40

    mov al, [nums + 2] ;gets 30
    mov eax, [numsd + 4*1] ;2nd element
    mov rax, [numsq + 8*2] ;3rd element

    lea rcx, [fmt]
    mov rdx, rax
    call printf

    lea rcx, [fmt]
    mov edx, eax
    call printf

    add rsp, 40
    ret