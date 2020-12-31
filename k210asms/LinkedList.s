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
  la s1, LL_Start
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
.globl Element_Init
Element_Init:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 48
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s7, -24(fp)
  sd s8, -32(fp)
  sd s9, -40(fp)
  bnez a2, end_if0_ind2
  j l4_nullobjerr
end_if0_ind2:
  j l5_contobjptr
l4_nullobjerr:
l5_contobjptr:
  ld s7, 24(a2)
  mv s7, a3
  sd s7, 24(a2)
  bnez a2, end_if0_ind3
  j l6_nullobjerr
end_if0_ind3:
  j l7_contobjptr
l6_nullobjerr:
l7_contobjptr:
  ld s8, 8(a2)
  mv s8, a4
  sd s8, 8(a2)
  bnez a2, end_if0_ind4
  j l8_nullobjerr
end_if0_ind4:
  j l9_contobjptr
l8_nullobjerr:
l9_contobjptr:
  ld s9, 16(a2)
  mv s9, a5
  sd s9, 16(a2)
  li t0, 1
  sd t0, -48(fp)
  ld s7, -24(fp)
  ld s8, -32(fp)
  ld s9, -40(fp)
  ld a0, -48(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 48

  jr ra

.align 1
.globl Element_GetAge
Element_GetAge:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 24
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  bnez a2, end_if0_ind5
  j l10_nullobjerr
end_if0_ind5:
  j l11_contobjptr
l10_nullobjerr:
l11_contobjptr:
  ld t1, 24(a2)
  sd t1, -24(fp)
  ld a0, -24(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 24

  jr ra

.align 1
.globl Element_GetSalary
Element_GetSalary:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 24
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  bnez a2, end_if0_ind6
  j l12_nullobjerr
end_if0_ind6:
  j l13_contobjptr
l12_nullobjerr:
l13_contobjptr:
  ld t2, 8(a2)
  sd t2, -24(fp)
  ld a0, -24(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 24

  jr ra

.align 1
.globl Element_GetMarried
Element_GetMarried:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 24
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  bnez a2, end_if0_ind7
  j l14_nullobjerr
end_if0_ind7:
  j l15_contobjptr
l14_nullobjerr:
l15_contobjptr:
  ld t3, 16(a2)
  sd t3, -24(fp)
  ld a0, -24(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 24

  jr ra

.align 1
.globl Element_Equal
Element_Equal:
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
  li t4, 1
  mv t5, t4
  bnez a3, end_if0_ind8
  j l16_nullobjerr
end_if0_ind8:
  j l17_contobjptr
l16_nullobjerr:
l17_contobjptr:
  ld s3, 0(a3)
  bnez s3, end_if0_ind9
  j l18_nullmerr
end_if0_ind9:
  j l19_contmptr
l18_nullmerr:
l19_contmptr:
  ld s3, 8(s3)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a3
  jalr s3
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
  mv s2, s1
  bnez a2, end_if0_ind10
  j l20_nullobjerr
end_if0_ind10:
  j l21_contobjptr
l20_nullobjerr:
l21_contobjptr:
  ld s4, 0(a2)
  bnez s4, end_if0_ind11
  j l22_nullmerr
end_if0_ind11:
  j l23_contmptr
l22_nullmerr:
l23_contmptr:
  ld s4, 16(s4)
  bnez a2, end_if0_ind12
  j l24_nullobjerr
end_if0_ind12:
  j l25_contobjptr
l24_nullobjerr:
l25_contobjptr:
  ld s5, 24(a2)
  sd t4, -96(fp)
  sd t5, -112(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a2
  mv a3, s2
  mv a4, s5
  jalr s4
  mv s6 , a0
  ld t4, -96(fp)
  ld t5, -112(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  bnez s6, end_if0_ind13
  j l26_elseneg
end_if0_ind13:
  li s7, 0
  j l27_endneg
l26_elseneg:
  li s7, 1
  j l27_endneg
l27_endneg:
  bnez s7, end_if0_ind14
  j l28_else
end_if0_ind14:
  li s8, 0
  mv t5, s8
  j l29_endif
l28_else:
  bnez a3, end_if0_ind15
  j l30_nullobjerr
end_if0_ind15:
  j l31_contobjptr
l30_nullobjerr:
l31_contobjptr:
  ld s9, 0(a3)
  bnez s9, end_if0_ind16
  j l32_nullmerr
end_if0_ind16:
  j l33_contmptr
l32_nullmerr:
l33_contmptr:
  ld s9, 32(s9)
  sd t4, -96(fp)
  sd a2, -104(fp)
  sd t5, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a3
  jalr s9
  mv t0 , a0
  ld t4, -96(fp)
  ld a2, -104(fp)
  ld t5, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  mv t1, t0
  bnez a2, end_if0_ind17
  j l34_nullobjerr
end_if0_ind17:
  j l35_contobjptr
l34_nullobjerr:
l35_contobjptr:
  ld t2, 0(a2)
  bnez t2, end_if0_ind18
  j l36_nullmerr
end_if0_ind18:
  j l37_contmptr
l36_nullmerr:
l37_contmptr:
  ld t2, 16(t2)
  bnez a2, end_if0_ind19
  j l38_nullobjerr
end_if0_ind19:
  j l39_contobjptr
l38_nullobjerr:
l39_contobjptr:
  ld t3, 8(a2)
  sd t5, -112(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a2
  mv a3, t1
  mv a4, t3
  jalr t2
  mv t4 , a0
  ld t5, -112(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  bnez t4, end_if0_ind20
  j l40_elseneg
end_if0_ind20:
  li s3, 0
  j l41_endneg
l40_elseneg:
  li s3, 1
  j l41_endneg
l41_endneg:
  bnez s3, end_if0_ind21
  j l42_else
end_if0_ind21:
  li s1, 0
  mv t5, s1
  j l43_endif
l42_else:
  bnez a2, end_if0_ind22
  j l44_nullobjerr
end_if0_ind22:
  j l45_contobjptr
l44_nullobjerr:
l45_contobjptr:
  ld s2, 16(a2)
  bnez s2, end_if0_ind23
  j l46_else
end_if0_ind23:
  bnez a3, end_if0_ind24
  j l48_nullobjerr
end_if0_ind24:
  j l49_contobjptr
l48_nullobjerr:
l49_contobjptr:
  ld s4, 0(a3)
  bnez s4, end_if0_ind25
  j l50_nullmerr
end_if0_ind25:
  j l51_contmptr
l50_nullmerr:
l51_contmptr:
  ld s4, 40(s4)
  sd t5, -112(fp)
  sd a2, -104(fp)
  sd a3, -120(fp)
  sd t0, -136(fp)
  sd t1, -144(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a3
  jalr s4
  mv s5 , a0
  ld t5, -112(fp)
  ld a2, -104(fp)
  ld a3, -120(fp)
  ld t0, -136(fp)
  ld t1, -144(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  bnez s5, end_if0_ind26
  j l52_elseneg
end_if0_ind26:
  li s6, 0
  j l53_endneg
l52_elseneg:
  li s6, 1
  j l53_endneg
l53_endneg:
  bnez s6, end_if0_ind27
  j l54_else
end_if0_ind27:
  li s7, 0
  mv t5, s7
  j l55_endif
l54_else:
  li s8, 0
  mv s9, s8
  j l55_endif
l55_endif:
  j l47_endif
l46_else:
  bnez a3, end_if0_ind28
  j l56_nullobjerr
end_if0_ind28:
  j l57_contobjptr
l56_nullobjerr:
l57_contobjptr:
  ld t0, 0(a3)
  bnez t0, end_if0_ind29
  j l58_nullmerr
end_if0_ind29:
  j l59_contmptr
l58_nullmerr:
l59_contmptr:
  ld t0, 40(t0)
  sd t5, -112(fp)
  sd t0, -136(fp)
  sd t2, -152(fp)
  sd t3, -160(fp)
  mv a2, a3
  jalr t0
  mv t1 , a0
  ld t5, -112(fp)
  ld t0, -136(fp)
  ld t2, -152(fp)
  ld t3, -160(fp)
  bnez t1, end_if0_ind30
  j l60_else
end_if0_ind30:
  li t2, 0
  mv t5, t2
  j l61_endif
l60_else:
  li t3, 0
  mv s9, t3
  j l61_endif
l61_endif:
  j l47_endif
l47_endif:
  j l43_endif
l43_endif:
  j l29_endif
l29_endif:
  sd t5, -168(fp)
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
.globl Element_Compare
Element_Compare:
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
  li t4, 0
  mv s3, t4
  li s1, 1
  add s2, a4, s1
  mv s4, s2
  slt s5, a3, a4
  bnez s5, end_if0_ind31
  j l62_else
end_if0_ind31:
  li s6, 0
  mv s3, s6
  j l63_endif
l62_else:
  slt s7, a3, s4
  bnez s7, end_if0_ind32
  j l64_elseneg
end_if0_ind32:
  li s8, 0
  j l65_endneg
l64_elseneg:
  li s8, 1
  j l65_endneg
l65_endneg:
  bnez s8, end_if0_ind33
  j l66_else
end_if0_ind33:
  li s9, 0
  mv s3, s9
  j l67_endif
l66_else:
  li t0, 1
  mv s3, t0
  j l67_endif
l67_endif:
  j l63_endif
l63_endif:
  sd s3, -96(fp)
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
.globl List_Init
List_Init:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 24
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  bnez a2, end_if0_ind34
  j l68_nullobjerr
end_if0_ind34:
  j l69_contobjptr
l68_nullobjerr:
l69_contobjptr:
  ld t1, 24(a2)
  li t2, 1
  mv t1, t2
  sd t1, 24(a2)
  li t3, 1
  sd t3, -24(fp)
  ld a0, -24(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 24

  jr ra

.align 1
.globl List_InitNew
List_InitNew:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 40
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s1, -24(fp)
  sd s2, -32(fp)
  bnez a2, end_if0_ind35
  j l70_nullobjerr
end_if0_ind35:
  j l71_contobjptr
l70_nullobjerr:
l71_contobjptr:
  ld t5, 24(a2)
  mv t5, a5
  sd t5, 24(a2)
  bnez a2, end_if0_ind36
  j l72_nullobjerr
end_if0_ind36:
  j l73_contobjptr
l72_nullobjerr:
l73_contobjptr:
  ld t4, 8(a2)
  mv t4, a3
  sd t4, 8(a2)
  bnez a2, end_if0_ind37
  j l74_nullobjerr
end_if0_ind37:
  j l75_contobjptr
l74_nullobjerr:
l75_contobjptr:
  ld s1, 16(a2)
  mv s1, a4
  sd s1, 16(a2)
  li s2, 1
  sd s2, -40(fp)
  ld s1, -24(fp)
  ld s2, -32(fp)
  ld a0, -40(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 40

  jr ra

.align 1
.globl List_Insert
List_Insert:
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
  sd s9, -72(fp)
  mv s5, a2
  li s6, 32
  mv a0, s6
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
  mv s4, a0
  li s6, 80
  mv a0, s6
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
  la s6, List_Delete
  sd s6, 0(s7)
  la s6, List_Insert
  sd s6, 8(s7)
  la s6, List_Search
  sd s6, 16(s7)
  la s6, List_InitNew
  sd s6, 24(s7)
  la s6, List_Print
  sd s6, 32(s7)
  la s6, List_SetNext
  sd s6, 40(s7)
  la s6, List_Init
  sd s6, 48(s7)
  la s6, List_GetNext
  sd s6, 56(s7)
  la s6, List_GetEnd
  sd s6, 64(s7)
  la s6, List_GetElem
  sd s6, 72(s7)
  mv s6, s7
  sd s6, 0(s4)
  mv s8, s4
  bnez s8, end_if0_ind38
  j l76_nullobjerr
end_if0_ind38:
  j l77_contobjptr
l76_nullobjerr:
l77_contobjptr:
  ld s9, 0(s8)
  bnez s9, end_if0_ind39
  j l78_nullmerr
end_if0_ind39:
  j l79_contmptr
l78_nullmerr:
l79_contmptr:
  ld s9, 24(s9)
  li t0, 0
  sd t2, -80(fp)
  mv a2, s8
  mv a3, a3
  mv a4, s5
  mv a5, t0
  jalr s9
  mv s3 , a0
  ld t2, -80(fp)
  mv t2, s3
  sd s8, -88(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld a0, -88(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 88

  jr ra

.align 1
.globl List_SetNext
List_SetNext:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 24
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  bnez a2, end_if0_ind40
  j l80_nullobjerr
end_if0_ind40:
  j l81_contobjptr
l80_nullobjerr:
l81_contobjptr:
  ld t1, 16(a2)
  mv t1, a3
  sd t1, 16(a2)
  li t3, 1
  sd t3, -24(fp)
  ld a0, -24(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 24

  jr ra

.align 1
.globl List_Delete
List_Delete:
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
  mv t5, a2
  li t4, 0
  mv s1, t4
  li s2, 0
  li s7, 1
  sub s6, s2, s7
  mv s4, s6
  mv s5, a2
  mv s9, a2
  bnez a2, end_if0_ind41
  j l82_nullobjerr
end_if0_ind41:
  j l83_contobjptr
l82_nullobjerr:
l83_contobjptr:
  ld t0, 24(a2)
  mv s3, t0
  bnez a2, end_if0_ind42
  j l84_nullobjerr
end_if0_ind42:
  j l85_contobjptr
l84_nullobjerr:
l85_contobjptr:
  ld t2, 8(a2)
  mv s8, t2
l86_startwhile:
  bnez s3, end_if0_ind43
  j l88_elseneg
end_if0_ind43:
  li s10, 0
  sd s10, -96(fp)
  j l89_endneg
l88_elseneg:
  li s10, 1
  sd s10, -96(fp)
  j l89_endneg
l89_endneg:
  bnez s1, end_if0_ind44
  j l90_elseneg
end_if0_ind44:
  li s10, 0
  sd s10, -104(fp)
  j l91_endneg
l90_elseneg:
  li s10, 1
  sd s10, -104(fp)
  j l91_endneg
l91_endneg:
  ld s10, -96(fp)
  ld s11, -104(fp)
  mul s10, s10, s11
  sd s10, -112(fp)
  ld s11, -112(fp)
  bnez s11, end_if0_ind45
  j l87_endwhile
end_if0_ind45:
  bnez a3, end_if0_ind46
  j l92_nullobjerr
end_if0_ind46:
  j l93_contobjptr
l92_nullobjerr:
l93_contobjptr:
  ld s10, 0(a3)
  sd s10, -120(fp)
  ld s11, -120(fp)
  bnez s11, end_if0_ind47
  j l94_nullmerr
end_if0_ind47:
  j l95_contmptr
l94_nullmerr:
l95_contmptr:
  ld s11, -120(fp)
  ld s10, 24(s11)
  sd s10, -120(fp)
  sd a2, -128(fp)
  sd t5, -136(fp)
  sd a3, -144(fp)
  sd t3, -152(fp)
  ld s10, -120(fp)
  mv a2, a3
  mv a3, s8
  jalr s10
  mv t1 , a0
  ld a2, -128(fp)
  ld t5, -136(fp)
  ld a3, -144(fp)
  ld t3, -152(fp)
  bnez t1, end_if0_ind48
  j l96_else
end_if0_ind48:
  li s10, 1
  sd s10, -160(fp)
  mv s11, s10
  mv s1, s11
  li s10, 0
  sd s10, -168(fp)
  mv s11, s10
  slt s11, s4, s11
  sd s11, -176(fp)
  ld s11, -176(fp)
  bnez s11, end_if0_ind49
  j l98_else
end_if0_ind49:
  bnez s5, end_if0_ind50
  j l100_nullobjerr
end_if0_ind50:
  j l101_contobjptr
l100_nullobjerr:
l101_contobjptr:
  ld s10, 0(s5)
  sd s10, -184(fp)
  ld s11, -184(fp)
  bnez s11, end_if0_ind51
  j l102_nullmerr
end_if0_ind51:
  j l103_contmptr
l102_nullmerr:
l103_contmptr:
  ld s11, -184(fp)
  ld s10, 56(s11)
  sd s10, -184(fp)
  sd t5, -136(fp)
  sd a2, -128(fp)
  sd a3, -144(fp)
  sd t3, -152(fp)
  ld s10, -184(fp)
  mv a2, s5
  jalr s10
  mv s11 , a0
  sd s11, -192(fp)
  ld t5, -136(fp)
  ld a2, -128(fp)
  ld a3, -144(fp)
  ld t3, -152(fp)
  mv t5, s11
  j l99_endif
l98_else:
  li s10, 0
  sd s10, -200(fp)
  li s10, 555
  sd s10, -208(fp)
  ld s10, -200(fp)
  ld s11, -208(fp)
  sub s11, s10, s11
  sd s11, -216(fp)
  mv s10, s11
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
  bnez s9, end_if0_ind52
  j l104_nullobjerr
end_if0_ind52:
  j l105_contobjptr
l104_nullobjerr:
l105_contobjptr:
  ld s10, 0(s9)
  sd s10, -224(fp)
  ld s11, -224(fp)
  bnez s11, end_if0_ind53
  j l106_nullmerr
end_if0_ind53:
  j l107_contmptr
l106_nullmerr:
l107_contmptr:
  ld s11, -224(fp)
  ld s10, 40(s11)
  sd s10, -224(fp)
  bnez s5, end_if0_ind54
  j l108_nullobjerr
end_if0_ind54:
  j l109_contobjptr
l108_nullobjerr:
l109_contobjptr:
  ld s10, 0(s5)
  sd s10, -232(fp)
  ld s11, -232(fp)
  bnez s11, end_if0_ind55
  j l110_nullmerr
end_if0_ind55:
  j l111_contmptr
l110_nullmerr:
l111_contmptr:
  ld s11, -232(fp)
  ld s10, 56(s11)
  sd s10, -232(fp)
  sd a2, -128(fp)
  sd t5, -136(fp)
  sd a3, -144(fp)
  sd t3, -152(fp)
  ld s10, -232(fp)
  mv a2, s5
  jalr s10
  mv s11 , a0
  sd s11, -240(fp)
  ld a2, -128(fp)
  ld t5, -136(fp)
  ld a3, -144(fp)
  ld t3, -152(fp)
  sd a2, -128(fp)
  sd t5, -136(fp)
  sd t3, -152(fp)
  ld s10, -224(fp)
  mv a2, s9
  ld a3, -240(fp)
  jalr s10
  mv s11 , a0
  sd s11, -248(fp)
  ld a2, -128(fp)
  ld t5, -136(fp)
  ld t3, -152(fp)
  mv s10, s11
  sd s10, -256(fp)
  li s10, 0
  sd s10, -264(fp)
  li s10, 555
  sd s10, -272(fp)
  ld s10, -264(fp)
  ld s11, -272(fp)
  sub s11, s10, s11
  sd s11, -280(fp)
  mv s10, s11
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
  j l99_endif
l99_endif:
  j l97_endif
l96_else:
  li s10, 0
  sd s10, -288(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -296(fp)
  j l97_endif
l97_endif:
  bnez s1, end_if0_ind56
  j l112_elseneg
end_if0_ind56:
  li s10, 0
  sd s10, -304(fp)
  j l113_endneg
l112_elseneg:
  li s10, 1
  sd s10, -304(fp)
  j l113_endneg
l113_endneg:
  ld s11, -304(fp)
  bnez s11, end_if0_ind57
  j l114_else
end_if0_ind57:
  mv s9, s5
  bnez s5, end_if0_ind58
  j l116_nullobjerr
end_if0_ind58:
  j l117_contobjptr
l116_nullobjerr:
l117_contobjptr:
  ld s10, 0(s5)
  sd s10, -312(fp)
  ld s11, -312(fp)
  bnez s11, end_if0_ind59
  j l118_nullmerr
end_if0_ind59:
  j l119_contmptr
l118_nullmerr:
l119_contmptr:
  ld s11, -312(fp)
  ld s10, 56(s11)
  sd s10, -312(fp)
  sd a2, -128(fp)
  sd t5, -136(fp)
  ld s10, -312(fp)
  mv a2, s5
  jalr s10
  mv t3 , a0
  ld a2, -128(fp)
  ld t5, -136(fp)
  mv s5, t3
  bnez s5, end_if0_ind60
  j l120_nullobjerr
end_if0_ind60:
  j l121_contobjptr
l120_nullobjerr:
l121_contobjptr:
  ld s10, 0(s5)
  sd s10, -320(fp)
  ld s11, -320(fp)
  bnez s11, end_if0_ind61
  j l122_nullmerr
end_if0_ind61:
  j l123_contmptr
l122_nullmerr:
l123_contmptr:
  ld s11, -320(fp)
  ld s10, 64(s11)
  sd s10, -320(fp)
  sd a2, -128(fp)
  sd t5, -136(fp)
  ld s10, -320(fp)
  mv a2, s5
  jalr s10
  mv s11 , a0
  sd s11, -328(fp)
  ld a2, -128(fp)
  ld t5, -136(fp)
  mv s3, s11
  bnez s5, end_if0_ind62
  j l124_nullobjerr
end_if0_ind62:
  j l125_contobjptr
l124_nullobjerr:
l125_contobjptr:
  ld s10, 0(s5)
  sd s10, -336(fp)
  ld s11, -336(fp)
  bnez s11, end_if0_ind63
  j l126_nullmerr
end_if0_ind63:
  j l127_contmptr
l126_nullmerr:
l127_contmptr:
  ld s11, -336(fp)
  ld s10, 72(s11)
  sd s10, -336(fp)
  sd t5, -136(fp)
  ld s10, -336(fp)
  mv a2, s5
  jalr s10
  mv s11 , a0
  sd s11, -344(fp)
  ld t5, -136(fp)
  mv s8, s11
  li s10, 1
  sd s10, -352(fp)
  mv s11, s10
  mv s4, s11
  j l115_endif
l114_else:
  li s10, 0
  sd s10, -360(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -296(fp)
  j l115_endif
l115_endif:
  j l86_startwhile
l87_endwhile:
  sd t5, -368(fp)
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
.globl List_Search
List_Search:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 176
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
  li t4, 0
  mv s1, t4
  mv s2, a2
  bnez a2, end_if0_ind64
  j l128_nullobjerr
end_if0_ind64:
  j l129_contobjptr
l128_nullobjerr:
l129_contobjptr:
  ld s7, 24(a2)
  mv s6, s7
  bnez a2, end_if0_ind65
  j l130_nullobjerr
end_if0_ind65:
  j l131_contobjptr
l130_nullobjerr:
l131_contobjptr:
  ld s4, 8(a2)
  mv s5, s4
l132_startwhile:
  bnez s6, end_if0_ind66
  j l134_elseneg
end_if0_ind66:
  li s10, 0
  sd s10, -96(fp)
  j l135_endneg
l134_elseneg:
  li s10, 1
  sd s10, -96(fp)
  j l135_endneg
l135_endneg:
  ld s11, -96(fp)
  bnez s11, end_if0_ind67
  j l133_endwhile
end_if0_ind67:
  bnez a3, end_if0_ind68
  j l136_nullobjerr
end_if0_ind68:
  j l137_contobjptr
l136_nullobjerr:
l137_contobjptr:
  ld s10, 0(a3)
  sd s10, -104(fp)
  ld s11, -104(fp)
  bnez s11, end_if0_ind69
  j l138_nullmerr
end_if0_ind69:
  j l139_contmptr
l138_nullmerr:
l139_contmptr:
  ld s11, -104(fp)
  ld s10, 24(s11)
  sd s10, -104(fp)
  sd t5, -112(fp)
  sd a2, -120(fp)
  sd t0, -128(fp)
  sd t1, -136(fp)
  sd t2, -144(fp)
  sd t3, -152(fp)
  ld s10, -104(fp)
  mv a2, a3
  mv a3, s5
  jalr s10
  mv s11 , a0
  sd s11, -160(fp)
  ld t5, -112(fp)
  ld a2, -120(fp)
  ld t0, -128(fp)
  ld t1, -136(fp)
  ld t2, -144(fp)
  ld t3, -152(fp)
  ld s11, -160(fp)
  bnez s11, end_if0_ind70
  j l140_else
end_if0_ind70:
  li s10, 1
  sd s10, -168(fp)
  mv s11, s10
  mv s1, s11
  j l141_endif
l140_else:
  li t5, 0
  mv t2, t5
  j l141_endif
l141_endif:
  bnez s2, end_if0_ind71
  j l142_nullobjerr
end_if0_ind71:
  j l143_contobjptr
l142_nullobjerr:
l143_contobjptr:
  ld t3, 0(s2)
  bnez t3, end_if0_ind72
  j l144_nullmerr
end_if0_ind72:
  j l145_contmptr
l144_nullmerr:
l145_contmptr:
  ld t3, 56(t3)
  sd a2, -120(fp)
  sd t0, -128(fp)
  sd t3, -152(fp)
  mv a2, s2
  jalr t3
  mv t1 , a0
  ld a2, -120(fp)
  ld t0, -128(fp)
  ld t3, -152(fp)
  mv s2, t1
  bnez s2, end_if0_ind73
  j l146_nullobjerr
end_if0_ind73:
  j l147_contobjptr
l146_nullobjerr:
l147_contobjptr:
  ld s8, 0(s2)
  bnez s8, end_if0_ind74
  j l148_nullmerr
end_if0_ind74:
  j l149_contmptr
l148_nullmerr:
l149_contmptr:
  ld s8, 64(s8)
  sd a2, -120(fp)
  sd t0, -128(fp)
  mv a2, s2
  jalr s8
  mv s3 , a0
  ld a2, -120(fp)
  ld t0, -128(fp)
  mv s6, s3
  bnez s2, end_if0_ind75
  j l150_nullobjerr
end_if0_ind75:
  j l151_contobjptr
l150_nullobjerr:
l151_contobjptr:
  ld t0, 0(s2)
  bnez t0, end_if0_ind76
  j l152_nullmerr
end_if0_ind76:
  j l153_contmptr
l152_nullmerr:
l153_contmptr:
  ld t0, 72(t0)
  sd t0, -128(fp)
  mv a2, s2
  jalr t0
  mv s9 , a0
  ld t0, -128(fp)
  mv s5, s9
  j l132_startwhile
l133_endwhile:
  sd s1, -176(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -176(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 176

  jr ra

.align 1
.globl List_GetEnd
List_GetEnd:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 24
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  bnez a2, end_if0_ind77
  j l154_nullobjerr
end_if0_ind77:
  j l155_contobjptr
l154_nullobjerr:
l155_contobjptr:
  ld t4, 24(a2)
  sd t4, -24(fp)
  ld a0, -24(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 24

  jr ra

.align 1
.globl List_GetElem
List_GetElem:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 32
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s2, -24(fp)
  bnez a2, end_if0_ind78
  j l156_nullobjerr
end_if0_ind78:
  j l157_contobjptr
l156_nullobjerr:
l157_contobjptr:
  ld s2, 8(a2)
  sd s2, -32(fp)
  ld s2, -24(fp)
  ld a0, -32(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 32

  jr ra

.align 1
.globl List_GetNext
List_GetNext:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 32
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s7, -24(fp)
  bnez a2, end_if0_ind79
  j l158_nullobjerr
end_if0_ind79:
  j l159_contobjptr
l158_nullobjerr:
l159_contobjptr:
  ld s7, 16(a2)
  sd s7, -32(fp)
  ld s7, -24(fp)
  ld a0, -32(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 32

  jr ra

.align 1
.globl List_Print
List_Print:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 144
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
  mv s6, a2
  bnez a2, end_if0_ind80
  j l160_nullobjerr
end_if0_ind80:
  j l161_contobjptr
l160_nullobjerr:
l161_contobjptr:
  ld s4, 24(a2)
  mv s5, s4
  bnez a2, end_if0_ind81
  j l162_nullobjerr
end_if0_ind81:
  j l163_contobjptr
l162_nullobjerr:
l163_contobjptr:
  ld s9, 8(a2)
  mv t0, s9
l164_startwhile:
  bnez s5, end_if0_ind82
  j l166_elseneg
end_if0_ind82:
  li s7, 0
  j l167_endneg
l166_elseneg:
  li s7, 1
  j l167_endneg
l167_endneg:
  bnez s7, end_if0_ind83
  j l165_endwhile
end_if0_ind83:
  bnez t0, end_if0_ind84
  j l168_nullobjerr
end_if0_ind84:
  j l169_contobjptr
l168_nullobjerr:
l169_contobjptr:
  ld s2, 0(t0)
  bnez s2, end_if0_ind85
  j l170_nullmerr
end_if0_ind85:
  j l171_contmptr
l170_nullmerr:
l171_contmptr:
  ld s2, 8(s2)
  sd t5, -96(fp)
  sd a2, -104(fp)
  sd t0, -112(fp)
  sd t1, -120(fp)
  sd t2, -128(fp)
  sd t3, -136(fp)
  mv a2, t0
  jalr s2
  mv t4 , a0
  ld t5, -96(fp)
  ld a2, -104(fp)
  ld t0, -112(fp)
  ld t1, -120(fp)
  ld t2, -128(fp)
  ld t3, -136(fp)
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
  bnez s6, end_if0_ind86
  j l172_nullobjerr
end_if0_ind86:
  j l173_contobjptr
l172_nullobjerr:
l173_contobjptr:
  ld s1, 0(s6)
  bnez s1, end_if0_ind87
  j l174_nullmerr
end_if0_ind87:
  j l175_contmptr
l174_nullmerr:
l175_contmptr:
  ld s1, 56(s1)
  sd a2, -104(fp)
  sd t0, -112(fp)
  sd t1, -120(fp)
  sd t2, -128(fp)
  sd t3, -136(fp)
  mv a2, s6
  jalr s1
  mv t5 , a0
  ld a2, -104(fp)
  ld t0, -112(fp)
  ld t1, -120(fp)
  ld t2, -128(fp)
  ld t3, -136(fp)
  mv s6, t5
  bnez s6, end_if0_ind88
  j l176_nullobjerr
end_if0_ind88:
  j l177_contobjptr
l176_nullobjerr:
l177_contobjptr:
  ld t3, 0(s6)
  bnez t3, end_if0_ind89
  j l178_nullmerr
end_if0_ind89:
  j l179_contmptr
l178_nullmerr:
l179_contmptr:
  ld t3, 64(t3)
  sd a2, -104(fp)
  sd t0, -112(fp)
  sd t2, -128(fp)
  sd t3, -136(fp)
  mv a2, s6
  jalr t3
  mv t1 , a0
  ld a2, -104(fp)
  ld t0, -112(fp)
  ld t2, -128(fp)
  ld t3, -136(fp)
  mv s5, t1
  bnez s6, end_if0_ind90
  j l180_nullobjerr
end_if0_ind90:
  j l181_contobjptr
l180_nullobjerr:
l181_contobjptr:
  ld s8, 0(s6)
  bnez s8, end_if0_ind91
  j l182_nullmerr
end_if0_ind91:
  j l183_contmptr
l182_nullmerr:
l183_contmptr:
  ld s8, 72(s8)
  sd t0, -112(fp)
  mv a2, s6
  jalr s8
  mv t2 , a0
  ld t0, -112(fp)
  mv t0, t2
  j l164_startwhile
l165_endwhile:
  li s3, 1
  sd s3, -144(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -144(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 144

  jr ra

.align 1
.globl LL_Start
LL_Start:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 176
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
  li s6, 32
  mv a0, s6
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
  mv s4, a0
  li s6, 80
  mv a0, s6
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
  la s6, List_Delete
  sd s6, 0(s5)
  la s6, List_Insert
  sd s6, 8(s5)
  la s6, List_Search
  sd s6, 16(s5)
  la s6, List_InitNew
  sd s6, 24(s5)
  la s6, List_Print
  sd s6, 32(s5)
  la s6, List_SetNext
  sd s6, 40(s5)
  la s6, List_Init
  sd s6, 48(s5)
  la s6, List_GetNext
  sd s6, 56(s5)
  la s6, List_GetEnd
  sd s6, 64(s5)
  la s6, List_GetElem
  sd s6, 72(s5)
  mv s6, s5
  sd s6, 0(s4)
  mv s9, s4
  bnez s9, end_if0_ind92
  j l184_nullobjerr
end_if0_ind92:
  j l185_contobjptr
l184_nullobjerr:
l185_contobjptr:
  ld t0, 0(s9)
  bnez t0, end_if0_ind93
  j l186_nullmerr
end_if0_ind93:
  j l187_contmptr
l186_nullmerr:
l187_contmptr:
  ld t0, 48(t0)
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t3, -160(fp)
  mv a2, s9
  jalr t0
  mv t2 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t3, -160(fp)
  mv s8, t2
  mv t1, s9
  bnez t1, end_if0_ind94
  j l188_nullobjerr
end_if0_ind94:
  j l189_contobjptr
l188_nullobjerr:
l189_contobjptr:
  ld t3, 0(t1)
  bnez t3, end_if0_ind95
  j l190_nullmerr
end_if0_ind95:
  j l191_contmptr
l190_nullmerr:
l191_contmptr:
  ld t3, 48(t3)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, t1
  jalr t3
  mv t5 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv s8, t5
  bnez t1, end_if0_ind96
  j l192_nullobjerr
end_if0_ind96:
  j l193_contobjptr
l192_nullobjerr:
l193_contobjptr:
  ld s1, 0(t1)
  bnez s1, end_if0_ind97
  j l194_nullmerr
end_if0_ind97:
  j l195_contmptr
l194_nullmerr:
l195_contmptr:
  ld s1, 32(s1)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, t1
  jalr s1
  mv t4 , a0
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv s8, t4
  li s2, 32
  mv a0, s2
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
  li s2, 48
  mv a0, s2
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
  la s2, Element_Init
  sd s2, 0(s3)
  la s2, Element_GetAge
  sd s2, 8(s3)
  la s2, Element_Compare
  sd s2, 16(s3)
  la s2, Element_Equal
  sd s2, 24(s3)
  la s2, Element_GetSalary
  sd s2, 32(s3)
  la s2, Element_GetMarried
  sd s2, 40(s3)
  mv s2, s3
  sd s2, 0(s7)
  mv s5, s7
  bnez s5, end_if0_ind98
  j l196_nullobjerr
end_if0_ind98:
  j l197_contobjptr
l196_nullobjerr:
l197_contobjptr:
  ld s6, 0(s5)
  bnez s6, end_if0_ind99
  j l198_nullmerr
end_if0_ind99:
  j l199_contmptr
l198_nullmerr:
l199_contmptr:
  ld s6, 0(s6)
  li s4, 25
  li t0, 37000
  li t2, 0
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, s5
  mv a3, s4
  mv a4, t0
  mv a5, t2
  jalr s6
  mv s8 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv s8, s8
  bnez t1, end_if0_ind100
  j l200_nullobjerr
end_if0_ind100:
  j l201_contobjptr
l200_nullobjerr:
l201_contobjptr:
  ld s9, 0(t1)
  bnez s9, end_if0_ind101
  j l202_nullmerr
end_if0_ind101:
  j l203_contmptr
l202_nullmerr:
l203_contmptr:
  ld s9, 8(s9)
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  mv a2, t1
  mv a3, s5
  jalr s9
  mv t3 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  mv t1, t3
  bnez t1, end_if0_ind102
  j l204_nullobjerr
end_if0_ind102:
  j l205_contobjptr
l204_nullobjerr:
l205_contobjptr:
  ld t5, 0(t1)
  bnez t5, end_if0_ind103
  j l206_nullmerr
end_if0_ind103:
  j l207_contmptr
l206_nullmerr:
l207_contmptr:
  ld t5, 32(t5)
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, t1
  jalr t5
  mv s1 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv s8, s1
  li t4, 10000000
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
  li s2, 32
  mv a0, s2
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
  li s2, 48
  mv a0, s2
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
  la s2, Element_Init
  sd s2, 0(s3)
  la s2, Element_GetAge
  sd s2, 8(s3)
  la s2, Element_Compare
  sd s2, 16(s3)
  la s2, Element_Equal
  sd s2, 24(s3)
  la s2, Element_GetSalary
  sd s2, 32(s3)
  la s2, Element_GetMarried
  sd s2, 40(s3)
  mv s2, s3
  sd s2, 0(s7)
  mv s5, s7
  bnez s5, end_if0_ind104
  j l208_nullobjerr
end_if0_ind104:
  j l209_contobjptr
l208_nullobjerr:
l209_contobjptr:
  ld s6, 0(s5)
  bnez s6, end_if0_ind105
  j l210_nullmerr
end_if0_ind105:
  j l211_contmptr
l210_nullmerr:
l211_contmptr:
  ld s6, 0(s6)
  li s4, 39
  li t0, 42000
  li t2, 1
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, s5
  mv a3, s4
  mv a4, t0
  mv a5, t2
  jalr s6
  mv s8 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv s8, s8
  mv s9, s5
  bnez t1, end_if0_ind106
  j l212_nullobjerr
end_if0_ind106:
  j l213_contobjptr
l212_nullobjerr:
l213_contobjptr:
  ld t3, 0(t1)
  bnez t3, end_if0_ind107
  j l214_nullmerr
end_if0_ind107:
  j l215_contmptr
l214_nullmerr:
l215_contmptr:
  ld t3, 8(t3)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, t1
  mv a3, s5
  jalr t3
  mv t5 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv t1, t5
  bnez t1, end_if0_ind108
  j l216_nullobjerr
end_if0_ind108:
  j l217_contobjptr
l216_nullobjerr:
l217_contobjptr:
  ld s1, 0(t1)
  bnez s1, end_if0_ind109
  j l218_nullmerr
end_if0_ind109:
  j l219_contmptr
l218_nullmerr:
l219_contmptr:
  ld s1, 32(s1)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, t1
  jalr s1
  mv t4 , a0
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv s8, t4
  li s2, 10000000
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
  li s7, 32
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
  mv s6, a0
  li s7, 48
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
  mv s3, a0
  la s7, Element_Init
  sd s7, 0(s3)
  la s7, Element_GetAge
  sd s7, 8(s3)
  la s7, Element_Compare
  sd s7, 16(s3)
  la s7, Element_Equal
  sd s7, 24(s3)
  la s7, Element_GetSalary
  sd s7, 32(s3)
  la s7, Element_GetMarried
  sd s7, 40(s3)
  mv s7, s3
  sd s7, 0(s6)
  mv s5, s6
  bnez s5, end_if0_ind110
  j l220_nullobjerr
end_if0_ind110:
  j l221_contobjptr
l220_nullobjerr:
l221_contobjptr:
  ld s4, 0(s5)
  bnez s4, end_if0_ind111
  j l222_nullmerr
end_if0_ind111:
  j l223_contmptr
l222_nullmerr:
l223_contmptr:
  ld s4, 0(s4)
  li t0, 22
  li t2, 34000
  li s8, 0
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  mv a2, s5
  mv a3, t0
  mv a4, t2
  mv a5, s8
  jalr s4
  mv t3 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  mv s8, t3
  bnez t1, end_if0_ind112
  j l224_nullobjerr
end_if0_ind112:
  j l225_contobjptr
l224_nullobjerr:
l225_contobjptr:
  ld t5, 0(t1)
  bnez t5, end_if0_ind113
  j l226_nullmerr
end_if0_ind113:
  j l227_contmptr
l226_nullmerr:
l227_contmptr:
  ld t5, 8(t5)
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, t1
  mv a3, s5
  jalr t5
  mv s1 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv t1, s1
  bnez t1, end_if0_ind114
  j l228_nullobjerr
end_if0_ind114:
  j l229_contobjptr
l228_nullobjerr:
l229_contobjptr:
  ld t4, 0(t1)
  bnez t4, end_if0_ind115
  j l230_nullmerr
end_if0_ind115:
  j l231_contmptr
l230_nullmerr:
l231_contmptr:
  ld t4, 32(t4)
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, t1
  jalr t4
  mv s2 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv s8, s2
  li s7, 32
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
  mv s6, a0
  li s7, 48
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
  mv s3, a0
  la s7, Element_Init
  sd s7, 0(s3)
  la s7, Element_GetAge
  sd s7, 8(s3)
  la s7, Element_Compare
  sd s7, 16(s3)
  la s7, Element_Equal
  sd s7, 24(s3)
  la s7, Element_GetSalary
  sd s7, 32(s3)
  la s7, Element_GetMarried
  sd s7, 40(s3)
  mv s7, s3
  sd s7, 0(s6)
  mv s4, s6
  bnez s4, end_if0_ind116
  j l232_nullobjerr
end_if0_ind116:
  j l233_contobjptr
l232_nullobjerr:
l233_contobjptr:
  ld t0, 0(s4)
  bnez t0, end_if0_ind117
  j l234_nullmerr
end_if0_ind117:
  j l235_contmptr
l234_nullmerr:
l235_contmptr:
  ld t0, 0(t0)
  li t2, 27
  li s8, 34000
  li t3, 0
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, s4
  mv a3, t2
  mv a4, s8
  mv a5, t3
  jalr t0
  mv t5 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv s8, t5
  bnez t1, end_if0_ind118
  j l236_nullobjerr
end_if0_ind118:
  j l237_contobjptr
l236_nullobjerr:
l237_contobjptr:
  ld s1, 0(t1)
  bnez s1, end_if0_ind119
  j l238_nullmerr
end_if0_ind119:
  j l239_contmptr
l238_nullmerr:
l239_contmptr:
  ld s1, 16(s1)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, t1
  mv a3, s9
  jalr s1
  mv t4 , a0
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
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
  bnez t1, end_if0_ind120
  j l240_nullobjerr
end_if0_ind120:
  j l241_contobjptr
l240_nullobjerr:
l241_contobjptr:
  ld s2, 0(t1)
  bnez s2, end_if0_ind121
  j l242_nullmerr
end_if0_ind121:
  j l243_contmptr
l242_nullmerr:
l243_contmptr:
  ld s2, 16(s2)
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd a4, -128(fp)
  sd a5, -136(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, t1
  mv a3, s4
  jalr s2
  mv s7 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld a4, -128(fp)
  ld a5, -136(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
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
  li s6, 10000000
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
  li t0, 32
  mv a0, t0
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
  mv t2, a0
  li t0, 48
  mv a0, t0
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
  la t0, Element_Init
  sd t0, 0(s3)
  la t0, Element_GetAge
  sd t0, 8(s3)
  la t0, Element_Compare
  sd t0, 16(s3)
  la t0, Element_Equal
  sd t0, 24(s3)
  la t0, Element_GetSalary
  sd t0, 32(s3)
  la t0, Element_GetMarried
  sd t0, 40(s3)
  mv t0, s3
  sd t0, 0(t2)
  mv s5, t2
  bnez s5, end_if0_ind122
  j l244_nullobjerr
end_if0_ind122:
  j l245_contobjptr
l244_nullobjerr:
l245_contobjptr:
  ld s8, 0(s5)
  bnez s8, end_if0_ind123
  j l246_nullmerr
end_if0_ind123:
  j l247_contmptr
l246_nullmerr:
l247_contmptr:
  ld s8, 0(s8)
  li t3, 28
  li t5, 35000
  li s1, 0
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, s5
  mv a3, t3
  mv a4, t5
  mv a5, s1
  jalr s8
  mv t4 , a0
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv s8, t4
  bnez t1, end_if0_ind124
  j l248_nullobjerr
end_if0_ind124:
  j l249_contobjptr
l248_nullobjerr:
l249_contobjptr:
  ld s4, 0(t1)
  bnez s4, end_if0_ind125
  j l250_nullmerr
end_if0_ind125:
  j l251_contmptr
l250_nullmerr:
l251_contmptr:
  ld s4, 8(s4)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, t1
  mv a3, s5
  jalr s4
  mv s2 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv t1, s2
  bnez t1, end_if0_ind126
  j l252_nullobjerr
end_if0_ind126:
  j l253_contobjptr
l252_nullobjerr:
l253_contobjptr:
  ld s7, 0(t1)
  bnez s7, end_if0_ind127
  j l254_nullmerr
end_if0_ind127:
  j l255_contmptr
l254_nullmerr:
l255_contmptr:
  ld s7, 32(s7)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t2, -168(fp)
  sd t3, -160(fp)
  mv a2, t1
  jalr s7
  mv s6 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t2, -168(fp)
  ld t3, -160(fp)
  mv s8, s6
  li s3, 2220000
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
  bnez t1, end_if0_ind128
  j l256_nullobjerr
end_if0_ind128:
  j l257_contobjptr
l256_nullobjerr:
l257_contobjptr:
  ld t0, 0(t1)
  bnez t0, end_if0_ind129
  j l258_nullmerr
end_if0_ind129:
  j l259_contmptr
l258_nullmerr:
l259_contmptr:
  ld t0, 0(t0)
  sd t4, -96(fp)
  sd a2, -112(fp)
  sd t5, -104(fp)
  sd a3, -120(fp)
  sd t0, -144(fp)
  sd t1, -152(fp)
  sd t3, -160(fp)
  mv a2, t1
  mv a3, s9
  jalr t0
  mv t2 , a0
  ld t4, -96(fp)
  ld a2, -112(fp)
  ld t5, -104(fp)
  ld a3, -120(fp)
  ld t0, -144(fp)
  ld t1, -152(fp)
  ld t3, -160(fp)
  mv t1, t2
  bnez t1, end_if0_ind130
  j l260_nullobjerr
end_if0_ind130:
  j l261_contobjptr
l260_nullobjerr:
l261_contobjptr:
  ld s8, 0(t1)
  bnez s8, end_if0_ind131
  j l262_nullmerr
end_if0_ind131:
  j l263_contmptr
l262_nullmerr:
l263_contmptr:
  ld s8, 32(s8)
  sd t4, -96(fp)
  sd t5, -104(fp)
  sd a2, -112(fp)
  sd a3, -120(fp)
  sd t1, -152(fp)
  mv a2, t1
  jalr s8
  mv t3 , a0
  ld t4, -96(fp)
  ld t5, -104(fp)
  ld a2, -112(fp)
  ld a3, -120(fp)
  ld t1, -152(fp)
  mv s8, t3
  li t5, 33300000
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
  bnez t1, end_if0_ind132
  j l264_nullobjerr
end_if0_ind132:
  j l265_contobjptr
l264_nullobjerr:
l265_contobjptr:
  ld s1, 0(t1)
  bnez s1, end_if0_ind133
  j l266_nullmerr
end_if0_ind133:
  j l267_contmptr
l266_nullmerr:
l267_contmptr:
  ld s1, 0(s1)
  sd a2, -112(fp)
  sd t1, -152(fp)
  mv a2, t1
  mv a3, s5
  jalr s1
  mv t4 , a0
  ld a2, -112(fp)
  ld t1, -152(fp)
  mv t1, t4
  bnez t1, end_if0_ind134
  j l268_nullobjerr
end_if0_ind134:
  j l269_contobjptr
l268_nullobjerr:
l269_contobjptr:
  ld s4, 0(t1)
  bnez s4, end_if0_ind135
  j l270_nullmerr
end_if0_ind135:
  j l271_contmptr
l270_nullmerr:
l271_contmptr:
  ld s4, 32(s4)
  mv a2, t1
  jalr s4
  mv s2 , a0
  mv s8, s2
  li s7, 44440000
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
  li s6, 0
  sd s6, -176(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -176(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 176

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

