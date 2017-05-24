#include <stdio.h>
#include <stdlib.h>
#include <string.h>

unsigned long long get_sp(){
__asm__("movq %rsp,%rax");
}
int main(int argc, char **argv)
{
printf("running...\n");
unsigned long long stack;
stack=get_sp();
printf("0x%llx\n",stack);

return 0;
}

