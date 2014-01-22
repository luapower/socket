files="$(ls -1 src/*.c | grep -v usocket)"
gcc -O2 -s -static-libgcc $files -shared -o ../../bin/mingw32/clib/socket_core.dll -I. -I../lua -L../../bin/mingw32 -llua51 -lwsock32
