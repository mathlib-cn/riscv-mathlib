	.section .text, "ax", "progbits"
	.align 4
	.section .text
	.globl _rv_ceil
_rv_ceil:
	addi sp,sp,-128
	sd s7,48(sp)
	sd s8,56(sp)
	sd s9,64(sp)
	fmv.x.d t0,fa0
	li t1,2047
	slli t1,t1,0x34
	li t2,0x1
	li t3,537
	li a6,1075
	slli t2,t2,0x34
	slli t3,t3,0x35
	slli a6,a6,0x34
	and t1,t0,t1
	li a5,1023
	sub t2,t1,t2
	sltu t2,t2,t3
	slli a5,a5,0x34
	beqz t2,L$1
	fmv.d.x fa7,a6
	fsgnj.d ft0,fa7,fa0
	fadd.d fs1,fa0,ft0
	fsub.d fa7,fs1,ft0
	sd s8,0(sp)
	flt.d s8,fa7,fa0
	beqz s8,TYPH_1
	li s8,0x4000000000000000
	fmv.d.x fa0,s8
	j TYPH_2
TYPH_1:	fmv.d.x fa0,s8
TYPH_2:	ld s8,0(sp)
	sd s8,0(sp)
	fld ft8,8(sp)
	fsub.d ft8,ft8,ft8
	feq.d s8,fa0,ft8
	bnez s8,L$2
	ld s8,0(sp)
	fld ft8,8(sp)
	nop
	fmv.d.x fs2,a5
	fadd.d fa7,fa7,fs2
	fmv.d fa0,fa7
	addi sp,sp,128
	ld s7,-80(sp)
	ld s8,-72(sp)
	ld s9,-64(sp)
	ret
	nop
L$1:
	bnez t1,L$3
	srli t4,t0,0x3f
	fld ft8,0(sp)
	fsub.d ft8,ft8,ft8
	fmv.d fa7,ft8
	fld ft8,0(sp)
	nop
	andi t4,t4,0x1
	beqz t4,L$4
	fmv.d fa0,fa7
	addi sp,sp,128
	ld s7,-80(sp)
	ld s8,-72(sp)
	ld s9,-64(sp)
	ret
L$4:
	fmv.d.x fs3,a5
	li t5,-1
	srli t5,t5,0xc
	nop
	and t0,t0,t5
	beqz t0,L$3
	fmv.d fa0,fs3
L$3:
	fmv.d fa7,fa0
L$2:
	fmv.d fa0,fa7
	addi sp,sp,128
	ld s7,-80(sp)
	ld s8,-72(sp)
	ld s9,-64(sp)
	ret
