
;prompt the use to choose an arithmetic operation
;take input from the user
;perform the said operation and return it with RAX register


default rel
    

section .data
    options db "1.) Addition, 2.) Subtraction, 3.) Multiplication, 4.)Division, 5.)Exit ", 10, 0
    fmt_scan db "%d", 0
    fmt_in1 db "Choose Arithmetic Operation: ", 0
    choice dd   0
    fmt_in2 db   "Enter first number: ", 0
    fmt_in3 db "Enter second number: ", 0
    num1    dd   0
    num2    dd   0
    fmt_out db "Result: %d", 10, 0


section .text
    extern printf, scanf
    global main

main:
    sub rsp, 40

    ;call menu
    lea rcx, [options]
    call printf

    ;print input prompt
    lea rcx, [fmt_in1] 
    call printf
    
    ;read choice
    lea rcx, [fmt_scan]
    lea rdx, [choice]
    xor rax, rax
    call scanf
    
    mov eax, [choice]
    
    cmp eax, 1
    je case_1

    cmp eax, 2
    je case_2

    cmp eax, 3
    je case_3

    cmp eax, 4
    je case_4

    cmp eax, 5
    je case_5



case_1:
    ;first num
    lea rcx, [fmt_in2]
    xor rax, rax
    call printf

    lea rcx, [fmt_scan]
    lea rdx, [num1]
    xor rax, rax
    call scanf

    ;second num
    lea rcx, [fmt_in3]
    xor rax, rax
    call printf

    lea rcx, [fmt_scan]
    lea rdx, [num2]
    xor rax, rax
    call scanf

    mov eax, [num1]
    add eax, [num2] 

    lea rcx, [fmt_out]
    mov edx, eax 
    xor rax, rax
    call printf

    jmp case_5

case_2:
    ;first num
    lea rcx, [fmt_in2]
    xor rax, rax
    call printf

    lea rcx, [fmt_scan]
    lea rdx, [num1]
    xor rax, rax
    call scanf

    ;second num
    lea rcx, [fmt_in3]
    xor rax, rax
    call printf

    lea rcx, [fmt_scan]
    lea rdx, [num2]
    xor rax, rax
    call scanf

    mov eax, [num1]
    sub eax, [num2] 

    lea rcx, [fmt_out]
    mov edx, eax 
    xor rax, rax
    call printf

    jmp case_5

case_3:
    ;first num
    lea rcx, [fmt_in2]
    xor rax, rax
    call printf

    lea rcx, [fmt_scan]
    lea rdx, [num1]
    xor rax, rax
    call scanf

    ;second num
    lea rcx, [fmt_in3]
    xor rax, rax
    call printf

    lea rcx, [fmt_scan]
    lea rdx, [num2]
    xor rax, rax
    call scanf

    mov eax, [num1]
    mul eax, [num2] 

    lea rcx, [fmt_out]
    mov edx, eax 
    xor rax, rax
    call printf

    jmp case_5

case_4:
    ; Get first number
    lea rcx, [fmt_in2]
    call printf

    lea rcx, [fmt_scan]
    lea rdx, [num1]
    xor rax, rax
    call scanf

    ; Get second number
    lea rcx, [fmt_in3]
    call printf

    lea rcx, [fmt_scan]
    lea rdx, [num2]
    xor rax, rax
    call scanf

    ; Perform division  
    mov eax, [num1]     ; edx:eax
    xor edx, edx        ; random trash number combined with num1, 0 eax becomes 64 bit but with the same value
    div dword [num2]    ; by default div divides num2 to whatever is the value of edx:eax
    ;edx:eax can be change into 64 bit registers, just change dd to dq and dword to qword


    ; Print result
    lea rcx, [fmt_out]
    mov edx, eax
    xor rax, rax
    call printf

    jmp case_5

case_5:
    add rsp, 40
    ret