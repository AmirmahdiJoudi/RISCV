
newCprogram.o:     file format elf32-littleriscv


Disassembly of section .vectors:

00000000 <_stack_start-0x2000>:
   0:	1040006f          	j	104 <_stext>
   4:	25c0006f          	j	260 <instruction_address_misaligned_default_handler>
   8:	2840006f          	j	28c <default_exc_handler>
   c:	2580006f          	j	264 <illegal_insn_default_handler>
  10:	2580006f          	j	268 <machine_software_interrupt_default_handler>
  14:	2580006f          	j	26c <load_address_misaligned_default_handler>
  18:	2740006f          	j	28c <default_exc_handler>
  1c:	2540006f          	j	270 <store_address_misaligned_default_handler>
  20:	2540006f          	j	274 <machine_timer_interrupt_default_handler>
  24:	2680006f          	j	28c <default_exc_handler>
  28:	2640006f          	j	28c <default_exc_handler>
  2c:	2600006f          	j	28c <default_exc_handler>
  30:	2480006f          	j	278 <machine_external_interrupt_default_handler>
  34:	2580006f          	j	28c <default_exc_handler>
  38:	2540006f          	j	28c <default_exc_handler>
  3c:	2500006f          	j	28c <default_exc_handler>
  40:	24c0006f          	j	28c <default_exc_handler>
  44:	2480006f          	j	28c <default_exc_handler>
  48:	2440006f          	j	28c <default_exc_handler>
  4c:	2400006f          	j	28c <default_exc_handler>
  50:	23c0006f          	j	28c <default_exc_handler>
  54:	2380006f          	j	28c <default_exc_handler>
  58:	2340006f          	j	28c <default_exc_handler>
  5c:	2300006f          	j	28c <default_exc_handler>
  60:	22c0006f          	j	28c <default_exc_handler>
  64:	2280006f          	j	28c <default_exc_handler>
  68:	2240006f          	j	28c <default_exc_handler>
  6c:	2200006f          	j	28c <default_exc_handler>
  70:	21c0006f          	j	28c <default_exc_handler>
  74:	2180006f          	j	28c <default_exc_handler>
  78:	2140006f          	j	28c <default_exc_handler>
  7c:	2100006f          	j	28c <default_exc_handler>
  80:	20c0006f          	j	28c <default_exc_handler>
  84:	2080006f          	j	28c <default_exc_handler>
  88:	2040006f          	j	28c <default_exc_handler>
  8c:	2000006f          	j	28c <default_exc_handler>
  90:	1fc0006f          	j	28c <default_exc_handler>
  94:	1f80006f          	j	28c <default_exc_handler>
  98:	1f40006f          	j	28c <default_exc_handler>
  9c:	1f00006f          	j	28c <default_exc_handler>
  a0:	1ec0006f          	j	28c <default_exc_handler>
  a4:	1e80006f          	j	28c <default_exc_handler>
  a8:	1e40006f          	j	28c <default_exc_handler>
  ac:	1e00006f          	j	28c <default_exc_handler>
  b0:	1dc0006f          	j	28c <default_exc_handler>
  b4:	1d80006f          	j	28c <default_exc_handler>
  b8:	1d40006f          	j	28c <default_exc_handler>
  bc:	1d00006f          	j	28c <default_exc_handler>
  c0:	1cc0006f          	j	28c <default_exc_handler>
  c4:	1b80006f          	j	27c <external_interrupt_signal_handler>
  c8:	1b40006f          	j	27c <external_interrupt_signal_handler>
  cc:	1b00006f          	j	27c <external_interrupt_signal_handler>
  d0:	1ac0006f          	j	27c <external_interrupt_signal_handler>
  d4:	1a80006f          	j	27c <external_interrupt_signal_handler>
  d8:	1a40006f          	j	27c <external_interrupt_signal_handler>
  dc:	1a00006f          	j	27c <external_interrupt_signal_handler>
  e0:	19c0006f          	j	27c <external_interrupt_signal_handler>
  e4:	1980006f          	j	27c <external_interrupt_signal_handler>
  e8:	1940006f          	j	27c <external_interrupt_signal_handler>
  ec:	1900006f          	j	27c <external_interrupt_signal_handler>
  f0:	18c0006f          	j	27c <external_interrupt_signal_handler>
  f4:	1880006f          	j	27c <external_interrupt_signal_handler>
  f8:	1840006f          	j	27c <external_interrupt_signal_handler>
  fc:	1800006f          	j	27c <external_interrupt_signal_handler>
 100:	17c0006f          	j	27c <external_interrupt_signal_handler>

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
 1c0:	0d0000ef          	jal	290 <main>

