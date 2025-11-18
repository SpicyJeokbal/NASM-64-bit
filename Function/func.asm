; function uses rax to return a value



default rel

section .data
    fmt db "Result: %d", 10, 0



section .text
    extern printf
    global main
    global add_two_numbers

add_two_numbers:
;int add_two_numbers(int a,int b)
    mov rax, rcx    ;rax = a
    add rax, rdx    ;rax = a + b
    ret

main:
    sub rsp, 40

    mov rcx, 10
    mov rdx, 5
    call add_two_numbers ;rax now contains the return value

    mov rcx, fmt
    mov rdx, rax
    xor rax, rax
    call printf


    add rsp, 40
    ret