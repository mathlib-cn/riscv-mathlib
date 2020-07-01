# riscv-mathlib
High performance mathematics library for RISC-V platforms

## Current Progress
 - some typical functions are done for double precision floating point number
 - other functions will be updated soon
 
 ## How To Use
 call.c:
```
#include <stdio.h>

double _rv_sin(double x);
int main(void)
{
        double x=0.5;
        double y;
        y=_rv_sin(x);
        printf("HEX:%llx\n", y);
        printf("DEC:%lf\n",y);
        return 0;
}
```
 command:
```
 $ riscv64-unknown-elf-gcc call.c sin.S -o a.out
 $ spike pk a.out
```


Any problem is welcomed to contact us!
-> mathlib-cn@protomail.com
