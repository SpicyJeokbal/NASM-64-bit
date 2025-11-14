default rel

section .data
    fmt db "%d", 10, 0

section .text
    extern printf
    global main

main:
    sub rsp, 40            

    mov rbx, 5      ;must use non-volatile register           

loop_start:

    lea rcx, [fmt]         
    mov rdx, rbx           
    xor rax, rax           
    call printf            

    dec rbx                
    cmp rbx, 0
    jnz loop_start         

    add rsp, 40
    ret

;it's okay to use volatile registers inside the loop cause 
;they're the ones who handle the process so they can be reset 
;anytime while rbx outside the loop changes based on the loop and doesn't 
;reset every iteration
