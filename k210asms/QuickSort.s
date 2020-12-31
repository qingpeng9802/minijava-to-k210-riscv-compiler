.text

.align 1
.globl main
main:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 72
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s3, -24(fp)
  sd s4, -32(fp)
  sd s5, -40(fp)
  sd s6, -48(fp)
  sd s1, -56(fp)
  sd s2, -64(fp)
  li s1, 24
  mv a0, s1
  addi sp, sp, -96
  sd a2, 0(sp)
  sd a3, 8(sp)
  sd a4, 16(sp)
  sd a5, 24(sp)
  sd a6, 32(sp)
  sd a7, 40(sp)
  sd t0, 48(sp)
  sd t1, 56(sp)
  sd t2, 64(sp)
  sd t3, 72(sp)
  sd t4, 80(sp)
  sd t5, 88(sp)
  jal .alloc
  ld a2, 0(sp)
  ld a3, 8(sp)
  ld a4, 16(sp)
  ld a5, 24(sp)
  ld a6, 32(sp)
  ld a7, 40(sp)
  ld t0, 48(sp)
  ld t1, 56(sp)
  ld t2, 64(sp)
  ld t3, 72(sp)
  ld t4, 80(sp)
  ld t5, 88(sp)
  addi sp, sp, 96
  mv s2, a0
  li s1, 32
  mv a0, s1
  addi sp, sp, -96
  sd a2, 0(sp)
  sd a3, 8(sp)
  sd a4, 16(sp)
  sd a5, 24(sp)
  sd a6, 32(sp)
  sd a7, 40(sp)
  sd t0, 48(sp)
  sd t1, 56(sp)
  sd t2, 64(sp)
  sd t3, 72(sp)
  sd t4, 80(sp)
  sd t5, 88(sp)
  jal .alloc
  ld a2, 0(sp)
  ld a3, 8(sp)
  ld a4, 16(sp)
  ld a5, 24(sp)
  ld a6, 32(sp)
  ld a7, 40(sp)
  ld t0, 48(sp)
  ld t1, 56(sp)
  ld t2, 64(sp)
  ld t3, 72(sp)
  ld t4, 80(sp)
  ld t5, 88(sp)
  addi sp, sp, 96
  mv s3, a0
  la s1, QS_Print
  sd s1, 0(s3)
  la s1, QS_Sort
  sd s1, 8(s3)
  la s1, QS_Init
  sd s1, 16(s3)
  la s1, QS_Start
  sd s1, 24(s3)
  mv s1, s3
  sd s1, 0(s2)
  bnez s2, end_if0_ind0
  j l0_nullobjerr
end_if0_ind0:
  j l1_contobjptr
l0_nullobjerr:
l1_contobjptr:
  ld s4, 0(s2)
  bnez s4, end_if0_ind1
  j l2_nullmerr
end_if0_ind1:
  j l3_contmptr
