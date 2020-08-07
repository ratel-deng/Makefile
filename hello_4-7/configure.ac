#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT(hello,v1.0,xxx@qq.com)
AC_CONFIG_SRCDIR([config.h.in],src/main.c)
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE
# Checks for programs.
AC_PROG_CXX
AC_PROG_AWK
AC_PROG_CC
AC_PROG_CPP
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_RANLIB
AC_PROG_LIBTOOL

# Checks for libraries.
# FIXME: Replace `main' with a function in `-lnet':
AC_CHECK_LIB([net], [main])

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile
                 libs/Makefile
                 libs_head/Makefile
                 src/Makefile
                 src/bluetooth/Makefile
                 src/head/Makefile
                 src/lcd/Makefile
                 src/led/Makefile
                 src/net/Makefile
                 src/sound/Makefile
                 src/usb/Makefile])
AC_OUTPUT
