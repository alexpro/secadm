PROG=	secadm
SRCS=	secadm.c

USE_LIBXO_PORTS= yes

SUBDIR+=	etc/

.if defined(PREFIX)
BINDIR?=	${PREFIX}/sbin
MANDIR?=	${PREFIX}/man/man
.else
BINDIR?=	/usr/sbin
.endif

LIBADD=  secadm util xo ucl
WANTS_PIE=	yes

CFLAGS+=	-I${.CURDIR}/../../contrib/libucl/include -I/usr/local/include
LDFLAGS+=	-L${.CURDIR}/../libsecadm/obj -L/usr/local/lib

MAN=	secadm.rules.5 secadm.8

.include <bsd.prog.mk>
