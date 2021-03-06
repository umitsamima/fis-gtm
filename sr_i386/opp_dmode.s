#################################################################
#								#
#	Copyright 2001 Sanchez Computer Associates, Inc.	#
#								#
#	This source code contains the intellectual property	#
#	of its copyright holder(s), and is made available	#
#	under a license.  If you do not know the terms of	#
#	the license, please stop and do not read further.	#
#								#
#################################################################

#	PAGE	,132
	.title	opp_dmode.s

#	.386
#	.MODEL	FLAT, C

.include "linkage.si"
	.INCLUDE	"g_msf.si"

	.sbttl	opp_dmode
#	PAGE	+
	.DATA
.extern	frame_pointer

	.text
.extern	op_dmode

# PUBLIC	opp_dmode
ENTRY opp_dmode
	putframe
	addl	$4,%esp
	call	op_dmode
	getframe
	ret
# opp_dmode ENDP

# END