000001c4 <_end>:
 1c4:	0000006f          	j	1c4 <_end>

000001c8 <store_regs>:
 1c8:	00312023          	sw	gp,0(sp)
 1cc:	00412223          	sw	tp,4(sp)
 1d0:	00512423          	sw	t0,8(sp)
 1d4:	00612623          	sw	t1,12(sp)
 1d8:	00712823          	sw	t2,16(sp)
 1dc:	00a12a23          	sw	a0,20(sp)
 1e0:	00b12c23          	sw	a1,24(sp)
 1e4:	00c12e23          	sw	a2,28(sp)
 1e8:	02d12023          	sw	a3,32(sp)
 1ec:	02e12223          	sw	a4,36(sp)
 1f0:	02f12423          	sw	a5,40(sp)
 1f4:	03012623          	sw	a6,44(sp)
 1f8:	03112823          	sw	a7,48(sp)
 1fc:	03c12a23          	sw	t3,52(sp)
 200:	03d12c23          	sw	t4,56(sp)
 204:	03e12e23          	sw	t5,60(sp)
 208:	05f12023          	sw	t6,64(sp)
 20c:	00008067          	ret

00000210 <end_except>:
 210:	00012183          	lw	gp,0(sp)
 214:	00412203          	lw	tp,4(sp)
 218:	00812283          	lw	t0,8(sp)
 21c:	00c12303          	lw	t1,12(sp)
 220:	01012383          	lw	t2,16(sp)
 224:	01412503          	lw	a0,20(sp)
 228:	01812583          	lw	a1,24(sp)
 22c:	01c12603          	lw	a2,28(sp)
 230:	02012683          	lw	a3,32(sp)
 234:	02412703          	lw	a4,36(sp)
 238:	02812783          	lw	a5,40(sp)
 23c:	02c12803          	lw	a6,44(sp)
 240:	03012883          	lw	a7,48(sp)
 244:	03412e03          	lw	t3,52(sp)
 248:	03812e83          	lw	t4,56(sp)
 24c:	03c12f03          	lw	t5,60(sp)
 250:	04012f83          	lw	t6,64(sp)
 254:	04412083          	lw	ra,68(sp)
 258:	04810113          	addi	sp,sp,72
 25c:	30200073          	mret

00000260 <instruction_address_misaligned_default_handler>:
 260:	0640006f          	j	2c4 <instruction_address_misaligned_handler>

00000264 <illegal_insn_default_handler>:
 264:	07c0006f          	j	2e0 <illegal_insn_handler>

00000268 <machine_software_interrupt_default_handler>:
 268:	0e80006f          	j	350 <machine_software_interrupt_handler>

0000026c <load_address_misaligned_default_handler>:
 26c:	0900006f          	j	2fc <load_address_misaligned_handler>

00000270 <store_address_misaligned_default_handler>:
 270:	0a80006f          	j	318 <store_address_misaligned_handler>

00000274 <machine_timer_interrupt_default_handler>:
 274:	1a40006f          	j	418 <machine_timer_interrupt_handler>

00000278 <machine_external_interrupt_default_handler>:
 278:	2680006f          	j	4e0 <machine_external_interrupt_handler>

0000027c <external_interrupt_signal_handler>:
 27c:	fb810113          	addi	sp,sp,-72
 280:	04112223          	sw	ra,68(sp)
 284:	f45ff0ef          	jal	1c8 <store_regs>
 288:	f89ff06f          	j	210 <end_except>

0000028c <default_exc_handler>:
 28c:	0000006f          	j	28c <default_exc_handler>

