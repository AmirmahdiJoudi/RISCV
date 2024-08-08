
fibonacci.o:     file format elf32-littleriscv


Disassembly of section .vectors:

00000000 <_stack_start-0x2000>:
   0:	1040006f          	j	104 <_stext>
   4:	2740006f          	j	278 <instruction_address_misaligned_handler>
   8:	29c0006f          	j	2a4 <default_exc_handler>
   c:	2700006f          	j	27c <illegal_insn_handler>
  10:	2700006f          	j	280 <machine_software_interrupt_handler>
  14:	2700006f          	j	284 <load_address_misaligned_handler>
  18:	28c0006f          	j	2a4 <default_exc_handler>
  1c:	26c0006f          	j	288 <store_address_misaligned_handler>
  20:	26c0006f          	j	28c <machine_timer_interrupt_handler>
  24:	2800006f          	j	2a4 <default_exc_handler>
  28:	27c0006f          	j	2a4 <default_exc_handler>
  2c:	2780006f          	j	2a4 <default_exc_handler>
  30:	2600006f          	j	290 <machine_external_interrupt_handler>
  34:	2700006f          	j	2a4 <default_exc_handler>
  38:	26c0006f          	j	2a4 <default_exc_handler>
  3c:	2680006f          	j	2a4 <default_exc_handler>
  40:	2640006f          	j	2a4 <default_exc_handler>
  44:	2600006f          	j	2a4 <default_exc_handler>
  48:	25c0006f          	j	2a4 <default_exc_handler>
  4c:	2580006f          	j	2a4 <default_exc_handler>
  50:	2540006f          	j	2a4 <default_exc_handler>
  54:	2500006f          	j	2a4 <default_exc_handler>
  58:	24c0006f          	j	2a4 <default_exc_handler>
  5c:	2480006f          	j	2a4 <default_exc_handler>
  60:	2440006f          	j	2a4 <default_exc_handler>
  64:	2400006f          	j	2a4 <default_exc_handler>
  68:	23c0006f          	j	2a4 <default_exc_handler>
  6c:	2380006f          	j	2a4 <default_exc_handler>
  70:	2340006f          	j	2a4 <default_exc_handler>
  74:	2300006f          	j	2a4 <default_exc_handler>
  78:	22c0006f          	j	2a4 <default_exc_handler>
  7c:	2280006f          	j	2a4 <default_exc_handler>
  80:	2240006f          	j	2a4 <default_exc_handler>
  84:	2200006f          	j	2a4 <default_exc_handler>
  88:	21c0006f          	j	2a4 <default_exc_handler>
  8c:	2180006f          	j	2a4 <default_exc_handler>
  90:	2140006f          	j	2a4 <default_exc_handler>
  94:	2100006f          	j	2a4 <default_exc_handler>
  98:	20c0006f          	j	2a4 <default_exc_handler>
  9c:	2080006f          	j	2a4 <default_exc_handler>
  a0:	2040006f          	j	2a4 <default_exc_handler>
  a4:	2000006f          	j	2a4 <default_exc_handler>
  a8:	1fc0006f          	j	2a4 <default_exc_handler>
  ac:	1f80006f          	j	2a4 <default_exc_handler>
  b0:	1f40006f          	j	2a4 <default_exc_handler>
  b4:	1f00006f          	j	2a4 <default_exc_handler>
  b8:	1ec0006f          	j	2a4 <default_exc_handler>
  bc:	1e80006f          	j	2a4 <default_exc_handler>
  c0:	1e40006f          	j	2a4 <default_exc_handler>
  c4:	1d00006f          	j	294 <external_interrupt_signal_handler>
  c8:	1cc0006f          	j	294 <external_interrupt_signal_handler>
  cc:	1c80006f          	j	294 <external_interrupt_signal_handler>
  d0:	1c40006f          	j	294 <external_interrupt_signal_handler>
  d4:	1c00006f          	j	294 <external_interrupt_signal_handler>
  d8:	1bc0006f          	j	294 <external_interrupt_signal_handler>
  dc:	1b80006f          	j	294 <external_interrupt_signal_handler>
  e0:	1b40006f          	j	294 <external_interrupt_signal_handler>
  e4:	1b00006f          	j	294 <external_interrupt_signal_handler>
  e8:	1ac0006f          	j	294 <external_interrupt_signal_handler>
  ec:	1a80006f          	j	294 <external_interrupt_signal_handler>
  f0:	1a40006f          	j	294 <external_interrupt_signal_handler>
  f4:	1a00006f          	j	294 <external_interrupt_signal_handler>
  f8:	19c0006f          	j	294 <external_interrupt_signal_handler>
  fc:	1980006f          	j	294 <external_interrupt_signal_handler>
 100:	1940006f          	j	294 <external_interrupt_signal_handler>

