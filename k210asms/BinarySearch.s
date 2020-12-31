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
  li s1, 48
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
  la s1, BS_Print
  sd s1, 0(s3)
  la s1, BS_Compare
  sd s1, 8(s3)
  la s1, BS_Div
  sd s1, 16(s3)
  la s1, BS_Search
  sd s1, 24(s3)
  la s1, BS_Init
  sd s1, 32(s3)
  la s1, BS_Start
  sd s1, 40(s3)
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
  ld s4, 40(s4)
  li s5, 20
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
.globl BS_Start
BS_Start:
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
  ld s8, 32(s8)
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
  bnez a2, end_if0_ind6
  j l12_nullobjerr
end_if0_ind6:
  j l13_contobjptr
l12_nullobjerr:
l13_contobjptr:
  ld t4, 0(a2)
  bnez t4, end_if0_ind7
  j l14_nullmerr
end_if0_ind7:
  j l15_contmptr
l14_nullmerr:
l15_contmptr:
  ld t4, 24(t4)
  li t5, 8
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a2
  mv a3, t5
  jalr t4
  mv s3 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  bnez s3, end_if0_ind8
  j l16_else
end_if0_ind8:
  li s1, 1
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
  j l17_endif
l16_else:
  li s2, 0
  mv a1, s2
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
  j l17_endif
l17_endif:
  bnez a2, end_if0_ind9
  j l18_nullobjerr
end_if0_ind9:
  j l19_contobjptr
l18_nullobjerr:
l19_contobjptr:
  ld s4, 0(a2)
  bnez s4, end_if0_ind10
  j l20_nullmerr
end_if0_ind10:
  j l21_contmptr
l20_nullmerr:
l21_contmptr:
  ld s4, 24(s4)
  li s5, 19
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a2
  mv a3, s5
  jalr s4
  mv s6 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  bnez s6, end_if0_ind11
  j l22_else
end_if0_ind11:
  li s7, 1
  mv a1, s7
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
  j l23_endif
l22_else:
  li s8, 0
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
  j l23_endif
l23_endif:
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
  ld s9, 24(s9)
  li t0, 20
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a2
  mv a3, t0
  jalr s9
  mv t1 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  bnez t1, end_if0_ind14
  j l28_else
end_if0_ind14:
  li t2, 1
  mv a1, t2
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
  j l29_endif
l28_else:
  li t3, 0
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
  j l29_endif
l29_endif:
  bnez a2, end_if0_ind15
  j l30_nullobjerr
end_if0_ind15:
  j l31_contobjptr
l30_nullobjerr:
l31_contobjptr:
  ld t4, 0(a2)
  bnez t4, end_if0_ind16
  j l32_nullmerr
end_if0_ind16:
  j l33_contmptr
l32_nullmerr:
l33_contmptr:
  ld t4, 24(t4)
  li t5, 21
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a2
  mv a3, t5
  jalr t4
  mv s3 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  bnez s3, end_if0_ind17
  j l34_else
end_if0_ind17:
  li s1, 1
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
  j l35_endif
l34_else:
  li s2, 0
  mv a1, s2
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
  j l35_endif
l35_endif:
  bnez a2, end_if0_ind18
  j l36_nullobjerr
end_if0_ind18:
  j l37_contobjptr
l36_nullobjerr:
l37_contobjptr:
  ld s4, 0(a2)
  bnez s4, end_if0_ind19
  j l38_nullmerr
end_if0_ind19:
  j l39_contmptr
l38_nullmerr:
l39_contmptr:
  ld s4, 24(s4)
  li s5, 37
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a2
  mv a3, s5
  jalr s4
  mv s6 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  bnez s6, end_if0_ind20
  j l40_else
end_if0_ind20:
  li s7, 1
  mv a1, s7
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
  j l41_endif
l40_else:
  li s8, 0
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
  j l41_endif
l41_endif:
  bnez a2, end_if0_ind21
  j l42_nullobjerr
end_if0_ind21:
  j l43_contobjptr
l42_nullobjerr:
l43_contobjptr:
  ld s9, 0(a2)
  bnez s9, end_if0_ind22
  j l44_nullmerr
end_if0_ind22:
  j l45_contmptr
l44_nullmerr:
l45_contmptr:
  ld s9, 24(s9)
  li t0, 38
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a2
  mv a3, t0
  jalr s9
  mv t1 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  bnez t1, end_if0_ind23
  j l46_else
