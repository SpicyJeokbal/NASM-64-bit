
;capitalize a character

;default rel

;section .data
    ;msg db "Hello", 10, 0
    ;fmt db "%c", 10, 0

;section .text
    ;extern printf
    ;global main

;main:
    ;sub rsp, 40

    ;lea rbx, [msg]

;loop_start:
    ;mov al, [rbx]
    ;test al, al
    ;jz loop_end

    ;sub al, 32
    ;mov [rbx], al

    ;lea rcx, [fmt]
    ;movzx rdx, al
    ;xor rax, rax
    ;call printf

    ;inc rbx
    ;jmp loop_start

;loop_end:
    ;add rsp, 40
    ;ret

;modify a character via index position
default rel

section .data
    msg db "Hello", 10, 0
    fmt db "%s", 10, 0

section .text
    extern printf
    global main

main:
    sub rsp, 40

    lea rbx, [msg]

    mov byte[rbx + 2], 'H'

    lea rcx, [fmt]
    mov rdx, rbx
    xor rax, rax
    call printf

    add rsp, 40
    ret