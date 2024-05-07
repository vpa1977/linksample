#include <stdio.h>

extern void undefined();

void foo(void)
{
    puts("Hello, I am a shared library");
    undefined();
}