Disassembly of section .text:

00000104 <_stext>:
 104:	18000093          	li	ra,384
 108:	00409093          	slli	ra,ra,0x4
 10c:	300090f3          	csrrw	ra,mstatus,ra
 110:	3058d0f3          	csrrwi	ra,mtvec,17
 114:	00000093          	li	ra,0
 118:	00008113          	mv	sp,ra
 11c:	00008193          	mv	gp,ra
 120:	00008213          	mv	tp,ra
 124:	00008293          	mv	t0,ra
 128:	00008313          	mv	t1,ra
 12c:	00008393          	mv	t2,ra
 130:	00008413          	mv	s0,ra
 134:	00008493          	mv	s1,ra
 138:	00008513          	mv	a0,ra
 13c:	00008593          	mv	a1,ra
 140:	00008613          	mv	a2,ra
 144:	00008693          	mv	a3,ra
 148:	00008713          	mv	a4,ra
 14c:	00008793          	mv	a5,ra
 150:	00008813          	mv	a6,ra
 154:	00008893          	mv	a7,ra
 158:	00008913          	mv	s2,ra
 15c:	00008993          	mv	s3,ra
 160:	00008a13          	mv	s4,ra
 164:	00008a93          	mv	s5,ra
 168:	00008b13          	mv	s6,ra
 16c:	00008b93          	mv	s7,ra
 170:	00008c13          	mv	s8,ra
 174:	00008c93          	mv	s9,ra
 178:	00008d13          	mv	s10,ra
 17c:	00008d93          	mv	s11,ra
 180:	00008e13          	mv	t3,ra
 184:	00008e93          	mv	t4,ra
 188:	00008f13          	mv	t5,ra
 18c:	00008f93          	mv	t6,ra
 190:	00002117          	auipc	sp,0x2
 194:	e7010113          	addi	sp,sp,-400 # 2000 <_stack_start>

00000198 <_start>:
 198:	00001d17          	auipc	s10,0x1
 19c:	e68d0d13          	addi	s10,s10,-408 # 1000 <_bss_end>
 1a0:	00001d97          	auipc	s11,0x1
 1a4:	e60d8d93          	addi	s11,s11,-416 # 1000 <_bss_end>
 1a8:	01bd5863          	bge	s10,s11,1b8 <main_entry>

000001ac <zero_loop>:
 1ac:	000d2023          	sw	zero,0(s10)
 1b0:	004d0d13          	addi	s10,s10,4
 1b4:	ffaddce3          	bge	s11,s10,1ac <zero_loop>

000001b8 <main_entry>:
 1b8:	00000513          	li	a0,0
 1bc:	00000593          	li	a1,0
 1c0:	00000393          	li	t2,0
 1c4:	ffff03b7          	lui	t2,0xffff0
 1c8:	3043a3f3          	csrrs	t2,mie,t2
 1cc:	00800393          	li	t2,8
 1d0:	3003a3f3          	csrrs	t2,mstatus,t2
 1d4:	00000393          	li	t2,0
 1d8:	0d0000ef          	jal	2a8 <main>

000001dc <_end>:
 1dc:	0000006f          	j	1dc <_end>

000001e0 <store_regs>:
 1e0:	00312023          	sw	gp,0(sp)
 1e4:	00412223          	sw	tp,4(sp)
 1e8:	00512423          	sw	t0,8(sp)
 1ec:	00612623          	sw	t1,12(sp)
 1f0:	00712823          	sw	t2,16(sp)
 1f4:	00a12a23          	sw	a0,20(sp)
 1f8:	00b12c23          	sw	a1,24(sp)
 1fc:	00c12e23          	sw	a2,28(sp)
 200:	02d12023          	sw	a3,32(sp)
 204:	02e12223          	sw	a4,36(sp)
 208:	02f12423          	sw	a5,40(sp)
 20c:	03012623          	sw	a6,44(sp)
 210:	03112823          	sw	a7,48(sp)
 214:	03c12a23          	sw	t3,52(sp)
 218:	03d12c23          	sw	t4,56(sp)
 21c:	03e12e23          	sw	t5,60(sp)
 220:	05f12023          	sw	t6,64(sp)
 224:	00008067          	ret

