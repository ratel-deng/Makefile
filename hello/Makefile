.PHONY:all clean
$(shell mkdir -p obj)
$(shell mkdir -p lib_a)
$(shell mkdir -p lib_so)
export PWD:=$(shell pwd)
#全局变量，工程顶层的路径
all:
	make -C led
	make -C lcd
	make -C usb
	make -C sound
	make -C net
	make -C bluetooth
	cp ${PWD}/lib_so/*.so /usr/lib/
	make -C main
install:
	cp hello.out /usr/local/bin/
uninstall:
	rm -f /usr/lib/libnet.so
	rm -f /usr/lib/libbluetooth.so
	rm -f /usr/local/bin/hello.out

clean:
	rm -rf obj
	rm -rf lib*
	rm -f *.out
	rm -f /usr/lib/libnet.so
	rm -f /usr/lib/libbluetooth.so
