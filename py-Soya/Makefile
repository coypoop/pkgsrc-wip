# $NetBSD: Makefile,v 1.16 2012/10/06 17:13:27 asau Exp $
#

DISTNAME=		Soya-0.6.1
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=		2
CATEGORIES=		devel
MASTER_SITES=		http://download.gna.org/soya/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://home.gna.org/oomadness/en/soya/index.html
COMMENT=		High level 3D engine for Python

PKG_DESTDIR_SUPPORT=	none

PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

.include "../../lang/python/extension.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/cal3d/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
