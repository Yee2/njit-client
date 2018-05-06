CROSS_COMPILE=mipsel-buildroot-linux-uclibc-
CFLAGS= -lpcap -static -O3
LDFLAGS=-L/tmp/linux/opt/lib 
CPPFLAGS=-I/tmp/linux/opt/include 
LIBS=-lgcrypt

all:
		$(CROSS_COMPILE)gcc -o client $(LDFLAGS) $(CPPFLAGS) $(CFLAGS) main.c \
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
		md5-buildin/md5_one.c \
		md5-buildin/md5_dgst.c \
		md5-buildin/mem_clr.c \
		fillmd5-libcrypto.c \
		# 手动设置libpcap.a的路径
		/tmp/linux/opt/lib/libpcap.a
#		fillmd5-libgcrypt.c 
		$(CROSS_COMPILE)strip client
clean:
	rm client

install:
	cp client /usr/bin/njit-client

uninstall:
	rm /usr/bin/njit-client
