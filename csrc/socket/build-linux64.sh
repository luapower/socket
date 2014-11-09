files="$(ls -1 src/*.c | grep -v wsocket)" \
	P=linux64 C="-fPIC -DLUASOCKET_API=extern" L="-s -static-libgcc" \
	SD=core.so MD=core.so MA=libsocket_core.a SA=libmime_core.a ./build.sh
