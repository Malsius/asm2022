global mydiv

section .text

mydiv:
    cmp rsi, 0
    je div_by_zero
    push rdx
    mov rdx, 0
    mov rax, rdi
    mov rcx, rsi
    div rcx
    mov rcx, rdx
    pop rdx
    mov qword [rdx], rax
    mov qword [rdx+8], rcx
    mov rax, 1
    ret

div_by_zero:
    mov qword [rdx], 0
    mov qword [rdx+8], 0
    mov rax, 0
    ret