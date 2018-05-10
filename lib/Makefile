#
# Makefile for misc library.
#
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

LIBMISC	= libapue.a
OBJS   = bufargs.o cliconn.o clrfl.o \
			daemonize.o error.o errorlog.o lockreg.o locktest.o \
			openmax.o pathalloc.o popen.o prexit.o prmask.o \
			ptyfork.o ptyopen.o readn.o recvfd.o senderr.o sendfd.o \
			servaccept.o servlisten.o setfd.o setfl.o signal.o signalintr.o \
			sleepus.o spipe.o tellwait.o ttymodes.o writen.o

all:	$(LIBMISC) sleep.o

$(LIBMISC):	$(OBJS)
	$(AR) rv $(LIBMISC) $?
	$(RANLIB) $(LIBMISC)


clean:
	rm -f *.o a.out core temp.* $(LIBMISC)

$(LIBAPUE):
	(cd $(ROOT)/lib && $(MAKE))
