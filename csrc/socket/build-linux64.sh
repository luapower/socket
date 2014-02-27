files="$(ls -1 src/*.c | grep -v wsocket)"
mkdir -p ../../bin/linux64/clib/socket
gcc -O2 -s -static-libgcc -fPIC $files -shared -o ../../bin/linux64/clib/socket/core.so -I. -I../lua \
    -DLUASOCKET_API=extern

mkdir -p ../../bin/linux64/clib/mime
gcc -O2 -s -static-libgcc -fPIC src/mime.c -shared -o ../../bin/linux64/clib/mime/core.so -I. -I../lua
