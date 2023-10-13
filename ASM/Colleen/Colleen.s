;What's past is prologue.
section .note.GNU-stack
section .data
	source: db ";What's past is prologue.%1$csection .note.GNU-stack%1$csection .data%1$c%4$csource: db %2$c%3$s%2$c, 0%1$csection .text%1$c%4$cglobal main%1$c%4$cextern printf%1$cmain:%1$c;O brave new world!%1$c%4$ccall .printit%1$c%4$cxor rax, rax%1$cret%1$c%1$c.printit:%1$c%4$cxor rax, rax%1$c%4$clea rdi, [rel source]%1$c%4$cmov rsi, 0xa%1$c%4$cmov rdx, 0x22%1$c%4$clea rcx, [rel source]%1$c%4$cmov r8, 0x9%1$c%4$ccall printf wrt ..plt%1$cret", 0
section .text
	global main
	extern printf
main:
;O brave new world!
	call .printit
	xor rax, rax
ret

.printit:
	xor rax, rax
	lea rdi, [rel source]
	mov rsi, 0xa
	mov rdx, 0x22
	lea rcx, [rel source]
	mov r8, 0x9
	call printf wrt ..plt
ret