end_if0_ind23:
  li t2, 1
  mv a1, t2
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
  j l47_endif
l46_else:
  li t3, 0
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
  j l47_endif
l47_endif:
  bnez a2, end_if0_ind24
  j l48_nullobjerr
end_if0_ind24:
  j l49_contobjptr
l48_nullobjerr:
l49_contobjptr:
  ld t4, 0(a2)
  bnez t4, end_if0_ind25
  j l50_nullmerr
end_if0_ind25:
  j l51_contmptr
l50_nullmerr:
l51_contmptr:
  ld t4, 24(t4)
  li t5, 39
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  mv a2, a2
  mv a3, t5
  jalr t4
  mv s3 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  bnez s3, end_if0_ind26
  j l52_else
end_if0_ind26:
  li s1, 1
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
  j l53_endif
l52_else:
  li s2, 0
  mv a1, s2
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
  j l53_endif
l53_endif:
  bnez a2, end_if0_ind27
  j l54_nullobjerr
end_if0_ind27:
  j l55_contobjptr
l54_nullobjerr:
l55_contobjptr:
  ld s4, 0(a2)
  bnez s4, end_if0_ind28
  j l56_nullmerr
end_if0_ind28:
  j l57_contmptr
l56_nullmerr:
l57_contmptr:
  ld s4, 24(s4)
  li s5, 50
  mv a2, a2
  mv a3, s5
  jalr s4
  mv s6 , a0
  bnez s6, end_if0_ind29
  j l58_else
end_if0_ind29:
  li s7, 1
  mv a1, s7
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
  j l59_endif
l58_else:
  li s8, 0
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
  j l59_endif
l59_endif:
  li s9, 999
  sd s9, -160(fp)
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
.globl BS_Search
BS_Search:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 368
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
  li t0, 0
  mv t1, t0
  li t2, 0
  mv t3, t2
  bnez a2, end_if0_ind30
  j l60_nullobjerr
end_if0_ind30:
  j l61_contobjptr
l60_nullobjerr:
l61_contobjptr:
  ld t4, 8(a2)
  bnez t4, end_if0_ind31
  j l62_nullarrerr
end_if0_ind31:
  j l63_contarrptr
l62_nullarrerr:
l63_contarrptr:
  ld t5, 0(t4)
  mv s3, t5
  li s1, 1
  sub s2, s3, s1
  mv s3, s2
  li s4, 0
  mv s5, s4
  li s6, 1
  mv s7, s6
l64_startwhile:
  bnez s7, end_if0_ind32
  j l65_endwhile