00000290 <main>:
 290:	ff010113          	addi	sp,sp,-16
 294:	00812623          	sw	s0,12(sp)
 298:	01010413          	addi	s0,sp,16
 29c:	000017b7          	lui	a5,0x1
 2a0:	88878793          	addi	a5,a5,-1912 # 888 <__DTOR_END__+0x290>
 2a4:	3047a073          	csrs	mie,a5
 2a8:	00800793          	li	a5,8
 2ac:	3007a073          	csrs	mstatus,a5
 2b0:	00000793          	li	a5,0
 2b4:	00078513          	mv	a0,a5
 2b8:	00c12403          	lw	s0,12(sp)
 2bc:	01010113          	addi	sp,sp,16
 2c0:	00008067          	ret

000002c4 <instruction_address_misaligned_handler>:
 2c4:	ff010113          	addi	sp,sp,-16
 2c8:	00812623          	sw	s0,12(sp)
 2cc:	01010413          	addi	s0,sp,16
 2d0:	00000013          	nop
 2d4:	00c12403          	lw	s0,12(sp)
 2d8:	01010113          	addi	sp,sp,16
 2dc:	30200073          	mret

000002e0 <illegal_insn_handler>:
 2e0:	ff010113          	addi	sp,sp,-16
 2e4:	00812623          	sw	s0,12(sp)
 2e8:	01010413          	addi	s0,sp,16
 2ec:	00000013          	nop
 2f0:	00c12403          	lw	s0,12(sp)
 2f4:	01010113          	addi	sp,sp,16
 2f8:	30200073          	mret

000002fc <load_address_misaligned_handler>:
 2fc:	ff010113          	addi	sp,sp,-16
 300:	00812623          	sw	s0,12(sp)
 304:	01010413          	addi	s0,sp,16
 308:	00000013          	nop
 30c:	00c12403          	lw	s0,12(sp)
 310:	01010113          	addi	sp,sp,16
 314:	30200073          	mret

00000318 <store_address_misaligned_handler>:
 318:	ff010113          	addi	sp,sp,-16
 31c:	00812623          	sw	s0,12(sp)
 320:	01010413          	addi	s0,sp,16
 324:	00000013          	nop
 328:	00c12403          	lw	s0,12(sp)
 32c:	01010113          	addi	sp,sp,16
 330:	30200073          	mret

00000334 <default_exc_handler>:
 334:	ff010113          	addi	sp,sp,-16
 338:	00812623          	sw	s0,12(sp)
 33c:	01010413          	addi	s0,sp,16
 340:	00000013          	nop
 344:	00c12403          	lw	s0,12(sp)
 348:	01010113          	addi	sp,sp,16
 34c:	30200073          	mret

00000350 <machine_software_interrupt_handler>:
 350:	fb010113          	addi	sp,sp,-80
 354:	04112623          	sw	ra,76(sp)
 358:	04512423          	sw	t0,72(sp)
 35c:	04612223          	sw	t1,68(sp)
 360:	04712023          	sw	t2,64(sp)
 364:	02812e23          	sw	s0,60(sp)
 368:	02a12c23          	sw	a0,56(sp)
 36c:	02b12a23          	sw	a1,52(sp)
 370:	02c12823          	sw	a2,48(sp)
 374:	02d12623          	sw	a3,44(sp)
 378:	02e12423          	sw	a4,40(sp)
 37c:	02f12223          	sw	a5,36(sp)
 380:	03012023          	sw	a6,32(sp)
 384:	01112e23          	sw	a7,28(sp)
 388:	01c12c23          	sw	t3,24(sp)
 38c:	01d12a23          	sw	t4,20(sp)
 390:	01e12823          	sw	t5,16(sp)
 394:	01f12623          	sw	t6,12(sp)
 398:	05010413          	addi	s0,sp,80
 39c:	000017b7          	lui	a5,0x1
 3a0:	0007a703          	lw	a4,0(a5) # 1000 <a>
 3a4:	000017b7          	lui	a5,0x1
 3a8:	0047a783          	lw	a5,4(a5) # 1004 <b>
 3ac:	00078593          	mv	a1,a5
 3b0:	00070513          	mv	a0,a4
 3b4:	210000ef          	jal	5c4 <__mulsi3>
 3b8:	00050793          	mv	a5,a0
 3bc:	00078713          	mv	a4,a5
 3c0:	000017b7          	lui	a5,0x1
 3c4:	00e7a623          	sw	a4,12(a5) # 100c <d>
 3c8:	00000013          	nop
 3cc:	04c12083          	lw	ra,76(sp)
 3d0:	04812283          	lw	t0,72(sp)
 3d4:	04412303          	lw	t1,68(sp)
 3d8:	04012383          	lw	t2,64(sp)
 3dc:	03c12403          	lw	s0,60(sp)
 3e0:	03812503          	lw	a0,56(sp)
 3e4:	03412583          	lw	a1,52(sp)
 3e8:	03012603          	lw	a2,48(sp)
 3ec:	02c12683          	lw	a3,44(sp)
 3f0:	02812703          	lw	a4,40(sp)
 3f4:	02412783          	lw	a5,36(sp)
 3f8:	02012803          	lw	a6,32(sp)
 3fc:	01c12883          	lw	a7,28(sp)
 400:	01812e03          	lw	t3,24(sp)
 404:	01412e83          	lw	t4,20(sp)
 408:	01012f03          	lw	t5,16(sp)
 40c:	00c12f83          	lw	t6,12(sp)
 410:	05010113          	addi	sp,sp,80
 414:	30200073          	mret

