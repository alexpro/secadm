SUBDIR+=	etc \
		kmod \
		libsecadm \
		secadm

SUBDIR_TARGETS+= deinstall
.include <bsd.subdir.mk>
