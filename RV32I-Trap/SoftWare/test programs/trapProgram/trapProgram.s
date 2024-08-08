
trapProgram.o:     file format elf32-littleriscv


Disassembly of section .vectors:

00000000 <_stack_start-0x2000>:
   0:	1040006f          	j	104 <_stext>
   4:	2740006f          	j	278 <instruction_address_misaligned_default_handler>
   8:	29c0006f          	j	2a4 <default_exc_handler>
   c:	2700006f          	j	27c <illegal_insn_default_handler>
  10:	2700006f          	j	280 <machine_software_interrupt_default_handler>
  14:	2700006f          	j	284 <load_address_misaligned_default_handler>
  18:	28c0006f          	j	2a4 <default_exc_handler>
  1c:	26c0006f          	j	288 <store_address_misaligned_default_handler>
  20:	26c0006f          	j	28c <machine_timer_interrupt_default_handler>
  24:	2800006f          	j	2a4 <default_exc_handler>
  28:	27c0006f          	j	2a4 <default_exc_handler>
  2c:	2780006f          	j	2a4 <default_exc_handler>
  30:	2600006f          	j	290 <machine_external_interrupt_default_handler>
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
 19c:	e80d0d13          	addi	s10,s10,-384 # 1018 <_bss_end>
 1a0:	00001d97          	auipc	s11,0x1
 1a4:	e78d8d93          	addi	s11,s11,-392 # 1018 <_bss_end>
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

00000278 <instruction_address_misaligned_default_handler>:
 278:	0500006f          	j	2c8 <instruction_address_misaligned_handler>

0000027c <illegal_insn_default_handler>:
 27c:	0680006f          	j	2e4 <illegal_insn_handler>

00000280 <machine_software_interrupt_default_handler>:
 280:	0d40006f          	j	354 <machine_software_interrupt_handler>

00000284 <load_address_misaligned_default_handler>:
 284:	07c0006f          	j	300 <load_address_misaligned_handler>

00000288 <store_address_misaligned_default_handler>:
 288:	0940006f          	j	31c <store_address_misaligned_handler>

0000028c <machine_timer_interrupt_default_handler>:
 28c:	1900006f          	j	41c <machine_timer_interrupt_handler>

00000290 <machine_external_interrupt_default_handler>:
 290:	2540006f          	j	4e4 <machine_external_interrupt_handler>

00000294 <external_interrupt_signal_handler>:
 294:	fb810113          	addi	sp,sp,-72
 298:	04112223          	sw	ra,68(sp)
 29c:	f45ff0ef          	jal	1e0 <store_regs>
 2a0:	f89ff06f          	j	228 <end_except>

000002a4 <default_exc_handler>:
 2a4:	0000006f          	j	2a4 <default_exc_handler>

000002a8 <main>:
 2a8:	ff010113          	addi	sp,sp,-16
 2ac:	00812623          	sw	s0,12(sp)
 2b0:	01010413          	addi	s0,sp,16
 2b4:	00000793          	li	a5,0
 2b8:	00078513          	mv	a0,a5
 2bc:	00c12403          	lw	s0,12(sp)
 2c0:	01010113          	addi	sp,sp,16
 2c4:	00008067          	ret

000002c8 <instruction_address_misaligned_handler>:
 2c8:	ff010113          	addi	sp,sp,-16
 2cc:	00812623          	sw	s0,12(sp)
 2d0:	01010413          	addi	s0,sp,16
 2d4:	00000013          	nop
 2d8:	00c12403          	lw	s0,12(sp)
 2dc:	01010113          	addi	sp,sp,16
 2e0:	30200073          	mret

000002e4 <illegal_insn_handler>:
 2e4:	ff010113          	addi	sp,sp,-16
 2e8:	00812623          	sw	s0,12(sp)
 2ec:	01010413          	addi	s0,sp,16
 2f0:	00000013          	nop
 2f4:	00c12403          	lw	s0,12(sp)
 2f8:	01010113          	addi	sp,sp,16
 2fc:	30200073          	mret

00000300 <load_address_misaligned_handler>:
 300:	ff010113          	addi	sp,sp,-16
 304:	00812623          	sw	s0,12(sp)
 308:	01010413          	addi	s0,sp,16
 30c:	00000013          	nop
 310:	00c12403          	lw	s0,12(sp)
 314:	01010113          	addi	sp,sp,16
 318:	30200073          	mret

0000031c <store_address_misaligned_handler>:
 31c:	ff010113          	addi	sp,sp,-16
 320:	00812623          	sw	s0,12(sp)
 324:	01010413          	addi	s0,sp,16
 328:	00000013          	nop
 32c:	00c12403          	lw	s0,12(sp)
 330:	01010113          	addi	sp,sp,16
 334:	30200073          	mret

