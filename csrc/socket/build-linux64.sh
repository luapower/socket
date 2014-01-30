files="$(ls -1 src/*.c | grep -v wsocket)"
gcc -O2 -s -static-libgcc -fPIC $files -shared -o ../../bin/linux64/clib/socket_core.so -I. -I../lua
