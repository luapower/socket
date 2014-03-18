files="$(ls -1 src/*.c | grep -v "usocket\|unix\|serial\|mime")"
mkdir -p ../../bin/mingw64/clib/socket
gcc -O2 -s -static-libgcc $files -shared -o ../../bin/mingw64/clib/socket/core.dll \
	-I. -I../lua -L../../bin/mingw64 -llua51 -lws2_32 -DWINVER=0x0501 -DLUASOCKET_INET_PTON

mkdir -p ../../bin/mingw64/clib/mime
gcc -O2 -s -static-libgcc src/mime.c -shared -o ../../bin/mingw64/clib/mime/core.dll \
	-I. -I../lua -L../../bin/mingw64 -llua51
