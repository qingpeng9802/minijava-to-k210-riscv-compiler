.text

.align 1
.globl main
main:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 64
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s3, -24(fp)
  sd s4, -32(fp)
  sd s5, -40(fp)
  sd s1, -48(fp)
  sd s2, -56(fp)
  li s1, 8
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
  li s1, 8
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
  la s1, TV_Start
  sd s1, 0(s3)
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
  ld s4, 0(s4)
  mv a2, s2
  jalr s4
  mv s5 , a0
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
  sd s6, -64(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s1, -48(fp)
  ld s2, -56(fp)
  ld a0, -64(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 64

.inf_loop:
  j .inf_loop
  jr ra

.align 1
.globl TV_Start
TV_Start:
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
  li s7, 56
  mv a0, s7
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
  mv s8, a0
  li s7, 168
  mv a0, s7
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
  mv s9, a0
  la s7, Tree_GetHas_Right
  sd s7, 0(s9)
  la s7, Tree_Compare
  sd s7, 8(s9)
  la s7, Tree_Delete
  sd s7, 16(s9)
  la s7, Tree_Print
  sd s7, 24(s9)
  la s7, Tree_SetHas_Left
  sd s7, 32(s9)
  la s7, Tree_RecPrint
  sd s7, 40(s9)
  la s7, Tree_Remove
  sd s7, 48(s9)
  la s7, Tree_GetHas_Left
  sd s7, 56(s9)
  la s7, Tree_Search
  sd s7, 64(s9)
  la s7, Tree_SetHas_Right
  sd s7, 72(s9)
  la s7, Tree_SetLeft
  sd s7, 80(s9)
  la s7, Tree_Init
  sd s7, 88(s9)
  la s7, Tree_SetRight
  sd s7, 96(s9)
  la s7, Tree_Insert
  sd s7, 104(s9)
  la s7, Tree_accept
  sd s7, 112(s9)
  la s7, Tree_RemoveLeft
  sd s7, 120(s9)
  la s7, Tree_GetLeft
  sd s7, 128(s9)
  la s7, Tree_SetKey
  sd s7, 136(s9)
  la s7, Tree_RemoveRight
  sd s7, 144(s9)
  la s7, Tree_GetKey
  sd s7, 152(s9)
  la s7, Tree_GetRight
  sd s7, 160(s9)
  mv s7, s9
  sd s7, 0(s8)
  mv t0, s8
  bnez t0, end_if0_ind2
  j l4_nullobjerr
end_if0_ind2:
  j l5_contobjptr
l4_nullobjerr:
l5_contobjptr:
  ld t1, 0(t0)
  bnez t1, end_if0_ind3
  j l6_nullmerr
end_if0_ind3:
  j l7_contmptr
l6_nullmerr:
l7_contmptr:
  ld t1, 88(t1)
  li t2, 16
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  mv a2, t0
  mv a3, t2
  jalr t1
  mv t3 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  mv t4, t3
  bnez t0, end_if0_ind4
  j l8_nullobjerr
end_if0_ind4:
  j l9_contobjptr
l8_nullobjerr:
l9_contobjptr:
  ld t5, 0(t0)
  bnez t5, end_if0_ind5
  j l10_nullmerr
end_if0_ind5:
  j l11_contmptr
l10_nullmerr:
l11_contmptr:
  ld t5, 24(t5)
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  jalr t5
  mv s3 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv t4, s3
  li s1, 100000000
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
  bnez t0, end_if0_ind6
  j l12_nullobjerr
end_if0_ind6:
  j l13_contobjptr
l12_nullobjerr:
l13_contobjptr:
  ld s2, 0(t0)
  bnez s2, end_if0_ind7
  j l14_nullmerr
end_if0_ind7:
  j l15_contmptr
l14_nullmerr:
l15_contmptr:
  ld s2, 104(s2)
  li s4, 8
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, s4
  jalr s2
  mv s5 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv t4, s5
  bnez t0, end_if0_ind8
  j l16_nullobjerr
end_if0_ind8:
  j l17_contobjptr
l16_nullobjerr:
l17_contobjptr:
  ld s6, 0(t0)
  bnez s6, end_if0_ind9
  j l18_nullmerr
end_if0_ind9:
  j l19_contmptr
l18_nullmerr:
l19_contmptr:
  ld s6, 104(s6)
  li s9, 24
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, s9
  jalr s6
  mv s7 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv t4, s7
  bnez t0, end_if0_ind10
  j l20_nullobjerr
end_if0_ind10:
  j l21_contobjptr
l20_nullobjerr:
l21_contobjptr:
  ld s8, 0(t0)
  bnez s8, end_if0_ind11
  j l22_nullmerr
end_if0_ind11:
  j l23_contmptr
l22_nullmerr:
l23_contmptr:
  ld s8, 104(s8)
  li t1, 4
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, t1
  jalr s8
  mv t2 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t3, -152(fp)
  mv t4, t2
  bnez t0, end_if0_ind12
  j l24_nullobjerr
end_if0_ind12:
  j l25_contobjptr
l24_nullobjerr:
l25_contobjptr:
  ld t3, 0(t0)
  bnez t3, end_if0_ind13
  j l26_nullmerr
end_if0_ind13:
  j l27_contmptr
l26_nullmerr:
l27_contmptr:
  ld t3, 104(t3)
  li t4, 12
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, t4
  jalr t3
  mv t5 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv t4, t5
  bnez t0, end_if0_ind14
  j l28_nullobjerr
end_if0_ind14:
  j l29_contobjptr
l28_nullobjerr:
l29_contobjptr:
  ld s3, 0(t0)
  bnez s3, end_if0_ind15
  j l30_nullmerr
end_if0_ind15:
  j l31_contmptr
l30_nullmerr:
l31_contmptr:
  ld s3, 104(s3)
  li s1, 20
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, s1
  jalr s3
  mv s2 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv t4, s2
  bnez t0, end_if0_ind16
  j l32_nullobjerr
end_if0_ind16:
  j l33_contobjptr
l32_nullobjerr:
l33_contobjptr:
  ld s4, 0(t0)
  bnez s4, end_if0_ind17
  j l34_nullmerr
end_if0_ind17:
  j l35_contmptr
l34_nullmerr:
l35_contmptr:
  ld s4, 104(s4)
  li s5, 28
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, s5
  jalr s4
  mv s6 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv t4, s6
  bnez t0, end_if0_ind18
  j l36_nullobjerr
end_if0_ind18:
  j l37_contobjptr
l36_nullobjerr:
l37_contobjptr:
  ld s9, 0(t0)
  bnez s9, end_if0_ind19
  j l38_nullmerr
end_if0_ind19:
  j l39_contmptr
l38_nullmerr:
l39_contmptr:
  ld s9, 104(s9)
  li s7, 14
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, s7
  jalr s9
  mv s8 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv t4, s8
  bnez t0, end_if0_ind20
  j l40_nullobjerr
end_if0_ind20:
  j l41_contobjptr
l40_nullobjerr:
l41_contobjptr:
  ld t1, 0(t0)
  bnez t1, end_if0_ind21
  j l42_nullmerr
end_if0_ind21:
  j l43_contmptr
l42_nullmerr:
l43_contmptr:
  ld t1, 24(t1)
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t3, -152(fp)
  mv a2, t0
  jalr t1
  mv t2 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t3, -152(fp)
  mv t4, t2
  li t3, 100000000
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
  li t4, 24
  mv a0, t4
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
  mv t5, a0
  li t4, 8
  mv a0, t4
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
  la t4, MyVisitor_visit
  sd t4, 0(s3)
  mv t4, s3
  sd t4, 0(t5)
  mv s1, t5
  li s2, 50000000
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
  bnez t0, end_if0_ind22
  j l44_nullobjerr
end_if0_ind22:
  j l45_contobjptr
l44_nullobjerr:
l45_contobjptr:
  ld s4, 0(t0)
  bnez s4, end_if0_ind23
  j l46_nullmerr
end_if0_ind23:
  j l47_contmptr
l46_nullmerr:
l47_contmptr:
  ld s4, 112(s4)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, s1
  jalr s4
  mv s5 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv s6, s5
  li s9, 100000000
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
  bnez t0, end_if0_ind24
  j l48_nullobjerr
end_if0_ind24:
  j l49_contobjptr
l48_nullobjerr:
l49_contobjptr:
  ld s7, 0(t0)
  bnez s7, end_if0_ind25
  j l50_nullmerr
end_if0_ind25:
  j l51_contmptr
l50_nullmerr:
l51_contmptr:
  ld s7, 64(s7)
  li s8, 24
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, s8
  jalr s7
  mv t1 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
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
  bnez t0, end_if0_ind26
  j l52_nullobjerr
end_if0_ind26:
  j l53_contobjptr
l52_nullobjerr:
l53_contobjptr:
  ld t2, 0(t0)
  bnez t2, end_if0_ind27
  j l54_nullmerr
end_if0_ind27:
  j l55_contmptr
l54_nullmerr:
l55_contmptr:
  ld t2, 64(t2)
  li t3, 12
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, t3
  jalr t2
  mv s3 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv a1, s3
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
  bnez t0, end_if0_ind28
  j l56_nullobjerr
end_if0_ind28:
  j l57_contobjptr
l56_nullobjerr:
l57_contobjptr:
  ld t4, 0(t0)
  bnez t4, end_if0_ind29
  j l58_nullmerr
end_if0_ind29:
  j l59_contmptr
l58_nullmerr:
l59_contmptr:
  ld t4, 64(t4)
  li t5, 16
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, t5
  jalr t4
  mv s2 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
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
  bnez t0, end_if0_ind30
  j l60_nullobjerr
end_if0_ind30:
  j l61_contobjptr
l60_nullobjerr:
l61_contobjptr:
  ld s1, 0(t0)
  bnez s1, end_if0_ind31
  j l62_nullmerr
end_if0_ind31:
  j l63_contmptr
l62_nullmerr:
l63_contmptr:
  ld s1, 64(s1)
  li s4, 50
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, s4
  jalr s1
  mv s5 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
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
  bnez t0, end_if0_ind32
  j l64_nullobjerr
end_if0_ind32:
  j l65_contobjptr
l64_nullobjerr:
l65_contobjptr:
  ld s6, 0(t0)
  bnez s6, end_if0_ind33
  j l66_nullmerr
end_if0_ind33:
  j l67_contmptr
l66_nullmerr:
l67_contmptr:
  ld s6, 64(s6)
  li s9, 12
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, s9
  jalr s6
  mv s7 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
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
  bnez t0, end_if0_ind34
  j l68_nullobjerr
end_if0_ind34:
  j l69_contobjptr
l68_nullobjerr:
l69_contobjptr:
  ld s8, 0(t0)
  bnez s8, end_if0_ind35
  j l70_nullmerr
end_if0_ind35:
  j l71_contmptr
l70_nullmerr:
l71_contmptr:
  ld s8, 16(s8)
  li t1, 12
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t3, -152(fp)
  mv a2, t0
  mv a3, t1
  jalr s8
  mv t2 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t3, -152(fp)
  mv t4, t2
  bnez t0, end_if0_ind36
  j l72_nullobjerr
end_if0_ind36:
  j l73_contobjptr
l72_nullobjerr:
l73_contobjptr:
  ld t3, 0(t0)
  bnez t3, end_if0_ind37
  j l74_nullmerr
end_if0_ind37:
  j l75_contmptr
l74_nullmerr:
l75_contmptr:
  ld t3, 24(t3)
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t3, -152(fp)
  mv a2, t0
  jalr t3
  mv s3 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t3, -152(fp)
  mv t4, s3
  bnez t0, end_if0_ind38
  j l76_nullobjerr
end_if0_ind38:
  j l77_contobjptr
l76_nullobjerr:
l77_contobjptr:
  ld t4, 0(t0)
  bnez t4, end_if0_ind39
  j l78_nullmerr
end_if0_ind39:
  j l79_contmptr
l78_nullmerr:
l79_contmptr:
  ld t4, 64(t4)
  li t5, 12
  sd t4, -96(fp)
  mv a2, t0
  mv a3, t5
  jalr t4
  mv s2 , a0
  ld t4, -96(fp)
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
  li s1, 0
  sd s1, -160(fp)
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
.globl Tree_Init
Tree_Init:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 72
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s4, -24(fp)
  sd s5, -32(fp)
  sd s6, -40(fp)
  sd s7, -48(fp)
  sd s8, -56(fp)
  sd s9, -64(fp)
  bnez a2, end_if0_ind40
  j l80_nullobjerr
end_if0_ind40:
  j l81_contobjptr
l80_nullobjerr:
l81_contobjptr:
  ld s4, 48(a2)
  mv s4, a3
  sd s4, 48(a2)
  bnez a2, end_if0_ind41
  j l82_nullobjerr
end_if0_ind41:
  j l83_contobjptr
l82_nullobjerr:
l83_contobjptr:
  ld s5, 40(a2)
  li s6, 0
  mv s5, s6
  sd s5, 40(a2)
  bnez a2, end_if0_ind42
  j l84_nullobjerr
end_if0_ind42:
  j l85_contobjptr
l84_nullobjerr:
l85_contobjptr:
  ld s9, 16(a2)
  li s7, 0
  mv s9, s7
  sd s9, 16(a2)
  li s8, 1
  sd s8, -72(fp)
  ld s4, -24(fp)
  ld s5, -32(fp)
  ld s6, -40(fp)
  ld s7, -48(fp)
  ld s8, -56(fp)
  ld s9, -64(fp)
  ld a0, -72(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 72

  jr ra

.align 1
.globl Tree_SetRight
Tree_SetRight:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 24
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  bnez a2, end_if0_ind43
  j l86_nullobjerr
end_if0_ind43:
  j l87_contobjptr
l86_nullobjerr:
l87_contobjptr:
  ld t1, 32(a2)
  mv t1, a3
  sd t1, 32(a2)
  li t2, 1
  sd t2, -24(fp)
  ld a0, -24(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 24

  jr ra

.align 1
.globl Tree_SetLeft
Tree_SetLeft:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 32
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s3, -24(fp)
  bnez a2, end_if0_ind44
  j l88_nullobjerr
end_if0_ind44:
  j l89_contobjptr
l88_nullobjerr:
l89_contobjptr:
  ld t3, 8(a2)
  mv t3, a3
  sd t3, 8(a2)
  li s3, 1
  sd s3, -32(fp)
  ld s3, -24(fp)
  ld a0, -32(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 32

  jr ra

.align 1
.globl Tree_GetRight
Tree_GetRight:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 24
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  bnez a2, end_if0_ind45
  j l90_nullobjerr
end_if0_ind45:
  j l91_contobjptr
l90_nullobjerr:
l91_contobjptr:
  ld t0, 32(a2)
  sd t0, -24(fp)
  ld a0, -24(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 24

  jr ra

.align 1
.globl Tree_GetLeft
Tree_GetLeft:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 24
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  bnez a2, end_if0_ind46
  j l92_nullobjerr
end_if0_ind46:
  j l93_contobjptr
l92_nullobjerr:
l93_contobjptr:
  ld t4, 8(a2)
  sd t4, -24(fp)
  ld a0, -24(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 24

  jr ra

.align 1
.globl Tree_GetKey
Tree_GetKey:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 24
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  bnez a2, end_if0_ind47
  j l94_nullobjerr
end_if0_ind47:
  j l95_contobjptr
l94_nullobjerr:
l95_contobjptr:
  ld t5, 48(a2)
  sd t5, -24(fp)
  ld a0, -24(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 24

  jr ra

.align 1
.globl Tree_SetKey
Tree_SetKey:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 40
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s1, -24(fp)
  sd s2, -32(fp)
  bnez a2, end_if0_ind48
  j l96_nullobjerr
end_if0_ind48:
  j l97_contobjptr
l96_nullobjerr:
l97_contobjptr:
  ld s2, 48(a2)
  mv s2, a3
  sd s2, 48(a2)
  li s1, 1
  sd s1, -40(fp)
  ld s1, -24(fp)
  ld s2, -32(fp)
  ld a0, -40(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 40

  jr ra

.align 1
.globl Tree_GetHas_Right
Tree_GetHas_Right:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 32
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s4, -24(fp)
  bnez a2, end_if0_ind49
  j l98_nullobjerr
end_if0_ind49:
  j l99_contobjptr
l98_nullobjerr:
l99_contobjptr:
  ld s4, 16(a2)
  sd s4, -32(fp)
  ld s4, -24(fp)
  ld a0, -32(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 32

  jr ra

.align 1
.globl Tree_GetHas_Left
Tree_GetHas_Left:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 32
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s6, -24(fp)
  bnez a2, end_if0_ind50
  j l100_nullobjerr
end_if0_ind50:
  j l101_contobjptr
l100_nullobjerr:
l101_contobjptr:
  ld s6, 40(a2)
  sd s6, -32(fp)
  ld s6, -24(fp)
  ld a0, -32(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 32

  jr ra

.align 1
.globl Tree_SetHas_Left
Tree_SetHas_Left:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 40
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s5, -24(fp)
  sd s7, -32(fp)
  bnez a2, end_if0_ind51
  j l102_nullobjerr
end_if0_ind51:
  j l103_contobjptr
l102_nullobjerr:
l103_contobjptr:
  ld s5, 40(a2)
  mv s5, a3
  sd s5, 40(a2)
  li s7, 1
  sd s7, -40(fp)
  ld s5, -24(fp)
  ld s7, -32(fp)
  ld a0, -40(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 40

  jr ra

.align 1
.globl Tree_SetHas_Right
Tree_SetHas_Right:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 40
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s8, -24(fp)
  sd s9, -32(fp)
  bnez a2, end_if0_ind52
  j l104_nullobjerr
end_if0_ind52:
  j l105_contobjptr
l104_nullobjerr:
l105_contobjptr:
  ld s9, 16(a2)
  mv s9, a3
  sd s9, 16(a2)
  li s8, 1
  sd s8, -40(fp)
  ld s8, -24(fp)
  ld s9, -32(fp)
  ld a0, -40(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 40

  jr ra

.align 1
.globl Tree_Compare
Tree_Compare:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 64
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s3, -24(fp)
  sd s4, -32(fp)
  sd s6, -40(fp)
  sd s1, -48(fp)
  sd s2, -56(fp)
  li t1, 0
  mv t2, t1
  li t3, 1
  add s3, a4, t3
  mv t0, s3
  slt t4, a3, a4
  bnez t4, end_if0_ind53
  j l106_else
end_if0_ind53:
  li t5, 0
  mv t2, t5
  j l107_endif
l106_else:
  slt s2, a3, t0
  bnez s2, end_if0_ind54
  j l108_elseneg
end_if0_ind54:
  li s1, 0
  j l109_endneg
l108_elseneg:
  li s1, 1
  j l109_endneg
l109_endneg:
  bnez s1, end_if0_ind55
  j l110_else
end_if0_ind55:
  li s4, 0
  mv t2, s4
  j l111_endif
l110_else:
  li s6, 1
  mv t2, s6
  j l111_endif
l111_endif:
  j l107_endif
l107_endif:
  sd t2, -64(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s6, -40(fp)
  ld s1, -48(fp)
  ld s2, -56(fp)
  ld a0, -64(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 64

  jr ra

.align 1
.globl Tree_Insert
Tree_Insert:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 304
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
  li s5, 56
  mv a0, s5
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
  mv s7, a0
  li s5, 168
  mv a0, s5
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
  mv s9, a0
  la s5, Tree_GetHas_Right
  sd s5, 0(s9)
  la s5, Tree_Compare
  sd s5, 8(s9)
  la s5, Tree_Delete
  sd s5, 16(s9)
  la s5, Tree_Print
  sd s5, 24(s9)
  la s5, Tree_SetHas_Left
  sd s5, 32(s9)
  la s5, Tree_RecPrint
  sd s5, 40(s9)
  la s5, Tree_Remove
  sd s5, 48(s9)
  la s5, Tree_GetHas_Left
  sd s5, 56(s9)
  la s5, Tree_Search
  sd s5, 64(s9)
  la s5, Tree_SetHas_Right
  sd s5, 72(s9)
  la s5, Tree_SetLeft
  sd s5, 80(s9)
  la s5, Tree_Init
  sd s5, 88(s9)
  la s5, Tree_SetRight
  sd s5, 96(s9)
  la s5, Tree_Insert
  sd s5, 104(s9)
  la s5, Tree_accept
  sd s5, 112(s9)
  la s5, Tree_RemoveLeft
  sd s5, 120(s9)
  la s5, Tree_GetLeft
  sd s5, 128(s9)
  la s5, Tree_SetKey
  sd s5, 136(s9)
  la s5, Tree_RemoveRight
  sd s5, 144(s9)
  la s5, Tree_GetKey
  sd s5, 152(s9)
  la s5, Tree_GetRight
  sd s5, 160(s9)
  mv s5, s9
  sd s5, 0(s7)
  mv s8, s7
  bnez s8, end_if0_ind56
  j l112_nullobjerr
end_if0_ind56:
  j l113_contobjptr
l112_nullobjerr:
l113_contobjptr:
  ld t1, 0(s8)
  bnez t1, end_if0_ind57
  j l114_nullmerr
end_if0_ind57:
  j l115_contmptr
l114_nullmerr:
l115_contmptr:
  ld t1, 88(t1)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  mv a2, s8
  mv a3, a3
  jalr t1
  mv t3 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  mv s3, t3
  mv t4, a2
  li t5, 1
  mv t0, t5
l116_startwhile:
  bnez t0, end_if0_ind58
  j l117_endwhile
end_if0_ind58:
  bnez t4, end_if0_ind59
  j l118_nullobjerr
end_if0_ind59:
  j l119_contobjptr
l118_nullobjerr:
l119_contobjptr:
  ld s6, 0(t4)
  bnez s6, end_if0_ind60
  j l120_nullmerr
end_if0_ind60:
  j l121_contmptr
l120_nullmerr:
l121_contmptr:
  ld s6, 152(s6)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t2, -144(fp)
  mv a2, t4
  jalr s6
  mv s11 , a0
  sd s11, -152(fp)
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t2, -144(fp)
  mv s10, s11
  sd s10, -160(fp)
  mv s11, s10
  slt s11, a3, s11
  sd s11, -168(fp)
  ld s11, -168(fp)
  bnez s11, end_if0_ind61
  j l122_else
end_if0_ind61:
  bnez t4, end_if0_ind62
  j l124_nullobjerr
end_if0_ind62:
  j l125_contobjptr
l124_nullobjerr:
l125_contobjptr:
  ld s1, 0(t4)
  bnez s1, end_if0_ind63
  j l126_nullmerr
end_if0_ind63:
  j l127_contmptr
l126_nullmerr:
l127_contmptr:
  ld s1, 56(s1)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t2, -144(fp)
  mv a2, t4
  jalr s1
  mv s11 , a0
  sd s11, -176(fp)
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t2, -144(fp)
  ld s11, -176(fp)
  bnez s11, end_if0_ind64
  j l128_else
end_if0_ind64:
  bnez t4, end_if0_ind65
  j l130_nullobjerr
end_if0_ind65:
  j l131_contobjptr
l130_nullobjerr:
l131_contobjptr:
  ld s10, 0(t4)
  sd s10, -184(fp)
  ld s11, -184(fp)
  bnez s11, end_if0_ind66
  j l132_nullmerr
end_if0_ind66:
  j l133_contmptr
l132_nullmerr:
l133_contmptr:
  ld s11, -184(fp)
  ld s10, 128(s11)
  sd s10, -184(fp)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t2, -144(fp)
  ld s10, -184(fp)
  mv a2, t4
  jalr s10
  mv s2 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t2, -144(fp)
  mv t4, s2
  j l129_endif
l128_else:
  li s10, 0
  sd s10, -192(fp)
  mv s11, s10
  mv t0, s11
  bnez t4, end_if0_ind67
  j l134_nullobjerr
end_if0_ind67:
  j l135_contobjptr
l134_nullobjerr:
l135_contobjptr:
  ld s10, 0(t4)
  sd s10, -200(fp)
  ld s11, -200(fp)
  bnez s11, end_if0_ind68
  j l136_nullmerr
end_if0_ind68:
  j l137_contmptr
l136_nullmerr:
l137_contmptr:
  ld s11, -200(fp)
  ld s10, 32(s11)
  sd s10, -200(fp)
  li s10, 1
  sd s10, -208(fp)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t2, -144(fp)
  ld s10, -200(fp)
  mv a2, t4
  ld a3, -208(fp)
  jalr s10
  mv s11 , a0
  sd s11, -216(fp)
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t2, -144(fp)
  mv s3, s11
  bnez t4, end_if0_ind69
  j l138_nullobjerr
end_if0_ind69:
  j l139_contobjptr
l138_nullobjerr:
l139_contobjptr:
  ld s10, 0(t4)
  sd s10, -224(fp)
  ld s11, -224(fp)
  bnez s11, end_if0_ind70
  j l140_nullmerr
end_if0_ind70:
  j l141_contmptr
l140_nullmerr:
l141_contmptr:
  ld s11, -224(fp)
  ld s10, 80(s11)
  sd s10, -224(fp)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t2, -144(fp)
  ld s10, -224(fp)
  mv a2, t4
  mv a3, s8
  jalr s10
  mv s11 , a0
  sd s11, -232(fp)
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t2, -144(fp)
  mv s3, s11
  j l129_endif
l129_endif:
  j l123_endif
l122_else:
  bnez t4, end_if0_ind71
  j l142_nullobjerr
end_if0_ind71:
  j l143_contobjptr
l142_nullobjerr:
l143_contobjptr:
  ld s10, 0(t4)
  sd s10, -240(fp)
  ld s11, -240(fp)
  bnez s11, end_if0_ind72
  j l144_nullmerr
end_if0_ind72:
  j l145_contmptr
l144_nullmerr:
l145_contmptr:
  ld s11, -240(fp)
  ld s10, 0(s11)
  sd s10, -240(fp)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t2, -144(fp)
  ld s10, -240(fp)
  mv a2, t4
  jalr s10
  mv s11 , a0
  sd s11, -248(fp)
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t2, -144(fp)
  ld s11, -248(fp)
  bnez s11, end_if0_ind73
  j l146_else
end_if0_ind73:
  bnez t4, end_if0_ind74
  j l148_nullobjerr
end_if0_ind74:
  j l149_contobjptr
l148_nullobjerr:
l149_contobjptr:
  ld s10, 0(t4)
  sd s10, -256(fp)
  ld s11, -256(fp)
  bnez s11, end_if0_ind75
  j l150_nullmerr
end_if0_ind75:
  j l151_contmptr
l150_nullmerr:
l151_contmptr:
  ld s11, -256(fp)
  ld s10, 160(s11)
  sd s10, -256(fp)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t2, -144(fp)
  ld s10, -256(fp)
  mv a2, t4
  jalr s10
  mv s11 , a0
  sd s11, -264(fp)
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t2, -144(fp)
  mv t4, s11
  j l147_endif
l146_else:
  li s10, 0
  sd s10, -272(fp)
  mv s11, s10
  mv t0, s11
  bnez t4, end_if0_ind76
  j l152_nullobjerr
end_if0_ind76:
  j l153_contobjptr
l152_nullobjerr:
l153_contobjptr:
  ld s10, 0(t4)
  sd s10, -280(fp)
  ld s11, -280(fp)
  bnez s11, end_if0_ind77
  j l154_nullmerr
end_if0_ind77:
  j l155_contmptr
l154_nullmerr:
l155_contmptr:
  ld s11, -280(fp)
  ld s10, 72(s11)
  sd s10, -280(fp)
  li t2, 1
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  ld s10, -280(fp)
  mv a2, t4
  mv a3, t2
  jalr s10
  mv s11 , a0
  sd s11, -288(fp)
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  mv s3, s11
  bnez t4, end_if0_ind78
  j l156_nullobjerr
end_if0_ind78:
  j l157_contobjptr
l156_nullobjerr:
l157_contobjptr:
  ld s10, 0(t4)
  sd s10, -296(fp)
  ld s11, -296(fp)
  bnez s11, end_if0_ind79
  j l158_nullmerr
end_if0_ind79:
  j l159_contmptr
l158_nullmerr:
l159_contmptr:
  ld s11, -296(fp)
  ld s10, 96(s11)
  sd s10, -296(fp)
  ld s10, -296(fp)
  mv a2, t4
  mv a3, s8
  jalr s10
  mv s4 , a0
  mv s3, s4
  j l147_endif
l147_endif:
  j l123_endif
l123_endif:
  j l116_startwhile
l117_endwhile:
  li s10, 1
  sd s10, -304(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -304(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 304

  jr ra

.align 1
.globl Tree_Delete
Tree_Delete:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 352
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
  mv s5, a2
  mv s7, a2
  li s9, 1
  mv s8, s9
  li t1, 0
  mv t3, t1
  li s3, 1
  mv t4, s3
l160_startwhile:
  bnez s8, end_if0_ind80
  j l161_endwhile
end_if0_ind80:
  bnez s5, end_if0_ind81
  j l162_nullobjerr
end_if0_ind81:
  j l163_contobjptr
l162_nullobjerr:
l163_contobjptr:
  ld t5, 0(s5)
  bnez t5, end_if0_ind82
  j l164_nullmerr
end_if0_ind82:
  j l165_contmptr
l164_nullmerr:
l165_contmptr:
  ld t5, 152(t5)
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, s5
  jalr t5
  mv s11 , a0
  sd s11, -160(fp)
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv s6, s11
  slt s11, a3, s6
  sd s11, -168(fp)
  ld s11, -168(fp)
  bnez s11, end_if0_ind83
  j l166_else
end_if0_ind83:
  bnez s5, end_if0_ind84
  j l168_nullobjerr
end_if0_ind84:
  j l169_contobjptr
l168_nullobjerr:
l169_contobjptr:
  ld s10, 0(s5)
  sd s10, -176(fp)
  ld s11, -176(fp)
  bnez s11, end_if0_ind85
  j l170_nullmerr
end_if0_ind85:
  j l171_contmptr
l170_nullmerr:
l171_contmptr:
  ld s11, -176(fp)
  ld s10, 56(s11)
  sd s10, -176(fp)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  ld s10, -176(fp)
  mv a2, s5
  jalr s10
  mv s11 , a0
  sd s11, -184(fp)
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  ld s11, -184(fp)
  bnez s11, end_if0_ind86
  j l172_else
end_if0_ind86:
  mv s7, s5
  bnez s5, end_if0_ind87
  j l174_nullobjerr
end_if0_ind87:
  j l175_contobjptr
l174_nullobjerr:
l175_contobjptr:
  ld s10, 0(s5)
  sd s10, -192(fp)
  ld s11, -192(fp)
  bnez s11, end_if0_ind88
  j l176_nullmerr
end_if0_ind88:
  j l177_contmptr
l176_nullmerr:
l177_contmptr:
  ld s11, -192(fp)
  ld s10, 128(s11)
  sd s10, -192(fp)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  ld s10, -192(fp)
  mv a2, s5
  jalr s10
  mv s11 , a0
  sd s11, -200(fp)
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv s5, s11
  j l173_endif
l172_else:
  li s10, 0
  sd s10, -208(fp)
  mv s11, s10
  mv s8, s11
  j l173_endif
l173_endif:
  j l167_endif
l166_else:
  slt s11, s6, a3
  sd s11, -216(fp)
  ld s11, -216(fp)
  bnez s11, end_if0_ind89
  j l178_else
end_if0_ind89:
  bnez s5, end_if0_ind90
  j l180_nullobjerr
end_if0_ind90:
  j l181_contobjptr
l180_nullobjerr:
l181_contobjptr:
  ld t2, 0(s5)
  bnez t2, end_if0_ind91
  j l182_nullmerr
end_if0_ind91:
  j l183_contmptr
l182_nullmerr:
l183_contmptr:
  ld t2, 0(t2)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, s5
  jalr t2
  mv s11 , a0
  sd s11, -224(fp)
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  ld s11, -224(fp)
  bnez s11, end_if0_ind92
  j l184_else
end_if0_ind92:
  mv s7, s5
  bnez s5, end_if0_ind93
  j l186_nullobjerr
end_if0_ind93:
  j l187_contobjptr
l186_nullobjerr:
l187_contobjptr:
  ld s4, 0(s5)
  bnez s4, end_if0_ind94
  j l188_nullmerr
end_if0_ind94:
  j l189_contmptr
l188_nullmerr:
l189_contmptr:
  ld s4, 160(s4)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t3, -152(fp)
  mv a2, s5
  jalr s4
  mv s11 , a0
  sd s11, -232(fp)
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t3, -152(fp)
  mv s5, s11
  j l185_endif
l184_else:
  li s10, 0
  sd s10, -240(fp)
  mv s11, s10
  mv s8, s11
  j l185_endif
l185_endif:
  j l179_endif
l178_else:
  bnez t4, end_if0_ind95
  j l190_else
end_if0_ind95:
  bnez s5, end_if0_ind96
  j l192_nullobjerr
end_if0_ind96:
  j l193_contobjptr
l192_nullobjerr:
l193_contobjptr:
  ld s1, 0(s5)
  bnez s1, end_if0_ind97
  j l194_nullmerr
end_if0_ind97:
  j l195_contmptr
l194_nullmerr:
l195_contmptr:
  ld s1, 0(s1)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t3, -152(fp)
  mv a2, s5
  jalr s1
  mv s11 , a0
  sd s11, -248(fp)
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t3, -152(fp)
  ld s11, -248(fp)
  bnez s11, end_if0_ind98
  j l196_elseneg
end_if0_ind98:
  li s10, 0
  sd s10, -256(fp)
  j l197_endneg
l196_elseneg:
  li s10, 1
  sd s10, -256(fp)
  j l197_endneg
l197_endneg:
  bnez s5, end_if0_ind99
  j l198_nullobjerr
end_if0_ind99:
  j l199_contobjptr
l198_nullobjerr:
l199_contobjptr:
  ld s2, 0(s5)
  bnez s2, end_if0_ind100
  j l200_nullmerr
end_if0_ind100:
  j l201_contmptr
l200_nullmerr:
l201_contmptr:
  ld s2, 56(s2)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t3, -152(fp)
  mv a2, s5
  jalr s2
  mv s11 , a0
  sd s11, -264(fp)
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t3, -152(fp)
  ld s11, -264(fp)
  bnez s11, end_if0_ind101
  j l202_elseneg
end_if0_ind101:
  li t0, 0
  j l203_endneg
l202_elseneg:
  li t0, 1
  j l203_endneg
l203_endneg:
  ld s10, -256(fp)
  mul s10, s10, t0
  sd s10, -272(fp)
  ld s11, -272(fp)
  bnez s11, end_if0_ind102
  j l204_else
end_if0_ind102:
  li s10, 1
  sd s10, -280(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -288(fp)
  j l205_endif
l204_else:
  bnez a2, end_if0_ind103
  j l206_nullobjerr
end_if0_ind103:
  j l207_contobjptr
l206_nullobjerr:
l207_contobjptr:
  ld s10, 0(a2)
  sd s10, -296(fp)
  ld s11, -296(fp)
  bnez s11, end_if0_ind104
  j l208_nullmerr
end_if0_ind104:
  j l209_contmptr
l208_nullmerr:
l209_contmptr:
  ld s11, -296(fp)
  ld s10, 48(s11)
  sd s10, -296(fp)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t3, -152(fp)
  ld s10, -296(fp)
  mv a2, a2
  mv a3, s7
  mv a4, s5
  jalr s10
  mv s11 , a0
  sd s11, -304(fp)
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t3, -152(fp)
  mv s10, s11
  sd s10, -288(fp)
  j l205_endif
l205_endif:
  j l191_endif
l190_else:
  bnez a2, end_if0_ind105
  j l210_nullobjerr
end_if0_ind105:
  j l211_contobjptr
l210_nullobjerr:
l211_contobjptr:
  ld s10, 0(a2)
  sd s10, -312(fp)
  ld s11, -312(fp)
  bnez s11, end_if0_ind106
  j l212_nullmerr
end_if0_ind106:
  j l213_contmptr
l212_nullmerr:
l213_contmptr:
  ld s11, -312(fp)
  ld s10, 48(s11)
  sd s10, -312(fp)
  sd t4, -96(fp)
  sd t3, -152(fp)
  ld s10, -312(fp)
  mv a2, a2
  mv a3, s7
  mv a4, s5
  jalr s10
  mv s11 , a0
  sd s11, -320(fp)
  ld t4, -96(fp)
  ld t3, -152(fp)
  mv s10, s11
  sd s10, -288(fp)
  j l191_endif
l191_endif:
  li s10, 1
  sd s10, -328(fp)
  mv s11, s10
  mv t3, s11
  li s10, 0
  sd s10, -336(fp)
  mv s11, s10
  mv s8, s11
  j l179_endif
l179_endif:
  j l167_endif
l167_endif:
  li s10, 0
  sd s10, -344(fp)
  mv s11, s10
  mv t4, s11
  j l160_startwhile
l161_endwhile:
  sd t3, -352(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -352(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 352

  jr ra

.align 1
.globl Tree_Remove
Tree_Remove:
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
  bnez a4, end_if0_ind107
  j l214_nullobjerr
end_if0_ind107:
  j l215_contobjptr
l214_nullobjerr:
l215_contobjptr:
  ld s5, 0(a4)
  bnez s5, end_if0_ind108
  j l216_nullmerr
end_if0_ind108:
  j l217_contmptr
l216_nullmerr:
l217_contmptr:
  ld s5, 56(s5)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a4
  jalr s5
  mv s7 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  bnez s7, end_if0_ind109
  j l218_else
end_if0_ind109:
  bnez a2, end_if0_ind110
  j l220_nullobjerr
end_if0_ind110:
  j l221_contobjptr
l220_nullobjerr:
l221_contobjptr:
  ld s9, 0(a2)
  bnez s9, end_if0_ind111
  j l222_nullmerr
end_if0_ind111:
  j l223_contmptr
l222_nullmerr:
l223_contmptr:
  ld s9, 120(s9)
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
  mv a4, a4
  jalr s9
  mv s8 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  mv t1, s8
  j l219_endif
l218_else:
  bnez a4, end_if0_ind112
  j l224_nullobjerr
end_if0_ind112:
  j l225_contobjptr
l224_nullobjerr:
l225_contobjptr:
  ld s3, 0(a4)
  bnez s3, end_if0_ind113
  j l226_nullmerr
end_if0_ind113:
  j l227_contmptr
l226_nullmerr:
l227_contmptr:
  ld s3, 0(s3)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a4
  jalr s3
  mv t4 , a0
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  bnez t4, end_if0_ind114
  j l228_else
end_if0_ind114:
  bnez a2, end_if0_ind115
  j l230_nullobjerr
end_if0_ind115:
  j l231_contobjptr
l230_nullobjerr:
l231_contobjptr:
  ld t5, 0(a2)
  bnez t5, end_if0_ind116
  j l232_nullmerr
end_if0_ind116:
  j l233_contmptr
l232_nullmerr:
l233_contmptr:
  ld t5, 144(t5)
  sd t4, -96(fp)
  sd t5, -112(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a2
  mv a3, a3
  mv a4, a4
  jalr t5
  mv t0 , a0
  ld t4, -96(fp)
  ld t5, -112(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  mv t1, t0
  j l229_endif
l228_else:
  bnez a4, end_if0_ind117
  j l234_nullobjerr
end_if0_ind117:
  j l235_contobjptr
l234_nullobjerr:
l235_contobjptr:
  ld s2, 0(a4)
  bnez s2, end_if0_ind118
  j l236_nullmerr
end_if0_ind118:
  j l237_contmptr
l236_nullmerr:
l237_contmptr:
  ld s2, 152(s2)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a4
  jalr s2
  mv s1 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  mv s4, s1
  bnez a3, end_if0_ind119
  j l238_nullobjerr
end_if0_ind119:
  j l239_contobjptr
l238_nullobjerr:
l239_contobjptr:
  ld s6, 0(a3)
  bnez s6, end_if0_ind120
  j l240_nullmerr
end_if0_ind120:
  j l241_contmptr
l240_nullmerr:
l241_contmptr:
  ld s6, 128(s6)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t3, -160(fp)
  mv a2, a3
  jalr s6
  mv t2 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t3, -160(fp)
  bnez t2, end_if0_ind121
  j l242_nullobjerr
end_if0_ind121:
  j l243_contobjptr
l242_nullobjerr:
l243_contobjptr:
  ld t3, 0(t2)
  bnez t3, end_if0_ind122
  j l244_nullmerr
end_if0_ind122:
  j l245_contmptr
l244_nullmerr:
l245_contmptr:
  ld t3, 152(t3)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, t2
  jalr t3
  mv s5 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  mv s7, s5
  bnez a2, end_if0_ind123
  j l246_nullobjerr
end_if0_ind123:
  j l247_contobjptr
l246_nullobjerr:
l247_contobjptr:
  ld s9, 0(a2)
  bnez s9, end_if0_ind124
  j l248_nullmerr
end_if0_ind124:
  j l249_contmptr
l248_nullmerr:
l249_contmptr:
  ld s9, 8(s9)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a2
  mv a3, s4
  mv a4, s7
  jalr s9
  mv s8 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  bnez s8, end_if0_ind125
  j l250_else
end_if0_ind125:
  bnez a3, end_if0_ind126
  j l252_nullobjerr
end_if0_ind126:
  j l253_contobjptr
l252_nullobjerr:
l253_contobjptr:
  ld t1, 0(a3)
  bnez t1, end_if0_ind127
  j l254_nullmerr
end_if0_ind127:
  j l255_contmptr
l254_nullmerr:
l255_contmptr:
  ld t1, 80(t1)
  bnez a2, end_if0_ind128
  j l256_nullobjerr
end_if0_ind128:
  j l257_contobjptr
l256_nullobjerr:
l257_contobjptr:
  ld s3, 24(a2)
  sd t5, -112(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a3
  mv a3, s3
  jalr t1
  mv t4 , a0
  ld t5, -112(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  mv t1, t4
  bnez a3, end_if0_ind129
  j l258_nullobjerr
end_if0_ind129:
  j l259_contobjptr
l258_nullobjerr:
l259_contobjptr:
  ld t5, 0(a3)
  bnez t5, end_if0_ind130
  j l260_nullmerr
end_if0_ind130:
  j l261_contmptr
l260_nullmerr:
l261_contmptr:
  ld t5, 32(t5)
  li t0, 0
  sd t5, -112(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a3
  mv a3, t0
  jalr t5
  mv s2 , a0
  ld t5, -112(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  mv t1, s2
  j l251_endif
l250_else:
  bnez a3, end_if0_ind131
  j l262_nullobjerr
end_if0_ind131:
  j l263_contobjptr
l262_nullobjerr:
l263_contobjptr:
  ld s1, 0(a3)
  bnez s1, end_if0_ind132
  j l264_nullmerr
end_if0_ind132:
  j l265_contmptr
l264_nullmerr:
l265_contmptr:
  ld s1, 96(s1)
  bnez a2, end_if0_ind133
  j l266_nullobjerr
end_if0_ind133:
  j l267_contobjptr
l266_nullobjerr:
l267_contobjptr:
  ld s6, 24(a2)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t1, -144(fp)
  sd t3, -160(fp)
  mv a2, a3
  mv a3, s6
  jalr s1
  mv t2 , a0
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t1, -144(fp)
  ld t3, -160(fp)
  mv t1, t2
  bnez a3, end_if0_ind134
  j l268_nullobjerr
end_if0_ind134:
  j l269_contobjptr
l268_nullobjerr:
l269_contobjptr:
  ld t3, 0(a3)
  bnez t3, end_if0_ind135
  j l270_nullmerr
end_if0_ind135:
  j l271_contmptr
l270_nullmerr:
l271_contmptr:
  ld t3, 72(t3)
  li s5, 0
  sd t1, -144(fp)
  sd t3, -160(fp)
  mv a2, a3
  mv a3, s5
  jalr t3
  mv s4 , a0
  ld t1, -144(fp)
  ld t3, -160(fp)
  mv t1, s4
  j l251_endif
l251_endif:
  j l229_endif
l229_endif:
  j l219_endif
l219_endif:
  li s7, 1
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
.globl Tree_RemoveRight
Tree_RemoveRight:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 192
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
l272_startwhile:
  bnez a4, end_if0_ind136
  j l274_nullobjerr
end_if0_ind136:
  j l275_contobjptr
l274_nullobjerr:
l275_contobjptr:
  ld t1, 0(a4)
  bnez t1, end_if0_ind137
  j l276_nullmerr
end_if0_ind137:
  j l277_contmptr
l276_nullmerr:
l277_contmptr:
  ld t1, 0(t1)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a4
  jalr t1
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
  bnez s9, end_if0_ind138
  j l273_endwhile
end_if0_ind138:
  bnez a4, end_if0_ind139
  j l278_nullobjerr
end_if0_ind139:
  j l279_contobjptr
l278_nullobjerr:
l279_contobjptr:
  ld s10, 0(a4)
  sd s10, -168(fp)
  ld s11, -168(fp)
  bnez s11, end_if0_ind140
  j l280_nullmerr
end_if0_ind140:
  j l281_contmptr
l280_nullmerr:
l281_contmptr:
  ld s11, -168(fp)
  ld s10, 136(s11)
  sd s10, -168(fp)
  bnez a4, end_if0_ind141
  j l282_nullobjerr
end_if0_ind141:
  j l283_contobjptr
l282_nullobjerr:
l283_contobjptr:
  ld s8, 0(a4)
  bnez s8, end_if0_ind142
  j l284_nullmerr
end_if0_ind142:
  j l285_contmptr
l284_nullmerr:
l285_contmptr:
  ld s8, 160(s8)
  sd t5, -112(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a4
  jalr s8
  mv t4 , a0
  ld t5, -112(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  bnez t4, end_if0_ind143
  j l286_nullobjerr
end_if0_ind143:
  j l287_contobjptr
l286_nullobjerr:
l287_contobjptr:
  ld s3, 0(t4)
  bnez s3, end_if0_ind144
  j l288_nullmerr
end_if0_ind144:
  j l289_contmptr
l288_nullmerr:
l289_contmptr:
  ld s3, 152(s3)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, t4
  jalr s3
  mv t5 , a0
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  ld s10, -168(fp)
  mv a2, a4
  mv a3, t5
  jalr s10
  mv s2 , a0
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  mv s10, s2
  sd s10, -176(fp)
  mv a3, a4
  bnez a4, end_if0_ind145
  j l290_nullobjerr
end_if0_ind145:
  j l291_contobjptr
l290_nullobjerr:
l291_contobjptr:
  ld t0, 0(a4)
  bnez t0, end_if0_ind146
  j l292_nullmerr
end_if0_ind146:
  j l293_contmptr
l292_nullmerr:
l293_contmptr:
  ld t0, 160(t0)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a4
  jalr t0
  mv s6 , a0
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  mv a4, s6
  j l272_startwhile
l273_endwhile:
  bnez a3, end_if0_ind147
  j l294_nullobjerr
end_if0_ind147:
  j l295_contobjptr
l294_nullobjerr:
l295_contobjptr:
  ld s1, 0(a3)
  bnez s1, end_if0_ind148
  j l296_nullmerr
end_if0_ind148:
  j l297_contmptr
l296_nullmerr:
l297_contmptr:
  ld s1, 96(s1)
  bnez a2, end_if0_ind149
  j l298_nullobjerr
end_if0_ind149:
  j l299_contobjptr
l298_nullobjerr:
l299_contobjptr:
  ld t2, 24(a2)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t3, -160(fp)
  mv a2, a3
  mv a3, t2
  jalr s1
  mv s5 , a0
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t3, -160(fp)
  mv s10, s5
  sd s10, -176(fp)
  bnez a3, end_if0_ind150
  j l300_nullobjerr
end_if0_ind150:
  j l301_contobjptr
l300_nullobjerr:
l301_contobjptr:
  ld t3, 0(a3)
  bnez t3, end_if0_ind151
  j l302_nullmerr
end_if0_ind151:
  j l303_contmptr
l302_nullmerr:
l303_contmptr:
  ld t3, 72(t3)
  li s4, 0
  sd t3, -160(fp)
  mv a2, a3
  mv a3, s4
  jalr t3
  mv s11 , a0
  sd s11, -184(fp)
  ld t3, -160(fp)
  mv s10, s11
  sd s10, -176(fp)
  li s7, 1
  sd s7, -192(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -192(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 192

  jr ra

.align 1
.globl Tree_RemoveLeft
Tree_RemoveLeft:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 184
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
l304_startwhile:
  bnez a4, end_if0_ind152
  j l306_nullobjerr
end_if0_ind152:
  j l307_contobjptr
l306_nullobjerr:
l307_contobjptr:
  ld s4, 0(a4)
  bnez s4, end_if0_ind153
  j l308_nullmerr
end_if0_ind153:
  j l309_contmptr
l308_nullmerr:
l309_contmptr:
  ld s4, 56(s4)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  mv a2, a4
  jalr s4
  mv t3 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  bnez t3, end_if0_ind154
  j l305_endwhile
end_if0_ind154:
  bnez a4, end_if0_ind155
  j l310_nullobjerr
end_if0_ind155:
  j l311_contobjptr
l310_nullobjerr:
l311_contobjptr:
  ld s7, 0(a4)
  bnez s7, end_if0_ind156
  j l312_nullmerr
end_if0_ind156:
  j l313_contmptr
l312_nullmerr:
l313_contmptr:
  ld s7, 136(s7)
  bnez a4, end_if0_ind157
  j l314_nullobjerr
end_if0_ind157:
  j l315_contobjptr
l314_nullobjerr:
l315_contobjptr:
  ld s10, 0(a4)
  sd s10, -160(fp)
  ld s11, -160(fp)
  bnez s11, end_if0_ind158
  j l316_nullmerr
end_if0_ind158:
  j l317_contmptr
l316_nullmerr:
l317_contmptr:
  ld s11, -160(fp)
  ld s10, 128(s11)
  sd s10, -160(fp)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  ld s10, -160(fp)
  mv a2, a4
  jalr s10
  mv s11 , a0
  sd s11, -168(fp)
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld s11, -168(fp)
  bnez s11, end_if0_ind159
  j l318_nullobjerr
end_if0_ind159:
  j l319_contobjptr
l318_nullobjerr:
l319_contobjptr:
  ld s11, -168(fp)
  ld s8, 0(s11)
  bnez s8, end_if0_ind160
  j l320_nullmerr
end_if0_ind160:
  j l321_contmptr
l320_nullmerr:
l321_contmptr:
  ld s8, 152(s8)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  ld a2, -168(fp)
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
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  mv a2, a4
  mv a3, s9
  jalr s7
  mv s3 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  mv s10, s3
  sd s10, -176(fp)
  mv a3, a4
  bnez a4, end_if0_ind161
  j l322_nullobjerr
end_if0_ind161:
  j l323_contobjptr
l322_nullobjerr:
l323_contobjptr:
  ld t1, 0(a4)
  bnez t1, end_if0_ind162
  j l324_nullmerr
end_if0_ind162:
  j l325_contmptr
l324_nullmerr:
l325_contmptr:
  ld t1, 128(t1)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  mv a2, a4
  jalr t1
  mv t4 , a0
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  mv a4, t4
  j l304_startwhile
l305_endwhile:
  bnez a3, end_if0_ind163
  j l326_nullobjerr
end_if0_ind163:
  j l327_contobjptr
l326_nullobjerr:
l327_contobjptr:
  ld t0, 0(a3)
  bnez t0, end_if0_ind164
  j l328_nullmerr
end_if0_ind164:
  j l329_contmptr
l328_nullmerr:
l329_contmptr:
  ld t0, 80(t0)
  bnez a2, end_if0_ind165
  j l330_nullobjerr
end_if0_ind165:
  j l331_contobjptr
l330_nullobjerr:
l331_contobjptr:
  ld t5, 24(a2)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -136(fp)
  sd t2, -152(fp)
  mv a2, a3
  mv a3, t5
  jalr t0
  mv s6 , a0
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -136(fp)
  ld t2, -152(fp)
  mv s10, s6
  sd s10, -176(fp)
  bnez a3, end_if0_ind166
  j l332_nullobjerr
end_if0_ind166:
  j l333_contobjptr
l332_nullobjerr:
l333_contobjptr:
  ld s2, 0(a3)
  bnez s2, end_if0_ind167
  j l334_nullmerr
end_if0_ind167:
  j l335_contmptr
l334_nullmerr:
l335_contmptr:
  ld s2, 32(s2)
  li s1, 0
  sd t2, -152(fp)
  mv a2, a3
  mv a3, s1
  jalr s2
  mv s5 , a0
  ld t2, -152(fp)
  mv s10, s5
  sd s10, -176(fp)
  li t2, 1
  sd t2, -184(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -184(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 184

  jr ra

.align 1
.globl Tree_Search
Tree_Search:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 216
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
  mv s9, a2
  li s8, 1
  mv t1, s8
  li s3, 0
  mv t4, s3
l336_startwhile:
  bnez t1, end_if0_ind168
  j l337_endwhile
end_if0_ind168:
  bnez s9, end_if0_ind169
  j l338_nullobjerr
end_if0_ind169:
  j l339_contobjptr
l338_nullobjerr:
l339_contobjptr:
  ld s10, 0(s9)
  sd s10, -96(fp)
  ld s11, -96(fp)
  bnez s11, end_if0_ind170
  j l340_nullmerr
end_if0_ind170:
  j l341_contmptr
l340_nullmerr:
l341_contmptr:
  ld s11, -96(fp)
  ld s10, 152(s11)
  sd s10, -96(fp)
  sd t4, -104(fp)
  sd a2, -112(fp)
  sd t5, -120(fp)
  sd a3, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  ld s10, -96(fp)
  mv a2, s9
  jalr s10
  mv s11 , a0
  sd s11, -168(fp)
  ld t4, -104(fp)
  ld a2, -112(fp)
  ld t5, -120(fp)
  ld a3, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  mv t2, s11
  slt s11, a3, t2
  sd s11, -176(fp)
  ld s11, -176(fp)
  bnez s11, end_if0_ind171
  j l342_else
end_if0_ind171:
  bnez s9, end_if0_ind172
  j l344_nullobjerr
end_if0_ind172:
  j l345_contobjptr
l344_nullobjerr:
l345_contobjptr:
  ld s10, 0(s9)
  sd s10, -184(fp)
  ld s11, -184(fp)
  bnez s11, end_if0_ind173
  j l346_nullmerr
end_if0_ind173:
  j l347_contmptr
l346_nullmerr:
l347_contmptr:
  ld s11, -184(fp)
  ld s10, 56(s11)
  sd s10, -184(fp)
  sd t4, -104(fp)
  sd a2, -112(fp)
  sd t5, -120(fp)
  sd a3, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  ld s10, -184(fp)
  mv a2, s9
  jalr s10
  mv s11 , a0
  sd s11, -192(fp)
  ld t4, -104(fp)
  ld a2, -112(fp)
  ld t5, -120(fp)
  ld a3, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  ld s11, -192(fp)
  bnez s11, end_if0_ind174
  j l348_else
end_if0_ind174:
  bnez s9, end_if0_ind175
  j l350_nullobjerr
end_if0_ind175:
  j l351_contobjptr
l350_nullobjerr:
l351_contobjptr:
  ld t3, 0(s9)
  bnez t3, end_if0_ind176
  j l352_nullmerr
end_if0_ind176:
  j l353_contmptr
l352_nullmerr:
l353_contmptr:
  ld t3, 128(t3)
  sd t4, -104(fp)
  sd t5, -120(fp)
  sd a2, -112(fp)
  sd a3, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, s9
  jalr t3
  mv s7 , a0
  ld t4, -104(fp)
  ld t5, -120(fp)
  ld a2, -112(fp)
  ld a3, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  mv s9, s7
  j l349_endif
l348_else:
  li s4, 0
  mv t1, s4
  j l349_endif
l349_endif:
  j l343_endif
l342_else:
  slt t5, t2, a3
  bnez t5, end_if0_ind177
  j l354_else
end_if0_ind177:
  bnez s9, end_if0_ind178
  j l356_nullobjerr
end_if0_ind178:
  j l357_contobjptr
l356_nullobjerr:
l357_contobjptr:
  ld s6, 0(s9)
  bnez s6, end_if0_ind179
  j l358_nullmerr
end_if0_ind179:
  j l359_contmptr
l358_nullmerr:
l359_contmptr:
  ld s6, 0(s6)
  sd t4, -104(fp)
  sd a2, -112(fp)
  sd t1, -144(fp)
  mv a2, s9
  jalr s6
  mv t0 , a0
  ld t4, -104(fp)
  ld a2, -112(fp)
  ld t1, -144(fp)
  bnez t0, end_if0_ind180
  j l360_else
end_if0_ind180:
  bnez s9, end_if0_ind181
  j l362_nullobjerr
end_if0_ind181:
  j l363_contobjptr
l362_nullobjerr:
l363_contobjptr:
  ld s1, 0(s9)
  bnez s1, end_if0_ind182
  j l364_nullmerr
end_if0_ind182:
  j l365_contmptr
l364_nullmerr:
l365_contmptr:
  ld s1, 160(s1)
  sd t4, -104(fp)
  sd t1, -144(fp)
  mv a2, s9
  jalr s1
  mv s2 , a0
  ld t4, -104(fp)
  ld t1, -144(fp)
  mv s9, s2
  j l361_endif
l360_else:
  li s5, 0
  mv t1, s5
  j l361_endif
l361_endif:
  j l355_endif
l354_else:
  li s10, 1
  sd s10, -200(fp)
  mv s11, s10
  mv t4, s11
  li s10, 0
  sd s10, -208(fp)
  mv s11, s10
  mv t1, s11
  j l355_endif
l355_endif:
  j l343_endif
l343_endif:
  j l336_startwhile
l337_endwhile:
  sd t4, -216(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -216(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 216

  jr ra

.align 1
.globl Tree_Print
Tree_Print:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 56
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s3, -24(fp)
  sd s8, -32(fp)
  sd s9, -40(fp)
  mv s9, a2
  bnez a2, end_if0_ind183
  j l366_nullobjerr
end_if0_ind183:
  j l367_contobjptr
l366_nullobjerr:
l367_contobjptr:
  ld s8, 0(a2)
  bnez s8, end_if0_ind184
  j l368_nullmerr
end_if0_ind184:
  j l369_contmptr
l368_nullmerr:
l369_contmptr:
  ld s8, 40(s8)
  sd t3, -48(fp)
  mv a2, a2
  mv a3, s9
  jalr s8
  mv t1 , a0
  ld t3, -48(fp)
  mv s3, t1
  li t3, 1
  sd t3, -56(fp)
  ld s3, -24(fp)
  ld s8, -32(fp)
  ld s9, -40(fp)
  ld a0, -56(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 56

  jr ra

.align 1
.globl Tree_RecPrint
Tree_RecPrint:
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
  bnez a3, end_if0_ind185
  j l370_nullobjerr
end_if0_ind185:
  j l371_contobjptr
l370_nullobjerr:
l371_contobjptr:
  ld s4, 0(a3)
  bnez s4, end_if0_ind186
  j l372_nullmerr
end_if0_ind186:
  j l373_contmptr
l372_nullmerr:
l373_contmptr:
  ld s4, 56(s4)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a3
  jalr s4
  mv s7 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  bnez s7, end_if0_ind187
  j l374_else
end_if0_ind187:
  bnez a2, end_if0_ind188
  j l376_nullobjerr
end_if0_ind188:
  j l377_contobjptr
l376_nullobjerr:
l377_contobjptr:
  ld t5, 0(a2)
  bnez t5, end_if0_ind189
  j l378_nullmerr
end_if0_ind189:
  j l379_contmptr
l378_nullmerr:
l379_contmptr:
  ld t5, 40(t5)
  bnez a3, end_if0_ind190
  j l380_nullobjerr
end_if0_ind190:
  j l381_contobjptr
l380_nullobjerr:
l381_contobjptr:
  ld t0, 0(a3)
  bnez t0, end_if0_ind191
  j l382_nullmerr
end_if0_ind191:
  j l383_contmptr
l382_nullmerr:
l383_contmptr:
  ld t0, 128(t0)
  sd t4, -96(fp)
  sd t5, -112(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a3
  jalr t0
  mv s6 , a0
  ld t4, -96(fp)
  ld t5, -112(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  sd t4, -96(fp)
  sd t5, -112(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a2
  mv a3, s6
  jalr t5
  mv s2 , a0
  ld t4, -96(fp)
  ld t5, -112(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv s1, s2
  j l375_endif
l374_else:
  li s5, 1
  mv s1, s5
  j l375_endif
l375_endif:
  bnez a3, end_if0_ind192
  j l384_nullobjerr
end_if0_ind192:
  j l385_contobjptr
l384_nullobjerr:
l385_contobjptr:
  ld t2, 0(a3)
  bnez t2, end_if0_ind193
  j l386_nullmerr
end_if0_ind193:
  j l387_contmptr
l386_nullmerr:
l387_contmptr:
  ld t2, 152(t2)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a3
  jalr t2
  mv t4 , a0
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
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
  bnez a3, end_if0_ind194
  j l388_nullobjerr
end_if0_ind194:
  j l389_contobjptr
l388_nullobjerr:
l389_contobjptr:
  ld s9, 0(a3)
  bnez s9, end_if0_ind195
  j l390_nullmerr
end_if0_ind195:
  j l391_contmptr
l390_nullmerr:
l391_contmptr:
  ld s9, 0(s9)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t3, -152(fp)
  mv a2, a3
  jalr s9
  mv s8 , a0
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t3, -152(fp)
  bnez s8, end_if0_ind196
  j l392_else
end_if0_ind196:
  bnez a2, end_if0_ind197
  j l394_nullobjerr
end_if0_ind197:
  j l395_contobjptr
l394_nullobjerr:
l395_contobjptr:
  ld t1, 0(a2)
  bnez t1, end_if0_ind198
  j l396_nullmerr
end_if0_ind198:
  j l397_contmptr
l396_nullmerr:
l397_contmptr:
  ld t1, 40(t1)
  bnez a3, end_if0_ind199
  j l398_nullobjerr
end_if0_ind199:
  j l399_contobjptr
l398_nullobjerr:
l399_contobjptr:
  ld s3, 0(a3)
  bnez s3, end_if0_ind200
  j l400_nullmerr
end_if0_ind200:
  j l401_contmptr
l400_nullmerr:
l401_contmptr:
  ld s3, 160(s3)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  mv a2, a3
  jalr s3
  mv t3 , a0
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  mv a2, a2
  mv a3, t3
  jalr t1
  mv s4 , a0
  ld t0, -128(fp)
  ld t1, -136(fp)
  mv s1, s4
  j l393_endif
l392_else:
  li s7, 1
  mv s1, s7
  j l393_endif
l393_endif:
  li t0, 1
  sd t0, -160(fp)
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
.globl Tree_accept
Tree_accept:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 64
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s5, -24(fp)
  sd s6, -32(fp)
  sd s1, -40(fp)
  sd s2, -48(fp)
  li t5, 333
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
  bnez a3, end_if0_ind201
  j l402_nullobjerr
end_if0_ind201:
  j l403_contobjptr
l402_nullobjerr:
l403_contobjptr:
  ld s6, 0(a3)
  bnez s6, end_if0_ind202
  j l404_nullmerr
end_if0_ind202:
  j l405_contmptr
l404_nullmerr:
l405_contmptr:
  ld s6, 0(s6)
  sd a2, -56(fp)
  mv a2, a3
  ld a3, -56(fp)
  jalr s6
  mv s2 , a0
  mv s1, s2
  li s5, 0
  sd s5, -64(fp)
  ld s5, -24(fp)
  ld s6, -32(fp)
  ld s1, -40(fp)
  ld s2, -48(fp)
  ld a0, -64(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 64

  jr ra

.align 1
.globl Visitor_visit
Visitor_visit:
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
  bnez a3, end_if0_ind203
  j l406_nullobjerr
end_if0_ind203:
  j l407_contobjptr
l406_nullobjerr:
l407_contobjptr:
  ld t2, 0(a3)
  bnez t2, end_if0_ind204
  j l408_nullmerr
end_if0_ind204:
  j l409_contmptr
l408_nullmerr:
l409_contmptr:
  ld t2, 0(t2)
  sd a2, -96(fp)
  sd t5, -104(fp)
  sd a3, -112(fp)
  sd t0, -120(fp)
  sd t1, -128(fp)
  sd t2, -136(fp)
  sd t3, -144(fp)
  mv a2, a3
  jalr t2
  mv t4 , a0
  ld a2, -96(fp)
  ld t5, -104(fp)
  ld a3, -112(fp)
  ld t0, -120(fp)
  ld t1, -128(fp)
  ld t2, -136(fp)
  ld t3, -144(fp)
  bnez t4, end_if0_ind205
  j l410_else
end_if0_ind205:
  bnez a2, end_if0_ind206
  j l412_nullobjerr
end_if0_ind206:
  j l413_contobjptr
l412_nullobjerr:
l413_contobjptr:
  ld s9, 8(a2)
  bnez a3, end_if0_ind207
  j l414_nullobjerr
end_if0_ind207:
  j l415_contobjptr
l414_nullobjerr:
l415_contobjptr:
  ld s8, 0(a3)
  bnez s8, end_if0_ind208
  j l416_nullmerr
end_if0_ind208:
  j l417_contmptr
l416_nullmerr:
l417_contmptr:
  ld s8, 160(s8)
  sd t4, -152(fp)
  sd a2, -96(fp)
  sd t5, -104(fp)
  sd a3, -112(fp)
  sd t0, -120(fp)
  sd t1, -128(fp)
  sd t2, -136(fp)
  sd t3, -144(fp)
  mv a2, a3
  jalr s8
  mv s3 , a0
  ld t4, -152(fp)
  ld a2, -96(fp)
  ld t5, -104(fp)
  ld a3, -112(fp)
  ld t0, -120(fp)
  ld t1, -128(fp)
  ld t2, -136(fp)
  ld t3, -144(fp)
  mv s9, s3
  sd s9, 8(a2)
  bnez a2, end_if0_ind209
  j l418_nullobjerr
end_if0_ind209:
  j l419_contobjptr
l418_nullobjerr:
l419_contobjptr:
  ld t1, 8(a2)
  bnez t1, end_if0_ind210
  j l420_nullobjerr
end_if0_ind210:
  j l421_contobjptr
l420_nullobjerr:
l421_contobjptr:
  ld t3, 0(t1)
  bnez t3, end_if0_ind211
  j l422_nullmerr
end_if0_ind211:
  j l423_contmptr
l422_nullmerr:
l423_contmptr:
  ld t3, 112(t3)
  sd t4, -152(fp)
  sd t5, -104(fp)
  sd a2, -96(fp)
  sd a3, -112(fp)
  sd t0, -120(fp)
  sd t2, -136(fp)
  sd t3, -144(fp)
  sd a2, -160(fp)
  mv a2, t1
  ld a3, -160(fp)
  jalr t3
  mv s4 , a0
  ld t4, -152(fp)
  ld t5, -104(fp)
  ld a2, -96(fp)
  ld a3, -112(fp)
  ld t0, -120(fp)
  ld t2, -136(fp)
  ld t3, -144(fp)
  mv s7, s4
  j l411_endif
l410_else:
  li t0, 0
  mv s7, t0
  j l411_endif
l411_endif:
  bnez a3, end_if0_ind212
  j l424_nullobjerr
end_if0_ind212:
  j l425_contobjptr
l424_nullobjerr:
l425_contobjptr:
  ld t5, 0(a3)
  bnez t5, end_if0_ind213
  j l426_nullmerr
end_if0_ind213:
  j l427_contmptr
l426_nullmerr:
l427_contmptr:
  ld t5, 56(t5)
  sd t4, -152(fp)
  sd t5, -104(fp)
  sd a2, -96(fp)
  sd a3, -112(fp)
  sd t2, -136(fp)
  mv a2, a3
  jalr t5
  mv s6 , a0
  ld t4, -152(fp)
  ld t5, -104(fp)
  ld a2, -96(fp)
  ld a3, -112(fp)
  ld t2, -136(fp)
  bnez s6, end_if0_ind214
  j l428_else
end_if0_ind214:
  bnez a2, end_if0_ind215
  j l430_nullobjerr
end_if0_ind215:
  j l431_contobjptr
l430_nullobjerr:
l431_contobjptr:
  ld s2, 16(a2)
  bnez a3, end_if0_ind216
  j l432_nullobjerr
end_if0_ind216:
  j l433_contobjptr
l432_nullobjerr:
l433_contobjptr:
  ld s1, 0(a3)
  bnez s1, end_if0_ind217
  j l434_nullmerr
end_if0_ind217:
  j l435_contmptr
l434_nullmerr:
l435_contmptr:
  ld s1, 128(s1)
  sd t4, -152(fp)
  sd a2, -96(fp)
  sd a3, -112(fp)
  sd t2, -136(fp)
  mv a2, a3
  jalr s1
  mv s5 , a0
  ld t4, -152(fp)
  ld a2, -96(fp)
  ld a3, -112(fp)
  ld t2, -136(fp)
  mv s2, s5
  sd s2, 16(a2)
  bnez a2, end_if0_ind218
  j l436_nullobjerr
end_if0_ind218:
  j l437_contobjptr
l436_nullobjerr:
l437_contobjptr:
  ld t2, 16(a2)
  bnez t2, end_if0_ind219
  j l438_nullobjerr
end_if0_ind219:
  j l439_contobjptr
l438_nullobjerr:
l439_contobjptr:
  ld t4, 0(t2)
  bnez t4, end_if0_ind220
  j l440_nullmerr
end_if0_ind220:
  j l441_contmptr
l440_nullmerr:
l441_contmptr:
  ld t4, 112(t4)
  sd t4, -152(fp)
  sd a2, -160(fp)
  mv a2, t2
  ld a3, -160(fp)
  jalr t4
  mv s8 , a0
  ld t4, -152(fp)
  mv s7, s8
  j l429_endif
l428_else:
  li s3, 0
  mv s7, s3
  j l429_endif
l429_endif:
  li s9, 0
  sd s9, -168(fp)
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
.globl MyVisitor_visit
MyVisitor_visit:
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
  bnez a3, end_if0_ind221
  j l442_nullobjerr
end_if0_ind221:
  j l443_contobjptr
l442_nullobjerr:
l443_contobjptr:
  ld t1, 0(a3)
  bnez t1, end_if0_ind222
  j l444_nullmerr
end_if0_ind222:
  j l445_contmptr
l444_nullmerr:
l445_contmptr:
  ld t1, 0(t1)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  mv a2, a3
  jalr t1
  mv t3 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  bnez t3, end_if0_ind223
  j l446_else
end_if0_ind223:
  bnez a2, end_if0_ind224
  j l448_nullobjerr
end_if0_ind224:
  j l449_contobjptr
l448_nullobjerr:
l449_contobjptr:
  ld s4, 8(a2)
  bnez a3, end_if0_ind225
  j l450_nullobjerr
end_if0_ind225:
  j l451_contobjptr
l450_nullobjerr:
l451_contobjptr:
  ld s7, 0(a3)
  bnez s7, end_if0_ind226
  j l452_nullmerr
end_if0_ind226:
  j l453_contmptr
l452_nullmerr:
l453_contmptr:
  ld s7, 160(s7)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a3
  jalr s7
  mv t0 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv s4, t0
  sd s4, 8(a2)
  bnez a2, end_if0_ind227
  j l454_nullobjerr
end_if0_ind227:
  j l455_contobjptr
l454_nullobjerr:
l455_contobjptr:
  ld t5, 8(a2)
  bnez t5, end_if0_ind228
  j l456_nullobjerr
end_if0_ind228:
  j l457_contobjptr
l456_nullobjerr:
l457_contobjptr:
  ld s6, 0(t5)
  bnez s6, end_if0_ind229
  j l458_nullmerr
end_if0_ind229:
  j l459_contmptr
l458_nullmerr:
l459_contmptr:
  ld s6, 112(s6)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  sd a2, -160(fp)
  mv a2, t5
  ld a3, -160(fp)
  jalr s6
  mv s1 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  mv s5, s1
  j l447_endif
l446_else:
  li s2, 0
  mv s5, s2
  j l447_endif
l447_endif:
  bnez a3, end_if0_ind230
  j l460_nullobjerr
end_if0_ind230:
  j l461_contobjptr
l460_nullobjerr:
l461_contobjptr:
  ld t2, 0(a3)
  bnez t2, end_if0_ind231
  j l462_nullmerr
end_if0_ind231:
  j l463_contmptr
l462_nullmerr:
l463_contmptr:
  ld t2, 152(t2)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  mv a2, a3
  jalr t2
  mv t4 , a0
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
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
  bnez a3, end_if0_ind232
  j l464_nullobjerr
end_if0_ind232:
  j l465_contobjptr
l464_nullobjerr:
l465_contobjptr:
  ld s8, 0(a3)
  bnez s8, end_if0_ind233
  j l466_nullmerr
end_if0_ind233:
  j l467_contmptr
l466_nullmerr:
l467_contmptr:
  ld s8, 56(s8)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t3, -152(fp)
  mv a2, a3
  jalr s8
  mv s3 , a0
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t3, -152(fp)
  bnez s3, end_if0_ind234
  j l468_else
end_if0_ind234:
  bnez a2, end_if0_ind235
  j l470_nullobjerr
end_if0_ind235:
  j l471_contobjptr
l470_nullobjerr:
l471_contobjptr:
  ld s9, 16(a2)
  bnez a3, end_if0_ind236
  j l472_nullobjerr
end_if0_ind236:
  j l473_contobjptr
l472_nullobjerr:
l473_contobjptr:
  ld t1, 0(a3)
  bnez t1, end_if0_ind237
  j l474_nullmerr
end_if0_ind237:
  j l475_contmptr
l474_nullmerr:
l475_contmptr:
  ld t1, 128(t1)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  mv a2, a3
  jalr t1
  mv t3 , a0
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  mv s9, t3
  sd s9, 16(a2)
  bnez a2, end_if0_ind238
  j l476_nullobjerr
end_if0_ind238:
  j l477_contobjptr
l476_nullobjerr:
l477_contobjptr:
  ld s7, 16(a2)
  bnez s7, end_if0_ind239
  j l478_nullobjerr
end_if0_ind239:
  j l479_contobjptr
l478_nullobjerr:
l479_contobjptr:
  ld t0, 0(s7)
  bnez t0, end_if0_ind240
  j l480_nullmerr
end_if0_ind240:
  j l481_contmptr
l480_nullmerr:
l481_contmptr:
  ld t0, 112(t0)
  sd t5, -112(fp)
  sd t0, -128(fp)
  sd a2, -160(fp)
  mv a2, s7
  ld a3, -160(fp)
  jalr t0
  mv s4 , a0
  ld t5, -112(fp)
  ld t0, -128(fp)
  mv s5, s4
  j l469_endif
l468_else:
  li t5, 0
  mv s5, t5
  j l469_endif
l469_endif:
  li s6, 0
  sd s6, -168(fp)
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

