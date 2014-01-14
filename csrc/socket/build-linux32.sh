files="$(ls -1 src/*.c | grep -v wsocket)"
gcc $CFLAGS $files -shared -o ../../bin/linux32/socket_core.so -I. -I../lua
