.section data
filename:
.ascii "Hello World!"

.section .text
.global _start
_start:
movq $1, %rax
movq $1, %rdi
lea filename, %rsi
movq $17, %rdx
syscall

movq %rax, %rdi
movq $60,%rax
syscall
