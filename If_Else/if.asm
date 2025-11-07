
default rel

section .data
    fmt_in1 db "Enter num1: ", 10, 0
    fmt_in2 db "Enter num2: ", 10, 0
    fmt_scan db "%d", 0

    num1 dq 0
    num2 dq 0
    msg_greater db "Num1 is greater", 10, 0
    msg_less_equal db "Num1 is less or equal", 10, 0


section .text
    extern printf, scanf
    global main


main:
    sub rsp, 40

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
    mov rbx, [num2]
    cmp rax, rbx ;compare both nums
    jg greater_label  ;jump if greater than

    less_equal_label:
        lea rcx, [msg_less_equal]
        xor eax, eax    ;set eax to 0
        call printf
        jmp end_if

    greater_label:
        lea rcx, [msg_greater]
        xor eax, eax
        call printf

    end_if:
        add rsp, 40
        ret




    