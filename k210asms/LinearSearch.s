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
  la s1, LS_Print
  sd s1, 0(s3)
  la s1, LS_Search
  sd s1, 8(s3)
  la s1, LS_Init
  sd s1, 16(s3)
  la s1, LS_Start
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
.globl LS_Start
LS_Start:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 160
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
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a2
  mv a3, a3
  jalr s8
  mv s9 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
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
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t3, -152(fp)
  mv a2, a2
  jalr t1
  mv t2 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t3, -152(fp)
  mv t3, t2
  li t4, 9999
  mv a1, t4
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
  ld t5, 0(a2)
  bnez t5, end_if0_ind7
  j l14_nullmerr
end_if0_ind7:
  j l15_contmptr
l14_nullmerr:
l15_contmptr:
  ld t5, 8(t5)
  li s3, 8
  sd t5, -112(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  mv a2, a2
  mv a3, s3
  jalr t5
  mv s1 , a0
  ld t5, -112(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  mv a1, s1
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
  bnez a2, end_if0_ind8
  j l16_nullobjerr
end_if0_ind8:
  j l17_contobjptr
l16_nullobjerr:
l17_contobjptr:
  ld s2, 0(a2)
  bnez s2, end_if0_ind9
  j l18_nullmerr
end_if0_ind9:
  j l19_contmptr
l18_nullmerr:
l19_contmptr:
  ld s2, 8(s2)
  li s4, 12
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  mv a2, a2
  mv a3, s4
  jalr s2
  mv s5 , a0
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  mv a1, s5
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
  bnez a2, end_if0_ind10
  j l20_nullobjerr
end_if0_ind10:
  j l21_contobjptr
l20_nullobjerr:
l21_contobjptr:
  ld s6, 0(a2)
  bnez s6, end_if0_ind11
  j l22_nullmerr
end_if0_ind11:
  j l23_contmptr
l22_nullmerr:
l23_contmptr:
  ld s6, 8(s6)
  li s7, 17
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  mv a2, a2
  mv a3, s7
  jalr s6
  mv s8 , a0
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  mv a1, s8
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
  bnez a2, end_if0_ind12
  j l24_nullobjerr
end_if0_ind12:
  j l25_contobjptr
l24_nullobjerr:
l25_contobjptr:
  ld s9, 0(a2)
  bnez s9, end_if0_ind13
  j l26_nullmerr
end_if0_ind13:
  j l27_contmptr
l26_nullmerr:
l27_contmptr:
  ld s9, 8(s9)
  li t0, 50
  sd t2, -144(fp)
  mv a2, a2
  mv a3, t0
  jalr s9
  mv t1 , a0
  ld t2, -144(fp)
  mv a1, t1
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
  li t2, 55
  sd t2, -160(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -160(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 160

  jr ra

.align 1
.globl LS_Print
LS_Print:
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
  li t3, 1
  mv t4, t3
l28_startwhile:
  bnez a2, end_if0_ind14
  j l30_nullobjerr
end_if0_ind14:
  j l31_contobjptr
l30_nullobjerr:
l31_contobjptr:
  ld s6, 16(a2)
  slt s5, t4, s6
  bnez s5, end_if0_ind15
  j l29_endwhile
end_if0_ind15:
  bnez a2, end_if0_ind16
  j l32_nullobjerr
end_if0_ind16:
  j l33_contobjptr
l32_nullobjerr:
l33_contobjptr:
  ld s4, 8(a2)
  bnez s4, end_if0_ind17
  j l34_nullarrerr
end_if0_ind17:
  j l35_contarrptr
l34_nullarrerr:
l35_contarrptr:
  ld s2, 0(s4)
  li s3, 1
  add s3, s3, t4
  slt s1, s2, s3
  bnez s1, end_if0_ind18
  j l36_endbc1
end_if0_ind18:
l36_endbc1:
  li t5, 0
  slt s1, t4, t5
  bnez s1, end_if0_ind19
  j l37_endbc2
end_if0_ind19:
l37_endbc2:
  li t2, 1
  add t1, t4, t2
  li t2, 8
  mul t1, t1, t2
  add t0, s4, t1
  ld s10, 0(t0)
  sd s10, -96(fp)
  mv a1, s10
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
  li s9, 1
  add s8, t4, s9
  mv t4, s8
  j l28_startwhile
l29_endwhile:
  li s7, 0
  sd s7, -104(fp)
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
.globl LS_Search
LS_Search:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 232
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
  li t3, 1
  mv t4, t3
  li t5, 0
  mv s3, t5
  li s1, 0
  mv s2, s1
l38_startwhile:
  bnez a2, end_if0_ind20
  j l40_nullobjerr
end_if0_ind20:
  j l41_contobjptr
l40_nullobjerr:
l41_contobjptr:
  ld s10, 16(a2)
  sd s10, -96(fp)
  mv s11, s10
  slt t1, t4, s11
  bnez t1, end_if0_ind21
  j l39_endwhile
end_if0_ind21:
  bnez a2, end_if0_ind22
  j l42_nullobjerr
end_if0_ind22:
  j l43_contobjptr
l42_nullobjerr:
l43_contobjptr:
  ld s10, 8(a2)
  sd s10, -104(fp)
  ld s11, -104(fp)
  bnez s11, end_if0_ind23
  j l44_nullarrerr
end_if0_ind23:
  j l45_contarrptr
l44_nullarrerr:
l45_contarrptr:
  ld s11, -104(fp)
  ld s8, 0(s11)
  li s10, 1
  sd s10, -112(fp)
  add s10, s10, t4
  sd s10, -112(fp)
  mv s11, s10
  slt s11, s8, s11
  sd s11, -120(fp)
  ld s11, -120(fp)
  bnez s11, end_if0_ind24
  j l46_endbc1
end_if0_ind24:
l46_endbc1:
  li s5, 0
  slt s11, t4, s5
  sd s11, -120(fp)
  ld s11, -120(fp)
  bnez s11, end_if0_ind25
  j l47_endbc2
end_if0_ind25:
l47_endbc2:
  li s10, 1
  sd s10, -128(fp)
  mv s11, s10
  add s4, t4, s11
  li s10, 8
  sd s10, -128(fp)
  mv s11, s10
  mul s4, s4, s11
  ld s10, -104(fp)
  add s10, s10, s4
  sd s10, -136(fp)
  mv s11, s10
  ld s10, 0(s11)
  sd s10, -144(fp)
  mv s11, s10
  mv s9, s11
  li s10, 1
  sd s10, -152(fp)
  mv s11, s10
  add s10, a3, s11
  sd s10, -160(fp)
  mv s11, s10
  mv t2, s11
  slt s11, s9, a3
  sd s11, -168(fp)
  ld s11, -168(fp)
  bnez s11, end_if0_ind26
  j l48_else
end_if0_ind26:
  li s10, 0
  sd s10, -176(fp)
  mv s11, s10
  mv s6, s11
  j l49_endif
l48_else:
  slt s11, s9, t2
  sd s11, -184(fp)
  ld s11, -184(fp)
  bnez s11, end_if0_ind27
  j l50_elseneg
end_if0_ind27:
  li s10, 0
  sd s10, -192(fp)
  j l51_endneg
l50_elseneg:
  li s10, 1
  sd s10, -192(fp)
  j l51_endneg
l51_endneg:
  ld s11, -192(fp)
  bnez s11, end_if0_ind28
  j l52_else
end_if0_ind28:
  li s10, 0
  sd s10, -200(fp)
  mv s11, s10
  mv s6, s11
  j l53_endif
l52_else:
  li s10, 1
  sd s10, -208(fp)
  mv s11, s10
  mv s3, s11
  li s10, 1
  sd s10, -216(fp)
  mv s11, s10
  mv s2, s11
  bnez a2, end_if0_ind29
  j l54_nullobjerr
end_if0_ind29:
  j l55_contobjptr
l54_nullobjerr:
l55_contobjptr:
  ld s7, 16(a2)
  mv t4, s7
  j l53_endif
l53_endif:
  j l49_endif
l49_endif:
  li s10, 1
  sd s10, -224(fp)
  mv s11, s10
  add t0, t4, s11
  mv t4, t0
  j l38_startwhile
l39_endwhile:
  sd s2, -232(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -232(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 232

  jr ra

.align 1
.globl LS_Init
LS_Init:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 248
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
  bnez a2, end_if0_ind30
  j l56_nullobjerr
end_if0_ind30:
  j l57_contobjptr
l56_nullobjerr:
l57_contobjptr:
  ld t3, 16(a2)
  mv t3, a3
  sd t3, 16(a2)
  bnez a2, end_if0_ind31
  j l58_nullobjerr
end_if0_ind31:
  j l59_contobjptr
l58_nullobjerr:
l59_contobjptr:
  ld t4, 8(a2)
  li t5, 0
  slt s3, a3, t5
  bnez s3, end_if0_ind32
  j l60_endlen0
end_if0_ind32:
l60_endlen0:
  li s1, 1
  add s4, a3, s1
  li s1, 8
  mul s4, s4, s1
  mv a0, s4
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
  mv s5, a0
  sd a3, 0(s5)
  mv t4, s5
  sd t4, 8(a2)
  li s6, 1
  mv s8, s6
  bnez a2, end_if0_ind33
  j l61_nullobjerr
end_if0_ind33:
  j l62_contobjptr
l61_nullobjerr:
l62_contobjptr:
  ld s9, 16(a2)
  li t0, 1
  add t1, s9, t0
  mv t2, t1
l63_startwhile:
  bnez a2, end_if0_ind34
  j l65_nullobjerr
end_if0_ind34:
  j l66_contobjptr
l65_nullobjerr:
l66_contobjptr:
  ld s10, 16(a2)
  sd s10, -96(fp)
  mv s11, s10
  slt s11, s8, s11
  sd s11, -104(fp)
  ld s11, -104(fp)
  bnez s11, end_if0_ind35
  j l64_endwhile
end_if0_ind35:
  li s10, 2
  sd s10, -112(fp)
  mul s10, s10, s8
  sd s10, -120(fp)
  mv s11, s10
  mv s2, s11
  li s10, 3
  sd s10, -128(fp)
  mv s11, s10
  sub s11, t2, s11
  sd s11, -136(fp)
  mv s10, s11
  sd s10, -144(fp)
  bnez a2, end_if0_ind36
  j l67_nullobjerr
end_if0_ind36:
  j l68_contobjptr
l67_nullobjerr:
l68_contobjptr:
  ld s10, 8(a2)
  sd s10, -152(fp)
  ld s11, -144(fp)
  add s10, s2, s11
  sd s10, -160(fp)
  ld s11, -152(fp)
  bnez s11, end_if0_ind37
  j l69_nullarrerr
end_if0_ind37:
  j l70_contarrptr
l69_nullarrerr:
l70_contarrptr:
  ld s11, -152(fp)
  ld s10, 0(s11)
  sd s10, -168(fp)
  li s7, 1
  add s7, s7, s8
  slt s11, s10, s7
  sd s11, -176(fp)
  ld s11, -176(fp)
  bnez s11, end_if0_ind38
  j l71_endbc1
end_if0_ind38:
l71_endbc1:
  li s10, 0
  sd s10, -184(fp)
  mv s11, s10
  slt s11, s8, s11
  sd s11, -176(fp)
  ld s11, -176(fp)
  bnez s11, end_if0_ind39
  j l72_endbc2
end_if0_ind39:
l72_endbc2:
  li s10, 1
  sd s10, -192(fp)
  mv s11, s10
  add s10, s8, s11
  sd s10, -200(fp)
  mv s10, s11
  li s10, 8
  sd s10, -192(fp)
  ld s10, -200(fp)
  ld s11, -192(fp)
  mul s10, s10, s11
  sd s10, -200(fp)
  ld s10, -152(fp)
  ld s11, -200(fp)
  add s10, s10, s11
  sd s10, -208(fp)
  ld s11, -160(fp)
  sd s11, 0(s10)
  li s10, 1
  sd s10, -216(fp)
  mv s11, s10
  add s10, s8, s11
  sd s10, -224(fp)
  mv s11, s10
  mv s8, s11
  li s10, 1
  sd s10, -232(fp)
  mv s11, s10
  sub s11, t2, s11
  sd s11, -240(fp)
  mv t2, s11
  j l63_startwhile
l64_endwhile:
  li s10, 0
  sd s10, -248(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -248(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 248

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

