section .text
  global _start

_start:
      call _USERi
      
      mov rax, 1
      mov rdi, 1
      mov rsi, msg0
      mov rdx, len0
      syscall
      
      call _USERo
      
      mov rax, 1
      mov rdi, 1
      mov rsi, msg1
      mov rdx, len1
      syscall

      mov rax, 1
      mov rdi, 1
      mov rsi, msg2
      mov rdx, len2
      syscall
      
      call _USERo
      
      mov rax, 1
      mov rdi, 1
      mov rsi, msg3
      mov rdx, len3
      syscall
      
      mov rax, 60
      mov rdi, 0
      syscall
_USERi:
      mov rax, 0
      mov rdi, 0
      mov rsi, NAME
      mov rdx, 8
      syscall
      ret
      
_USERo:
      mov rax, 1
      mov rdi, 1
      mov rsi, NAME
      mov rdx, 8
      syscall
      ret
      
section .bss
      NAME RESB 8
      
section .data
      
      msg0: db "Hello ", 0
      len0: equ $-msg0
      
      msg1: db " !!", 10
      len1: equ $-msg1
      
      msg2: db "Welcome, ", 0
      len2: equ $-msg2

      msg3: db " to EHC", 10
      len3: equ $-msg3
