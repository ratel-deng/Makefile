AUTOMAKE_OPTIONS = foreign
bin_PROGRAMS = hello
hello_SOURCES = main.c
hello_CFLAGS = -I head -I ../libs_head
hello_LDADD = bluetooth/libbluetooth.a lcd/liblcd.a led/libled.a sound/libsound.a usb/libusb.a ../libs/libjpg.a
hello_LDFLAGS = -Lnet
##libtool动态共享库的路径
LIBS = -lnet -lvideo
##定义一个变量LIBS动态链接库的名字，第三方的库的名字同样定义在这
SUBDIRS = bluetooth head lcd led net sound usb

