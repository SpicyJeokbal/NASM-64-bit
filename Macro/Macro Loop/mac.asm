

default rel

section .data
    fmt db "%d", 10, 0


section .text
    extern printf
    global main

;increment

%macro COUNT_LOOP 1
    mov rbx, 1 ;counter
    %%loop:
        cmp rbx, %1
        jg %%end_loop

        lea rcx, [fmt]
        mov rdx, rbx
        xor rax, rax
        call printf

        inc rbx
        jmp %%loop
    %%end_loop:
%endmacro


main:
    sub rsp, 40

    COUNT_LOOP 10

    add rsp, 40
    ret