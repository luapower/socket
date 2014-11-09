files="$(ls -1 src/*.c | grep -v "wsocket\|serial")" \
	P=osx64 C="-arch x86_64 -DLUASOCKET_API=extern" \
	L="-arch x86_64 -undefined dynamic_lookup" \
	SD=core.so MD=core.so MA=libsocket_core.a SA=libmime_core.a ./build.sh