00000418 <machine_timer_interrupt_handler>:
 418:	fb010113          	addi	sp,sp,-80
 41c:	04112623          	sw	ra,76(sp)
 420:	04512423          	sw	t0,72(sp)
 424:	04612223          	sw	t1,68(sp)
 428:	04712023          	sw	t2,64(sp)
 42c:	02812e23          	sw	s0,60(sp)
 430:	02a12c23          	sw	a0,56(sp)
 434:	02b12a23          	sw	a1,52(sp)
 438:	02c12823          	sw	a2,48(sp)
 43c:	02d12623          	sw	a3,44(sp)
 440:	02e12423          	sw	a4,40(sp)
 444:	02f12223          	sw	a5,36(sp)
 448:	03012023          	sw	a6,32(sp)
 44c:	01112e23          	sw	a7,28(sp)
 450:	01c12c23          	sw	t3,24(sp)
 454:	01d12a23          	sw	t4,20(sp)
 458:	01e12823          	sw	t5,16(sp)
 45c:	01f12623          	sw	t6,12(sp)
 460:	05010413          	addi	s0,sp,80
 464:	000017b7          	lui	a5,0x1
 468:	0047a703          	lw	a4,4(a5) # 1004 <b>
 46c:	000017b7          	lui	a5,0x1
 470:	0087a783          	lw	a5,8(a5) # 1008 <c>
 474:	00078593          	mv	a1,a5
 478:	00070513          	mv	a0,a4
 47c:	148000ef          	jal	5c4 <__mulsi3>
 480:	00050793          	mv	a5,a0
 484:	00078713          	mv	a4,a5
 488:	000017b7          	lui	a5,0x1
 48c:	00e7a823          	sw	a4,16(a5) # 1010 <e>
 490:	00000013          	nop
 494:	04c12083          	lw	ra,76(sp)
 498:	04812283          	lw	t0,72(sp)
 49c:	04412303          	lw	t1,68(sp)
 4a0:	04012383          	lw	t2,64(sp)
 4a4:	03c12403          	lw	s0,60(sp)
 4a8:	03812503          	lw	a0,56(sp)
 4ac:	03412583          	lw	a1,52(sp)
 4b0:	03012603          	lw	a2,48(sp)
 4b4:	02c12683          	lw	a3,44(sp)
 4b8:	02812703          	lw	a4,40(sp)
 4bc:	02412783          	lw	a5,36(sp)
 4c0:	02012803          	lw	a6,32(sp)
 4c4:	01c12883          	lw	a7,28(sp)
 4c8:	01812e03          	lw	t3,24(sp)
 4cc:	01412e83          	lw	t4,20(sp)
 4d0:	01012f03          	lw	t5,16(sp)
 4d4:	00c12f83          	lw	t6,12(sp)
 4d8:	05010113          	addi	sp,sp,80
 4dc:	30200073          	mret

