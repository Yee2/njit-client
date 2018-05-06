CROSS_COMPILE=
CFLAGS= -lpcap
#CFLAGS= -lpcap  -static -O3
# 使用上面参数可以编译静态文件，但需要指定libpcap.a的路径
LIBPCAP=/usr/local/lib/libpcap.a
LDFLAGS=-L/usr/local/lib
CPPFLAGS=-I/usr/local/include
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
		$(LIBPCAP)
#		fillmd5-libgcrypt.c 
		$(CROSS_COMPILE)strip client
clean:
	rm client

install:
	cp client /usr/bin/njit-client

uninstall:
	rm /usr/bin/njit-client