00000228 <end_except>:
 228:	00012183          	lw	gp,0(sp)
 22c:	00412203          	lw	tp,4(sp)
 230:	00812283          	lw	t0,8(sp)
 234:	00c12303          	lw	t1,12(sp)
 238:	01012383          	lw	t2,16(sp)
 23c:	01412503          	lw	a0,20(sp)
 240:	01812583          	lw	a1,24(sp)
 244:	01c12603          	lw	a2,28(sp)
 248:	02012683          	lw	a3,32(sp)
 24c:	02412703          	lw	a4,36(sp)
 250:	02812783          	lw	a5,40(sp)
 254:	02c12803          	lw	a6,44(sp)
 258:	03012883          	lw	a7,48(sp)
 25c:	03412e03          	lw	t3,52(sp)
 260:	03812e83          	lw	t4,56(sp)
 264:	03c12f03          	lw	t5,60(sp)
 268:	04012f83          	lw	t6,64(sp)
 26c:	04412083          	lw	ra,68(sp)
 270:	04810113          	addi	sp,sp,72
 274:	30200073          	mret

00000278 <instruction_address_misaligned_handler>:
 278:	0000006f          	j	278 <instruction_address_misaligned_handler>

0000027c <illegal_insn_handler>:
 27c:	0000006f          	j	27c <illegal_insn_handler>

00000280 <machine_software_interrupt_handler>:
 280:	0000006f          	j	280 <machine_software_interrupt_handler>

00000284 <load_address_misaligned_handler>:
 284:	0000006f          	j	284 <load_address_misaligned_handler>

00000288 <store_address_misaligned_handler>:
 288:	0000006f          	j	288 <store_address_misaligned_handler>

0000028c <machine_timer_interrupt_handler>:
 28c:	0000006f          	j	28c <machine_timer_interrupt_handler>

00000290 <machine_external_interrupt_handler>:
 290:	0000006f          	j	290 <machine_external_interrupt_handler>

00000294 <external_interrupt_signal_handler>:
 294:	fb810113          	addi	sp,sp,-72
 298:	04112223          	sw	ra,68(sp)
 29c:	f45ff0ef          	jal	1e0 <store_regs>
 2a0:	f89ff06f          	j	228 <end_except>

000002a4 <default_exc_handler>:
 2a4:	0000006f          	j	2a4 <default_exc_handler>

000002a8 <main>:
 2a8:	fe010113          	addi	sp,sp,-32
 2ac:	00112e23          	sw	ra,28(sp)
 2b0:	00812c23          	sw	s0,24(sp)
 2b4:	02010413          	addi	s0,sp,32
 2b8:	00500793          	li	a5,5
 2bc:	fef42623          	sw	a5,-20(s0)
 2c0:	00100793          	li	a5,1
 2c4:	fef42423          	sw	a5,-24(s0)
 2c8:	0240006f          	j	2ec <main+0x44>
 2cc:	fec42583          	lw	a1,-20(s0)
 2d0:	fe842503          	lw	a0,-24(s0)
 2d4:	134000ef          	jal	408 <__mulsi3>
 2d8:	00050793          	mv	a5,a0
 2dc:	fef42423          	sw	a5,-24(s0)
 2e0:	fec42783          	lw	a5,-20(s0)
 2e4:	fff78793          	addi	a5,a5,-1
 2e8:	fef42623          	sw	a5,-20(s0)
 2ec:	fec42783          	lw	a5,-20(s0)
 2f0:	fcf04ee3          	bgtz	a5,2cc <main+0x24>
 2f4:	00000793          	li	a5,0
 2f8:	00078513          	mv	a0,a5
 2fc:	01c12083          	lw	ra,28(sp)
 300:	01812403          	lw	s0,24(sp)
 304:	02010113          	addi	sp,sp,32
 308:	00008067          	ret

