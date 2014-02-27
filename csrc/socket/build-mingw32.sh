files="$(ls -1 src/*.c | grep -v "usocket\|unix\|serial\|mime")"
mkdir -p ../../bin/mingw32/clib/socket
gcc -O2 -s -static-libgcc $files -shared -o ../../bin/mingw32/clib/socket/core.dll \
	-I. -I../lua -L../../bin/mingw32 -llua51 -lws2_32 -DWINVER=0x0501 -DLUASOCKET_INET_PTON

mkdir -p ../../bin/mingw32/clib/mime
gcc -O2 -s -static-libgcc src/mime.c -shared -o ../../bin/mingw32/clib/mime/core.dll \
	-I. -I../lua -L../../bin/mingw32 -llua51
