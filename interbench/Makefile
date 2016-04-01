# $NetBSD$

DISTNAME=	interbench-0.31
CATEGORIES=	wip
MASTER_SITES=	http://ck.kolivas.org/apps/interbench/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	coypu@sdf.org
HOMEPAGE=	http://ck.kolivas.org/apps/interbench/
COMMENT=	Emulate and measure CPU scheduling latency and jitter
LICENSE=	gnu-gpl-v2

# XXX maybe obtain dynamically, it's sysctl kern.sched.pri_max
CFLAGS+=	-DPTHREAD_MAX_PRIORITY=63

do-build:
	cd ${WRKSRC} && gmake clean && gmake

.include "../../mk/bsd.pkg.mk"
