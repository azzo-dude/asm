%macro print 2
      mov rax, 1
      mov rdi, 1
      mov rsi, %1
      mov rdx, %2
      syscall
%endmacro
%macro input 2
      mov rax, 0
      mov rdx, 0
      mov rsi, %1
      mov rdx, %2
      syscall
.text
  global _start

_start:
      input NAME, 8
      print msg0, len0
      print msg1, len1
      print msg2, len2
      print NAME, 8
      print msg3, len3
      
      mov rax, 60
      mov rdi, 0
      syscall
.bss
      NAME RESB 8
      
.data
      
      msg0: db "Hello ", 0
      len0: equ $-msg0
      
      msg1: db " !!", 10
      len1: equ $-msg1
      
      msg2: db "Welcome, ", 0
      len2: equ $-msg2

      msg3: db " to EHC", 10
      len3: equ $-msg3
