SHLIB=	secadm
SHLIB_MAJOR=	0
SRCS=	libsecadm.c rules.c
INCS=	secadm.h libsecadm.h

MK_DEBUG_FILES=	no

.if defined(PREFIX)
INCLUDEDIR?=	${PREFIX}/include
.else
INCLUDEDIR?=	/usr/local/include
LIBDIR?=	/usr/local/lib
SHLIBDIR?=	/usr/local/lib
.endif

LDADD+=	-lmd

CFLAGS+=	-g -O0 -I${.CURDIR}

NO_MAN=	"yes"

.include <bsd.lib.mk>

deinstall:
	rm -f /usr/local/lib/libsecadm.so
	rm -f /usr/local/lib/libsecadm.so.0
	rm -f /usr/local/include/libsecadm.h
	rm -f /usr/local/include/secadm.h

