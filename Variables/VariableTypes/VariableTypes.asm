
default rel

section .data
    num1 db 5          ; db = define byte(1 byte)
    ;num2 dw 1234       ; dw = define word(2 bytes)
    ;num3 dd 12345678   ; dd = define double word(4 bytes)
    ;num4 dq 123456789  ; dq = define quad word(8 bytes)
    ;msg db "Hello, world", 0
    
    fmt db "The number is: %d", 10, 0
    ;fmt(format string), 10('\n), 0 is null terminator

section .text
    global main
    extern printf

;mov rax, 5 means put no.5 into register rax
;mov means copy/move

;movzx rax, byte [num] means copy small value(num) safely into a bigger register

;byte is an identifier
;word(2 bytes)
;dword(4 bytes)
;qword(8 bytes)



main:
    sub rsp, 40
    mov rcx, fmt           ;print the format string first           
    movzx rdx, byte [num1] ;print the copy of num1
    call printf         
    add rsp, 40
    ret