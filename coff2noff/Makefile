# Makefile for:
#	coff2noff -- converts a normal MIPS executable into a Nachos executable
#
# This is a GNU Makefile.  It must be used with the GNU make program.
# At UW, the GNU make program is /software/gnu/bin/make.
# In many other places it is known as "gmake".
# You may wish to include /software/gnu/bin/ early in your command
# search path, so that you will be using GNU make when you type "make".
#
#  Use "make" to build the executable(s)
#  Use "make clean" to remove .o files
#  Use "make distclean" to remove all files produced by make, including
#     the executable
#
#
# Copyright (c) 1992-1996 The Regents of the University of California.
# All rights reserved.  See copyright.h for copyright notice and limitation
# of liability and disclaimer of warranty provisions.
#
#  This file has been modified for use at Waterloo
#
# 2003/10/07 rewritten for usage with autoconf

CC=/bin/gcc
CFLAGS= -g -m32 -O2 -DRDATA -DHAVE_CONFIG_H -I@top_dir@
LD=/bin/gcc -m32
RM=rm

all: coff2noff

# converts a COFF file to Nachos object format
coff2noff: coff2noff.o
	$(LD) -s coff2noff.o -o coff2noff

clean:
	$(RM) -f coff2noff.o coff2noff

distclean: clean
	$(RM) -f Makefile config.h config.status config.log *~


