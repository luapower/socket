files="$(ls -1 src/*.c | grep -v "wsocket\|serial")" \
	P=osx32 C="-arch i386 -DLUASOCKET_API=extern" \
	L="-arch i386 -undefined dynamic_lookup" \
	SD=core.so MD=core.so MA=libsocket_core.a SA=libmime_core.a ./build.sh
