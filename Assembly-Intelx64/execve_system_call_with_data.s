.section .data

path:
.ascii "/bin/sh"

.section .text
.global _start
_start:

xor %rax, %rax
leaq path, %rdi
movb %al, 7(%rdi)
mov %rdi, 8(%rdi)
movb %al, 16(%rdi)
leaq 8(%rdi),%rsi
leaq 16(%rdi), %rdx



end:
movb $59, %al
syscall

exit:
mov $60, %rax
syscall




 