00000338 <default_exc_handler>:
 338:	ff010113          	addi	sp,sp,-16
 33c:	00812623          	sw	s0,12(sp)
 340:	01010413          	addi	s0,sp,16
 344:	00000013          	nop
 348:	00c12403          	lw	s0,12(sp)
 34c:	01010113          	addi	sp,sp,16
 350:	30200073          	mret

00000354 <machine_software_interrupt_handler>:
 354:	fb010113          	addi	sp,sp,-80
 358:	04112623          	sw	ra,76(sp)
 35c:	04512423          	sw	t0,72(sp)
 360:	04612223          	sw	t1,68(sp)
 364:	04712023          	sw	t2,64(sp)
 368:	02812e23          	sw	s0,60(sp)
 36c:	02a12c23          	sw	a0,56(sp)
 370:	02b12a23          	sw	a1,52(sp)
 374:	02c12823          	sw	a2,48(sp)
 378:	02d12623          	sw	a3,44(sp)
 37c:	02e12423          	sw	a4,40(sp)
 380:	02f12223          	sw	a5,36(sp)
 384:	03012023          	sw	a6,32(sp)
 388:	01112e23          	sw	a7,28(sp)
 38c:	01c12c23          	sw	t3,24(sp)
 390:	01d12a23          	sw	t4,20(sp)
 394:	01e12823          	sw	t5,16(sp)
 398:	01f12623          	sw	t6,12(sp)
 39c:	05010413          	addi	s0,sp,80
 3a0:	000017b7          	lui	a5,0x1
 3a4:	0007a703          	lw	a4,0(a5) # 1000 <a>
 3a8:	000017b7          	lui	a5,0x1
 3ac:	0047a783          	lw	a5,4(a5) # 1004 <b>
 3b0:	00078593          	mv	a1,a5
 3b4:	00070513          	mv	a0,a4
 3b8:	210000ef          	jal	5c8 <__mulsi3>
 3bc:	00050793          	mv	a5,a0
 3c0:	00078713          	mv	a4,a5
 3c4:	000017b7          	lui	a5,0x1
 3c8:	00e7a623          	sw	a4,12(a5) # 100c <d>
 3cc:	00000013          	nop
 3d0:	04c12083          	lw	ra,76(sp)
 3d4:	04812283          	lw	t0,72(sp)
 3d8:	04412303          	lw	t1,68(sp)
 3dc:	04012383          	lw	t2,64(sp)
 3e0:	03c12403          	lw	s0,60(sp)
 3e4:	03812503          	lw	a0,56(sp)
 3e8:	03412583          	lw	a1,52(sp)
 3ec:	03012603          	lw	a2,48(sp)
 3f0:	02c12683          	lw	a3,44(sp)
 3f4:	02812703          	lw	a4,40(sp)
 3f8:	02412783          	lw	a5,36(sp)
 3fc:	02012803          	lw	a6,32(sp)
 400:	01c12883          	lw	a7,28(sp)
 404:	01812e03          	lw	t3,24(sp)
 408:	01412e83          	lw	t4,20(sp)
 40c:	01012f03          	lw	t5,16(sp)
 410:	00c12f83          	lw	t6,12(sp)
 414:	05010113          	addi	sp,sp,80
 418:	30200073          	mret

0000041c <machine_timer_interrupt_handler>:
 41c:	fb010113          	addi	sp,sp,-80
 420:	04112623          	sw	ra,76(sp)
 424:	04512423          	sw	t0,72(sp)
 428:	04612223          	sw	t1,68(sp)
 42c:	04712023          	sw	t2,64(sp)
 430:	02812e23          	sw	s0,60(sp)
 434:	02a12c23          	sw	a0,56(sp)
 438:	02b12a23          	sw	a1,52(sp)
 43c:	02c12823          	sw	a2,48(sp)
 440:	02d12623          	sw	a3,44(sp)
 444:	02e12423          	sw	a4,40(sp)
 448:	02f12223          	sw	a5,36(sp)
 44c:	03012023          	sw	a6,32(sp)
 450:	01112e23          	sw	a7,28(sp)
 454:	01c12c23          	sw	t3,24(sp)
 458:	01d12a23          	sw	t4,20(sp)
 45c:	01e12823          	sw	t5,16(sp)
 460:	01f12623          	sw	t6,12(sp)
 464:	05010413          	addi	s0,sp,80
 468:	000017b7          	lui	a5,0x1
 46c:	0047a703          	lw	a4,4(a5) # 1004 <b>
 470:	000017b7          	lui	a5,0x1
 474:	0087a783          	lw	a5,8(a5) # 1008 <c>
 478:	00078593          	mv	a1,a5
 47c:	00070513          	mv	a0,a4
 480:	148000ef          	jal	5c8 <__mulsi3>
 484:	00050793          	mv	a5,a0
 488:	00078713          	mv	a4,a5
 48c:	000017b7          	lui	a5,0x1
 490:	00e7a823          	sw	a4,16(a5) # 1010 <e>
 494:	00000013          	nop
 498:	04c12083          	lw	ra,76(sp)
 49c:	04812283          	lw	t0,72(sp)
 4a0:	04412303          	lw	t1,68(sp)
 4a4:	04012383          	lw	t2,64(sp)
 4a8:	03c12403          	lw	s0,60(sp)
 4ac:	03812503          	lw	a0,56(sp)
 4b0:	03412583          	lw	a1,52(sp)
 4b4:	03012603          	lw	a2,48(sp)
 4b8:	02c12683          	lw	a3,44(sp)
 4bc:	02812703          	lw	a4,40(sp)
 4c0:	02412783          	lw	a5,36(sp)
 4c4:	02012803          	lw	a6,32(sp)
 4c8:	01c12883          	lw	a7,28(sp)
 4cc:	01812e03          	lw	t3,24(sp)
 4d0:	01412e83          	lw	t4,20(sp)
 4d4:	01012f03          	lw	t5,16(sp)
 4d8:	00c12f83          	lw	t6,12(sp)
 4dc:	05010113          	addi	sp,sp,80
 4e0:	30200073          	mret

