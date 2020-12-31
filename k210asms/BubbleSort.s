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
  la s1, BBS_Print
  sd s1, 0(s3)
  la s1, BBS_Init
  sd s1, 8(s3)
  la s1, BBS_Start
  sd s1, 16(s3)
  la s1, BBS_Sort
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
  ld s4, 16(s4)
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
.globl BBS_Start
BBS_Start:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 120
  sub sp, sp, t6         # Allocate a new frame
  sd ra, -8(fp)          # Store return address
  sd s3, -24(fp)
  sd s8, -32(fp)
  sd s9, -40(fp)
  sd s1, -48(fp)
  sd s2, -56(fp)
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
  ld s8, 8(s8)
  sd t4, -64(fp)
  sd a2, -72(fp)
  sd t5, -80(fp)
  sd t0, -88(fp)
  sd t1, -96(fp)
  sd t2, -104(fp)
  sd t3, -112(fp)
  mv a2, a2
  mv a3, a3
  jalr s8
  mv s9 , a0
  ld t4, -64(fp)
  ld a2, -72(fp)
  ld t5, -80(fp)
  ld t0, -88(fp)
  ld t1, -96(fp)
  ld t2, -104(fp)
  ld t3, -112(fp)
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
  sd t4, -64(fp)
  sd a2, -72(fp)
  sd t5, -80(fp)
  sd t0, -88(fp)
  sd t1, -96(fp)
  sd t3, -112(fp)
  mv a2, a2
  jalr t1
  mv t2 , a0
  ld t4, -64(fp)
  ld a2, -72(fp)
  ld t5, -80(fp)
  ld t0, -88(fp)
  ld t1, -96(fp)
  ld t3, -112(fp)
  mv t0, t2
  li t3, 99999
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
  ld t4, 0(a2)
  bnez t4, end_if0_ind7
  j l14_nullmerr
end_if0_ind7:
  j l15_contmptr
l14_nullmerr:
l15_contmptr:
  ld t4, 24(t4)
  sd t4, -64(fp)
  sd a2, -72(fp)
  sd t0, -88(fp)
  mv a2, a2
  jalr t4
  mv t5 , a0
  ld t4, -64(fp)
  ld a2, -72(fp)
  ld t0, -88(fp)
  mv t0, t5
  bnez a2, end_if0_ind8
  j l16_nullobjerr
end_if0_ind8:
  j l17_contobjptr
l16_nullobjerr:
l17_contobjptr:
  ld s3, 0(a2)
  bnez s3, end_if0_ind9
  j l18_nullmerr
end_if0_ind9:
  j l19_contmptr
