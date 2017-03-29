.section .data

nums:
.long 30, 40

.section .text
.globl _start
_start:

movl $0, %edi
movl nums(,%edi,4), %ebx
incl %edi
movl nums(,%edi,4), %eax
pushl %eax
pushl %ebx


#pushl $10
#pushl $20

call func

movl $1, %eax
int $0x80

.type func, @function

func:
pushl %ebp
movl %esp, %ebp

movl 8(%ebp), %eax
movl 12(%ebp), %ebx
addl %eax, %ebx


movl %ebp, %esp
popl %ebp
ret

