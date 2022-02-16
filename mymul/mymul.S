global mymul

section .text

mymul:
    push rdx
    mov rax, rdi
    mul rsi
    mov rcx, rdx
    pop rdx
    mov qword [rdx], rcx
    mov qword [rdx+8], rax
    ret