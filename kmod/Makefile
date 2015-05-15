KMOD=	secadm
SRCS=	\
	secadm.c \
	secadm_mac.c \
	secadm_sysctl.c \
	secadm_vnode.c \
	vnode_if.h

CFLAGS+=	-g -O0 -I${.CURDIR}/../libsecadm

.include <bsd.kmod.mk>

deinstall:
	@echo "no deinstall target in kmod"
