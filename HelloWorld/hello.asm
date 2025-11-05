

default rel

section .data
    ;0 means end of message
    ;db means store bytes
    msg db "Hello, NASM on Windows!", 0     

section .text
    global main
    extern printf   ;borrows printf from C

main:
    sub rsp, 40  
    ;sub(subtract) tells the computer to subtract a number from something
    ;rsp(stack pointer register)
    ;40 means 40 bytes
    ;as a whole that code tells the computer to move the stack pointer down 40 bytes
    ;in other words "gimme 40 bytes of space"
    
    lea rcx, [msg]  
    ;lea(load effectiveness address). In c++ its '&'
    ;store the address of msg into rcx(register)
    
    call printf
    ;printf takes arguments(rcx,rdx,r8,r9)
    ;it prints whatever is stored in the arguments
    
    add rsp, 40
    ;frees the stack space
    
    ret
    ;jumps back to the exact instruction that called ret
