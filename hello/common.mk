CC = gcc

HEADS:=$(wildcard ${PWD}/head/*.h)
#为头文件加入依赖关系的变量

SOURCE:=$(wildcard *.c)
#列举当前目录的.c文件，自动添加路径

OBJ:=$(addprefix ${PWD}/obj/,$(notdir $(SOURCE:.c=.o)))
#生成：...obj/*.o 单个

#以下三个变量是生成连接文件的依赖
PWD_OBJS:=$(wildcard ${PWD}/obj/*.o) ${PWD}/obj/main.o

PWD_LIB_A:=$(wildcard ${PWD}/lib_a/*.a) 

PWD_LIB_SO:=$(wildcard ${PWD}/lib_so/*.so) 


ifneq (${BIN},)
#${BIN}变量定义在main目录的Makefile 如果BIN不为为空才执行该规则 
${BIN}:${PWD_OBJS} ${PWD_LIB_A} ${PWD_LIB_SO}
	${CC} -I ${PWD}/head/ -o $@ $^
endif
ifeq (${ONLY_OBJ},1)
#只编译目标文件时生效
${OBJ}:${SOURCE} ${HEADS}
	${CC} -I ${PWD}/head/ -o $@ -c $<
#-I指定头文件路径 ${PWD}是在工程顶层目录定义好的全局变量
endif
ifneq (${LIB_A},)
${PWD}/lib_a/${LIB_A}:${OBJ}
	ar rcs $@ $<
${OBJ}:${SOURCE} ${HEADS}
	${CC} -I ${PWD}/head/ -o $@ -c $<
endif
ifneq (${LIB_SO},)
${PWD}/lib_so/${LIB_SO}:${OBJ}
	${CC} -o $@ -shared $^
${OBJ}:${SOURCE} ${HEADS}
	${CC} -I ${PWD}/head/ -o $@ -fPIC -c $<
endif

