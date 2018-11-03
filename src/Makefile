CROSS_COMPILE=
CFLAGS= -lssl -lcrypto -lpcap  -static -O3
LDFLAGS=-L/usr/local/lib
CPPFLAGS=-I/usr/local/include
LIBS=-lgcrypt

all:
		$(CROSS_COMPILE)gcc -o client main.c \
		auth.c \
		ip.c   \
		njit8021xclient.c \
		njit8021xclient.h \
		debug.h \
		aes.h \
		aes.c \
		h3c_AES_MD5.h \
		h3c_AES_MD5.c \
		h3c_dict.h \
		fillmd5-libcrypto.c \
		$(LDFLAGS) $(CPPFLAGS) $(CFLAGS) 
#		fillmd5-libgcrypt.c 
		$(CROSS_COMPILE)strip client
clean:
	rm client

install:
	cp client /usr/bin/njit-client

uninstall:
	rm /usr/bin/njit-client