000004e0 <machine_external_interrupt_handler>:
 4e0:	fb010113          	addi	sp,sp,-80
 4e4:	04112623          	sw	ra,76(sp)
 4e8:	04512423          	sw	t0,72(sp)
 4ec:	04612223          	sw	t1,68(sp)
 4f0:	04712023          	sw	t2,64(sp)
 4f4:	02812e23          	sw	s0,60(sp)
 4f8:	02a12c23          	sw	a0,56(sp)
 4fc:	02b12a23          	sw	a1,52(sp)
 500:	02c12823          	sw	a2,48(sp)
 504:	02d12623          	sw	a3,44(sp)
 508:	02e12423          	sw	a4,40(sp)
 50c:	02f12223          	sw	a5,36(sp)
 510:	03012023          	sw	a6,32(sp)
 514:	01112e23          	sw	a7,28(sp)
 518:	01c12c23          	sw	t3,24(sp)
 51c:	01d12a23          	sw	t4,20(sp)
 520:	01e12823          	sw	t5,16(sp)
 524:	01f12623          	sw	t6,12(sp)
 528:	05010413          	addi	s0,sp,80
 52c:	000017b7          	lui	a5,0x1
 530:	0007a703          	lw	a4,0(a5) # 1000 <a>
 534:	000017b7          	lui	a5,0x1
 538:	0087a783          	lw	a5,8(a5) # 1008 <c>
 53c:	00078593          	mv	a1,a5
 540:	00070513          	mv	a0,a4
 544:	080000ef          	jal	5c4 <__mulsi3>
 548:	00050793          	mv	a5,a0
 54c:	00078713          	mv	a4,a5
 550:	000017b7          	lui	a5,0x1
 554:	00e7aa23          	sw	a4,20(a5) # 1014 <f>
 558:	00000013          	nop
 55c:	04c12083          	lw	ra,76(sp)
 560:	04812283          	lw	t0,72(sp)
 564:	04412303          	lw	t1,68(sp)
 568:	04012383          	lw	t2,64(sp)
 56c:	03c12403          	lw	s0,60(sp)
 570:	03812503          	lw	a0,56(sp)
 574:	03412583          	lw	a1,52(sp)
 578:	03012603          	lw	a2,48(sp)
 57c:	02c12683          	lw	a3,44(sp)
 580:	02812703          	lw	a4,40(sp)
 584:	02412783          	lw	a5,36(sp)
 588:	02012803          	lw	a6,32(sp)
 58c:	01c12883          	lw	a7,28(sp)
 590:	01812e03          	lw	t3,24(sp)
 594:	01412e83          	lw	t4,20(sp)
 598:	01012f03          	lw	t5,16(sp)
 59c:	00c12f83          	lw	t6,12(sp)
 5a0:	05010113          	addi	sp,sp,80
 5a4:	30200073          	mret

000005a8 <external_interrupt_signal_handler>:
 5a8:	ff010113          	addi	sp,sp,-16
 5ac:	00812623          	sw	s0,12(sp)
 5b0:	01010413          	addi	s0,sp,16
 5b4:	00000013          	nop
 5b8:	00c12403          	lw	s0,12(sp)
 5bc:	01010113          	addi	sp,sp,16
 5c0:	30200073          	mret

000005c4 <__mulsi3>:
 5c4:	00050613          	mv	a2,a0
 5c8:	00000513          	li	a0,0
 5cc:	0015f693          	andi	a3,a1,1
 5d0:	00068463          	beqz	a3,5d8 <__mulsi3+0x14>
 5d4:	00c50533          	add	a0,a0,a2
 5d8:	0015d593          	srli	a1,a1,0x1
 5dc:	00161613          	slli	a2,a2,0x1
 5e0:	fe0596e3          	bnez	a1,5cc <__mulsi3+0x8>
 5e4:	00008067          	ret

000005e8 <__CTOR_LIST__>:
	...

000005f0 <__CTOR_END__>:
	...
