section .note.GNU-stack
section .bss
section .data
source db "section .note.GNU-stack%1$csection .bss%1$csection .data%1$c", 0
kiddo db "Sully_%d.c", 0
cmd db "gcc -Wall -Werror -Wextra -o Sully_%1$d Sully_%1$d.c", 0
buff times 50 db 0
make times 50 db 0
i dq 5
fd dq -1
section .text
global main
extern sprintf
extern printf
extern dprintf
extern open
extern close
extern system
main:
push rbp
mov rbp, rsp
dec qword [rel i]
cmp qword [rel i], 0
jl .exit
xor rax, rax
lea rdi, [rel buff]
lea rsi, [rel kiddo]
mov rdx, [rel i]
call sprintf wrt ..plt
mov rax, 2
lea rdi, [rel buff]
mov rsi, 0101
mov rdx, 0777
syscall
and rax, 0x0f
cmp rax, -1
je .quit
mov [rel fd], rax
xor rax, rax
mov rdi, [rel fd]
lea rsi, [rel source]
call dprintf wrt ..plt
mov rax, 3
mov rdi, [rel fd]
syscall
cmp rax, -1
je .quit
xor rax, rax
lea rdi, [rel make]
lea rsi, [rel cmd]
mov rdx, [rel i]
call sprintf wrt ..plt
lea rdi, [rel make]
call system wrt ..plt
xor rax, rax
mov rsp, rbp
pop rbp
ret
.quit:
mov rax, -1
ret
.exit:
xor rax, rax
ret