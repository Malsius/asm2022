global fibonnaci

section .text

fibonnaci:
    cmp rdi, 0
    je exit_zero
    jl exit_negative
    mov rax, 0
    mov rbx, 1
    mov rdx, rdi

loop_start:
    cmp rdx, 0
    je loop_end
    push rbx
    add rbx, rax
    pop rax
    dec rdx
    jmp loop_start

loop_end:
    ret

exit_zero:
    mov rax, 0
    ret

exit_negative:
    mov rax, -1
    ret