000004e4 <machine_external_interrupt_handler>:
 4e4:	fb010113          	addi	sp,sp,-80
 4e8:	04112623          	sw	ra,76(sp)
 4ec:	04512423          	sw	t0,72(sp)
 4f0:	04612223          	sw	t1,68(sp)
 4f4:	04712023          	sw	t2,64(sp)
 4f8:	02812e23          	sw	s0,60(sp)
 4fc:	02a12c23          	sw	a0,56(sp)
 500:	02b12a23          	sw	a1,52(sp)
 504:	02c12823          	sw	a2,48(sp)
 508:	02d12623          	sw	a3,44(sp)
 50c:	02e12423          	sw	a4,40(sp)
 510:	02f12223          	sw	a5,36(sp)
 514:	03012023          	sw	a6,32(sp)
 518:	01112e23          	sw	a7,28(sp)
 51c:	01c12c23          	sw	t3,24(sp)
 520:	01d12a23          	sw	t4,20(sp)
 524:	01e12823          	sw	t5,16(sp)
 528:	01f12623          	sw	t6,12(sp)
 52c:	05010413          	addi	s0,sp,80
 530:	000017b7          	lui	a5,0x1
 534:	0007a703          	lw	a4,0(a5) # 1000 <a>
 538:	000017b7          	lui	a5,0x1
 53c:	0087a783          	lw	a5,8(a5) # 1008 <c>
 540:	00078593          	mv	a1,a5
 544:	00070513          	mv	a0,a4
 548:	080000ef          	jal	5c8 <__mulsi3>
 54c:	00050793          	mv	a5,a0
 550:	00078713          	mv	a4,a5
 554:	000017b7          	lui	a5,0x1
 558:	00e7aa23          	sw	a4,20(a5) # 1014 <f>
 55c:	00000013          	nop
 560:	04c12083          	lw	ra,76(sp)
 564:	04812283          	lw	t0,72(sp)
 568:	04412303          	lw	t1,68(sp)
 56c:	04012383          	lw	t2,64(sp)
 570:	03c12403          	lw	s0,60(sp)
 574:	03812503          	lw	a0,56(sp)
 578:	03412583          	lw	a1,52(sp)
 57c:	03012603          	lw	a2,48(sp)
 580:	02c12683          	lw	a3,44(sp)
 584:	02812703          	lw	a4,40(sp)
 588:	02412783          	lw	a5,36(sp)
 58c:	02012803          	lw	a6,32(sp)
 590:	01c12883          	lw	a7,28(sp)
 594:	01812e03          	lw	t3,24(sp)
 598:	01412e83          	lw	t4,20(sp)
 59c:	01012f03          	lw	t5,16(sp)
 5a0:	00c12f83          	lw	t6,12(sp)
 5a4:	05010113          	addi	sp,sp,80
 5a8:	30200073          	mret

000005ac <external_interrupt_signal_handler>:
 5ac:	ff010113          	addi	sp,sp,-16
 5b0:	00812623          	sw	s0,12(sp)
 5b4:	01010413          	addi	s0,sp,16
 5b8:	00000013          	nop
 5bc:	00c12403          	lw	s0,12(sp)
 5c0:	01010113          	addi	sp,sp,16
 5c4:	30200073          	mret

000005c8 <__mulsi3>:
 5c8:	00050613          	mv	a2,a0
 5cc:	00000513          	li	a0,0
 5d0:	0015f693          	andi	a3,a1,1
 5d4:	00068463          	beqz	a3,5dc <__mulsi3+0x14>
 5d8:	00c50533          	add	a0,a0,a2
 5dc:	0015d593          	srli	a1,a1,0x1
 5e0:	00161613          	slli	a2,a2,0x1
 5e4:	fe0596e3          	bnez	a1,5d0 <__mulsi3+0x8>
 5e8:	00008067          	ret

000005ec <__CTOR_LIST__>:
	...

000005f4 <__CTOR_END__>:
	...
