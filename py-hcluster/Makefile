# $NetBSD: Makefile,v 1.2 2012/10/07 11:54:43 asau Exp $
#

DISTNAME=	hcluster-0.2.0.tar
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/.tar//}
CATEGORIES=	parallel math python
MASTER_SITES=	http://pypi.python.org/packages/source/h/hcluster/
EXTRACT_SUFX=	.gz

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://code.google.com/p/scipy-cluster/
COMMENT=	Hierarchical Clustering Package For Scipy
LICENSE=	modified-bsd

WRKSRC=	${WRKDIR}/hcluster-0.2.0
USE_LANGUAGES=	c

PYDISTUTILSPKG=	yes

.include "../../graphics/py-matplotlib/buildlink3.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
