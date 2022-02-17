global myfilexor

extern malloc

section .text

myfilexor:
    mov r12, rsi

    mov rax, 2
    mov rdi, rdi
    mov rsi, 0
    syscall
    mov r13, rax

    mov rdi, 4096
    call malloc
    mov r14, rax

read:
    mov rax, 0
    mov rdi, r13
    mov rsi, buffer
    mov rdx, 4096
    syscall
    mov rbx, buffer

xor_start:
    cmp byte[rbx], 0
    je xor_end
    xor [rbx], r12
    inc rbx
    jmp xor_start

xor_end:
    mov rbx, buffer
    mov rcx, 0

cpy_buffer:
    movzx r12, byte [rbx]
    cmp r12, 0
    je exit
    mov [r14 + rcx], r12
    inc rbx
    inc rcx
    jmp cpy_buffer

exit:
    mov rax, 3
    mov rdi, r13
    syscall
    mov rax, r14
    ret

section .bss

buffer resb 4096