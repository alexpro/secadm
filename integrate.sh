#!/bin/sh


#my source path
#SRCDIR=/usr/local/opnsense/src

#default source path
SRCDIR=/usr/src

MODP="sys/modules/secadm"
LIBP="lib/libsecadm"
SBINP="usr.sbin/secadm"

#patch existing
patch -p1 -V none -d ${SRCDIR} < opnsense-secadm-da70f-17.7.1.patch || exit 1

#copy new
#sys

###Copy kernel module
mkdir ${SRCDIR}/${MODP}
cp -v kmod/*.c ${SRCDIR}/${MODP}
cp -v kmod/Makefile ${SRCDIR}/${MODP}

###Copy mac_jail.c
cp -R -v security ${SRCDIR}/sys

#base

###Copy include file
cp -v libsecadm/secadm.h ${SRCDIR}/include

###Copy libsecadm
mkdir ${SRCDIR}/${LIBP}
cp -v libsecadm/*.c ${SRCDIR}/${LIBP}
cp -v libsecadm/Makefile ${SRCDIR}/${LIBP}

###Copy secadm
mkdir ${SRCDIR}/${SBINP}
cp -v secadm/* ${SRCDIR}/${SBINP}
cp -R -v etc ${SRCDIR}/${SBINP}
