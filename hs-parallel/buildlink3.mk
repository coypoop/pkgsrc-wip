# $NetBSD: buildlink3.mk,v 1.1.1.1 2009/01/12 07:37:26 phonohawk Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
HS_PARALLEL_BUILDLINK3_MK:=	${HS_PARALLEL_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	hs-parallel
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nhs-parallel}
BUILDLINK_PACKAGES+=	hs-parallel
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}hs-parallel

.if ${HS_PARALLEL_BUILDLINK3_MK} == "+"
BUILDLINK_DEPMETHOD.hs-parallel?=	build
BUILDLINK_API_DEPENDS.hs-parallel+=	hs-parallel>=1.1.0.0
BUILDLINK_PKGSRCDIR.hs-parallel?=	../../wip/hs-parallel
.endif	# HS_PARALLEL_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
