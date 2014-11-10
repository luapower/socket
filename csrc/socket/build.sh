mkdir -p "$(dirname ../../bin/$P/clib/$SD)"
gcc -c -O2 $C $files -I. -I../lua
gcc *.o -shared -o ../../bin/$P/clib/$SD $L
ar rcs ../../bin/$P/$SA *.o

mkdir -p "$(dirname ../../bin/$P/clib/$MD)"
gcc -c -O2 $C src/mime.c -I. -I../lua
gcc mime.o -shared -o ../../bin/$P/clib/$MD $L
ar rcs ../../bin/$P/$MA mime.o

rm *.o
