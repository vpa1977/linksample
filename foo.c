#include <stdio.h>

void DefinedSymbol();

void foo(void)
{
    puts("Hello, I am a shared library");
    DefinedSymbol();
}
