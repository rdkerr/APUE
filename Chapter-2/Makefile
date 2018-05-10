ROOT=..
CC=gcc
COMPILE.c=$(CC) $(CFLAGS) $(CPPFLAGS) -c
LINK.c=$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS)
LDFLAGS=
LDDIR=-L$(ROOT)/lib
LDLIBS=$(LDDIR) -lapue $(EXTRALIBS)
CFLAGS=-ansi -I$(ROOT)/include -Wall -DLINUX -D_GNU_SOURCE $(EXTRA)
RANLIB=echo
AR=ar
AWK=awk
LIBAPUE=$(ROOT)/lib/libapue.a

# Common temp files to delete from each directory.
TEMPFILES=core core.* *.o temp.* *.out

PROGS =	descriptor descriptor_ex3

all:	$(PROGS)

%:	%.c
	$(CC) $(CFLAGS) $@.c -o $@ $(LDFLAGS) $(LDLIBS)

clean:
	rm -f $(PROGS) $(TEMPFILES) *.o

#include $(ROOT)/Make.libapue.inc
