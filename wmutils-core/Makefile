# $NetBSD$

DISTNAME=	wmutils-core-1.2
CATEGORIES=	wm
MASTER_SITES=	${MASTER_SITE_GITHUB:=wmutils/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://wmutils.io/
COMMENT=	Window Manipulation Utilities
LICENSE=	isc

GITHUB_PROJECT=	core
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAKE_FLAGS+=		PREFIX=${PREFIX}
LDFLAGS+=		${LINKER_RPATH_FLAG}${X11BASE}/lib
LDFLAGS+=		-lxcb
BUILD_MAKE_FLAGS+=	LDFLAGS=${LDFLAGS:Q}

.include "../../x11/libxcb/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
