

    default rel

    section .data
        msg db "hello", 10, 0
        fmt db "%s", 0


    section .text
        extern printf
        global main

    main:
        sub rsp, 40

        ; 0 means the macro dont have a parameter
        %macro hello 0
            lea rcx, [fmt]
            mov rdx, msg
            xor rax, rax
            call printf
        %endmacro

        hello


        add rsp, 40
        ret