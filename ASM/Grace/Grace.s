;It is not in the stars to hold our destiny but in ourselves.
section .note.GNU-stack
%macro put_main 0
section .data
source db ";It is not in the stars to hold our destiny but in ourselves.%1$csection .note.GNU-stack%1$c%4$cmacro put_main 0%1$csection .data%1$csource db %2$c%3$s%2$c, 0%1$ckid db %2$cGrace_kid.s%2$c, 0%1$csection .bss%1$cfd resb 1%1$csection .text%1$cglobal main%1$cextern dprintf%1$cmain:%1$cmov rax, 2%1$clea rdi, [rel kid]%1$cmov rsi, 0101%1$csyscall%1$ccmp rax, -1%1$cje .quit%1$cmov rdi, rax%1$cmov [rel fd], rax%1$cxor rax, rax%1$clea rsi, [rel source]%1$cmov rdx, 10%1$cmov rcx, 34%1$clea r8, [rel source]%1$cmov r9, 37%1$ccall dprintf wrt ..plt%1$cmov rax, 3%1$cmov rdi, [rel fd]%1$csyscall%1$ccmp rax, -1%1$cje .quit%1$cxor rax, rax%1$cret%1$c.quit:%1$cmov rax, -1%1$cret%1$c%4$cendmacro%1$cput_main", 0
kid db "Grace_kid.s", 0
section .bss
fd resb 1
section .text
global main
extern dprintf
main:
mov rax, 2
lea rdi, [rel kid]
mov rsi, 0101
syscall
cmp rax, -1
je .quit
mov rdi, rax
mov [rel fd], rax
xor rax, rax
lea rsi, [rel source]
mov rdx, 10
mov rcx, 34
lea r8, [rel source]
mov r9, 37
call dprintf wrt ..plt
mov rax, 3
mov rdi, [rel fd]
syscall
cmp rax, -1
je .quit
xor rax, rax
ret
.quit:
mov rax, -1
ret
%endmacro
put_main