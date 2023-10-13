;What's past is prologue.
section .note.GNU-stack
section .data
    source: db ";What's past is prologue.%csection .note.GNU-stack%csection .data%c source: db %c%s%c, 0%csection .text%c   global main%c   extern printf%cmain:%c;O brave new world!%c", 0
section .text
    global main
    extern printf
main:
;O brave new world!
    mov rsi, source
    
ret