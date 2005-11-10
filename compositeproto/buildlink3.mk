# $NetBSD: buildlink3.mk,v 1.1.1.1 2005/11/10 03:22:41 jeremy-c-reed Exp $

BUILDLINK_DEPMETHOD.compositeproto?=	build

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
COMPOSITEPROTO_BUILDLINK3_MK:=	${COMPOSITEPROTO_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	compositeproto
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ncompositeproto}
BUILDLINK_PACKAGES+=	compositeproto

.if !empty(COMPOSITEPROTO_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.compositeproto+=	compositeproto>=0.2.1
BUILDLINK_PKGSRCDIR.compositeproto?=	../../wip/compositeproto
.endif	# COMPOSITEPROTO_BUILDLINK3_MK

.include "../../wip/fixesproto/buildlink3.mk"
.include "../../wip/xproto/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
