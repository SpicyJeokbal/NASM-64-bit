

default rel

section .data
    fmt db "%d", 10, 0
    num dd 64, 0

section .text
    extern printf
    global main

main:
    sub rsp, 40

    ;%1 is the first argument in macro like rcx to printf and it goes up to %9
    ;after that, use %*, treats arguments as one chunk

    ;only takes 1 argument
    ;%macro PRINT_NUM 1
        ;mov rcx, fmt
        ;mov rdx, %1 
        ;xor rax, rax
        ;call printf
    ;%endmacro

    ;PRINT_NUM 123 ;print '123'  
    ;PRINT_NUM r8 ;prints whatever is inside R8 register
    ;movzx rbx, dword[num]
    ;PRINT_NUM rbx

    ;PRINT_NUM [num]

    ;takes multiple arguments
    %macro ADD_NUMS 2
        mov rax, %1
        add rax, %2

        lea rcx, [fmt]
        mov rdx, rax
        xor rax, rax
        call printf

    %endmacro

    ADD_NUMS 5, 10



    add rsp, 40
    ret