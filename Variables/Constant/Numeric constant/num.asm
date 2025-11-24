


default rel

section .data
    fmt db "%d", 10, 0


section .text
    extern printf
    global main

main:
    sub rsp, 40

    ;only work for numbers
    %assign id 0    

    %macro print_id 0
        lea rcx, [fmt]
        mov rdx, id
        xor rax, rax
        call printf
        ;increment
        %assign id id + 1   
    %endmacro

    print_id
    print_id
    print_id


    add rsp, 40
    ret