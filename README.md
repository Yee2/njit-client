# 项目说明

本项目基于[liuqun/njit8021xclient](https://github.com/liuqun/njit8021xclient)经多位大佬修改得到。

原项目最后更新时间是:2 Jul 2017，并不能在本人学校使用，后来在恩山论坛找到这个：[【h3c校园网认证】njit-client 2.0（支持inode 7.1）](http://www.right.com.cn/forum/thread-217637-1-1.html)，用的是2017/9/27的源码，在此源码基础上面修改为认证失败后，停止重试，防止进入很名单，修改Makefile文件。

# 注意

编译修改Makefile文件，根据需求修改编译器位置，以及依赖包的位置。

# 用法

njit-client username password eth0.2 CH\\x11V7.10-0313 Oly5D62FaE94W7 >/dev/null 2>&1 &

参考值
```
version：
CH\x11V7.10-0313
CH\x12V5.20-0407
CH\x20V3.60-6303

key：
HuaWei3COM1X
Oly5D62FaE94W7
```
`njit-client-mips32el` 是二进制文件，在MIPS架构路由器上测试可用。

# 依赖

`libpcap` `openssl`
