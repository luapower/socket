files="$(ls -1 src/*.c | grep -v "wsocket\|serial")"
mkdir -p ../../bin/linux32/clib/socket
gcc -O2 -s -static-libgcc $files -shared -o ../../bin/linux32/clib/socket/core.so -I. -I../lua \
    -DLUASOCKET_API=extern

mkdir -p ../../bin/linux32/clib/mime
gcc -O2 -s -static-libgcc src/mime.c -shared -o ../../bin/linux32/clib/mime/core.so -I. -I../lua
