# $NetBSD: Makefile,v 1.25 2016/01/10 20:01:05 markd Exp $

DISTNAME=	kjobwidgets-${KF5VER}
CATEGORIES=	x11

HOMEPAGE=	https://projects.kde.org/projects/frameworks/kjobwidgets
COMMENT=	Widgets for tracking KJob instances
LICENSE=	gnu-lgpl-v2.1

.include "../../wip/kf5/Makefile.common"

.include "../../wip/kcoreaddons/buildlink3.mk"
.include "../../wip/kwidgetsaddons/buildlink3.mk"
.include "../../x11/qt5-qtx11extras/buildlink3.mk"
BUILDLINK_DEPMETHOD.qt5-qttools= build
.include "../../x11/qt5-qttools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
