files="$(ls -1 src/*.c | grep -v wsocket)"
gcc -O2 -s -static-libgcc $files -shared -o ../../bin/linux32/clib/socket_core.so -I. -I../lua