l18_nullmerr:
l19_contmptr:
  ld s3, 0(s3)
  sd t0, -88(fp)
  mv a2, a2
  jalr s3
  mv s1 , a0
  ld t0, -88(fp)
  mv t0, s1
  li s2, 0
  sd s2, -120(fp)
  ld s3, -24(fp)
  ld s8, -32(fp)
  ld s9, -40(fp)
  ld s1, -48(fp)
  ld s2, -56(fp)
  ld a0, -120(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 120

  jr ra

.align 1
.globl BBS_Sort
BBS_Sort:
  sd fp, -16(sp)          # Store old fp
  mv fp, sp              # Set new fp
  li t6, 632
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
  bnez a2, end_if0_ind10
  j l20_nullobjerr
end_if0_ind10:
  j l21_contobjptr
l20_nullobjerr:
l21_contobjptr:
  ld s4, 16(a2)
  li s5, 1
  sub s6, s4, s5
  mv s7, s6
  li s8, 0
  li s9, 1
  sub t0, s8, s9
  mv t1, t0
l22_startwhile:
  slt t2, t1, s7
  bnez t2, end_if0_ind11
  j l23_endwhile
end_if0_ind11:
  li t3, 1
  mv t4, t3
l24_startwhile:
  li s10, 1
  sd s10, -96(fp)
  mv s11, s10
  add s10, s7, s11
  sd s10, -104(fp)
  mv s11, s10
  slt s11, t4, s11
  sd s11, -112(fp)
  ld s11, -112(fp)
  bnez s11, end_if0_ind12
  j l25_endwhile
end_if0_ind12:
  li s10, 1
  sd s10, -120(fp)
  mv s11, s10
  sub s11, t4, s11
  sd s11, -128(fp)
  mv s10, s11
  sd s10, -136(fp)
  bnez a2, end_if0_ind13
  j l26_nullobjerr
end_if0_ind13:
  j l27_contobjptr
l26_nullobjerr:
l27_contobjptr:
  ld s2, 8(a2)
  bnez s2, end_if0_ind14
  j l28_nullarrerr
end_if0_ind14:
  j l29_contarrptr
l28_nullarrerr:
l29_contarrptr:
  ld s10, 0(s2)
  sd s10, -144(fp)
  li s10, 1
  sd s10, -152(fp)
  ld s11, -136(fp)
  add s10, s10, s11
  sd s10, -152(fp)
  ld s10, -144(fp)
  ld s11, -152(fp)
  slt s11, s10, s11
  sd s11, -160(fp)
  ld s11, -160(fp)
  bnez s11, end_if0_ind15
  j l30_endbc1
end_if0_ind15:
l30_endbc1:
  li s10, 0
  sd s10, -168(fp)
  ld s10, -136(fp)
  ld s11, -168(fp)
  slt s11, s10, s11
  sd s11, -160(fp)
  ld s11, -160(fp)
  bnez s11, end_if0_ind16
  j l31_endbc2
end_if0_ind16:
l31_endbc2:
  li s10, 1
  sd s10, -176(fp)
  ld s10, -136(fp)
  ld s11, -176(fp)
  add s10, s10, s11
  sd s10, -184(fp)
  mv s10, s11
  li s10, 8
  sd s10, -176(fp)
  ld s10, -184(fp)
  ld s11, -176(fp)
  mul s10, s10, s11
  sd s10, -184(fp)
  mv s11, s10
  add s10, s2, s11
  sd s10, -192(fp)
  mv s11, s10
  ld s10, 0(s11)
  sd s10, -200(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -208(fp)
  bnez a2, end_if0_ind17
  j l32_nullobjerr
end_if0_ind17:
  j l33_contobjptr
l32_nullobjerr:
l33_contobjptr:
  ld s10, 8(a2)
  sd s10, -216(fp)
  ld s11, -216(fp)
  bnez s11, end_if0_ind18
  j l34_nullarrerr
end_if0_ind18:
  j l35_contarrptr
l34_nullarrerr:
l35_contarrptr:
  ld s11, -216(fp)
  ld s10, 0(s11)
  sd s10, -224(fp)
  li s10, 1
  sd s10, -232(fp)
  add s10, s10, t4
  sd s10, -232(fp)
  ld s10, -224(fp)
  ld s11, -232(fp)
  slt s11, s10, s11
  sd s11, -240(fp)
  ld s11, -240(fp)
  bnez s11, end_if0_ind19
  j l36_endbc1
end_if0_ind19:
l36_endbc1:
  li s10, 0
  sd s10, -248(fp)
  mv s11, s10
  slt s11, t4, s11
  sd s11, -240(fp)
  ld s11, -240(fp)
  bnez s11, end_if0_ind20
  j l37_endbc2
end_if0_ind20:
l37_endbc2:
  li s10, 1
  sd s10, -256(fp)
  mv s11, s10
  add s10, t4, s11
  sd s10, -264(fp)
  mv s10, s11
  li s10, 8
  sd s10, -256(fp)
  ld s10, -264(fp)
  ld s11, -256(fp)
  mul s10, s10, s11
  sd s10, -264(fp)
  ld s10, -216(fp)
  ld s11, -264(fp)
  add s10, s10, s11
  sd s10, -272(fp)
  mv s11, s10
  ld s10, 0(s11)
  sd s10, -280(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -288(fp)
  ld s11, -208(fp)
  slt s11, s10, s11
  sd s11, -296(fp)
  ld s11, -296(fp)
  bnez s11, end_if0_ind21
  j l38_else
end_if0_ind21:
  li s10, 1
  sd s10, -304(fp)
  mv s11, s10
  sub s11, t4, s11
  sd s11, -312(fp)
  mv s10, s11
  sd s10, -320(fp)
  bnez a2, end_if0_ind22
  j l40_nullobjerr
end_if0_ind22:
  j l41_contobjptr
l40_nullobjerr:
l41_contobjptr:
  ld s10, 8(a2)
  sd s10, -328(fp)
  ld s11, -328(fp)
  bnez s11, end_if0_ind23
  j l42_nullarrerr
end_if0_ind23:
  j l43_contarrptr
l42_nullarrerr:
l43_contarrptr:
  ld s11, -328(fp)
  ld t5, 0(s11)
  li s10, 1
  sd s10, -336(fp)
  ld s11, -320(fp)
  add s10, s10, s11
  sd s10, -336(fp)
  mv s11, s10
  slt s11, t5, s11
  sd s11, -344(fp)
  ld s11, -344(fp)
  bnez s11, end_if0_ind24
  j l44_endbc1
end_if0_ind24:
l44_endbc1:
  li s10, 0
  sd s10, -352(fp)
  ld s10, -320(fp)
  ld s11, -352(fp)
  slt s11, s10, s11
  sd s11, -344(fp)
  ld s11, -344(fp)
  bnez s11, end_if0_ind25
  j l45_endbc2
end_if0_ind25:
l45_endbc2:
  li s10, 1
  sd s10, -360(fp)
  ld s10, -320(fp)
  ld s11, -360(fp)
  add s10, s10, s11
  sd s10, -368(fp)
  mv s10, s11
  li s10, 8
  sd s10, -360(fp)
  ld s10, -368(fp)
  ld s11, -360(fp)
  mul s10, s10, s11
  sd s10, -368(fp)
  ld s10, -328(fp)
  ld s11, -368(fp)
  add s10, s10, s11
  sd s10, -376(fp)
  mv s11, s10
  ld s10, 0(s11)
  sd s10, -384(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -392(fp)
  bnez a2, end_if0_ind26
  j l46_nullobjerr
end_if0_ind26:
  j l47_contobjptr
l46_nullobjerr:
l47_contobjptr:
  ld s10, 8(a2)
  sd s10, -400(fp)
  bnez a2, end_if0_ind27
  j l48_nullobjerr
end_if0_ind27:
  j l49_contobjptr
l48_nullobjerr:
l49_contobjptr:
  ld s10, 8(a2)
  sd s10, -408(fp)
  ld s11, -408(fp)
  bnez s11, end_if0_ind28
  j l50_nullarrerr
end_if0_ind28:
  j l51_contarrptr
l50_nullarrerr:
l51_contarrptr:
  ld s11, -408(fp)
  ld s10, 0(s11)
  sd s10, -416(fp)
  li s10, 1
  sd s10, -424(fp)
  add s10, s10, t4
  sd s10, -424(fp)
  ld s10, -416(fp)
  ld s11, -424(fp)
  slt s11, s10, s11
  sd s11, -432(fp)
  ld s11, -432(fp)
  bnez s11, end_if0_ind29
  j l52_endbc1
end_if0_ind29:
l52_endbc1:
  li s10, 0
  sd s10, -440(fp)
  mv s11, s10
  slt s11, t4, s11
  sd s11, -432(fp)
  ld s11, -432(fp)
  bnez s11, end_if0_ind30
  j l53_endbc2
end_if0_ind30:
l53_endbc2:
  li s10, 1
  sd s10, -448(fp)
  mv s11, s10
  add s10, t4, s11
  sd s10, -456(fp)
  mv s10, s11
  li s10, 8
  sd s10, -448(fp)
  ld s10, -456(fp)
  ld s11, -448(fp)
  mul s10, s10, s11
  sd s10, -456(fp)
  ld s10, -408(fp)
  ld s11, -456(fp)
  add s10, s10, s11
  sd s10, -464(fp)
  mv s11, s10
  ld s10, 0(s11)
  sd s10, -472(fp)
  ld s11, -400(fp)
  bnez s11, end_if0_ind31
  j l54_nullarrerr
end_if0_ind31:
  j l55_contarrptr
l54_nullarrerr:
l55_contarrptr:
  ld s11, -400(fp)
  ld s10, 0(s11)
  sd s10, -480(fp)
  li s10, 1
  sd s10, -488(fp)
  ld s11, -320(fp)
  add s10, s10, s11
  sd s10, -488(fp)
  ld s10, -480(fp)
  ld s11, -488(fp)
  slt s3, s10, s11
  bnez s3, end_if0_ind32
  j l56_endbc1
end_if0_ind32:
l56_endbc1:
  li s10, 0
  sd s10, -496(fp)
  ld s10, -320(fp)
  ld s11, -496(fp)
  slt s3, s10, s11
  bnez s3, end_if0_ind33
  j l57_endbc2
end_if0_ind33:
l57_endbc2:
  li s10, 1
  sd s10, -504(fp)
  ld s10, -320(fp)
  ld s11, -504(fp)
  add s10, s10, s11
  sd s10, -512(fp)
  mv s10, s11
  li s10, 8
  sd s10, -504(fp)
  ld s10, -512(fp)
  ld s11, -504(fp)
  mul s10, s10, s11
  sd s10, -512(fp)
  ld s10, -400(fp)
  ld s11, -512(fp)
  add s10, s10, s11
  sd s10, -520(fp)
  ld s11, -472(fp)
  sd s11, 0(s10)
  bnez a2, end_if0_ind34
  j l58_nullobjerr
end_if0_ind34:
  j l59_contobjptr
l58_nullobjerr:
l59_contobjptr:
  ld s10, 8(a2)
  sd s10, -528(fp)
  ld s11, -528(fp)
  bnez s11, end_if0_ind35
  j l60_nullarrerr
end_if0_ind35:
  j l61_contarrptr
l60_nullarrerr:
l61_contarrptr:
  ld s11, -528(fp)
  ld s10, 0(s11)
  sd s10, -536(fp)
  li s10, 1
  sd s10, -544(fp)
  add s10, s10, t4
  sd s10, -544(fp)
  ld s10, -536(fp)
  ld s11, -544(fp)
  slt s11, s10, s11
  sd s11, -552(fp)
  ld s11, -552(fp)
  bnez s11, end_if0_ind36
  j l62_endbc1
end_if0_ind36:
l62_endbc1:
  li s10, 0
  sd s10, -560(fp)
  mv s11, s10
  slt s11, t4, s11
  sd s11, -552(fp)
  ld s11, -552(fp)
  bnez s11, end_if0_ind37
  j l63_endbc2
end_if0_ind37:
l63_endbc2:
  li s10, 1
  sd s10, -568(fp)
  mv s11, s10
  add s10, t4, s11
  sd s10, -576(fp)
  mv s10, s11
  li s10, 8
  sd s10, -568(fp)
  ld s10, -576(fp)
  ld s11, -568(fp)
  mul s10, s10, s11
  sd s10, -576(fp)
  ld s10, -528(fp)
  ld s11, -576(fp)
  add s10, s10, s11
  sd s10, -584(fp)
  ld s11, -392(fp)
  sd s11, 0(s10)
  j l39_endif
l38_else:
  li s10, 0
  sd s10, -592(fp)
  mv s11, s10
  mv s10, s11
  sd s10, -600(fp)
  j l39_endif
l39_endif:
  li s10, 1
  sd s10, -608(fp)
  mv s11, s10
  add s10, t4, s11
  sd s10, -616(fp)
  mv s11, s10
  mv t4, s11
  j l24_startwhile
l25_endwhile:
  li s1, 1
  sub s11, s7, s1
  sd s11, -624(fp)
  mv s7, s11
  j l22_startwhile
l23_endwhile:
  li s10, 0
  sd s10, -632(fp)
  ld s3, -24(fp)
  ld s4, -32(fp)
  ld s5, -40(fp)
  ld s6, -48(fp)
  ld s7, -56(fp)
  ld s8, -64(fp)
  ld s9, -72(fp)
  ld s1, -80(fp)
  ld s2, -88(fp)
  ld a0, -632(fp)
  ld ra, -8(fp)          # Restore ra register
  ld fp, -16(fp)          # Restore old fp
  addi sp, sp, 632

  jr ra

.align 1
.globl BBS_Print
BBS_Print:
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
  li s4, 0
  mv s5, s4
l64_startwhile:
  bnez a2, end_if0_ind38
  j l66_nullobjerr
end_if0_ind38:
  j l67_contobjptr
l66_nullobjerr:
l67_contobjptr:
  ld s10, 16(a2)
  sd s10, -96(fp)
  mv s11, s10
  slt s7, s5, s11
  bnez s7, end_if0_ind39
  j l65_endwhile
end_if0_ind39:
  bnez a2, end_if0_ind40
  j l68_nullobjerr
end_if0_ind40:
  j l69_contobjptr
l68_nullobjerr:
l69_contobjptr:
  ld s1, 8(a2)
  bnez s1, end_if0_ind41
  j l70_nullarrerr
end_if0_ind41:
  j l71_contarrptr
l70_nullarrerr:
l71_contarrptr:
  ld s2, 0(s1)
  li t5, 1
  add t5, t5, s5
  slt s3, s2, t5
  bnez s3, end_if0_ind42
  j l72_endbc1
end_if0_ind42:
l72_endbc1:
  li t4, 0
  slt s3, s5, t4
  bnez s3, end_if0_ind43
  j l73_endbc2
end_if0_ind43:
l73_endbc2:
  li t2, 1
  add t1, s5, t2
  li t2, 8
  mul t1, t1, t2
  add t0, s1, t1
  ld t3, 0(t0)
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
  li s9, 1
  add s8, s5, s9
  mv s5, s8
  j l64_startwhile
l65_endwhile:
  li s6, 0
  sd s6, -104(fp)
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
.globl BBS_Init
BBS_Init:
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
  bnez a2, end_if0_ind44
  j l74_nullobjerr
end_if0_ind44:
  j l75_contobjptr
l74_nullobjerr:
l75_contobjptr:
  ld s4, 16(a2)
  mv s4, a3
  sd s4, 16(a2)
  bnez a2, end_if0_ind45
  j l76_nullobjerr
end_if0_ind45:
  j l77_contobjptr
l76_nullobjerr:
l77_contobjptr:
  ld s5, 8(a2)
  li s8, 0
  slt s9, a3, s8
  bnez s9, end_if0_ind46
  j l78_endlen0
end_if0_ind46:
l78_endlen0:
  li t0, 1
  add t1, a3, t0
  li t0, 8
  mul t1, t1, t0
  mv a0, t1
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
  sd a3, 0(t2)
  mv s5, t2
  sd s5, 8(a2)
  bnez a2, end_if0_ind47
  j l79_nullobjerr
end_if0_ind47:
  j l80_contobjptr
l79_nullobjerr:
l80_contobjptr:
  ld t3, 8(a2)
  li t4, 0
  li t5, 20
  bnez t3, end_if0_ind48
  j l81_nullarrerr
end_if0_ind48:
  j l82_contarrptr
l81_nullarrerr:
l82_contarrptr:
  ld s3, 0(t3)
  li s2, 1
  add s2, s2, t4
  slt s1, s3, s2
  bnez s1, end_if0_ind49
  j l83_endbc1
end_if0_ind49:
l83_endbc1:
  li s7, 0
  slt s1, t4, s7
  bnez s1, end_if0_ind50
  j l84_endbc2
end_if0_ind50:
l84_endbc2:
  li s6, 1
  add s4, t4, s6
  li s6, 8
  mul s4, s4, s6
  add s8, t3, s4
  sd t5, 0(s8)
  bnez a2, end_if0_ind51
  j l85_nullobjerr
end_if0_ind51:
  j l86_contobjptr
l85_nullobjerr:
l86_contobjptr:
  ld s9, 8(a2)
  li t0, 1
  li t1, 7
  bnez s9, end_if0_ind52
  j l87_nullarrerr
end_if0_ind52:
  j l88_contarrptr
l87_nullarrerr:
l88_contarrptr:
  ld t2, 0(s9)
  li s5, 1
  add s5, s5, t0
  slt s3, t2, s5
  bnez s3, end_if0_ind53
  j l89_endbc1
end_if0_ind53:
l89_endbc1:
  li s2, 0
  slt s3, t0, s2
  bnez s3, end_if0_ind54
  j l90_endbc2
end_if0_ind54:
l90_endbc2:
  li s7, 1
  add s1, t0, s7
  li s7, 8
  mul s1, s1, s7
  add t4, s9, s1
  sd t1, 0(t4)
  bnez a2, end_if0_ind55
  j l91_nullobjerr
end_if0_ind55:
  j l92_contobjptr
l91_nullobjerr:
l92_contobjptr:
  ld s6, 8(a2)
  li t3, 2
  li s4, 12
  bnez s6, end_if0_ind56
  j l93_nullarrerr
end_if0_ind56:
  j l94_contarrptr
l93_nullarrerr:
l94_contarrptr:
  ld t5, 0(s6)
  li s8, 1
  add s8, s8, t3
  slt t2, t5, s8
  bnez t2, end_if0_ind57
  j l95_endbc1
end_if0_ind57:
l95_endbc1:
  li s5, 0
  slt t2, t3, s5
  bnez t2, end_if0_ind58
  j l96_endbc2
end_if0_ind58:
l96_endbc2:
  li s2, 1
  add s3, t3, s2
  li s2, 8
  mul s3, s3, s2
  add t0, s6, s3
  sd s4, 0(t0)
  bnez a2, end_if0_ind59
  j l97_nullobjerr
end_if0_ind59:
  j l98_contobjptr
l97_nullobjerr:
l98_contobjptr:
  ld s7, 8(a2)
  li s9, 3
  li s1, 18
  bnez s7, end_if0_ind60
  j l99_nullarrerr
end_if0_ind60:
  j l100_contarrptr
l99_nullarrerr:
l100_contarrptr:
  ld t1, 0(s7)
  li t4, 1
  add t4, t4, s9
  slt t5, t1, t4
  bnez t5, end_if0_ind61
  j l101_endbc1
end_if0_ind61:
l101_endbc1:
  li s8, 0
  slt t5, s9, s8
  bnez t5, end_if0_ind62
  j l102_endbc2
end_if0_ind62:
l102_endbc2:
  li s5, 1
  add t2, s9, s5
  li s5, 8
  mul t2, t2, s5
  add t3, s7, t2
  sd s1, 0(t3)
  bnez a2, end_if0_ind63
  j l103_nullobjerr
end_if0_ind63:
  j l104_contobjptr
l103_nullobjerr:
l104_contobjptr:
  ld s2, 8(a2)
  li s6, 4
  li s3, 2
  bnez s2, end_if0_ind64
  j l105_nullarrerr
end_if0_ind64:
  j l106_contarrptr
l105_nullarrerr:
l106_contarrptr:
  ld s4, 0(s2)
  li t0, 1
  add t0, t0, s6
  slt t1, s4, t0
  bnez t1, end_if0_ind65
  j l107_endbc1
end_if0_ind65:
l107_endbc1:
  li t4, 0
  slt t1, s6, t4
  bnez t1, end_if0_ind66
  j l108_endbc2
end_if0_ind66:
l108_endbc2:
  li s8, 1
  add t5, s6, s8
  li s8, 8
  mul t5, t5, s8
  add s9, s2, t5
  sd s3, 0(s9)
  bnez a2, end_if0_ind67
  j l109_nullobjerr
end_if0_ind67:
  j l110_contobjptr
l109_nullobjerr:
l110_contobjptr:
  ld s5, 8(a2)
  li s7, 5
  li t2, 11
  bnez s5, end_if0_ind68
  j l111_nullarrerr
end_if0_ind68:
  j l112_contarrptr
l111_nullarrerr:
l112_contarrptr:
  ld s1, 0(s5)
  li t3, 1
  add t3, t3, s7
  slt s4, s1, t3
  bnez s4, end_if0_ind69
  j l113_endbc1
end_if0_ind69:
l113_endbc1:
  li t0, 0
  slt s4, s7, t0
  bnez s4, end_if0_ind70
  j l114_endbc2
end_if0_ind70:
l114_endbc2:
  li t4, 1
  add t1, s7, t4
  li t4, 8
  mul t1, t1, t4
  add s6, s5, t1
  sd t2, 0(s6)
  bnez a2, end_if0_ind71
  j l115_nullobjerr
end_if0_ind71:
  j l116_contobjptr
l115_nullobjerr:
l116_contobjptr:
  ld s8, 8(a2)
  li s2, 6
  li t5, 6
  bnez s8, end_if0_ind72
  j l117_nullarrerr
end_if0_ind72:
  j l118_contarrptr
l117_nullarrerr:
l118_contarrptr:
  ld s3, 0(s8)
  li s9, 1
  add s9, s9, s2
  slt s1, s3, s9
  bnez s1, end_if0_ind73
  j l119_endbc1
end_if0_ind73:
l119_endbc1:
  li t3, 0
  slt s1, s2, t3
  bnez s1, end_if0_ind74
  j l120_endbc2
end_if0_ind74:
l120_endbc2:
  li t0, 1
  add s4, s2, t0
  li t0, 8
  mul s4, s4, t0
  add s7, s8, s4
  sd t5, 0(s7)
  bnez a2, end_if0_ind75
  j l121_nullobjerr
end_if0_ind75:
  j l122_contobjptr
l121_nullobjerr:
l122_contobjptr:
  ld t4, 8(a2)
  li s5, 7
  li t1, 9
  bnez t4, end_if0_ind76
  j l123_nullarrerr
end_if0_ind76:
  j l124_contarrptr
l123_nullarrerr:
l124_contarrptr:
  ld t2, 0(t4)
  li s6, 1
  add s6, s6, s5
  slt s3, t2, s6
  bnez s3, end_if0_ind77
  j l125_endbc1
end_if0_ind77:
l125_endbc1:
  li s9, 0
  slt s3, s5, s9
  bnez s3, end_if0_ind78
  j l126_endbc2
end_if0_ind78:
l126_endbc2:
  li t3, 1
  add s1, s5, t3
  li t3, 8
  mul s1, s1, t3
  add s2, t4, s1
  sd t1, 0(s2)
  bnez a2, end_if0_ind79
  j l127_nullobjerr
end_if0_ind79:
  j l128_contobjptr
l127_nullobjerr:
l128_contobjptr:
  ld t0, 8(a2)
  li s8, 8
  li s4, 19
  bnez t0, end_if0_ind80
  j l129_nullarrerr
end_if0_ind80:
  j l130_contarrptr
l129_nullarrerr:
l130_contarrptr:
  ld t5, 0(t0)
  li s7, 1
  add s7, s7, s8
  slt t2, t5, s7
  bnez t2, end_if0_ind81
  j l131_endbc1
end_if0_ind81:
l131_endbc1:
  li s6, 0
  slt t2, s8, s6
  bnez t2, end_if0_ind82
  j l132_endbc2
end_if0_ind82:
l132_endbc2:
  li s9, 1
  add s3, s8, s9
  li s9, 8
  mul s3, s3, s9
  add s5, t0, s3
  sd s4, 0(s5)
  bnez a2, end_if0_ind83
  j l133_nullobjerr
end_if0_ind83:
  j l134_contobjptr
l133_nullobjerr:
l134_contobjptr:
  ld t3, 8(a2)
  li t4, 9
  li s1, 5
  bnez t3, end_if0_ind84
  j l135_nullarrerr
end_if0_ind84:
  j l136_contarrptr
l135_nullarrerr:
l136_contarrptr:
  ld t1, 0(t3)
  li s2, 1
  add s2, s2, t4
  slt t5, t1, s2
  bnez t5, end_if0_ind85
  j l137_endbc1
end_if0_ind85:
l137_endbc1:
  li s7, 0
  slt t5, t4, s7
  bnez t5, end_if0_ind86
  j l138_endbc2
end_if0_ind86:
l138_endbc2:
  li s6, 1
  add t2, t4, s6
  li s6, 8
  mul t2, t2, s6
  add s8, t3, t2
  sd s1, 0(s8)
  li s9, 0
  sd s9, -96(fp)
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

