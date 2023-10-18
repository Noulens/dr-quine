section .note.GNU-stack
section .bss
i resb 1
section .data
source db "", 0
kiddo db "", 0
section .text
global main
extern sprintf
extern dprintf
main:
mov dword [rel i], 5

ret