0000030c <instruction_address_misaligned_handler>:
 30c:	ff010113          	addi	sp,sp,-16
 310:	00812623          	sw	s0,12(sp)
 314:	01010413          	addi	s0,sp,16
 318:	00000013          	nop
 31c:	00c12403          	lw	s0,12(sp)
 320:	01010113          	addi	sp,sp,16
 324:	00008067          	ret

00000328 <illegal_insn_handler>:
 328:	ff010113          	addi	sp,sp,-16
 32c:	00812623          	sw	s0,12(sp)
 330:	01010413          	addi	s0,sp,16
 334:	00000013          	nop
 338:	00c12403          	lw	s0,12(sp)
 33c:	01010113          	addi	sp,sp,16
 340:	00008067          	ret

00000344 <load_address_misaligned_handler>:
 344:	ff010113          	addi	sp,sp,-16
 348:	00812623          	sw	s0,12(sp)
 34c:	01010413          	addi	s0,sp,16
 350:	00000013          	nop
 354:	00c12403          	lw	s0,12(sp)
 358:	01010113          	addi	sp,sp,16
 35c:	00008067          	ret

00000360 <store_address_misaligned_handler>:
 360:	ff010113          	addi	sp,sp,-16
 364:	00812623          	sw	s0,12(sp)
 368:	01010413          	addi	s0,sp,16
 36c:	00000013          	nop
 370:	00c12403          	lw	s0,12(sp)
 374:	01010113          	addi	sp,sp,16
 378:	00008067          	ret

0000037c <default_exc_handler>:
 37c:	ff010113          	addi	sp,sp,-16
 380:	00812623          	sw	s0,12(sp)
 384:	01010413          	addi	s0,sp,16
 388:	00000013          	nop
 38c:	00c12403          	lw	s0,12(sp)
 390:	01010113          	addi	sp,sp,16
 394:	00008067          	ret

00000398 <machine_software_interrupt_handler>:
 398:	ff010113          	addi	sp,sp,-16
 39c:	00812623          	sw	s0,12(sp)
 3a0:	01010413          	addi	s0,sp,16
 3a4:	00000013          	nop
 3a8:	00c12403          	lw	s0,12(sp)
 3ac:	01010113          	addi	sp,sp,16
 3b0:	00008067          	ret

000003b4 <machine_timer_interrupt_handler>:
 3b4:	ff010113          	addi	sp,sp,-16
 3b8:	00812623          	sw	s0,12(sp)
 3bc:	01010413          	addi	s0,sp,16
 3c0:	00000013          	nop
 3c4:	00c12403          	lw	s0,12(sp)
 3c8:	01010113          	addi	sp,sp,16
 3cc:	00008067          	ret

000003d0 <machine_external_interrupt_handler>:
 3d0:	ff010113          	addi	sp,sp,-16
 3d4:	00812623          	sw	s0,12(sp)
 3d8:	01010413          	addi	s0,sp,16
 3dc:	00000013          	nop
 3e0:	00c12403          	lw	s0,12(sp)
 3e4:	01010113          	addi	sp,sp,16
 3e8:	00008067          	ret

000003ec <external_interrupt_signal_handler>:
 3ec:	ff010113          	addi	sp,sp,-16
 3f0:	00812623          	sw	s0,12(sp)
 3f4:	01010413          	addi	s0,sp,16
 3f8:	00000013          	nop
 3fc:	00c12403          	lw	s0,12(sp)
 400:	01010113          	addi	sp,sp,16
 404:	00008067          	ret

00000408 <__mulsi3>:
 408:	00050613          	mv	a2,a0
 40c:	00000513          	li	a0,0
 410:	0015f693          	andi	a3,a1,1
 414:	00068463          	beqz	a3,41c <__mulsi3+0x14>
 418:	00c50533          	add	a0,a0,a2
 41c:	0015d593          	srli	a1,a1,0x1
 420:	00161613          	slli	a2,a2,0x1
 424:	fe0596e3          	bnez	a1,410 <__mulsi3+0x8>
 428:	00008067          	ret

0000042c <__CTOR_LIST__>:
	...

00000434 <__CTOR_END__>:
	...
