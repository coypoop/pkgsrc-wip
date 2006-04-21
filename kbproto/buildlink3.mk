# $NetBSD: buildlink3.mk,v 1.4 2006/04/21 15:21:45 jeremy-c-reed Exp $

BUILDLINK_DEPMETHOD.kbproto?=	build

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
KBPROTO_BUILDLINK3_MK:=	${KBPROTO_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	kbproto
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nkbproto}
BUILDLINK_PACKAGES+=	kbproto

.if !empty(KBPROTO_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.kbproto+=	kbproto>=1.0.2
BUILDLINK_PKGSRCDIR.kbproto?=	../../wip/kbproto
.endif	# KBPROTO_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
