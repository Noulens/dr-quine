section .note.GNU-stack
section .rodata
source db "section .note.GNU-stack%1$csection .rodata%1$csource db %2$c%4$s%2$c, 0%1$ckiddo db %2$cSully_%%d.s%2$c, 0%1$ccmd db %2$cnasm -f elf64 Sully_%%1$d.s && gcc -Wall -Werror -Wextra -o Sully_%%1$d Sully_%%1$d.o && ./Sully_%%1$d && rm -f *.o%2$c, 0%1$csection .data%1$cbuff times 50 db 0%1$cbuff2 times 93 db 0%1$ci dq %3$d%1$cfd dq -1%1$csection .text%1$cglobal main%1$cextern sprintf%1$cextern dprintf%1$cextern open%1$cextern close%1$cextern system%1$cmain:%1$center 0, 0%1$cdec qword [rel i]%1$ccmp qword [rel i], -1%1$cjl .exit%1$cxor rax, rax%1$clea rdi, [rel buff]%1$clea rsi, [rel kiddo]%1$cmov rdx, [rel i]%1$cinc rdx%1$ccall sprintf wrt ..plt%1$cmov rax, 2%1$clea rdi, [rel buff]%1$cmov rsi, 0o1101%1$cmov rdx, 0o644%1$csyscall%1$ccmp rax, -1%1$cjle .quit%1$cmov [rel fd], rax%1$cxor rax, rax%1$cmov rdi, [rel fd]%1$clea rsi, [rel source]%1$cmov rdx, 10%1$cmov rcx, 34%1$cmov r8, [rel i]%1$clea r9, [rel source]%1$ccall dprintf wrt ..plt%1$cmov rax, 3%1$cmov rdi, [rel fd]%1$csyscall%1$ccmp rax, -1%1$cjle .quit%1$cxor rax, rax%1$clea rdi, [rel buff2]%1$clea rsi, [rel cmd]%1$cmov rdx, [rel i]%1$cinc rdx%1$ccall sprintf wrt ..plt%1$clea rdi, [rel buff2]%1$ccall system wrt ..plt%1$cxor rax, rax%1$cleave%1$cret%1$c.quit:%1$cmov rax, 1%1$cleave%1$cret%1$c.exit:%1$cxor rax, rax%1$cleave%1$cret", 0
kiddo db "Sully_%d.s", 0
cmd db "nasm -f elf64 Sully_%1$d.s && gcc -Wall -Werror -Wextra -o Sully_%1$d Sully_%1$d.o && ./Sully_%1$d && rm -f *.o", 0
section .data
buff times 50 db 0
buff2 times 93 db 0
i dq 5
fd dq -1
section .text
global main
extern sprintf
extern dprintf
extern open
extern close
extern system
main:
enter 0, 0
dec qword [rel i]
cmp qword [rel i], -1
jl .exit
xor rax, rax
lea rdi, [rel buff]
lea rsi, [rel kiddo]
mov rdx, [rel i]
inc rdx
call sprintf wrt ..plt
mov rax, 2
lea rdi, [rel buff]
mov rsi, 0o1101
mov rdx, 0o644
syscall
cmp rax, -1
jle .quit
mov [rel fd], rax
xor rax, rax
mov rdi, [rel fd]
lea rsi, [rel source]
mov rdx, 10
mov rcx, 34
mov r8, [rel i]
lea r9, [rel source]
call dprintf wrt ..plt
mov rax, 3
mov rdi, [rel fd]
syscall
cmp rax, -1
jle .quit
xor rax, rax
lea rdi, [rel buff2]
lea rsi, [rel cmd]
mov rdx, [rel i]
inc rdx
call sprintf wrt ..plt
lea rdi, [rel buff2]
call system wrt ..plt
xor rax, rax
leave
ret
.quit:
mov rax, 1
leave
ret
.exit:
xor rax, rax
leave
ret