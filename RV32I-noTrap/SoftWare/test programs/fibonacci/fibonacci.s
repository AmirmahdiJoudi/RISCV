
fibonacci.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_stext>:
   0:	00000093          	li	ra,0
   4:	00008113          	mv	sp,ra
   8:	00008193          	mv	gp,ra
   c:	00008213          	mv	tp,ra
  10:	00008293          	mv	t0,ra
  14:	00008313          	mv	t1,ra
  18:	00008393          	mv	t2,ra
  1c:	00008413          	mv	s0,ra
  20:	00008493          	mv	s1,ra
  24:	00008513          	mv	a0,ra
  28:	00008593          	mv	a1,ra
  2c:	00008613          	mv	a2,ra
  30:	00008693          	mv	a3,ra
  34:	00008713          	mv	a4,ra
  38:	00008793          	mv	a5,ra
  3c:	00008813          	mv	a6,ra
  40:	00008893          	mv	a7,ra
  44:	00008913          	mv	s2,ra
  48:	00008993          	mv	s3,ra
  4c:	00008a13          	mv	s4,ra
  50:	00008a93          	mv	s5,ra
  54:	00008b13          	mv	s6,ra
  58:	00008b93          	mv	s7,ra
  5c:	00008c13          	mv	s8,ra
  60:	00008c93          	mv	s9,ra
  64:	00008d13          	mv	s10,ra
  68:	00008d93          	mv	s11,ra
  6c:	00008e13          	mv	t3,ra
  70:	00008e93          	mv	t4,ra
  74:	00008f13          	mv	t5,ra
  78:	00008f93          	mv	t6,ra
  7c:	00002117          	auipc	sp,0x2
  80:	f8410113          	addi	sp,sp,-124 # 2000 <_stack_start>

00000084 <_start>:
  84:	00001d17          	auipc	s10,0x1
  88:	f7cd0d13          	addi	s10,s10,-132 # 1000 <_bss_end>
  8c:	00001d97          	auipc	s11,0x1
  90:	f74d8d93          	addi	s11,s11,-140 # 1000 <_bss_end>
  94:	01bd5863          	bge	s10,s11,a4 <main_entry>

00000098 <zero_loop>:
  98:	000d2023          	sw	zero,0(s10)
  9c:	004d0d13          	addi	s10,s10,4
  a0:	ffaddce3          	bge	s11,s10,98 <zero_loop>

000000a4 <main_entry>:
  a4:	00000513          	li	a0,0
  a8:	00000593          	li	a1,0
  ac:	008000ef          	jal	b4 <main>

000000b0 <_end>:
  b0:	0000006f          	j	b0 <_end>

000000b4 <main>:
  b4:	fe010113          	addi	sp,sp,-32
  b8:	00112e23          	sw	ra,28(sp)
  bc:	00812c23          	sw	s0,24(sp)
  c0:	02010413          	addi	s0,sp,32
  c4:	00600793          	li	a5,6
  c8:	fef42623          	sw	a5,-20(s0)
  cc:	00100793          	li	a5,1
  d0:	fef42423          	sw	a5,-24(s0)
  d4:	0240006f          	j	f8 <main+0x44>
  d8:	fec42583          	lw	a1,-20(s0)
  dc:	fe842503          	lw	a0,-24(s0)
  e0:	038000ef          	jal	118 <__mulsi3>
  e4:	00050793          	mv	a5,a0
  e8:	fef42423          	sw	a5,-24(s0)
  ec:	fec42783          	lw	a5,-20(s0)
  f0:	fff78793          	addi	a5,a5,-1
  f4:	fef42623          	sw	a5,-20(s0)
  f8:	fec42783          	lw	a5,-20(s0)
  fc:	fcf04ee3          	bgtz	a5,d8 <main+0x24>
 100:	00000793          	li	a5,0
 104:	00078513          	mv	a0,a5
 108:	01c12083          	lw	ra,28(sp)
 10c:	01812403          	lw	s0,24(sp)
 110:	02010113          	addi	sp,sp,32
 114:	00008067          	ret

00000118 <__mulsi3>:
 118:	00050613          	mv	a2,a0
 11c:	00000513          	li	a0,0
 120:	0015f693          	andi	a3,a1,1
 124:	00068463          	beqz	a3,12c <__mulsi3+0x14>
 128:	00c50533          	add	a0,a0,a2
 12c:	0015d593          	srli	a1,a1,0x1
 130:	00161613          	slli	a2,a2,0x1
 134:	fe0596e3          	bnez	a1,120 <__mulsi3+0x8>
 138:	00008067          	ret

0000013c <__CTOR_LIST__>:
	...

00000144 <__CTOR_END__>:
	...
