#CFLAGS= -lssl -lcrypto -lpcap  -static -O3
OBJ=njit-client

all:
		$(CC) $(LDFLAGS) $(CFLAGS) main.c \
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
	 	-o $(OBJ) -lssl -lcrypto -lpcap
#		fillmd5-libgcrypt.c 
#		$(CROSS_COMPILE)strip $(OBJ)
clean:
	rm $(OBJ)

install:
	cp  $(OBJ) /usr/bin/$(OBJ)

uninstall:
	rm /usr/bin/$(OBJ)
