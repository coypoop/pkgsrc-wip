# $NetBSD: buildlink3.mk,v 1.1 2004/04/12 02:43:56 blef Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
SVGALIB_BUILDLINK3_MK:=	${SVGALIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	svgalib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nsvgalib}
BUILDLINK_PACKAGES+=	svgalib

.if !empty(SVGALIB_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.svgalib+=	svgalib>=1.4.2
BUILDLINK_PKGSRCDIR.svgalib?=	../../wip/svgalib
.endif	# SVGALIB_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
