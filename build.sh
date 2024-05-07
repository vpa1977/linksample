gcc -c -fPIC test.S -o test.o

gcc -c -fpic foo.c
gcc -c -fpic undefined_import.c
echo -Wl,-z,defs stops linking with undefined imports
gcc -Wl,-z,defs --shared -o libfoo.so undefined_import.o

echo -Wl,-z,defs allows to declare undefined symbols in assembly
gcc -Wl,-z,defs --shared -o libfoo.so foo.o test.o

echo the resulting executable can not be linked without -Wl,--allow-shlib-undefined
gcc -Wall -o test main.c -lfoo -L.

echo and succeeds with the flag
gcc -Wl,--allow-shlib-undefined -Wall -o test main.c -lfoo -L.
