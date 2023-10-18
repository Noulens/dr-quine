section .note.GNU-stack
section .bss
i resq 1
fd resq 1
section .data
source db "haha", 0
kiddo db "Sully_%d.c", 0
cmd db "cat ./Sully_%d.c", 0
buff times 11 db 0
make times 16 db 0
section .text
global main
extern sprintf
extern dprintf
extern open
extern close
extern system
main:
mov qword [rel i], 5
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
ret
.quit:
mov rax, -1
ret
.exit:
xor rax, rax
ret
