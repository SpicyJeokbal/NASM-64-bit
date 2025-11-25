
;same concept as a void function
;the only difference is that procedural
;doesn't force you to return something

default rel

section .data
    fmt db "%d", 10, 0


section .text
    extern printf
    global main

add_two_numbers:
    mov rax, rcx
    add rax, rdx
    ret


main:
    sub rsp, 40

    mov rcx, 5
    mov rdx, 10
    call add_two_numbers ;rax now has the value

    lea rcx, [fmt]
    mov rdx, rax
    xor rax, rax
    call printf

    add rsp, 40
    ret