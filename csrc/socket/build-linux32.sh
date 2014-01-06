files="$(ls -1 src/*.c | grep -v wsocket)"
gcc $files -O3 -s -o ../../bin/linux32/socket_core.so -shared -I. -I../lua