end_if0_ind32:
  add s10, s5, s3
  sd s10, -96(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -104(fp)
  bnez a2, end_if0_ind33
  j l66_nullobjerr
end_if0_ind33:
  j l67_contobjptr
l66_nullobjerr:
l67_contobjptr:
  ld s10, 0(a2)
  sd s10, -112(fp)
  ld s11, -112(fp)
  bnez s11, end_if0_ind34
  j l68_nullmerr
end_if0_ind34:
  j l69_contmptr
l68_nullmerr:
l69_contmptr:
  ld s11, -112(fp)
  ld s10, 16(s11)
  sd s10, -112(fp)
  sd a2, -120(fp)
  sd a3, -128(fp)
  sd a4, -136(fp)
  sd t1, -144(fp)
  sd t3, -152(fp)
  ld s10, -112(fp)
  mv a2, a2
  ld a3, -104(fp)
  jalr s10
  mv s11 , a0
  sd s11, -160(fp)
  ld a2, -120(fp)
  ld a3, -128(fp)
  ld a4, -136(fp)
  ld t1, -144(fp)
  ld t3, -152(fp)
  mv s10, s11
  sd s10, -104(fp)
  bnez a2, end_if0_ind35
  j l70_nullobjerr
end_if0_ind35:
  j l71_contobjptr
l70_nullobjerr:
l71_contobjptr:
  ld s10, 8(a2)
  sd s10, -168(fp)
  ld s11, -168(fp)
  bnez s11, end_if0_ind36
  j l72_nullarrerr
end_if0_ind36:
  j l73_contarrptr
l72_nullarrerr:
l73_contarrptr:
  ld s11, -168(fp)
  ld s10, 0(s11)
  sd s10, -176(fp)
  li s10, 1
  sd s10, -184(fp)
  ld s11, -104(fp)
  add s10, s10, s11
  sd s10, -184(fp)
  ld s10, -176(fp)
  ld s11, -184(fp)
  slt s11, s10, s11
  sd s11, -192(fp)
  ld s11, -192(fp)
  bnez s11, end_if0_ind37
  j l74_endbc1
end_if0_ind37:
l74_endbc1:
  li s10, 0
  sd s10, -200(fp)
  ld s10, -104(fp)
  ld s11, -200(fp)
  slt s11, s10, s11
  sd s11, -192(fp)
  ld s11, -192(fp)
  bnez s11, end_if0_ind38
  j l75_endbc2
end_if0_ind38:
l75_endbc2:
  li s10, 1
  sd s10, -208(fp)
  ld s10, -104(fp)
  ld s11, -208(fp)
  add s10, s10, s11
  sd s10, -216(fp)
  mv s10, s11
  li s10, 8
  sd s10, -208(fp)
  ld s10, -216(fp)
  ld s11, -208(fp)
  mul s10, s10, s11
  sd s10, -216(fp)
  ld s10, -168(fp)
  ld s11, -216(fp)
  add s8, s10, s11
  ld s9, 0(s8)
  mv t1, s9
  slt s11, a3, t1
  sd s11, -224(fp)
  ld s11, -224(fp)
  bnez s11, end_if0_ind39
  j l76_else
end_if0_ind39:
  li s10, 1
  sd s10, -232(fp)
  ld s10, -104(fp)
  ld s11, -232(fp)
  sub s11, s10, s11
  sd s11, -240(fp)
  mv s3, s11
  j l77_endif
l76_else:
  li s10, 1
  sd s10, -248(fp)
  ld s10, -104(fp)
  ld s11, -248(fp)
  add s10, s10, s11
  sd s10, -256(fp)
  mv s11, s10
  mv s5, s11
  j l77_endif
l77_endif:
  bnez a2, end_if0_ind40
  j l78_nullobjerr
end_if0_ind40:
  j l79_contobjptr
l78_nullobjerr:
l79_contobjptr:
  ld s10, 0(a2)
  sd s10, -264(fp)
  ld s11, -264(fp)
  bnez s11, end_if0_ind41
  j l80_nullmerr
end_if0_ind41:
  j l81_contmptr
l80_nullmerr:
l81_contmptr:
  ld s11, -264(fp)
  ld s10, 8(s11)
  sd s10, -264(fp)
  sd a2, -120(fp)
  sd a3, -128(fp)
  sd a4, -136(fp)
  sd t3, -152(fp)
  ld s10, -264(fp)
  sd a3, -272(fp)
  mv a2, a2
  mv a3, t1
  ld a4, -272(fp)
  jalr s10
  mv s11 , a0
  sd s11, -280(fp)
  ld a2, -120(fp)
  ld a3, -128(fp)
  ld a4, -136(fp)
  ld t3, -152(fp)
  ld s11, -280(fp)
  bnez s11, end_if0_ind42
  j l82_else
end_if0_ind42:
  li s10, 0
  sd s10, -288(fp)
  mv s11, s10
  mv s7, s11
  j l83_endif
l82_else:
  li s10, 1
  sd s10, -296(fp)
  mv s11, s10
  mv s7, s11
  j l83_endif
l83_endif:
  slt s11, s3, s5
  sd s11, -304(fp)
  ld s11, -304(fp)
  bnez s11, end_if0_ind43
  j l84_else
end_if0_ind43:
  li s10, 0
  sd s10, -312(fp)
  mv s11, s10
  mv s7, s11
  j l85_endif
l84_else:
  li s10, 0
  sd s10, -320(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -328(fp)
  j l85_endif
l85_endif:
  j l64_startwhile
l65_endwhile:
  bnez a2, end_if0_ind44
  j l86_nullobjerr
end_if0_ind44:
  j l87_contobjptr
l86_nullobjerr:
l87_contobjptr:
  ld s10, 0(a2)
  sd s10, -336(fp)
  ld s11, -336(fp)
  bnez s11, end_if0_ind45
  j l88_nullmerr
end_if0_ind45:
  j l89_contmptr
l88_nullmerr:
l89_contmptr:
  ld s11, -336(fp)
  ld s10, 8(s11)
  sd s10, -336(fp)
  sd t3, -152(fp)
  ld s10, -336(fp)
  sd a3, -272(fp)
  mv a2, a2
  mv a3, t1
  ld a4, -272(fp)
  jalr s10
  mv s11 , a0
  sd s11, -344(fp)
  ld t3, -152(fp)
  ld s11, -344(fp)
  bnez s11, end_if0_ind46
  j l90_else
end_if0_ind46:
  li s10, 1
  sd s10, -352(fp)
  mv s11, s10
  mv t3, s11
  j l91_endif
l90_else:
  li s10, 0
  sd s10, -360(fp)
  mv s11, s10
  mv t3, s11
  j l91_endif
l91_endif:
  sd t3, -368(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -368(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 368

  jr ra

.align 1
.globl BS_Div
BS_Div:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 88
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s3, -24(fp)
  sd s4, -32(fp)
  sd s5, -40(fp)
  sd s6, -48(fp)
  sd s7, -56(fp)
  sd s8, -64(fp)
  sd s1, -72(fp)
  sd s2, -80(fp)
  li t0, 0
  mv t2, t0
  li t4, 0
  mv t5, t4
  li s3, 1
  sub s1, a3, s3
  mv s2, s1
l92_startwhile:
  slt s8, t5, s2
  bnez s8, end_if0_ind47
  j l93_endwhile
end_if0_ind47:
  li s7, 1
  add s6, t2, s7
  mv t2, s6
  li s5, 2
  add s4, t5, s5
  mv t5, s4
  j l92_startwhile
l93_endwhile:
  sd t2, -88(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s1, -72(fp)
  ld s2, -80(fp)
  ld a0, -88(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 88

  jr ra

.align 1
.globl BS_Compare
BS_Compare:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 72
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s3, -24(fp)
  sd s4, -32(fp)
  sd s5, -40(fp)
  sd s9, -48(fp)
  sd s1, -56(fp)
  sd s2, -64(fp)
  li s9, 0
  mv t1, s9
  li t3, 1
  add t0, a4, t3
  mv t4, t0
  slt t5, a3, a4
  bnez t5, end_if0_ind48
  j l94_else
end_if0_ind48:
  li s3, 0
  mv t1, s3
  j l95_endif
l94_else:
  slt s1, a3, t4
  bnez s1, end_if0_ind49
  j l96_elseneg
end_if0_ind49:
  li s2, 0
  j l97_endneg
l96_elseneg:
  li s2, 1
  j l97_endneg
l97_endneg:
  bnez s2, end_if0_ind50
  j l98_else
end_if0_ind50:
  li s4, 0
  mv t1, s4
  j l99_endif
l98_else:
  li s5, 1
  mv t1, s5
  j l99_endif
l99_endif:
  j l95_endif
l95_endif:
  sd t1, -72(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s9, -48(fp)
  ld s1, -56(fp)
  ld s2, -64(fp)
  ld a0, -72(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 72

  jr ra

.align 1
.globl BS_Print
BS_Print:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 112
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
  li s6, 1
  mv s7, s6
l100_startwhile:
  bnez a2, end_if0_ind51
  j l102_nullobjerr
end_if0_ind51:
  j l103_contobjptr
l102_nullobjerr:
l103_contobjptr:
  ld t3, 16(a2)
  slt s9, s7, t3
  bnez s9, end_if0_ind52
  j l101_endwhile
end_if0_ind52:
  bnez a2, end_if0_ind53
  j l104_nullobjerr
end_if0_ind53:
  j l105_contobjptr
l104_nullobjerr:
l105_contobjptr:
  ld t2, 8(a2)
  bnez t2, end_if0_ind54
  j l106_nullarrerr
end_if0_ind54:
  j l107_contarrptr
l106_nullarrerr:
l107_contarrptr:
  ld s8, 0(t2)
  li s10, 1
  sd s10, -96(fp)
  add s10, s10, s7
  sd s10, -96(fp)
  mv s11, s10
  slt s11, s8, s11
  sd s11, -104(fp)
  ld s11, -104(fp)
  bnez s11, end_if0_ind55
  j l108_endbc1
end_if0_ind55:
l108_endbc1:
  li t1, 0
  slt s11, s7, t1
  sd s11, -104(fp)
  ld s11, -104(fp)
  bnez s11, end_if0_ind56
  j l109_endbc2
end_if0_ind56:
l109_endbc2:
  li s4, 1
  add s2, s7, s4
  li s4, 8
  mul s2, s2, s4
  add s1, t2, s2
  ld s5, 0(s1)
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
  li t4, 1
  add s3, s7, t4
  mv s7, s3
  j l100_startwhile
l101_endwhile:
  li t5, 99999
  mv a1, t5
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
  li t0, 0
  sd t0, -112(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -112(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 112

  jr ra

.align 1
.globl BS_Init
BS_Init:
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
  bnez a2, end_if0_ind57
  j l110_nullobjerr
end_if0_ind57:
  j l111_contobjptr
l110_nullobjerr:
l111_contobjptr:
  ld s6, 16(a2)
  mv s6, a3
  sd s6, 16(a2)
  bnez a2, end_if0_ind58
  j l112_nullobjerr
end_if0_ind58:
  j l113_contobjptr
l112_nullobjerr:
l113_contobjptr:
  ld s7, 8(a2)
  li s8, 0
  slt t2, a3, s8
  bnez t2, end_if0_ind59
  j l114_endlen0
end_if0_ind59:
l114_endlen0:
  li s9, 1
  add t3, a3, s9
  li s9, 8
  mul t3, t3, s9
  mv a0, t3
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
  mv s7, s3
  sd s7, 8(a2)
  li t4, 1
  mv s1, t4
  bnez a2, end_if0_ind60
  j l115_nullobjerr
end_if0_ind60:
  j l116_contobjptr
l115_nullobjerr:
l116_contobjptr:
  ld s2, 16(a2)
  li s4, 1
  add s5, s2, s4
  mv t1, s5
l117_startwhile:
  bnez a2, end_if0_ind61
  j l119_nullobjerr
end_if0_ind61:
  j l120_contobjptr
l119_nullobjerr:
l120_contobjptr:
  ld s10, 16(a2)
  sd s10, -96(fp)
  mv s11, s10
  slt s11, s1, s11
  sd s11, -104(fp)
  ld s11, -104(fp)
  bnez s11, end_if0_ind62
  j l118_endwhile
end_if0_ind62:
  li s10, 2
  sd s10, -112(fp)
  mul s10, s10, s1
  sd s10, -120(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -128(fp)
  li s10, 3
  sd s10, -136(fp)
  mv s11, s10
  sub s11, t1, s11
  sd s11, -144(fp)
  mv s10, s11
  sd s10, -152(fp)
  bnez a2, end_if0_ind63
  j l121_nullobjerr
end_if0_ind63:
  j l122_contobjptr
l121_nullobjerr:
l122_contobjptr:
  ld s10, 8(a2)
  sd s10, -160(fp)
  ld s10, -128(fp)
  ld s11, -152(fp)
  add s10, s10, s11
  sd s10, -168(fp)
  ld s11, -160(fp)
  bnez s11, end_if0_ind64
  j l123_nullarrerr
end_if0_ind64:
  j l124_contarrptr
l123_nullarrerr:
l124_contarrptr:
  ld s11, -160(fp)
  ld s10, 0(s11)
  sd s10, -176(fp)
  li s10, 1
  sd s10, -184(fp)
  add s10, s10, s1
  sd s10, -184(fp)
  ld s10, -176(fp)
  ld s11, -184(fp)
  slt s11, s10, s11
  sd s11, -192(fp)
  ld s11, -192(fp)
  bnez s11, end_if0_ind65
  j l125_endbc1
end_if0_ind65:
l125_endbc1:
  li s10, 0
  sd s10, -200(fp)
  mv s11, s10
  slt s11, s1, s11
  sd s11, -192(fp)
  ld s11, -192(fp)
  bnez s11, end_if0_ind66
  j l126_endbc2
end_if0_ind66:
l126_endbc2:
  li t0, 1
  add s10, s1, t0
  sd s10, -208(fp)
  li t0, 8
  mul s10, s10, t0
  sd s10, -208(fp)
  ld s10, -160(fp)
  ld s11, -208(fp)
  add s10, s10, s11
  sd s10, -216(fp)
  ld s11, -168(fp)
  sd s11, 0(s10)
  li t5, 1
  add s10, s1, t5
  sd s10, -224(fp)
  mv s11, s10
  mv s1, s11
  li s10, 1
  sd s10, -232(fp)
  mv s11, s10
  sub s11, t1, s11
  sd s11, -240(fp)
  mv t1, s11
  j l117_startwhile
l118_endwhile:
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

