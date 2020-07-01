	.section .text, "ax", "progbits"
	.align 4
	.section .text
	.align 4
	.globl _rv_rint
_rv_rint:
	addi sp,sp,-128
	sd s7,48(sp)
	sd s8,56(sp)
	sd s9,64(sp)
	sd s10,72(sp)
	sd s11,80(sp)
	fsd fs7,88(sp)
	fsd fs8,96(sp)
	fsd fs9,104(sp)
	fsd fs10,112(sp)
	fsd fs11,120(sp)
	fmv.x.d t1,fa0
	addi t2,zero,2047
	slli t2,t2,0x34
	li t3,0x1
	addi t4,zero,537
	slli t3,t3,0x34
	slli t4,t4,0x35
	addi s7,zero,1075
	sll s7,s7,52
	fmv.d.x fa7,s7
	and t2,t1,t2
	sub t3,t2,t3
	sltu t3,t3,t4
	fsgnj.d ft0,fa7,fa0
	nop
	beqz t3,L$60
	fadd.d fs1,fa0,ft0
	fsub.d fa7,fs1,ft0
	nop
	fmv.d fa0,fa7
	addi sp,sp,128
	ld s7,0(sp)
	ld s8,8(sp)
	ld s9,16(sp)
	ld s10,24(sp)
	ld s11,32(sp)
	fld fs7,40(sp)
	fld fs8,48(sp)
	fld fs9,56(sp)
	fld fs10,64(sp)
	fld fs11,72(sp)
	ret
	nop
	nop
	nop
L$60:
	addi t5,zero,-1
	fmv.d fa7,fa0
	srli t5,t5,0xc
	and t1,t1,t5
	sd s8,0(sp)
	li s8,0
	sub t1,t1,s8
	seqz t1,t1
	ld s8,0(sp)
	or t1,t2,t1
	beqz t1,L$90
	nop
	fmv.d fa0,fa7
	addi sp,sp,128
	ld s7,0(sp)
	ld s8,8(sp)
	ld s9,16(sp)
	ld s10,24(sp)
	ld s11,32(sp)
	fld fs7,40(sp)
	fld fs8,48(sp)
	fld fs9,56(sp)
	fld fs10,64(sp)
	fld fs11,72(sp)
	ret
	nop
	nop
	nop
L$90:
	addi s7,zero,1021
	sll s7,s7,52
	fmv.d.x fs2,s7
	fsgnj.d fs3,fs2,fa0
	nop
	fadd.d fs4,fs3,ft0
	fsub.d fa7,fs4,ft0
	fmv.d fa0,fa7
	addi sp,sp,128
	ld s7,0(sp)
	ld s8,8(sp)
	ld s9,16(sp)
	ld s10,24(sp)
	ld s11,32(sp)
	fld fs7,40(sp)
	fld fs8,48(sp)
	fld fs9,56(sp)
	fld fs10,64(sp)
	fld fs11,72(sp)
	ret
