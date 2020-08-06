#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT(hello,v1.0,xxx@qq.com)
AC_CONFIG_SRCDIR([src/main.c])
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE
# Checks for programs.
AC_PROG_CC

# Checks for libraries.
# FIXME: Replace `main' with a function in `-lnet':
AC_CHECK_LIB([net], [main])
AC_PROG_RANLIB
AC_PROG_LIBTOOL
# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile
                 src/Makefile
                 src/bluetooth/Makefile
                 src/head/Makefile
                 src/lcd/Makefile
                 src/led/Makefile
                 src/net/Makefile
                 src/sound/Makefile
                 src/usb/Makefile])
AC_OUTPUT
