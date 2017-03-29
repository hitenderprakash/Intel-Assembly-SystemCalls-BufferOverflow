.section data
.section .text
.global _start
_start:

jmp end

fun:
pop %rdi 
xor %rax, %rax 
movb %al, 9(%rdi)
push %rax
push %rdi
mov %rsp, %rsi
mov %rax, %rdx

movb $59, %al
syscall

end:
call fun
.ascii "/bin/bash" 


 




