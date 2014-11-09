files="$(ls -1 src/*.c | grep -v "wsocket\|serial")" \
	P=linux32 C="-DLUASOCKET_API=extern" L="-s -static-libgcc" \
	SD=core.so MD=core.so MA=libsocket_core.a SA=libmime_core.a ./build.sh