l2_nullmerr:
l3_contmptr:
  ld s4, 24(s4)
  li s5, 10
  mv a2, s2
  mv a3, s5
  jalr s4
  mv s6 , a0
  mv a1, s6
  addi sp, sp, -96
  sd a2, 0(sp)
  sd a3, 8(sp)
  sd a4, 16(sp)
  sd a5, 24(sp)
  sd a6, 32(sp)
  sd a7, 40(sp)
  sd t0, 48(sp)
  sd t1, 56(sp)
  sd t2, 64(sp)
  sd t3, 72(sp)
  sd t4, 80(sp)
  sd t5, 88(sp)
  jal .print_int
  ld a2, 0(sp)
  ld a3, 8(sp)
  ld a4, 16(sp)
  ld a5, 24(sp)
  ld a6, 32(sp)
  ld a7, 40(sp)
  ld t0, 48(sp)
  ld t1, 56(sp)
  ld t2, 64(sp)
  ld t3, 72(sp)
  ld t4, 80(sp)
  ld t5, 88(sp)
  addi sp, sp, 96
  sd s7, -72(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s1, -56(fp)
  ld s2, -64(fp)
  ld a0, -72(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 72

.inf_loop:
  j .inf_loop
  jr ra

.align 1
.globl QS_Start
QS_Start:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 168
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s3, -24(fp)
  sd s4, -32(fp)
  sd s5, -40(fp)
  sd s6, -48(fp)
  sd s7, -56(fp)
  sd s8, -64(fp)
  sd s9, -72(fp)
  sd s1, -80(fp)
  sd s2, -88(fp)
  bnez a2, end_if0_ind2
  j l4_nullobjerr
end_if0_ind2:
  j l5_contobjptr
l4_nullobjerr:
l5_contobjptr:
  ld s8, 0(a2)
  bnez s8, end_if0_ind3
  j l6_nullmerr
end_if0_ind3:
  j l7_contmptr
l6_nullmerr:
l7_contmptr:
  ld s8, 16(s8)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a2
  mv a3, a3
  jalr s8
  mv s9 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  mv t0, s9
  bnez a2, end_if0_ind4
  j l8_nullobjerr
end_if0_ind4:
  j l9_contobjptr
l8_nullobjerr:
l9_contobjptr:
  ld t1, 0(a2)
  bnez t1, end_if0_ind5
  j l10_nullmerr
end_if0_ind5:
  j l11_contmptr
l10_nullmerr:
l11_contmptr:
  ld t1, 0(t1)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t3, -160(fp)
  mv a2, a2
  jalr t1
  mv t2 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t3, -160(fp)
  mv t0, t2
  li t3, 9999
  mv a1, t3
  addi sp, sp, -96
  sd a2, 0(sp)
  sd a3, 8(sp)
  sd a4, 16(sp)
  sd a5, 24(sp)
  sd a6, 32(sp)
  sd a7, 40(sp)
  sd t0, 48(sp)
  sd t1, 56(sp)
  sd t2, 64(sp)
  sd t3, 72(sp)
  sd t4, 80(sp)
  sd t5, 88(sp)
  jal .print_int
  ld a2, 0(sp)
  ld a3, 8(sp)
  ld a4, 16(sp)
  ld a5, 24(sp)
  ld a6, 32(sp)
  ld a7, 40(sp)
  ld t0, 48(sp)
  ld t1, 56(sp)
  ld t2, 64(sp)
  ld t3, 72(sp)
  ld t4, 80(sp)
  ld t5, 88(sp)
  addi sp, sp, 96
  bnez a2, end_if0_ind6
  j l12_nullobjerr
end_if0_ind6:
  j l13_contobjptr
l12_nullobjerr:
l13_contobjptr:
  ld t4, 16(a2)
  li t5, 1
  sub s3, t4, t5
  mv t0, s3
  bnez a2, end_if0_ind7
  j l14_nullobjerr
end_if0_ind7:
  j l15_contobjptr
l14_nullobjerr:
l15_contobjptr:
  ld s1, 0(a2)
  bnez s1, end_if0_ind8
  j l16_nullmerr
end_if0_ind8:
  j l17_contmptr
l16_nullmerr:
l17_contmptr:
  ld s1, 8(s1)
  li s2, 0
  sd a2, -104(fp)
  sd t0, -136(fp)
  mv a2, a2
  mv a3, s2
  mv a4, t0
  jalr s1
  mv s4 , a0
  ld a2, -104(fp)
  ld t0, -136(fp)
  mv t0, s4
  bnez a2, end_if0_ind9
  j l18_nullobjerr
end_if0_ind9:
  j l19_contobjptr
l18_nullobjerr:
l19_contobjptr:
  ld s5, 0(a2)
  bnez s5, end_if0_ind10
  j l20_nullmerr
end_if0_ind10:
  j l21_contmptr
l20_nullmerr:
l21_contmptr:
  ld s5, 0(s5)
  sd t0, -136(fp)
  mv a2, a2
  jalr s5
  mv s6 , a0
  ld t0, -136(fp)
  mv t0, s6
  li s7, 0
  sd s7, -168(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -168(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 168

  jr ra

.align 1
.globl QS_Sort
QS_Sort:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 1152
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s3, -24(fp)
  sd s4, -32(fp)
  sd s5, -40(fp)
  sd s6, -48(fp)
  sd s7, -56(fp)
  sd s8, -64(fp)
  sd s9, -72(fp)
  sd s1, -80(fp)
  sd s2, -88(fp)
  li s8, 0
  mv s9, s8
  slt t1, a3, a4
  bnez t1, end_if0_ind11
  j l22_else
end_if0_ind11:
  bnez a2, end_if0_ind12
  j l24_nullobjerr
end_if0_ind12:
  j l25_contobjptr
l24_nullobjerr:
l25_contobjptr:
  ld t2, 8(a2)
  bnez t2, end_if0_ind13
  j l26_nullarrerr
end_if0_ind13:
  j l27_contarrptr
l26_nullarrerr:
l27_contarrptr:
  ld t3, 0(t2)
  li t4, 1
  add t4, t4, a4
  slt t5, t3, t4
  bnez t5, end_if0_ind14
  j l28_endbc1
end_if0_ind14:
l28_endbc1:
  li s3, 0
  slt t5, a4, s3
  bnez t5, end_if0_ind15
  j l29_endbc2
end_if0_ind15:
l29_endbc2:
  li t0, 1
  add s1, a4, t0
  li t0, 8
  mul s1, s1, t0
  add s2, t2, s1
  ld s4, 0(s2)
  mv s5, s4
  li s6, 1
  sub s7, a3, s6
  mv s10, s7
  sd s10, -96(fp)
  mv s10, a4
  sd s10, -104(fp)
  li s10, 1
  sd s10, -112(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -120(fp)
l30_startwhile:
  ld s11, -120(fp)
  bnez s11, end_if0_ind16
  j l31_endwhile
end_if0_ind16:
  li s10, 1
  sd s10, -128(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -136(fp)
l32_startwhile:
  ld s11, -136(fp)
  bnez s11, end_if0_ind17
  j l33_endwhile
end_if0_ind17:
  li s10, 1
  sd s10, -144(fp)
  ld s10, -96(fp)
  ld s11, -144(fp)
  add s10, s10, s11
  sd s10, -152(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -96(fp)
  bnez a2, end_if0_ind18
  j l34_nullobjerr
end_if0_ind18:
  j l35_contobjptr
l34_nullobjerr:
l35_contobjptr:
  ld s10, 8(a2)
  sd s10, -160(fp)
  ld s11, -160(fp)
  bnez s11, end_if0_ind19
  j l36_nullarrerr
end_if0_ind19:
  j l37_contarrptr
l36_nullarrerr:
l37_contarrptr:
  ld s11, -160(fp)
  ld s10, 0(s11)
  sd s10, -168(fp)
  li s10, 1
  sd s10, -176(fp)
  ld s11, -96(fp)
  add s10, s10, s11
  sd s10, -176(fp)
  ld s10, -168(fp)
  ld s11, -176(fp)
  slt s11, s10, s11
  sd s11, -184(fp)
  ld s11, -184(fp)
  bnez s11, end_if0_ind20
  j l38_endbc1
end_if0_ind20:
l38_endbc1:
  li s10, 0
  sd s10, -192(fp)
  ld s10, -96(fp)
  ld s11, -192(fp)
  slt s11, s10, s11
  sd s11, -184(fp)
  ld s11, -184(fp)
  bnez s11, end_if0_ind21
  j l39_endbc2
end_if0_ind21:
l39_endbc2:
  li s10, 1
  sd s10, -200(fp)
  ld s10, -96(fp)
  ld s11, -200(fp)
  add s10, s10, s11
  sd s10, -208(fp)
  mv s10, s11
  li s10, 8
  sd s10, -200(fp)
  ld s10, -208(fp)
  ld s11, -200(fp)
  mul s10, s10, s11
  sd s10, -208(fp)
  ld s10, -160(fp)
  ld s11, -208(fp)
  add s10, s10, s11
  sd s10, -216(fp)
  mv s11, s10
  ld s10, 0(s11)
  sd s10, -224(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -232(fp)
  slt s11, s10, s5
  sd s11, -240(fp)
  ld s11, -240(fp)
  bnez s11, end_if0_ind22
  j l40_elseneg
end_if0_ind22:
  li s10, 0
  sd s10, -248(fp)
  j l41_endneg
l40_elseneg:
  li s10, 1
  sd s10, -248(fp)
  j l41_endneg
l41_endneg:
  ld s11, -248(fp)
  bnez s11, end_if0_ind23
  j l42_else
end_if0_ind23:
  li s10, 0
  sd s10, -256(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -136(fp)
  j l43_endif
l42_else:
  li s10, 1
  sd s10, -264(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -136(fp)
  j l43_endif
l43_endif:
  j l32_startwhile
l33_endwhile:
  li s10, 1
  sd s10, -272(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -136(fp)
l44_startwhile:
  ld s11, -136(fp)
  bnez s11, end_if0_ind24
  j l45_endwhile
end_if0_ind24:
  li s10, 1
  sd s10, -280(fp)
  ld s10, -104(fp)
  ld s11, -280(fp)
  sub s11, s10, s11
  sd s11, -288(fp)
  mv s10, s11
  sd s10, -104(fp)
  bnez a2, end_if0_ind25
  j l46_nullobjerr
end_if0_ind25:
  j l47_contobjptr
l46_nullobjerr:
l47_contobjptr:
  ld s10, 8(a2)
  sd s10, -296(fp)
  ld s11, -296(fp)
  bnez s11, end_if0_ind26
  j l48_nullarrerr
end_if0_ind26:
  j l49_contarrptr
l48_nullarrerr:
l49_contarrptr:
  ld s11, -296(fp)
  ld s10, 0(s11)
  sd s10, -304(fp)
  li s10, 1
  sd s10, -312(fp)
  ld s11, -104(fp)
  add s10, s10, s11
  sd s10, -312(fp)
  ld s10, -304(fp)
  ld s11, -312(fp)
  slt s11, s10, s11
  sd s11, -320(fp)
  ld s11, -320(fp)
  bnez s11, end_if0_ind27
  j l50_endbc1
end_if0_ind27:
l50_endbc1:
  li s10, 0
  sd s10, -328(fp)
  ld s10, -104(fp)
  ld s11, -328(fp)
  slt s11, s10, s11
  sd s11, -320(fp)
  ld s11, -320(fp)
  bnez s11, end_if0_ind28
  j l51_endbc2
end_if0_ind28:
l51_endbc2:
  li s10, 1
  sd s10, -336(fp)
  ld s10, -104(fp)
  ld s11, -336(fp)
  add s10, s10, s11
  sd s10, -344(fp)
  mv s10, s11
  li s10, 8
  sd s10, -336(fp)
  ld s10, -344(fp)
  ld s11, -336(fp)
  mul s10, s10, s11
  sd s10, -344(fp)
  ld s10, -296(fp)
  ld s11, -344(fp)
  add s10, s10, s11
  sd s10, -352(fp)
  mv s11, s10
  ld s10, 0(s11)
  sd s10, -360(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -232(fp)
  mv s11, s10
  slt s11, s5, s11
  sd s11, -368(fp)
  ld s11, -368(fp)
  bnez s11, end_if0_ind29
  j l52_elseneg
end_if0_ind29:
  li s10, 0
  sd s10, -376(fp)
  j l53_endneg
l52_elseneg:
  li s10, 1
  sd s10, -376(fp)
  j l53_endneg
l53_endneg:
  ld s11, -376(fp)
  bnez s11, end_if0_ind30
  j l54_else
end_if0_ind30:
  li s10, 0
  sd s10, -384(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -136(fp)
  j l55_endif
l54_else:
  li s10, 1
  sd s10, -392(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -136(fp)
  j l55_endif
l55_endif:
  j l44_startwhile
l45_endwhile:
  bnez a2, end_if0_ind31
  j l56_nullobjerr
end_if0_ind31:
  j l57_contobjptr
l56_nullobjerr:
l57_contobjptr:
  ld s10, 8(a2)
  sd s10, -400(fp)
  ld s11, -400(fp)
  bnez s11, end_if0_ind32
  j l58_nullarrerr
end_if0_ind32:
  j l59_contarrptr
l58_nullarrerr:
l59_contarrptr:
  ld s11, -400(fp)
  ld s10, 0(s11)
  sd s10, -408(fp)
  li s10, 1
  sd s10, -416(fp)
  ld s11, -96(fp)
  add s10, s10, s11
  sd s10, -416(fp)
  ld s10, -408(fp)
  ld s11, -416(fp)
  slt s11, s10, s11
  sd s11, -424(fp)
  ld s11, -424(fp)
  bnez s11, end_if0_ind33
  j l60_endbc1
end_if0_ind33:
l60_endbc1:
  li s10, 0
  sd s10, -432(fp)
  ld s10, -96(fp)
  ld s11, -432(fp)
  slt s11, s10, s11
  sd s11, -424(fp)
  ld s11, -424(fp)
  bnez s11, end_if0_ind34
  j l61_endbc2
end_if0_ind34:
l61_endbc2:
  li s10, 1
  sd s10, -440(fp)
  ld s10, -96(fp)
  ld s11, -440(fp)
  add s10, s10, s11
  sd s10, -448(fp)
  mv s10, s11
  li s10, 8
  sd s10, -440(fp)
  ld s10, -448(fp)
  ld s11, -440(fp)
  mul s10, s10, s11
  sd s10, -448(fp)
  ld s10, -400(fp)
  ld s11, -448(fp)
  add s10, s10, s11
  sd s10, -456(fp)
  mv s11, s10
  ld s10, 0(s11)
  sd s10, -464(fp)
  mv s11, s10
  mv s9, s11
  bnez a2, end_if0_ind35
  j l62_nullobjerr
end_if0_ind35:
  j l63_contobjptr
l62_nullobjerr:
l63_contobjptr:
  ld s10, 8(a2)
  sd s10, -472(fp)
  bnez a2, end_if0_ind36
  j l64_nullobjerr
end_if0_ind36:
  j l65_contobjptr
l64_nullobjerr:
l65_contobjptr:
  ld s10, 8(a2)
  sd s10, -480(fp)
  ld s11, -480(fp)
  bnez s11, end_if0_ind37
  j l66_nullarrerr
end_if0_ind37:
  j l67_contarrptr
l66_nullarrerr:
l67_contarrptr:
  ld s11, -480(fp)
  ld s10, 0(s11)
  sd s10, -488(fp)
  li s10, 1
  sd s10, -496(fp)
  ld s11, -104(fp)
  add s10, s10, s11
  sd s10, -496(fp)
  ld s10, -488(fp)
  ld s11, -496(fp)
  slt s11, s10, s11
  sd s11, -504(fp)
  ld s11, -504(fp)
  bnez s11, end_if0_ind38
  j l68_endbc1
end_if0_ind38:
l68_endbc1:
  li s10, 0
  sd s10, -512(fp)
  ld s10, -104(fp)
  ld s11, -512(fp)
  slt s11, s10, s11
  sd s11, -504(fp)
  ld s11, -504(fp)
  bnez s11, end_if0_ind39
  j l69_endbc2
end_if0_ind39:
l69_endbc2:
  li s10, 1
  sd s10, -520(fp)
  ld s10, -104(fp)
  ld s11, -520(fp)
  add s10, s10, s11
  sd s10, -528(fp)
  mv s10, s11
  li s10, 8
  sd s10, -520(fp)
  ld s10, -528(fp)
  ld s11, -520(fp)
  mul s10, s10, s11
  sd s10, -528(fp)
  ld s10, -480(fp)
  ld s11, -528(fp)
  add s10, s10, s11
  sd s10, -536(fp)
  mv s11, s10
  ld s10, 0(s11)
  sd s10, -544(fp)
  ld s11, -472(fp)
  bnez s11, end_if0_ind40
  j l70_nullarrerr
end_if0_ind40:
  j l71_contarrptr
l70_nullarrerr:
l71_contarrptr:
  ld s11, -472(fp)
  ld s10, 0(s11)
  sd s10, -552(fp)
  li s10, 1
  sd s10, -560(fp)
  ld s11, -96(fp)
  add s10, s10, s11
  sd s10, -560(fp)
  ld s10, -552(fp)
  ld s11, -560(fp)
  slt s11, s10, s11
  sd s11, -568(fp)
  ld s11, -568(fp)
  bnez s11, end_if0_ind41
  j l72_endbc1
end_if0_ind41:
l72_endbc1:
  li s10, 0
  sd s10, -576(fp)
  ld s10, -96(fp)
  ld s11, -576(fp)
  slt s11, s10, s11
  sd s11, -568(fp)
  ld s11, -568(fp)
  bnez s11, end_if0_ind42
  j l73_endbc2
end_if0_ind42:
l73_endbc2:
  li s10, 1
  sd s10, -584(fp)
  ld s10, -96(fp)
  ld s11, -584(fp)
  add s10, s10, s11
  sd s10, -592(fp)
  mv s10, s11
  li s10, 8
  sd s10, -584(fp)
  ld s10, -592(fp)
  ld s11, -584(fp)
  mul s10, s10, s11
  sd s10, -592(fp)
  ld s10, -472(fp)
  ld s11, -592(fp)
  add s10, s10, s11
  sd s10, -600(fp)
  ld s11, -544(fp)
  sd s11, 0(s10)
  bnez a2, end_if0_ind43
  j l74_nullobjerr
end_if0_ind43:
  j l75_contobjptr
l74_nullobjerr:
l75_contobjptr:
  ld s10, 8(a2)
  sd s10, -608(fp)
  ld s11, -608(fp)
  bnez s11, end_if0_ind44
  j l76_nullarrerr
end_if0_ind44:
  j l77_contarrptr
l76_nullarrerr:
l77_contarrptr:
  ld s11, -608(fp)
  ld s10, 0(s11)
  sd s10, -616(fp)
  li s10, 1
  sd s10, -624(fp)
  ld s11, -104(fp)
  add s10, s10, s11
  sd s10, -624(fp)
  ld s10, -616(fp)
  ld s11, -624(fp)
  slt s11, s10, s11
  sd s11, -632(fp)
  ld s11, -632(fp)
  bnez s11, end_if0_ind45
  j l78_endbc1
end_if0_ind45:
l78_endbc1:
  li s10, 0
  sd s10, -640(fp)
  ld s10, -104(fp)
  ld s11, -640(fp)
  slt s11, s10, s11
  sd s11, -632(fp)
  ld s11, -632(fp)
  bnez s11, end_if0_ind46
  j l79_endbc2
end_if0_ind46:
l79_endbc2:
  li s10, 1
  sd s10, -648(fp)
  ld s10, -104(fp)
  ld s11, -648(fp)
  add s10, s10, s11
  sd s10, -656(fp)
  mv s10, s11
  li s10, 8
  sd s10, -648(fp)
  ld s10, -656(fp)
  ld s11, -648(fp)
  mul s10, s10, s11
  sd s10, -656(fp)
  ld s10, -608(fp)
  ld s11, -656(fp)
  add s10, s10, s11
  sd s10, -664(fp)
  sd s9, 0(s10)
  li s10, 1
  sd s10, -672(fp)
  ld s10, -96(fp)
  ld s11, -672(fp)
  add s10, s10, s11
  sd s10, -680(fp)
  ld s10, -104(fp)
  ld s11, -680(fp)
  slt s11, s10, s11
  sd s11, -688(fp)
  ld s11, -688(fp)
  bnez s11, end_if0_ind47
  j l80_else
end_if0_ind47:
  li s10, 0
  sd s10, -696(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -120(fp)
  j l81_endif
l80_else:
  li s10, 1
  sd s10, -704(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -120(fp)
  j l81_endif
l81_endif:
  j l30_startwhile
l31_endwhile:
  bnez a2, end_if0_ind48
  j l82_nullobjerr
end_if0_ind48:
  j l83_contobjptr
l82_nullobjerr:
l83_contobjptr:
  ld s10, 8(a2)
  sd s10, -712(fp)
  bnez a2, end_if0_ind49
  j l84_nullobjerr
end_if0_ind49:
  j l85_contobjptr
l84_nullobjerr:
l85_contobjptr:
  ld s10, 8(a2)
  sd s10, -720(fp)
  ld s11, -720(fp)
  bnez s11, end_if0_ind50
  j l86_nullarrerr
end_if0_ind50:
  j l87_contarrptr
l86_nullarrerr:
l87_contarrptr:
  ld s11, -720(fp)
  ld s10, 0(s11)
  sd s10, -728(fp)
  li s10, 1
  sd s10, -736(fp)
  ld s11, -96(fp)
  add s10, s10, s11
  sd s10, -736(fp)
  ld s10, -728(fp)
  ld s11, -736(fp)
  slt s11, s10, s11
  sd s11, -744(fp)
  ld s11, -744(fp)
  bnez s11, end_if0_ind51
  j l88_endbc1
end_if0_ind51:
l88_endbc1:
  li s10, 0
  sd s10, -752(fp)
  ld s10, -96(fp)
  ld s11, -752(fp)
  slt s11, s10, s11
  sd s11, -744(fp)
  ld s11, -744(fp)
  bnez s11, end_if0_ind52
  j l89_endbc2
end_if0_ind52:
l89_endbc2:
  li s10, 1
  sd s10, -760(fp)
  ld s10, -96(fp)
  ld s11, -760(fp)
  add s10, s10, s11
  sd s10, -768(fp)
  mv s10, s11
  li s10, 8
  sd s10, -760(fp)
  ld s10, -768(fp)
  ld s11, -760(fp)
  mul s10, s10, s11
  sd s10, -768(fp)
  ld s10, -720(fp)
  ld s11, -768(fp)
  add s10, s10, s11
  sd s10, -776(fp)
  mv s11, s10
  ld s10, 0(s11)
  sd s10, -784(fp)
  ld s11, -712(fp)
  bnez s11, end_if0_ind53
  j l90_nullarrerr
end_if0_ind53:
  j l91_contarrptr
l90_nullarrerr:
l91_contarrptr:
  ld s11, -712(fp)
  ld s10, 0(s11)
  sd s10, -792(fp)
  li s10, 1
  sd s10, -800(fp)
  ld s11, -104(fp)
  add s10, s10, s11
  sd s10, -800(fp)
  ld s10, -792(fp)
  ld s11, -800(fp)
  slt s11, s10, s11
  sd s11, -808(fp)
  ld s11, -808(fp)
  bnez s11, end_if0_ind54
  j l92_endbc1
end_if0_ind54:
l92_endbc1:
  li s10, 0
  sd s10, -816(fp)
  ld s10, -104(fp)
  ld s11, -816(fp)
  slt s11, s10, s11
  sd s11, -808(fp)
  ld s11, -808(fp)
  bnez s11, end_if0_ind55
  j l93_endbc2
end_if0_ind55:
l93_endbc2:
  li s10, 1
  sd s10, -824(fp)
  ld s10, -104(fp)
  ld s11, -824(fp)
  add s10, s10, s11
  sd s10, -832(fp)
  mv s10, s11
  li s10, 8
  sd s10, -824(fp)
  ld s10, -832(fp)
  ld s11, -824(fp)
  mul s10, s10, s11
  sd s10, -832(fp)
  ld s10, -712(fp)
  ld s11, -832(fp)
  add s10, s10, s11
  sd s10, -840(fp)
  ld s11, -784(fp)
  sd s11, 0(s10)
  bnez a2, end_if0_ind56
  j l94_nullobjerr
end_if0_ind56:
  j l95_contobjptr
l94_nullobjerr:
l95_contobjptr:
  ld s10, 8(a2)
  sd s10, -848(fp)
  bnez a2, end_if0_ind57
  j l96_nullobjerr
end_if0_ind57:
  j l97_contobjptr
l96_nullobjerr:
l97_contobjptr:
  ld s10, 8(a2)
  sd s10, -856(fp)
  ld s11, -856(fp)
  bnez s11, end_if0_ind58
  j l98_nullarrerr
end_if0_ind58:
  j l99_contarrptr
l98_nullarrerr:
l99_contarrptr:
  ld s11, -856(fp)
  ld s10, 0(s11)
  sd s10, -864(fp)
  li s10, 1
  sd s10, -872(fp)
  add s10, s10, a4
  sd s10, -872(fp)
  ld s10, -864(fp)
  ld s11, -872(fp)
  slt s11, s10, s11
  sd s11, -880(fp)
  ld s11, -880(fp)
  bnez s11, end_if0_ind59
  j l100_endbc1
end_if0_ind59:
l100_endbc1:
  li s10, 0
  sd s10, -888(fp)
  mv s11, s10
  slt s11, a4, s11
  sd s11, -880(fp)
  ld s11, -880(fp)
  bnez s11, end_if0_ind60
  j l101_endbc2
end_if0_ind60:
l101_endbc2:
  li s10, 1
  sd s10, -896(fp)
  mv s11, s10
  add s10, a4, s11
  sd s10, -904(fp)
  mv s10, s11
  li s10, 8
  sd s10, -896(fp)
  ld s10, -904(fp)
  ld s11, -896(fp)
  mul s10, s10, s11
  sd s10, -904(fp)
  ld s10, -856(fp)
  ld s11, -904(fp)
  add s10, s10, s11
  sd s10, -912(fp)
  mv s11, s10
  ld s10, 0(s11)
  sd s10, -920(fp)
  ld s11, -848(fp)
  bnez s11, end_if0_ind61
  j l102_nullarrerr
end_if0_ind61:
  j l103_contarrptr
l102_nullarrerr:
l103_contarrptr:
  ld s11, -848(fp)
  ld s10, 0(s11)
  sd s10, -928(fp)
  li s10, 1
  sd s10, -936(fp)
  ld s11, -96(fp)
  add s10, s10, s11
  sd s10, -936(fp)
  ld s10, -928(fp)
  ld s11, -936(fp)
  slt s11, s10, s11
  sd s11, -944(fp)
  ld s11, -944(fp)
  bnez s11, end_if0_ind62
  j l104_endbc1
end_if0_ind62:
l104_endbc1:
  li s10, 0
  sd s10, -952(fp)
  ld s10, -96(fp)
  ld s11, -952(fp)
  slt s11, s10, s11
  sd s11, -944(fp)
  ld s11, -944(fp)
  bnez s11, end_if0_ind63
  j l105_endbc2
end_if0_ind63:
l105_endbc2:
  li s10, 1
  sd s10, -960(fp)
  ld s10, -96(fp)
  ld s11, -960(fp)
  add s10, s10, s11
  sd s10, -968(fp)
  mv s10, s11
  li s10, 8
  sd s10, -960(fp)
  ld s10, -968(fp)
  ld s11, -960(fp)
  mul s10, s10, s11
  sd s10, -968(fp)
  ld s10, -848(fp)
  ld s11, -968(fp)
  add s10, s10, s11
  sd s10, -976(fp)
  ld s11, -920(fp)
  sd s11, 0(s10)
  bnez a2, end_if0_ind64
  j l106_nullobjerr
end_if0_ind64:
  j l107_contobjptr
l106_nullobjerr:
l107_contobjptr:
  ld s10, 8(a2)
  sd s10, -984(fp)
  ld s11, -984(fp)
  bnez s11, end_if0_ind65
  j l108_nullarrerr
end_if0_ind65:
  j l109_contarrptr
l108_nullarrerr:
l109_contarrptr:
  ld s11, -984(fp)
  ld s10, 0(s11)
  sd s10, -992(fp)
  li s10, 1
  sd s10, -1000(fp)
  add s10, s10, a4
  sd s10, -1000(fp)
  ld s10, -992(fp)
  ld s11, -1000(fp)
  slt s11, s10, s11
  sd s11, -1008(fp)
  ld s11, -1008(fp)
  bnez s11, end_if0_ind66
  j l110_endbc1
end_if0_ind66:
l110_endbc1:
  li s10, 0
  sd s10, -1016(fp)
  mv s11, s10
  slt s11, a4, s11
  sd s11, -1008(fp)
  ld s11, -1008(fp)
  bnez s11, end_if0_ind67
  j l111_endbc2
end_if0_ind67:
l111_endbc2:
  li s10, 1
  sd s10, -1024(fp)
  mv s11, s10
  add s10, a4, s11
  sd s10, -1032(fp)
  mv s10, s11
  li s10, 8
  sd s10, -1024(fp)
  ld s10, -1032(fp)
  ld s11, -1024(fp)
  mul s10, s10, s11
  sd s10, -1032(fp)
  ld s10, -984(fp)
  ld s11, -1032(fp)
  add s10, s10, s11
  sd s10, -1040(fp)
  sd s9, 0(s10)
  bnez a2, end_if0_ind68
  j l112_nullobjerr
end_if0_ind68:
  j l113_contobjptr
l112_nullobjerr:
l113_contobjptr:
  ld s10, 0(a2)
  sd s10, -1048(fp)
  ld s11, -1048(fp)
  bnez s11, end_if0_ind69
  j l114_nullmerr
end_if0_ind69:
  j l115_contmptr
l114_nullmerr:
l115_contmptr:
  ld s11, -1048(fp)
  ld s10, 8(s11)
  sd s10, -1048(fp)
  li s10, 1
  sd s10, -1056(fp)
  ld s10, -96(fp)
  ld s11, -1056(fp)
  sub s11, s10, s11
  sd s11, -1064(fp)
  sd a2, -1072(fp)
  sd a3, -1080(fp)
  sd a4, -1088(fp)
  ld s10, -1048(fp)
  mv a2, a2
  mv a3, a3
  ld a4, -1064(fp)
  jalr s10
  mv s11 , a0
  sd s11, -1096(fp)
  ld a2, -1072(fp)
  ld a3, -1080(fp)
  ld a4, -1088(fp)
  mv s10, s11
  sd s10, -1104(fp)
  bnez a2, end_if0_ind70
  j l116_nullobjerr
end_if0_ind70:
  j l117_contobjptr
l116_nullobjerr:
l117_contobjptr:
  ld s10, 0(a2)
  sd s10, -1112(fp)
  ld s11, -1112(fp)
  bnez s11, end_if0_ind71
  j l118_nullmerr
end_if0_ind71:
  j l119_contmptr
l118_nullmerr:
l119_contmptr:
  ld s11, -1112(fp)
  ld s10, 8(s11)
  sd s10, -1112(fp)
  li s10, 1
  sd s10, -1120(fp)
  ld s10, -96(fp)
  ld s11, -1120(fp)
  add s10, s10, s11
  sd s10, -1128(fp)
  ld s10, -1112(fp)
  mv a2, a2
  ld a3, -1128(fp)
  mv a4, a4
  jalr s10
  mv s11 , a0
  sd s11, -1136(fp)
  mv s10, s11
  sd s10, -1104(fp)
  j l23_endif
l22_else:
  li s10, 0
  sd s10, -1144(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -1104(fp)
  j l23_endif
l23_endif:
  li s10, 0
  sd s10, -1152(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -1152(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 1152

  jr ra

.align 1
.globl QS_Print
QS_Print:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 104
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s3, -24(fp)
  sd s4, -32(fp)
  sd s5, -40(fp)
  sd s6, -48(fp)
  sd s7, -56(fp)
  sd s8, -64(fp)
  sd s9, -72(fp)
  sd s1, -80(fp)
  sd s2, -88(fp)
  li s8, 0
  mv t1, s8
l120_startwhile:
  bnez a2, end_if0_ind72
  j l122_nullobjerr
end_if0_ind72:
  j l123_contobjptr
l122_nullobjerr:
l123_contobjptr:
  ld t0, 16(a2)
  slt s3, t1, t0
  bnez s3, end_if0_ind73
  j l121_endwhile
end_if0_ind73:
  bnez a2, end_if0_ind74
  j l124_nullobjerr
end_if0_ind74:
  j l125_contobjptr
l124_nullobjerr:
l125_contobjptr:
  ld t5, 8(a2)
  bnez t5, end_if0_ind75
  j l126_nullarrerr
end_if0_ind75:
  j l127_contarrptr
l126_nullarrerr:
l127_contarrptr:
  ld t4, 0(t5)
  li t2, 1
  add t2, t2, t1
  slt t3, t4, t2
  bnez t3, end_if0_ind76
  j l128_endbc1
end_if0_ind76:
l128_endbc1:
  li s10, 0
  sd s10, -96(fp)
  mv s11, s10
  slt t3, t1, s11
  bnez t3, end_if0_ind77
  j l129_endbc2
end_if0_ind77:
l129_endbc2:
  li s7, 1
  add s6, t1, s7
  li s7, 8
  mul s6, s6, s7
  add s5, t5, s6
  ld s9, 0(s5)
  mv a1, s9
  addi sp, sp, -96
  sd a2, 0(sp)
  sd a3, 8(sp)
  sd a4, 16(sp)
  sd a5, 24(sp)
  sd a6, 32(sp)
  sd a7, 40(sp)
  sd t0, 48(sp)
  sd t1, 56(sp)
  sd t2, 64(sp)
  sd t3, 72(sp)
  sd t4, 80(sp)
  sd t5, 88(sp)
  jal .print_int
  ld a2, 0(sp)
  ld a3, 8(sp)
  ld a4, 16(sp)
  ld a5, 24(sp)
  ld a6, 32(sp)
  ld a7, 40(sp)
  ld t0, 48(sp)
  ld t1, 56(sp)
  ld t2, 64(sp)
  ld t3, 72(sp)
  ld t4, 80(sp)
  ld t5, 88(sp)
  addi sp, sp, 96
  li s4, 1
  add s2, t1, s4
  mv t1, s2
  j l120_startwhile
l121_endwhile:
  li s1, 0
  sd s1, -104(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -104(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 104

  jr ra

.align 1
.globl QS_Init
QS_Init:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 96
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s3, -24(fp)
  sd s4, -32(fp)
  sd s5, -40(fp)
  sd s6, -48(fp)
  sd s7, -56(fp)
  sd s8, -64(fp)
  sd s9, -72(fp)
  sd s1, -80(fp)
  sd s2, -88(fp)
  bnez a2, end_if0_ind78
  j l130_nullobjerr
end_if0_ind78:
  j l131_contobjptr
l130_nullobjerr:
l131_contobjptr:
  ld s8, 16(a2)
  mv s8, a3
  sd s8, 16(a2)
  bnez a2, end_if0_ind79
  j l132_nullobjerr
end_if0_ind79:
  j l133_contobjptr
l132_nullobjerr:
l133_contobjptr:
  ld t1, 8(a2)
  li t2, 0
  slt t3, a3, t2
  bnez t3, end_if0_ind80
  j l134_endlen0
end_if0_ind80:
l134_endlen0:
  li t4, 1
  add t5, a3, t4
  li t4, 8
  mul t5, t5, t4
  mv a0, t5
  addi sp, sp, -96
  sd a2, 0(sp)
  sd a3, 8(sp)
  sd a4, 16(sp)
  sd a5, 24(sp)
  sd a6, 32(sp)
  sd a7, 40(sp)
  sd t0, 48(sp)
  sd t1, 56(sp)
  sd t2, 64(sp)
  sd t3, 72(sp)
  sd t4, 80(sp)
  sd t5, 88(sp)
  jal .alloc
  ld a2, 0(sp)
  ld a3, 8(sp)
  ld a4, 16(sp)
  ld a5, 24(sp)
  ld a6, 32(sp)
  ld a7, 40(sp)
  ld t0, 48(sp)
  ld t1, 56(sp)
  ld t2, 64(sp)
  ld t3, 72(sp)
  ld t4, 80(sp)
  ld t5, 88(sp)
  addi sp, sp, 96
  mv s3, a0
  sd a3, 0(s3)
  mv t1, s3
  sd t1, 8(a2)
  bnez a2, end_if0_ind81
  j l135_nullobjerr
end_if0_ind81:
  j l136_contobjptr
l135_nullobjerr:
l136_contobjptr:
  ld t0, 8(a2)
  li s2, 0
  li s4, 20
  bnez t0, end_if0_ind82
  j l137_nullarrerr
end_if0_ind82:
  j l138_contarrptr
l137_nullarrerr:
l138_contarrptr:
  ld s5, 0(t0)
  li s6, 1
  add s6, s6, s2
  slt s7, s5, s6
  bnez s7, end_if0_ind83
  j l139_endbc1
end_if0_ind83:
l139_endbc1:
  li s9, 0
  slt s7, s2, s9
  bnez s7, end_if0_ind84
  j l140_endbc2
end_if0_ind84:
l140_endbc2:
  li s1, 1
  add s8, s2, s1
  li s1, 8
  mul s8, s8, s1
  add t2, t0, s8
  sd s4, 0(t2)
  bnez a2, end_if0_ind85
  j l141_nullobjerr
end_if0_ind85:
  j l142_contobjptr
l141_nullobjerr:
l142_contobjptr:
  ld t3, 8(a2)
  li t4, 1
  li t5, 7
  bnez t3, end_if0_ind86
  j l143_nullarrerr
end_if0_ind86:
  j l144_contarrptr
l143_nullarrerr:
l144_contarrptr:
  ld s3, 0(t3)
  li t1, 1
  add t1, t1, t4
  slt s5, s3, t1
  bnez s5, end_if0_ind87
  j l145_endbc1
end_if0_ind87:
l145_endbc1:
  li s6, 0
  slt s5, t4, s6
  bnez s5, end_if0_ind88
  j l146_endbc2
end_if0_ind88:
l146_endbc2:
  li s9, 1
  add s7, t4, s9
  li s9, 8
  mul s7, s7, s9
  add s2, t3, s7
  sd t5, 0(s2)
  bnez a2, end_if0_ind89
  j l147_nullobjerr
end_if0_ind89:
  j l148_contobjptr
l147_nullobjerr:
l148_contobjptr:
  ld s1, 8(a2)
  li t0, 2
  li s8, 12
  bnez s1, end_if0_ind90
  j l149_nullarrerr
end_if0_ind90:
  j l150_contarrptr
l149_nullarrerr:
l150_contarrptr:
  ld s4, 0(s1)
  li t2, 1
  add t2, t2, t0
  slt s3, s4, t2
  bnez s3, end_if0_ind91
  j l151_endbc1
end_if0_ind91:
l151_endbc1:
  li t1, 0
  slt s3, t0, t1
  bnez s3, end_if0_ind92
  j l152_endbc2
end_if0_ind92:
l152_endbc2:
  li s6, 1
  add s5, t0, s6
  li s6, 8
  mul s5, s5, s6
  add t4, s1, s5
  sd s8, 0(t4)
  bnez a2, end_if0_ind93
  j l153_nullobjerr
end_if0_ind93:
  j l154_contobjptr
l153_nullobjerr:
l154_contobjptr:
  ld s9, 8(a2)
  li t3, 3
  li s7, 18
  bnez s9, end_if0_ind94
  j l155_nullarrerr
end_if0_ind94:
  j l156_contarrptr
l155_nullarrerr:
l156_contarrptr:
  ld t5, 0(s9)
  li s2, 1
  add s2, s2, t3
  slt s4, t5, s2
  bnez s4, end_if0_ind95
  j l157_endbc1
end_if0_ind95:
l157_endbc1:
  li t2, 0
  slt s4, t3, t2
  bnez s4, end_if0_ind96
  j l158_endbc2
end_if0_ind96:
l158_endbc2:
  li t1, 1
  add s3, t3, t1
  li t1, 8
  mul s3, s3, t1
  add t0, s9, s3
  sd s7, 0(t0)
  bnez a2, end_if0_ind97
  j l159_nullobjerr
end_if0_ind97:
  j l160_contobjptr
l159_nullobjerr:
l160_contobjptr:
  ld s6, 8(a2)
  li s1, 4
  li s5, 2
  bnez s6, end_if0_ind98
  j l161_nullarrerr
end_if0_ind98:
  j l162_contarrptr
l161_nullarrerr:
l162_contarrptr:
  ld s8, 0(s6)
  li t4, 1
  add t4, t4, s1
  slt t5, s8, t4
  bnez t5, end_if0_ind99
  j l163_endbc1
end_if0_ind99:
l163_endbc1:
  li s2, 0
  slt t5, s1, s2
  bnez t5, end_if0_ind100
  j l164_endbc2
end_if0_ind100:
l164_endbc2:
  li t2, 1
  add s4, s1, t2
  li t2, 8
  mul s4, s4, t2
  add t3, s6, s4
  sd s5, 0(t3)
  bnez a2, end_if0_ind101
  j l165_nullobjerr
end_if0_ind101:
  j l166_contobjptr
l165_nullobjerr:
l166_contobjptr:
  ld t1, 8(a2)
  li s9, 5
  li s3, 11
  bnez t1, end_if0_ind102
  j l167_nullarrerr
end_if0_ind102:
  j l168_contarrptr
l167_nullarrerr:
l168_contarrptr:
  ld s7, 0(t1)
  li t0, 1
  add t0, t0, s9
  slt s8, s7, t0
  bnez s8, end_if0_ind103
  j l169_endbc1
end_if0_ind103:
l169_endbc1:
  li t4, 0
  slt s8, s9, t4
  bnez s8, end_if0_ind104
  j l170_endbc2
end_if0_ind104:
l170_endbc2:
  li s2, 1
  add t5, s9, s2
  li s2, 8
  mul t5, t5, s2
  add s1, t1, t5
  sd s3, 0(s1)
  bnez a2, end_if0_ind105
  j l171_nullobjerr
end_if0_ind105:
  j l172_contobjptr
l171_nullobjerr:
l172_contobjptr:
  ld t2, 8(a2)
  li s6, 6
  li s4, 6
  bnez t2, end_if0_ind106
  j l173_nullarrerr
end_if0_ind106:
  j l174_contarrptr
l173_nullarrerr:
l174_contarrptr:
  ld s5, 0(t2)
  li t3, 1
  add t3, t3, s6
  slt s7, s5, t3
  bnez s7, end_if0_ind107
  j l175_endbc1
end_if0_ind107:
l175_endbc1:
  li t0, 0
  slt s7, s6, t0
  bnez s7, end_if0_ind108
  j l176_endbc2
end_if0_ind108:
l176_endbc2:
  li t4, 1
  add s8, s6, t4
  li t4, 8
  mul s8, s8, t4
  add s9, t2, s8
  sd s4, 0(s9)
  bnez a2, end_if0_ind109
  j l177_nullobjerr
end_if0_ind109:
  j l178_contobjptr
l177_nullobjerr:
l178_contobjptr:
  ld s2, 8(a2)
  li t1, 7
  li t5, 9
  bnez s2, end_if0_ind110
  j l179_nullarrerr
end_if0_ind110:
  j l180_contarrptr
l179_nullarrerr:
l180_contarrptr:
  ld s3, 0(s2)
  li s1, 1
  add s1, s1, t1
  slt s5, s3, s1
  bnez s5, end_if0_ind111
  j l181_endbc1
end_if0_ind111:
l181_endbc1:
  li t3, 0
  slt s5, t1, t3
  bnez s5, end_if0_ind112
  j l182_endbc2
end_if0_ind112:
l182_endbc2:
  li t0, 1
  add s7, t1, t0
  li t0, 8
  mul s7, s7, t0
  add s6, s2, s7
  sd t5, 0(s6)
  bnez a2, end_if0_ind113
  j l183_nullobjerr
end_if0_ind113:
  j l184_contobjptr
l183_nullobjerr:
l184_contobjptr:
  ld t4, 8(a2)
  li t2, 8
  li s8, 19
  bnez t4, end_if0_ind114
  j l185_nullarrerr
end_if0_ind114:
  j l186_contarrptr
l185_nullarrerr:
l186_contarrptr:
  ld s4, 0(t4)
  li s9, 1
  add s9, s9, t2
  slt s3, s4, s9
  bnez s3, end_if0_ind115
  j l187_endbc1
end_if0_ind115:
l187_endbc1:
  li s1, 0
  slt s3, t2, s1
  bnez s3, end_if0_ind116
  j l188_endbc2
end_if0_ind116:
l188_endbc2:
  li t3, 1
  add s5, t2, t3
  li t3, 8
  mul s5, s5, t3
  add t1, t4, s5
  sd s8, 0(t1)
  bnez a2, end_if0_ind117
  j l189_nullobjerr
end_if0_ind117:
  j l190_contobjptr
l189_nullobjerr:
l190_contobjptr:
  ld t0, 8(a2)
  li s2, 9
  li s7, 5
  bnez t0, end_if0_ind118
  j l191_nullarrerr
end_if0_ind118:
  j l192_contarrptr
l191_nullarrerr:
l192_contarrptr:
  ld t5, 0(t0)
  li s6, 1
  add s6, s6, s2
  slt s4, t5, s6
  bnez s4, end_if0_ind119
  j l193_endbc1
end_if0_ind119:
l193_endbc1:
  li s9, 0
  slt s4, s2, s9
  bnez s4, end_if0_ind120
  j l194_endbc2
end_if0_ind120:
l194_endbc2:
  li s1, 1
  add s3, s2, s1
  li s1, 8
  mul s3, s3, s1
  add t2, t0, s3
  sd s7, 0(t2)
  li t3, 0
  sd t3, -96(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -96(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 96

  jr ra

.align 1
.globl .print_int
# need save a0, a1 before call
# a1: num -> void
.print_int:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  addi sp, sp, -16
  sd ra, -8(fp)
  la a0, .rep_int
  call printf
  ld t6, _impure_ptr
  ld t6, 16(a7)
  mv a0, t6
  call fflush
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 16
  jr ra

.align 1
.globl .alloc
# need save a0, a1 before call
# a0: num -> a0: pointer
.alloc:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  addi sp, sp, -16
  sd ra, -8(fp)
  # int size is 4, but we are in 64-bit, use 8
  li a1, 8
  call calloc
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 16
  jr ra

.section .rodata
.rep_int:
  .string "%d\n"
  .align 3

