files="$(ls -1 src/*.c | grep -v usocket)"
gcc $files -O3 -s -o ../../bin/mingw32/clib/socket_core.dll -shared -I. -I../lua -L../../bin/mingw32 -llua51 -lwsock32
