global myitoa

section .text

myitoa:
    mov rax, 0
    mov rbx, 1
    mov rcx, 0
    mov rsi, 10
    cmp byte [rdi+rcx], 45
    jne loop_start
    mov rbx, -1
    inc rcx
    jmp loop_start

loop_start:
    cmp byte [rdi+rcx], 0
    je loop_end
    mul rsi
    movzx rdx, byte [rdi+rcx]
    sub rdx, 48
    add rax, rdx
    inc rcx
    jmp loop_start

loop_end:
    mul rbx
    ret