SUBDIR+=	etc \
		kmod \
		libsecadm \
		secadm

.if defined(MKOBJDIRPREFIX)
.undef(MKOBJDIRPREFIX)
.endif

.if defined(WRKDIRPREFIX)
.undef(WRKDIRPREFIX)
.endif

.include <bsd.subdir.mk>
