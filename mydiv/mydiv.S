global mydiv

section .text

mydiv:
    cmp rsi, 0
    je div_by_zero
    push rdx
    mov rdx, 0
    mov rax, rdi
    div rsi
    pop rcx
    mov qword [rcx], rax
    mov qword [rcx+8], rdx
    mov rax, 1
    ret

div_by_zero:
    mov qword [rdx], 0
    mov qword [rdx+8], 0
    mov rax, 0
    ret