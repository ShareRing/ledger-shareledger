
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	b08c      	sub	sp, #48	; 0x30
c0de0004:	b662      	cpsie	i
c0de0006:	f004 fc6b 	bl	c0de48e0 <view_init>
c0de000a:	f008 fc7f 	bl	c0de890c <os_boot>
c0de000e:	466c      	mov	r4, sp
c0de0010:	4620      	mov	r0, r4
c0de0012:	f009 fcc9 	bl	c0de99a8 <setjmp>
c0de0016:	f8ad 002c 	strh.w	r0, [sp, #44]	; 0x2c
c0de001a:	0400      	lsls	r0, r0, #16
c0de001c:	d006      	beq.n	c0de002c <main+0x2c>
c0de001e:	2000      	movs	r0, #0
c0de0020:	f8ad 002c 	strh.w	r0, [sp, #44]	; 0x2c
c0de0024:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0026:	f009 fc23 	bl	c0de9870 <try_context_set>
c0de002a:	e007      	b.n	c0de003c <main+0x3c>
c0de002c:	4668      	mov	r0, sp
c0de002e:	f009 fc1f 	bl	c0de9870 <try_context_set>
c0de0032:	900a      	str	r0, [sp, #40]	; 0x28
c0de0034:	f004 fb7c 	bl	c0de4730 <app_init>
c0de0038:	f004 fb8e 	bl	c0de4758 <app_main>
c0de003c:	f009 fc10 	bl	c0de9860 <try_context_get>
c0de0040:	42a0      	cmp	r0, r4
c0de0042:	d102      	bne.n	c0de004a <main+0x4a>
c0de0044:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0046:	f009 fc13 	bl	c0de9870 <try_context_set>
c0de004a:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
c0de004e:	b910      	cbnz	r0, c0de0056 <main+0x56>
c0de0050:	2000      	movs	r0, #0
c0de0052:	b00c      	add	sp, #48	; 0x30
c0de0054:	bd10      	pop	{r4, pc}
c0de0056:	f008 fc5c 	bl	c0de8912 <os_longjmp>

c0de005a <_code>:
	...

c0de005c <addr_getNumItems>:
c0de005c:	b510      	push	{r4, lr}
c0de005e:	4604      	mov	r4, r0
c0de0060:	4809      	ldr	r0, [pc, #36]	; (c0de0088 <addr_getNumItems+0x2c>)
c0de0062:	4478      	add	r0, pc
c0de0064:	f005 fc26 	bl	c0de58b4 <zemu_log_stack>
c0de0068:	2001      	movs	r0, #1
c0de006a:	7020      	strb	r0, [r4, #0]
c0de006c:	f005 f9ae 	bl	c0de53cc <app_mode_expert>
c0de0070:	b918      	cbnz	r0, c0de007a <addr_getNumItems+0x1e>
c0de0072:	4804      	ldr	r0, [pc, #16]	; (c0de0084 <addr_getNumItems+0x28>)
c0de0074:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0078:	b108      	cbz	r0, c0de007e <addr_getNumItems+0x22>
c0de007a:	2002      	movs	r0, #2
c0de007c:	7020      	strb	r0, [r4, #0]
c0de007e:	2003      	movs	r0, #3
c0de0080:	bd10      	pop	{r4, pc}
c0de0082:	bf00      	nop
c0de0084:	00003854 	.word	0x00003854
c0de0088:	0000b013 	.word	0x0000b013

c0de008c <addr_getItem>:
c0de008c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0090:	b0ce      	sub	sp, #312	; 0x138
c0de0092:	f50d 7aac 	add.w	sl, sp, #344	; 0x158
c0de0096:	461f      	mov	r7, r3
c0de0098:	4615      	mov	r5, r2
c0de009a:	460e      	mov	r6, r1
c0de009c:	2801      	cmp	r0, #1
c0de009e:	e89a 0510 	ldmia.w	sl, {r4, r8, sl}
c0de00a2:	d03d      	beq.n	c0de0120 <addr_getItem+0x94>
c0de00a4:	2800      	cmp	r0, #0
c0de00a6:	f040 809f 	bne.w	c0de01e8 <addr_getItem+0x15c>
c0de00aa:	4a78      	ldr	r2, [pc, #480]	; (c0de028c <addr_getItem+0x200>)
c0de00ac:	4630      	mov	r0, r6
c0de00ae:	4629      	mov	r1, r5
c0de00b0:	447a      	add	r2, pc
c0de00b2:	f009 f969 	bl	c0de9388 <snprintf>
c0de00b6:	4e74      	ldr	r6, [pc, #464]	; (c0de0288 <addr_getItem+0x1fc>)
c0de00b8:	eb09 0006 	add.w	r0, r9, r6
c0de00bc:	3021      	adds	r0, #33	; 0x21
c0de00be:	f009 fc8b 	bl	c0de99d8 <strlen>
c0de00c2:	4605      	mov	r5, r0
c0de00c4:	4638      	mov	r0, r7
c0de00c6:	4621      	mov	r1, r4
c0de00c8:	f009 fc28 	bl	c0de991c <explicit_bzero>
c0de00cc:	2000      	movs	r0, #0
c0de00ce:	f88a 0000 	strb.w	r0, [sl]
c0de00d2:	1e60      	subs	r0, r4, #1
c0de00d4:	b282      	uxth	r2, r0
c0de00d6:	2a00      	cmp	r2, #0
c0de00d8:	f000 80cc 	beq.w	c0de0274 <addr_getItem+0x1e8>
c0de00dc:	0429      	lsls	r1, r5, #16
c0de00de:	f000 80c9 	beq.w	c0de0274 <addr_getItem+0x1e8>
c0de00e2:	b281      	uxth	r1, r0
c0de00e4:	b2ab      	uxth	r3, r5
c0de00e6:	fbb3 f1f1 	udiv	r1, r3, r1
c0de00ea:	fb01 5010 	mls	r0, r1, r0, r5
c0de00ee:	b283      	uxth	r3, r0
c0de00f0:	461d      	mov	r5, r3
c0de00f2:	2b00      	cmp	r3, #0
c0de00f4:	bf18      	it	ne
c0de00f6:	2501      	movne	r5, #1
c0de00f8:	4429      	add	r1, r5
c0de00fa:	f88a 1000 	strb.w	r1, [sl]
c0de00fe:	b2c9      	uxtb	r1, r1
c0de0100:	4541      	cmp	r1, r8
c0de0102:	f240 80b7 	bls.w	c0de0274 <addr_getItem+0x1e8>
c0de0106:	0400      	lsls	r0, r0, #16
c0de0108:	f000 80a5 	beq.w	c0de0256 <addr_getItem+0x1ca>
c0de010c:	1e48      	subs	r0, r1, #1
c0de010e:	4540      	cmp	r0, r8
c0de0110:	f040 80a1 	bne.w	c0de0256 <addr_getItem+0x1ca>
c0de0114:	eb09 0006 	add.w	r0, r9, r6
c0de0118:	fb08 0002 	mla	r0, r8, r2, r0
c0de011c:	461a      	mov	r2, r3
c0de011e:	e09e      	b.n	c0de025e <addr_getItem+0x1d2>
c0de0120:	f005 f954 	bl	c0de53cc <app_mode_expert>
c0de0124:	b920      	cbnz	r0, c0de0130 <addr_getItem+0xa4>
c0de0126:	4855      	ldr	r0, [pc, #340]	; (c0de027c <addr_getItem+0x1f0>)
c0de0128:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de012c:	2800      	cmp	r0, #0
c0de012e:	d05b      	beq.n	c0de01e8 <addr_getItem+0x15c>
c0de0130:	9701      	str	r7, [sp, #4]
c0de0132:	4630      	mov	r0, r6
c0de0134:	4629      	mov	r1, r5
c0de0136:	4a56      	ldr	r2, [pc, #344]	; (c0de0290 <addr_getItem+0x204>)
c0de0138:	447a      	add	r2, pc
c0de013a:	f009 f925 	bl	c0de9388 <snprintf>
c0de013e:	ae03      	add	r6, sp, #12
c0de0140:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de0144:	4630      	mov	r0, r6
c0de0146:	f009 fbe9 	bl	c0de991c <explicit_bzero>
c0de014a:	4f52      	ldr	r7, [pc, #328]	; (c0de0294 <addr_getItem+0x208>)
c0de014c:	4852      	ldr	r0, [pc, #328]	; (c0de0298 <addr_getItem+0x20c>)
c0de014e:	f8df 8130 	ldr.w	r8, [pc, #304]	; c0de0280 <addr_getItem+0x1f4>
c0de0152:	f04f 0b00 	mov.w	fp, #0
c0de0156:	f04f 0a00 	mov.w	sl, #0
c0de015a:	447f      	add	r7, pc
c0de015c:	4478      	add	r0, pc
c0de015e:	9002      	str	r0, [sp, #8]
c0de0160:	f1bb 0f05 	cmp.w	fp, #5
c0de0164:	d047      	beq.n	c0de01f6 <addr_getItem+0x16a>
c0de0166:	eb09 0008 	add.w	r0, r9, r8
c0de016a:	f5ca 7496 	rsb	r4, sl, #300	; 0x12c
c0de016e:	eb06 050a 	add.w	r5, r6, sl
c0de0172:	463a      	mov	r2, r7
c0de0174:	f850 002b 	ldr.w	r0, [r0, fp, lsl #2]
c0de0178:	4621      	mov	r1, r4
c0de017a:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
c0de017e:	4628      	mov	r0, r5
c0de0180:	f009 f902 	bl	c0de9388 <snprintf>
c0de0184:	f000 f88c 	bl	c0de02a0 <OUTLINED_FUNCTION_0>
c0de0188:	b380      	cbz	r0, c0de01ec <addr_getItem+0x160>
c0de018a:	42a0      	cmp	r0, r4
c0de018c:	d22e      	bcs.n	c0de01ec <addr_getItem+0x160>
c0de018e:	4482      	add	sl, r0
c0de0190:	eb09 0008 	add.w	r0, r9, r8
c0de0194:	f850 002b 	ldr.w	r0, [r0, fp, lsl #2]
c0de0198:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
c0de019c:	dc0f      	bgt.n	c0de01be <addr_getItem+0x132>
c0de019e:	4a3f      	ldr	r2, [pc, #252]	; (c0de029c <addr_getItem+0x210>)
c0de01a0:	eb06 050a 	add.w	r5, r6, sl
c0de01a4:	f5ca 7496 	rsb	r4, sl, #300	; 0x12c
c0de01a8:	4628      	mov	r0, r5
c0de01aa:	4621      	mov	r1, r4
c0de01ac:	447a      	add	r2, pc
c0de01ae:	f009 f8eb 	bl	c0de9388 <snprintf>
c0de01b2:	f000 f875 	bl	c0de02a0 <OUTLINED_FUNCTION_0>
c0de01b6:	b1c8      	cbz	r0, c0de01ec <addr_getItem+0x160>
c0de01b8:	42a0      	cmp	r0, r4
c0de01ba:	d217      	bcs.n	c0de01ec <addr_getItem+0x160>
c0de01bc:	4482      	add	sl, r0
c0de01be:	f1bb 0f04 	cmp.w	fp, #4
c0de01c2:	d00e      	beq.n	c0de01e2 <addr_getItem+0x156>
c0de01c4:	eb06 050a 	add.w	r5, r6, sl
c0de01c8:	f5ca 7496 	rsb	r4, sl, #300	; 0x12c
c0de01cc:	9a02      	ldr	r2, [sp, #8]
c0de01ce:	4628      	mov	r0, r5
c0de01d0:	4621      	mov	r1, r4
c0de01d2:	f009 f8d9 	bl	c0de9388 <snprintf>
c0de01d6:	f000 f863 	bl	c0de02a0 <OUTLINED_FUNCTION_0>
c0de01da:	b138      	cbz	r0, c0de01ec <addr_getItem+0x160>
c0de01dc:	42a0      	cmp	r0, r4
c0de01de:	d205      	bcs.n	c0de01ec <addr_getItem+0x160>
c0de01e0:	4482      	add	sl, r0
c0de01e2:	f10b 0b01 	add.w	fp, fp, #1
c0de01e6:	e7bb      	b.n	c0de0160 <addr_getItem+0xd4>
c0de01e8:	2005      	movs	r0, #5
c0de01ea:	e044      	b.n	c0de0276 <addr_getItem+0x1ea>
c0de01ec:	2052      	movs	r0, #82	; 0x52
c0de01ee:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de01f2:	4824      	ldr	r0, [pc, #144]	; (c0de0284 <addr_getItem+0x1f8>)
c0de01f4:	9003      	str	r0, [sp, #12]
c0de01f6:	f10d 080c 	add.w	r8, sp, #12
c0de01fa:	4640      	mov	r0, r8
c0de01fc:	f009 fbec 	bl	c0de99d8 <strlen>
c0de0200:	9c56      	ldr	r4, [sp, #344]	; 0x158
c0de0202:	9f01      	ldr	r7, [sp, #4]
c0de0204:	4606      	mov	r6, r0
c0de0206:	4638      	mov	r0, r7
c0de0208:	4621      	mov	r1, r4
c0de020a:	f009 fb87 	bl	c0de991c <explicit_bzero>
c0de020e:	9d58      	ldr	r5, [sp, #352]	; 0x160
c0de0210:	2000      	movs	r0, #0
c0de0212:	7028      	strb	r0, [r5, #0]
c0de0214:	1e60      	subs	r0, r4, #1
c0de0216:	b282      	uxth	r2, r0
c0de0218:	b362      	cbz	r2, c0de0274 <addr_getItem+0x1e8>
c0de021a:	0431      	lsls	r1, r6, #16
c0de021c:	d02a      	beq.n	c0de0274 <addr_getItem+0x1e8>
c0de021e:	b281      	uxth	r1, r0
c0de0220:	b2b3      	uxth	r3, r6
c0de0222:	fbb3 f1f1 	udiv	r1, r3, r1
c0de0226:	fb01 6010 	mls	r0, r1, r0, r6
c0de022a:	b283      	uxth	r3, r0
c0de022c:	461c      	mov	r4, r3
c0de022e:	2b00      	cmp	r3, #0
c0de0230:	bf18      	it	ne
c0de0232:	2401      	movne	r4, #1
c0de0234:	4421      	add	r1, r4
c0de0236:	9c57      	ldr	r4, [sp, #348]	; 0x15c
c0de0238:	7029      	strb	r1, [r5, #0]
c0de023a:	b2c9      	uxtb	r1, r1
c0de023c:	42a1      	cmp	r1, r4
c0de023e:	d919      	bls.n	c0de0274 <addr_getItem+0x1e8>
c0de0240:	9c57      	ldr	r4, [sp, #348]	; 0x15c
c0de0242:	0400      	lsls	r0, r0, #16
c0de0244:	d011      	beq.n	c0de026a <addr_getItem+0x1de>
c0de0246:	1e48      	subs	r0, r1, #1
c0de0248:	42a0      	cmp	r0, r4
c0de024a:	d10e      	bne.n	c0de026a <addr_getItem+0x1de>
c0de024c:	fb04 8102 	mla	r1, r4, r2, r8
c0de0250:	4638      	mov	r0, r7
c0de0252:	461a      	mov	r2, r3
c0de0254:	e00c      	b.n	c0de0270 <addr_getItem+0x1e4>
c0de0256:	eb09 0006 	add.w	r0, r9, r6
c0de025a:	fb08 0002 	mla	r0, r8, r2, r0
c0de025e:	f100 0121 	add.w	r1, r0, #33	; 0x21
c0de0262:	4638      	mov	r0, r7
c0de0264:	f009 fb53 	bl	c0de990e <__aeabi_memmove>
c0de0268:	e004      	b.n	c0de0274 <addr_getItem+0x1e8>
c0de026a:	fb04 8102 	mla	r1, r4, r2, r8
c0de026e:	4638      	mov	r0, r7
c0de0270:	f009 fb4b 	bl	c0de990a <__aeabi_memcpy>
c0de0274:	2003      	movs	r0, #3
c0de0276:	b04e      	add	sp, #312	; 0x138
c0de0278:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de027c:	00003854 	.word	0x00003854
c0de0280:	00003858 	.word	0x00003858
c0de0284:	4f525245 	.word	0x4f525245
c0de0288:	00006580 	.word	0x00006580
c0de028c:	0000acfb 	.word	0x0000acfb
c0de0290:	0000b28a 	.word	0x0000b28a
c0de0294:	00009a7a 	.word	0x00009a7a
c0de0298:	00009d0d 	.word	0x00009d0d
c0de029c:	0000a428 	.word	0x0000a428

c0de02a0 <OUTLINED_FUNCTION_0>:
c0de02a0:	4628      	mov	r0, r5
c0de02a2:	4621      	mov	r1, r4
c0de02a4:	f009 bbc7 	b.w	c0de9a36 <strnlen>

c0de02a8 <handleApdu>:
c0de02a8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de02ac:	b08e      	sub	sp, #56	; 0x38
c0de02ae:	4682      	mov	sl, r0
c0de02b0:	2000      	movs	r0, #0
c0de02b2:	4617      	mov	r7, r2
c0de02b4:	468b      	mov	fp, r1
c0de02b6:	f8ad 0036 	strh.w	r0, [sp, #54]	; 0x36
c0de02ba:	ae01      	add	r6, sp, #4
c0de02bc:	4630      	mov	r0, r6
c0de02be:	f009 fb73 	bl	c0de99a8 <setjmp>
c0de02c2:	4605      	mov	r5, r0
c0de02c4:	f8ad 0030 	strh.w	r0, [sp, #48]	; 0x30
c0de02c8:	b280      	uxth	r0, r0
c0de02ca:	b338      	cbz	r0, c0de031c <handleApdu+0x74>
c0de02cc:	2805      	cmp	r0, #5
c0de02ce:	f000 8149 	beq.w	c0de0564 <handleApdu+0x2bc>
c0de02d2:	f000 fa92 	bl	c0de07fa <OUTLINED_FUNCTION_2>
c0de02d6:	f405 4070 	and.w	r0, r5, #61440	; 0xf000
c0de02da:	f5b0 4f10 	cmp.w	r0, #36864	; 0x9000
c0de02de:	d005      	beq.n	c0de02ec <handleApdu+0x44>
c0de02e0:	f5b0 4fc0 	cmp.w	r0, #24576	; 0x6000
c0de02e4:	bf1c      	itt	ne
c0de02e6:	200d      	movne	r0, #13
c0de02e8:	f360 25df 	bfine	r5, r0, #11, #21
c0de02ec:	f8ad 5036 	strh.w	r5, [sp, #54]	; 0x36
c0de02f0:	4649      	mov	r1, r9
c0de02f2:	f8df 0414 	ldr.w	r0, [pc, #1044]	; c0de0708 <handleApdu+0x460>
c0de02f6:	f8bd 1036 	ldrh.w	r1, [sp, #54]	; 0x36
c0de02fa:	f8db 2000 	ldr.w	r2, [fp]
c0de02fe:	4448      	add	r0, r9
c0de0300:	0a09      	lsrs	r1, r1, #8
c0de0302:	5481      	strb	r1, [r0, r2]
c0de0304:	f8bd 1036 	ldrh.w	r1, [sp, #54]	; 0x36
c0de0308:	f8db 2000 	ldr.w	r2, [fp]
c0de030c:	4410      	add	r0, r2
c0de030e:	7041      	strb	r1, [r0, #1]
c0de0310:	f8db 0000 	ldr.w	r0, [fp]
c0de0314:	3002      	adds	r0, #2
c0de0316:	f8cb 0000 	str.w	r0, [fp]
c0de031a:	e0f5      	b.n	c0de0508 <handleApdu+0x260>
c0de031c:	a801      	add	r0, sp, #4
c0de031e:	f009 faa7 	bl	c0de9870 <try_context_set>
c0de0322:	f8df 43e4 	ldr.w	r4, [pc, #996]	; c0de0708 <handleApdu+0x460>
c0de0326:	900b      	str	r0, [sp, #44]	; 0x2c
c0de0328:	4648      	mov	r0, r9
c0de032a:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de032e:	2855      	cmp	r0, #85	; 0x55
c0de0330:	f040 811d 	bne.w	c0de056e <handleApdu+0x2c6>
c0de0334:	2f04      	cmp	r7, #4
c0de0336:	f240 8111 	bls.w	c0de055c <handleApdu+0x2b4>
c0de033a:	4648      	mov	r0, r9
c0de033c:	eb09 0004 	add.w	r0, r9, r4
c0de0340:	7840      	ldrb	r0, [r0, #1]
c0de0342:	2802      	cmp	r0, #2
c0de0344:	f000 809e 	beq.w	c0de0484 <handleApdu+0x1dc>
c0de0348:	2804      	cmp	r0, #4
c0de034a:	f040 8114 	bne.w	c0de0576 <handleApdu+0x2ce>
c0de034e:	f009 fa24 	bl	c0de979a <os_global_pin_is_validated>
c0de0352:	28aa      	cmp	r0, #170	; 0xaa
c0de0354:	f040 81d4 	bne.w	c0de0700 <handleApdu+0x458>
c0de0358:	2f05      	cmp	r7, #5
c0de035a:	f240 8163 	bls.w	c0de0624 <handleApdu+0x37c>
c0de035e:	f8df 03c4 	ldr.w	r0, [pc, #964]	; c0de0724 <handleApdu+0x47c>
c0de0362:	2153      	movs	r1, #83	; 0x53
c0de0364:	464e      	mov	r6, r9
c0de0366:	4448      	add	r0, r9
c0de0368:	f009 fad8 	bl	c0de991c <explicit_bzero>
c0de036c:	eb09 0004 	add.w	r0, r9, r4
c0de0370:	7945      	ldrb	r5, [r0, #5]
c0de0372:	f8df 03b4 	ldr.w	r0, [pc, #948]	; c0de0728 <handleApdu+0x480>
c0de0376:	2d00      	cmp	r5, #0
c0de0378:	f809 5000 	strb.w	r5, [r9, r0]
c0de037c:	f000 8152 	beq.w	c0de0624 <handleApdu+0x37c>
c0de0380:	2d54      	cmp	r5, #84	; 0x54
c0de0382:	f080 814f 	bcs.w	c0de0624 <handleApdu+0x37c>
c0de0386:	49e7      	ldr	r1, [pc, #924]	; (c0de0724 <handleApdu+0x47c>)
c0de0388:	eb09 0004 	add.w	r0, r9, r4
c0de038c:	462a      	mov	r2, r5
c0de038e:	46a8      	mov	r8, r5
c0de0390:	eb09 0601 	add.w	r6, r9, r1
c0de0394:	1d81      	adds	r1, r0, #6
c0de0396:	4630      	mov	r0, r6
c0de0398:	f009 fab7 	bl	c0de990a <__aeabi_memcpy>
c0de039c:	2000      	movs	r0, #0
c0de039e:	5570      	strb	r0, [r6, r5]
c0de03a0:	1de8      	adds	r0, r5, #7
c0de03a2:	42b8      	cmp	r0, r7
c0de03a4:	f200 813e 	bhi.w	c0de0624 <handleApdu+0x37c>
c0de03a8:	1da9      	adds	r1, r5, #6
c0de03aa:	1a78      	subs	r0, r7, r1
c0de03ac:	2813      	cmp	r0, #19
c0de03ae:	f240 80d5 	bls.w	c0de055c <handleApdu+0x2b4>
c0de03b2:	4dd6      	ldr	r5, [pc, #856]	; (c0de070c <handleApdu+0x464>)
c0de03b4:	eb09 0204 	add.w	r2, r9, r4
c0de03b8:	464e      	mov	r6, r9
c0de03ba:	4411      	add	r1, r2
c0de03bc:	2214      	movs	r2, #20
c0de03be:	eb09 0005 	add.w	r0, r9, r5
c0de03c2:	f009 faa2 	bl	c0de990a <__aeabi_memcpy>
c0de03c6:	f859 0005 	ldr.w	r0, [r9, r5]
c0de03ca:	49d1      	ldr	r1, [pc, #836]	; (c0de0710 <handleApdu+0x468>)
c0de03cc:	4288      	cmp	r0, r1
c0de03ce:	f040 8129 	bne.w	c0de0624 <handleApdu+0x37c>
c0de03d2:	4648      	mov	r0, r9
c0de03d4:	49d0      	ldr	r1, [pc, #832]	; (c0de0718 <handleApdu+0x470>)
c0de03d6:	eb09 0005 	add.w	r0, r9, r5
c0de03da:	6840      	ldr	r0, [r0, #4]
c0de03dc:	4288      	cmp	r0, r1
c0de03de:	d003      	beq.n	c0de03e8 <handleApdu+0x140>
c0de03e0:	49ce      	ldr	r1, [pc, #824]	; (c0de071c <handleApdu+0x474>)
c0de03e2:	4288      	cmp	r0, r1
c0de03e4:	f040 811e 	bne.w	c0de0624 <handleApdu+0x37c>
c0de03e8:	4648      	mov	r0, r9
c0de03ea:	eb09 0005 	add.w	r0, r9, r5
c0de03ee:	68c0      	ldr	r0, [r0, #12]
c0de03f0:	2800      	cmp	r0, #0
c0de03f2:	f040 8117 	bne.w	c0de0624 <handleApdu+0x37c>
c0de03f6:	f004 ffe9 	bl	c0de53cc <app_mode_expert>
c0de03fa:	2800      	cmp	r0, #0
c0de03fc:	f000 8092 	beq.w	c0de0524 <handleApdu+0x27c>
c0de0400:	48c9      	ldr	r0, [pc, #804]	; (c0de0728 <handleApdu+0x480>)
c0de0402:	4627      	mov	r7, r4
c0de0404:	464e      	mov	r6, r9
c0de0406:	f819 2000 	ldrb.w	r2, [r9, r0]
c0de040a:	48c6      	ldr	r0, [pc, #792]	; (c0de0724 <handleApdu+0x47c>)
c0de040c:	eb09 0100 	add.w	r1, r9, r0
c0de0410:	eb09 0005 	add.w	r0, r9, r5
c0de0414:	6840      	ldr	r0, [r0, #4]
c0de0416:	f000 fb19 	bl	c0de0a4c <checkChainConfig>
c0de041a:	49c1      	ldr	r1, [pc, #772]	; (c0de0720 <handleApdu+0x478>)
c0de041c:	28ff      	cmp	r0, #255	; 0xff
c0de041e:	f809 0001 	strb.w	r0, [r9, r1]
c0de0422:	f000 816d 	beq.w	c0de0700 <handleApdu+0x458>
c0de0426:	eb09 0507 	add.w	r5, r9, r7
c0de042a:	f44f 7182 	mov.w	r1, #260	; 0x104
c0de042e:	464c      	mov	r4, r9
c0de0430:	78ae      	ldrb	r6, [r5, #2]
c0de0432:	4628      	mov	r0, r5
c0de0434:	f009 fa72 	bl	c0de991c <explicit_bzero>
c0de0438:	4fbc      	ldr	r7, [pc, #752]	; (c0de072c <handleApdu+0x484>)
c0de043a:	2000      	movs	r0, #0
c0de043c:	f44f 7181 	mov.w	r1, #258	; 0x102
c0de0440:	f829 0007 	strh.w	r0, [r9, r7]
c0de0444:	eb09 0207 	add.w	r2, r9, r7
c0de0448:	4628      	mov	r0, r5
c0de044a:	f000 fc75 	bl	c0de0d38 <crypto_fillAddress>
c0de044e:	2803      	cmp	r0, #3
c0de0450:	f040 80ae 	bne.w	c0de05b0 <handleApdu+0x308>
c0de0454:	4648      	mov	r0, r9
c0de0456:	f839 0007 	ldrh.w	r0, [r9, r7]
c0de045a:	2800      	cmp	r0, #0
c0de045c:	f000 80a8 	beq.w	c0de05b0 <handleApdu+0x308>
c0de0460:	2e00      	cmp	r6, #0
c0de0462:	f000 809f 	beq.w	c0de05a4 <handleApdu+0x2fc>
c0de0466:	48b2      	ldr	r0, [pc, #712]	; (c0de0730 <handleApdu+0x488>)
c0de0468:	49b2      	ldr	r1, [pc, #712]	; (c0de0734 <handleApdu+0x48c>)
c0de046a:	4ab3      	ldr	r2, [pc, #716]	; (c0de0738 <handleApdu+0x490>)
c0de046c:	4478      	add	r0, pc
c0de046e:	4479      	add	r1, pc
c0de0470:	447a      	add	r2, pc
c0de0472:	f004 fa41 	bl	c0de48f8 <view_review_init>
c0de0476:	2001      	movs	r0, #1
c0de0478:	f004 fa48 	bl	c0de490c <view_review_show>
c0de047c:	f000 f9ae 	bl	c0de07dc <OUTLINED_FUNCTION_0>
c0de0480:	ae01      	add	r6, sp, #4
c0de0482:	e041      	b.n	c0de0508 <handleApdu+0x260>
c0de0484:	f009 f989 	bl	c0de979a <os_global_pin_is_validated>
c0de0488:	28aa      	cmp	r0, #170	; 0xaa
c0de048a:	f040 8139 	bne.w	c0de0700 <handleApdu+0x458>
c0de048e:	4648      	mov	r0, r9
c0de0490:	eb09 0004 	add.w	r0, r9, r4
c0de0494:	7880      	ldrb	r0, [r0, #2]
c0de0496:	2802      	cmp	r0, #2
c0de0498:	d152      	bne.n	c0de0540 <handleApdu+0x298>
c0de049a:	eb09 0004 	add.w	r0, r9, r4
c0de049e:	1f7d      	subs	r5, r7, #5
c0de04a0:	3005      	adds	r0, #5
c0de04a2:	4629      	mov	r1, r5
c0de04a4:	f000 fb1c 	bl	c0de0ae0 <tx_append>
c0de04a8:	42a8      	cmp	r0, r5
c0de04aa:	f040 80a4 	bne.w	c0de05f6 <handleApdu+0x34e>
c0de04ae:	eb09 0104 	add.w	r1, r9, r4
c0de04b2:	4648      	mov	r0, r9
c0de04b4:	78cd      	ldrb	r5, [r1, #3]
c0de04b6:	4995      	ldr	r1, [pc, #596]	; (c0de070c <handleApdu+0x464>)
c0de04b8:	eb09 0001 	add.w	r0, r9, r1
c0de04bc:	4994      	ldr	r1, [pc, #592]	; (c0de0710 <handleApdu+0x468>)
c0de04be:	6840      	ldr	r0, [r0, #4]
c0de04c0:	3110      	adds	r1, #16
c0de04c2:	4288      	cmp	r0, r1
c0de04c4:	d104      	bne.n	c0de04d0 <handleApdu+0x228>
c0de04c6:	f004 ff81 	bl	c0de53cc <app_mode_expert>
c0de04ca:	2800      	cmp	r0, #0
c0de04cc:	f000 809b 	beq.w	c0de0606 <handleApdu+0x35e>
c0de04d0:	4990      	ldr	r1, [pc, #576]	; (c0de0714 <handleApdu+0x46c>)
c0de04d2:	eb09 0204 	add.w	r2, r9, r4
c0de04d6:	4628      	mov	r0, r5
c0de04d8:	f641 0328 	movw	r3, #6184	; 0x1828
c0de04dc:	3221      	adds	r2, #33	; 0x21
c0de04de:	4449      	add	r1, r9
c0de04e0:	50ca      	str	r2, [r1, r3]
c0de04e2:	f000 fb09 	bl	c0de0af8 <tx_parse>
c0de04e6:	2800      	cmp	r0, #0
c0de04e8:	d16a      	bne.n	c0de05c0 <handleApdu+0x318>
c0de04ea:	f005 f9d1 	bl	c0de5890 <check_app_canary>
c0de04ee:	4895      	ldr	r0, [pc, #596]	; (c0de0744 <handleApdu+0x49c>)
c0de04f0:	4995      	ldr	r1, [pc, #596]	; (c0de0748 <handleApdu+0x4a0>)
c0de04f2:	4a96      	ldr	r2, [pc, #600]	; (c0de074c <handleApdu+0x4a4>)
c0de04f4:	4478      	add	r0, pc
c0de04f6:	4479      	add	r1, pc
c0de04f8:	447a      	add	r2, pc
c0de04fa:	f004 f9fd 	bl	c0de48f8 <view_review_init>
c0de04fe:	2003      	movs	r0, #3
c0de0500:	f004 fa04 	bl	c0de490c <view_review_show>
c0de0504:	f000 f96a 	bl	c0de07dc <OUTLINED_FUNCTION_0>
c0de0508:	f009 f9aa 	bl	c0de9860 <try_context_get>
c0de050c:	42b0      	cmp	r0, r6
c0de050e:	d102      	bne.n	c0de0516 <handleApdu+0x26e>
c0de0510:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0512:	f009 f9ad 	bl	c0de9870 <try_context_set>
c0de0516:	f8bd 0030 	ldrh.w	r0, [sp, #48]	; 0x30
c0de051a:	2800      	cmp	r0, #0
c0de051c:	d14a      	bne.n	c0de05b4 <handleApdu+0x30c>
c0de051e:	b00e      	add	sp, #56	; 0x38
c0de0520:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0524:	2000      	movs	r0, #0
c0de0526:	2803      	cmp	r0, #3
c0de0528:	f43f af6a 	beq.w	c0de0400 <handleApdu+0x158>
c0de052c:	4649      	mov	r1, r9
c0de052e:	eb09 0105 	add.w	r1, r9, r5
c0de0532:	f000 f95a 	bl	c0de07ea <OUTLINED_FUNCTION_1>
c0de0536:	d3f6      	bcc.n	c0de0526 <handleApdu+0x27e>
c0de0538:	f646 1085 	movw	r0, #27013	; 0x6985
c0de053c:	f008 f9e9 	bl	c0de8912 <os_longjmp>
c0de0540:	46a3      	mov	fp, r4
c0de0542:	2801      	cmp	r0, #1
c0de0544:	d04e      	beq.n	c0de05e4 <handleApdu+0x33c>
c0de0546:	2800      	cmp	r0, #0
c0de0548:	d159      	bne.n	c0de05fe <handleApdu+0x356>
c0de054a:	f000 fab1 	bl	c0de0ab0 <tx_initialize>
c0de054e:	f000 fac5 	bl	c0de0adc <tx_reset>
c0de0552:	2f05      	cmp	r7, #5
c0de0554:	d966      	bls.n	c0de0624 <handleApdu+0x37c>
c0de0556:	1f7d      	subs	r5, r7, #5
c0de0558:	2d13      	cmp	r5, #19
c0de055a:	d867      	bhi.n	c0de062c <handleApdu+0x384>
c0de055c:	f44f 40ce 	mov.w	r0, #26368	; 0x6700
c0de0560:	f008 f9d7 	bl	c0de8912 <os_longjmp>
c0de0564:	f000 f949 	bl	c0de07fa <OUTLINED_FUNCTION_2>
c0de0568:	2005      	movs	r0, #5
c0de056a:	f008 f9d2 	bl	c0de8912 <os_longjmp>
c0de056e:	f44f 40dc 	mov.w	r0, #28160	; 0x6e00
c0de0572:	f008 f9ce 	bl	c0de8912 <os_longjmp>
c0de0576:	b9f8      	cbnz	r0, c0de05b8 <handleApdu+0x310>
c0de0578:	2100      	movs	r1, #0
c0de057a:	eb09 0004 	add.w	r0, r9, r4
c0de057e:	2204      	movs	r2, #4
c0de0580:	f809 1004 	strb.w	r1, [r9, r4]
c0de0584:	71c1      	strb	r1, [r0, #7]
c0de0586:	7101      	strb	r1, [r0, #4]
c0de0588:	211b      	movs	r1, #27
c0de058a:	7202      	strb	r2, [r0, #8]
c0de058c:	2210      	movs	r2, #16
c0de058e:	70c1      	strb	r1, [r0, #3]
c0de0590:	2123      	movs	r1, #35	; 0x23
c0de0592:	7182      	strb	r2, [r0, #6]
c0de0594:	2233      	movs	r2, #51	; 0x33
c0de0596:	7081      	strb	r1, [r0, #2]
c0de0598:	2102      	movs	r1, #2
c0de059a:	7142      	strb	r2, [r0, #5]
c0de059c:	7041      	strb	r1, [r0, #1]
c0de059e:	f8db 0000 	ldr.w	r0, [fp]
c0de05a2:	3009      	adds	r0, #9
c0de05a4:	f8cb 0000 	str.w	r0, [fp]
c0de05a8:	f44f 4010 	mov.w	r0, #36864	; 0x9000
c0de05ac:	f008 f9b1 	bl	c0de8912 <os_longjmp>
c0de05b0:	f44f 40c8 	mov.w	r0, #25600	; 0x6400
c0de05b4:	f008 f9ad 	bl	c0de8912 <os_longjmp>
c0de05b8:	f44f 40da 	mov.w	r0, #27904	; 0x6d00
c0de05bc:	f008 f9a9 	bl	c0de8912 <os_longjmp>
c0de05c0:	f44f 7182 	mov.w	r1, #260	; 0x104
c0de05c4:	4605      	mov	r5, r0
c0de05c6:	f009 fa36 	bl	c0de9a36 <strnlen>
c0de05ca:	4606      	mov	r6, r0
c0de05cc:	eb09 0004 	add.w	r0, r9, r4
c0de05d0:	4629      	mov	r1, r5
c0de05d2:	4632      	mov	r2, r6
c0de05d4:	f009 f99b 	bl	c0de990e <__aeabi_memmove>
c0de05d8:	f8db 0000 	ldr.w	r0, [fp]
c0de05dc:	4430      	add	r0, r6
c0de05de:	f8cb 0000 	str.w	r0, [fp]
c0de05e2:	e01f      	b.n	c0de0624 <handleApdu+0x37c>
c0de05e4:	eb09 000b 	add.w	r0, r9, fp
c0de05e8:	1f7c      	subs	r4, r7, #5
c0de05ea:	3005      	adds	r0, #5
c0de05ec:	4621      	mov	r1, r4
c0de05ee:	f000 fa77 	bl	c0de0ae0 <tx_append>
c0de05f2:	42a0      	cmp	r0, r4
c0de05f4:	d0d8      	beq.n	c0de05a8 <handleApdu+0x300>
c0de05f6:	f646 1083 	movw	r0, #27011	; 0x6983
c0de05fa:	f008 f98a 	bl	c0de8912 <os_longjmp>
c0de05fe:	f44f 40d6 	mov.w	r0, #27392	; 0x6b00
c0de0602:	f008 f986 	bl	c0de8912 <os_longjmp>
c0de0606:	f000 f8e9 	bl	c0de07dc <OUTLINED_FUNCTION_0>
c0de060a:	484c      	ldr	r0, [pc, #304]	; (c0de073c <handleApdu+0x494>)
c0de060c:	4478      	add	r0, pc
c0de060e:	f009 f847 	bl	c0de96a0 <pic>
c0de0612:	4604      	mov	r4, r0
c0de0614:	484a      	ldr	r0, [pc, #296]	; (c0de0740 <handleApdu+0x498>)
c0de0616:	4478      	add	r0, pc
c0de0618:	f009 f842 	bl	c0de96a0 <pic>
c0de061c:	4601      	mov	r1, r0
c0de061e:	4620      	mov	r0, r4
c0de0620:	f004 fb02 	bl	c0de4c28 <view_custom_error_show>
c0de0624:	f646 1084 	movw	r0, #27012	; 0x6984
c0de0628:	f008 f973 	bl	c0de8912 <os_longjmp>
c0de062c:	4c37      	ldr	r4, [pc, #220]	; (c0de070c <handleApdu+0x464>)
c0de062e:	eb09 010b 	add.w	r1, r9, fp
c0de0632:	2214      	movs	r2, #20
c0de0634:	464e      	mov	r6, r9
c0de0636:	3105      	adds	r1, #5
c0de0638:	eb09 0004 	add.w	r0, r9, r4
c0de063c:	f009 f965 	bl	c0de990a <__aeabi_memcpy>
c0de0640:	f859 0004 	ldr.w	r0, [r9, r4]
c0de0644:	4e32      	ldr	r6, [pc, #200]	; (c0de0710 <handleApdu+0x468>)
c0de0646:	42b0      	cmp	r0, r6
c0de0648:	d1ec      	bne.n	c0de0624 <handleApdu+0x37c>
c0de064a:	4648      	mov	r0, r9
c0de064c:	4932      	ldr	r1, [pc, #200]	; (c0de0718 <handleApdu+0x470>)
c0de064e:	eb09 0004 	add.w	r0, r9, r4
c0de0652:	6840      	ldr	r0, [r0, #4]
c0de0654:	4288      	cmp	r0, r1
c0de0656:	d002      	beq.n	c0de065e <handleApdu+0x3b6>
c0de0658:	4930      	ldr	r1, [pc, #192]	; (c0de071c <handleApdu+0x474>)
c0de065a:	4288      	cmp	r0, r1
c0de065c:	d1e2      	bne.n	c0de0624 <handleApdu+0x37c>
c0de065e:	4648      	mov	r0, r9
c0de0660:	eb09 0004 	add.w	r0, r9, r4
c0de0664:	68c0      	ldr	r0, [r0, #12]
c0de0666:	2800      	cmp	r0, #0
c0de0668:	d1dc      	bne.n	c0de0624 <handleApdu+0x37c>
c0de066a:	f004 feaf 	bl	c0de53cc <app_mode_expert>
c0de066e:	b3a0      	cbz	r0, c0de06da <handleApdu+0x432>
c0de0670:	2100      	movs	r1, #0
c0de0672:	f8df 80ac 	ldr.w	r8, [pc, #172]	; c0de0720 <handleApdu+0x478>
c0de0676:	4648      	mov	r0, r9
c0de0678:	2d15      	cmp	r5, #21
c0de067a:	f809 1008 	strb.w	r1, [r9, r8]
c0de067e:	d336      	bcc.n	c0de06ee <handleApdu+0x446>
c0de0680:	2f19      	cmp	r7, #25
c0de0682:	d9cf      	bls.n	c0de0624 <handleApdu+0x37c>
c0de0684:	4e27      	ldr	r6, [pc, #156]	; (c0de0724 <handleApdu+0x47c>)
c0de0686:	2153      	movs	r1, #83	; 0x53
c0de0688:	464f      	mov	r7, r9
c0de068a:	eb09 0006 	add.w	r0, r9, r6
c0de068e:	f009 f945 	bl	c0de991c <explicit_bzero>
c0de0692:	eb09 000b 	add.w	r0, r9, fp
c0de0696:	7e45      	ldrb	r5, [r0, #25]
c0de0698:	4823      	ldr	r0, [pc, #140]	; (c0de0728 <handleApdu+0x480>)
c0de069a:	2d00      	cmp	r5, #0
c0de069c:	f809 5000 	strb.w	r5, [r9, r0]
c0de06a0:	d0c0      	beq.n	c0de0624 <handleApdu+0x37c>
c0de06a2:	2d54      	cmp	r5, #84	; 0x54
c0de06a4:	d2be      	bcs.n	c0de0624 <handleApdu+0x37c>
c0de06a6:	eb09 000b 	add.w	r0, r9, fp
c0de06aa:	444e      	add	r6, r9
c0de06ac:	462a      	mov	r2, r5
c0de06ae:	46aa      	mov	sl, r5
c0de06b0:	464f      	mov	r7, r9
c0de06b2:	f100 011a 	add.w	r1, r0, #26
c0de06b6:	4630      	mov	r0, r6
c0de06b8:	f009 f927 	bl	c0de990a <__aeabi_memcpy>
c0de06bc:	2000      	movs	r0, #0
c0de06be:	4631      	mov	r1, r6
c0de06c0:	462a      	mov	r2, r5
c0de06c2:	5570      	strb	r0, [r6, r5]
c0de06c4:	eb09 0004 	add.w	r0, r9, r4
c0de06c8:	6840      	ldr	r0, [r0, #4]
c0de06ca:	f000 f9bf 	bl	c0de0a4c <checkChainConfig>
c0de06ce:	28ff      	cmp	r0, #255	; 0xff
c0de06d0:	f809 0008 	strb.w	r0, [r9, r8]
c0de06d4:	f47f af68 	bne.w	c0de05a8 <handleApdu+0x300>
c0de06d8:	e012      	b.n	c0de0700 <handleApdu+0x458>
c0de06da:	2000      	movs	r0, #0
c0de06dc:	2803      	cmp	r0, #3
c0de06de:	d0c7      	beq.n	c0de0670 <handleApdu+0x3c8>
c0de06e0:	4649      	mov	r1, r9
c0de06e2:	eb09 0104 	add.w	r1, r9, r4
c0de06e6:	f000 f880 	bl	c0de07ea <OUTLINED_FUNCTION_1>
c0de06ea:	d3f7      	bcc.n	c0de06dc <handleApdu+0x434>
c0de06ec:	e724      	b.n	c0de0538 <handleApdu+0x290>
c0de06ee:	4648      	mov	r0, r9
c0de06f0:	f106 0110 	add.w	r1, r6, #16
c0de06f4:	eb09 0004 	add.w	r0, r9, r4
c0de06f8:	6840      	ldr	r0, [r0, #4]
c0de06fa:	4288      	cmp	r0, r1
c0de06fc:	f47f af54 	bne.w	c0de05a8 <handleApdu+0x300>
c0de0700:	f646 1086 	movw	r0, #27014	; 0x6986
c0de0704:	f008 f905 	bl	c0de8912 <os_longjmp>
c0de0708:	00006580 	.word	0x00006580
c0de070c:	00003858 	.word	0x00003858
c0de0710:	8000002c 	.word	0x8000002c
c0de0714:	000038c4 	.word	0x000038c4
c0de0718:	80000076 	.word	0x80000076
c0de071c:	8000003c 	.word	0x8000003c
c0de0720:	00003854 	.word	0x00003854
c0de0724:	0000386c 	.word	0x0000386c
c0de0728:	000038c0 	.word	0x000038c0
c0de072c:	00000000 	.word	0x00000000
c0de0730:	fffffc1d 	.word	0xfffffc1d
c0de0734:	fffffbeb 	.word	0xfffffbeb
c0de0738:	000002dd 	.word	0x000002dd
c0de073c:	0000acc3 	.word	0x0000acc3
c0de0740:	00009ab5 	.word	0x00009ab5
c0de0744:	0000068d 	.word	0x0000068d
c0de0748:	0000066f 	.word	0x0000066f
c0de074c:	0000027d 	.word	0x0000027d

c0de0750 <app_reply_address>:
c0de0750:	4908      	ldr	r1, [pc, #32]	; (c0de0774 <app_reply_address+0x24>)
c0de0752:	4807      	ldr	r0, [pc, #28]	; (c0de0770 <app_reply_address+0x20>)
c0de0754:	2390      	movs	r3, #144	; 0x90
c0de0756:	f839 1001 	ldrh.w	r1, [r9, r1]
c0de075a:	4448      	add	r0, r9
c0de075c:	b2ca      	uxtb	r2, r1
c0de075e:	5483      	strb	r3, [r0, r2]
c0de0760:	4410      	add	r0, r2
c0de0762:	2200      	movs	r2, #0
c0de0764:	7042      	strb	r2, [r0, #1]
c0de0766:	1c88      	adds	r0, r1, #2
c0de0768:	b281      	uxth	r1, r0
c0de076a:	2020      	movs	r0, #32
c0de076c:	f008 bae8 	b.w	c0de8d40 <io_exchange>
c0de0770:	00006580 	.word	0x00006580
c0de0774:	00000000 	.word	0x00000000

c0de0778 <app_sign>:
c0de0778:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de077a:	4d17      	ldr	r5, [pc, #92]	; (c0de07d8 <app_sign+0x60>)
c0de077c:	2000      	movs	r0, #0
c0de077e:	f44f 7182 	mov.w	r1, #260	; 0x104
c0de0782:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de0786:	eb09 0405 	add.w	r4, r9, r5
c0de078a:	4620      	mov	r0, r4
c0de078c:	f009 f8c6 	bl	c0de991c <explicit_bzero>
c0de0790:	f10d 0206 	add.w	r2, sp, #6
c0de0794:	4620      	mov	r0, r4
c0de0796:	f240 1101 	movw	r1, #257	; 0x101
c0de079a:	f000 fa29 	bl	c0de0bf0 <crypto_sign>
c0de079e:	2803      	cmp	r0, #3
c0de07a0:	d10c      	bne.n	c0de07bc <app_sign+0x44>
c0de07a2:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de07a6:	b148      	cbz	r0, c0de07bc <app_sign+0x44>
c0de07a8:	b2c2      	uxtb	r2, r0
c0de07aa:	eb09 0105 	add.w	r1, r9, r5
c0de07ae:	2390      	movs	r3, #144	; 0x90
c0de07b0:	3002      	adds	r0, #2
c0de07b2:	548b      	strb	r3, [r1, r2]
c0de07b4:	4411      	add	r1, r2
c0de07b6:	2200      	movs	r2, #0
c0de07b8:	704a      	strb	r2, [r1, #1]
c0de07ba:	e007      	b.n	c0de07cc <app_sign+0x54>
c0de07bc:	206f      	movs	r0, #111	; 0x6f
c0de07be:	2101      	movs	r1, #1
c0de07c0:	f809 0005 	strb.w	r0, [r9, r5]
c0de07c4:	eb09 0005 	add.w	r0, r9, r5
c0de07c8:	7041      	strb	r1, [r0, #1]
c0de07ca:	2002      	movs	r0, #2
c0de07cc:	b281      	uxth	r1, r0
c0de07ce:	2020      	movs	r0, #32
c0de07d0:	f008 fab6 	bl	c0de8d40 <io_exchange>
c0de07d4:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de07d6:	bf00      	nop
c0de07d8:	00006580 	.word	0x00006580

c0de07dc <OUTLINED_FUNCTION_0>:
c0de07dc:	f8da 0000 	ldr.w	r0, [sl]
c0de07e0:	f040 0010 	orr.w	r0, r0, #16
c0de07e4:	f8ca 0000 	str.w	r0, [sl]
c0de07e8:	4770      	bx	lr

c0de07ea <OUTLINED_FUNCTION_1>:
c0de07ea:	eb01 0180 	add.w	r1, r1, r0, lsl #2
c0de07ee:	3001      	adds	r0, #1
c0de07f0:	6889      	ldr	r1, [r1, #8]
c0de07f2:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
c0de07f6:	2965      	cmp	r1, #101	; 0x65
c0de07f8:	4770      	bx	lr

c0de07fa <OUTLINED_FUNCTION_2>:
c0de07fa:	2000      	movs	r0, #0
c0de07fc:	f8ad 0030 	strh.w	r0, [sp, #48]	; 0x30
c0de0800:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0802:	f009 b835 	b.w	c0de9870 <try_context_set>

c0de0806 <parser_mapCborError>:
c0de0806:	b160      	cbz	r0, c0de0822 <parser_mapCborError+0x1c>
c0de0808:	f240 1101 	movw	r1, #257	; 0x101
c0de080c:	4288      	cmp	r0, r1
c0de080e:	bf04      	itt	eq
c0de0810:	2022      	moveq	r0, #34	; 0x22
c0de0812:	4770      	bxeq	lr
c0de0814:	f240 210a 	movw	r1, #522	; 0x20a
c0de0818:	4288      	cmp	r0, r1
c0de081a:	bf14      	ite	ne
c0de081c:	2021      	movne	r0, #33	; 0x21
c0de081e:	2023      	moveq	r0, #35	; 0x23
c0de0820:	4770      	bx	lr
c0de0822:	2000      	movs	r0, #0
c0de0824:	4770      	bx	lr

c0de0826 <cbor_get_containerInfo>:
c0de0826:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0de0828:	b1c8      	cbz	r0, c0de085e <cbor_get_containerInfo+0x38>
c0de082a:	460c      	mov	r4, r1
c0de082c:	b1b9      	cbz	r1, c0de085e <cbor_get_containerInfo+0x38>
c0de082e:	4605      	mov	r5, r0
c0de0830:	6880      	ldr	r0, [r0, #8]
c0de0832:	b1b8      	cbz	r0, c0de0864 <cbor_get_containerInfo+0x3e>
c0de0834:	7ba8      	ldrb	r0, [r5, #14]
c0de0836:	b1b8      	cbz	r0, c0de0868 <cbor_get_containerInfo+0x42>
c0de0838:	2606      	movs	r6, #6
c0de083a:	f005 f829 	bl	c0de5890 <check_app_canary>
c0de083e:	b97e      	cbnz	r6, c0de0860 <cbor_get_containerInfo+0x3a>
c0de0840:	f000 f900 	bl	c0de0a44 <OUTLINED_FUNCTION_0>
c0de0844:	2800      	cmp	r0, #0
c0de0846:	d042      	beq.n	c0de08ce <cbor_get_containerInfo+0xa8>
c0de0848:	f240 1101 	movw	r1, #257	; 0x101
c0de084c:	4288      	cmp	r0, r1
c0de084e:	d04d      	beq.n	c0de08ec <cbor_get_containerInfo+0xc6>
c0de0850:	f240 210a 	movw	r1, #522	; 0x20a
c0de0854:	4288      	cmp	r0, r1
c0de0856:	bf14      	ite	ne
c0de0858:	2621      	movne	r6, #33	; 0x21
c0de085a:	2623      	moveq	r6, #35	; 0x23
c0de085c:	e000      	b.n	c0de0860 <cbor_get_containerInfo+0x3a>
c0de085e:	2609      	movs	r6, #9
c0de0860:	4630      	mov	r0, r6
c0de0862:	bd7c      	pop	{r2, r3, r4, r5, r6, pc}
c0de0864:	2608      	movs	r6, #8
c0de0866:	e7fb      	b.n	c0de0860 <cbor_get_containerInfo+0x3a>
c0de0868:	a901      	add	r1, sp, #4
c0de086a:	4628      	mov	r0, r5
c0de086c:	f000 f8d5 	bl	c0de0a1a <cbor_value_get_int>
c0de0870:	9801      	ldr	r0, [sp, #4]
c0de0872:	2801      	cmp	r0, #1
c0de0874:	d01d      	beq.n	c0de08b2 <cbor_get_containerInfo+0x8c>
c0de0876:	2802      	cmp	r0, #2
c0de0878:	d1de      	bne.n	c0de0838 <cbor_get_containerInfo+0x12>
c0de087a:	2000      	movs	r0, #0
c0de087c:	e9c4 0001 	strd	r0, r0, [r4, #4]
c0de0880:	f000 f8e0 	bl	c0de0a44 <OUTLINED_FUNCTION_0>
c0de0884:	b9c0      	cbnz	r0, c0de08b8 <cbor_get_containerInfo+0x92>
c0de0886:	7ba8      	ldrb	r0, [r5, #14]
c0de0888:	2860      	cmp	r0, #96	; 0x60
c0de088a:	d15b      	bne.n	c0de0944 <cbor_get_containerInfo+0x11e>
c0de088c:	2064      	movs	r0, #100	; 0x64
c0de088e:	f104 0610 	add.w	r6, r4, #16
c0de0892:	f104 010c 	add.w	r1, r4, #12
c0de0896:	73e8      	strb	r0, [r5, #15]
c0de0898:	4628      	mov	r0, r5
c0de089a:	4632      	mov	r2, r6
c0de089c:	f000 f8cf 	bl	c0de0a3e <cbor_value_get_text_string_chunk>
c0de08a0:	b950      	cbnz	r0, c0de08b8 <cbor_get_containerInfo+0x92>
c0de08a2:	6830      	ldr	r0, [r6, #0]
c0de08a4:	f240 2127 	movw	r1, #551	; 0x227
c0de08a8:	2609      	movs	r6, #9
c0de08aa:	4288      	cmp	r0, r1
c0de08ac:	bf38      	it	cc
c0de08ae:	2600      	movcc	r6, #0
c0de08b0:	e7c3      	b.n	c0de083a <cbor_get_containerInfo+0x14>
c0de08b2:	f000 f8c7 	bl	c0de0a44 <OUTLINED_FUNCTION_0>
c0de08b6:	b308      	cbz	r0, c0de08fc <cbor_get_containerInfo+0xd6>
c0de08b8:	f240 1101 	movw	r1, #257	; 0x101
c0de08bc:	4288      	cmp	r0, r1
c0de08be:	d017      	beq.n	c0de08f0 <cbor_get_containerInfo+0xca>
c0de08c0:	f240 210a 	movw	r1, #522	; 0x20a
c0de08c4:	4288      	cmp	r0, r1
c0de08c6:	bf14      	ite	ne
c0de08c8:	2621      	movne	r6, #33	; 0x21
c0de08ca:	2623      	moveq	r6, #35	; 0x23
c0de08cc:	e7b5      	b.n	c0de083a <cbor_get_containerInfo+0x14>
c0de08ce:	6820      	ldr	r0, [r4, #0]
c0de08d0:	2803      	cmp	r0, #3
c0de08d2:	d30f      	bcc.n	c0de08f4 <cbor_get_containerInfo+0xce>
c0de08d4:	3802      	subs	r0, #2
c0de08d6:	4621      	mov	r1, r4
c0de08d8:	6020      	str	r0, [r4, #0]
c0de08da:	4628      	mov	r0, r5
c0de08dc:	f000 f836 	bl	c0de094c <cbor_check_optFields>
c0de08e0:	4606      	mov	r6, r0
c0de08e2:	f004 ffd5 	bl	c0de5890 <check_app_canary>
c0de08e6:	2e00      	cmp	r6, #0
c0de08e8:	d1ba      	bne.n	c0de0860 <cbor_get_containerInfo+0x3a>
c0de08ea:	e005      	b.n	c0de08f8 <cbor_get_containerInfo+0xd2>
c0de08ec:	2622      	movs	r6, #34	; 0x22
c0de08ee:	e7b7      	b.n	c0de0860 <cbor_get_containerInfo+0x3a>
c0de08f0:	2622      	movs	r6, #34	; 0x22
c0de08f2:	e7a2      	b.n	c0de083a <cbor_get_containerInfo+0x14>
c0de08f4:	2000      	movs	r0, #0
c0de08f6:	82a0      	strh	r0, [r4, #20]
c0de08f8:	2600      	movs	r6, #0
c0de08fa:	e7b1      	b.n	c0de0860 <cbor_get_containerInfo+0x3a>
c0de08fc:	7ba8      	ldrb	r0, [r5, #14]
c0de08fe:	2860      	cmp	r0, #96	; 0x60
c0de0900:	d120      	bne.n	c0de0944 <cbor_get_containerInfo+0x11e>
c0de0902:	2064      	movs	r0, #100	; 0x64
c0de0904:	f104 0608 	add.w	r6, r4, #8
c0de0908:	1d21      	adds	r1, r4, #4
c0de090a:	73e8      	strb	r0, [r5, #15]
c0de090c:	4628      	mov	r0, r5
c0de090e:	4632      	mov	r2, r6
c0de0910:	f000 f895 	bl	c0de0a3e <cbor_value_get_text_string_chunk>
c0de0914:	2800      	cmp	r0, #0
c0de0916:	d1cf      	bne.n	c0de08b8 <cbor_get_containerInfo+0x92>
c0de0918:	6830      	ldr	r0, [r6, #0]
c0de091a:	f240 2126 	movw	r1, #550	; 0x226
c0de091e:	4288      	cmp	r0, r1
c0de0920:	d812      	bhi.n	c0de0948 <cbor_get_containerInfo+0x122>
c0de0922:	f000 f88f 	bl	c0de0a44 <OUTLINED_FUNCTION_0>
c0de0926:	2800      	cmp	r0, #0
c0de0928:	d1c6      	bne.n	c0de08b8 <cbor_get_containerInfo+0x92>
c0de092a:	7ba8      	ldrb	r0, [r5, #14]
c0de092c:	2800      	cmp	r0, #0
c0de092e:	f47f af83 	bne.w	c0de0838 <cbor_get_containerInfo+0x12>
c0de0932:	a901      	add	r1, sp, #4
c0de0934:	4628      	mov	r0, r5
c0de0936:	f000 f870 	bl	c0de0a1a <cbor_value_get_int>
c0de093a:	9801      	ldr	r0, [sp, #4]
c0de093c:	2802      	cmp	r0, #2
c0de093e:	f47f af7b 	bne.w	c0de0838 <cbor_get_containerInfo+0x12>
c0de0942:	e79d      	b.n	c0de0880 <cbor_get_containerInfo+0x5a>
c0de0944:	2624      	movs	r6, #36	; 0x24
c0de0946:	e778      	b.n	c0de083a <cbor_get_containerInfo+0x14>
c0de0948:	2609      	movs	r6, #9
c0de094a:	e776      	b.n	c0de083a <cbor_get_containerInfo+0x14>

c0de094c <cbor_check_optFields>:
c0de094c:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de0950:	b3b8      	cbz	r0, c0de09c2 <cbor_check_optFields+0x76>
c0de0952:	460c      	mov	r4, r1
c0de0954:	b3a9      	cbz	r1, c0de09c2 <cbor_check_optFields+0x76>
c0de0956:	4605      	mov	r5, r0
c0de0958:	f04f 0a00 	mov.w	sl, #0
c0de095c:	ae02      	add	r6, sp, #8
c0de095e:	f10d 0804 	add.w	r8, sp, #4
c0de0962:	2700      	movs	r7, #0
c0de0964:	6820      	ldr	r0, [r4, #0]
c0de0966:	4287      	cmp	r7, r0
c0de0968:	d240      	bcs.n	c0de09ec <cbor_check_optFields+0xa0>
c0de096a:	7ba8      	ldrb	r0, [r5, #14]
c0de096c:	bbd8      	cbnz	r0, c0de09e6 <cbor_check_optFields+0x9a>
c0de096e:	4628      	mov	r0, r5
c0de0970:	4631      	mov	r1, r6
c0de0972:	f000 f852 	bl	c0de0a1a <cbor_value_get_int>
c0de0976:	f000 f865 	bl	c0de0a44 <OUTLINED_FUNCTION_0>
c0de097a:	bb28      	cbnz	r0, c0de09c8 <cbor_check_optFields+0x7c>
c0de097c:	9802      	ldr	r0, [sp, #8]
c0de097e:	2804      	cmp	r0, #4
c0de0980:	d00f      	beq.n	c0de09a2 <cbor_check_optFields+0x56>
c0de0982:	2803      	cmp	r0, #3
c0de0984:	d116      	bne.n	c0de09b4 <cbor_check_optFields+0x68>
c0de0986:	7ba8      	ldrb	r0, [r5, #14]
c0de0988:	f8cd a004 	str.w	sl, [sp, #4]
c0de098c:	bb58      	cbnz	r0, c0de09e6 <cbor_check_optFields+0x9a>
c0de098e:	4628      	mov	r0, r5
c0de0990:	4641      	mov	r1, r8
c0de0992:	f000 f842 	bl	c0de0a1a <cbor_value_get_int>
c0de0996:	9801      	ldr	r0, [sp, #4]
c0de0998:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
c0de099c:	d211      	bcs.n	c0de09c2 <cbor_check_optFields+0x76>
c0de099e:	7520      	strb	r0, [r4, #20]
c0de09a0:	e00a      	b.n	c0de09b8 <cbor_check_optFields+0x6c>
c0de09a2:	7ba8      	ldrb	r0, [r5, #14]
c0de09a4:	28f5      	cmp	r0, #245	; 0xf5
c0de09a6:	d11e      	bne.n	c0de09e6 <cbor_check_optFields+0x9a>
c0de09a8:	89a8      	ldrh	r0, [r5, #12]
c0de09aa:	2800      	cmp	r0, #0
c0de09ac:	bf18      	it	ne
c0de09ae:	2001      	movne	r0, #1
c0de09b0:	7560      	strb	r0, [r4, #21]
c0de09b2:	e001      	b.n	c0de09b8 <cbor_check_optFields+0x6c>
c0de09b4:	f8a4 a014 	strh.w	sl, [r4, #20]
c0de09b8:	f000 f844 	bl	c0de0a44 <OUTLINED_FUNCTION_0>
c0de09bc:	b920      	cbnz	r0, c0de09c8 <cbor_check_optFields+0x7c>
c0de09be:	3701      	adds	r7, #1
c0de09c0:	e7d0      	b.n	c0de0964 <cbor_check_optFields+0x18>
c0de09c2:	2009      	movs	r0, #9
c0de09c4:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de09c8:	f240 1101 	movw	r1, #257	; 0x101
c0de09cc:	4288      	cmp	r0, r1
c0de09ce:	d007      	beq.n	c0de09e0 <cbor_check_optFields+0x94>
c0de09d0:	f240 210a 	movw	r1, #522	; 0x20a
c0de09d4:	4288      	cmp	r0, r1
c0de09d6:	bf0c      	ite	eq
c0de09d8:	2023      	moveq	r0, #35	; 0x23
c0de09da:	2021      	movne	r0, #33	; 0x21
c0de09dc:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de09e0:	2022      	movs	r0, #34	; 0x22
c0de09e2:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de09e6:	2006      	movs	r0, #6
c0de09e8:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de09ec:	2000      	movs	r0, #0
c0de09ee:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de09f2 <cbor_check_expert>:
c0de09f2:	b510      	push	{r4, lr}
c0de09f4:	b150      	cbz	r0, c0de0a0c <cbor_check_expert+0x1a>
c0de09f6:	b149      	cbz	r1, c0de0a0c <cbor_check_expert+0x1a>
c0de09f8:	680a      	ldr	r2, [r1, #0]
c0de09fa:	2a02      	cmp	r2, #2
c0de09fc:	d308      	bcc.n	c0de0a10 <cbor_check_expert+0x1e>
c0de09fe:	f7ff ffa5 	bl	c0de094c <cbor_check_optFields>
c0de0a02:	4604      	mov	r4, r0
c0de0a04:	f004 ff44 	bl	c0de5890 <check_app_canary>
c0de0a08:	b92c      	cbnz	r4, c0de0a16 <cbor_check_expert+0x24>
c0de0a0a:	e003      	b.n	c0de0a14 <cbor_check_expert+0x22>
c0de0a0c:	2409      	movs	r4, #9
c0de0a0e:	e002      	b.n	c0de0a16 <cbor_check_expert+0x24>
c0de0a10:	2000      	movs	r0, #0
c0de0a12:	8288      	strh	r0, [r1, #20]
c0de0a14:	2400      	movs	r4, #0
c0de0a16:	4620      	mov	r0, r4
c0de0a18:	bd10      	pop	{r4, pc}

c0de0a1a <cbor_value_get_int>:
c0de0a1a:	b5b0      	push	{r4, r5, r7, lr}
c0de0a1c:	460c      	mov	r4, r1
c0de0a1e:	7bc1      	ldrb	r1, [r0, #15]
c0de0a20:	4605      	mov	r5, r0
c0de0a22:	0788      	lsls	r0, r1, #30
c0de0a24:	d401      	bmi.n	c0de0a2a <cbor_value_get_int+0x10>
c0de0a26:	89a8      	ldrh	r0, [r5, #12]
c0de0a28:	e003      	b.n	c0de0a32 <cbor_value_get_int+0x18>
c0de0a2a:	4628      	mov	r0, r5
c0de0a2c:	f004 ff43 	bl	c0de58b6 <_cbor_value_decode_int64_internal>
c0de0a30:	7be9      	ldrb	r1, [r5, #15]
c0de0a32:	0149      	lsls	r1, r1, #5
c0de0a34:	b249      	sxtb	r1, r1
c0de0a36:	ea80 10e1 	eor.w	r0, r0, r1, asr #7
c0de0a3a:	6020      	str	r0, [r4, #0]
c0de0a3c:	bdb0      	pop	{r4, r5, r7, pc}

c0de0a3e <cbor_value_get_text_string_chunk>:
c0de0a3e:	2300      	movs	r3, #0
c0de0a40:	f005 b9cd 	b.w	c0de5dde <_cbor_value_get_string_chunk>

c0de0a44 <OUTLINED_FUNCTION_0>:
c0de0a44:	4628      	mov	r0, r5
c0de0a46:	f005 b844 	b.w	c0de5ad2 <cbor_value_advance>
	...

c0de0a4c <checkChainConfig>:
c0de0a4c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0a50:	4683      	mov	fp, r0
c0de0a52:	4815      	ldr	r0, [pc, #84]	; (c0de0aa8 <checkChainConfig+0x5c>)
c0de0a54:	4583      	cmp	fp, r0
c0de0a56:	bf04      	itt	eq
c0de0a58:	2000      	moveq	r0, #0
c0de0a5a:	e8bd 8df0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0a5e:	4c13      	ldr	r4, [pc, #76]	; (c0de0aac <checkChainConfig+0x60>)
c0de0a60:	4692      	mov	sl, r2
c0de0a62:	4688      	mov	r8, r1
c0de0a64:	2500      	movs	r5, #0
c0de0a66:	447c      	add	r4, pc
c0de0a68:	2d54      	cmp	r5, #84	; 0x54
c0de0a6a:	d016      	beq.n	c0de0a9a <checkChainConfig+0x4e>
c0de0a6c:	5960      	ldr	r0, [r4, r5]
c0de0a6e:	f040 4000 	orr.w	r0, r0, #2147483648	; 0x80000000
c0de0a72:	4558      	cmp	r0, fp
c0de0a74:	d10f      	bne.n	c0de0a96 <checkChainConfig+0x4a>
c0de0a76:	1966      	adds	r6, r4, r5
c0de0a78:	6870      	ldr	r0, [r6, #4]
c0de0a7a:	f008 fe11 	bl	c0de96a0 <pic>
c0de0a7e:	4607      	mov	r7, r0
c0de0a80:	f008 ffaa 	bl	c0de99d8 <strlen>
c0de0a84:	b280      	uxth	r0, r0
c0de0a86:	4550      	cmp	r0, sl
c0de0a88:	d105      	bne.n	c0de0a96 <checkChainConfig+0x4a>
c0de0a8a:	4638      	mov	r0, r7
c0de0a8c:	4641      	mov	r1, r8
c0de0a8e:	4652      	mov	r2, sl
c0de0a90:	f008 ff4a 	bl	c0de9928 <memcmp>
c0de0a94:	b120      	cbz	r0, c0de0aa0 <checkChainConfig+0x54>
c0de0a96:	350c      	adds	r5, #12
c0de0a98:	e7e6      	b.n	c0de0a68 <checkChainConfig+0x1c>
c0de0a9a:	20ff      	movs	r0, #255	; 0xff
c0de0a9c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0aa0:	7a30      	ldrb	r0, [r6, #8]
c0de0aa2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0aa6:	bf00      	nop
c0de0aa8:	80000076 	.word	0x80000076
c0de0aac:	0000ab72 	.word	0x0000ab72

c0de0ab0 <tx_initialize>:
c0de0ab0:	b510      	push	{r4, lr}
c0de0ab2:	4808      	ldr	r0, [pc, #32]	; (c0de0ad4 <tx_initialize+0x24>)
c0de0ab4:	eb09 0400 	add.w	r4, r9, r0
c0de0ab8:	4807      	ldr	r0, [pc, #28]	; (c0de0ad8 <tx_initialize+0x28>)
c0de0aba:	4478      	add	r0, pc
c0de0abc:	f008 fdf0 	bl	c0de96a0 <pic>
c0de0ac0:	4602      	mov	r2, r0
c0de0ac2:	4620      	mov	r0, r4
c0de0ac4:	f44f 5100 	mov.w	r1, #8192	; 0x2000
c0de0ac8:	f44f 4380 	mov.w	r3, #16384	; 0x4000
c0de0acc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de0ad0:	f004 bcee 	b.w	c0de54b0 <buffering_init>
c0de0ad4:	00000002 	.word	0x00000002
c0de0ad8:	0000c742 	.word	0x0000c742

c0de0adc <tx_reset>:
c0de0adc:	f004 bd04 	b.w	c0de54e8 <buffering_reset>

c0de0ae0 <tx_append>:
c0de0ae0:	f004 bd16 	b.w	c0de5510 <buffering_append>

c0de0ae4 <tx_get_buffer_length>:
c0de0ae4:	b580      	push	{r7, lr}
c0de0ae6:	f004 fd61 	bl	c0de55ac <buffering_get_buffer>
c0de0aea:	6880      	ldr	r0, [r0, #8]
c0de0aec:	bd80      	pop	{r7, pc}

c0de0aee <tx_get_buffer>:
c0de0aee:	b580      	push	{r7, lr}
c0de0af0:	f004 fd5c 	bl	c0de55ac <buffering_get_buffer>
c0de0af4:	6800      	ldr	r0, [r0, #0]
c0de0af6:	bd80      	pop	{r7, pc}

c0de0af8 <tx_parse>:
c0de0af8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0afa:	2801      	cmp	r0, #1
c0de0afc:	d828      	bhi.n	c0de0b50 <tx_parse+0x58>
c0de0afe:	4e17      	ldr	r6, [pc, #92]	; (c0de0b5c <tx_parse+0x64>)
c0de0b00:	4604      	mov	r4, r0
c0de0b02:	f641 0144 	movw	r1, #6212	; 0x1844
c0de0b06:	eb09 0506 	add.w	r5, r9, r6
c0de0b0a:	4628      	mov	r0, r5
c0de0b0c:	f008 ff06 	bl	c0de991c <explicit_bzero>
c0de0b10:	4f13      	ldr	r7, [pc, #76]	; (c0de0b60 <tx_parse+0x68>)
c0de0b12:	f809 4006 	strb.w	r4, [r9, r6]
c0de0b16:	eb09 0407 	add.w	r4, r9, r7
c0de0b1a:	f004 fd47 	bl	c0de55ac <buffering_get_buffer>
c0de0b1e:	6806      	ldr	r6, [r0, #0]
c0de0b20:	f004 fd44 	bl	c0de55ac <buffering_get_buffer>
c0de0b24:	6882      	ldr	r2, [r0, #8]
c0de0b26:	4620      	mov	r0, r4
c0de0b28:	4631      	mov	r1, r6
c0de0b2a:	462b      	mov	r3, r5
c0de0b2c:	f000 fb18 	bl	c0de1160 <parser_parse>
c0de0b30:	4604      	mov	r4, r0
c0de0b32:	480c      	ldr	r0, [pc, #48]	; (c0de0b64 <tx_parse+0x6c>)
c0de0b34:	4478      	add	r0, pc
c0de0b36:	f004 febd 	bl	c0de58b4 <zemu_log_stack>
c0de0b3a:	b954      	cbnz	r4, c0de0b52 <tx_parse+0x5a>
c0de0b3c:	eb09 0007 	add.w	r0, r9, r7
c0de0b40:	f000 fb3e 	bl	c0de11c0 <parser_validate>
c0de0b44:	4604      	mov	r4, r0
c0de0b46:	f004 fea3 	bl	c0de5890 <check_app_canary>
c0de0b4a:	b914      	cbnz	r4, c0de0b52 <tx_parse+0x5a>
c0de0b4c:	2000      	movs	r0, #0
c0de0b4e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de0b50:	240f      	movs	r4, #15
c0de0b52:	4620      	mov	r0, r4
c0de0b54:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de0b58:	f001 bd24 	b.w	c0de25a4 <parser_getErrorDescription>
c0de0b5c:	00002004 	.word	0x00002004
c0de0b60:	00003848 	.word	0x00003848
c0de0b64:	0000a5cb 	.word	0x0000a5cb

c0de0b68 <tx_getNumItems>:
c0de0b68:	b580      	push	{r7, lr}
c0de0b6a:	4601      	mov	r1, r0
c0de0b6c:	4804      	ldr	r0, [pc, #16]	; (c0de0b80 <tx_getNumItems+0x18>)
c0de0b6e:	4448      	add	r0, r9
c0de0b70:	f000 fb6c 	bl	c0de124c <parser_getNumItems>
c0de0b74:	2105      	movs	r1, #5
c0de0b76:	2800      	cmp	r0, #0
c0de0b78:	bf08      	it	eq
c0de0b7a:	2103      	moveq	r1, #3
c0de0b7c:	4608      	mov	r0, r1
c0de0b7e:	bd80      	pop	{r7, pc}
c0de0b80:	00003848 	.word	0x00003848

c0de0b84 <tx_getItem>:
c0de0b84:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0b86:	b085      	sub	sp, #20
c0de0b88:	4607      	mov	r7, r0
c0de0b8a:	2000      	movs	r0, #0
c0de0b8c:	461e      	mov	r6, r3
c0de0b8e:	4614      	mov	r4, r2
c0de0b90:	460d      	mov	r5, r1
c0de0b92:	f88d 0013 	strb.w	r0, [sp, #19]
c0de0b96:	f10d 0013 	add.w	r0, sp, #19
c0de0b9a:	f7ff ffe5 	bl	c0de0b68 <tx_getNumItems>
c0de0b9e:	2803      	cmp	r0, #3
c0de0ba0:	d108      	bne.n	c0de0bb4 <tx_getItem+0x30>
c0de0ba2:	b2f9      	uxtb	r1, r7
c0de0ba4:	b248      	sxtb	r0, r1
c0de0ba6:	2800      	cmp	r0, #0
c0de0ba8:	d403      	bmi.n	c0de0bb2 <tx_getItem+0x2e>
c0de0baa:	f89d 0013 	ldrb.w	r0, [sp, #19]
c0de0bae:	4288      	cmp	r0, r1
c0de0bb0:	d202      	bcs.n	c0de0bb8 <tx_getItem+0x34>
c0de0bb2:	2005      	movs	r0, #5
c0de0bb4:	b005      	add	sp, #20
c0de0bb6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0bb8:	e9dd 320a 	ldrd	r3, r2, [sp, #40]	; 0x28
c0de0bbc:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de0bbe:	e9cd 2002 	strd	r2, r0, [sp, #8]
c0de0bc2:	480a      	ldr	r0, [pc, #40]	; (c0de0bec <tx_getItem+0x68>)
c0de0bc4:	e9cd 6300 	strd	r6, r3, [sp]
c0de0bc8:	462a      	mov	r2, r5
c0de0bca:	4623      	mov	r3, r4
c0de0bcc:	4448      	add	r0, r9
c0de0bce:	f000 fb55 	bl	c0de127c <parser_getItem>
c0de0bd2:	4601      	mov	r1, r0
c0de0bd4:	1ec2      	subs	r2, r0, #3
c0de0bd6:	2005      	movs	r0, #5
c0de0bd8:	2a02      	cmp	r2, #2
c0de0bda:	d3eb      	bcc.n	c0de0bb4 <tx_getItem+0x30>
c0de0bdc:	b119      	cbz	r1, c0de0be6 <tx_getItem+0x62>
c0de0bde:	2901      	cmp	r1, #1
c0de0be0:	bf18      	it	ne
c0de0be2:	2000      	movne	r0, #0
c0de0be4:	e7e6      	b.n	c0de0bb4 <tx_getItem+0x30>
c0de0be6:	2003      	movs	r0, #3
c0de0be8:	e7e4      	b.n	c0de0bb4 <tx_getItem+0x30>
c0de0bea:	bf00      	nop
c0de0bec:	00003848 	.word	0x00003848

c0de0bf0 <crypto_sign>:
c0de0bf0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de0bf4:	b0a8      	sub	sp, #160	; 0xa0
c0de0bf6:	b120      	cbz	r0, c0de0c02 <crypto_sign+0x12>
c0de0bf8:	4616      	mov	r6, r2
c0de0bfa:	b112      	cbz	r2, c0de0c02 <crypto_sign+0x12>
c0de0bfc:	460c      	mov	r4, r1
c0de0bfe:	2949      	cmp	r1, #73	; 0x49
c0de0c00:	d204      	bcs.n	c0de0c0c <crypto_sign+0x1c>
c0de0c02:	260c      	movs	r6, #12
c0de0c04:	4630      	mov	r0, r6
c0de0c06:	b028      	add	sp, #160	; 0xa0
c0de0c08:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de0c0c:	4605      	mov	r5, r0
c0de0c0e:	a820      	add	r0, sp, #128	; 0x80
c0de0c10:	2120      	movs	r1, #32
c0de0c12:	f008 fe77 	bl	c0de9904 <__aeabi_memclr>
c0de0c16:	f7ff ff6a 	bl	c0de0aee <tx_get_buffer>
c0de0c1a:	4607      	mov	r7, r0
c0de0c1c:	f7ff ff62 	bl	c0de0ae4 <tx_get_buffer_length>
c0de0c20:	4928      	ldr	r1, [pc, #160]	; (c0de0cc4 <crypto_sign+0xd4>)
c0de0c22:	f819 1001 	ldrb.w	r1, [r9, r1]
c0de0c26:	2901      	cmp	r1, #1
c0de0c28:	d007      	beq.n	c0de0c3a <crypto_sign+0x4a>
c0de0c2a:	b961      	cbnz	r1, c0de0c46 <crypto_sign+0x56>
c0de0c2c:	b281      	uxth	r1, r0
c0de0c2e:	aa20      	add	r2, sp, #128	; 0x80
c0de0c30:	4638      	mov	r0, r7
c0de0c32:	2320      	movs	r3, #32
c0de0c34:	f007 fe55 	bl	c0de88e2 <cx_hash_sha256>
c0de0c38:	e007      	b.n	c0de0c4a <crypto_sign+0x5a>
c0de0c3a:	b281      	uxth	r1, r0
c0de0c3c:	aa20      	add	r2, sp, #128	; 0x80
c0de0c3e:	4638      	mov	r0, r7
c0de0c40:	f000 f93a 	bl	c0de0eb8 <cx_keccak_256_hash>
c0de0c44:	b108      	cbz	r0, c0de0c4a <crypto_sign+0x5a>
c0de0c46:	2600      	movs	r6, #0
c0de0c48:	e7dc      	b.n	c0de0c04 <crypto_sign+0x14>
c0de0c4a:	f004 fe21 	bl	c0de5890 <check_app_canary>
c0de0c4e:	f10d 0818 	add.w	r8, sp, #24
c0de0c52:	2140      	movs	r1, #64	; 0x40
c0de0c54:	4640      	mov	r0, r8
c0de0c56:	f008 fe55 	bl	c0de9904 <__aeabi_memclr>
c0de0c5a:	2049      	movs	r0, #73	; 0x49
c0de0c5c:	2700      	movs	r7, #0
c0de0c5e:	9005      	str	r0, [sp, #20]
c0de0c60:	4640      	mov	r0, r8
c0de0c62:	8037      	strh	r7, [r6, #0]
c0de0c64:	9704      	str	r7, [sp, #16]
c0de0c66:	f000 f82f 	bl	c0de0cc8 <os_derive_bip32_with_seed_no_throw>
c0de0c6a:	b9b0      	cbnz	r0, c0de0c9a <crypto_sign+0xaa>
c0de0c6c:	a906      	add	r1, sp, #24
c0de0c6e:	ab16      	add	r3, sp, #88	; 0x58
c0de0c70:	2021      	movs	r0, #33	; 0x21
c0de0c72:	2220      	movs	r2, #32
c0de0c74:	2720      	movs	r7, #32
c0de0c76:	f007 fe20 	bl	c0de88ba <cx_ecfp_init_private_key_no_throw>
c0de0c7a:	b968      	cbnz	r0, c0de0c98 <crypto_sign+0xa8>
c0de0c7c:	a804      	add	r0, sp, #16
c0de0c7e:	a905      	add	r1, sp, #20
c0de0c80:	e9cd 7500 	strd	r7, r5, [sp]
c0de0c84:	2203      	movs	r2, #3
c0de0c86:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de0c8a:	a816      	add	r0, sp, #88	; 0x58
c0de0c8c:	ab20      	add	r3, sp, #128	; 0x80
c0de0c8e:	f240 6101 	movw	r1, #1537	; 0x601
c0de0c92:	f007 fe0a 	bl	c0de88aa <cx_ecdsa_sign_no_throw>
c0de0c96:	b180      	cbz	r0, c0de0cba <crypto_sign+0xca>
c0de0c98:	2700      	movs	r7, #0
c0de0c9a:	2600      	movs	r6, #0
c0de0c9c:	a816      	add	r0, sp, #88	; 0x58
c0de0c9e:	2128      	movs	r1, #40	; 0x28
c0de0ca0:	f008 fe3c 	bl	c0de991c <explicit_bzero>
c0de0ca4:	a806      	add	r0, sp, #24
c0de0ca6:	2140      	movs	r1, #64	; 0x40
c0de0ca8:	f008 fe38 	bl	c0de991c <explicit_bzero>
c0de0cac:	2f00      	cmp	r7, #0
c0de0cae:	d1a9      	bne.n	c0de0c04 <crypto_sign+0x14>
c0de0cb0:	4628      	mov	r0, r5
c0de0cb2:	4621      	mov	r1, r4
c0de0cb4:	f008 fe32 	bl	c0de991c <explicit_bzero>
c0de0cb8:	e7a4      	b.n	c0de0c04 <crypto_sign+0x14>
c0de0cba:	9805      	ldr	r0, [sp, #20]
c0de0cbc:	2701      	movs	r7, #1
c0de0cbe:	8030      	strh	r0, [r6, #0]
c0de0cc0:	2603      	movs	r6, #3
c0de0cc2:	e7eb      	b.n	c0de0c9c <crypto_sign+0xac>
c0de0cc4:	00003854 	.word	0x00003854

c0de0cc8 <os_derive_bip32_with_seed_no_throw>:
c0de0cc8:	b570      	push	{r4, r5, r6, lr}
c0de0cca:	b090      	sub	sp, #64	; 0x40
c0de0ccc:	ac04      	add	r4, sp, #16
c0de0cce:	4605      	mov	r5, r0
c0de0cd0:	4620      	mov	r0, r4
c0de0cd2:	f008 fe69 	bl	c0de99a8 <setjmp>
c0de0cd6:	b286      	uxth	r6, r0
c0de0cd8:	f8ad 003c 	strh.w	r0, [sp, #60]	; 0x3c
c0de0cdc:	b156      	cbz	r6, c0de0cf4 <os_derive_bip32_with_seed_no_throw+0x2c>
c0de0cde:	2000      	movs	r0, #0
c0de0ce0:	f8ad 003c 	strh.w	r0, [sp, #60]	; 0x3c
c0de0ce4:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de0ce6:	f008 fdc3 	bl	c0de9870 <try_context_set>
c0de0cea:	2140      	movs	r1, #64	; 0x40
c0de0cec:	4628      	mov	r0, r5
c0de0cee:	f008 fe15 	bl	c0de991c <explicit_bzero>
c0de0cf2:	e010      	b.n	c0de0d16 <os_derive_bip32_with_seed_no_throw+0x4e>
c0de0cf4:	a804      	add	r0, sp, #16
c0de0cf6:	f008 fdbb 	bl	c0de9870 <try_context_set>
c0de0cfa:	900e      	str	r0, [sp, #56]	; 0x38
c0de0cfc:	2000      	movs	r0, #0
c0de0cfe:	4669      	mov	r1, sp
c0de0d00:	2305      	movs	r3, #5
c0de0d02:	e9c1 5000 	strd	r5, r0, [r1]
c0de0d06:	e9c1 0002 	strd	r0, r0, [r1, #8]
c0de0d0a:	490a      	ldr	r1, [pc, #40]	; (c0de0d34 <os_derive_bip32_with_seed_no_throw+0x6c>)
c0de0d0c:	eb09 0201 	add.w	r2, r9, r1
c0de0d10:	2121      	movs	r1, #33	; 0x21
c0de0d12:	f008 fd15 	bl	c0de9740 <os_perso_derive_node_with_seed_key>
c0de0d16:	f008 fda3 	bl	c0de9860 <try_context_get>
c0de0d1a:	42a0      	cmp	r0, r4
c0de0d1c:	d102      	bne.n	c0de0d24 <os_derive_bip32_with_seed_no_throw+0x5c>
c0de0d1e:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de0d20:	f008 fda6 	bl	c0de9870 <try_context_set>
c0de0d24:	f8bd 003c 	ldrh.w	r0, [sp, #60]	; 0x3c
c0de0d28:	b910      	cbnz	r0, c0de0d30 <os_derive_bip32_with_seed_no_throw+0x68>
c0de0d2a:	4630      	mov	r0, r6
c0de0d2c:	b010      	add	sp, #64	; 0x40
c0de0d2e:	bd70      	pop	{r4, r5, r6, pc}
c0de0d30:	f007 fdef 	bl	c0de8912 <os_longjmp>
c0de0d34:	00003858 	.word	0x00003858

c0de0d38 <crypto_fillAddress>:
c0de0d38:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0d3c:	b0c2      	sub	sp, #264	; 0x108
c0de0d3e:	2953      	cmp	r1, #83	; 0x53
c0de0d40:	d201      	bcs.n	c0de0d46 <crypto_fillAddress+0xe>
c0de0d42:	2406      	movs	r4, #6
c0de0d44:	e0af      	b.n	c0de0ea6 <crypto_fillAddress+0x16e>
c0de0d46:	460d      	mov	r5, r1
c0de0d48:	4606      	mov	r6, r0
c0de0d4a:	a804      	add	r0, sp, #16
c0de0d4c:	2141      	movs	r1, #65	; 0x41
c0de0d4e:	4690      	mov	r8, r2
c0de0d50:	f008 fdd8 	bl	c0de9904 <__aeabi_memclr>
c0de0d54:	a82f      	add	r0, sp, #188	; 0xbc
c0de0d56:	214c      	movs	r1, #76	; 0x4c
c0de0d58:	f008 fdd4 	bl	c0de9904 <__aeabi_memclr>
c0de0d5c:	a825      	add	r0, sp, #148	; 0x94
c0de0d5e:	2128      	movs	r1, #40	; 0x28
c0de0d60:	f008 fdd0 	bl	c0de9904 <__aeabi_memclr>
c0de0d64:	ac15      	add	r4, sp, #84	; 0x54
c0de0d66:	2140      	movs	r1, #64	; 0x40
c0de0d68:	4620      	mov	r0, r4
c0de0d6a:	f008 fdcb 	bl	c0de9904 <__aeabi_memclr>
c0de0d6e:	4620      	mov	r0, r4
c0de0d70:	f7ff ffaa 	bl	c0de0cc8 <os_derive_bip32_with_seed_no_throw>
c0de0d74:	b938      	cbnz	r0, c0de0d86 <crypto_fillAddress+0x4e>
c0de0d76:	a915      	add	r1, sp, #84	; 0x54
c0de0d78:	ab25      	add	r3, sp, #148	; 0x94
c0de0d7a:	2021      	movs	r0, #33	; 0x21
c0de0d7c:	2220      	movs	r2, #32
c0de0d7e:	f007 fd9c 	bl	c0de88ba <cx_ecfp_init_private_key_no_throw>
c0de0d82:	2800      	cmp	r0, #0
c0de0d84:	d04d      	beq.n	c0de0e22 <crypto_fillAddress+0xea>
c0de0d86:	2700      	movs	r7, #0
c0de0d88:	2400      	movs	r4, #0
c0de0d8a:	a825      	add	r0, sp, #148	; 0x94
c0de0d8c:	2128      	movs	r1, #40	; 0x28
c0de0d8e:	f008 fdc5 	bl	c0de991c <explicit_bzero>
c0de0d92:	a815      	add	r0, sp, #84	; 0x54
c0de0d94:	2140      	movs	r1, #64	; 0x40
c0de0d96:	f008 fdc1 	bl	c0de991c <explicit_bzero>
c0de0d9a:	b3df      	cbz	r7, c0de0e14 <crypto_fillAddress+0xdc>
c0de0d9c:	2e00      	cmp	r6, #0
c0de0d9e:	d03e      	beq.n	c0de0e1e <crypto_fillAddress+0xe6>
c0de0da0:	f10d 0a10 	add.w	sl, sp, #16
c0de0da4:	4630      	mov	r0, r6
c0de0da6:	2221      	movs	r2, #33	; 0x21
c0de0da8:	4651      	mov	r1, sl
c0de0daa:	f008 fdae 	bl	c0de990a <__aeabi_memcpy>
c0de0dae:	f89d 1050 	ldrb.w	r1, [sp, #80]	; 0x50
c0de0db2:	2001      	movs	r0, #1
c0de0db4:	4637      	mov	r7, r6
c0de0db6:	f360 015f 	bfi	r1, r0, #1, #31
c0de0dba:	f807 1b21 	strb.w	r1, [r7], #33
c0de0dbe:	ac2f      	add	r4, sp, #188	; 0xbc
c0de0dc0:	2120      	movs	r1, #32
c0de0dc2:	4620      	mov	r0, r4
c0de0dc4:	f008 fd9e 	bl	c0de9904 <__aeabi_memclr>
c0de0dc8:	4839      	ldr	r0, [pc, #228]	; (c0de0eb0 <crypto_fillAddress+0x178>)
c0de0dca:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0dce:	2801      	cmp	r0, #1
c0de0dd0:	d042      	beq.n	c0de0e58 <crypto_fillAddress+0x120>
c0de0dd2:	2800      	cmp	r0, #0
c0de0dd4:	d14a      	bne.n	c0de0e6c <crypto_fillAddress+0x134>
c0de0dd6:	4630      	mov	r0, r6
c0de0dd8:	2121      	movs	r1, #33	; 0x21
c0de0dda:	4622      	mov	r2, r4
c0de0ddc:	2320      	movs	r3, #32
c0de0dde:	f04f 0b20 	mov.w	fp, #32
c0de0de2:	f007 fd7e 	bl	c0de88e2 <cx_hash_sha256>
c0de0de6:	ae15      	add	r6, sp, #84	; 0x54
c0de0de8:	2114      	movs	r1, #20
c0de0dea:	f04f 0a14 	mov.w	sl, #20
c0de0dee:	4630      	mov	r0, r6
c0de0df0:	f008 fd88 	bl	c0de9904 <__aeabi_memclr>
c0de0df4:	e9cd 4b25 	strd	r4, fp, [sp, #148]	; 0x94
c0de0df8:	a825      	add	r0, sp, #148	; 0x94
c0de0dfa:	2101      	movs	r1, #1
c0de0dfc:	4632      	mov	r2, r6
c0de0dfe:	2401      	movs	r4, #1
c0de0e00:	f007 fceb 	bl	c0de87da <cx_ripemd160_hash_iovec>
c0de0e04:	bb80      	cbnz	r0, c0de0e68 <crypto_fillAddress+0x130>
c0de0e06:	482b      	ldr	r0, [pc, #172]	; (c0de0eb4 <crypto_fillAddress+0x17c>)
c0de0e08:	e9cd a400 	strd	sl, r4, [sp]
c0de0e0c:	9402      	str	r4, [sp, #8]
c0de0e0e:	3d21      	subs	r5, #33	; 0x21
c0de0e10:	ab15      	add	r3, sp, #84	; 0x54
c0de0e12:	e037      	b.n	c0de0e84 <crypto_fillAddress+0x14c>
c0de0e14:	a804      	add	r0, sp, #16
c0de0e16:	2141      	movs	r1, #65	; 0x41
c0de0e18:	f008 fd80 	bl	c0de991c <explicit_bzero>
c0de0e1c:	e043      	b.n	c0de0ea6 <crypto_fillAddress+0x16e>
c0de0e1e:	240c      	movs	r4, #12
c0de0e20:	e041      	b.n	c0de0ea6 <crypto_fillAddress+0x16e>
c0de0e22:	ab2f      	add	r3, sp, #188	; 0xbc
c0de0e24:	2021      	movs	r0, #33	; 0x21
c0de0e26:	2100      	movs	r1, #0
c0de0e28:	2200      	movs	r2, #0
c0de0e2a:	2700      	movs	r7, #0
c0de0e2c:	f007 fd49 	bl	c0de88c2 <cx_ecfp_init_public_key_no_throw>
c0de0e30:	2800      	cmp	r0, #0
c0de0e32:	d1a9      	bne.n	c0de0d88 <crypto_fillAddress+0x50>
c0de0e34:	ac2f      	add	r4, sp, #188	; 0xbc
c0de0e36:	aa25      	add	r2, sp, #148	; 0x94
c0de0e38:	2021      	movs	r0, #33	; 0x21
c0de0e3a:	2301      	movs	r3, #1
c0de0e3c:	4621      	mov	r1, r4
c0de0e3e:	f007 fd38 	bl	c0de88b2 <cx_ecfp_generate_pair_no_throw>
c0de0e42:	2800      	cmp	r0, #0
c0de0e44:	d19f      	bne.n	c0de0d86 <crypto_fillAddress+0x4e>
c0de0e46:	f104 0108 	add.w	r1, r4, #8
c0de0e4a:	a804      	add	r0, sp, #16
c0de0e4c:	2241      	movs	r2, #65	; 0x41
c0de0e4e:	f008 fd5c 	bl	c0de990a <__aeabi_memcpy>
c0de0e52:	2403      	movs	r4, #3
c0de0e54:	2701      	movs	r7, #1
c0de0e56:	e798      	b.n	c0de0d8a <crypto_fillAddress+0x52>
c0de0e58:	ac2f      	add	r4, sp, #188	; 0xbc
c0de0e5a:	f10a 0001 	add.w	r0, sl, #1
c0de0e5e:	2140      	movs	r1, #64	; 0x40
c0de0e60:	4622      	mov	r2, r4
c0de0e62:	f000 f829 	bl	c0de0eb8 <cx_keccak_256_hash>
c0de0e66:	b120      	cbz	r0, c0de0e72 <crypto_fillAddress+0x13a>
c0de0e68:	2400      	movs	r4, #0
c0de0e6a:	e01c      	b.n	c0de0ea6 <crypto_fillAddress+0x16e>
c0de0e6c:	2000      	movs	r0, #0
c0de0e6e:	240a      	movs	r4, #10
c0de0e70:	e017      	b.n	c0de0ea2 <crypto_fillAddress+0x16a>
c0de0e72:	2001      	movs	r0, #1
c0de0e74:	2114      	movs	r1, #20
c0de0e76:	3d21      	subs	r5, #33	; 0x21
c0de0e78:	f104 030c 	add.w	r3, r4, #12
c0de0e7c:	e9cd 1000 	strd	r1, r0, [sp]
c0de0e80:	9002      	str	r0, [sp, #8]
c0de0e82:	480c      	ldr	r0, [pc, #48]	; (c0de0eb4 <crypto_fillAddress+0x17c>)
c0de0e84:	eb09 0200 	add.w	r2, r9, r0
c0de0e88:	4638      	mov	r0, r7
c0de0e8a:	4629      	mov	r1, r5
c0de0e8c:	f004 fad0 	bl	c0de5430 <bech32EncodeFromBytes>
c0de0e90:	4604      	mov	r4, r0
c0de0e92:	2803      	cmp	r0, #3
c0de0e94:	d107      	bne.n	c0de0ea6 <crypto_fillAddress+0x16e>
c0de0e96:	4638      	mov	r0, r7
c0de0e98:	4629      	mov	r1, r5
c0de0e9a:	f008 fdcc 	bl	c0de9a36 <strnlen>
c0de0e9e:	3021      	adds	r0, #33	; 0x21
c0de0ea0:	2403      	movs	r4, #3
c0de0ea2:	f8a8 0000 	strh.w	r0, [r8]
c0de0ea6:	4620      	mov	r0, r4
c0de0ea8:	b042      	add	sp, #264	; 0x108
c0de0eaa:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0eae:	bf00      	nop
c0de0eb0:	00003854 	.word	0x00003854
c0de0eb4:	0000386c 	.word	0x0000386c

c0de0eb8 <cx_keccak_256_hash>:
c0de0eb8:	b5e0      	push	{r5, r6, r7, lr}
c0de0eba:	e9cd 0100 	strd	r0, r1, [sp]
c0de0ebe:	4668      	mov	r0, sp
c0de0ec0:	2101      	movs	r1, #1
c0de0ec2:	f007 fce1 	bl	c0de8888 <cx_keccak_256_hash_iovec>
c0de0ec6:	bd8c      	pop	{r2, r3, r7, pc}

c0de0ec8 <json_parse>:
c0de0ec8:	f5b2 4f80 	cmp.w	r2, #16384	; 0x4000
c0de0ecc:	bf84      	itt	hi
c0de0ece:	2025      	movhi	r0, #37	; 0x25
c0de0ed0:	4770      	bxhi	lr
c0de0ed2:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de0ed6:	4604      	mov	r4, r0
c0de0ed8:	f641 0008 	movw	r0, #6152	; 0x1808
c0de0edc:	f10d 0808 	add.w	r8, sp, #8
c0de0ee0:	4615      	mov	r5, r2
c0de0ee2:	460e      	mov	r6, r1
c0de0ee4:	1827      	adds	r7, r4, r0
c0de0ee6:	4640      	mov	r0, r8
c0de0ee8:	f003 f965 	bl	c0de41b6 <jsmn_init>
c0de0eec:	4620      	mov	r0, r4
c0de0eee:	f641 0110 	movw	r1, #6160	; 0x1810
c0de0ef2:	f008 fd13 	bl	c0de991c <explicit_bzero>
c0de0ef6:	f44f 7040 	mov.w	r0, #768	; 0x300
c0de0efa:	80bd      	strh	r5, [r7, #4]
c0de0efc:	603e      	str	r6, [r7, #0]
c0de0efe:	f104 0308 	add.w	r3, r4, #8
c0de0f02:	4631      	mov	r1, r6
c0de0f04:	462a      	mov	r2, r5
c0de0f06:	9000      	str	r0, [sp, #0]
c0de0f08:	4640      	mov	r0, r8
c0de0f0a:	f002 ff8d 	bl	c0de3e28 <jsmn_parse>
c0de0f0e:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
c0de0f12:	dd0b      	ble.n	c0de0f2c <json_parse+0x64>
c0de0f14:	2100      	movs	r1, #0
c0de0f16:	7021      	strb	r1, [r4, #0]
c0de0f18:	6061      	str	r1, [r4, #4]
c0de0f1a:	b190      	cbz	r0, c0de0f42 <json_parse+0x7a>
c0de0f1c:	f5b0 7f40 	cmp.w	r0, #768	; 0x300
c0de0f20:	dc0d      	bgt.n	c0de0f3e <json_parse+0x76>
c0de0f22:	2101      	movs	r1, #1
c0de0f24:	6060      	str	r0, [r4, #4]
c0de0f26:	2000      	movs	r0, #0
c0de0f28:	7021      	strb	r1, [r4, #0]
c0de0f2a:	e00d      	b.n	c0de0f48 <json_parse+0x80>
c0de0f2c:	1cc1      	adds	r1, r0, #3
c0de0f2e:	d00a      	beq.n	c0de0f46 <json_parse+0x7e>
c0de0f30:	1c41      	adds	r1, r0, #1
c0de0f32:	d004      	beq.n	c0de0f3e <json_parse+0x76>
c0de0f34:	3002      	adds	r0, #2
c0de0f36:	bf14      	ite	ne
c0de0f38:	2020      	movne	r0, #32
c0de0f3a:	200c      	moveq	r0, #12
c0de0f3c:	e004      	b.n	c0de0f48 <json_parse+0x80>
c0de0f3e:	2016      	movs	r0, #22
c0de0f40:	e002      	b.n	c0de0f48 <json_parse+0x80>
c0de0f42:	2015      	movs	r0, #21
c0de0f44:	e000      	b.n	c0de0f48 <json_parse+0x80>
c0de0f46:	2017      	movs	r0, #23
c0de0f48:	b004      	add	sp, #16
c0de0f4a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de0f4e <array_get_element_count>:
c0de0f4e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0f50:	2300      	movs	r3, #0
c0de0f52:	8013      	strh	r3, [r2, #0]
c0de0f54:	6843      	ldr	r3, [r0, #4]
c0de0f56:	428b      	cmp	r3, r1
c0de0f58:	bf3c      	itt	cc
c0de0f5a:	2001      	movcc	r0, #1
c0de0f5c:	bdf0      	popcc	{r4, r5, r6, r7, pc}
c0de0f5e:	eb00 05c1 	add.w	r5, r0, r1, lsl #3
c0de0f62:	f04f 0c00 	mov.w	ip, #0
c0de0f66:	f9b5 400c 	ldrsh.w	r4, [r5, #12]
c0de0f6a:	896e      	ldrh	r6, [r5, #10]
c0de0f6c:	b2b6      	uxth	r6, r6
c0de0f6e:	3101      	adds	r1, #1
c0de0f70:	b28d      	uxth	r5, r1
c0de0f72:	42ab      	cmp	r3, r5
c0de0f74:	d90d      	bls.n	c0de0f92 <array_get_element_count+0x44>
c0de0f76:	eb00 07c5 	add.w	r7, r0, r5, lsl #3
c0de0f7a:	f9b7 500a 	ldrsh.w	r5, [r7, #10]
c0de0f7e:	42a5      	cmp	r5, r4
c0de0f80:	dc07      	bgt.n	c0de0f92 <array_get_element_count+0x44>
c0de0f82:	42b5      	cmp	r5, r6
c0de0f84:	ddf3      	ble.n	c0de0f6e <array_get_element_count+0x20>
c0de0f86:	89be      	ldrh	r6, [r7, #12]
c0de0f88:	f10c 0c01 	add.w	ip, ip, #1
c0de0f8c:	f8a2 c000 	strh.w	ip, [r2]
c0de0f90:	e7ec      	b.n	c0de0f6c <array_get_element_count+0x1e>
c0de0f92:	2000      	movs	r0, #0
c0de0f94:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de0f96 <array_get_nth_element>:
c0de0f96:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0f98:	6844      	ldr	r4, [r0, #4]
c0de0f9a:	428c      	cmp	r4, r1
c0de0f9c:	d201      	bcs.n	c0de0fa2 <array_get_nth_element+0xc>
c0de0f9e:	2001      	movs	r0, #1
c0de0fa0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0fa2:	eb00 05c1 	add.w	r5, r0, r1, lsl #3
c0de0fa6:	f04f 0c00 	mov.w	ip, #0
c0de0faa:	f9b5 e00c 	ldrsh.w	lr, [r5, #12]
c0de0fae:	896f      	ldrh	r7, [r5, #10]
c0de0fb0:	b2bf      	uxth	r7, r7
c0de0fb2:	3101      	adds	r1, #1
c0de0fb4:	b28d      	uxth	r5, r1
c0de0fb6:	8019      	strh	r1, [r3, #0]
c0de0fb8:	42ac      	cmp	r4, r5
c0de0fba:	d9f0      	bls.n	c0de0f9e <array_get_nth_element+0x8>
c0de0fbc:	eb00 06c5 	add.w	r6, r0, r5, lsl #3
c0de0fc0:	f9b6 500a 	ldrsh.w	r5, [r6, #10]
c0de0fc4:	4575      	cmp	r5, lr
c0de0fc6:	dcea      	bgt.n	c0de0f9e <array_get_nth_element+0x8>
c0de0fc8:	42bd      	cmp	r5, r7
c0de0fca:	ddf2      	ble.n	c0de0fb2 <array_get_nth_element+0x1c>
c0de0fcc:	fa1f f58c 	uxth.w	r5, ip
c0de0fd0:	4295      	cmp	r5, r2
c0de0fd2:	bf04      	itt	eq
c0de0fd4:	2000      	moveq	r0, #0
c0de0fd6:	bdf0      	popeq	{r4, r5, r6, r7, pc}
c0de0fd8:	89b7      	ldrh	r7, [r6, #12]
c0de0fda:	f10c 0c01 	add.w	ip, ip, #1
c0de0fde:	e7e7      	b.n	c0de0fb0 <array_get_nth_element+0x1a>

c0de0fe0 <object_get_element_count>:
c0de0fe0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0fe2:	2300      	movs	r3, #0
c0de0fe4:	8013      	strh	r3, [r2, #0]
c0de0fe6:	6843      	ldr	r3, [r0, #4]
c0de0fe8:	428b      	cmp	r3, r1
c0de0fea:	bf3c      	itt	cc
c0de0fec:	2001      	movcc	r0, #1
c0de0fee:	bdf0      	popcc	{r4, r5, r6, r7, pc}
c0de0ff0:	eb00 05c1 	add.w	r5, r0, r1, lsl #3
c0de0ff4:	3101      	adds	r1, #1
c0de0ff6:	f9b5 400c 	ldrsh.w	r4, [r5, #12]
c0de0ffa:	896e      	ldrh	r6, [r5, #10]
c0de0ffc:	2500      	movs	r5, #0
c0de0ffe:	b2b6      	uxth	r6, r6
c0de1000:	b28f      	uxth	r7, r1
c0de1002:	42bb      	cmp	r3, r7
c0de1004:	d90f      	bls.n	c0de1026 <object_get_element_count+0x46>
c0de1006:	eb00 07c7 	add.w	r7, r0, r7, lsl #3
c0de100a:	f9b7 700a 	ldrsh.w	r7, [r7, #10]
c0de100e:	42a7      	cmp	r7, r4
c0de1010:	dc09      	bgt.n	c0de1026 <object_get_element_count+0x46>
c0de1012:	3101      	adds	r1, #1
c0de1014:	42b7      	cmp	r7, r6
c0de1016:	ddf3      	ble.n	c0de1000 <object_get_element_count+0x20>
c0de1018:	b28e      	uxth	r6, r1
c0de101a:	3501      	adds	r5, #1
c0de101c:	eb00 06c6 	add.w	r6, r0, r6, lsl #3
c0de1020:	89b6      	ldrh	r6, [r6, #12]
c0de1022:	8015      	strh	r5, [r2, #0]
c0de1024:	e7eb      	b.n	c0de0ffe <object_get_element_count+0x1e>
c0de1026:	2000      	movs	r0, #0
c0de1028:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de102a <object_get_nth_key>:
c0de102a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de102c:	6844      	ldr	r4, [r0, #4]
c0de102e:	8019      	strh	r1, [r3, #0]
c0de1030:	428c      	cmp	r4, r1
c0de1032:	d201      	bcs.n	c0de1038 <object_get_nth_key+0xe>
c0de1034:	2001      	movs	r0, #1
c0de1036:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1038:	eb00 05c1 	add.w	r5, r0, r1, lsl #3
c0de103c:	1c4e      	adds	r6, r1, #1
c0de103e:	f04f 0c00 	mov.w	ip, #0
c0de1042:	f9b5 e00c 	ldrsh.w	lr, [r5, #12]
c0de1046:	896f      	ldrh	r7, [r5, #10]
c0de1048:	801e      	strh	r6, [r3, #0]
c0de104a:	b2b9      	uxth	r1, r7
c0de104c:	b2b5      	uxth	r5, r6
c0de104e:	42ac      	cmp	r4, r5
c0de1050:	d9f0      	bls.n	c0de1034 <object_get_nth_key+0xa>
c0de1052:	4637      	mov	r7, r6
c0de1054:	3601      	adds	r6, #1
c0de1056:	eb00 05c5 	add.w	r5, r0, r5, lsl #3
c0de105a:	801e      	strh	r6, [r3, #0]
c0de105c:	f9b5 500a 	ldrsh.w	r5, [r5, #10]
c0de1060:	4575      	cmp	r5, lr
c0de1062:	dce7      	bgt.n	c0de1034 <object_get_nth_key+0xa>
c0de1064:	428d      	cmp	r5, r1
c0de1066:	ddf1      	ble.n	c0de104c <object_get_nth_key+0x22>
c0de1068:	fa1f f18c 	uxth.w	r1, ip
c0de106c:	4291      	cmp	r1, r2
c0de106e:	d006      	beq.n	c0de107e <object_get_nth_key+0x54>
c0de1070:	b2b1      	uxth	r1, r6
c0de1072:	f10c 0c01 	add.w	ip, ip, #1
c0de1076:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
c0de107a:	898f      	ldrh	r7, [r1, #12]
c0de107c:	e7e5      	b.n	c0de104a <object_get_nth_key+0x20>
c0de107e:	2000      	movs	r0, #0
c0de1080:	801f      	strh	r7, [r3, #0]
c0de1082:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de1084 <object_get_nth_value>:
c0de1084:	b5b0      	push	{r4, r5, r7, lr}
c0de1086:	461c      	mov	r4, r3
c0de1088:	6843      	ldr	r3, [r0, #4]
c0de108a:	428b      	cmp	r3, r1
c0de108c:	d201      	bcs.n	c0de1092 <object_get_nth_value+0xe>
c0de108e:	2501      	movs	r5, #1
c0de1090:	e00a      	b.n	c0de10a8 <object_get_nth_value+0x24>
c0de1092:	4623      	mov	r3, r4
c0de1094:	f7ff ffc9 	bl	c0de102a <object_get_nth_key>
c0de1098:	4605      	mov	r5, r0
c0de109a:	f004 fbf9 	bl	c0de5890 <check_app_canary>
c0de109e:	b91d      	cbnz	r5, c0de10a8 <object_get_nth_value+0x24>
c0de10a0:	8820      	ldrh	r0, [r4, #0]
c0de10a2:	2500      	movs	r5, #0
c0de10a4:	3001      	adds	r0, #1
c0de10a6:	8020      	strh	r0, [r4, #0]
c0de10a8:	4628      	mov	r0, r5
c0de10aa:	bdb0      	pop	{r4, r5, r7, pc}

c0de10ac <object_get_value>:
c0de10ac:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de10b0:	f8d0 8004 	ldr.w	r8, [r0, #4]
c0de10b4:	4588      	cmp	r8, r1
c0de10b6:	d203      	bcs.n	c0de10c0 <object_get_value+0x14>
c0de10b8:	2001      	movs	r0, #1
c0de10ba:	b004      	add	sp, #16
c0de10bc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de10c0:	4606      	mov	r6, r0
c0de10c2:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de10c6:	461c      	mov	r4, r3
c0de10c8:	f101 0a01 	add.w	sl, r1, #1
c0de10cc:	f9b0 700a 	ldrsh.w	r7, [r0, #10]
c0de10d0:	f9b0 500c 	ldrsh.w	r5, [r0, #12]
c0de10d4:	f641 0008 	movw	r0, #6152	; 0x1808
c0de10d8:	f8a3 a000 	strh.w	sl, [r3]
c0de10dc:	1831      	adds	r1, r6, r0
c0de10de:	fa1f f08a 	uxth.w	r0, sl
c0de10e2:	4580      	cmp	r8, r0
c0de10e4:	d9e8      	bls.n	c0de10b8 <object_get_value+0xc>
c0de10e6:	eb06 00c0 	add.w	r0, r6, r0, lsl #3
c0de10ea:	f10a 0a01 	add.w	sl, sl, #1
c0de10ee:	f9b0 b00a 	ldrsh.w	fp, [r0, #10]
c0de10f2:	f9b0 000c 	ldrsh.w	r0, [r0, #12]
c0de10f6:	f8a4 a000 	strh.w	sl, [r4]
c0de10fa:	45ab      	cmp	fp, r5
c0de10fc:	dcdc      	bgt.n	c0de10b8 <object_get_value+0xc>
c0de10fe:	455f      	cmp	r7, fp
c0de1100:	daed      	bge.n	c0de10de <object_get_value+0x32>
c0de1102:	eba0 000b 	sub.w	r0, r0, fp
c0de1106:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de110a:	9001      	str	r0, [sp, #4]
c0de110c:	fa1f f08a 	uxth.w	r0, sl
c0de1110:	eb06 00c0 	add.w	r0, r6, r0, lsl #3
c0de1114:	f9b0 700c 	ldrsh.w	r7, [r0, #12]
c0de1118:	4610      	mov	r0, r2
c0de111a:	f008 fc5d 	bl	c0de99d8 <strlen>
c0de111e:	9b01      	ldr	r3, [sp, #4]
c0de1120:	b280      	uxth	r0, r0
c0de1122:	e9dd 1202 	ldrd	r1, r2, [sp, #8]
c0de1126:	4298      	cmp	r0, r3
c0de1128:	d1d9      	bne.n	c0de10de <object_get_value+0x32>
c0de112a:	4682      	mov	sl, r0
c0de112c:	4610      	mov	r0, r2
c0de112e:	4688      	mov	r8, r1
c0de1130:	f008 fab6 	bl	c0de96a0 <pic>
c0de1134:	9001      	str	r0, [sp, #4]
c0de1136:	f8d8 0000 	ldr.w	r0, [r8]
c0de113a:	4458      	add	r0, fp
c0de113c:	f008 fab0 	bl	c0de96a0 <pic>
c0de1140:	4601      	mov	r1, r0
c0de1142:	9801      	ldr	r0, [sp, #4]
c0de1144:	4652      	mov	r2, sl
c0de1146:	f008 fbef 	bl	c0de9928 <memcmp>
c0de114a:	b130      	cbz	r0, c0de115a <object_get_value+0xae>
c0de114c:	f8d6 8004 	ldr.w	r8, [r6, #4]
c0de1150:	f8b4 a000 	ldrh.w	sl, [r4]
c0de1154:	e9dd 1202 	ldrd	r1, r2, [sp, #8]
c0de1158:	e7c1      	b.n	c0de10de <object_get_value+0x32>
c0de115a:	2000      	movs	r0, #0
c0de115c:	e7ad      	b.n	c0de10ba <object_get_value+0xe>
	...

c0de1160 <parser_parse>:
c0de1160:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1162:	4606      	mov	r6, r0
c0de1164:	2000      	movs	r0, #0
c0de1166:	b292      	uxth	r2, r2
c0de1168:	461c      	mov	r4, r3
c0de116a:	80f0      	strh	r0, [r6, #6]
c0de116c:	b122      	cbz	r2, c0de1178 <parser_parse+0x18>
c0de116e:	b129      	cbz	r1, c0de117c <parser_parse+0x1c>
c0de1170:	2500      	movs	r5, #0
c0de1172:	2701      	movs	r7, #1
c0de1174:	4608      	mov	r0, r1
c0de1176:	e005      	b.n	c0de1184 <parser_parse+0x24>
c0de1178:	2502      	movs	r5, #2
c0de117a:	e001      	b.n	c0de1180 <parser_parse+0x20>
c0de117c:	2502      	movs	r5, #2
c0de117e:	2000      	movs	r0, #0
c0de1180:	2200      	movs	r2, #0
c0de1182:	2700      	movs	r7, #0
c0de1184:	80b2      	strh	r2, [r6, #4]
c0de1186:	6030      	str	r0, [r6, #0]
c0de1188:	f004 fb82 	bl	c0de5890 <check_app_canary>
c0de118c:	b19f      	cbz	r7, c0de11b6 <parser_parse+0x56>
c0de118e:	7820      	ldrb	r0, [r4, #0]
c0de1190:	60b4      	str	r4, [r6, #8]
c0de1192:	2801      	cmp	r0, #1
c0de1194:	d104      	bne.n	c0de11a0 <parser_parse+0x40>
c0de1196:	4630      	mov	r0, r6
c0de1198:	4621      	mov	r1, r4
c0de119a:	f001 fb17 	bl	c0de27cc <_read_text_tx>
c0de119e:	e003      	b.n	c0de11a8 <parser_parse+0x48>
c0de11a0:	4630      	mov	r0, r6
c0de11a2:	4621      	mov	r1, r4
c0de11a4:	f001 faf2 	bl	c0de278c <_read_json_tx>
c0de11a8:	f001 f9e9 	bl	c0de257e <OUTLINED_FUNCTION_16>
c0de11ac:	b91d      	cbnz	r5, c0de11b6 <parser_parse+0x56>
c0de11ae:	4803      	ldr	r0, [pc, #12]	; (c0de11bc <parser_parse+0x5c>)
c0de11b0:	2500      	movs	r5, #0
c0de11b2:	f809 5000 	strb.w	r5, [r9, r0]
c0de11b6:	4628      	mov	r0, r5
c0de11b8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de11ba:	bf00      	nop
c0de11bc:	0000512a 	.word	0x0000512a

c0de11c0 <parser_validate>:
c0de11c0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de11c4:	b09a      	sub	sp, #104	; 0x68
c0de11c6:	4604      	mov	r4, r0
c0de11c8:	6880      	ldr	r0, [r0, #8]
c0de11ca:	7800      	ldrb	r0, [r0, #0]
c0de11cc:	b368      	cbz	r0, c0de122a <parser_validate+0x6a>
c0de11ce:	2600      	movs	r6, #0
c0de11d0:	f10d 0167 	add.w	r1, sp, #103	; 0x67
c0de11d4:	4620      	mov	r0, r4
c0de11d6:	f88d 6067 	strb.w	r6, [sp, #103]	; 0x67
c0de11da:	f000 f837 	bl	c0de124c <parser_getNumItems>
c0de11de:	f001 f9ce 	bl	c0de257e <OUTLINED_FUNCTION_16>
c0de11e2:	bb65      	cbnz	r5, c0de123e <parser_validate+0x7e>
c0de11e4:	f88d 6016 	strb.w	r6, [sp, #22]
c0de11e8:	f10d 0a16 	add.w	sl, sp, #22
c0de11ec:	f04f 0b28 	mov.w	fp, #40	; 0x28
c0de11f0:	f10d 0717 	add.w	r7, sp, #23
c0de11f4:	f10d 063f 	add.w	r6, sp, #63	; 0x3f
c0de11f8:	f04f 0800 	mov.w	r8, #0
c0de11fc:	f89d 0067 	ldrb.w	r0, [sp, #103]	; 0x67
c0de1200:	4580      	cmp	r8, r0
c0de1202:	d21b      	bcs.n	c0de123c <parser_validate+0x7c>
c0de1204:	2000      	movs	r0, #0
c0de1206:	fa5f f188 	uxtb.w	r1, r8
c0de120a:	4632      	mov	r2, r6
c0de120c:	2328      	movs	r3, #40	; 0x28
c0de120e:	e9cd 7b00 	strd	r7, fp, [sp]
c0de1212:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de1216:	4620      	mov	r0, r4
c0de1218:	f000 f830 	bl	c0de127c <parser_getItem>
c0de121c:	f001 f9af 	bl	c0de257e <OUTLINED_FUNCTION_16>
c0de1220:	f108 0801 	add.w	r8, r8, #1
c0de1224:	2d00      	cmp	r5, #0
c0de1226:	d0e9      	beq.n	c0de11fc <parser_validate+0x3c>
c0de1228:	e009      	b.n	c0de123e <parser_validate+0x7e>
c0de122a:	4807      	ldr	r0, [pc, #28]	; (c0de1248 <parser_validate+0x88>)
c0de122c:	4448      	add	r0, r9
c0de122e:	3008      	adds	r0, #8
c0de1230:	f002 fd9e 	bl	c0de3d70 <tx_validate>
c0de1234:	f001 f9a3 	bl	c0de257e <OUTLINED_FUNCTION_16>
c0de1238:	b90d      	cbnz	r5, c0de123e <parser_validate+0x7e>
c0de123a:	e7c8      	b.n	c0de11ce <parser_validate+0xe>
c0de123c:	2500      	movs	r5, #0
c0de123e:	4628      	mov	r0, r5
c0de1240:	b01a      	add	sp, #104	; 0x68
c0de1242:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1246:	bf00      	nop
c0de1248:	000038c4 	.word	0x000038c4

c0de124c <parser_getNumItems>:
c0de124c:	b5b0      	push	{r4, r5, r7, lr}
c0de124e:	4605      	mov	r5, r0
c0de1250:	2000      	movs	r0, #0
c0de1252:	460c      	mov	r4, r1
c0de1254:	7008      	strb	r0, [r1, #0]
c0de1256:	68a8      	ldr	r0, [r5, #8]
c0de1258:	7800      	ldrb	r0, [r0, #0]
c0de125a:	2801      	cmp	r0, #1
c0de125c:	d109      	bne.n	c0de1272 <parser_getNumItems+0x26>
c0de125e:	f004 f8b5 	bl	c0de53cc <app_mode_expert>
c0de1262:	68aa      	ldr	r2, [r5, #8]
c0de1264:	6851      	ldr	r1, [r2, #4]
c0de1266:	b908      	cbnz	r0, c0de126c <parser_getNumItems+0x20>
c0de1268:	7a10      	ldrb	r0, [r2, #8]
c0de126a:	1a09      	subs	r1, r1, r0
c0de126c:	2000      	movs	r0, #0
c0de126e:	7021      	strb	r1, [r4, #0]
c0de1270:	bdb0      	pop	{r4, r5, r7, pc}
c0de1272:	4620      	mov	r0, r4
c0de1274:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de1278:	f001 be34 	b.w	c0de2ee4 <tx_display_numItems>

c0de127c <parser_getItem>:
c0de127c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1280:	f5ad 7d64 	sub.w	sp, sp, #912	; 0x390
c0de1284:	4606      	mov	r6, r0
c0de1286:	6880      	ldr	r0, [r0, #8]
c0de1288:	4692      	mov	sl, r2
c0de128a:	4688      	mov	r8, r1
c0de128c:	9aef      	ldr	r2, [sp, #956]	; 0x3bc
c0de128e:	2100      	movs	r1, #0
c0de1290:	e9dd 75ec 	ldrd	r7, r5, [sp, #944]	; 0x3b0
c0de1294:	461c      	mov	r4, r3
c0de1296:	7800      	ldrb	r0, [r0, #0]
c0de1298:	7011      	strb	r1, [r2, #0]
c0de129a:	2801      	cmp	r0, #1
c0de129c:	f040 80cb 	bne.w	c0de1436 <parser_getItem+0x1ba>
c0de12a0:	4650      	mov	r0, sl
c0de12a2:	4621      	mov	r1, r4
c0de12a4:	f008 fb3a 	bl	c0de991c <explicit_bzero>
c0de12a8:	f001 f953 	bl	c0de2552 <OUTLINED_FUNCTION_11>
c0de12ac:	f20d 21d6 	addw	r1, sp, #726	; 0x2d6
c0de12b0:	4630      	mov	r0, r6
c0de12b2:	f7ff ffcb 	bl	c0de124c <parser_getNumItems>
c0de12b6:	f001 f8fd 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de12ba:	f1bb 0f00 	cmp.w	fp, #0
c0de12be:	f040 8137 	bne.w	c0de1530 <parser_getItem+0x2b4>
c0de12c2:	f89d 02d6 	ldrb.w	r0, [sp, #726]	; 0x2d6
c0de12c6:	2800      	cmp	r0, #0
c0de12c8:	f000 812d 	beq.w	c0de1526 <parser_getItem+0x2aa>
c0de12cc:	4540      	cmp	r0, r8
c0de12ce:	f240 812d 	bls.w	c0de152c <parser_getItem+0x2b0>
c0de12d2:	f004 fadd 	bl	c0de5890 <check_app_canary>
c0de12d6:	a8b6      	add	r0, sp, #728	; 0x2d8
c0de12d8:	2112      	movs	r1, #18
c0de12da:	3004      	adds	r0, #4
c0de12dc:	f008 fb12 	bl	c0de9904 <__aeabi_memclr>
c0de12e0:	88b1      	ldrh	r1, [r6, #4]
c0de12e2:	88f2      	ldrh	r2, [r6, #6]
c0de12e4:	6830      	ldr	r0, [r6, #0]
c0de12e6:	abac      	add	r3, sp, #688	; 0x2b0
c0de12e8:	9300      	str	r3, [sp, #0]
c0de12ea:	ab13      	add	r3, sp, #76	; 0x4c
c0de12ec:	f001 f93d 	bl	c0de256a <OUTLINED_FUNCTION_14>
c0de12f0:	2800      	cmp	r0, #0
c0de12f2:	f000 8129 	beq.w	c0de1548 <parser_getItem+0x2cc>
c0de12f6:	f7ff fa86 	bl	c0de0806 <parser_mapCborError>
c0de12fa:	4683      	mov	fp, r0
c0de12fc:	f004 fac8 	bl	c0de5890 <check_app_canary>
c0de1300:	f1bb 0f00 	cmp.w	fp, #0
c0de1304:	f040 8114 	bne.w	c0de1530 <parser_getItem+0x2b4>
c0de1308:	98b7      	ldr	r0, [sp, #732]	; 0x2dc
c0de130a:	b148      	cbz	r0, c0de1320 <parser_getItem+0xa4>
c0de130c:	9db9      	ldr	r5, [sp, #740]	; 0x2e4
c0de130e:	b13d      	cbz	r5, c0de1320 <parser_getItem+0xa4>
c0de1310:	9ab8      	ldr	r2, [sp, #736]	; 0x2e0
c0de1312:	49dd      	ldr	r1, [pc, #884]	; (c0de1688 <parser_getItem+0x40c>)
c0de1314:	4479      	add	r1, pc
c0de1316:	f008 fb67 	bl	c0de99e8 <strncmp>
c0de131a:	2800      	cmp	r0, #0
c0de131c:	f000 8393 	beq.w	c0de1a46 <parser_getItem+0x7ca>
c0de1320:	f004 f854 	bl	c0de53cc <app_mode_expert>
c0de1324:	2800      	cmp	r0, #0
c0de1326:	f040 8435 	bne.w	c0de1b94 <parser_getItem+0x918>
c0de132a:	68b0      	ldr	r0, [r6, #8]
c0de132c:	6840      	ldr	r0, [r0, #4]
c0de132e:	4540      	cmp	r0, r8
c0de1330:	f240 837f 	bls.w	c0de1a32 <parser_getItem+0x7b6>
c0de1334:	f108 0101 	add.w	r1, r8, #1
c0de1338:	f8cd a018 	str.w	sl, [sp, #24]
c0de133c:	940c      	str	r4, [sp, #48]	; 0x30
c0de133e:	2500      	movs	r5, #0
c0de1340:	f04f 0b00 	mov.w	fp, #0
c0de1344:	f04f 0a00 	mov.w	sl, #0
c0de1348:	910e      	str	r1, [sp, #56]	; 0x38
c0de134a:	aa15      	add	r2, sp, #84	; 0x54
c0de134c:	acac      	add	r4, sp, #688	; 0x2b0
c0de134e:	4582      	cmp	sl, r0
c0de1350:	f080 8374 	bcs.w	c0de1a3c <parser_getItem+0x7c0>
c0de1354:	4617      	mov	r7, r2
c0de1356:	88b1      	ldrh	r1, [r6, #4]
c0de1358:	88f2      	ldrh	r2, [r6, #6]
c0de135a:	6830      	ldr	r0, [r6, #0]
c0de135c:	9400      	str	r4, [sp, #0]
c0de135e:	ab13      	add	r3, sp, #76	; 0x4c
c0de1360:	f001 f903 	bl	c0de256a <OUTLINED_FUNCTION_14>
c0de1364:	b118      	cbz	r0, c0de136e <parser_getItem+0xf2>
c0de1366:	f7ff fa4e 	bl	c0de0806 <parser_mapCborError>
c0de136a:	463a      	mov	r2, r7
c0de136c:	e015      	b.n	c0de139a <parser_getItem+0x11e>
c0de136e:	98ae      	ldr	r0, [sp, #696]	; 0x2b8
c0de1370:	463a      	mov	r2, r7
c0de1372:	b190      	cbz	r0, c0de139a <parser_getItem+0x11e>
c0de1374:	f89d 02be 	ldrb.w	r0, [sp, #702]	; 0x2be
c0de1378:	28a0      	cmp	r0, #160	; 0xa0
c0de137a:	d10e      	bne.n	c0de139a <parser_getItem+0x11e>
c0de137c:	4620      	mov	r0, r4
c0de137e:	4611      	mov	r1, r2
c0de1380:	950d      	str	r5, [sp, #52]	; 0x34
c0de1382:	4615      	mov	r5, r2
c0de1384:	f004 fbfe 	bl	c0de5b84 <cbor_value_enter_container>
c0de1388:	b918      	cbnz	r0, c0de1392 <parser_getItem+0x116>
c0de138a:	4628      	mov	r0, r5
c0de138c:	f004 fba1 	bl	c0de5ad2 <cbor_value_advance>
c0de1390:	b1b8      	cbz	r0, c0de13c2 <parser_getItem+0x146>
c0de1392:	f7ff fa38 	bl	c0de0806 <parser_mapCborError>
c0de1396:	462a      	mov	r2, r5
c0de1398:	9d0d      	ldr	r5, [sp, #52]	; 0x34
c0de139a:	f89d 02ed 	ldrb.w	r0, [sp, #749]	; 0x2ed
c0de139e:	b950      	cbnz	r0, c0de13b6 <parser_getItem+0x13a>
c0de13a0:	f10b 0b01 	add.w	fp, fp, #1
c0de13a4:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de13a6:	fa5f f08b 	uxtb.w	r0, fp
c0de13aa:	4281      	cmp	r1, r0
c0de13ac:	f000 8346 	beq.w	c0de1a3c <parser_getItem+0x7c0>
c0de13b0:	4540      	cmp	r0, r8
c0de13b2:	f200 83e1 	bhi.w	c0de1b78 <parser_getItem+0x8fc>
c0de13b6:	68b0      	ldr	r0, [r6, #8]
c0de13b8:	3501      	adds	r5, #1
c0de13ba:	f10a 0a01 	add.w	sl, sl, #1
c0de13be:	6840      	ldr	r0, [r0, #4]
c0de13c0:	e7c5      	b.n	c0de134e <parser_getItem+0xd2>
c0de13c2:	4628      	mov	r0, r5
c0de13c4:	a9c3      	add	r1, sp, #780	; 0x30c
c0de13c6:	f004 fbdd 	bl	c0de5b84 <cbor_value_enter_container>
c0de13ca:	b118      	cbz	r0, c0de13d4 <parser_getItem+0x158>
c0de13cc:	f7ff fa1b 	bl	c0de0806 <parser_mapCborError>
c0de13d0:	463a      	mov	r2, r7
c0de13d2:	e7e1      	b.n	c0de1398 <parser_getItem+0x11c>
c0de13d4:	9d0d      	ldr	r5, [sp, #52]	; 0x34
c0de13d6:	b2e8      	uxtb	r0, r5
c0de13d8:	1c44      	adds	r4, r0, #1
c0de13da:	3c01      	subs	r4, #1
c0de13dc:	d008      	beq.n	c0de13f0 <parser_getItem+0x174>
c0de13de:	a8c3      	add	r0, sp, #780	; 0x30c
c0de13e0:	f004 fb77 	bl	c0de5ad2 <cbor_value_advance>
c0de13e4:	2800      	cmp	r0, #0
c0de13e6:	d0f8      	beq.n	c0de13da <parser_getItem+0x15e>
c0de13e8:	f7ff fa0d 	bl	c0de0806 <parser_mapCborError>
c0de13ec:	acac      	add	r4, sp, #688	; 0x2b0
c0de13ee:	e7bc      	b.n	c0de136a <parser_getItem+0xee>
c0de13f0:	f89d 031b 	ldrb.w	r0, [sp, #795]	; 0x31b
c0de13f4:	06c1      	lsls	r1, r0, #27
c0de13f6:	d406      	bmi.n	c0de1406 <parser_getItem+0x18a>
c0de13f8:	0780      	lsls	r0, r0, #30
c0de13fa:	acac      	add	r4, sp, #688	; 0x2b0
c0de13fc:	d406      	bmi.n	c0de140c <parser_getItem+0x190>
c0de13fe:	f8bd 0318 	ldrh.w	r0, [sp, #792]	; 0x318
c0de1402:	90b6      	str	r0, [sp, #728]	; 0x2d8
c0de1404:	e007      	b.n	c0de1416 <parser_getItem+0x19a>
c0de1406:	2002      	movs	r0, #2
c0de1408:	acac      	add	r4, sp, #688	; 0x2b0
c0de140a:	e7ac      	b.n	c0de1366 <parser_getItem+0xea>
c0de140c:	a8c3      	add	r0, sp, #780	; 0x30c
c0de140e:	f004 fa52 	bl	c0de58b6 <_cbor_value_decode_int64_internal>
c0de1412:	90b6      	str	r0, [sp, #728]	; 0x2d8
c0de1414:	b961      	cbnz	r1, c0de1430 <parser_getItem+0x1b4>
c0de1416:	a8c3      	add	r0, sp, #780	; 0x30c
c0de1418:	a90f      	add	r1, sp, #60	; 0x3c
c0de141a:	f004 fbb3 	bl	c0de5b84 <cbor_value_enter_container>
c0de141e:	2800      	cmp	r0, #0
c0de1420:	d1a1      	bne.n	c0de1366 <parser_getItem+0xea>
c0de1422:	a80f      	add	r0, sp, #60	; 0x3c
c0de1424:	a9b6      	add	r1, sp, #728	; 0x2d8
c0de1426:	f7ff f9fe 	bl	c0de0826 <cbor_get_containerInfo>
c0de142a:	f004 fa31 	bl	c0de5890 <check_app_canary>
c0de142e:	e79c      	b.n	c0de136a <parser_getItem+0xee>
c0de1430:	f44f 6080 	mov.w	r0, #1024	; 0x400
c0de1434:	e797      	b.n	c0de1366 <parser_getItem+0xea>
c0de1436:	a8ac      	add	r0, sp, #688	; 0x2b0
c0de1438:	2123      	movs	r1, #35	; 0x23
c0de143a:	f008 fa63 	bl	c0de9904 <__aeabi_memclr>
c0de143e:	4650      	mov	r0, sl
c0de1440:	4621      	mov	r1, r4
c0de1442:	f008 fa6b 	bl	c0de991c <explicit_bzero>
c0de1446:	f001 f884 	bl	c0de2552 <OUTLINED_FUNCTION_11>
c0de144a:	f20d 21af 	addw	r1, sp, #687	; 0x2af
c0de144e:	4630      	mov	r0, r6
c0de1450:	f7ff fefc 	bl	c0de124c <parser_getNumItems>
c0de1454:	f001 f82e 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de1458:	f1bb 0f00 	cmp.w	fp, #0
c0de145c:	d168      	bne.n	c0de1530 <parser_getItem+0x2b4>
c0de145e:	f004 fa17 	bl	c0de5890 <check_app_canary>
c0de1462:	f89d 02af 	ldrb.w	r0, [sp, #687]	; 0x2af
c0de1466:	2800      	cmp	r0, #0
c0de1468:	d05d      	beq.n	c0de1526 <parser_getItem+0x2aa>
c0de146a:	4540      	cmp	r0, r8
c0de146c:	d95e      	bls.n	c0de152c <parser_getItem+0x2b0>
c0de146e:	2000      	movs	r0, #0
c0de1470:	2223      	movs	r2, #35	; 0x23
c0de1472:	f8ad 02ac 	strh.w	r0, [sp, #684]	; 0x2ac
c0de1476:	a9ac      	add	r1, sp, #688	; 0x2b0
c0de1478:	abab      	add	r3, sp, #684	; 0x2ac
c0de147a:	4640      	mov	r0, r8
c0de147c:	f001 fdb6 	bl	c0de2fec <tx_display_query>
c0de1480:	f001 f818 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de1484:	f1bb 0f00 	cmp.w	fp, #0
c0de1488:	d152      	bne.n	c0de1530 <parser_getItem+0x2b4>
c0de148a:	f004 fa01 	bl	c0de5890 <check_app_canary>
c0de148e:	4a7f      	ldr	r2, [pc, #508]	; (c0de168c <parser_getItem+0x410>)
c0de1490:	aeac      	add	r6, sp, #688	; 0x2b0
c0de1492:	4650      	mov	r0, sl
c0de1494:	4621      	mov	r1, r4
c0de1496:	4633      	mov	r3, r6
c0de1498:	447a      	add	r2, pc
c0de149a:	f007 ff75 	bl	c0de9388 <snprintf>
c0de149e:	497c      	ldr	r1, [pc, #496]	; (c0de1690 <parser_getItem+0x414>)
c0de14a0:	4630      	mov	r0, r6
c0de14a2:	220b      	movs	r2, #11
c0de14a4:	4479      	add	r1, pc
c0de14a6:	f008 fa3f 	bl	c0de9928 <memcmp>
c0de14aa:	2800      	cmp	r0, #0
c0de14ac:	d07e      	beq.n	c0de15ac <parser_getItem+0x330>
c0de14ae:	a8ac      	add	r0, sp, #688	; 0x2b0
c0de14b0:	4978      	ldr	r1, [pc, #480]	; (c0de1694 <parser_getItem+0x418>)
c0de14b2:	2212      	movs	r2, #18
c0de14b4:	4479      	add	r1, pc
c0de14b6:	f008 fa37 	bl	c0de9928 <memcmp>
c0de14ba:	2800      	cmp	r0, #0
c0de14bc:	d076      	beq.n	c0de15ac <parser_getItem+0x330>
c0de14be:	a8ac      	add	r0, sp, #688	; 0x2b0
c0de14c0:	4975      	ldr	r1, [pc, #468]	; (c0de1698 <parser_getItem+0x41c>)
c0de14c2:	2213      	movs	r2, #19
c0de14c4:	4479      	add	r1, pc
c0de14c6:	f008 fa2f 	bl	c0de9928 <memcmp>
c0de14ca:	2800      	cmp	r0, #0
c0de14cc:	d06e      	beq.n	c0de15ac <parser_getItem+0x330>
c0de14ce:	a8ac      	add	r0, sp, #688	; 0x2b0
c0de14d0:	4972      	ldr	r1, [pc, #456]	; (c0de169c <parser_getItem+0x420>)
c0de14d2:	2218      	movs	r2, #24
c0de14d4:	4479      	add	r1, pc
c0de14d6:	f008 fa27 	bl	c0de9928 <memcmp>
c0de14da:	2800      	cmp	r0, #0
c0de14dc:	d066      	beq.n	c0de15ac <parser_getItem+0x330>
c0de14de:	a8ac      	add	r0, sp, #688	; 0x2b0
c0de14e0:	496f      	ldr	r1, [pc, #444]	; (c0de16a0 <parser_getItem+0x424>)
c0de14e2:	2219      	movs	r2, #25
c0de14e4:	4479      	add	r1, pc
c0de14e6:	f008 fa1f 	bl	c0de9928 <memcmp>
c0de14ea:	2800      	cmp	r0, #0
c0de14ec:	d05e      	beq.n	c0de15ac <parser_getItem+0x330>
c0de14ee:	a8ac      	add	r0, sp, #688	; 0x2b0
c0de14f0:	496c      	ldr	r1, [pc, #432]	; (c0de16a4 <parser_getItem+0x428>)
c0de14f2:	2212      	movs	r2, #18
c0de14f4:	4479      	add	r1, pc
c0de14f6:	f008 fa17 	bl	c0de9928 <memcmp>
c0de14fa:	2800      	cmp	r0, #0
c0de14fc:	d056      	beq.n	c0de15ac <parser_getItem+0x330>
c0de14fe:	a8ac      	add	r0, sp, #688	; 0x2b0
c0de1500:	4969      	ldr	r1, [pc, #420]	; (c0de16a8 <parser_getItem+0x42c>)
c0de1502:	220b      	movs	r2, #11
c0de1504:	4479      	add	r1, pc
c0de1506:	f008 fa0f 	bl	c0de9928 <memcmp>
c0de150a:	2800      	cmp	r0, #0
c0de150c:	d04e      	beq.n	c0de15ac <parser_getItem+0x330>
c0de150e:	99ef      	ldr	r1, [sp, #956]	; 0x3bc
c0de1510:	f8bd 02ac 	ldrh.w	r0, [sp, #684]	; 0x2ac
c0de1514:	9bee      	ldr	r3, [sp, #952]	; 0x3b8
c0de1516:	462a      	mov	r2, r5
c0de1518:	9100      	str	r1, [sp, #0]
c0de151a:	4639      	mov	r1, r7
c0de151c:	f002 f924 	bl	c0de3768 <tx_getToken>
c0de1520:	4683      	mov	fp, r0
c0de1522:	f000 bc02 	b.w	c0de1d2a <parser_getItem+0xaae>
c0de1526:	f04f 0b0a 	mov.w	fp, #10
c0de152a:	e001      	b.n	c0de1530 <parser_getItem+0x2b4>
c0de152c:	f04f 0b03 	mov.w	fp, #3
c0de1530:	f004 f9ae 	bl	c0de5890 <check_app_canary>
c0de1534:	f1bb 0f00 	cmp.w	fp, #0
c0de1538:	bf08      	it	eq
c0de153a:	f04f 0b00 	moveq.w	fp, #0
c0de153e:	4658      	mov	r0, fp
c0de1540:	f50d 7d64 	add.w	sp, sp, #912	; 0x390
c0de1544:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1548:	98ae      	ldr	r0, [sp, #696]	; 0x2b8
c0de154a:	2800      	cmp	r0, #0
c0de154c:	f000 826a 	beq.w	c0de1a24 <parser_getItem+0x7a8>
c0de1550:	f89d 02be 	ldrb.w	r0, [sp, #702]	; 0x2be
c0de1554:	28a0      	cmp	r0, #160	; 0xa0
c0de1556:	f040 8268 	bne.w	c0de1a2a <parser_getItem+0x7ae>
c0de155a:	a8ac      	add	r0, sp, #688	; 0x2b0
c0de155c:	a915      	add	r1, sp, #84	; 0x54
c0de155e:	f004 fb11 	bl	c0de5b84 <cbor_value_enter_container>
c0de1562:	2800      	cmp	r0, #0
c0de1564:	f47f aec7 	bne.w	c0de12f6 <parser_getItem+0x7a>
c0de1568:	a815      	add	r0, sp, #84	; 0x54
c0de156a:	f004 fab2 	bl	c0de5ad2 <cbor_value_advance>
c0de156e:	2800      	cmp	r0, #0
c0de1570:	f47f aec1 	bne.w	c0de12f6 <parser_getItem+0x7a>
c0de1574:	a815      	add	r0, sp, #84	; 0x54
c0de1576:	a9c3      	add	r1, sp, #780	; 0x30c
c0de1578:	f004 fb04 	bl	c0de5b84 <cbor_value_enter_container>
c0de157c:	2800      	cmp	r0, #0
c0de157e:	f47f aeba 	bne.w	c0de12f6 <parser_getItem+0x7a>
c0de1582:	4625      	mov	r5, r4
c0de1584:	4654      	mov	r4, sl
c0de1586:	f108 0701 	add.w	r7, r8, #1
c0de158a:	f50d 7a43 	add.w	sl, sp, #780	; 0x30c
c0de158e:	3f01      	subs	r7, #1
c0de1590:	f000 849f 	beq.w	c0de1ed2 <parser_getItem+0xc56>
c0de1594:	4650      	mov	r0, sl
c0de1596:	f004 fa9c 	bl	c0de5ad2 <cbor_value_advance>
c0de159a:	2800      	cmp	r0, #0
c0de159c:	d0f7      	beq.n	c0de158e <parser_getItem+0x312>
c0de159e:	f7ff f932 	bl	c0de0806 <parser_mapCborError>
c0de15a2:	9fec      	ldr	r7, [sp, #944]	; 0x3b0
c0de15a4:	46a2      	mov	sl, r4
c0de15a6:	4683      	mov	fp, r0
c0de15a8:	f000 bd6e 	b.w	c0de2088 <parser_getItem+0xe0c>
c0de15ac:	f8df 8ab0 	ldr.w	r8, [pc, #2736]	; c0de2060 <parser_getItem+0xde4>
c0de15b0:	9aef      	ldr	r2, [sp, #956]	; 0x3bc
c0de15b2:	f8bd 32ac 	ldrh.w	r3, [sp, #684]	; 0x2ac
c0de15b6:	2000      	movs	r0, #0
c0de15b8:	eb09 0108 	add.w	r1, r9, r8
c0de15bc:	7010      	strb	r0, [r2, #0]
c0de15be:	eb01 06c3 	add.w	r6, r1, r3, lsl #3
c0de15c2:	f816 1f10 	ldrb.w	r1, [r6, #16]!
c0de15c6:	2902      	cmp	r1, #2
c0de15c8:	4938      	ldr	r1, [pc, #224]	; (c0de16ac <parser_getItem+0x430>)
c0de15ca:	4479      	add	r1, pc
c0de15cc:	910a      	str	r1, [sp, #40]	; 0x28
c0de15ce:	4938      	ldr	r1, [pc, #224]	; (c0de16b0 <parser_getItem+0x434>)
c0de15d0:	4479      	add	r1, pc
c0de15d2:	9109      	str	r1, [sp, #36]	; 0x24
c0de15d4:	4937      	ldr	r1, [pc, #220]	; (c0de16b4 <parser_getItem+0x438>)
c0de15d6:	4479      	add	r1, pc
c0de15d8:	9108      	str	r1, [sp, #32]
c0de15da:	f040 8201 	bne.w	c0de19e0 <parser_getItem+0x764>
c0de15de:	eb09 0008 	add.w	r0, r9, r8
c0de15e2:	aa13      	add	r2, sp, #76	; 0x4c
c0de15e4:	4619      	mov	r1, r3
c0de15e6:	930b      	str	r3, [sp, #44]	; 0x2c
c0de15e8:	3008      	adds	r0, #8
c0de15ea:	f7ff fcb0 	bl	c0de0f4e <array_get_element_count>
c0de15ee:	f000 ff61 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de15f2:	f1bb 0f00 	cmp.w	fp, #0
c0de15f6:	f040 8398 	bne.w	c0de1d2a <parser_getItem+0xaae>
c0de15fa:	a815      	add	r0, sp, #84	; 0x54
c0de15fc:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0de15fe:	4646      	mov	r6, r8
c0de1600:	46a0      	mov	r8, r4
c0de1602:	f04f 0c00 	mov.w	ip, #0
c0de1606:	2400      	movs	r4, #0
c0de1608:	2300      	movs	r3, #0
c0de160a:	3002      	adds	r0, #2
c0de160c:	9004      	str	r0, [sp, #16]
c0de160e:	1e68      	subs	r0, r5, #1
c0de1610:	9dee      	ldr	r5, [sp, #952]	; 0x3b8
c0de1612:	9005      	str	r0, [sp, #20]
c0de1614:	b280      	uxth	r0, r0
c0de1616:	9003      	str	r0, [sp, #12]
c0de1618:	2000      	movs	r0, #0
c0de161a:	9007      	str	r0, [sp, #28]
c0de161c:	f8bd 004c 	ldrh.w	r0, [sp, #76]	; 0x4c
c0de1620:	b2a2      	uxth	r2, r4
c0de1622:	4282      	cmp	r2, r0
c0de1624:	f080 8224 	bcs.w	c0de1a70 <parser_getItem+0x7f4>
c0de1628:	eb09 0006 	add.w	r0, r9, r6
c0de162c:	930e      	str	r3, [sp, #56]	; 0x38
c0de162e:	f20d 23d6 	addw	r3, sp, #726	; 0x2d6
c0de1632:	e9cd c40c 	strd	ip, r4, [sp, #48]	; 0x30
c0de1636:	3008      	adds	r0, #8
c0de1638:	f7ff fcad 	bl	c0de0f96 <array_get_nth_element>
c0de163c:	f000 ff3a 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de1640:	f1bb 0f00 	cmp.w	fp, #0
c0de1644:	f040 821d 	bne.w	c0de1a82 <parser_getItem+0x806>
c0de1648:	eb09 0006 	add.w	r0, r9, r6
c0de164c:	f8bd 62d6 	ldrh.w	r6, [sp, #726]	; 0x2d6
c0de1650:	aa0f      	add	r2, sp, #60	; 0x3c
c0de1652:	3008      	adds	r0, #8
c0de1654:	4631      	mov	r1, r6
c0de1656:	f7ff fc7a 	bl	c0de0f4e <array_get_element_count>
c0de165a:	f000 ff2b 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de165e:	f1bb 0f00 	cmp.w	fp, #0
c0de1662:	4644      	mov	r4, r8
c0de1664:	d17c      	bne.n	c0de1760 <parser_getItem+0x4e4>
c0de1666:	f8bd 003c 	ldrh.w	r0, [sp, #60]	; 0x3c
c0de166a:	2804      	cmp	r0, #4
c0de166c:	d026      	beq.n	c0de16bc <parser_getItem+0x440>
c0de166e:	2800      	cmp	r0, #0
c0de1670:	d174      	bne.n	c0de175c <parser_getItem+0x4e0>
c0de1672:	4a11      	ldr	r2, [pc, #68]	; (c0de16b8 <parser_getItem+0x43c>)
c0de1674:	99ed      	ldr	r1, [sp, #948]	; 0x3b4
c0de1676:	4638      	mov	r0, r7
c0de1678:	447a      	add	r2, pc
c0de167a:	f007 fe85 	bl	c0de9388 <snprintf>
c0de167e:	f04f 0b00 	mov.w	fp, #0
c0de1682:	2601      	movs	r6, #1
c0de1684:	e06d      	b.n	c0de1762 <parser_getItem+0x4e6>
c0de1686:	bf00      	nop
c0de1688:	00008cf1 	.word	0x00008cf1
c0de168c:	00008c3e 	.word	0x00008c3e
c0de1690:	00009a77 	.word	0x00009a77
c0de1694:	00008727 	.word	0x00008727
c0de1698:	00009e17 	.word	0x00009e17
c0de169c:	000095f6 	.word	0x000095f6
c0de16a0:	00009739 	.word	0x00009739
c0de16a4:	00008881 	.word	0x00008881
c0de16a8:	000091b9 	.word	0x000091b9
c0de16ac:	00008dc6 	.word	0x00008dc6
c0de16b0:	00009c37 	.word	0x00009c37
c0de16b4:	00008343 	.word	0x00008343
c0de16b8:	0000911b 	.word	0x0000911b
c0de16bc:	f8df 2dbc 	ldr.w	r2, [pc, #3516]	; c0de247c <parser_getItem+0x1200>
c0de16c0:	eb09 0002 	add.w	r0, r9, r2
c0de16c4:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
c0de16c8:	7c00      	ldrb	r0, [r0, #16]
c0de16ca:	2801      	cmp	r0, #1
c0de16cc:	d146      	bne.n	c0de175c <parser_getItem+0x4e0>
c0de16ce:	1c70      	adds	r0, r6, #1
c0de16d0:	eb09 0102 	add.w	r1, r9, r2
c0de16d4:	f000 ff25 	bl	c0de2522 <OUTLINED_FUNCTION_7>
c0de16d8:	d140      	bne.n	c0de175c <parser_getItem+0x4e0>
c0de16da:	eb09 0102 	add.w	r1, r9, r2
c0de16de:	f000 feec 	bl	c0de24ba <OUTLINED_FUNCTION_1>
c0de16e2:	d13b      	bne.n	c0de175c <parser_getItem+0x4e0>
c0de16e4:	eb09 0002 	add.w	r0, r9, r2
c0de16e8:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de16ec:	eb0c 0201 	add.w	r2, ip, r1
c0de16f0:	2100      	movs	r1, #0
c0de16f2:	2906      	cmp	r1, #6
c0de16f4:	d008      	beq.n	c0de1708 <parser_getItem+0x48c>
c0de16f6:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de16f8:	5c53      	ldrb	r3, [r2, r1]
c0de16fa:	5c40      	ldrb	r0, [r0, r1]
c0de16fc:	3101      	adds	r1, #1
c0de16fe:	4298      	cmp	r0, r3
c0de1700:	d0f7      	beq.n	c0de16f2 <parser_getItem+0x476>
c0de1702:	3901      	subs	r1, #1
c0de1704:	2906      	cmp	r1, #6
c0de1706:	d329      	bcc.n	c0de175c <parser_getItem+0x4e0>
c0de1708:	f8df 0d70 	ldr.w	r0, [pc, #3440]	; c0de247c <parser_getItem+0x1200>
c0de170c:	1cf1      	adds	r1, r6, #3
c0de170e:	b289      	uxth	r1, r1
c0de1710:	eb09 0200 	add.w	r2, r9, r0
c0de1714:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
c0de1718:	7c12      	ldrb	r2, [r2, #16]
c0de171a:	2a03      	cmp	r2, #3
c0de171c:	d11e      	bne.n	c0de175c <parser_getItem+0x4e0>
c0de171e:	eb09 0200 	add.w	r2, r9, r0
c0de1722:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
c0de1726:	f9b2 1012 	ldrsh.w	r1, [r2, #18]
c0de172a:	f9b2 2014 	ldrsh.w	r2, [r2, #20]
c0de172e:	1a52      	subs	r2, r2, r1
c0de1730:	2a05      	cmp	r2, #5
c0de1732:	d113      	bne.n	c0de175c <parser_getItem+0x4e0>
c0de1734:	f8cd a018 	str.w	sl, [sp, #24]
c0de1738:	46a2      	mov	sl, r4
c0de173a:	9c09      	ldr	r4, [sp, #36]	; 0x24
c0de173c:	46b8      	mov	r8, r7
c0de173e:	4461      	add	r1, ip
c0de1740:	2000      	movs	r0, #0
c0de1742:	2805      	cmp	r0, #5
c0de1744:	d02f      	beq.n	c0de17a6 <parser_getItem+0x52a>
c0de1746:	5c0a      	ldrb	r2, [r1, r0]
c0de1748:	5c23      	ldrb	r3, [r4, r0]
c0de174a:	3001      	adds	r0, #1
c0de174c:	4293      	cmp	r3, r2
c0de174e:	d0f8      	beq.n	c0de1742 <parser_getItem+0x4c6>
c0de1750:	3801      	subs	r0, #1
c0de1752:	2805      	cmp	r0, #5
c0de1754:	d227      	bcs.n	c0de17a6 <parser_getItem+0x52a>
c0de1756:	f04f 0b0d 	mov.w	fp, #13
c0de175a:	e05a      	b.n	c0de1812 <parser_getItem+0x596>
c0de175c:	f04f 0b0d 	mov.w	fp, #13
c0de1760:	2600      	movs	r6, #0
c0de1762:	f004 f895 	bl	c0de5890 <check_app_canary>
c0de1766:	f1bb 0f00 	cmp.w	fp, #0
c0de176a:	f040 82de 	bne.w	c0de1d2a <parser_getItem+0xaae>
c0de176e:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de1770:	46a0      	mov	r8, r4
c0de1772:	b118      	cbz	r0, c0de177c <parser_getItem+0x500>
c0de1774:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0de1776:	f04f 0c01 	mov.w	ip, #1
c0de177a:	e00d      	b.n	c0de1798 <parser_getItem+0x51c>
c0de177c:	b2f0      	uxtb	r0, r6
c0de177e:	b2e9      	uxtb	r1, r5
c0de1780:	4281      	cmp	r1, r0
c0de1782:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0de1784:	d205      	bcs.n	c0de1792 <parser_getItem+0x516>
c0de1786:	f8bd 02d6 	ldrh.w	r0, [sp, #726]	; 0x2d6
c0de178a:	f04f 0c01 	mov.w	ip, #1
c0de178e:	9007      	str	r0, [sp, #28]
c0de1790:	e002      	b.n	c0de1798 <parser_getItem+0x51c>
c0de1792:	1bad      	subs	r5, r5, r6
c0de1794:	f04f 0c00 	mov.w	ip, #0
c0de1798:	e9dd 430d 	ldrd	r4, r3, [sp, #52]	; 0x34
c0de179c:	4433      	add	r3, r6
c0de179e:	f8df 6cdc 	ldr.w	r6, [pc, #3292]	; c0de247c <parser_getItem+0x1200>
c0de17a2:	3401      	adds	r4, #1
c0de17a4:	e73a      	b.n	c0de161c <parser_getItem+0x3a0>
c0de17a6:	a8c3      	add	r0, sp, #780	; 0x30c
c0de17a8:	9c08      	ldr	r4, [sp, #32]
c0de17aa:	2181      	movs	r1, #129	; 0x81
c0de17ac:	47a0      	blx	r4
c0de17ae:	a8b6      	add	r0, sp, #728	; 0x2d8
c0de17b0:	2132      	movs	r1, #50	; 0x32
c0de17b2:	47a0      	blx	r4
c0de17b4:	99ed      	ldr	r1, [sp, #948]	; 0x3b4
c0de17b6:	4640      	mov	r0, r8
c0de17b8:	47a0      	blx	r4
c0de17ba:	a815      	add	r0, sp, #84	; 0x54
c0de17bc:	21a0      	movs	r1, #160	; 0xa0
c0de17be:	47a0      	blx	r4
c0de17c0:	f8df 0cb8 	ldr.w	r0, [pc, #3256]	; c0de247c <parser_getItem+0x1200>
c0de17c4:	1cb2      	adds	r2, r6, #2
c0de17c6:	f000 fe88 	bl	c0de24da <OUTLINED_FUNCTION_3>
c0de17ca:	d420      	bmi.n	c0de180e <parser_getItem+0x592>
c0de17cc:	f8df 1cac 	ldr.w	r1, [pc, #3244]	; c0de247c <parser_getItem+0x1200>
c0de17d0:	3604      	adds	r6, #4
c0de17d2:	f000 fe7b 	bl	c0de24cc <OUTLINED_FUNCTION_2>
c0de17d6:	d41a      	bmi.n	c0de180e <parser_getItem+0x592>
c0de17d8:	f8df 3ca0 	ldr.w	r3, [pc, #3232]	; c0de247c <parser_getItem+0x1200>
c0de17dc:	444b      	add	r3, r9
c0de17de:	f103 0410 	add.w	r4, r3, #16
c0de17e2:	eb04 06c6 	add.w	r6, r4, r6, lsl #3
c0de17e6:	f9b6 6004 	ldrsh.w	r6, [r6, #4]
c0de17ea:	1a77      	subs	r7, r6, r1
c0de17ec:	2f01      	cmp	r7, #1
c0de17ee:	db0b      	blt.n	c0de1808 <parser_getItem+0x58c>
c0de17f0:	2f80      	cmp	r7, #128	; 0x80
c0de17f2:	dc09      	bgt.n	c0de1808 <parser_getItem+0x58c>
c0de17f4:	f000 feb1 	bl	c0de255a <OUTLINED_FUNCTION_12>
c0de17f8:	eba2 0b00 	sub.w	fp, r2, r0
c0de17fc:	f1bb 0f01 	cmp.w	fp, #1
c0de1800:	db02      	blt.n	c0de1808 <parser_getItem+0x58c>
c0de1802:	f1bb 0f31 	cmp.w	fp, #49	; 0x31
c0de1806:	dd0a      	ble.n	c0de181e <parser_getItem+0x5a2>
c0de1808:	f04f 0b05 	mov.w	fp, #5
c0de180c:	e001      	b.n	c0de1812 <parser_getItem+0x596>
c0de180e:	f04f 0b08 	mov.w	fp, #8
c0de1812:	2600      	movs	r6, #0
c0de1814:	4654      	mov	r4, sl
c0de1816:	f8dd a018 	ldr.w	sl, [sp, #24]
c0de181a:	4647      	mov	r7, r8
c0de181c:	e7a1      	b.n	c0de1762 <parser_getItem+0x4e6>
c0de181e:	eb07 020b 	add.w	r2, r7, fp
c0de1822:	2600      	movs	r6, #0
c0de1824:	2a9e      	cmp	r2, #158	; 0x9e
c0de1826:	d902      	bls.n	c0de182e <parser_getItem+0x5b2>
c0de1828:	f04f 0b08 	mov.w	fp, #8
c0de182c:	e7f2      	b.n	c0de1814 <parser_getItem+0x598>
c0de182e:	685a      	ldr	r2, [r3, #4]
c0de1830:	4410      	add	r0, r2
c0de1832:	4411      	add	r1, r2
c0de1834:	463a      	mov	r2, r7
c0de1836:	9002      	str	r0, [sp, #8]
c0de1838:	a8c3      	add	r0, sp, #780	; 0x30c
c0de183a:	9101      	str	r1, [sp, #4]
c0de183c:	f008 f867 	bl	c0de990e <__aeabi_memmove>
c0de1840:	acb6      	add	r4, sp, #728	; 0x2d8
c0de1842:	9902      	ldr	r1, [sp, #8]
c0de1844:	465a      	mov	r2, fp
c0de1846:	4620      	mov	r0, r4
c0de1848:	f008 f861 	bl	c0de990e <__aeabi_memmove>
c0de184c:	4ad8      	ldr	r2, [pc, #864]	; (c0de1bb0 <parser_getItem+0x934>)
c0de184e:	a815      	add	r0, sp, #84	; 0x54
c0de1850:	21a0      	movs	r1, #160	; 0xa0
c0de1852:	4623      	mov	r3, r4
c0de1854:	447a      	add	r2, pc
c0de1856:	f007 fd97 	bl	c0de9388 <snprintf>
c0de185a:	f20d 308f 	addw	r0, sp, #911	; 0x38f
c0de185e:	f88d 638f 	strb.w	r6, [sp, #911]	; 0x38f
c0de1862:	f001 fb21 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de1866:	f000 fe25 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de186a:	b2f8      	uxtb	r0, r7
c0de186c:	2804      	cmp	r0, #4
c0de186e:	d10f      	bne.n	c0de1890 <parser_getItem+0x614>
c0de1870:	f89d 038f 	ldrb.w	r0, [sp, #911]	; 0x38f
c0de1874:	f000 fe90 	bl	c0de2598 <OUTLINED_FUNCTION_19>
c0de1878:	d10a      	bne.n	c0de1890 <parser_getItem+0x614>
c0de187a:	9b01      	ldr	r3, [sp, #4]
c0de187c:	7818      	ldrb	r0, [r3, #0]
c0de187e:	7859      	ldrb	r1, [r3, #1]
c0de1880:	789a      	ldrb	r2, [r3, #2]
c0de1882:	78db      	ldrb	r3, [r3, #3]
c0de1884:	f000 fe83 	bl	c0de258e <OUTLINED_FUNCTION_18>
c0de1888:	49ca      	ldr	r1, [pc, #808]	; (c0de1bb4 <parser_getItem+0x938>)
c0de188a:	f000 fe56 	bl	c0de253a <OUTLINED_FUNCTION_9>
c0de188e:	0946      	lsrs	r6, r0, #5
c0de1890:	f003 fffe 	bl	c0de5890 <check_app_canary>
c0de1894:	f1bb 0f00 	cmp.w	fp, #0
c0de1898:	d1bb      	bne.n	c0de1812 <parser_getItem+0x596>
c0de189a:	2e00      	cmp	r6, #0
c0de189c:	d066      	beq.n	c0de196c <parser_getItem+0x6f0>
c0de189e:	a815      	add	r0, sp, #84	; 0x54
c0de18a0:	21a0      	movs	r1, #160	; 0xa0
c0de18a2:	f008 f83b 	bl	c0de991c <explicit_bzero>
c0de18a6:	a8b6      	add	r0, sp, #728	; 0x2d8
c0de18a8:	f008 f896 	bl	c0de99d8 <strlen>
c0de18ac:	4606      	mov	r6, r0
c0de18ae:	3002      	adds	r0, #2
c0de18b0:	28a0      	cmp	r0, #160	; 0xa0
c0de18b2:	d8a9      	bhi.n	c0de1808 <parser_getItem+0x58c>
c0de18b4:	2e09      	cmp	r6, #9
c0de18b6:	d810      	bhi.n	c0de18da <parser_getItem+0x65e>
c0de18b8:	2000      	movs	r0, #0
c0de18ba:	9c04      	ldr	r4, [sp, #16]
c0de18bc:	f1c6 0b09 	rsb	fp, r6, #9
c0de18c0:	f000 fe35 	bl	c0de252e <OUTLINED_FUNCTION_8>
c0de18c4:	4659      	mov	r1, fp
c0de18c6:	f000 fe55 	bl	c0de2574 <OUTLINED_FUNCTION_15>
c0de18ca:	4abb      	ldr	r2, [pc, #748]	; (c0de1bb8 <parser_getItem+0x93c>)
c0de18cc:	eb04 000b 	add.w	r0, r4, fp
c0de18d0:	f106 0195 	add.w	r1, r6, #149	; 0x95
c0de18d4:	abb6      	add	r3, sp, #728	; 0x2d8
c0de18d6:	447a      	add	r2, pc
c0de18d8:	e015      	b.n	c0de1906 <parser_getItem+0x68a>
c0de18da:	4fb8      	ldr	r7, [pc, #736]	; (c0de1bbc <parser_getItem+0x940>)
c0de18dc:	ac15      	add	r4, sp, #84	; 0x54
c0de18de:	f50d 7b36 	add.w	fp, sp, #728	; 0x2d8
c0de18e2:	21a0      	movs	r1, #160	; 0xa0
c0de18e4:	4620      	mov	r0, r4
c0de18e6:	465b      	mov	r3, fp
c0de18e8:	447f      	add	r7, pc
c0de18ea:	463a      	mov	r2, r7
c0de18ec:	f007 fd4c 	bl	c0de9388 <snprintf>
c0de18f0:	f1a6 0109 	sub.w	r1, r6, #9
c0de18f4:	222e      	movs	r2, #46	; 0x2e
c0de18f6:	1860      	adds	r0, r4, r1
c0de18f8:	eb0b 0301 	add.w	r3, fp, r1
c0de18fc:	f1c6 01a8 	rsb	r1, r6, #168	; 0xa8
c0de1900:	f800 2b01 	strb.w	r2, [r0], #1
c0de1904:	463a      	mov	r2, r7
c0de1906:	f007 fd3f 	bl	c0de9388 <snprintf>
c0de190a:	a815      	add	r0, sp, #84	; 0x54
c0de190c:	f008 f864 	bl	c0de99d8 <strlen>
c0de1910:	2802      	cmp	r0, #2
c0de1912:	d323      	bcc.n	c0de195c <parser_getItem+0x6e0>
c0de1914:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
c0de1918:	d820      	bhi.n	c0de195c <parser_getItem+0x6e0>
c0de191a:	2200      	movs	r2, #0
c0de191c:	f64f 71ff 	movw	r1, #65535	; 0xffff
c0de1920:	b20b      	sxth	r3, r1
c0de1922:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
c0de1926:	dc09      	bgt.n	c0de193c <parser_getItem+0x6c0>
c0de1928:	b214      	sxth	r4, r2
c0de192a:	42a0      	cmp	r0, r4
c0de192c:	dd06      	ble.n	c0de193c <parser_getItem+0x6c0>
c0de192e:	ab15      	add	r3, sp, #84	; 0x54
c0de1930:	5d1b      	ldrb	r3, [r3, r4]
c0de1932:	2b2e      	cmp	r3, #46	; 0x2e
c0de1934:	bf08      	it	eq
c0de1936:	4611      	moveq	r1, r2
c0de1938:	3201      	adds	r2, #1
c0de193a:	e7f1      	b.n	c0de1920 <parser_getItem+0x6a4>
c0de193c:	2b00      	cmp	r3, #0
c0de193e:	d40d      	bmi.n	c0de195c <parser_getItem+0x6e0>
c0de1940:	b289      	uxth	r1, r1
c0de1942:	3801      	subs	r0, #1
c0de1944:	3106      	adds	r1, #6
c0de1946:	4288      	cmp	r0, r1
c0de1948:	d908      	bls.n	c0de195c <parser_getItem+0x6e0>
c0de194a:	aa15      	add	r2, sp, #84	; 0x54
c0de194c:	5c12      	ldrb	r2, [r2, r0]
c0de194e:	2a30      	cmp	r2, #48	; 0x30
c0de1950:	d104      	bne.n	c0de195c <parser_getItem+0x6e0>
c0de1952:	aa15      	add	r2, sp, #84	; 0x54
c0de1954:	2300      	movs	r3, #0
c0de1956:	5413      	strb	r3, [r2, r0]
c0de1958:	3801      	subs	r0, #1
c0de195a:	e7f4      	b.n	c0de1946 <parser_getItem+0x6ca>
c0de195c:	4a98      	ldr	r2, [pc, #608]	; (c0de1bc0 <parser_getItem+0x944>)
c0de195e:	4b99      	ldr	r3, [pc, #612]	; (c0de1bc4 <parser_getItem+0x948>)
c0de1960:	a8c3      	add	r0, sp, #780	; 0x30c
c0de1962:	2181      	movs	r1, #129	; 0x81
c0de1964:	447a      	add	r2, pc
c0de1966:	447b      	add	r3, pc
c0de1968:	f007 fd0e 	bl	c0de9388 <snprintf>
c0de196c:	4a96      	ldr	r2, [pc, #600]	; (c0de1bc8 <parser_getItem+0x94c>)
c0de196e:	ac15      	add	r4, sp, #84	; 0x54
c0de1970:	21a0      	movs	r1, #160	; 0xa0
c0de1972:	abc3      	add	r3, sp, #780	; 0x30c
c0de1974:	4620      	mov	r0, r4
c0de1976:	447a      	add	r2, pc
c0de1978:	f003 ff48 	bl	c0de580c <z_str3join>
c0de197c:	f000 fdf2 	bl	c0de2564 <OUTLINED_FUNCTION_13>
c0de1980:	99ed      	ldr	r1, [sp, #948]	; 0x3b4
c0de1982:	4606      	mov	r6, r0
c0de1984:	4640      	mov	r0, r8
c0de1986:	f007 ffc9 	bl	c0de991c <explicit_bzero>
c0de198a:	9805      	ldr	r0, [sp, #20]
c0de198c:	0400      	lsls	r0, r0, #16
c0de198e:	d01d      	beq.n	c0de19cc <parser_getItem+0x750>
c0de1990:	0430      	lsls	r0, r6, #16
c0de1992:	d01b      	beq.n	c0de19cc <parser_getItem+0x750>
c0de1994:	9a05      	ldr	r2, [sp, #20]
c0de1996:	b2b1      	uxth	r1, r6
c0de1998:	b290      	uxth	r0, r2
c0de199a:	fbb1 f1f0 	udiv	r1, r1, r0
c0de199e:	fb01 6012 	mls	r0, r1, r2, r6
c0de19a2:	b282      	uxth	r2, r0
c0de19a4:	2a00      	cmp	r2, #0
c0de19a6:	4613      	mov	r3, r2
c0de19a8:	bf18      	it	ne
c0de19aa:	2301      	movne	r3, #1
c0de19ac:	185e      	adds	r6, r3, r1
c0de19ae:	0631      	lsls	r1, r6, #24
c0de19b0:	d00c      	beq.n	c0de19cc <parser_getItem+0x750>
c0de19b2:	0400      	lsls	r0, r0, #16
c0de19b4:	d00e      	beq.n	c0de19d4 <parser_getItem+0x758>
c0de19b6:	b2f0      	uxtb	r0, r6
c0de19b8:	2801      	cmp	r0, #1
c0de19ba:	d10b      	bne.n	c0de19d4 <parser_getItem+0x758>
c0de19bc:	4640      	mov	r0, r8
c0de19be:	a915      	add	r1, sp, #84	; 0x54
c0de19c0:	f007 ffa3 	bl	c0de990a <__aeabi_memcpy>
c0de19c4:	f04f 0b00 	mov.w	fp, #0
c0de19c8:	2601      	movs	r6, #1
c0de19ca:	e723      	b.n	c0de1814 <parser_getItem+0x598>
c0de19cc:	2600      	movs	r6, #0
c0de19ce:	f04f 0b00 	mov.w	fp, #0
c0de19d2:	e71f      	b.n	c0de1814 <parser_getItem+0x598>
c0de19d4:	a915      	add	r1, sp, #84	; 0x54
c0de19d6:	9a03      	ldr	r2, [sp, #12]
c0de19d8:	4640      	mov	r0, r8
c0de19da:	f007 ff96 	bl	c0de990a <__aeabi_memcpy>
c0de19de:	e7f6      	b.n	c0de19ce <parser_getItem+0x752>
c0de19e0:	7010      	strb	r0, [r2, #0]
c0de19e2:	eb09 0008 	add.w	r0, r9, r8
c0de19e6:	aa0f      	add	r2, sp, #60	; 0x3c
c0de19e8:	4619      	mov	r1, r3
c0de19ea:	4698      	mov	r8, r3
c0de19ec:	3008      	adds	r0, #8
c0de19ee:	f7ff faae 	bl	c0de0f4e <array_get_element_count>
c0de19f2:	f000 fd5f 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de19f6:	f1bb 0f00 	cmp.w	fp, #0
c0de19fa:	f040 8196 	bne.w	c0de1d2a <parser_getItem+0xaae>
c0de19fe:	f8bd 003c 	ldrh.w	r0, [sp, #60]	; 0x3c
c0de1a02:	99ef      	ldr	r1, [sp, #956]	; 0x3bc
c0de1a04:	2804      	cmp	r0, #4
c0de1a06:	d03e      	beq.n	c0de1a86 <parser_getItem+0x80a>
c0de1a08:	2800      	cmp	r0, #0
c0de1a0a:	f040 818c 	bne.w	c0de1d26 <parser_getItem+0xaaa>
c0de1a0e:	2001      	movs	r0, #1
c0de1a10:	7008      	strb	r0, [r1, #0]
c0de1a12:	4638      	mov	r0, r7
c0de1a14:	4629      	mov	r1, r5
c0de1a16:	4a6d      	ldr	r2, [pc, #436]	; (c0de1bcc <parser_getItem+0x950>)
c0de1a18:	447a      	add	r2, pc
c0de1a1a:	f007 fcb5 	bl	c0de9388 <snprintf>
c0de1a1e:	f04f 0b00 	mov.w	fp, #0
c0de1a22:	e182      	b.n	c0de1d2a <parser_getItem+0xaae>
c0de1a24:	f04f 0b08 	mov.w	fp, #8
c0de1a28:	e468      	b.n	c0de12fc <parser_getItem+0x80>
c0de1a2a:	f04f 0b06 	mov.w	fp, #6
c0de1a2e:	f7ff bc65 	b.w	c0de12fc <parser_getItem+0x80>
c0de1a32:	f04f 0b09 	mov.w	fp, #9
c0de1a36:	f04f 0800 	mov.w	r8, #0
c0de1a3a:	e0a5      	b.n	c0de1b88 <parser_getItem+0x90c>
c0de1a3c:	f04f 0b00 	mov.w	fp, #0
c0de1a40:	f04f 0801 	mov.w	r8, #1
c0de1a44:	e09c      	b.n	c0de1b80 <parser_getItem+0x904>
c0de1a46:	f8dd b2e8 	ldr.w	fp, [sp, #744]	; 0x2e8
c0de1a4a:	4961      	ldr	r1, [pc, #388]	; (c0de1bd0 <parser_getItem+0x954>)
c0de1a4c:	4628      	mov	r0, r5
c0de1a4e:	4479      	add	r1, pc
c0de1a50:	465a      	mov	r2, fp
c0de1a52:	f007 ffc9 	bl	c0de99e8 <strncmp>
c0de1a56:	b140      	cbz	r0, c0de1a6a <parser_getItem+0x7ee>
c0de1a58:	495e      	ldr	r1, [pc, #376]	; (c0de1bd4 <parser_getItem+0x958>)
c0de1a5a:	4628      	mov	r0, r5
c0de1a5c:	465a      	mov	r2, fp
c0de1a5e:	4479      	add	r1, pc
c0de1a60:	f007 ffc2 	bl	c0de99e8 <strncmp>
c0de1a64:	2800      	cmp	r0, #0
c0de1a66:	f47f ac5b 	bne.w	c0de1320 <parser_getItem+0xa4>
c0de1a6a:	f04f 0b11 	mov.w	fp, #17
c0de1a6e:	e55f      	b.n	c0de1530 <parser_getItem+0x2b4>
c0de1a70:	99ee      	ldr	r1, [sp, #952]	; 0x3b8
c0de1a72:	9aef      	ldr	r2, [sp, #956]	; 0x3bc
c0de1a74:	b2d8      	uxtb	r0, r3
c0de1a76:	4288      	cmp	r0, r1
c0de1a78:	7013      	strb	r3, [r2, #0]
c0de1a7a:	f080 8139 	bcs.w	c0de1cf0 <parser_getItem+0xa74>
c0de1a7e:	f04f 0b09 	mov.w	fp, #9
c0de1a82:	4644      	mov	r4, r8
c0de1a84:	e151      	b.n	c0de1d2a <parser_getItem+0xaae>
c0de1a86:	7830      	ldrb	r0, [r6, #0]
c0de1a88:	2801      	cmp	r0, #1
c0de1a8a:	f040 814c 	bne.w	c0de1d26 <parser_getItem+0xaaa>
c0de1a8e:	46c3      	mov	fp, r8
c0de1a90:	f8df 39e8 	ldr.w	r3, [pc, #2536]	; c0de247c <parser_getItem+0x1200>
c0de1a94:	f10b 0001 	add.w	r0, fp, #1
c0de1a98:	eb09 0103 	add.w	r1, r9, r3
c0de1a9c:	f000 fd41 	bl	c0de2522 <OUTLINED_FUNCTION_7>
c0de1aa0:	f040 8141 	bne.w	c0de1d26 <parser_getItem+0xaaa>
c0de1aa4:	eb09 0103 	add.w	r1, r9, r3
c0de1aa8:	f000 fd07 	bl	c0de24ba <OUTLINED_FUNCTION_1>
c0de1aac:	f040 813b 	bne.w	c0de1d26 <parser_getItem+0xaaa>
c0de1ab0:	eb09 0003 	add.w	r0, r9, r3
c0de1ab4:	465f      	mov	r7, fp
c0de1ab6:	6840      	ldr	r0, [r0, #4]
c0de1ab8:	1842      	adds	r2, r0, r1
c0de1aba:	2100      	movs	r1, #0
c0de1abc:	2906      	cmp	r1, #6
c0de1abe:	d00b      	beq.n	c0de1ad8 <parser_getItem+0x85c>
c0de1ac0:	9e0a      	ldr	r6, [sp, #40]	; 0x28
c0de1ac2:	5c53      	ldrb	r3, [r2, r1]
c0de1ac4:	5c76      	ldrb	r6, [r6, r1]
c0de1ac6:	3101      	adds	r1, #1
c0de1ac8:	429e      	cmp	r6, r3
c0de1aca:	f8df 39b0 	ldr.w	r3, [pc, #2480]	; c0de247c <parser_getItem+0x1200>
c0de1ace:	d0f5      	beq.n	c0de1abc <parser_getItem+0x840>
c0de1ad0:	3901      	subs	r1, #1
c0de1ad2:	2906      	cmp	r1, #6
c0de1ad4:	f0c0 8127 	bcc.w	c0de1d26 <parser_getItem+0xaaa>
c0de1ad8:	1cf9      	adds	r1, r7, #3
c0de1ada:	eb09 0203 	add.w	r2, r9, r3
c0de1ade:	b289      	uxth	r1, r1
c0de1ae0:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
c0de1ae4:	7c12      	ldrb	r2, [r2, #16]
c0de1ae6:	2a03      	cmp	r2, #3
c0de1ae8:	f040 811d 	bne.w	c0de1d26 <parser_getItem+0xaaa>
c0de1aec:	eb09 0203 	add.w	r2, r9, r3
c0de1af0:	46a8      	mov	r8, r5
c0de1af2:	4657      	mov	r7, sl
c0de1af4:	4625      	mov	r5, r4
c0de1af6:	f000 fd0b 	bl	c0de2510 <OUTLINED_FUNCTION_6>
c0de1afa:	f040 8284 	bne.w	c0de2006 <parser_getItem+0xd8a>
c0de1afe:	9c09      	ldr	r4, [sp, #36]	; 0x24
c0de1b00:	4401      	add	r1, r0
c0de1b02:	2000      	movs	r0, #0
c0de1b04:	2805      	cmp	r0, #5
c0de1b06:	d008      	beq.n	c0de1b1a <parser_getItem+0x89e>
c0de1b08:	5c0a      	ldrb	r2, [r1, r0]
c0de1b0a:	5c23      	ldrb	r3, [r4, r0]
c0de1b0c:	3001      	adds	r0, #1
c0de1b0e:	4293      	cmp	r3, r2
c0de1b10:	d0f8      	beq.n	c0de1b04 <parser_getItem+0x888>
c0de1b12:	3801      	subs	r0, #1
c0de1b14:	2805      	cmp	r0, #5
c0de1b16:	f0c0 8276 	bcc.w	c0de2006 <parser_getItem+0xd8a>
c0de1b1a:	a8c3      	add	r0, sp, #780	; 0x30c
c0de1b1c:	9c08      	ldr	r4, [sp, #32]
c0de1b1e:	2181      	movs	r1, #129	; 0x81
c0de1b20:	47a0      	blx	r4
c0de1b22:	a8b6      	add	r0, sp, #728	; 0x2d8
c0de1b24:	2132      	movs	r1, #50	; 0x32
c0de1b26:	47a0      	blx	r4
c0de1b28:	98ec      	ldr	r0, [sp, #944]	; 0x3b0
c0de1b2a:	4641      	mov	r1, r8
c0de1b2c:	47a0      	blx	r4
c0de1b2e:	a815      	add	r0, sp, #84	; 0x54
c0de1b30:	21a0      	movs	r1, #160	; 0xa0
c0de1b32:	47a0      	blx	r4
c0de1b34:	f8df 0944 	ldr.w	r0, [pc, #2372]	; c0de247c <parser_getItem+0x1200>
c0de1b38:	f10b 0202 	add.w	r2, fp, #2
c0de1b3c:	f000 fccd 	bl	c0de24da <OUTLINED_FUNCTION_3>
c0de1b40:	f100 833f 	bmi.w	c0de21c2 <parser_getItem+0xf46>
c0de1b44:	f8df 1934 	ldr.w	r1, [pc, #2356]	; c0de247c <parser_getItem+0x1200>
c0de1b48:	f10b 0604 	add.w	r6, fp, #4
c0de1b4c:	f000 fcbe 	bl	c0de24cc <OUTLINED_FUNCTION_2>
c0de1b50:	f100 8337 	bmi.w	c0de21c2 <parser_getItem+0xf46>
c0de1b54:	f8df 3924 	ldr.w	r3, [pc, #2340]	; c0de247c <parser_getItem+0x1200>
c0de1b58:	f000 fcc6 	bl	c0de24e8 <OUTLINED_FUNCTION_4>
c0de1b5c:	db09      	blt.n	c0de1b72 <parser_getItem+0x8f6>
c0de1b5e:	2e80      	cmp	r6, #128	; 0x80
c0de1b60:	dc07      	bgt.n	c0de1b72 <parser_getItem+0x8f6>
c0de1b62:	f000 fcfa 	bl	c0de255a <OUTLINED_FUNCTION_12>
c0de1b66:	1a14      	subs	r4, r2, r0
c0de1b68:	2c01      	cmp	r4, #1
c0de1b6a:	db02      	blt.n	c0de1b72 <parser_getItem+0x8f6>
c0de1b6c:	2c31      	cmp	r4, #49	; 0x31
c0de1b6e:	f340 8325 	ble.w	c0de21bc <parser_getItem+0xf40>
c0de1b72:	f04f 0b05 	mov.w	fp, #5
c0de1b76:	e248      	b.n	c0de200a <parser_getItem+0xd8e>
c0de1b78:	f04f 0b09 	mov.w	fp, #9
c0de1b7c:	f04f 0800 	mov.w	r8, #0
c0de1b80:	9c0c      	ldr	r4, [sp, #48]	; 0x30
c0de1b82:	f8dd a018 	ldr.w	sl, [sp, #24]
c0de1b86:	9fec      	ldr	r7, [sp, #944]	; 0x3b0
c0de1b88:	f003 fe82 	bl	c0de5890 <check_app_canary>
c0de1b8c:	f1b8 0f00 	cmp.w	r8, #0
c0de1b90:	f43f acce 	beq.w	c0de1530 <parser_getItem+0x2b4>
c0de1b94:	98b8      	ldr	r0, [sp, #736]	; 0x2e0
c0de1b96:	2828      	cmp	r0, #40	; 0x28
c0de1b98:	d804      	bhi.n	c0de1ba4 <parser_getItem+0x928>
c0de1b9a:	99ba      	ldr	r1, [sp, #744]	; 0x2e8
c0de1b9c:	f240 2026 	movw	r0, #550	; 0x226
c0de1ba0:	4281      	cmp	r1, r0
c0de1ba2:	d919      	bls.n	c0de1bd8 <parser_getItem+0x95c>
c0de1ba4:	f04f 0b09 	mov.w	fp, #9
c0de1ba8:	f003 fe72 	bl	c0de5890 <check_app_canary>
c0de1bac:	e4c0      	b.n	c0de1530 <parser_getItem+0x2b4>
c0de1bae:	bf00      	nop
c0de1bb0:	00009c8b 	.word	0x00009c8b
c0de1bb4:	8d978c92 	.word	0x8d978c92
c0de1bb8:	00008800 	.word	0x00008800
c0de1bbc:	000087ee 	.word	0x000087ee
c0de1bc0:	000086aa 	.word	0x000086aa
c0de1bc4:	000086ac 	.word	0x000086ac
c0de1bc8:	00009796 	.word	0x00009796
c0de1bcc:	00008d7b 	.word	0x00008d7b
c0de1bd0:	00008c6d 	.word	0x00008c6d
c0de1bd4:	000091bd 	.word	0x000091bd
c0de1bd8:	f000 fcb5 	bl	c0de2546 <OUTLINED_FUNCTION_10>
c0de1bdc:	f8d6 8008 	ldr.w	r8, [r6, #8]
c0de1be0:	a815      	add	r0, sp, #84	; 0x54
c0de1be2:	f44f 7116 	mov.w	r1, #600	; 0x258
c0de1be6:	f007 fe8d 	bl	c0de9904 <__aeabi_memclr>
c0de1bea:	98b8      	ldr	r0, [sp, #736]	; 0x2e0
c0de1bec:	f108 0509 	add.w	r5, r8, #9
c0de1bf0:	2800      	cmp	r0, #0
c0de1bf2:	d058      	beq.n	c0de1ca6 <parser_getItem+0xa2a>
c0de1bf4:	4628      	mov	r0, r5
c0de1bf6:	f240 2171 	movw	r1, #625	; 0x271
c0de1bfa:	f007 fe8f 	bl	c0de991c <explicit_bzero>
c0de1bfe:	99b9      	ldr	r1, [sp, #740]	; 0x2e4
c0de1c00:	2900      	cmp	r1, #0
c0de1c02:	d0cf      	beq.n	c0de1ba4 <parser_getItem+0x928>
c0de1c04:	9aba      	ldr	r2, [sp, #744]	; 0x2e8
c0de1c06:	4628      	mov	r0, r5
c0de1c08:	f007 fe81 	bl	c0de990e <__aeabi_memmove>
c0de1c0c:	f8bd 32e8 	ldrh.w	r3, [sp, #744]	; 0x2e8
c0de1c10:	a815      	add	r0, sp, #84	; 0x54
c0de1c12:	f000 fcb7 	bl	c0de2584 <OUTLINED_FUNCTION_17>
c0de1c16:	f000 fc4d 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de1c1a:	f1bb 0f00 	cmp.w	fp, #0
c0de1c1e:	d1c3      	bne.n	c0de1ba8 <parser_getItem+0x92c>
c0de1c20:	f8cd a018 	str.w	sl, [sp, #24]
c0de1c24:	f8dd b2e0 	ldr.w	fp, [sp, #736]	; 0x2e0
c0de1c28:	f89d a2ec 	ldrb.w	sl, [sp, #748]	; 0x2ec
c0de1c2c:	940c      	str	r4, [sp, #48]	; 0x30
c0de1c2e:	eb0a 000b 	add.w	r0, sl, fp
c0de1c32:	b2c4      	uxtb	r4, r0
c0de1c34:	2c11      	cmp	r4, #17
c0de1c36:	d80d      	bhi.n	c0de1c54 <parser_getItem+0x9d8>
c0de1c38:	98ed      	ldr	r0, [sp, #948]	; 0x3b4
c0de1c3a:	2800      	cmp	r0, #0
c0de1c3c:	f000 8127 	beq.w	c0de1e8e <parser_getItem+0xc12>
c0de1c40:	a815      	add	r0, sp, #84	; 0x54
c0de1c42:	f007 fec9 	bl	c0de99d8 <strlen>
c0de1c46:	2c0b      	cmp	r4, #11
c0de1c48:	f0c0 8121 	bcc.w	c0de1e8e <parser_getItem+0xc12>
c0de1c4c:	99ed      	ldr	r1, [sp, #948]	; 0x3b4
c0de1c4e:	4288      	cmp	r0, r1
c0de1c50:	f0c0 811d 	bcc.w	c0de1e8e <parser_getItem+0xc12>
c0de1c54:	f108 0004 	add.w	r0, r8, #4
c0de1c58:	f50d 7b43 	add.w	fp, sp, #780	; 0x30c
c0de1c5c:	2127      	movs	r1, #39	; 0x27
c0de1c5e:	900e      	str	r0, [sp, #56]	; 0x38
c0de1c60:	f10b 0003 	add.w	r0, fp, #3
c0de1c64:	f007 fe4e 	bl	c0de9904 <__aeabi_memclr>
c0de1c68:	202d      	movs	r0, #45	; 0x2d
c0de1c6a:	f04f 0800 	mov.w	r8, #0
c0de1c6e:	f88d 030e 	strb.w	r0, [sp, #782]	; 0x30e
c0de1c72:	f642 502d 	movw	r0, #11565	; 0x2d2d
c0de1c76:	f8ad 030c 	strh.w	r0, [sp, #780]	; 0x30c
c0de1c7a:	4cee      	ldr	r4, [pc, #952]	; (c0de2034 <parser_getItem+0xdb8>)
c0de1c7c:	4fee      	ldr	r7, [pc, #952]	; (c0de2038 <parser_getItem+0xdbc>)
c0de1c7e:	447c      	add	r4, pc
c0de1c80:	447f      	add	r7, pc
c0de1c82:	fa5f f08a 	uxtb.w	r0, sl
c0de1c86:	fa5f f188 	uxtb.w	r1, r8
c0de1c8a:	4281      	cmp	r1, r0
c0de1c8c:	f080 80a7 	bcs.w	c0de1dde <parser_getItem+0xb62>
c0de1c90:	4658      	mov	r0, fp
c0de1c92:	212a      	movs	r1, #42	; 0x2a
c0de1c94:	4622      	mov	r2, r4
c0de1c96:	463b      	mov	r3, r7
c0de1c98:	f003 fdb8 	bl	c0de580c <z_str3join>
c0de1c9c:	f89d a2ec 	ldrb.w	sl, [sp, #748]	; 0x2ec
c0de1ca0:	f108 0801 	add.w	r8, r8, #1
c0de1ca4:	e7ed      	b.n	c0de1c82 <parser_getItem+0xa06>
c0de1ca6:	e9dd 12b9 	ldrd	r1, r2, [sp, #740]	; 0x2e4
c0de1caa:	4628      	mov	r0, r5
c0de1cac:	f007 fe2f 	bl	c0de990e <__aeabi_memmove>
c0de1cb0:	f8bd 32e8 	ldrh.w	r3, [sp, #744]	; 0x2e8
c0de1cb4:	a815      	add	r0, sp, #84	; 0x54
c0de1cb6:	f000 fc65 	bl	c0de2584 <OUTLINED_FUNCTION_17>
c0de1cba:	f000 fbfb 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de1cbe:	f1bb 0f00 	cmp.w	fp, #0
c0de1cc2:	f47f af71 	bne.w	c0de1ba8 <parser_getItem+0x92c>
c0de1cc6:	48dd      	ldr	r0, [pc, #884]	; (c0de203c <parser_getItem+0xdc0>)
c0de1cc8:	9ded      	ldr	r5, [sp, #948]	; 0x3b4
c0de1cca:	2600      	movs	r6, #0
c0de1ccc:	4478      	add	r0, pc
c0de1cce:	4683      	mov	fp, r0
c0de1cd0:	48db      	ldr	r0, [pc, #876]	; (c0de2040 <parser_getItem+0xdc4>)
c0de1cd2:	4478      	add	r0, pc
c0de1cd4:	4680      	mov	r8, r0
c0de1cd6:	f89d 02ec 	ldrb.w	r0, [sp, #748]	; 0x2ec
c0de1cda:	4286      	cmp	r6, r0
c0de1cdc:	d244      	bcs.n	c0de1d68 <parser_getItem+0xaec>
c0de1cde:	a815      	add	r0, sp, #84	; 0x54
c0de1ce0:	f44f 7116 	mov.w	r1, #600	; 0x258
c0de1ce4:	465a      	mov	r2, fp
c0de1ce6:	4643      	mov	r3, r8
c0de1ce8:	f003 fd90 	bl	c0de580c <z_str3join>
c0de1cec:	3601      	adds	r6, #1
c0de1cee:	e7f2      	b.n	c0de1cd6 <parser_getItem+0xa5a>
c0de1cf0:	0618      	lsls	r0, r3, #24
c0de1cf2:	4644      	mov	r4, r8
c0de1cf4:	f000 80c4 	beq.w	c0de1e80 <parser_getItem+0xc04>
c0de1cf8:	9907      	ldr	r1, [sp, #28]
c0de1cfa:	eb09 0006 	add.w	r0, r9, r6
c0de1cfe:	aa0f      	add	r2, sp, #60	; 0x3c
c0de1d00:	46a8      	mov	r8, r5
c0de1d02:	3008      	adds	r0, #8
c0de1d04:	b28e      	uxth	r6, r1
c0de1d06:	4631      	mov	r1, r6
c0de1d08:	f7ff f921 	bl	c0de0f4e <array_get_element_count>
c0de1d0c:	f000 fbd2 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de1d10:	f1bb 0f00 	cmp.w	fp, #0
c0de1d14:	d109      	bne.n	c0de1d2a <parser_getItem+0xaae>
c0de1d16:	f8bd 003c 	ldrh.w	r0, [sp, #60]	; 0x3c
c0de1d1a:	2804      	cmp	r0, #4
c0de1d1c:	f000 812a 	beq.w	c0de1f74 <parser_getItem+0xcf8>
c0de1d20:	2800      	cmp	r0, #0
c0de1d22:	f000 80af 	beq.w	c0de1e84 <parser_getItem+0xc08>
c0de1d26:	f04f 0b0d 	mov.w	fp, #13
c0de1d2a:	f003 fdb1 	bl	c0de5890 <check_app_canary>
c0de1d2e:	f1bb 0f00 	cmp.w	fp, #0
c0de1d32:	f47f abfd 	bne.w	c0de1530 <parser_getItem+0x2b4>
c0de1d36:	f003 fdab 	bl	c0de5890 <check_app_canary>
c0de1d3a:	f001 fba5 	bl	c0de3488 <tx_display_make_friendly>
c0de1d3e:	f000 fbb9 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de1d42:	f1bb 0f00 	cmp.w	fp, #0
c0de1d46:	f47f abf3 	bne.w	c0de1530 <parser_getItem+0x2b4>
c0de1d4a:	f003 fda1 	bl	c0de5890 <check_app_canary>
c0de1d4e:	4abd      	ldr	r2, [pc, #756]	; (c0de2044 <parser_getItem+0xdc8>)
c0de1d50:	abac      	add	r3, sp, #688	; 0x2b0
c0de1d52:	4650      	mov	r0, sl
c0de1d54:	4621      	mov	r1, r4
c0de1d56:	447a      	add	r2, pc
c0de1d58:	f007 fb16 	bl	c0de9388 <snprintf>
c0de1d5c:	f003 fd98 	bl	c0de5890 <check_app_canary>
c0de1d60:	f04f 0b00 	mov.w	fp, #0
c0de1d64:	f7ff bbe4 	b.w	c0de1530 <parser_getItem+0x2b4>
c0de1d68:	4ab7      	ldr	r2, [pc, #732]	; (c0de2048 <parser_getItem+0xdcc>)
c0de1d6a:	4650      	mov	r0, sl
c0de1d6c:	4621      	mov	r1, r4
c0de1d6e:	447a      	add	r2, pc
c0de1d70:	f007 fb0a 	bl	c0de9388 <snprintf>
c0de1d74:	f10d 0854 	add.w	r8, sp, #84	; 0x54
c0de1d78:	4640      	mov	r0, r8
c0de1d7a:	f007 fe2d 	bl	c0de99d8 <strlen>
c0de1d7e:	4606      	mov	r6, r0
c0de1d80:	f000 fbe7 	bl	c0de2552 <OUTLINED_FUNCTION_11>
c0de1d84:	1e68      	subs	r0, r5, #1
c0de1d86:	9cef      	ldr	r4, [sp, #956]	; 0x3bc
c0de1d88:	f04f 0b00 	mov.w	fp, #0
c0de1d8c:	b282      	uxth	r2, r0
c0de1d8e:	2a00      	cmp	r2, #0
c0de1d90:	f884 b000 	strb.w	fp, [r4]
c0de1d94:	f43f af08 	beq.w	c0de1ba8 <parser_getItem+0x92c>
c0de1d98:	0431      	lsls	r1, r6, #16
c0de1d9a:	f000 816b 	beq.w	c0de2074 <parser_getItem+0xdf8>
c0de1d9e:	b281      	uxth	r1, r0
c0de1da0:	b2b3      	uxth	r3, r6
c0de1da2:	fbb3 f1f1 	udiv	r1, r3, r1
c0de1da6:	fb01 6010 	mls	r0, r1, r0, r6
c0de1daa:	b283      	uxth	r3, r0
c0de1dac:	461d      	mov	r5, r3
c0de1dae:	2b00      	cmp	r3, #0
c0de1db0:	bf18      	it	ne
c0de1db2:	2501      	movne	r5, #1
c0de1db4:	4429      	add	r1, r5
c0de1db6:	9dee      	ldr	r5, [sp, #952]	; 0x3b8
c0de1db8:	7021      	strb	r1, [r4, #0]
c0de1dba:	b2c9      	uxtb	r1, r1
c0de1dbc:	42a9      	cmp	r1, r5
c0de1dbe:	f240 8159 	bls.w	c0de2074 <parser_getItem+0xdf8>
c0de1dc2:	0400      	lsls	r0, r0, #16
c0de1dc4:	f000 80cf 	beq.w	c0de1f66 <parser_getItem+0xcea>
c0de1dc8:	1e48      	subs	r0, r1, #1
c0de1dca:	99ee      	ldr	r1, [sp, #952]	; 0x3b8
c0de1dcc:	4288      	cmp	r0, r1
c0de1dce:	f040 80ca 	bne.w	c0de1f66 <parser_getItem+0xcea>
c0de1dd2:	98ee      	ldr	r0, [sp, #952]	; 0x3b8
c0de1dd4:	fb00 8102 	mla	r1, r0, r2, r8
c0de1dd8:	4638      	mov	r0, r7
c0de1dda:	461a      	mov	r2, r3
c0de1ddc:	e0c7      	b.n	c0de1f6e <parser_getItem+0xcf2>
c0de1dde:	f000 fbb2 	bl	c0de2546 <OUTLINED_FUNCTION_10>
c0de1de2:	99b7      	ldr	r1, [sp, #732]	; 0x2dc
c0de1de4:	2900      	cmp	r1, #0
c0de1de6:	f43f aedd 	beq.w	c0de1ba4 <parser_getItem+0x928>
c0de1dea:	9ab8      	ldr	r2, [sp, #736]	; 0x2e0
c0de1dec:	4628      	mov	r0, r5
c0de1dee:	f007 fd8e 	bl	c0de990e <__aeabi_memmove>
c0de1df2:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de1df4:	9ab8      	ldr	r2, [sp, #736]	; 0x2e0
c0de1df6:	213a      	movs	r1, #58	; 0x3a
c0de1df8:	3005      	adds	r0, #5
c0de1dfa:	5481      	strb	r1, [r0, r2]
c0de1dfc:	1881      	adds	r1, r0, r2
c0de1dfe:	2220      	movs	r2, #32
c0de1e00:	704a      	strb	r2, [r1, #1]
c0de1e02:	f240 2156 	movw	r1, #598	; 0x256
c0de1e06:	9bb8      	ldr	r3, [sp, #736]	; 0x2e0
c0de1e08:	4418      	add	r0, r3
c0de1e0a:	1aca      	subs	r2, r1, r3
c0de1e0c:	a915      	add	r1, sp, #84	; 0x54
c0de1e0e:	3002      	adds	r0, #2
c0de1e10:	f007 fd7d 	bl	c0de990e <__aeabi_memmove>
c0de1e14:	4a8d      	ldr	r2, [pc, #564]	; (c0de204c <parser_getItem+0xdd0>)
c0de1e16:	abc3      	add	r3, sp, #780	; 0x30c
c0de1e18:	9806      	ldr	r0, [sp, #24]
c0de1e1a:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de1e1c:	447a      	add	r2, pc
c0de1e1e:	f007 fab3 	bl	c0de9388 <snprintf>
c0de1e22:	4628      	mov	r0, r5
c0de1e24:	f007 fdd8 	bl	c0de99d8 <strlen>
c0de1e28:	4604      	mov	r4, r0
c0de1e2a:	e9dd 05ec 	ldrd	r0, r5, [sp, #944]	; 0x3b0
c0de1e2e:	4629      	mov	r1, r5
c0de1e30:	f007 fd74 	bl	c0de991c <explicit_bzero>
c0de1e34:	1e68      	subs	r0, r5, #1
c0de1e36:	9eef      	ldr	r6, [sp, #956]	; 0x3bc
c0de1e38:	f04f 0b00 	mov.w	fp, #0
c0de1e3c:	b282      	uxth	r2, r0
c0de1e3e:	2a00      	cmp	r2, #0
c0de1e40:	f886 b000 	strb.w	fp, [r6]
c0de1e44:	f43f aeb0 	beq.w	c0de1ba8 <parser_getItem+0x92c>
c0de1e48:	0421      	lsls	r1, r4, #16
c0de1e4a:	f000 8113 	beq.w	c0de2074 <parser_getItem+0xdf8>
c0de1e4e:	f000 fb55 	bl	c0de24fc <OUTLINED_FUNCTION_5>
c0de1e52:	bf18      	it	ne
c0de1e54:	2401      	movne	r4, #1
c0de1e56:	4421      	add	r1, r4
c0de1e58:	9cee      	ldr	r4, [sp, #952]	; 0x3b8
c0de1e5a:	7031      	strb	r1, [r6, #0]
c0de1e5c:	b2c9      	uxtb	r1, r1
c0de1e5e:	42a1      	cmp	r1, r4
c0de1e60:	f240 8108 	bls.w	c0de2074 <parser_getItem+0xdf8>
c0de1e64:	0400      	lsls	r0, r0, #16
c0de1e66:	f000 80fd 	beq.w	c0de2064 <parser_getItem+0xde8>
c0de1e6a:	1e48      	subs	r0, r1, #1
c0de1e6c:	99ee      	ldr	r1, [sp, #952]	; 0x3b8
c0de1e6e:	4288      	cmp	r0, r1
c0de1e70:	f040 80f8 	bne.w	c0de2064 <parser_getItem+0xde8>
c0de1e74:	98ee      	ldr	r0, [sp, #952]	; 0x3b8
c0de1e76:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de1e78:	fb00 1002 	mla	r0, r0, r2, r1
c0de1e7c:	461a      	mov	r2, r3
c0de1e7e:	e0f5      	b.n	c0de206c <parser_getItem+0xdf0>
c0de1e80:	2001      	movs	r0, #1
c0de1e82:	7010      	strb	r0, [r2, #0]
c0de1e84:	4a72      	ldr	r2, [pc, #456]	; (c0de2050 <parser_getItem+0xdd4>)
c0de1e86:	99ed      	ldr	r1, [sp, #948]	; 0x3b4
c0de1e88:	4638      	mov	r0, r7
c0de1e8a:	447a      	add	r2, pc
c0de1e8c:	e5c5      	b.n	c0de1a1a <parser_getItem+0x79e>
c0de1e8e:	a8c3      	add	r0, sp, #780	; 0x30c
c0de1e90:	212a      	movs	r1, #42	; 0x2a
c0de1e92:	f007 fd37 	bl	c0de9904 <__aeabi_memclr>
c0de1e96:	99b7      	ldr	r1, [sp, #732]	; 0x2dc
c0de1e98:	2900      	cmp	r1, #0
c0de1e9a:	f43f ae83 	beq.w	c0de1ba4 <parser_getItem+0x928>
c0de1e9e:	f50d 7843 	add.w	r8, sp, #780	; 0x30c
c0de1ea2:	465a      	mov	r2, fp
c0de1ea4:	4640      	mov	r0, r8
c0de1ea6:	f007 fd32 	bl	c0de990e <__aeabi_memmove>
c0de1eaa:	4c6a      	ldr	r4, [pc, #424]	; (c0de2054 <parser_getItem+0xdd8>)
c0de1eac:	4e6a      	ldr	r6, [pc, #424]	; (c0de2058 <parser_getItem+0xddc>)
c0de1eae:	2700      	movs	r7, #0
c0de1eb0:	447c      	add	r4, pc
c0de1eb2:	447e      	add	r6, pc
c0de1eb4:	fa5f f08a 	uxtb.w	r0, sl
c0de1eb8:	b2f9      	uxtb	r1, r7
c0de1eba:	4281      	cmp	r1, r0
c0de1ebc:	d214      	bcs.n	c0de1ee8 <parser_getItem+0xc6c>
c0de1ebe:	4640      	mov	r0, r8
c0de1ec0:	212a      	movs	r1, #42	; 0x2a
c0de1ec2:	4622      	mov	r2, r4
c0de1ec4:	4633      	mov	r3, r6
c0de1ec6:	f003 fca1 	bl	c0de580c <z_str3join>
c0de1eca:	f89d a2ec 	ldrb.w	sl, [sp, #748]	; 0x2ec
c0de1ece:	3701      	adds	r7, #1
c0de1ed0:	e7f0      	b.n	c0de1eb4 <parser_getItem+0xc38>
c0de1ed2:	f89d 031b 	ldrb.w	r0, [sp, #795]	; 0x31b
c0de1ed6:	06c1      	lsls	r1, r0, #27
c0de1ed8:	d443      	bmi.n	c0de1f62 <parser_getItem+0xce6>
c0de1eda:	0780      	lsls	r0, r0, #30
c0de1edc:	f100 8098 	bmi.w	c0de2010 <parser_getItem+0xd94>
c0de1ee0:	f8bd 0318 	ldrh.w	r0, [sp, #792]	; 0x318
c0de1ee4:	90b6      	str	r0, [sp, #728]	; 0x2d8
c0de1ee6:	e098      	b.n	c0de201a <parser_getItem+0xd9e>
c0de1ee8:	4a5c      	ldr	r2, [pc, #368]	; (c0de205c <parser_getItem+0xde0>)
c0de1eea:	abc3      	add	r3, sp, #780	; 0x30c
c0de1eec:	9806      	ldr	r0, [sp, #24]
c0de1eee:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de1ef0:	447a      	add	r2, pc
c0de1ef2:	f007 fa49 	bl	c0de9388 <snprintf>
c0de1ef6:	ac15      	add	r4, sp, #84	; 0x54
c0de1ef8:	f000 fb34 	bl	c0de2564 <OUTLINED_FUNCTION_13>
c0de1efc:	4605      	mov	r5, r0
c0de1efe:	e9dd 06ec 	ldrd	r0, r6, [sp, #944]	; 0x3b0
c0de1f02:	4631      	mov	r1, r6
c0de1f04:	f007 fd0a 	bl	c0de991c <explicit_bzero>
c0de1f08:	98ef      	ldr	r0, [sp, #956]	; 0x3bc
c0de1f0a:	f04f 0b00 	mov.w	fp, #0
c0de1f0e:	f880 b000 	strb.w	fp, [r0]
c0de1f12:	1e70      	subs	r0, r6, #1
c0de1f14:	b282      	uxth	r2, r0
c0de1f16:	2a00      	cmp	r2, #0
c0de1f18:	f43f ae46 	beq.w	c0de1ba8 <parser_getItem+0x92c>
c0de1f1c:	0429      	lsls	r1, r5, #16
c0de1f1e:	f000 80a9 	beq.w	c0de2074 <parser_getItem+0xdf8>
c0de1f22:	b281      	uxth	r1, r0
c0de1f24:	b2ab      	uxth	r3, r5
c0de1f26:	fbb3 f1f1 	udiv	r1, r3, r1
c0de1f2a:	fb01 5010 	mls	r0, r1, r0, r5
c0de1f2e:	b283      	uxth	r3, r0
c0de1f30:	461d      	mov	r5, r3
c0de1f32:	2b00      	cmp	r3, #0
c0de1f34:	bf18      	it	ne
c0de1f36:	2501      	movne	r5, #1
c0de1f38:	4429      	add	r1, r5
c0de1f3a:	9def      	ldr	r5, [sp, #956]	; 0x3bc
c0de1f3c:	7029      	strb	r1, [r5, #0]
c0de1f3e:	9dee      	ldr	r5, [sp, #952]	; 0x3b8
c0de1f40:	b2c9      	uxtb	r1, r1
c0de1f42:	42a9      	cmp	r1, r5
c0de1f44:	f240 8096 	bls.w	c0de2074 <parser_getItem+0xdf8>
c0de1f48:	0400      	lsls	r0, r0, #16
c0de1f4a:	f000 80a0 	beq.w	c0de208e <parser_getItem+0xe12>
c0de1f4e:	1e48      	subs	r0, r1, #1
c0de1f50:	99ee      	ldr	r1, [sp, #952]	; 0x3b8
c0de1f52:	4288      	cmp	r0, r1
c0de1f54:	f040 809b 	bne.w	c0de208e <parser_getItem+0xe12>
c0de1f58:	98ee      	ldr	r0, [sp, #952]	; 0x3b8
c0de1f5a:	fb00 4102 	mla	r1, r0, r2, r4
c0de1f5e:	98ec      	ldr	r0, [sp, #944]	; 0x3b0
c0de1f60:	e73b      	b.n	c0de1dda <parser_getItem+0xb5e>
c0de1f62:	2002      	movs	r0, #2
c0de1f64:	e08b      	b.n	c0de207e <parser_getItem+0xe02>
c0de1f66:	98ee      	ldr	r0, [sp, #952]	; 0x3b8
c0de1f68:	fb00 8102 	mla	r1, r0, r2, r8
c0de1f6c:	4638      	mov	r0, r7
c0de1f6e:	f007 fccc 	bl	c0de990a <__aeabi_memcpy>
c0de1f72:	e07f      	b.n	c0de2074 <parser_getItem+0xdf8>
c0de1f74:	f8df 0504 	ldr.w	r0, [pc, #1284]	; c0de247c <parser_getItem+0x1200>
c0de1f78:	4657      	mov	r7, sl
c0de1f7a:	4625      	mov	r5, r4
c0de1f7c:	4448      	add	r0, r9
c0de1f7e:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
c0de1f82:	7c00      	ldrb	r0, [r0, #16]
c0de1f84:	2801      	cmp	r0, #1
c0de1f86:	d13e      	bne.n	c0de2006 <parser_getItem+0xd8a>
c0de1f88:	f8df 04f0 	ldr.w	r0, [pc, #1264]	; c0de247c <parser_getItem+0x1200>
c0de1f8c:	eb09 0100 	add.w	r1, r9, r0
c0de1f90:	9807      	ldr	r0, [sp, #28]
c0de1f92:	3001      	adds	r0, #1
c0de1f94:	f000 fac5 	bl	c0de2522 <OUTLINED_FUNCTION_7>
c0de1f98:	d135      	bne.n	c0de2006 <parser_getItem+0xd8a>
c0de1f9a:	f8df 14e0 	ldr.w	r1, [pc, #1248]	; c0de247c <parser_getItem+0x1200>
c0de1f9e:	4449      	add	r1, r9
c0de1fa0:	f000 fa8b 	bl	c0de24ba <OUTLINED_FUNCTION_1>
c0de1fa4:	d12f      	bne.n	c0de2006 <parser_getItem+0xd8a>
c0de1fa6:	f8df 04d4 	ldr.w	r0, [pc, #1236]	; c0de247c <parser_getItem+0x1200>
c0de1faa:	4448      	add	r0, r9
c0de1fac:	6840      	ldr	r0, [r0, #4]
c0de1fae:	1842      	adds	r2, r0, r1
c0de1fb0:	2100      	movs	r1, #0
c0de1fb2:	2906      	cmp	r1, #6
c0de1fb4:	d008      	beq.n	c0de1fc8 <parser_getItem+0xd4c>
c0de1fb6:	9c0a      	ldr	r4, [sp, #40]	; 0x28
c0de1fb8:	5c53      	ldrb	r3, [r2, r1]
c0de1fba:	5c64      	ldrb	r4, [r4, r1]
c0de1fbc:	3101      	adds	r1, #1
c0de1fbe:	429c      	cmp	r4, r3
c0de1fc0:	d0f7      	beq.n	c0de1fb2 <parser_getItem+0xd36>
c0de1fc2:	3901      	subs	r1, #1
c0de1fc4:	2906      	cmp	r1, #6
c0de1fc6:	d31e      	bcc.n	c0de2006 <parser_getItem+0xd8a>
c0de1fc8:	f8df 14b0 	ldr.w	r1, [pc, #1200]	; c0de247c <parser_getItem+0x1200>
c0de1fcc:	eb09 0201 	add.w	r2, r9, r1
c0de1fd0:	9907      	ldr	r1, [sp, #28]
c0de1fd2:	3103      	adds	r1, #3
c0de1fd4:	b289      	uxth	r1, r1
c0de1fd6:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
c0de1fda:	7c12      	ldrb	r2, [r2, #16]
c0de1fdc:	2a03      	cmp	r2, #3
c0de1fde:	d112      	bne.n	c0de2006 <parser_getItem+0xd8a>
c0de1fe0:	f8df 2498 	ldr.w	r2, [pc, #1176]	; c0de247c <parser_getItem+0x1200>
c0de1fe4:	444a      	add	r2, r9
c0de1fe6:	f000 fa93 	bl	c0de2510 <OUTLINED_FUNCTION_6>
c0de1fea:	d10c      	bne.n	c0de2006 <parser_getItem+0xd8a>
c0de1fec:	4401      	add	r1, r0
c0de1fee:	2000      	movs	r0, #0
c0de1ff0:	2805      	cmp	r0, #5
c0de1ff2:	d051      	beq.n	c0de2098 <parser_getItem+0xe1c>
c0de1ff4:	9b09      	ldr	r3, [sp, #36]	; 0x24
c0de1ff6:	5c0a      	ldrb	r2, [r1, r0]
c0de1ff8:	5c1b      	ldrb	r3, [r3, r0]
c0de1ffa:	3001      	adds	r0, #1
c0de1ffc:	4293      	cmp	r3, r2
c0de1ffe:	d0f7      	beq.n	c0de1ff0 <parser_getItem+0xd74>
c0de2000:	3801      	subs	r0, #1
c0de2002:	2805      	cmp	r0, #5
c0de2004:	d248      	bcs.n	c0de2098 <parser_getItem+0xe1c>
c0de2006:	f04f 0b0d 	mov.w	fp, #13
c0de200a:	462c      	mov	r4, r5
c0de200c:	46ba      	mov	sl, r7
c0de200e:	e68c      	b.n	c0de1d2a <parser_getItem+0xaae>
c0de2010:	a8c3      	add	r0, sp, #780	; 0x30c
c0de2012:	f003 fc50 	bl	c0de58b6 <_cbor_value_decode_int64_internal>
c0de2016:	90b6      	str	r0, [sp, #728]	; 0x2d8
c0de2018:	bb79      	cbnz	r1, c0de207a <parser_getItem+0xdfe>
c0de201a:	a8c3      	add	r0, sp, #780	; 0x30c
c0de201c:	a90f      	add	r1, sp, #60	; 0x3c
c0de201e:	f003 fdb1 	bl	c0de5b84 <cbor_value_enter_container>
c0de2022:	bb60      	cbnz	r0, c0de207e <parser_getItem+0xe02>
c0de2024:	a80f      	add	r0, sp, #60	; 0x3c
c0de2026:	a9b6      	add	r1, sp, #728	; 0x2d8
c0de2028:	f7fe fbfd 	bl	c0de0826 <cbor_get_containerInfo>
c0de202c:	f000 fa42 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de2030:	e028      	b.n	c0de2084 <parser_getItem+0xe08>
c0de2032:	bf00      	nop
c0de2034:	00008b13 	.word	0x00008b13
c0de2038:	0000948c 	.word	0x0000948c
c0de203c:	00008ac5 	.word	0x00008ac5
c0de2040:	0000943a 	.word	0x0000943a
c0de2044:	00008380 	.word	0x00008380
c0de2048:	00008366 	.word	0x00008366
c0de204c:	000082ba 	.word	0x000082ba
c0de2050:	00008909 	.word	0x00008909
c0de2054:	000088e1 	.word	0x000088e1
c0de2058:	0000925a 	.word	0x0000925a
c0de205c:	000081e6 	.word	0x000081e6
c0de2060:	000038c4 	.word	0x000038c4
c0de2064:	98ee      	ldr	r0, [sp, #952]	; 0x3b8
c0de2066:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de2068:	fb00 1002 	mla	r0, r0, r2, r1
c0de206c:	1d41      	adds	r1, r0, #5
c0de206e:	98ec      	ldr	r0, [sp, #944]	; 0x3b0
c0de2070:	f007 fc4d 	bl	c0de990e <__aeabi_memmove>
c0de2074:	f04f 0b00 	mov.w	fp, #0
c0de2078:	e596      	b.n	c0de1ba8 <parser_getItem+0x92c>
c0de207a:	f44f 6080 	mov.w	r0, #1024	; 0x400
c0de207e:	f7fe fbc2 	bl	c0de0806 <parser_mapCborError>
c0de2082:	4683      	mov	fp, r0
c0de2084:	9fec      	ldr	r7, [sp, #944]	; 0x3b0
c0de2086:	46a2      	mov	sl, r4
c0de2088:	462c      	mov	r4, r5
c0de208a:	f7ff b937 	b.w	c0de12fc <parser_getItem+0x80>
c0de208e:	98ee      	ldr	r0, [sp, #952]	; 0x3b8
c0de2090:	fb00 4102 	mla	r1, r0, r2, r4
c0de2094:	98ec      	ldr	r0, [sp, #944]	; 0x3b0
c0de2096:	e76a      	b.n	c0de1f6e <parser_getItem+0xcf2>
c0de2098:	a8c3      	add	r0, sp, #780	; 0x30c
c0de209a:	9c08      	ldr	r4, [sp, #32]
c0de209c:	2181      	movs	r1, #129	; 0x81
c0de209e:	47a0      	blx	r4
c0de20a0:	a8b6      	add	r0, sp, #728	; 0x2d8
c0de20a2:	2132      	movs	r1, #50	; 0x32
c0de20a4:	47a0      	blx	r4
c0de20a6:	e9dd 01ec 	ldrd	r0, r1, [sp, #944]	; 0x3b0
c0de20aa:	47a0      	blx	r4
c0de20ac:	a815      	add	r0, sp, #84	; 0x54
c0de20ae:	21a0      	movs	r1, #160	; 0xa0
c0de20b0:	47a0      	blx	r4
c0de20b2:	f8df 03c8 	ldr.w	r0, [pc, #968]	; c0de247c <parser_getItem+0x1200>
c0de20b6:	1cb2      	adds	r2, r6, #2
c0de20b8:	f000 fa0f 	bl	c0de24da <OUTLINED_FUNCTION_3>
c0de20bc:	f100 8081 	bmi.w	c0de21c2 <parser_getItem+0xf46>
c0de20c0:	f8df 13b8 	ldr.w	r1, [pc, #952]	; c0de247c <parser_getItem+0x1200>
c0de20c4:	3604      	adds	r6, #4
c0de20c6:	f000 fa01 	bl	c0de24cc <OUTLINED_FUNCTION_2>
c0de20ca:	d47a      	bmi.n	c0de21c2 <parser_getItem+0xf46>
c0de20cc:	f8df 33ac 	ldr.w	r3, [pc, #940]	; c0de247c <parser_getItem+0x1200>
c0de20d0:	f000 fa0a 	bl	c0de24e8 <OUTLINED_FUNCTION_4>
c0de20d4:	f6ff ad4d 	blt.w	c0de1b72 <parser_getItem+0x8f6>
c0de20d8:	2e80      	cmp	r6, #128	; 0x80
c0de20da:	f73f ad4a 	bgt.w	c0de1b72 <parser_getItem+0x8f6>
c0de20de:	f000 fa3c 	bl	c0de255a <OUTLINED_FUNCTION_12>
c0de20e2:	eba2 0a00 	sub.w	sl, r2, r0
c0de20e6:	f1ba 0f01 	cmp.w	sl, #1
c0de20ea:	f6ff ad42 	blt.w	c0de1b72 <parser_getItem+0x8f6>
c0de20ee:	f1ba 0f31 	cmp.w	sl, #49	; 0x31
c0de20f2:	f73f ad3e 	bgt.w	c0de1b72 <parser_getItem+0x8f6>
c0de20f6:	eb06 020a 	add.w	r2, r6, sl
c0de20fa:	2a9e      	cmp	r2, #158	; 0x9e
c0de20fc:	d861      	bhi.n	c0de21c2 <parser_getItem+0xf46>
c0de20fe:	685a      	ldr	r2, [r3, #4]
c0de2100:	1854      	adds	r4, r2, r1
c0de2102:	eb02 0b00 	add.w	fp, r2, r0
c0de2106:	a8c3      	add	r0, sp, #780	; 0x30c
c0de2108:	4632      	mov	r2, r6
c0de210a:	4621      	mov	r1, r4
c0de210c:	f007 fbff 	bl	c0de990e <__aeabi_memmove>
c0de2110:	a8b6      	add	r0, sp, #728	; 0x2d8
c0de2112:	4659      	mov	r1, fp
c0de2114:	4652      	mov	r2, sl
c0de2116:	f007 fbfa 	bl	c0de990e <__aeabi_memmove>
c0de211a:	a815      	add	r0, sp, #84	; 0x54
c0de211c:	4adf      	ldr	r2, [pc, #892]	; (c0de249c <parser_getItem+0x1220>)
c0de211e:	21a0      	movs	r1, #160	; 0xa0
c0de2120:	abb6      	add	r3, sp, #728	; 0x2d8
c0de2122:	447a      	add	r2, pc
c0de2124:	f007 f930 	bl	c0de9388 <snprintf>
c0de2128:	f04f 0a00 	mov.w	sl, #0
c0de212c:	f20d 20d6 	addw	r0, sp, #726	; 0x2d6
c0de2130:	f88d a2d6 	strb.w	sl, [sp, #726]	; 0x2d6
c0de2134:	f000 feb8 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de2138:	f000 f9bc 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de213c:	b2f0      	uxtb	r0, r6
c0de213e:	2804      	cmp	r0, #4
c0de2140:	d10f      	bne.n	c0de2162 <parser_getItem+0xee6>
c0de2142:	f89d 02d6 	ldrb.w	r0, [sp, #726]	; 0x2d6
c0de2146:	f000 fa27 	bl	c0de2598 <OUTLINED_FUNCTION_19>
c0de214a:	d10a      	bne.n	c0de2162 <parser_getItem+0xee6>
c0de214c:	7820      	ldrb	r0, [r4, #0]
c0de214e:	7861      	ldrb	r1, [r4, #1]
c0de2150:	78a2      	ldrb	r2, [r4, #2]
c0de2152:	78e3      	ldrb	r3, [r4, #3]
c0de2154:	f000 fa1b 	bl	c0de258e <OUTLINED_FUNCTION_18>
c0de2158:	49c9      	ldr	r1, [pc, #804]	; (c0de2480 <parser_getItem+0x1204>)
c0de215a:	f000 f9ee 	bl	c0de253a <OUTLINED_FUNCTION_9>
c0de215e:	ea4f 1a50 	mov.w	sl, r0, lsr #5
c0de2162:	f003 fb95 	bl	c0de5890 <check_app_canary>
c0de2166:	f1bb 0f00 	cmp.w	fp, #0
c0de216a:	f47f af4e 	bne.w	c0de200a <parser_getItem+0xd8e>
c0de216e:	f1ba 0f00 	cmp.w	sl, #0
c0de2172:	f000 814f 	beq.w	c0de2414 <parser_getItem+0x1198>
c0de2176:	ac15      	add	r4, sp, #84	; 0x54
c0de2178:	21a0      	movs	r1, #160	; 0xa0
c0de217a:	4620      	mov	r0, r4
c0de217c:	f007 fbce 	bl	c0de991c <explicit_bzero>
c0de2180:	f50d 7a36 	add.w	sl, sp, #728	; 0x2d8
c0de2184:	4650      	mov	r0, sl
c0de2186:	f007 fc27 	bl	c0de99d8 <strlen>
c0de218a:	4606      	mov	r6, r0
c0de218c:	3002      	adds	r0, #2
c0de218e:	28a0      	cmp	r0, #160	; 0xa0
c0de2190:	f63f acef 	bhi.w	c0de1b72 <parser_getItem+0x8f6>
c0de2194:	2e09      	cmp	r6, #9
c0de2196:	f200 80f9 	bhi.w	c0de238c <parser_getItem+0x1110>
c0de219a:	2000      	movs	r0, #0
c0de219c:	9c04      	ldr	r4, [sp, #16]
c0de219e:	f1c6 0a09 	rsb	sl, r6, #9
c0de21a2:	f000 f9c4 	bl	c0de252e <OUTLINED_FUNCTION_8>
c0de21a6:	4651      	mov	r1, sl
c0de21a8:	f000 f9e4 	bl	c0de2574 <OUTLINED_FUNCTION_15>
c0de21ac:	4abc      	ldr	r2, [pc, #752]	; (c0de24a0 <parser_getItem+0x1224>)
c0de21ae:	eb04 000a 	add.w	r0, r4, sl
c0de21b2:	f106 0195 	add.w	r1, r6, #149	; 0x95
c0de21b6:	abb6      	add	r3, sp, #728	; 0x2d8
c0de21b8:	447a      	add	r2, pc
c0de21ba:	e0fa      	b.n	c0de23b2 <parser_getItem+0x1136>
c0de21bc:	1932      	adds	r2, r6, r4
c0de21be:	2a9e      	cmp	r2, #158	; 0x9e
c0de21c0:	d902      	bls.n	c0de21c8 <parser_getItem+0xf4c>
c0de21c2:	f04f 0b08 	mov.w	fp, #8
c0de21c6:	e720      	b.n	c0de200a <parser_getItem+0xd8e>
c0de21c8:	685a      	ldr	r2, [r3, #4]
c0de21ca:	eb02 0a01 	add.w	sl, r2, r1
c0de21ce:	eb02 0b00 	add.w	fp, r2, r0
c0de21d2:	a8c3      	add	r0, sp, #780	; 0x30c
c0de21d4:	4632      	mov	r2, r6
c0de21d6:	4651      	mov	r1, sl
c0de21d8:	f007 fb99 	bl	c0de990e <__aeabi_memmove>
c0de21dc:	a8b6      	add	r0, sp, #728	; 0x2d8
c0de21de:	4659      	mov	r1, fp
c0de21e0:	4622      	mov	r2, r4
c0de21e2:	f007 fb94 	bl	c0de990e <__aeabi_memmove>
c0de21e6:	a815      	add	r0, sp, #84	; 0x54
c0de21e8:	4aa6      	ldr	r2, [pc, #664]	; (c0de2484 <parser_getItem+0x1208>)
c0de21ea:	21a0      	movs	r1, #160	; 0xa0
c0de21ec:	abb6      	add	r3, sp, #728	; 0x2d8
c0de21ee:	447a      	add	r2, pc
c0de21f0:	f007 f8ca 	bl	c0de9388 <snprintf>
c0de21f4:	2400      	movs	r4, #0
c0de21f6:	f88d 404c 	strb.w	r4, [sp, #76]	; 0x4c
c0de21fa:	a813      	add	r0, sp, #76	; 0x4c
c0de21fc:	f000 fe54 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de2200:	f000 f958 	bl	c0de24b4 <OUTLINED_FUNCTION_0>
c0de2204:	b2f0      	uxtb	r0, r6
c0de2206:	2804      	cmp	r0, #4
c0de2208:	d112      	bne.n	c0de2230 <parser_getItem+0xfb4>
c0de220a:	f89d 004c 	ldrb.w	r0, [sp, #76]	; 0x4c
c0de220e:	f000 f9c3 	bl	c0de2598 <OUTLINED_FUNCTION_19>
c0de2212:	d10d      	bne.n	c0de2230 <parser_getItem+0xfb4>
c0de2214:	f89a 0000 	ldrb.w	r0, [sl]
c0de2218:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de221c:	f89a 2002 	ldrb.w	r2, [sl, #2]
c0de2220:	f89a 3003 	ldrb.w	r3, [sl, #3]
c0de2224:	f000 f9b3 	bl	c0de258e <OUTLINED_FUNCTION_18>
c0de2228:	4995      	ldr	r1, [pc, #596]	; (c0de2480 <parser_getItem+0x1204>)
c0de222a:	f000 f986 	bl	c0de253a <OUTLINED_FUNCTION_9>
c0de222e:	0944      	lsrs	r4, r0, #5
c0de2230:	f003 fb2e 	bl	c0de5890 <check_app_canary>
c0de2234:	f1bb 0f00 	cmp.w	fp, #0
c0de2238:	f47f aee7 	bne.w	c0de200a <parser_getItem+0xd8e>
c0de223c:	2c00      	cmp	r4, #0
c0de223e:	d068      	beq.n	c0de2312 <parser_getItem+0x1096>
c0de2240:	f10d 0a54 	add.w	sl, sp, #84	; 0x54
c0de2244:	21a0      	movs	r1, #160	; 0xa0
c0de2246:	4650      	mov	r0, sl
c0de2248:	f007 fb68 	bl	c0de991c <explicit_bzero>
c0de224c:	acb6      	add	r4, sp, #728	; 0x2d8
c0de224e:	f000 f989 	bl	c0de2564 <OUTLINED_FUNCTION_13>
c0de2252:	4606      	mov	r6, r0
c0de2254:	3002      	adds	r0, #2
c0de2256:	28a0      	cmp	r0, #160	; 0xa0
c0de2258:	f63f ac8b 	bhi.w	c0de1b72 <parser_getItem+0x8f6>
c0de225c:	2e09      	cmp	r6, #9
c0de225e:	d814      	bhi.n	c0de228a <parser_getItem+0x100e>
c0de2260:	2000      	movs	r0, #0
c0de2262:	f1c6 0409 	rsb	r4, r6, #9
c0de2266:	f10a 0a02 	add.w	sl, sl, #2
c0de226a:	f000 f960 	bl	c0de252e <OUTLINED_FUNCTION_8>
c0de226e:	4621      	mov	r1, r4
c0de2270:	f8ad 0054 	strh.w	r0, [sp, #84]	; 0x54
c0de2274:	4650      	mov	r0, sl
c0de2276:	f007 fb4c 	bl	c0de9912 <__aeabi_memset>
c0de227a:	4a83      	ldr	r2, [pc, #524]	; (c0de2488 <parser_getItem+0x120c>)
c0de227c:	eb0a 0004 	add.w	r0, sl, r4
c0de2280:	f106 0195 	add.w	r1, r6, #149	; 0x95
c0de2284:	abb6      	add	r3, sp, #728	; 0x2d8
c0de2286:	447a      	add	r2, pc
c0de2288:	e012      	b.n	c0de22b0 <parser_getItem+0x1034>
c0de228a:	4a80      	ldr	r2, [pc, #512]	; (c0de248c <parser_getItem+0x1210>)
c0de228c:	4650      	mov	r0, sl
c0de228e:	21a0      	movs	r1, #160	; 0xa0
c0de2290:	4623      	mov	r3, r4
c0de2292:	447a      	add	r2, pc
c0de2294:	4693      	mov	fp, r2
c0de2296:	f007 f877 	bl	c0de9388 <snprintf>
c0de229a:	f1a6 0109 	sub.w	r1, r6, #9
c0de229e:	222e      	movs	r2, #46	; 0x2e
c0de22a0:	eb0a 0001 	add.w	r0, sl, r1
c0de22a4:	1863      	adds	r3, r4, r1
c0de22a6:	f1c6 01a8 	rsb	r1, r6, #168	; 0xa8
c0de22aa:	f800 2b01 	strb.w	r2, [r0], #1
c0de22ae:	465a      	mov	r2, fp
c0de22b0:	f007 f86a 	bl	c0de9388 <snprintf>
c0de22b4:	ae15      	add	r6, sp, #84	; 0x54
c0de22b6:	4630      	mov	r0, r6
c0de22b8:	f007 fb8e 	bl	c0de99d8 <strlen>
c0de22bc:	2802      	cmp	r0, #2
c0de22be:	d320      	bcc.n	c0de2302 <parser_getItem+0x1086>
c0de22c0:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
c0de22c4:	d81d      	bhi.n	c0de2302 <parser_getItem+0x1086>
c0de22c6:	2200      	movs	r2, #0
c0de22c8:	f64f 71ff 	movw	r1, #65535	; 0xffff
c0de22cc:	b20b      	sxth	r3, r1
c0de22ce:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
c0de22d2:	dc08      	bgt.n	c0de22e6 <parser_getItem+0x106a>
c0de22d4:	b214      	sxth	r4, r2
c0de22d6:	42a0      	cmp	r0, r4
c0de22d8:	dd05      	ble.n	c0de22e6 <parser_getItem+0x106a>
c0de22da:	5d33      	ldrb	r3, [r6, r4]
c0de22dc:	2b2e      	cmp	r3, #46	; 0x2e
c0de22de:	bf08      	it	eq
c0de22e0:	4611      	moveq	r1, r2
c0de22e2:	3201      	adds	r2, #1
c0de22e4:	e7f2      	b.n	c0de22cc <parser_getItem+0x1050>
c0de22e6:	2b00      	cmp	r3, #0
c0de22e8:	d40b      	bmi.n	c0de2302 <parser_getItem+0x1086>
c0de22ea:	b289      	uxth	r1, r1
c0de22ec:	3801      	subs	r0, #1
c0de22ee:	2200      	movs	r2, #0
c0de22f0:	3106      	adds	r1, #6
c0de22f2:	4288      	cmp	r0, r1
c0de22f4:	d905      	bls.n	c0de2302 <parser_getItem+0x1086>
c0de22f6:	5c33      	ldrb	r3, [r6, r0]
c0de22f8:	2b30      	cmp	r3, #48	; 0x30
c0de22fa:	d102      	bne.n	c0de2302 <parser_getItem+0x1086>
c0de22fc:	5432      	strb	r2, [r6, r0]
c0de22fe:	3801      	subs	r0, #1
c0de2300:	e7f7      	b.n	c0de22f2 <parser_getItem+0x1076>
c0de2302:	a8c3      	add	r0, sp, #780	; 0x30c
c0de2304:	4a62      	ldr	r2, [pc, #392]	; (c0de2490 <parser_getItem+0x1214>)
c0de2306:	4b63      	ldr	r3, [pc, #396]	; (c0de2494 <parser_getItem+0x1218>)
c0de2308:	2181      	movs	r1, #129	; 0x81
c0de230a:	447a      	add	r2, pc
c0de230c:	447b      	add	r3, pc
c0de230e:	f007 f83b 	bl	c0de9388 <snprintf>
c0de2312:	ae15      	add	r6, sp, #84	; 0x54
c0de2314:	4a60      	ldr	r2, [pc, #384]	; (c0de2498 <parser_getItem+0x121c>)
c0de2316:	abc3      	add	r3, sp, #780	; 0x30c
c0de2318:	21a0      	movs	r1, #160	; 0xa0
c0de231a:	4630      	mov	r0, r6
c0de231c:	447a      	add	r2, pc
c0de231e:	f003 fa75 	bl	c0de580c <z_str3join>
c0de2322:	4630      	mov	r0, r6
c0de2324:	f007 fb58 	bl	c0de99d8 <strlen>
c0de2328:	4604      	mov	r4, r0
c0de232a:	98ec      	ldr	r0, [sp, #944]	; 0x3b0
c0de232c:	4641      	mov	r1, r8
c0de232e:	f007 faf5 	bl	c0de991c <explicit_bzero>
c0de2332:	98ef      	ldr	r0, [sp, #956]	; 0x3bc
c0de2334:	f04f 0b00 	mov.w	fp, #0
c0de2338:	f880 b000 	strb.w	fp, [r0]
c0de233c:	f1a8 0001 	sub.w	r0, r8, #1
c0de2340:	b282      	uxth	r2, r0
c0de2342:	2a00      	cmp	r2, #0
c0de2344:	f43f ae61 	beq.w	c0de200a <parser_getItem+0xd8e>
c0de2348:	0421      	lsls	r1, r4, #16
c0de234a:	d01c      	beq.n	c0de2386 <parser_getItem+0x110a>
c0de234c:	f000 f8d6 	bl	c0de24fc <OUTLINED_FUNCTION_5>
c0de2350:	bf18      	it	ne
c0de2352:	2401      	movne	r4, #1
c0de2354:	4421      	add	r1, r4
c0de2356:	9cef      	ldr	r4, [sp, #956]	; 0x3bc
c0de2358:	7021      	strb	r1, [r4, #0]
c0de235a:	9cee      	ldr	r4, [sp, #952]	; 0x3b8
c0de235c:	b2c9      	uxtb	r1, r1
c0de235e:	42a1      	cmp	r1, r4
c0de2360:	d911      	bls.n	c0de2386 <parser_getItem+0x110a>
c0de2362:	0400      	lsls	r0, r0, #16
c0de2364:	d009      	beq.n	c0de237a <parser_getItem+0x10fe>
c0de2366:	1e48      	subs	r0, r1, #1
c0de2368:	99ee      	ldr	r1, [sp, #952]	; 0x3b8
c0de236a:	4288      	cmp	r0, r1
c0de236c:	d105      	bne.n	c0de237a <parser_getItem+0x10fe>
c0de236e:	98ee      	ldr	r0, [sp, #952]	; 0x3b8
c0de2370:	fb00 6102 	mla	r1, r0, r2, r6
c0de2374:	98ec      	ldr	r0, [sp, #944]	; 0x3b0
c0de2376:	461a      	mov	r2, r3
c0de2378:	e003      	b.n	c0de2382 <parser_getItem+0x1106>
c0de237a:	98ee      	ldr	r0, [sp, #952]	; 0x3b8
c0de237c:	fb00 6102 	mla	r1, r0, r2, r6
c0de2380:	98ec      	ldr	r0, [sp, #944]	; 0x3b0
c0de2382:	f007 fac2 	bl	c0de990a <__aeabi_memcpy>
c0de2386:	f04f 0b00 	mov.w	fp, #0
c0de238a:	e63e      	b.n	c0de200a <parser_getItem+0xd8e>
c0de238c:	4a45      	ldr	r2, [pc, #276]	; (c0de24a4 <parser_getItem+0x1228>)
c0de238e:	4620      	mov	r0, r4
c0de2390:	21a0      	movs	r1, #160	; 0xa0
c0de2392:	4653      	mov	r3, sl
c0de2394:	447a      	add	r2, pc
c0de2396:	4693      	mov	fp, r2
c0de2398:	f006 fff6 	bl	c0de9388 <snprintf>
c0de239c:	f1a6 0109 	sub.w	r1, r6, #9
c0de23a0:	222e      	movs	r2, #46	; 0x2e
c0de23a2:	1860      	adds	r0, r4, r1
c0de23a4:	eb0a 0301 	add.w	r3, sl, r1
c0de23a8:	f1c6 01a8 	rsb	r1, r6, #168	; 0xa8
c0de23ac:	f800 2b01 	strb.w	r2, [r0], #1
c0de23b0:	465a      	mov	r2, fp
c0de23b2:	f006 ffe9 	bl	c0de9388 <snprintf>
c0de23b6:	ae15      	add	r6, sp, #84	; 0x54
c0de23b8:	4630      	mov	r0, r6
c0de23ba:	f007 fb0d 	bl	c0de99d8 <strlen>
c0de23be:	2802      	cmp	r0, #2
c0de23c0:	d320      	bcc.n	c0de2404 <parser_getItem+0x1188>
c0de23c2:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
c0de23c6:	d81d      	bhi.n	c0de2404 <parser_getItem+0x1188>
c0de23c8:	2200      	movs	r2, #0
c0de23ca:	f64f 71ff 	movw	r1, #65535	; 0xffff
c0de23ce:	b20b      	sxth	r3, r1
c0de23d0:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
c0de23d4:	dc08      	bgt.n	c0de23e8 <parser_getItem+0x116c>
c0de23d6:	b214      	sxth	r4, r2
c0de23d8:	42a0      	cmp	r0, r4
c0de23da:	dd05      	ble.n	c0de23e8 <parser_getItem+0x116c>
c0de23dc:	5d33      	ldrb	r3, [r6, r4]
c0de23de:	2b2e      	cmp	r3, #46	; 0x2e
c0de23e0:	bf08      	it	eq
c0de23e2:	4611      	moveq	r1, r2
c0de23e4:	3201      	adds	r2, #1
c0de23e6:	e7f2      	b.n	c0de23ce <parser_getItem+0x1152>
c0de23e8:	2b00      	cmp	r3, #0
c0de23ea:	d40b      	bmi.n	c0de2404 <parser_getItem+0x1188>
c0de23ec:	b289      	uxth	r1, r1
c0de23ee:	3801      	subs	r0, #1
c0de23f0:	2200      	movs	r2, #0
c0de23f2:	3106      	adds	r1, #6
c0de23f4:	4288      	cmp	r0, r1
c0de23f6:	d905      	bls.n	c0de2404 <parser_getItem+0x1188>
c0de23f8:	5c33      	ldrb	r3, [r6, r0]
c0de23fa:	2b30      	cmp	r3, #48	; 0x30
c0de23fc:	d102      	bne.n	c0de2404 <parser_getItem+0x1188>
c0de23fe:	5432      	strb	r2, [r6, r0]
c0de2400:	3801      	subs	r0, #1
c0de2402:	e7f7      	b.n	c0de23f4 <parser_getItem+0x1178>
c0de2404:	a8c3      	add	r0, sp, #780	; 0x30c
c0de2406:	4a28      	ldr	r2, [pc, #160]	; (c0de24a8 <parser_getItem+0x122c>)
c0de2408:	4b28      	ldr	r3, [pc, #160]	; (c0de24ac <parser_getItem+0x1230>)
c0de240a:	2181      	movs	r1, #129	; 0x81
c0de240c:	447a      	add	r2, pc
c0de240e:	447b      	add	r3, pc
c0de2410:	f006 ffba 	bl	c0de9388 <snprintf>
c0de2414:	ac15      	add	r4, sp, #84	; 0x54
c0de2416:	4a26      	ldr	r2, [pc, #152]	; (c0de24b0 <parser_getItem+0x1234>)
c0de2418:	abc3      	add	r3, sp, #780	; 0x30c
c0de241a:	21a0      	movs	r1, #160	; 0xa0
c0de241c:	4620      	mov	r0, r4
c0de241e:	447a      	add	r2, pc
c0de2420:	f003 f9f4 	bl	c0de580c <z_str3join>
c0de2424:	f000 f89e 	bl	c0de2564 <OUTLINED_FUNCTION_13>
c0de2428:	4606      	mov	r6, r0
c0de242a:	e9dd 01ec 	ldrd	r0, r1, [sp, #944]	; 0x3b0
c0de242e:	f007 fa75 	bl	c0de991c <explicit_bzero>
c0de2432:	9805      	ldr	r0, [sp, #20]
c0de2434:	0400      	lsls	r0, r0, #16
c0de2436:	d0a6      	beq.n	c0de2386 <parser_getItem+0x110a>
c0de2438:	0430      	lsls	r0, r6, #16
c0de243a:	d0a4      	beq.n	c0de2386 <parser_getItem+0x110a>
c0de243c:	9a05      	ldr	r2, [sp, #20]
c0de243e:	b2b1      	uxth	r1, r6
c0de2440:	b290      	uxth	r0, r2
c0de2442:	fbb1 f0f0 	udiv	r0, r1, r0
c0de2446:	fb00 6112 	mls	r1, r0, r2, r6
c0de244a:	b28a      	uxth	r2, r1
c0de244c:	4613      	mov	r3, r2
c0de244e:	2a00      	cmp	r2, #0
c0de2450:	bf18      	it	ne
c0de2452:	2301      	movne	r3, #1
c0de2454:	4418      	add	r0, r3
c0de2456:	b2c3      	uxtb	r3, r0
c0de2458:	fa5f f088 	uxtb.w	r0, r8
c0de245c:	4283      	cmp	r3, r0
c0de245e:	d992      	bls.n	c0de2386 <parser_getItem+0x110a>
c0de2460:	0409      	lsls	r1, r1, #16
c0de2462:	d006      	beq.n	c0de2472 <parser_getItem+0x11f6>
c0de2464:	1e59      	subs	r1, r3, #1
c0de2466:	4281      	cmp	r1, r0
c0de2468:	d103      	bne.n	c0de2472 <parser_getItem+0x11f6>
c0de246a:	9903      	ldr	r1, [sp, #12]
c0de246c:	fb00 4101 	mla	r1, r0, r1, r4
c0de2470:	e786      	b.n	c0de2380 <parser_getItem+0x1104>
c0de2472:	9a03      	ldr	r2, [sp, #12]
c0de2474:	fb00 4102 	mla	r1, r0, r2, r4
c0de2478:	e782      	b.n	c0de2380 <parser_getItem+0x1104>
c0de247a:	bf00      	nop
c0de247c:	000038c4 	.word	0x000038c4
c0de2480:	8d978c92 	.word	0x8d978c92
c0de2484:	000092f1 	.word	0x000092f1
c0de2488:	00007e50 	.word	0x00007e50
c0de248c:	00007e44 	.word	0x00007e44
c0de2490:	00007d04 	.word	0x00007d04
c0de2494:	00007d06 	.word	0x00007d06
c0de2498:	00008df0 	.word	0x00008df0
c0de249c:	000093bd 	.word	0x000093bd
c0de24a0:	00007f1e 	.word	0x00007f1e
c0de24a4:	00007d42 	.word	0x00007d42
c0de24a8:	00007c02 	.word	0x00007c02
c0de24ac:	00007c04 	.word	0x00007c04
c0de24b0:	00008cee 	.word	0x00008cee

c0de24b4 <OUTLINED_FUNCTION_0>:
c0de24b4:	4683      	mov	fp, r0
c0de24b6:	f003 b9eb 	b.w	c0de5890 <check_app_canary>

c0de24ba <OUTLINED_FUNCTION_1>:
c0de24ba:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de24be:	f9b0 1012 	ldrsh.w	r1, [r0, #18]
c0de24c2:	f9b0 0014 	ldrsh.w	r0, [r0, #20]
c0de24c6:	1a40      	subs	r0, r0, r1
c0de24c8:	2806      	cmp	r0, #6
c0de24ca:	4770      	bx	lr

c0de24cc <OUTLINED_FUNCTION_2>:
c0de24cc:	4449      	add	r1, r9
c0de24ce:	eb01 01c6 	add.w	r1, r1, r6, lsl #3
c0de24d2:	f9b1 1012 	ldrsh.w	r1, [r1, #18]
c0de24d6:	2900      	cmp	r1, #0
c0de24d8:	4770      	bx	lr

c0de24da <OUTLINED_FUNCTION_3>:
c0de24da:	4448      	add	r0, r9
c0de24dc:	eb00 00c2 	add.w	r0, r0, r2, lsl #3
c0de24e0:	f9b0 0012 	ldrsh.w	r0, [r0, #18]
c0de24e4:	2800      	cmp	r0, #0
c0de24e6:	4770      	bx	lr

c0de24e8 <OUTLINED_FUNCTION_4>:
c0de24e8:	444b      	add	r3, r9
c0de24ea:	f103 0410 	add.w	r4, r3, #16
c0de24ee:	eb04 06c6 	add.w	r6, r4, r6, lsl #3
c0de24f2:	f9b6 6004 	ldrsh.w	r6, [r6, #4]
c0de24f6:	1a76      	subs	r6, r6, r1
c0de24f8:	2e01      	cmp	r6, #1
c0de24fa:	4770      	bx	lr

c0de24fc <OUTLINED_FUNCTION_5>:
c0de24fc:	b281      	uxth	r1, r0
c0de24fe:	b2a3      	uxth	r3, r4
c0de2500:	fbb3 f1f1 	udiv	r1, r3, r1
c0de2504:	fb01 4010 	mls	r0, r1, r0, r4
c0de2508:	b283      	uxth	r3, r0
c0de250a:	461c      	mov	r4, r3
c0de250c:	2b00      	cmp	r3, #0
c0de250e:	4770      	bx	lr

c0de2510 <OUTLINED_FUNCTION_6>:
c0de2510:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
c0de2514:	f9b2 1012 	ldrsh.w	r1, [r2, #18]
c0de2518:	f9b2 2014 	ldrsh.w	r2, [r2, #20]
c0de251c:	1a52      	subs	r2, r2, r1
c0de251e:	2a05      	cmp	r2, #5
c0de2520:	4770      	bx	lr

c0de2522 <OUTLINED_FUNCTION_7>:
c0de2522:	b280      	uxth	r0, r0
c0de2524:	eb01 01c0 	add.w	r1, r1, r0, lsl #3
c0de2528:	7c09      	ldrb	r1, [r1, #16]
c0de252a:	2903      	cmp	r1, #3
c0de252c:	4770      	bx	lr

c0de252e <OUTLINED_FUNCTION_8>:
c0de252e:	2230      	movs	r2, #48	; 0x30
c0de2530:	f88d 0056 	strb.w	r0, [sp, #86]	; 0x56
c0de2534:	f642 6030 	movw	r0, #11824	; 0x2e30
c0de2538:	4770      	bx	lr

c0de253a <OUTLINED_FUNCTION_9>:
c0de253a:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de253e:	4408      	add	r0, r1
c0de2540:	fab0 f080 	clz	r0, r0
c0de2544:	4770      	bx	lr

c0de2546 <OUTLINED_FUNCTION_10>:
c0de2546:	68b0      	ldr	r0, [r6, #8]
c0de2548:	f240 2171 	movw	r1, #625	; 0x271
c0de254c:	3009      	adds	r0, #9
c0de254e:	f007 b9e5 	b.w	c0de991c <explicit_bzero>

c0de2552 <OUTLINED_FUNCTION_11>:
c0de2552:	4638      	mov	r0, r7
c0de2554:	4629      	mov	r1, r5
c0de2556:	f007 b9e1 	b.w	c0de991c <explicit_bzero>

c0de255a <OUTLINED_FUNCTION_12>:
c0de255a:	eb04 02c2 	add.w	r2, r4, r2, lsl #3
c0de255e:	f9b2 2004 	ldrsh.w	r2, [r2, #4]
c0de2562:	4770      	bx	lr

c0de2564 <OUTLINED_FUNCTION_13>:
c0de2564:	4620      	mov	r0, r4
c0de2566:	f007 ba37 	b.w	c0de99d8 <strlen>

c0de256a <OUTLINED_FUNCTION_14>:
c0de256a:	4410      	add	r0, r2
c0de256c:	1a89      	subs	r1, r1, r2
c0de256e:	2200      	movs	r2, #0
c0de2570:	f003 b9c5 	b.w	c0de58fe <cbor_parser_init>

c0de2574 <OUTLINED_FUNCTION_15>:
c0de2574:	f8ad 0054 	strh.w	r0, [sp, #84]	; 0x54
c0de2578:	4620      	mov	r0, r4
c0de257a:	f007 b9ca 	b.w	c0de9912 <__aeabi_memset>

c0de257e <OUTLINED_FUNCTION_16>:
c0de257e:	4605      	mov	r5, r0
c0de2580:	f003 b986 	b.w	c0de5890 <check_app_canary>

c0de2584 <OUTLINED_FUNCTION_17>:
c0de2584:	f44f 7116 	mov.w	r1, #600	; 0x258
c0de2588:	462a      	mov	r2, r5
c0de258a:	f000 bfd9 	b.w	c0de3540 <tx_display_translation>

c0de258e <OUTLINED_FUNCTION_18>:
c0de258e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2592:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de2596:	4770      	bx	lr

c0de2598 <OUTLINED_FUNCTION_19>:
c0de2598:	ea40 000b 	orr.w	r0, r0, fp
c0de259c:	b2c0      	uxtb	r0, r0
c0de259e:	2800      	cmp	r0, #0
c0de25a0:	4770      	bx	lr
	...

c0de25a4 <parser_getErrorDescription>:
c0de25a4:	2800      	cmp	r0, #0
c0de25a6:	d044      	beq.n	c0de2632 <parser_getErrorDescription+0x8e>
c0de25a8:	2826      	cmp	r0, #38	; 0x26
c0de25aa:	d045      	beq.n	c0de2638 <parser_getErrorDescription+0x94>
c0de25ac:	2802      	cmp	r0, #2
c0de25ae:	d046      	beq.n	c0de263e <parser_getErrorDescription+0x9a>
c0de25b0:	2803      	cmp	r0, #3
c0de25b2:	d047      	beq.n	c0de2644 <parser_getErrorDescription+0xa0>
c0de25b4:	2804      	cmp	r0, #4
c0de25b6:	d048      	beq.n	c0de264a <parser_getErrorDescription+0xa6>
c0de25b8:	2806      	cmp	r0, #6
c0de25ba:	d049      	beq.n	c0de2650 <parser_getErrorDescription+0xac>
c0de25bc:	2808      	cmp	r0, #8
c0de25be:	d04a      	beq.n	c0de2656 <parser_getErrorDescription+0xb2>
c0de25c0:	280b      	cmp	r0, #11
c0de25c2:	d04b      	beq.n	c0de265c <parser_getErrorDescription+0xb8>
c0de25c4:	280c      	cmp	r0, #12
c0de25c6:	d04c      	beq.n	c0de2662 <parser_getErrorDescription+0xbe>
c0de25c8:	280d      	cmp	r0, #13
c0de25ca:	d04d      	beq.n	c0de2668 <parser_getErrorDescription+0xc4>
c0de25cc:	280e      	cmp	r0, #14
c0de25ce:	d04e      	beq.n	c0de266e <parser_getErrorDescription+0xca>
c0de25d0:	280f      	cmp	r0, #15
c0de25d2:	d04f      	beq.n	c0de2674 <parser_getErrorDescription+0xd0>
c0de25d4:	2811      	cmp	r0, #17
c0de25d6:	d050      	beq.n	c0de267a <parser_getErrorDescription+0xd6>
c0de25d8:	2812      	cmp	r0, #18
c0de25da:	d051      	beq.n	c0de2680 <parser_getErrorDescription+0xdc>
c0de25dc:	2813      	cmp	r0, #19
c0de25de:	d052      	beq.n	c0de2686 <parser_getErrorDescription+0xe2>
c0de25e0:	2814      	cmp	r0, #20
c0de25e2:	d053      	beq.n	c0de268c <parser_getErrorDescription+0xe8>
c0de25e4:	2815      	cmp	r0, #21
c0de25e6:	d054      	beq.n	c0de2692 <parser_getErrorDescription+0xee>
c0de25e8:	2816      	cmp	r0, #22
c0de25ea:	d055      	beq.n	c0de2698 <parser_getErrorDescription+0xf4>
c0de25ec:	2817      	cmp	r0, #23
c0de25ee:	d056      	beq.n	c0de269e <parser_getErrorDescription+0xfa>
c0de25f0:	2818      	cmp	r0, #24
c0de25f2:	d057      	beq.n	c0de26a4 <parser_getErrorDescription+0x100>
c0de25f4:	2819      	cmp	r0, #25
c0de25f6:	d058      	beq.n	c0de26aa <parser_getErrorDescription+0x106>
c0de25f8:	281a      	cmp	r0, #26
c0de25fa:	d059      	beq.n	c0de26b0 <parser_getErrorDescription+0x10c>
c0de25fc:	281b      	cmp	r0, #27
c0de25fe:	d05a      	beq.n	c0de26b6 <parser_getErrorDescription+0x112>
c0de2600:	281c      	cmp	r0, #28
c0de2602:	d05b      	beq.n	c0de26bc <parser_getErrorDescription+0x118>
c0de2604:	281d      	cmp	r0, #29
c0de2606:	d05c      	beq.n	c0de26c2 <parser_getErrorDescription+0x11e>
c0de2608:	281e      	cmp	r0, #30
c0de260a:	d05d      	beq.n	c0de26c8 <parser_getErrorDescription+0x124>
c0de260c:	281f      	cmp	r0, #31
c0de260e:	d05e      	beq.n	c0de26ce <parser_getErrorDescription+0x12a>
c0de2610:	2820      	cmp	r0, #32
c0de2612:	d05f      	beq.n	c0de26d4 <parser_getErrorDescription+0x130>
c0de2614:	2821      	cmp	r0, #33	; 0x21
c0de2616:	d060      	beq.n	c0de26da <parser_getErrorDescription+0x136>
c0de2618:	2822      	cmp	r0, #34	; 0x22
c0de261a:	d061      	beq.n	c0de26e0 <parser_getErrorDescription+0x13c>
c0de261c:	2823      	cmp	r0, #35	; 0x23
c0de261e:	d062      	beq.n	c0de26e6 <parser_getErrorDescription+0x142>
c0de2620:	2824      	cmp	r0, #36	; 0x24
c0de2622:	d063      	beq.n	c0de26ec <parser_getErrorDescription+0x148>
c0de2624:	2825      	cmp	r0, #37	; 0x25
c0de2626:	d064      	beq.n	c0de26f2 <parser_getErrorDescription+0x14e>
c0de2628:	2801      	cmp	r0, #1
c0de262a:	d165      	bne.n	c0de26f8 <parser_getErrorDescription+0x154>
c0de262c:	4835      	ldr	r0, [pc, #212]	; (c0de2704 <parser_getErrorDescription+0x160>)
c0de262e:	4478      	add	r0, pc
c0de2630:	4770      	bx	lr
c0de2632:	4833      	ldr	r0, [pc, #204]	; (c0de2700 <parser_getErrorDescription+0x15c>)
c0de2634:	4478      	add	r0, pc
c0de2636:	4770      	bx	lr
c0de2638:	4851      	ldr	r0, [pc, #324]	; (c0de2780 <parser_getErrorDescription+0x1dc>)
c0de263a:	4478      	add	r0, pc
c0de263c:	4770      	bx	lr
c0de263e:	4832      	ldr	r0, [pc, #200]	; (c0de2708 <parser_getErrorDescription+0x164>)
c0de2640:	4478      	add	r0, pc
c0de2642:	4770      	bx	lr
c0de2644:	483b      	ldr	r0, [pc, #236]	; (c0de2734 <parser_getErrorDescription+0x190>)
c0de2646:	4478      	add	r0, pc
c0de2648:	4770      	bx	lr
c0de264a:	483b      	ldr	r0, [pc, #236]	; (c0de2738 <parser_getErrorDescription+0x194>)
c0de264c:	4478      	add	r0, pc
c0de264e:	4770      	bx	lr
c0de2650:	4837      	ldr	r0, [pc, #220]	; (c0de2730 <parser_getErrorDescription+0x18c>)
c0de2652:	4478      	add	r0, pc
c0de2654:	4770      	bx	lr
c0de2656:	482d      	ldr	r0, [pc, #180]	; (c0de270c <parser_getErrorDescription+0x168>)
c0de2658:	4478      	add	r0, pc
c0de265a:	4770      	bx	lr
c0de265c:	482c      	ldr	r0, [pc, #176]	; (c0de2710 <parser_getErrorDescription+0x16c>)
c0de265e:	4478      	add	r0, pc
c0de2660:	4770      	bx	lr
c0de2662:	482c      	ldr	r0, [pc, #176]	; (c0de2714 <parser_getErrorDescription+0x170>)
c0de2664:	4478      	add	r0, pc
c0de2666:	4770      	bx	lr
c0de2668:	482b      	ldr	r0, [pc, #172]	; (c0de2718 <parser_getErrorDescription+0x174>)
c0de266a:	4478      	add	r0, pc
c0de266c:	4770      	bx	lr
c0de266e:	482b      	ldr	r0, [pc, #172]	; (c0de271c <parser_getErrorDescription+0x178>)
c0de2670:	4478      	add	r0, pc
c0de2672:	4770      	bx	lr
c0de2674:	482a      	ldr	r0, [pc, #168]	; (c0de2720 <parser_getErrorDescription+0x17c>)
c0de2676:	4478      	add	r0, pc
c0de2678:	4770      	bx	lr
c0de267a:	482a      	ldr	r0, [pc, #168]	; (c0de2724 <parser_getErrorDescription+0x180>)
c0de267c:	4478      	add	r0, pc
c0de267e:	4770      	bx	lr
c0de2680:	482a      	ldr	r0, [pc, #168]	; (c0de272c <parser_getErrorDescription+0x188>)
c0de2682:	4478      	add	r0, pc
c0de2684:	4770      	bx	lr
c0de2686:	4828      	ldr	r0, [pc, #160]	; (c0de2728 <parser_getErrorDescription+0x184>)
c0de2688:	4478      	add	r0, pc
c0de268a:	4770      	bx	lr
c0de268c:	483d      	ldr	r0, [pc, #244]	; (c0de2784 <parser_getErrorDescription+0x1e0>)
c0de268e:	4478      	add	r0, pc
c0de2690:	4770      	bx	lr
c0de2692:	482a      	ldr	r0, [pc, #168]	; (c0de273c <parser_getErrorDescription+0x198>)
c0de2694:	4478      	add	r0, pc
c0de2696:	4770      	bx	lr
c0de2698:	4829      	ldr	r0, [pc, #164]	; (c0de2740 <parser_getErrorDescription+0x19c>)
c0de269a:	4478      	add	r0, pc
c0de269c:	4770      	bx	lr
c0de269e:	4829      	ldr	r0, [pc, #164]	; (c0de2744 <parser_getErrorDescription+0x1a0>)
c0de26a0:	4478      	add	r0, pc
c0de26a2:	4770      	bx	lr
c0de26a4:	4828      	ldr	r0, [pc, #160]	; (c0de2748 <parser_getErrorDescription+0x1a4>)
c0de26a6:	4478      	add	r0, pc
c0de26a8:	4770      	bx	lr
c0de26aa:	4828      	ldr	r0, [pc, #160]	; (c0de274c <parser_getErrorDescription+0x1a8>)
c0de26ac:	4478      	add	r0, pc
c0de26ae:	4770      	bx	lr
c0de26b0:	4827      	ldr	r0, [pc, #156]	; (c0de2750 <parser_getErrorDescription+0x1ac>)
c0de26b2:	4478      	add	r0, pc
c0de26b4:	4770      	bx	lr
c0de26b6:	4827      	ldr	r0, [pc, #156]	; (c0de2754 <parser_getErrorDescription+0x1b0>)
c0de26b8:	4478      	add	r0, pc
c0de26ba:	4770      	bx	lr
c0de26bc:	4826      	ldr	r0, [pc, #152]	; (c0de2758 <parser_getErrorDescription+0x1b4>)
c0de26be:	4478      	add	r0, pc
c0de26c0:	4770      	bx	lr
c0de26c2:	4826      	ldr	r0, [pc, #152]	; (c0de275c <parser_getErrorDescription+0x1b8>)
c0de26c4:	4478      	add	r0, pc
c0de26c6:	4770      	bx	lr
c0de26c8:	4825      	ldr	r0, [pc, #148]	; (c0de2760 <parser_getErrorDescription+0x1bc>)
c0de26ca:	4478      	add	r0, pc
c0de26cc:	4770      	bx	lr
c0de26ce:	4825      	ldr	r0, [pc, #148]	; (c0de2764 <parser_getErrorDescription+0x1c0>)
c0de26d0:	4478      	add	r0, pc
c0de26d2:	4770      	bx	lr
c0de26d4:	4824      	ldr	r0, [pc, #144]	; (c0de2768 <parser_getErrorDescription+0x1c4>)
c0de26d6:	4478      	add	r0, pc
c0de26d8:	4770      	bx	lr
c0de26da:	4824      	ldr	r0, [pc, #144]	; (c0de276c <parser_getErrorDescription+0x1c8>)
c0de26dc:	4478      	add	r0, pc
c0de26de:	4770      	bx	lr
c0de26e0:	4824      	ldr	r0, [pc, #144]	; (c0de2774 <parser_getErrorDescription+0x1d0>)
c0de26e2:	4478      	add	r0, pc
c0de26e4:	4770      	bx	lr
c0de26e6:	4822      	ldr	r0, [pc, #136]	; (c0de2770 <parser_getErrorDescription+0x1cc>)
c0de26e8:	4478      	add	r0, pc
c0de26ea:	4770      	bx	lr
c0de26ec:	4822      	ldr	r0, [pc, #136]	; (c0de2778 <parser_getErrorDescription+0x1d4>)
c0de26ee:	4478      	add	r0, pc
c0de26f0:	4770      	bx	lr
c0de26f2:	4822      	ldr	r0, [pc, #136]	; (c0de277c <parser_getErrorDescription+0x1d8>)
c0de26f4:	4478      	add	r0, pc
c0de26f6:	4770      	bx	lr
c0de26f8:	4823      	ldr	r0, [pc, #140]	; (c0de2788 <parser_getErrorDescription+0x1e4>)
c0de26fa:	4478      	add	r0, pc
c0de26fc:	4770      	bx	lr
c0de26fe:	bf00      	nop
c0de2700:	000075b9 	.word	0x000075b9
c0de2704:	000088f8 	.word	0x000088f8
c0de2708:	0000886f 	.word	0x0000886f
c0de270c:	00008bb5 	.word	0x00008bb5
c0de2710:	00008bc5 	.word	0x00008bc5
c0de2714:	00007723 	.word	0x00007723
c0de2718:	00007733 	.word	0x00007733
c0de271c:	00008a9d 	.word	0x00008a9d
c0de2720:	00007d98 	.word	0x00007d98
c0de2724:	00007eba 	.word	0x00007eba
c0de2728:	00008aa1 	.word	0x00008aa1
c0de272c:	00007d9f 	.word	0x00007d9f
c0de2730:	000083bf 	.word	0x000083bf
c0de2734:	00007a93 	.word	0x00007a93
c0de2738:	000075aa 	.word	0x000075aa
c0de273c:	00008ab4 	.word	0x00008ab4
c0de2740:	000077d7 	.word	0x000077d7
c0de2744:	00007ea7 	.word	0x00007ea7
c0de2748:	000089e0 	.word	0x000089e0
c0de274c:	000081f2 	.word	0x000081f2
c0de2750:	00008016 	.word	0x00008016
c0de2754:	0000842a 	.word	0x0000842a
c0de2758:	000086f5 	.word	0x000086f5
c0de275c:	0000787c 	.word	0x0000787c
c0de2760:	000084c5 	.word	0x000084c5
c0de2764:	000080c9 	.word	0x000080c9
c0de2768:	0000787c 	.word	0x0000787c
c0de276c:	000077ab 	.word	0x000077ab
c0de2770:	0000884b 	.word	0x0000884b
c0de2774:	00007ad7 	.word	0x00007ad7
c0de2778:	00007adf 	.word	0x00007adf
c0de277c:	00007a00 	.word	0x00007a00
c0de2780:	00007863 	.word	0x00007863
c0de2784:	00007720 	.word	0x00007720
c0de2788:	00008859 	.word	0x00008859

c0de278c <_read_json_tx>:
c0de278c:	b5b0      	push	{r4, r5, r7, lr}
c0de278e:	4d0e      	ldr	r5, [pc, #56]	; (c0de27c8 <_read_json_tx+0x3c>)
c0de2790:	4604      	mov	r4, r0
c0de2792:	88a2      	ldrh	r2, [r4, #4]
c0de2794:	6821      	ldr	r1, [r4, #0]
c0de2796:	eb09 0005 	add.w	r0, r9, r5
c0de279a:	3008      	adds	r0, #8
c0de279c:	f7fe fb94 	bl	c0de0ec8 <json_parse>
c0de27a0:	b100      	cbz	r0, c0de27a4 <_read_json_tx+0x18>
c0de27a2:	bdb0      	pop	{r4, r5, r7, pc}
c0de27a4:	6822      	ldr	r2, [r4, #0]
c0de27a6:	eb09 0105 	add.w	r1, r9, r5
c0de27aa:	f44f 53c1 	mov.w	r3, #6176	; 0x1820
c0de27ae:	2400      	movs	r4, #0
c0de27b0:	54cc      	strb	r4, [r1, r3]
c0de27b2:	f641 0319 	movw	r3, #6169	; 0x1819
c0de27b6:	54cc      	strb	r4, [r1, r3]
c0de27b8:	f641 0318 	movw	r3, #6168	; 0x1818
c0de27bc:	604a      	str	r2, [r1, #4]
c0de27be:	5ccc      	ldrb	r4, [r1, r3]
c0de27c0:	f004 04fe 	and.w	r4, r4, #254	; 0xfe
c0de27c4:	54cc      	strb	r4, [r1, r3]
c0de27c6:	bdb0      	pop	{r4, r5, r7, pc}
c0de27c8:	000038c4 	.word	0x000038c4

c0de27cc <_read_text_tx>:
c0de27cc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de27d0:	b09a      	sub	sp, #104	; 0x68
c0de27d2:	460d      	mov	r5, r1
c0de27d4:	4604      	mov	r4, r0
c0de27d6:	f003 f85b 	bl	c0de5890 <check_app_canary>
c0de27da:	88a1      	ldrh	r1, [r4, #4]
c0de27dc:	88e2      	ldrh	r2, [r4, #6]
c0de27de:	6820      	ldr	r0, [r4, #0]
c0de27e0:	ab12      	add	r3, sp, #72	; 0x48
c0de27e2:	9300      	str	r3, [sp, #0]
c0de27e4:	ab10      	add	r3, sp, #64	; 0x40
c0de27e6:	4410      	add	r0, r2
c0de27e8:	1a89      	subs	r1, r1, r2
c0de27ea:	2200      	movs	r2, #0
c0de27ec:	f003 f887 	bl	c0de58fe <cbor_parser_init>
c0de27f0:	b118      	cbz	r0, c0de27fa <_read_text_tx+0x2e>
c0de27f2:	f7fe f808 	bl	c0de0806 <parser_mapCborError>
c0de27f6:	4606      	mov	r6, r0
c0de27f8:	e06c      	b.n	c0de28d4 <_read_text_tx+0x108>
c0de27fa:	f003 f849 	bl	c0de5890 <check_app_canary>
c0de27fe:	f89d 0056 	ldrb.w	r0, [sp, #86]	; 0x56
c0de2802:	28a0      	cmp	r0, #160	; 0xa0
c0de2804:	d165      	bne.n	c0de28d2 <_read_text_tx+0x106>
c0de2806:	a812      	add	r0, sp, #72	; 0x48
c0de2808:	a916      	add	r1, sp, #88	; 0x58
c0de280a:	f003 f9bb 	bl	c0de5b84 <cbor_value_enter_container>
c0de280e:	2800      	cmp	r0, #0
c0de2810:	d1ef      	bne.n	c0de27f2 <_read_text_tx+0x26>
c0de2812:	f89d 0066 	ldrb.w	r0, [sp, #102]	; 0x66
c0de2816:	2800      	cmp	r0, #0
c0de2818:	d15b      	bne.n	c0de28d2 <_read_text_tx+0x106>
c0de281a:	a816      	add	r0, sp, #88	; 0x58
c0de281c:	f000 f876 	bl	c0de290c <_cbor_value_extract_int64_helper>
c0de2820:	f89d 1067 	ldrb.w	r1, [sp, #103]	; 0x67
c0de2824:	0149      	lsls	r1, r1, #5
c0de2826:	b249      	sxtb	r1, r1
c0de2828:	ea80 10e1 	eor.w	r0, r0, r1, asr #7
c0de282c:	2801      	cmp	r0, #1
c0de282e:	d150      	bne.n	c0de28d2 <_read_text_tx+0x106>
c0de2830:	a816      	add	r0, sp, #88	; 0x58
c0de2832:	f003 f94e 	bl	c0de5ad2 <cbor_value_advance>
c0de2836:	2800      	cmp	r0, #0
c0de2838:	d1db      	bne.n	c0de27f2 <_read_text_tx+0x26>
c0de283a:	f89d 0066 	ldrb.w	r0, [sp, #102]	; 0x66
c0de283e:	2880      	cmp	r0, #128	; 0x80
c0de2840:	d147      	bne.n	c0de28d2 <_read_text_tx+0x106>
c0de2842:	f89d 0067 	ldrb.w	r0, [sp, #103]	; 0x67
c0de2846:	06c0      	lsls	r0, r0, #27
c0de2848:	d448      	bmi.n	c0de28dc <_read_text_tx+0x110>
c0de284a:	a816      	add	r0, sp, #88	; 0x58
c0de284c:	f000 f85e 	bl	c0de290c <_cbor_value_extract_int64_helper>
c0de2850:	2900      	cmp	r1, #0
c0de2852:	6068      	str	r0, [r5, #4]
c0de2854:	d144      	bne.n	c0de28e0 <_read_text_tx+0x114>
c0de2856:	3801      	subs	r0, #1
c0de2858:	28fe      	cmp	r0, #254	; 0xfe
c0de285a:	d844      	bhi.n	c0de28e6 <_read_text_tx+0x11a>
c0de285c:	a816      	add	r0, sp, #88	; 0x58
c0de285e:	a90c      	add	r1, sp, #48	; 0x30
c0de2860:	f003 f990 	bl	c0de5b84 <cbor_value_enter_container>
c0de2864:	2800      	cmp	r0, #0
c0de2866:	d1c4      	bne.n	c0de27f2 <_read_text_tx+0x26>
c0de2868:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
c0de286c:	f10d 0808 	add.w	r8, sp, #8
c0de2870:	f10d 0b30 	add.w	fp, sp, #48	; 0x30
c0de2874:	f10d 0a20 	add.w	sl, sp, #32
c0de2878:	6868      	ldr	r0, [r5, #4]
c0de287a:	3701      	adds	r7, #1
c0de287c:	4287      	cmp	r7, r0
c0de287e:	d234      	bcs.n	c0de28ea <_read_text_tx+0x11e>
c0de2880:	4640      	mov	r0, r8
c0de2882:	2118      	movs	r1, #24
c0de2884:	f007 f84a 	bl	c0de991c <explicit_bzero>
c0de2888:	f89d 003f 	ldrb.w	r0, [sp, #63]	; 0x3f
c0de288c:	06c0      	lsls	r0, r0, #27
c0de288e:	d425      	bmi.n	c0de28dc <_read_text_tx+0x110>
c0de2890:	4658      	mov	r0, fp
c0de2892:	f000 f83b 	bl	c0de290c <_cbor_value_extract_int64_helper>
c0de2896:	9002      	str	r0, [sp, #8]
c0de2898:	bb11      	cbnz	r1, c0de28e0 <_read_text_tx+0x114>
c0de289a:	3801      	subs	r0, #1
c0de289c:	2803      	cmp	r0, #3
c0de289e:	d833      	bhi.n	c0de2908 <_read_text_tx+0x13c>
c0de28a0:	4658      	mov	r0, fp
c0de28a2:	4651      	mov	r1, sl
c0de28a4:	f003 f96e 	bl	c0de5b84 <cbor_value_enter_container>
c0de28a8:	2800      	cmp	r0, #0
c0de28aa:	d1a2      	bne.n	c0de27f2 <_read_text_tx+0x26>
c0de28ac:	4650      	mov	r0, sl
c0de28ae:	4641      	mov	r1, r8
c0de28b0:	f7fe f89f 	bl	c0de09f2 <cbor_check_expert>
c0de28b4:	4606      	mov	r6, r0
c0de28b6:	f002 ffeb 	bl	c0de5890 <check_app_canary>
c0de28ba:	b95e      	cbnz	r6, c0de28d4 <_read_text_tx+0x108>
c0de28bc:	7a28      	ldrb	r0, [r5, #8]
c0de28be:	f89d 101d 	ldrb.w	r1, [sp, #29]
c0de28c2:	4408      	add	r0, r1
c0de28c4:	7228      	strb	r0, [r5, #8]
c0de28c6:	4658      	mov	r0, fp
c0de28c8:	f003 f903 	bl	c0de5ad2 <cbor_value_advance>
c0de28cc:	2800      	cmp	r0, #0
c0de28ce:	d0d3      	beq.n	c0de2878 <_read_text_tx+0xac>
c0de28d0:	e78f      	b.n	c0de27f2 <_read_text_tx+0x26>
c0de28d2:	2606      	movs	r6, #6
c0de28d4:	b2f0      	uxtb	r0, r6
c0de28d6:	b01a      	add	sp, #104	; 0x68
c0de28d8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de28dc:	2002      	movs	r0, #2
c0de28de:	e788      	b.n	c0de27f2 <_read_text_tx+0x26>
c0de28e0:	f44f 6080 	mov.w	r0, #1024	; 0x400
c0de28e4:	e785      	b.n	c0de27f2 <_read_text_tx+0x26>
c0de28e6:	260a      	movs	r6, #10
c0de28e8:	e7f4      	b.n	c0de28d4 <_read_text_tx+0x108>
c0de28ea:	a816      	add	r0, sp, #88	; 0x58
c0de28ec:	a90c      	add	r1, sp, #48	; 0x30
c0de28ee:	f003 f9ac 	bl	c0de5c4a <cbor_value_leave_container>
c0de28f2:	2800      	cmp	r0, #0
c0de28f4:	f47f af7d 	bne.w	c0de27f2 <_read_text_tx+0x26>
c0de28f8:	88a0      	ldrh	r0, [r4, #4]
c0de28fa:	6821      	ldr	r1, [r4, #0]
c0de28fc:	4408      	add	r0, r1
c0de28fe:	9917      	ldr	r1, [sp, #92]	; 0x5c
c0de2900:	1a0e      	subs	r6, r1, r0
c0de2902:	bf18      	it	ne
c0de2904:	2622      	movne	r6, #34	; 0x22
c0de2906:	e7e5      	b.n	c0de28d4 <_read_text_tx+0x108>
c0de2908:	2609      	movs	r6, #9
c0de290a:	e7e3      	b.n	c0de28d4 <_read_text_tx+0x108>

c0de290c <_cbor_value_extract_int64_helper>:
c0de290c:	7bc1      	ldrb	r1, [r0, #15]
c0de290e:	0789      	lsls	r1, r1, #30
c0de2910:	bf48      	it	mi
c0de2912:	f002 bfd0 	bmi.w	c0de58b6 <_cbor_value_decode_int64_internal>
c0de2916:	8980      	ldrh	r0, [r0, #12]
c0de2918:	2100      	movs	r1, #0
c0de291a:	4770      	bx	lr

c0de291c <utf8codepoint>:
c0de291c:	b510      	push	{r4, lr}
c0de291e:	7803      	ldrb	r3, [r0, #0]
c0de2920:	f003 02f8 	and.w	r2, r3, #248	; 0xf8
c0de2924:	2af0      	cmp	r2, #240	; 0xf0
c0de2926:	d10b      	bne.n	c0de2940 <utf8codepoint+0x24>
c0de2928:	f44f 12e0 	mov.w	r2, #1835008	; 0x1c0000
c0de292c:	7884      	ldrb	r4, [r0, #2]
c0de292e:	ea02 4283 	and.w	r2, r2, r3, lsl #18
c0de2932:	f000 feff 	bl	c0de3734 <OUTLINED_FUNCTION_8>
c0de2936:	2403      	movs	r4, #3
c0de2938:	ea42 1383 	orr.w	r3, r2, r3, lsl #6
c0de293c:	2204      	movs	r2, #4
c0de293e:	e017      	b.n	c0de2970 <utf8codepoint+0x54>
c0de2940:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
c0de2944:	2ae0      	cmp	r2, #224	; 0xe0
c0de2946:	d109      	bne.n	c0de295c <utf8codepoint+0x40>
c0de2948:	7842      	ldrb	r2, [r0, #1]
c0de294a:	031b      	lsls	r3, r3, #12
c0de294c:	2402      	movs	r4, #2
c0de294e:	b29b      	uxth	r3, r3
c0de2950:	f002 023f 	and.w	r2, r2, #63	; 0x3f
c0de2954:	ea43 1382 	orr.w	r3, r3, r2, lsl #6
c0de2958:	2203      	movs	r2, #3
c0de295a:	e009      	b.n	c0de2970 <utf8codepoint+0x54>
c0de295c:	f003 02e0 	and.w	r2, r3, #224	; 0xe0
c0de2960:	2ac0      	cmp	r2, #192	; 0xc0
c0de2962:	d10c      	bne.n	c0de297e <utf8codepoint+0x62>
c0de2964:	f44f 62f8 	mov.w	r2, #1984	; 0x7c0
c0de2968:	2401      	movs	r4, #1
c0de296a:	ea02 1383 	and.w	r3, r2, r3, lsl #6
c0de296e:	2202      	movs	r2, #2
c0de2970:	5d04      	ldrb	r4, [r0, r4]
c0de2972:	f004 043f 	and.w	r4, r4, #63	; 0x3f
c0de2976:	4323      	orrs	r3, r4
c0de2978:	4410      	add	r0, r2
c0de297a:	600b      	str	r3, [r1, #0]
c0de297c:	bd10      	pop	{r4, pc}
c0de297e:	2201      	movs	r2, #1
c0de2980:	e7fa      	b.n	c0de2978 <utf8codepoint+0x5c>
	...

c0de2984 <get_required_root_item>:
c0de2984:	b170      	cbz	r0, c0de29a4 <get_required_root_item+0x20>
c0de2986:	2806      	cmp	r0, #6
c0de2988:	d00f      	beq.n	c0de29aa <get_required_root_item+0x26>
c0de298a:	2802      	cmp	r0, #2
c0de298c:	d010      	beq.n	c0de29b0 <get_required_root_item+0x2c>
c0de298e:	2803      	cmp	r0, #3
c0de2990:	d011      	beq.n	c0de29b6 <get_required_root_item+0x32>
c0de2992:	2804      	cmp	r0, #4
c0de2994:	d012      	beq.n	c0de29bc <get_required_root_item+0x38>
c0de2996:	2805      	cmp	r0, #5
c0de2998:	d013      	beq.n	c0de29c2 <get_required_root_item+0x3e>
c0de299a:	2801      	cmp	r0, #1
c0de299c:	d114      	bne.n	c0de29c8 <get_required_root_item+0x44>
c0de299e:	480d      	ldr	r0, [pc, #52]	; (c0de29d4 <get_required_root_item+0x50>)
c0de29a0:	4478      	add	r0, pc
c0de29a2:	4770      	bx	lr
c0de29a4:	480a      	ldr	r0, [pc, #40]	; (c0de29d0 <get_required_root_item+0x4c>)
c0de29a6:	4478      	add	r0, pc
c0de29a8:	4770      	bx	lr
c0de29aa:	480f      	ldr	r0, [pc, #60]	; (c0de29e8 <get_required_root_item+0x64>)
c0de29ac:	4478      	add	r0, pc
c0de29ae:	4770      	bx	lr
c0de29b0:	4809      	ldr	r0, [pc, #36]	; (c0de29d8 <get_required_root_item+0x54>)
c0de29b2:	4478      	add	r0, pc
c0de29b4:	4770      	bx	lr
c0de29b6:	480b      	ldr	r0, [pc, #44]	; (c0de29e4 <get_required_root_item+0x60>)
c0de29b8:	4478      	add	r0, pc
c0de29ba:	4770      	bx	lr
c0de29bc:	4808      	ldr	r0, [pc, #32]	; (c0de29e0 <get_required_root_item+0x5c>)
c0de29be:	4478      	add	r0, pc
c0de29c0:	4770      	bx	lr
c0de29c2:	4806      	ldr	r0, [pc, #24]	; (c0de29dc <get_required_root_item+0x58>)
c0de29c4:	4478      	add	r0, pc
c0de29c6:	4770      	bx	lr
c0de29c8:	4808      	ldr	r0, [pc, #32]	; (c0de29ec <get_required_root_item+0x68>)
c0de29ca:	4478      	add	r0, pc
c0de29cc:	4770      	bx	lr
c0de29ce:	bf00      	nop
c0de29d0:	000075c2 	.word	0x000075c2
c0de29d4:	00008a27 	.word	0x00008a27
c0de29d8:	00007d2c 	.word	0x00007d2c
c0de29dc:	0000724c 	.word	0x0000724c
c0de29e0:	0000813a 	.word	0x0000813a
c0de29e4:	00007a77 	.word	0x00007a77
c0de29e8:	00007c2a 	.word	0x00007c2a
c0de29ec:	00007b99 	.word	0x00007b99

c0de29f0 <tx_indexRootFields>:
c0de29f0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de29f4:	b0d4      	sub	sp, #336	; 0x150
c0de29f6:	f8df 4480 	ldr.w	r4, [pc, #1152]	; c0de2e78 <tx_indexRootFields+0x488>
c0de29fa:	f641 0118 	movw	r1, #6168	; 0x1818
c0de29fe:	f04f 0a00 	mov.w	sl, #0
c0de2a02:	eb09 0004 	add.w	r0, r9, r4
c0de2a06:	5c40      	ldrb	r0, [r0, r1]
c0de2a08:	07c0      	lsls	r0, r0, #31
c0de2a0a:	f040 817c 	bne.w	c0de2d06 <tx_indexRootFields+0x316>
c0de2a0e:	4ec0      	ldr	r6, [pc, #768]	; (c0de2d10 <tx_indexRootFields+0x320>)
c0de2a10:	f8df b468 	ldr.w	fp, [pc, #1128]	; c0de2e7c <tx_indexRootFields+0x48c>
c0de2a14:	2120      	movs	r1, #32
c0de2a16:	eb09 000b 	add.w	r0, r9, fp
c0de2a1a:	447e      	add	r6, pc
c0de2a1c:	47b0      	blx	r6
c0de2a1e:	ad3c      	add	r5, sp, #240	; 0xf0
c0de2a20:	2146      	movs	r1, #70	; 0x46
c0de2a22:	f641 0818 	movw	r8, #6168	; 0x1818
c0de2a26:	4628      	mov	r0, r5
c0de2a28:	47b0      	blx	r6
c0de2a2a:	f10d 00aa 	add.w	r0, sp, #170	; 0xaa
c0de2a2e:	2146      	movs	r1, #70	; 0x46
c0de2a30:	47b0      	blx	r6
c0de2a32:	a819      	add	r0, sp, #100	; 0x64
c0de2a34:	2146      	movs	r1, #70	; 0x46
c0de2a36:	47b0      	blx	r6
c0de2a38:	f10d 001e 	add.w	r0, sp, #30
c0de2a3c:	2146      	movs	r1, #70	; 0x46
c0de2a3e:	47b0      	blx	r6
c0de2a40:	eb09 0004 	add.w	r0, r9, r4
c0de2a44:	f44f 51c1 	mov.w	r1, #6176	; 0x1820
c0de2a48:	2700      	movs	r7, #0
c0de2a4a:	f800 a001 	strb.w	sl, [r0, r1]
c0de2a4e:	f641 0119 	movw	r1, #6169	; 0x1819
c0de2a52:	f800 a001 	strb.w	sl, [r0, r1]
c0de2a56:	f810 1008 	ldrb.w	r1, [r0, r8]
c0de2a5a:	f041 0106 	orr.w	r1, r1, #6
c0de2a5e:	f800 1008 	strb.w	r1, [r0, r8]
c0de2a62:	444c      	add	r4, r9
c0de2a64:	2f07      	cmp	r7, #7
c0de2a66:	f000 8155 	beq.w	c0de2d14 <tx_indexRootFields+0x324>
c0de2a6a:	fa5f f887 	uxtb.w	r8, r7
c0de2a6e:	f8ad a13a 	strh.w	sl, [sp, #314]	; 0x13a
c0de2a72:	4640      	mov	r0, r8
c0de2a74:	f7ff ff86 	bl	c0de2984 <get_required_root_item>
c0de2a78:	4602      	mov	r2, r0
c0de2a7a:	f104 0008 	add.w	r0, r4, #8
c0de2a7e:	2100      	movs	r1, #0
c0de2a80:	f50d 739d 	add.w	r3, sp, #314	; 0x13a
c0de2a84:	9206      	str	r2, [sp, #24]
c0de2a86:	f7fe fb11 	bl	c0de10ac <object_get_value>
c0de2a8a:	2801      	cmp	r0, #1
c0de2a8c:	f000 8137 	beq.w	c0de2cfe <tx_indexRootFields+0x30e>
c0de2a90:	4604      	mov	r4, r0
c0de2a92:	9703      	str	r7, [sp, #12]
c0de2a94:	f002 fefc 	bl	c0de5890 <check_app_canary>
c0de2a98:	2c00      	cmp	r4, #0
c0de2a9a:	f040 81a3 	bne.w	c0de2de4 <tx_indexRootFields+0x3f4>
c0de2a9e:	9a03      	ldr	r2, [sp, #12]
c0de2aa0:	eb09 000b 	add.w	r0, r9, fp
c0de2aa4:	2101      	movs	r1, #1
c0de2aa6:	1883      	adds	r3, r0, r2
c0de2aa8:	f803 1b18 	strb.w	r1, [r3], #24
c0de2aac:	eb00 0142 	add.w	r1, r0, r2, lsl #1
c0de2ab0:	f8bd 013a 	ldrh.w	r0, [sp, #314]	; 0x13a
c0de2ab4:	9302      	str	r3, [sp, #8]
c0de2ab6:	f821 0f08 	strh.w	r0, [r1, #8]!
c0de2aba:	2000      	movs	r0, #0
c0de2abc:	9104      	str	r1, [sp, #16]
c0de2abe:	2100      	movs	r1, #0
c0de2ac0:	9105      	str	r1, [sp, #20]
c0de2ac2:	f8df 43b4 	ldr.w	r4, [pc, #948]	; c0de2e78 <tx_indexRootFields+0x488>
c0de2ac6:	2800      	cmp	r0, #0
c0de2ac8:	f040 810b 	bne.w	c0de2ce2 <tx_indexRootFields+0x2f2>
c0de2acc:	eb09 0004 	add.w	r0, r9, r4
c0de2ad0:	f641 012c 	movw	r1, #6188	; 0x182c
c0de2ad4:	f820 a001 	strh.w	sl, [r0, r1]
c0de2ad8:	4408      	add	r0, r1
c0de2ada:	2106      	movs	r1, #6
c0de2adc:	70c1      	strb	r1, [r0, #3]
c0de2ade:	2002      	movs	r0, #2
c0de2ae0:	f1b8 0f03 	cmp.w	r8, #3
c0de2ae4:	d315      	bcc.n	c0de2b12 <tx_indexRootFields+0x122>
c0de2ae6:	d00a      	beq.n	c0de2afe <tx_indexRootFields+0x10e>
c0de2ae8:	f1b8 0f04 	cmp.w	r8, #4
c0de2aec:	d011      	beq.n	c0de2b12 <tx_indexRootFields+0x122>
c0de2aee:	f1b8 0f06 	cmp.w	r8, #6
c0de2af2:	d002      	beq.n	c0de2afa <tx_indexRootFields+0x10a>
c0de2af4:	f1b8 0f05 	cmp.w	r8, #5
c0de2af8:	d10a      	bne.n	c0de2b10 <tx_indexRootFields+0x120>
c0de2afa:	2001      	movs	r0, #1
c0de2afc:	e009      	b.n	c0de2b12 <tx_indexRootFields+0x122>
c0de2afe:	48e0      	ldr	r0, [pc, #896]	; (c0de2e80 <tx_indexRootFields+0x490>)
c0de2b00:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de2b04:	2800      	cmp	r0, #0
c0de2b06:	f04f 0003 	mov.w	r0, #3
c0de2b0a:	bf08      	it	eq
c0de2b0c:	2002      	moveq	r0, #2
c0de2b0e:	e000      	b.n	c0de2b12 <tx_indexRootFields+0x122>
c0de2b10:	2000      	movs	r0, #0
c0de2b12:	444c      	add	r4, r9
c0de2b14:	f641 012e 	movw	r1, #6190	; 0x182e
c0de2b18:	f641 0b30 	movw	fp, #6192	; 0x1830
c0de2b1c:	5460      	strb	r0, [r4, r1]
c0de2b1e:	4628      	mov	r0, r5
c0de2b20:	2146      	movs	r1, #70	; 0x46
c0de2b22:	f844 a00b 	str.w	sl, [r4, fp]
c0de2b26:	47b0      	blx	r6
c0de2b28:	f10d 07aa 	add.w	r7, sp, #170	; 0xaa
c0de2b2c:	2146      	movs	r1, #70	; 0x46
c0de2b2e:	4638      	mov	r0, r7
c0de2b30:	47b0      	blx	r6
c0de2b32:	f641 003c 	movw	r0, #6204	; 0x183c
c0de2b36:	f44f 51c2 	mov.w	r1, #6208	; 0x1840
c0de2b3a:	5027      	str	r7, [r4, r0]
c0de2b3c:	f641 0034 	movw	r0, #6196	; 0x1834
c0de2b40:	5025      	str	r5, [r4, r0]
c0de2b42:	2046      	movs	r0, #70	; 0x46
c0de2b44:	5260      	strh	r0, [r4, r1]
c0de2b46:	f641 0138 	movw	r1, #6200	; 0x1838
c0de2b4a:	5260      	strh	r0, [r4, r1]
c0de2b4c:	9805      	ldr	r0, [sp, #20]
c0de2b4e:	2146      	movs	r1, #70	; 0x46
c0de2b50:	f824 000b 	strh.w	r0, [r4, fp]
c0de2b54:	4628      	mov	r0, r5
c0de2b56:	47b0      	blx	r6
c0de2b58:	9906      	ldr	r1, [sp, #24]
c0de2b5a:	4628      	mov	r0, r5
c0de2b5c:	2245      	movs	r2, #69	; 0x45
c0de2b5e:	f006 ff57 	bl	c0de9a10 <strncpy>
c0de2b62:	9804      	ldr	r0, [sp, #16]
c0de2b64:	f50d 71a7 	add.w	r1, sp, #334	; 0x14e
c0de2b68:	8800      	ldrh	r0, [r0, #0]
c0de2b6a:	f000 fe9b 	bl	c0de38a4 <tx_traverse_find>
c0de2b6e:	2800      	cmp	r0, #0
c0de2b70:	d1a7      	bne.n	c0de2ac2 <tx_indexRootFields+0xd2>
c0de2b72:	48c1      	ldr	r0, [pc, #772]	; (c0de2e78 <tx_indexRootFields+0x488>)
c0de2b74:	f641 013c 	movw	r1, #6204	; 0x183c
c0de2b78:	f44f 52c2 	mov.w	r2, #6208	; 0x1840
c0de2b7c:	f50d 739b 	add.w	r3, sp, #310	; 0x136
c0de2b80:	9300      	str	r3, [sp, #0]
c0de2b82:	2300      	movs	r3, #0
c0de2b84:	4448      	add	r0, r9
c0de2b86:	5841      	ldr	r1, [r0, r1]
c0de2b88:	5a82      	ldrh	r2, [r0, r2]
c0de2b8a:	f8bd 014e 	ldrh.w	r0, [sp, #334]	; 0x14e
c0de2b8e:	f000 fdeb 	bl	c0de3768 <tx_getToken>
c0de2b92:	4604      	mov	r4, r0
c0de2b94:	f002 fe7c 	bl	c0de5890 <check_app_canary>
c0de2b98:	2c00      	cmp	r4, #0
c0de2b9a:	f040 8123 	bne.w	c0de2de4 <tx_indexRootFields+0x3f4>
c0de2b9e:	f1b8 0f03 	cmp.w	r8, #3
c0de2ba2:	d00f      	beq.n	c0de2bc4 <tx_indexRootFields+0x1d4>
c0de2ba4:	4cb4      	ldr	r4, [pc, #720]	; (c0de2e78 <tx_indexRootFields+0x488>)
c0de2ba6:	f1b8 0f04 	cmp.w	r8, #4
c0de2baa:	f040 8091 	bne.w	c0de2cd0 <tx_indexRootFields+0x2e0>
c0de2bae:	eb09 0004 	add.w	r0, r9, r4
c0de2bb2:	f641 013c 	movw	r1, #6204	; 0x183c
c0de2bb6:	5840      	ldr	r0, [r0, r1]
c0de2bb8:	7800      	ldrb	r0, [r0, #0]
c0de2bba:	2800      	cmp	r0, #0
c0de2bbc:	f040 8088 	bne.w	c0de2cd0 <tx_indexRootFields+0x2e0>
c0de2bc0:	2013      	movs	r0, #19
c0de2bc2:	e780      	b.n	c0de2ac6 <tx_indexRootFields+0xd6>
c0de2bc4:	48ac      	ldr	r0, [pc, #688]	; (c0de2e78 <tx_indexRootFields+0x488>)
c0de2bc6:	f641 0118 	movw	r1, #6168	; 0x1818
c0de2bca:	4448      	add	r0, r9
c0de2bcc:	5c44      	ldrb	r4, [r0, r1]
c0de2bce:	07a0      	lsls	r0, r4, #30
c0de2bd0:	d543      	bpl.n	c0de2c5a <tx_indexRootFields+0x26a>
c0de2bd2:	49ad      	ldr	r1, [pc, #692]	; (c0de2e88 <tx_indexRootFields+0x498>)
c0de2bd4:	4628      	mov	r0, r5
c0de2bd6:	220a      	movs	r2, #10
c0de2bd8:	4479      	add	r1, pc
c0de2bda:	f006 fea5 	bl	c0de9928 <memcmp>
c0de2bde:	bbe0      	cbnz	r0, c0de2c5a <tx_indexRootFields+0x26a>
c0de2be0:	4fa5      	ldr	r7, [pc, #660]	; (c0de2e78 <tx_indexRootFields+0x488>)
c0de2be2:	f641 0119 	movw	r1, #6169	; 0x1819
c0de2be6:	eb09 0007 	add.w	r0, r9, r7
c0de2bea:	5c40      	ldrb	r0, [r0, r1]
c0de2bec:	b9a8      	cbnz	r0, c0de2c1a <tx_indexRootFields+0x22a>
c0de2bee:	f10d 04aa 	add.w	r4, sp, #170	; 0xaa
c0de2bf2:	4620      	mov	r0, r4
c0de2bf4:	f006 fef0 	bl	c0de99d8 <strlen>
c0de2bf8:	2845      	cmp	r0, #69	; 0x45
c0de2bfa:	f200 8139 	bhi.w	c0de2e70 <tx_indexRootFields+0x480>
c0de2bfe:	4aa3      	ldr	r2, [pc, #652]	; (c0de2e8c <tx_indexRootFields+0x49c>)
c0de2c00:	a819      	add	r0, sp, #100	; 0x64
c0de2c02:	2146      	movs	r1, #70	; 0x46
c0de2c04:	4623      	mov	r3, r4
c0de2c06:	447a      	add	r2, pc
c0de2c08:	f006 fbbe 	bl	c0de9388 <snprintf>
c0de2c0c:	9905      	ldr	r1, [sp, #20]
c0de2c0e:	eb09 0007 	add.w	r0, r9, r7
c0de2c12:	f641 021c 	movw	r2, #6172	; 0x181c
c0de2c16:	b209      	sxth	r1, r1
c0de2c18:	5081      	str	r1, [r0, r2]
c0de2c1a:	a819      	add	r0, sp, #100	; 0x64
c0de2c1c:	f10d 01aa 	add.w	r1, sp, #170	; 0xaa
c0de2c20:	f006 fed0 	bl	c0de99c4 <strcmp>
c0de2c24:	b160      	cbz	r0, c0de2c40 <tx_indexRootFields+0x250>
c0de2c26:	eb09 0007 	add.w	r0, r9, r7
c0de2c2a:	f641 0318 	movw	r3, #6168	; 0x1818
c0de2c2e:	463a      	mov	r2, r7
c0de2c30:	5cc1      	ldrb	r1, [r0, r3]
c0de2c32:	f001 04fd 	and.w	r4, r1, #253	; 0xfd
c0de2c36:	54c4      	strb	r4, [r0, r3]
c0de2c38:	2000      	movs	r0, #0
c0de2c3a:	f641 0319 	movw	r3, #6169	; 0x1819
c0de2c3e:	e008      	b.n	c0de2c52 <tx_indexRootFields+0x262>
c0de2c40:	eb09 0007 	add.w	r0, r9, r7
c0de2c44:	f641 0118 	movw	r1, #6168	; 0x1818
c0de2c48:	f641 0319 	movw	r3, #6169	; 0x1819
c0de2c4c:	463a      	mov	r2, r7
c0de2c4e:	5c44      	ldrb	r4, [r0, r1]
c0de2c50:	5cc0      	ldrb	r0, [r0, r3]
c0de2c52:	eb09 0102 	add.w	r1, r9, r2
c0de2c56:	3001      	adds	r0, #1
c0de2c58:	54c8      	strb	r0, [r1, r3]
c0de2c5a:	0760      	lsls	r0, r4, #29
c0de2c5c:	4c86      	ldr	r4, [pc, #536]	; (c0de2e78 <tx_indexRootFields+0x488>)
c0de2c5e:	d537      	bpl.n	c0de2cd0 <tx_indexRootFields+0x2e0>
c0de2c60:	498b      	ldr	r1, [pc, #556]	; (c0de2e90 <tx_indexRootFields+0x4a0>)
c0de2c62:	4628      	mov	r0, r5
c0de2c64:	221d      	movs	r2, #29
c0de2c66:	4479      	add	r1, pc
c0de2c68:	f006 fe5e 	bl	c0de9928 <memcmp>
c0de2c6c:	bb80      	cbnz	r0, c0de2cd0 <tx_indexRootFields+0x2e0>
c0de2c6e:	eb09 0004 	add.w	r0, r9, r4
c0de2c72:	f44f 51c1 	mov.w	r1, #6176	; 0x1820
c0de2c76:	5c40      	ldrb	r0, [r0, r1]
c0de2c78:	b978      	cbnz	r0, c0de2c9a <tx_indexRootFields+0x2aa>
c0de2c7a:	4a86      	ldr	r2, [pc, #536]	; (c0de2e94 <tx_indexRootFields+0x4a4>)
c0de2c7c:	f10d 001e 	add.w	r0, sp, #30
c0de2c80:	2146      	movs	r1, #70	; 0x46
c0de2c82:	f10d 03aa 	add.w	r3, sp, #170	; 0xaa
c0de2c86:	447a      	add	r2, pc
c0de2c88:	f006 fb7e 	bl	c0de9388 <snprintf>
c0de2c8c:	9905      	ldr	r1, [sp, #20]
c0de2c8e:	eb09 0004 	add.w	r0, r9, r4
c0de2c92:	f641 0224 	movw	r2, #6180	; 0x1824
c0de2c96:	b209      	sxth	r1, r1
c0de2c98:	5081      	str	r1, [r0, r2]
c0de2c9a:	f10d 001e 	add.w	r0, sp, #30
c0de2c9e:	f10d 01aa 	add.w	r1, sp, #170	; 0xaa
c0de2ca2:	f006 fe8f 	bl	c0de99c4 <strcmp>
c0de2ca6:	2800      	cmp	r0, #0
c0de2ca8:	eb09 0004 	add.w	r0, r9, r4
c0de2cac:	bf07      	ittee	eq
c0de2cae:	f44f 52c1 	moveq.w	r2, #6176	; 0x1820
c0de2cb2:	5c80      	ldrbeq	r0, [r0, r2]
c0de2cb4:	f641 0218 	movwne	r2, #6168	; 0x1818
c0de2cb8:	5c81      	ldrbne	r1, [r0, r2]
c0de2cba:	bf1f      	itttt	ne
c0de2cbc:	f001 01fb 	andne.w	r1, r1, #251	; 0xfb
c0de2cc0:	5481      	strbne	r1, [r0, r2]
c0de2cc2:	2000      	movne	r0, #0
c0de2cc4:	f44f 52c1 	movne.w	r2, #6176	; 0x1820
c0de2cc8:	eb09 0104 	add.w	r1, r9, r4
c0de2ccc:	3001      	adds	r0, #1
c0de2cce:	5488      	strb	r0, [r1, r2]
c0de2cd0:	9902      	ldr	r1, [sp, #8]
c0de2cd2:	7808      	ldrb	r0, [r1, #0]
c0de2cd4:	3001      	adds	r0, #1
c0de2cd6:	7008      	strb	r0, [r1, #0]
c0de2cd8:	9805      	ldr	r0, [sp, #20]
c0de2cda:	3001      	adds	r0, #1
c0de2cdc:	9005      	str	r0, [sp, #20]
c0de2cde:	2000      	movs	r0, #0
c0de2ce0:	e6f1      	b.n	c0de2ac6 <tx_indexRootFields+0xd6>
c0de2ce2:	2801      	cmp	r0, #1
c0de2ce4:	d001      	beq.n	c0de2cea <tx_indexRootFields+0x2fa>
c0de2ce6:	2813      	cmp	r0, #19
c0de2ce8:	d10c      	bne.n	c0de2d04 <tx_indexRootFields+0x314>
c0de2cea:	f8df b190 	ldr.w	fp, [pc, #400]	; c0de2e7c <tx_indexRootFields+0x48c>
c0de2cee:	9a02      	ldr	r2, [sp, #8]
c0de2cf0:	9f03      	ldr	r7, [sp, #12]
c0de2cf2:	eb09 000b 	add.w	r0, r9, fp
c0de2cf6:	7812      	ldrb	r2, [r2, #0]
c0de2cf8:	8ac1      	ldrh	r1, [r0, #22]
c0de2cfa:	4411      	add	r1, r2
c0de2cfc:	82c1      	strh	r1, [r0, #22]
c0de2cfe:	4c5e      	ldr	r4, [pc, #376]	; (c0de2e78 <tx_indexRootFields+0x488>)
c0de2d00:	3701      	adds	r7, #1
c0de2d02:	e6ae      	b.n	c0de2a62 <tx_indexRootFields+0x72>
c0de2d04:	4682      	mov	sl, r0
c0de2d06:	fa5f f08a 	uxtb.w	r0, sl
c0de2d0a:	b054      	add	sp, #336	; 0x150
c0de2d0c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2d10:	00006eff 	.word	0x00006eff
c0de2d14:	f641 0018 	movw	r0, #6168	; 0x1818
c0de2d18:	f641 082c 	movw	r8, #6188	; 0x182c
c0de2d1c:	eb09 060b 	add.w	r6, r9, fp
c0de2d20:	f50d 7ba7 	add.w	fp, sp, #334	; 0x14e
c0de2d24:	2700      	movs	r7, #0
c0de2d26:	5c21      	ldrb	r1, [r4, r0]
c0de2d28:	eb04 0508 	add.w	r5, r4, r8
c0de2d2c:	77f7      	strb	r7, [r6, #31]
c0de2d2e:	606f      	str	r7, [r5, #4]
c0de2d30:	f041 0101 	orr.w	r1, r1, #1
c0de2d34:	5421      	strb	r1, [r4, r0]
c0de2d36:	4853      	ldr	r0, [pc, #332]	; (c0de2e84 <tx_indexRootFields+0x494>)
c0de2d38:	2102      	movs	r1, #2
c0de2d3a:	f844 0008 	str.w	r0, [r4, r8]
c0de2d3e:	4658      	mov	r0, fp
c0de2d40:	f006 fdec 	bl	c0de991c <explicit_bzero>
c0de2d44:	f50d 7a9d 	add.w	sl, sp, #314	; 0x13a
c0de2d48:	2114      	movs	r1, #20
c0de2d4a:	4650      	mov	r0, sl
c0de2d4c:	f006 fde6 	bl	c0de991c <explicit_bzero>
c0de2d50:	2014      	movs	r0, #20
c0de2d52:	f50d 719b 	add.w	r1, sp, #310	; 0x136
c0de2d56:	f824 7008 	strh.w	r7, [r4, r8]
c0de2d5a:	f8c5 a010 	str.w	sl, [r5, #16]
c0de2d5e:	f8c5 b008 	str.w	fp, [r5, #8]
c0de2d62:	80af      	strh	r7, [r5, #4]
c0de2d64:	82a8      	strh	r0, [r5, #20]
c0de2d66:	2002      	movs	r0, #2
c0de2d68:	81a8      	strh	r0, [r5, #12]
c0de2d6a:	8930      	ldrh	r0, [r6, #8]
c0de2d6c:	f000 fd9a 	bl	c0de38a4 <tx_traverse_find>
c0de2d70:	4682      	mov	sl, r0
c0de2d72:	f002 fd8d 	bl	c0de5890 <check_app_canary>
c0de2d76:	f1ba 0f00 	cmp.w	sl, #0
c0de2d7a:	d142      	bne.n	c0de2e02 <tx_indexRootFields+0x412>
c0de2d7c:	f20d 1139 	addw	r1, sp, #313	; 0x139
c0de2d80:	f8bd 0136 	ldrh.w	r0, [sp, #310]	; 0x136
c0de2d84:	2214      	movs	r2, #20
c0de2d86:	2300      	movs	r3, #0
c0de2d88:	9100      	str	r1, [sp, #0]
c0de2d8a:	f50d 719d 	add.w	r1, sp, #314	; 0x13a
c0de2d8e:	f000 fceb 	bl	c0de3768 <tx_getToken>
c0de2d92:	4682      	mov	sl, r0
c0de2d94:	f002 fd7c 	bl	c0de5890 <check_app_canary>
c0de2d98:	f1ba 0f00 	cmp.w	sl, #0
c0de2d9c:	d131      	bne.n	c0de2e02 <tx_indexRootFields+0x412>
c0de2d9e:	f50d 749d 	add.w	r4, sp, #314	; 0x13a
c0de2da2:	4620      	mov	r0, r4
c0de2da4:	f002 fd86 	bl	c0de58b4 <zemu_log_stack>
c0de2da8:	4d3b      	ldr	r5, [pc, #236]	; (c0de2e98 <tx_indexRootFields+0x4a8>)
c0de2daa:	447d      	add	r5, pc
c0de2dac:	4628      	mov	r0, r5
c0de2dae:	f002 fd81 	bl	c0de58b4 <zemu_log_stack>
c0de2db2:	4620      	mov	r0, r4
c0de2db4:	4629      	mov	r1, r5
c0de2db6:	2214      	movs	r2, #20
c0de2db8:	f006 fdb6 	bl	c0de9928 <memcmp>
c0de2dbc:	b1b8      	cbz	r0, c0de2dee <tx_indexRootFields+0x3fe>
c0de2dbe:	f89d 013a 	ldrb.w	r0, [sp, #314]	; 0x13a
c0de2dc2:	f000 00fe 	and.w	r0, r0, #254	; 0xfe
c0de2dc6:	2830      	cmp	r0, #48	; 0x30
c0de2dc8:	d10e      	bne.n	c0de2de8 <tx_indexRootFields+0x3f8>
c0de2dca:	f50d 709d 	add.w	r0, sp, #314	; 0x13a
c0de2dce:	f006 fe03 	bl	c0de99d8 <strlen>
c0de2dd2:	2801      	cmp	r0, #1
c0de2dd4:	d108      	bne.n	c0de2de8 <tx_indexRootFields+0x3f8>
c0de2dd6:	4832      	ldr	r0, [pc, #200]	; (c0de2ea0 <tx_indexRootFields+0x4b0>)
c0de2dd8:	4478      	add	r0, pc
c0de2dda:	f002 fd6b 	bl	c0de58b4 <zemu_log_stack>
c0de2dde:	f04f 0a11 	mov.w	sl, #17
c0de2de2:	e00e      	b.n	c0de2e02 <tx_indexRootFields+0x412>
c0de2de4:	46a2      	mov	sl, r4
c0de2de6:	e78e      	b.n	c0de2d06 <tx_indexRootFields+0x316>
c0de2de8:	482e      	ldr	r0, [pc, #184]	; (c0de2ea4 <tx_indexRootFields+0x4b4>)
c0de2dea:	4478      	add	r0, pc
c0de2dec:	e005      	b.n	c0de2dfa <tx_indexRootFields+0x40a>
c0de2dee:	4823      	ldr	r0, [pc, #140]	; (c0de2e7c <tx_indexRootFields+0x48c>)
c0de2df0:	2101      	movs	r1, #1
c0de2df2:	4448      	add	r0, r9
c0de2df4:	77c1      	strb	r1, [r0, #31]
c0de2df6:	4829      	ldr	r0, [pc, #164]	; (c0de2e9c <tx_indexRootFields+0x4ac>)
c0de2df8:	4478      	add	r0, pc
c0de2dfa:	f002 fd5b 	bl	c0de58b4 <zemu_log_stack>
c0de2dfe:	f04f 0a00 	mov.w	sl, #0
c0de2e02:	f002 fd45 	bl	c0de5890 <check_app_canary>
c0de2e06:	f1ba 0f00 	cmp.w	sl, #0
c0de2e0a:	f47f af7c 	bne.w	c0de2d06 <tx_indexRootFields+0x316>
c0de2e0e:	2000      	movs	r0, #0
c0de2e10:	f88d 013a 	strb.w	r0, [sp, #314]	; 0x13a
c0de2e14:	f50d 709d 	add.w	r0, sp, #314	; 0x13a
c0de2e18:	f000 f846 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de2e1c:	4682      	mov	sl, r0
c0de2e1e:	f002 fd37 	bl	c0de5890 <check_app_canary>
c0de2e22:	f1ba 0f00 	cmp.w	sl, #0
c0de2e26:	f47f af6e 	bne.w	c0de2d06 <tx_indexRootFields+0x316>
c0de2e2a:	4813      	ldr	r0, [pc, #76]	; (c0de2e78 <tx_indexRootFields+0x488>)
c0de2e2c:	f89d 213a 	ldrb.w	r2, [sp, #314]	; 0x13a
c0de2e30:	f641 0118 	movw	r1, #6168	; 0x1818
c0de2e34:	4448      	add	r0, r9
c0de2e36:	2a00      	cmp	r2, #0
c0de2e38:	5c44      	ldrb	r4, [r0, r1]
c0de2e3a:	bf18      	it	ne
c0de2e3c:	f024 0404 	bicne.w	r4, r4, #4
c0de2e40:	f004 02f7 	and.w	r2, r4, #247	; 0xf7
c0de2e44:	5442      	strb	r2, [r0, r1]
c0de2e46:	f641 0128 	movw	r1, #6184	; 0x1828
c0de2e4a:	5840      	ldr	r0, [r0, r1]
c0de2e4c:	2800      	cmp	r0, #0
c0de2e4e:	f43f af5a 	beq.w	c0de2d06 <tx_indexRootFields+0x316>
c0de2e52:	f10d 011e 	add.w	r1, sp, #30
c0de2e56:	f006 fdb5 	bl	c0de99c4 <strcmp>
c0de2e5a:	2800      	cmp	r0, #0
c0de2e5c:	f47f af53 	bne.w	c0de2d06 <tx_indexRootFields+0x316>
c0de2e60:	4805      	ldr	r0, [pc, #20]	; (c0de2e78 <tx_indexRootFields+0x488>)
c0de2e62:	f044 0108 	orr.w	r1, r4, #8
c0de2e66:	f641 0218 	movw	r2, #6168	; 0x1818
c0de2e6a:	4448      	add	r0, r9
c0de2e6c:	5481      	strb	r1, [r0, r2]
c0de2e6e:	e74a      	b.n	c0de2d06 <tx_indexRootFields+0x316>
c0de2e70:	f04f 0a06 	mov.w	sl, #6
c0de2e74:	e747      	b.n	c0de2d06 <tx_indexRootFields+0x316>
c0de2e76:	bf00      	nop
c0de2e78:	000038c4 	.word	0x000038c4
c0de2e7c:	00005108 	.word	0x00005108
c0de2e80:	0000512a 	.word	0x0000512a
c0de2e84:	06020000 	.word	0x06020000
c0de2e88:	00007bd3 	.word	0x00007bd3
c0de2e8c:	000074d0 	.word	0x000074d0
c0de2e90:	000084f4 	.word	0x000084f4
c0de2e94:	00007450 	.word	0x00007450
c0de2e98:	0000848c 	.word	0x0000848c
c0de2e9c:	0000731c 	.word	0x0000731c
c0de2ea0:	00008516 	.word	0x00008516
c0de2ea4:	000073fd 	.word	0x000073fd

c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>:
c0de2ea8:	b570      	push	{r4, r5, r6, lr}
c0de2eaa:	b1a8      	cbz	r0, c0de2ed8 <tx_is_expert_mode_or_not_default_chainid+0x30>
c0de2eac:	4604      	mov	r4, r0
c0de2eae:	480c      	ldr	r0, [pc, #48]	; (c0de2ee0 <tx_is_expert_mode_or_not_default_chainid+0x38>)
c0de2eb0:	eb09 0600 	add.w	r6, r9, r0
c0de2eb4:	f7ff fd9c 	bl	c0de29f0 <tx_indexRootFields>
c0de2eb8:	4605      	mov	r5, r0
c0de2eba:	f002 fce9 	bl	c0de5890 <check_app_canary>
c0de2ebe:	7ff6      	ldrb	r6, [r6, #31]
c0de2ec0:	f002 fce6 	bl	c0de5890 <check_app_canary>
c0de2ec4:	b94d      	cbnz	r5, c0de2eda <tx_is_expert_mode_or_not_default_chainid+0x32>
c0de2ec6:	fab6 f086 	clz	r0, r6
c0de2eca:	0945      	lsrs	r5, r0, #5
c0de2ecc:	f002 fa7e 	bl	c0de53cc <app_mode_expert>
c0de2ed0:	4328      	orrs	r0, r5
c0de2ed2:	2500      	movs	r5, #0
c0de2ed4:	7020      	strb	r0, [r4, #0]
c0de2ed6:	e000      	b.n	c0de2eda <tx_is_expert_mode_or_not_default_chainid+0x32>
c0de2ed8:	2509      	movs	r5, #9
c0de2eda:	4628      	mov	r0, r5
c0de2edc:	bd70      	pop	{r4, r5, r6, pc}
c0de2ede:	bf00      	nop
c0de2ee0:	00005108 	.word	0x00005108

c0de2ee4 <tx_display_numItems>:
c0de2ee4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2ee8:	4680      	mov	r8, r0
c0de2eea:	2000      	movs	r0, #0
c0de2eec:	f888 0000 	strb.w	r0, [r8]
c0de2ef0:	f7ff fd7e 	bl	c0de29f0 <tx_indexRootFields>
c0de2ef4:	f000 fc35 	bl	c0de3762 <OUTLINED_FUNCTION_13>
c0de2ef8:	2e00      	cmp	r6, #0
c0de2efa:	d16f      	bne.n	c0de2fdc <tx_display_numItems+0xf8>
c0de2efc:	4c39      	ldr	r4, [pc, #228]	; (c0de2fe4 <tx_display_numItems+0x100>)
c0de2efe:	2000      	movs	r0, #0
c0de2f00:	f04f 0b00 	mov.w	fp, #0
c0de2f04:	2500      	movs	r5, #0
c0de2f06:	f04f 0a00 	mov.w	sl, #0
c0de2f0a:	f888 0000 	strb.w	r0, [r8]
c0de2f0e:	f1bb 0f07 	cmp.w	fp, #7
c0de2f12:	d062      	beq.n	c0de2fda <tx_display_numItems+0xf6>
c0de2f14:	f7ff fd6c 	bl	c0de29f0 <tx_indexRootFields>
c0de2f18:	f000 fc23 	bl	c0de3762 <OUTLINED_FUNCTION_13>
c0de2f1c:	b10e      	cbz	r6, c0de2f22 <tx_display_numItems+0x3e>
c0de2f1e:	462f      	mov	r7, r5
c0de2f20:	e04d      	b.n	c0de2fbe <tx_display_numItems+0xda>
c0de2f22:	f000 fc0f 	bl	c0de3744 <OUTLINED_FUNCTION_10>
c0de2f26:	d018      	beq.n	c0de2f5a <tx_display_numItems+0x76>
c0de2f28:	eb09 0004 	add.w	r0, r9, r4
c0de2f2c:	4458      	add	r0, fp
c0de2f2e:	7e04      	ldrb	r4, [r0, #24]
c0de2f30:	2000      	movs	r0, #0
c0de2f32:	f88d 0007 	strb.w	r0, [sp, #7]
c0de2f36:	f00a 007f 	and.w	r0, sl, #127	; 0x7f
c0de2f3a:	2803      	cmp	r0, #3
c0de2f3c:	d210      	bcs.n	c0de2f60 <tx_display_numItems+0x7c>
c0de2f3e:	f10d 0007 	add.w	r0, sp, #7
c0de2f42:	f7ff ffb1 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de2f46:	f000 fc0c 	bl	c0de3762 <OUTLINED_FUNCTION_13>
c0de2f4a:	462f      	mov	r7, r5
c0de2f4c:	bbb6      	cbnz	r6, c0de2fbc <tx_display_numItems+0xd8>
c0de2f4e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de2f52:	2800      	cmp	r0, #0
c0de2f54:	bf08      	it	eq
c0de2f56:	4604      	moveq	r4, r0
c0de2f58:	e02e      	b.n	c0de2fb8 <tx_display_numItems+0xd4>
c0de2f5a:	2700      	movs	r7, #0
c0de2f5c:	2600      	movs	r6, #0
c0de2f5e:	e02e      	b.n	c0de2fbe <tx_display_numItems+0xda>
c0de2f60:	d010      	beq.n	c0de2f84 <tx_display_numItems+0xa0>
c0de2f62:	2805      	cmp	r0, #5
c0de2f64:	4627      	mov	r7, r4
c0de2f66:	d128      	bne.n	c0de2fba <tx_display_numItems+0xd6>
c0de2f68:	f10d 0007 	add.w	r0, sp, #7
c0de2f6c:	f7ff ff9c 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de2f70:	f000 fbf7 	bl	c0de3762 <OUTLINED_FUNCTION_13>
c0de2f74:	462f      	mov	r7, r5
c0de2f76:	bb0e      	cbnz	r6, c0de2fbc <tx_display_numItems+0xd8>
c0de2f78:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de2f7c:	2800      	cmp	r0, #0
c0de2f7e:	bf08      	it	eq
c0de2f80:	2401      	moveq	r4, #1
c0de2f82:	e019      	b.n	c0de2fb8 <tx_display_numItems+0xd4>
c0de2f84:	4a18      	ldr	r2, [pc, #96]	; (c0de2fe8 <tx_display_numItems+0x104>)
c0de2f86:	f000 fbce 	bl	c0de3726 <OUTLINED_FUNCTION_3>
c0de2f8a:	d507      	bpl.n	c0de2f9c <tx_display_numItems+0xb8>
c0de2f8c:	eb09 0102 	add.w	r1, r9, r2
c0de2f90:	f641 0319 	movw	r3, #6169	; 0x1819
c0de2f94:	5cc9      	ldrb	r1, [r1, r3]
c0de2f96:	b109      	cbz	r1, c0de2f9c <tx_display_numItems+0xb8>
c0de2f98:	1a61      	subs	r1, r4, r1
c0de2f9a:	1c4c      	adds	r4, r1, #1
c0de2f9c:	0741      	lsls	r1, r0, #29
c0de2f9e:	d50b      	bpl.n	c0de2fb8 <tx_display_numItems+0xd4>
c0de2fa0:	eb09 0102 	add.w	r1, r9, r2
c0de2fa4:	f44f 52c1 	mov.w	r2, #6176	; 0x1820
c0de2fa8:	5c89      	ldrb	r1, [r1, r2]
c0de2faa:	b129      	cbz	r1, c0de2fb8 <tx_display_numItems+0xd4>
c0de2fac:	2201      	movs	r2, #1
c0de2fae:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de2fb2:	4420      	add	r0, r4
c0de2fb4:	1a47      	subs	r7, r0, r1
c0de2fb6:	e000      	b.n	c0de2fba <tx_display_numItems+0xd6>
c0de2fb8:	4627      	mov	r7, r4
c0de2fba:	2600      	movs	r6, #0
c0de2fbc:	4c09      	ldr	r4, [pc, #36]	; (c0de2fe4 <tx_display_numItems+0x100>)
c0de2fbe:	f002 fc67 	bl	c0de5890 <check_app_canary>
c0de2fc2:	b95e      	cbnz	r6, c0de2fdc <tx_display_numItems+0xf8>
c0de2fc4:	f898 0000 	ldrb.w	r0, [r8]
c0de2fc8:	f10a 0a01 	add.w	sl, sl, #1
c0de2fcc:	f10b 0b01 	add.w	fp, fp, #1
c0de2fd0:	463d      	mov	r5, r7
c0de2fd2:	4438      	add	r0, r7
c0de2fd4:	f888 0000 	strb.w	r0, [r8]
c0de2fd8:	e799      	b.n	c0de2f0e <tx_display_numItems+0x2a>
c0de2fda:	2600      	movs	r6, #0
c0de2fdc:	4630      	mov	r0, r6
c0de2fde:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de2fe2:	bf00      	nop
c0de2fe4:	00005108 	.word	0x00005108
c0de2fe8:	000038c4 	.word	0x000038c4

c0de2fec <tx_display_query>:
c0de2fec:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2ff0:	b086      	sub	sp, #24
c0de2ff2:	469a      	mov	sl, r3
c0de2ff4:	4614      	mov	r4, r2
c0de2ff6:	460d      	mov	r5, r1
c0de2ff8:	4606      	mov	r6, r0
c0de2ffa:	f7ff fcf9 	bl	c0de29f0 <tx_indexRootFields>
c0de2ffe:	f000 fb8f 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de3002:	2f00      	cmp	r7, #0
c0de3004:	f040 8229 	bne.w	c0de345a <tx_display_query+0x46e>
c0de3008:	f10d 0012 	add.w	r0, sp, #18
c0de300c:	f7ff ff6a 	bl	c0de2ee4 <tx_display_numItems>
c0de3010:	f000 fb86 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de3014:	2f00      	cmp	r7, #0
c0de3016:	f040 8220 	bne.w	c0de345a <tx_display_query+0x46e>
c0de301a:	f89d 0012 	ldrb.w	r0, [sp, #18]
c0de301e:	42b0      	cmp	r0, r6
c0de3020:	d905      	bls.n	c0de302e <tx_display_query+0x42>
c0de3022:	f7ff fce5 	bl	c0de29f0 <tx_indexRootFields>
c0de3026:	f000 fb7b 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de302a:	b117      	cbz	r7, c0de3032 <tx_display_query+0x46>
c0de302c:	e01c      	b.n	c0de3068 <tx_display_query+0x7c>
c0de302e:	2703      	movs	r7, #3
c0de3030:	e213      	b.n	c0de345a <tx_display_query+0x46e>
c0de3032:	f8df 0440 	ldr.w	r0, [pc, #1088]	; c0de3474 <tx_display_query+0x488>
c0de3036:	f04f 0b00 	mov.w	fp, #0
c0de303a:	eb09 0100 	add.w	r1, r9, r0
c0de303e:	8ac9      	ldrh	r1, [r1, #22]
c0de3040:	b189      	cbz	r1, c0de3066 <tx_display_query+0x7a>
c0de3042:	4448      	add	r0, r9
c0de3044:	f88d b013 	strb.w	fp, [sp, #19]
c0de3048:	f890 8018 	ldrb.w	r8, [r0, #24]
c0de304c:	f10d 0013 	add.w	r0, sp, #19
c0de3050:	f7ff ff2a 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de3054:	f000 fb64 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de3058:	f89d 0013 	ldrb.w	r0, [sp, #19]
c0de305c:	2800      	cmp	r0, #0
c0de305e:	bf08      	it	eq
c0de3060:	4680      	moveq	r8, r0
c0de3062:	46c3      	mov	fp, r8
c0de3064:	e000      	b.n	c0de3068 <tx_display_query+0x7c>
c0de3066:	2700      	movs	r7, #0
c0de3068:	f002 fc12 	bl	c0de5890 <check_app_canary>
c0de306c:	2000      	movs	r0, #0
c0de306e:	9003      	str	r0, [sp, #12]
c0de3070:	b10f      	cbz	r7, c0de3076 <tx_display_query+0x8a>
c0de3072:	2600      	movs	r6, #0
c0de3074:	e17c      	b.n	c0de3370 <tx_display_query+0x384>
c0de3076:	e9cd 5400 	strd	r5, r4, [sp]
c0de307a:	f8df 43f8 	ldr.w	r4, [pc, #1016]	; c0de3474 <tx_display_query+0x488>
c0de307e:	f8df 53f8 	ldr.w	r5, [pc, #1016]	; c0de3478 <tx_display_query+0x48c>
c0de3082:	f04f 0800 	mov.w	r8, #0
c0de3086:	f8cd a008 	str.w	sl, [sp, #8]
c0de308a:	46c2      	mov	sl, r8
c0de308c:	ea5f 600b 	movs.w	r0, fp, lsl #24
c0de3090:	d163      	bne.n	c0de315a <tx_display_query+0x16e>
c0de3092:	f7ff fcad 	bl	c0de29f0 <tx_indexRootFields>
c0de3096:	4607      	mov	r7, r0
c0de3098:	f10a 0801 	add.w	r8, sl, #1
c0de309c:	f002 fbf8 	bl	c0de5890 <check_app_canary>
c0de30a0:	b117      	cbz	r7, c0de30a8 <tx_display_query+0xbc>
c0de30a2:	f04f 0b00 	mov.w	fp, #0
c0de30a6:	e025      	b.n	c0de30f4 <tx_display_query+0x108>
c0de30a8:	f000 fb4c 	bl	c0de3744 <OUTLINED_FUNCTION_10>
c0de30ac:	d01f      	beq.n	c0de30ee <tx_display_query+0x102>
c0de30ae:	eb09 0004 	add.w	r0, r9, r4
c0de30b2:	fa5f f188 	uxtb.w	r1, r8
c0de30b6:	4408      	add	r0, r1
c0de30b8:	f890 b018 	ldrb.w	fp, [r0, #24]
c0de30bc:	2000      	movs	r0, #0
c0de30be:	f88d 0014 	strb.w	r0, [sp, #20]
c0de30c2:	fa5f f08a 	uxtb.w	r0, sl
c0de30c6:	2802      	cmp	r0, #2
c0de30c8:	d304      	bcc.n	c0de30d4 <tx_display_query+0xe8>
c0de30ca:	d018      	beq.n	c0de30fe <tx_display_query+0x112>
c0de30cc:	2804      	cmp	r0, #4
c0de30ce:	d036      	beq.n	c0de313e <tx_display_query+0x152>
c0de30d0:	28ff      	cmp	r0, #255	; 0xff
c0de30d2:	d10e      	bne.n	c0de30f2 <tx_display_query+0x106>
c0de30d4:	a805      	add	r0, sp, #20
c0de30d6:	f7ff fee7 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de30da:	f000 fb21 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de30de:	2f00      	cmp	r7, #0
c0de30e0:	d1df      	bne.n	c0de30a2 <tx_display_query+0xb6>
c0de30e2:	f89d 0014 	ldrb.w	r0, [sp, #20]
c0de30e6:	2800      	cmp	r0, #0
c0de30e8:	bf08      	it	eq
c0de30ea:	4683      	moveq	fp, r0
c0de30ec:	e001      	b.n	c0de30f2 <tx_display_query+0x106>
c0de30ee:	f04f 0b00 	mov.w	fp, #0
c0de30f2:	2700      	movs	r7, #0
c0de30f4:	f002 fbcc 	bl	c0de5890 <check_app_canary>
c0de30f8:	2f00      	cmp	r7, #0
c0de30fa:	d0c6      	beq.n	c0de308a <tx_display_query+0x9e>
c0de30fc:	e131      	b.n	c0de3362 <tx_display_query+0x376>
c0de30fe:	eb09 0005 	add.w	r0, r9, r5
c0de3102:	f641 0118 	movw	r1, #6168	; 0x1818
c0de3106:	5c40      	ldrb	r0, [r0, r1]
c0de3108:	0781      	lsls	r1, r0, #30
c0de310a:	d508      	bpl.n	c0de311e <tx_display_query+0x132>
c0de310c:	eb09 0105 	add.w	r1, r9, r5
c0de3110:	f000 fb1d 	bl	c0de374e <OUTLINED_FUNCTION_11>
c0de3114:	d003      	beq.n	c0de311e <tx_display_query+0x132>
c0de3116:	ebab 0101 	sub.w	r1, fp, r1
c0de311a:	f101 0b01 	add.w	fp, r1, #1
c0de311e:	0741      	lsls	r1, r0, #29
c0de3120:	d5e7      	bpl.n	c0de30f2 <tx_display_query+0x106>
c0de3122:	eb09 0105 	add.w	r1, r9, r5
c0de3126:	f44f 52c1 	mov.w	r2, #6176	; 0x1820
c0de312a:	5c89      	ldrb	r1, [r1, r2]
c0de312c:	2900      	cmp	r1, #0
c0de312e:	d0e0      	beq.n	c0de30f2 <tx_display_query+0x106>
c0de3130:	2201      	movs	r2, #1
c0de3132:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de3136:	4458      	add	r0, fp
c0de3138:	eba0 0b01 	sub.w	fp, r0, r1
c0de313c:	e7d9      	b.n	c0de30f2 <tx_display_query+0x106>
c0de313e:	a805      	add	r0, sp, #20
c0de3140:	f7ff feb2 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de3144:	f000 faec 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de3148:	2f00      	cmp	r7, #0
c0de314a:	d1aa      	bne.n	c0de30a2 <tx_display_query+0xb6>
c0de314c:	f89d 0014 	ldrb.w	r0, [sp, #20]
c0de3150:	2800      	cmp	r0, #0
c0de3152:	bf08      	it	eq
c0de3154:	f04f 0b01 	moveq.w	fp, #1
c0de3158:	e7cb      	b.n	c0de30f2 <tx_display_query+0x106>
c0de315a:	b2f5      	uxtb	r5, r6
c0de315c:	f04f 0b00 	mov.w	fp, #0
c0de3160:	2600      	movs	r6, #0
c0de3162:	f04f 0800 	mov.w	r8, #0
c0de3166:	9503      	str	r5, [sp, #12]
c0de3168:	e041      	b.n	c0de31ee <tx_display_query+0x202>
c0de316a:	46aa      	mov	sl, r5
c0de316c:	bbc4      	cbnz	r4, c0de31e0 <tx_display_query+0x1f4>
c0de316e:	f7ff fc3f 	bl	c0de29f0 <tx_indexRootFields>
c0de3172:	f000 faf1 	bl	c0de3758 <OUTLINED_FUNCTION_12>
c0de3176:	2f00      	cmp	r7, #0
c0de3178:	f040 80cb 	bne.w	c0de3312 <tx_display_query+0x326>
c0de317c:	49bd      	ldr	r1, [pc, #756]	; (c0de3474 <tx_display_query+0x488>)
c0de317e:	eb09 0001 	add.w	r0, r9, r1
c0de3182:	8ac0      	ldrh	r0, [r0, #22]
c0de3184:	2800      	cmp	r0, #0
c0de3186:	f000 80c2 	beq.w	c0de330e <tx_display_query+0x322>
c0de318a:	eb09 0001 	add.w	r0, r9, r1
c0de318e:	b2e9      	uxtb	r1, r5
c0de3190:	f88d 6017 	strb.w	r6, [sp, #23]
c0de3194:	4408      	add	r0, r1
c0de3196:	7e04      	ldrb	r4, [r0, #24]
c0de3198:	fa5f f08a 	uxtb.w	r0, sl
c0de319c:	2802      	cmp	r0, #2
c0de319e:	d306      	bcc.n	c0de31ae <tx_display_query+0x1c2>
c0de31a0:	f000 80bd 	beq.w	c0de331e <tx_display_query+0x332>
c0de31a4:	2804      	cmp	r0, #4
c0de31a6:	d00d      	beq.n	c0de31c4 <tx_display_query+0x1d8>
c0de31a8:	28ff      	cmp	r0, #255	; 0xff
c0de31aa:	f040 80d0 	bne.w	c0de334e <tx_display_query+0x362>
c0de31ae:	4658      	mov	r0, fp
c0de31b0:	f7ff fe7a 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de31b4:	f000 fab4 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de31b8:	2f00      	cmp	r7, #0
c0de31ba:	f040 80aa 	bne.w	c0de3312 <tx_display_query+0x326>
c0de31be:	f89d 0017 	ldrb.w	r0, [sp, #23]
c0de31c2:	e0a8      	b.n	c0de3316 <tx_display_query+0x32a>
c0de31c4:	4658      	mov	r0, fp
c0de31c6:	f7ff fe6f 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de31ca:	f000 faa9 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de31ce:	2f00      	cmp	r7, #0
c0de31d0:	f040 809f 	bne.w	c0de3312 <tx_display_query+0x326>
c0de31d4:	f89d 0017 	ldrb.w	r0, [sp, #23]
c0de31d8:	2800      	cmp	r0, #0
c0de31da:	bf08      	it	eq
c0de31dc:	2401      	moveq	r4, #1
c0de31de:	e0b6      	b.n	c0de334e <tx_display_query+0x362>
c0de31e0:	9d03      	ldr	r5, [sp, #12]
c0de31e2:	f04f 0b00 	mov.w	fp, #0
c0de31e6:	2600      	movs	r6, #0
c0de31e8:	4ca2      	ldr	r4, [pc, #648]	; (c0de3474 <tx_display_query+0x488>)
c0de31ea:	f108 0801 	add.w	r8, r8, #1
c0de31ee:	45a8      	cmp	r8, r5
c0de31f0:	f080 8137 	bcs.w	c0de3462 <tx_display_query+0x476>
c0de31f4:	f7ff fbfc 	bl	c0de29f0 <tx_indexRootFields>
c0de31f8:	f000 fa92 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de31fc:	b10f      	cbz	r7, c0de3202 <tx_display_query+0x216>
c0de31fe:	2400      	movs	r4, #0
c0de3200:	e047      	b.n	c0de3292 <tx_display_query+0x2a6>
c0de3202:	f000 fa9f 	bl	c0de3744 <OUTLINED_FUNCTION_10>
c0de3206:	d017      	beq.n	c0de3238 <tx_display_query+0x24c>
c0de3208:	fa5f f08a 	uxtb.w	r0, sl
c0de320c:	eb09 0104 	add.w	r1, r9, r4
c0de3210:	f88d b015 	strb.w	fp, [sp, #21]
c0de3214:	4401      	add	r1, r0
c0de3216:	2803      	cmp	r0, #3
c0de3218:	7e0c      	ldrb	r4, [r1, #24]
c0de321a:	d20f      	bcs.n	c0de323c <tx_display_query+0x250>
c0de321c:	f10d 0015 	add.w	r0, sp, #21
c0de3220:	f7ff fe42 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de3224:	f000 fa7c 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de3228:	2f00      	cmp	r7, #0
c0de322a:	d1e8      	bne.n	c0de31fe <tx_display_query+0x212>
c0de322c:	f89d 0015 	ldrb.w	r0, [sp, #21]
c0de3230:	2800      	cmp	r0, #0
c0de3232:	bf08      	it	eq
c0de3234:	4604      	moveq	r4, r0
c0de3236:	e02a      	b.n	c0de328e <tx_display_query+0x2a2>
c0de3238:	2400      	movs	r4, #0
c0de323a:	e029      	b.n	c0de3290 <tx_display_query+0x2a4>
c0de323c:	d00f      	beq.n	c0de325e <tx_display_query+0x272>
c0de323e:	2805      	cmp	r0, #5
c0de3240:	d125      	bne.n	c0de328e <tx_display_query+0x2a2>
c0de3242:	f10d 0015 	add.w	r0, sp, #21
c0de3246:	f7ff fe2f 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de324a:	f000 fa69 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de324e:	2f00      	cmp	r7, #0
c0de3250:	d1d5      	bne.n	c0de31fe <tx_display_query+0x212>
c0de3252:	f89d 0015 	ldrb.w	r0, [sp, #21]
c0de3256:	2800      	cmp	r0, #0
c0de3258:	bf08      	it	eq
c0de325a:	2401      	moveq	r4, #1
c0de325c:	e017      	b.n	c0de328e <tx_display_query+0x2a2>
c0de325e:	4a86      	ldr	r2, [pc, #536]	; (c0de3478 <tx_display_query+0x48c>)
c0de3260:	f000 fa61 	bl	c0de3726 <OUTLINED_FUNCTION_3>
c0de3264:	d506      	bpl.n	c0de3274 <tx_display_query+0x288>
c0de3266:	eb09 0102 	add.w	r1, r9, r2
c0de326a:	f000 fa70 	bl	c0de374e <OUTLINED_FUNCTION_11>
c0de326e:	d001      	beq.n	c0de3274 <tx_display_query+0x288>
c0de3270:	1a61      	subs	r1, r4, r1
c0de3272:	1c4c      	adds	r4, r1, #1
c0de3274:	0741      	lsls	r1, r0, #29
c0de3276:	d50a      	bpl.n	c0de328e <tx_display_query+0x2a2>
c0de3278:	497f      	ldr	r1, [pc, #508]	; (c0de3478 <tx_display_query+0x48c>)
c0de327a:	f44f 52c1 	mov.w	r2, #6176	; 0x1820
c0de327e:	4449      	add	r1, r9
c0de3280:	5c89      	ldrb	r1, [r1, r2]
c0de3282:	b121      	cbz	r1, c0de328e <tx_display_query+0x2a2>
c0de3284:	2201      	movs	r2, #1
c0de3286:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de328a:	4420      	add	r0, r4
c0de328c:	1a44      	subs	r4, r0, r1
c0de328e:	b2e4      	uxtb	r4, r4
c0de3290:	2700      	movs	r7, #0
c0de3292:	3601      	adds	r6, #1
c0de3294:	f002 fafc 	bl	c0de5890 <check_app_canary>
c0de3298:	2f00      	cmp	r7, #0
c0de329a:	f040 80e8 	bne.w	c0de346e <tx_display_query+0x482>
c0de329e:	42a6      	cmp	r6, r4
c0de32a0:	d3a2      	bcc.n	c0de31e8 <tx_display_query+0x1fc>
c0de32a2:	f7ff fba5 	bl	c0de29f0 <tx_indexRootFields>
c0de32a6:	f000 fa57 	bl	c0de3758 <OUTLINED_FUNCTION_12>
c0de32aa:	b127      	cbz	r7, c0de32b6 <tx_display_query+0x2ca>
c0de32ac:	2400      	movs	r4, #0
c0de32ae:	2600      	movs	r6, #0
c0de32b0:	f10d 0b17 	add.w	fp, sp, #23
c0de32b4:	e04d      	b.n	c0de3352 <tx_display_query+0x366>
c0de32b6:	496f      	ldr	r1, [pc, #444]	; (c0de3474 <tx_display_query+0x488>)
c0de32b8:	2600      	movs	r6, #0
c0de32ba:	f10d 0b17 	add.w	fp, sp, #23
c0de32be:	eb09 0001 	add.w	r0, r9, r1
c0de32c2:	8ac0      	ldrh	r0, [r0, #22]
c0de32c4:	b318      	cbz	r0, c0de330e <tx_display_query+0x322>
c0de32c6:	eb09 0001 	add.w	r0, r9, r1
c0de32ca:	b2e9      	uxtb	r1, r5
c0de32cc:	f88d 6016 	strb.w	r6, [sp, #22]
c0de32d0:	4408      	add	r0, r1
c0de32d2:	7e04      	ldrb	r4, [r0, #24]
c0de32d4:	fa5f f08a 	uxtb.w	r0, sl
c0de32d8:	2802      	cmp	r0, #2
c0de32da:	d304      	bcc.n	c0de32e6 <tx_display_query+0x2fa>
c0de32dc:	d01f      	beq.n	c0de331e <tx_display_query+0x332>
c0de32de:	2804      	cmp	r0, #4
c0de32e0:	d00b      	beq.n	c0de32fa <tx_display_query+0x30e>
c0de32e2:	28ff      	cmp	r0, #255	; 0xff
c0de32e4:	d133      	bne.n	c0de334e <tx_display_query+0x362>
c0de32e6:	f10d 0016 	add.w	r0, sp, #22
c0de32ea:	f7ff fddd 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de32ee:	f000 fa17 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de32f2:	b977      	cbnz	r7, c0de3312 <tx_display_query+0x326>
c0de32f4:	f89d 0016 	ldrb.w	r0, [sp, #22]
c0de32f8:	e00d      	b.n	c0de3316 <tx_display_query+0x32a>
c0de32fa:	f10d 0016 	add.w	r0, sp, #22
c0de32fe:	f7ff fdd3 	bl	c0de2ea8 <tx_is_expert_mode_or_not_default_chainid>
c0de3302:	f000 fa0d 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de3306:	b927      	cbnz	r7, c0de3312 <tx_display_query+0x326>
c0de3308:	f89d 0016 	ldrb.w	r0, [sp, #22]
c0de330c:	e764      	b.n	c0de31d8 <tx_display_query+0x1ec>
c0de330e:	2400      	movs	r4, #0
c0de3310:	e01e      	b.n	c0de3350 <tx_display_query+0x364>
c0de3312:	2400      	movs	r4, #0
c0de3314:	e01d      	b.n	c0de3352 <tx_display_query+0x366>
c0de3316:	2800      	cmp	r0, #0
c0de3318:	bf08      	it	eq
c0de331a:	4604      	moveq	r4, r0
c0de331c:	e017      	b.n	c0de334e <tx_display_query+0x362>
c0de331e:	4a56      	ldr	r2, [pc, #344]	; (c0de3478 <tx_display_query+0x48c>)
c0de3320:	f000 fa01 	bl	c0de3726 <OUTLINED_FUNCTION_3>
c0de3324:	d506      	bpl.n	c0de3334 <tx_display_query+0x348>
c0de3326:	eb09 0102 	add.w	r1, r9, r2
c0de332a:	f000 fa10 	bl	c0de374e <OUTLINED_FUNCTION_11>
c0de332e:	d001      	beq.n	c0de3334 <tx_display_query+0x348>
c0de3330:	1a61      	subs	r1, r4, r1
c0de3332:	1c4c      	adds	r4, r1, #1
c0de3334:	0741      	lsls	r1, r0, #29
c0de3336:	d50a      	bpl.n	c0de334e <tx_display_query+0x362>
c0de3338:	494f      	ldr	r1, [pc, #316]	; (c0de3478 <tx_display_query+0x48c>)
c0de333a:	f44f 52c1 	mov.w	r2, #6176	; 0x1820
c0de333e:	4449      	add	r1, r9
c0de3340:	5c89      	ldrb	r1, [r1, r2]
c0de3342:	b121      	cbz	r1, c0de334e <tx_display_query+0x362>
c0de3344:	2201      	movs	r2, #1
c0de3346:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de334a:	4420      	add	r0, r4
c0de334c:	1a44      	subs	r4, r0, r1
c0de334e:	b2e4      	uxtb	r4, r4
c0de3350:	2700      	movs	r7, #0
c0de3352:	f002 fa9d 	bl	c0de5890 <check_app_canary>
c0de3356:	2f00      	cmp	r7, #0
c0de3358:	f43f af07 	beq.w	c0de316a <tx_display_query+0x17e>
c0de335c:	9503      	str	r5, [sp, #12]
c0de335e:	2600      	movs	r6, #0
c0de3360:	e002      	b.n	c0de3368 <tx_display_query+0x37c>
c0de3362:	2600      	movs	r6, #0
c0de3364:	f8cd 800c 	str.w	r8, [sp, #12]
c0de3368:	f8dd a008 	ldr.w	sl, [sp, #8]
c0de336c:	e9dd 5400 	ldrd	r5, r4, [sp]
c0de3370:	f002 fa8e 	bl	c0de5890 <check_app_canary>
c0de3374:	2f00      	cmp	r7, #0
c0de3376:	d170      	bne.n	c0de345a <tx_display_query+0x46e>
c0de3378:	f8df c0fc 	ldr.w	ip, [pc, #252]	; c0de3478 <tx_display_query+0x48c>
c0de337c:	f641 072c 	movw	r7, #6188	; 0x182c
c0de3380:	2000      	movs	r0, #0
c0de3382:	2206      	movs	r2, #6
c0de3384:	e9cd 6a01 	strd	r6, sl, [sp, #4]
c0de3388:	462e      	mov	r6, r5
c0de338a:	eb09 010c 	add.w	r1, r9, ip
c0de338e:	53c8      	strh	r0, [r1, r7]
c0de3390:	4439      	add	r1, r7
c0de3392:	70ca      	strb	r2, [r1, #3]
c0de3394:	9903      	ldr	r1, [sp, #12]
c0de3396:	fa5f fb81 	uxtb.w	fp, r1
c0de339a:	f1bb 0f03 	cmp.w	fp, #3
c0de339e:	d30d      	bcc.n	c0de33bc <tx_display_query+0x3d0>
c0de33a0:	d00e      	beq.n	c0de33c0 <tx_display_query+0x3d4>
c0de33a2:	f1bb 0f04 	cmp.w	fp, #4
c0de33a6:	f04f 0102 	mov.w	r1, #2
c0de33aa:	d012      	beq.n	c0de33d2 <tx_display_query+0x3e6>
c0de33ac:	f1bb 0f06 	cmp.w	fp, #6
c0de33b0:	d002      	beq.n	c0de33b8 <tx_display_query+0x3cc>
c0de33b2:	f1bb 0f05 	cmp.w	fp, #5
c0de33b6:	d10b      	bne.n	c0de33d0 <tx_display_query+0x3e4>
c0de33b8:	2101      	movs	r1, #1
c0de33ba:	e00a      	b.n	c0de33d2 <tx_display_query+0x3e6>
c0de33bc:	2102      	movs	r1, #2
c0de33be:	e008      	b.n	c0de33d2 <tx_display_query+0x3e6>
c0de33c0:	492e      	ldr	r1, [pc, #184]	; (c0de347c <tx_display_query+0x490>)
c0de33c2:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de33c6:	2103      	movs	r1, #3
c0de33c8:	2a00      	cmp	r2, #0
c0de33ca:	bf08      	it	eq
c0de33cc:	2102      	moveq	r1, #2
c0de33ce:	e000      	b.n	c0de33d2 <tx_display_query+0x3e6>
c0de33d0:	2100      	movs	r1, #0
c0de33d2:	eb09 0a0c 	add.w	sl, r9, ip
c0de33d6:	eb0a 0807 	add.w	r8, sl, r7
c0de33da:	f8c8 0004 	str.w	r0, [r8, #4]
c0de33de:	f888 1002 	strb.w	r1, [r8, #2]
c0de33e2:	4630      	mov	r0, r6
c0de33e4:	4621      	mov	r1, r4
c0de33e6:	4d27      	ldr	r5, [pc, #156]	; (c0de3484 <tx_display_query+0x498>)
c0de33e8:	447d      	add	r5, pc
c0de33ea:	47a8      	blx	r5
c0de33ec:	4824      	ldr	r0, [pc, #144]	; (c0de3480 <tx_display_query+0x494>)
c0de33ee:	2102      	movs	r1, #2
c0de33f0:	eb09 0700 	add.w	r7, r9, r0
c0de33f4:	4638      	mov	r0, r7
c0de33f6:	47a8      	blx	r5
c0de33f8:	2000      	movs	r0, #0
c0de33fa:	f641 012c 	movw	r1, #6188	; 0x182c
c0de33fe:	f8c8 7010 	str.w	r7, [r8, #16]
c0de3402:	f8c8 6008 	str.w	r6, [r8, #8]
c0de3406:	f8a8 400c 	strh.w	r4, [r8, #12]
c0de340a:	4637      	mov	r7, r6
c0de340c:	f82a 0001 	strh.w	r0, [sl, r1]
c0de3410:	2002      	movs	r0, #2
c0de3412:	4621      	mov	r1, r4
c0de3414:	f8a8 0014 	strh.w	r0, [r8, #20]
c0de3418:	9801      	ldr	r0, [sp, #4]
c0de341a:	b2c0      	uxtb	r0, r0
c0de341c:	f8a8 0004 	strh.w	r0, [r8, #4]
c0de3420:	4630      	mov	r0, r6
c0de3422:	47a8      	blx	r5
c0de3424:	b13c      	cbz	r4, c0de3436 <tx_display_query+0x44a>
c0de3426:	4658      	mov	r0, fp
c0de3428:	f7ff faac 	bl	c0de2984 <get_required_root_item>
c0de342c:	4601      	mov	r1, r0
c0de342e:	1e62      	subs	r2, r4, #1
c0de3430:	4638      	mov	r0, r7
c0de3432:	f006 faed 	bl	c0de9a10 <strncpy>
c0de3436:	480f      	ldr	r0, [pc, #60]	; (c0de3474 <tx_display_query+0x488>)
c0de3438:	eb09 0100 	add.w	r1, r9, r0
c0de343c:	f811 100b 	ldrb.w	r1, [r1, fp]
c0de3440:	2900      	cmp	r1, #0
c0de3442:	9902      	ldr	r1, [sp, #8]
c0de3444:	d008      	beq.n	c0de3458 <tx_display_query+0x46c>
c0de3446:	4448      	add	r0, r9
c0de3448:	eb00 004b 	add.w	r0, r0, fp, lsl #1
c0de344c:	8900      	ldrh	r0, [r0, #8]
c0de344e:	f000 fa29 	bl	c0de38a4 <tx_traverse_find>
c0de3452:	f000 f965 	bl	c0de3720 <OUTLINED_FUNCTION_1>
c0de3456:	e000      	b.n	c0de345a <tx_display_query+0x46e>
c0de3458:	2701      	movs	r7, #1
c0de345a:	4638      	mov	r0, r7
c0de345c:	b006      	add	sp, #24
c0de345e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3462:	fa5f f08a 	uxtb.w	r0, sl
c0de3466:	2700      	movs	r7, #0
c0de3468:	2807      	cmp	r0, #7
c0de346a:	bf88      	it	hi
c0de346c:	2701      	movhi	r7, #1
c0de346e:	f8cd a00c 	str.w	sl, [sp, #12]
c0de3472:	e779      	b.n	c0de3368 <tx_display_query+0x37c>
c0de3474:	00005108 	.word	0x00005108
c0de3478:	000038c4 	.word	0x000038c4
c0de347c:	0000512a 	.word	0x0000512a
c0de3480:	00005128 	.word	0x00005128
c0de3484:	00006531 	.word	0x00006531

c0de3488 <tx_display_make_friendly>:
c0de3488:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de348c:	f7ff fab0 	bl	c0de29f0 <tx_indexRootFields>
c0de3490:	4604      	mov	r4, r0
c0de3492:	f002 f9fd 	bl	c0de5890 <check_app_canary>
c0de3496:	2c00      	cmp	r4, #0
c0de3498:	d14a      	bne.n	c0de3530 <tx_display_make_friendly+0xa8>
c0de349a:	4828      	ldr	r0, [pc, #160]	; (c0de353c <tx_display_make_friendly+0xb4>)
c0de349c:	f8df 8098 	ldr.w	r8, [pc, #152]	; c0de3538 <tx_display_make_friendly+0xb0>
c0de34a0:	2600      	movs	r6, #0
c0de34a2:	4478      	add	r0, pc
c0de34a4:	4683      	mov	fp, r0
c0de34a6:	2e68      	cmp	r6, #104	; 0x68
c0de34a8:	d041      	beq.n	c0de352e <tx_display_make_friendly+0xa6>
c0de34aa:	f85b 0036 	ldr.w	r0, [fp, r6, lsl #3]
c0de34ae:	eb0b 04c6 	add.w	r4, fp, r6, lsl #3
c0de34b2:	f006 f8f5 	bl	c0de96a0 <pic>
c0de34b6:	4605      	mov	r5, r0
c0de34b8:	6860      	ldr	r0, [r4, #4]
c0de34ba:	f006 f8f1 	bl	c0de96a0 <pic>
c0de34be:	4604      	mov	r4, r0
c0de34c0:	4628      	mov	r0, r5
c0de34c2:	f006 fa89 	bl	c0de99d8 <strlen>
c0de34c6:	4607      	mov	r7, r0
c0de34c8:	4620      	mov	r0, r4
c0de34ca:	f006 fa85 	bl	c0de99d8 <strlen>
c0de34ce:	4682      	mov	sl, r0
c0de34d0:	eb09 0108 	add.w	r1, r9, r8
c0de34d4:	f641 0034 	movw	r0, #6196	; 0x1834
c0de34d8:	f641 0238 	movw	r2, #6200	; 0x1838
c0de34dc:	5808      	ldr	r0, [r1, r0]
c0de34de:	5a89      	ldrh	r1, [r1, r2]
c0de34e0:	f006 faa9 	bl	c0de9a36 <strnlen>
c0de34e4:	b282      	uxth	r2, r0
c0de34e6:	b2b8      	uxth	r0, r7
c0de34e8:	4282      	cmp	r2, r0
c0de34ea:	d112      	bne.n	c0de3512 <tx_display_make_friendly+0x8a>
c0de34ec:	eb09 0008 	add.w	r0, r9, r8
c0de34f0:	f641 0134 	movw	r1, #6196	; 0x1834
c0de34f4:	5847      	ldr	r7, [r0, r1]
c0de34f6:	4629      	mov	r1, r5
c0de34f8:	4638      	mov	r0, r7
c0de34fa:	f006 fa75 	bl	c0de99e8 <strncmp>
c0de34fe:	b940      	cbnz	r0, c0de3512 <tx_display_make_friendly+0x8a>
c0de3500:	eb09 0008 	add.w	r0, r9, r8
c0de3504:	f641 0138 	movw	r1, #6200	; 0x1838
c0de3508:	fa1f f58a 	uxth.w	r5, sl
c0de350c:	5a41      	ldrh	r1, [r0, r1]
c0de350e:	428d      	cmp	r5, r1
c0de3510:	d901      	bls.n	c0de3516 <tx_display_make_friendly+0x8e>
c0de3512:	3601      	adds	r6, #1
c0de3514:	e7c7      	b.n	c0de34a6 <tx_display_make_friendly+0x1e>
c0de3516:	4638      	mov	r0, r7
c0de3518:	f006 fa00 	bl	c0de991c <explicit_bzero>
c0de351c:	eb09 0008 	add.w	r0, r9, r8
c0de3520:	f641 0134 	movw	r1, #6196	; 0x1834
c0de3524:	462a      	mov	r2, r5
c0de3526:	5840      	ldr	r0, [r0, r1]
c0de3528:	4621      	mov	r1, r4
c0de352a:	f006 f9f0 	bl	c0de990e <__aeabi_memmove>
c0de352e:	2400      	movs	r4, #0
c0de3530:	4620      	mov	r0, r4
c0de3532:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3536:	bf00      	nop
c0de3538:	000038c4 	.word	0x000038c4
c0de353c:	0000818a 	.word	0x0000818a

c0de3540 <tx_display_translation>:
c0de3540:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3544:	b08c      	sub	sp, #48	; 0x30
c0de3546:	461e      	mov	r6, r3
c0de3548:	4617      	mov	r7, r2
c0de354a:	460d      	mov	r5, r1
c0de354c:	4604      	mov	r4, r0
c0de354e:	f006 f9e5 	bl	c0de991c <explicit_bzero>
c0de3552:	a805      	add	r0, sp, #20
c0de3554:	eb07 0806 	add.w	r8, r7, r6
c0de3558:	f04f 0b00 	mov.w	fp, #0
c0de355c:	463e      	mov	r6, r7
c0de355e:	f04f 0a00 	mov.w	sl, #0
c0de3562:	9701      	str	r7, [sp, #4]
c0de3564:	3001      	adds	r0, #1
c0de3566:	9004      	str	r0, [sp, #16]
c0de3568:	4638      	mov	r0, r7
c0de356a:	4546      	cmp	r6, r8
c0de356c:	f080 80af 	bcs.w	c0de36ce <tx_display_translation+0x18e>
c0de3570:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
c0de3574:	4630      	mov	r0, r6
c0de3576:	a90b      	add	r1, sp, #44	; 0x2c
c0de3578:	f7ff f9d0 	bl	c0de291c <utf8codepoint>
c0de357c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
c0de357e:	4606      	mov	r6, r0
c0de3580:	2b0f      	cmp	r3, #15
c0de3582:	db01      	blt.n	c0de3588 <tx_display_translation+0x48>
c0de3584:	2b5c      	cmp	r3, #92	; 0x5c
c0de3586:	d12d      	bne.n	c0de35e4 <tx_display_translation+0xa4>
c0de3588:	2000      	movs	r0, #0
c0de358a:	2808      	cmp	r0, #8
c0de358c:	d008      	beq.n	c0de35a0 <tx_display_translation+0x60>
c0de358e:	4961      	ldr	r1, [pc, #388]	; (c0de3714 <tx_display_translation+0x1d4>)
c0de3590:	b2df      	uxtb	r7, r3
c0de3592:	4479      	add	r1, pc
c0de3594:	f811 2010 	ldrb.w	r2, [r1, r0, lsl #1]
c0de3598:	42ba      	cmp	r2, r7
c0de359a:	d00e      	beq.n	c0de35ba <tx_display_translation+0x7a>
c0de359c:	3001      	adds	r0, #1
c0de359e:	e7f4      	b.n	c0de358a <tx_display_translation+0x4a>
c0de35a0:	fa1f f08a 	uxth.w	r0, sl
c0de35a4:	42a8      	cmp	r0, r5
c0de35a6:	f200 80ae 	bhi.w	c0de3706 <tx_display_translation+0x1c6>
c0de35aa:	4a5b      	ldr	r2, [pc, #364]	; (c0de3718 <tx_display_translation+0x1d8>)
c0de35ac:	4620      	mov	r0, r4
c0de35ae:	2104      	movs	r1, #4
c0de35b0:	447a      	add	r2, pc
c0de35b2:	f005 fee9 	bl	c0de9388 <snprintf>
c0de35b6:	3404      	adds	r4, #4
c0de35b8:	e7d7      	b.n	c0de356a <tx_display_translation+0x2a>
c0de35ba:	f10a 0201 	add.w	r2, sl, #1
c0de35be:	b292      	uxth	r2, r2
c0de35c0:	42aa      	cmp	r2, r5
c0de35c2:	f200 809e 	bhi.w	c0de3702 <tx_display_translation+0x1c2>
c0de35c6:	225c      	movs	r2, #92	; 0x5c
c0de35c8:	f10a 0a02 	add.w	sl, sl, #2
c0de35cc:	7022      	strb	r2, [r4, #0]
c0de35ce:	fa1f f28a 	uxth.w	r2, sl
c0de35d2:	42aa      	cmp	r2, r5
c0de35d4:	f200 8095 	bhi.w	c0de3702 <tx_display_translation+0x1c2>
c0de35d8:	eb01 0040 	add.w	r0, r1, r0, lsl #1
c0de35dc:	7840      	ldrb	r0, [r0, #1]
c0de35de:	7060      	strb	r0, [r4, #1]
c0de35e0:	3402      	adds	r4, #2
c0de35e2:	e7c2      	b.n	c0de356a <tx_display_translation+0x2a>
c0de35e4:	f1a3 0120 	sub.w	r1, r3, #32
c0de35e8:	f10a 0001 	add.w	r0, sl, #1
c0de35ec:	295f      	cmp	r1, #95	; 0x5f
c0de35ee:	d807      	bhi.n	c0de3600 <tx_display_translation+0xc0>
c0de35f0:	b281      	uxth	r1, r0
c0de35f2:	42a9      	cmp	r1, r5
c0de35f4:	f200 8085 	bhi.w	c0de3702 <tx_display_translation+0x1c2>
c0de35f8:	f804 3b01 	strb.w	r3, [r4], #1
c0de35fc:	4682      	mov	sl, r0
c0de35fe:	e7b4      	b.n	c0de356a <tx_display_translation+0x2a>
c0de3600:	b280      	uxth	r0, r0
c0de3602:	42a8      	cmp	r0, r5
c0de3604:	d87d      	bhi.n	c0de3702 <tx_display_translation+0x1c2>
c0de3606:	205c      	movs	r0, #92	; 0x5c
c0de3608:	f10a 0b02 	add.w	fp, sl, #2
c0de360c:	f8cd 8008 	str.w	r8, [sp, #8]
c0de3610:	7020      	strb	r0, [r4, #0]
c0de3612:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de3614:	ba01      	rev	r1, r0
c0de3616:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
c0de361a:	fa1f f08b 	uxth.w	r0, fp
c0de361e:	910a      	str	r1, [sp, #40]	; 0x28
c0de3620:	db06      	blt.n	c0de3630 <tx_display_translation+0xf0>
c0de3622:	42a8      	cmp	r0, r5
c0de3624:	d86d      	bhi.n	c0de3702 <tx_display_translation+0x1c2>
c0de3626:	2055      	movs	r0, #85	; 0x55
c0de3628:	f04f 0808 	mov.w	r8, #8
c0de362c:	7060      	strb	r0, [r4, #1]
c0de362e:	e008      	b.n	c0de3642 <tx_display_translation+0x102>
c0de3630:	42a8      	cmp	r0, r5
c0de3632:	d866      	bhi.n	c0de3702 <tx_display_translation+0x1c2>
c0de3634:	2075      	movs	r0, #117	; 0x75
c0de3636:	f04f 0804 	mov.w	r8, #4
c0de363a:	7060      	strb	r0, [r4, #1]
c0de363c:	f8bd 002a 	ldrh.w	r0, [sp, #42]	; 0x2a
c0de3640:	900a      	str	r0, [sp, #40]	; 0x28
c0de3642:	fa1f f08b 	uxth.w	r0, fp
c0de3646:	4440      	add	r0, r8
c0de3648:	42a8      	cmp	r0, r5
c0de364a:	d85c      	bhi.n	c0de3706 <tx_display_translation+0x1c6>
c0de364c:	9503      	str	r5, [sp, #12]
c0de364e:	ad05      	add	r5, sp, #20
c0de3650:	2112      	movs	r1, #18
c0de3652:	3402      	adds	r4, #2
c0de3654:	4628      	mov	r0, r5
c0de3656:	f006 f955 	bl	c0de9904 <__aeabi_memclr>
c0de365a:	4628      	mov	r0, r5
c0de365c:	2112      	movs	r1, #18
c0de365e:	f006 f95d 	bl	c0de991c <explicit_bzero>
c0de3662:	9904      	ldr	r1, [sp, #16]
c0de3664:	2000      	movs	r0, #0
c0de3666:	aa0a      	add	r2, sp, #40	; 0x28
c0de3668:	2803      	cmp	r0, #3
c0de366a:	d80e      	bhi.n	c0de368a <tx_display_translation+0x14a>
c0de366c:	f812 3b01 	ldrb.w	r3, [r2], #1
c0de3670:	4d2a      	ldr	r5, [pc, #168]	; (c0de371c <tx_display_translation+0x1dc>)
c0de3672:	3001      	adds	r0, #1
c0de3674:	f003 070f 	and.w	r7, r3, #15
c0de3678:	447d      	add	r5, pc
c0de367a:	091b      	lsrs	r3, r3, #4
c0de367c:	5def      	ldrb	r7, [r5, r7]
c0de367e:	5ceb      	ldrb	r3, [r5, r3]
c0de3680:	700f      	strb	r7, [r1, #0]
c0de3682:	f801 3c01 	strb.w	r3, [r1, #-1]
c0de3686:	3102      	adds	r1, #2
c0de3688:	e7ee      	b.n	c0de3668 <tx_display_translation+0x128>
c0de368a:	2000      	movs	r0, #0
c0de368c:	eb0b 0a08 	add.w	sl, fp, r8
c0de3690:	f801 0c01 	strb.w	r0, [r1, #-1]
c0de3694:	a805      	add	r0, sp, #20
c0de3696:	9d03      	ldr	r5, [sp, #12]
c0de3698:	f1b8 0f00 	cmp.w	r8, #0
c0de369c:	d012      	beq.n	c0de36c4 <tx_display_translation+0x184>
c0de369e:	f10b 0b01 	add.w	fp, fp, #1
c0de36a2:	fa1f f18b 	uxth.w	r1, fp
c0de36a6:	42a9      	cmp	r1, r5
c0de36a8:	d82b      	bhi.n	c0de3702 <tx_display_translation+0x1c2>
c0de36aa:	f810 1b01 	ldrb.w	r1, [r0], #1
c0de36ae:	f1a8 0801 	sub.w	r8, r8, #1
c0de36b2:	f1a1 0261 	sub.w	r2, r1, #97	; 0x61
c0de36b6:	b2d2      	uxtb	r2, r2
c0de36b8:	2a1a      	cmp	r2, #26
c0de36ba:	bf38      	it	cc
c0de36bc:	3920      	subcc	r1, #32
c0de36be:	f804 1b01 	strb.w	r1, [r4], #1
c0de36c2:	e7e9      	b.n	c0de3698 <tx_display_translation+0x158>
c0de36c4:	f8dd 8008 	ldr.w	r8, [sp, #8]
c0de36c8:	f04f 0b00 	mov.w	fp, #0
c0de36cc:	e74d      	b.n	c0de356a <tx_display_translation+0x2a>
c0de36ce:	f818 0c01 	ldrb.w	r0, [r8, #-1]
c0de36d2:	2840      	cmp	r0, #64	; 0x40
c0de36d4:	d001      	beq.n	c0de36da <tx_display_translation+0x19a>
c0de36d6:	2820      	cmp	r0, #32
c0de36d8:	d10e      	bne.n	c0de36f8 <tx_display_translation+0x1b8>
c0de36da:	9801      	ldr	r0, [sp, #4]
c0de36dc:	4428      	add	r0, r5
c0de36de:	f810 0c01 	ldrb.w	r0, [r0, #-1]
c0de36e2:	42a8      	cmp	r0, r5
c0de36e4:	d20f      	bcs.n	c0de3706 <tx_display_translation+0x1c6>
c0de36e6:	f10a 0a01 	add.w	sl, sl, #1
c0de36ea:	fa1f f08a 	uxth.w	r0, sl
c0de36ee:	42a8      	cmp	r0, r5
c0de36f0:	d807      	bhi.n	c0de3702 <tx_display_translation+0x1c2>
c0de36f2:	2040      	movs	r0, #64	; 0x40
c0de36f4:	f804 0b01 	strb.w	r0, [r4], #1
c0de36f8:	f10a 0001 	add.w	r0, sl, #1
c0de36fc:	b280      	uxth	r0, r0
c0de36fe:	42a8      	cmp	r0, r5
c0de3700:	d903      	bls.n	c0de370a <tx_display_translation+0x1ca>
c0de3702:	2014      	movs	r0, #20
c0de3704:	e003      	b.n	c0de370e <tx_display_translation+0x1ce>
c0de3706:	2009      	movs	r0, #9
c0de3708:	e001      	b.n	c0de370e <tx_display_translation+0x1ce>
c0de370a:	2000      	movs	r0, #0
c0de370c:	7020      	strb	r0, [r4, #0]
c0de370e:	b00c      	add	sp, #48	; 0x30
c0de3710:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3714:	000083ea 	.word	0x000083ea
c0de3718:	00006b5c 	.word	0x00006b5c
c0de371c:	0000742a 	.word	0x0000742a

c0de3720 <OUTLINED_FUNCTION_1>:
c0de3720:	4607      	mov	r7, r0
c0de3722:	f002 b8b5 	b.w	c0de5890 <check_app_canary>

c0de3726 <OUTLINED_FUNCTION_3>:
c0de3726:	f641 0118 	movw	r1, #6168	; 0x1818
c0de372a:	eb09 0002 	add.w	r0, r9, r2
c0de372e:	5c40      	ldrb	r0, [r0, r1]
c0de3730:	0781      	lsls	r1, r0, #30
c0de3732:	4770      	bx	lr

c0de3734 <OUTLINED_FUNCTION_8>:
c0de3734:	7843      	ldrb	r3, [r0, #1]
c0de3736:	f003 033f 	and.w	r3, r3, #63	; 0x3f
c0de373a:	ea42 3203 	orr.w	r2, r2, r3, lsl #12
c0de373e:	f004 033f 	and.w	r3, r4, #63	; 0x3f
c0de3742:	4770      	bx	lr

c0de3744 <OUTLINED_FUNCTION_10>:
c0de3744:	eb09 0004 	add.w	r0, r9, r4
c0de3748:	8ac0      	ldrh	r0, [r0, #22]
c0de374a:	2800      	cmp	r0, #0
c0de374c:	4770      	bx	lr

c0de374e <OUTLINED_FUNCTION_11>:
c0de374e:	f641 0219 	movw	r2, #6169	; 0x1819
c0de3752:	5c89      	ldrb	r1, [r1, r2]
c0de3754:	2900      	cmp	r1, #0
c0de3756:	4770      	bx	lr

c0de3758 <OUTLINED_FUNCTION_12>:
c0de3758:	4607      	mov	r7, r0
c0de375a:	f10a 0501 	add.w	r5, sl, #1
c0de375e:	f002 b897 	b.w	c0de5890 <check_app_canary>

c0de3762 <OUTLINED_FUNCTION_13>:
c0de3762:	4606      	mov	r6, r0
c0de3764:	f002 b894 	b.w	c0de5890 <check_app_canary>

c0de3768 <tx_getToken>:
c0de3768:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de376c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
c0de376e:	4604      	mov	r4, r0
c0de3770:	2000      	movs	r0, #0
c0de3772:	460d      	mov	r5, r1
c0de3774:	461e      	mov	r6, r3
c0de3776:	4692      	mov	sl, r2
c0de3778:	7038      	strb	r0, [r7, #0]
c0de377a:	4608      	mov	r0, r1
c0de377c:	4611      	mov	r1, r2
c0de377e:	f006 f8cd 	bl	c0de991c <explicit_bzero>
c0de3782:	4944      	ldr	r1, [pc, #272]	; (c0de3894 <tx_getToken+0x12c>)
c0de3784:	eb09 0001 	add.w	r0, r9, r1
c0de3788:	eb00 02c4 	add.w	r2, r0, r4, lsl #3
c0de378c:	f9b2 0012 	ldrsh.w	r0, [r2, #18]
c0de3790:	f9b2 2014 	ldrsh.w	r2, [r2, #20]
c0de3794:	4282      	cmp	r2, r0
c0de3796:	da01      	bge.n	c0de379c <tx_getToken+0x34>
c0de3798:	2008      	movs	r0, #8
c0de379a:	e078      	b.n	c0de388e <tx_getToken+0x126>
c0de379c:	4449      	add	r1, r9
c0de379e:	2301      	movs	r3, #1
c0de37a0:	6849      	ldr	r1, [r1, #4]
c0de37a2:	703b      	strb	r3, [r7, #0]
c0de37a4:	1a13      	subs	r3, r2, r0
c0de37a6:	041a      	lsls	r2, r3, #16
c0de37a8:	d06b      	beq.n	c0de3882 <tx_getToken+0x11a>
c0de37aa:	e9cd 5602 	strd	r5, r6, [sp, #8]
c0de37ae:	180d      	adds	r5, r1, r0
c0de37b0:	f04f 0800 	mov.w	r8, #0
c0de37b4:	fa1f fb83 	uxth.w	fp, r3
c0de37b8:	4e38      	ldr	r6, [pc, #224]	; (c0de389c <tx_getToken+0x134>)
c0de37ba:	9301      	str	r3, [sp, #4]
c0de37bc:	447e      	add	r6, pc
c0de37be:	f1b8 0f43 	cmp.w	r8, #67	; 0x43
c0de37c2:	d018      	beq.n	c0de37f6 <tx_getToken+0x8e>
c0de37c4:	f856 0038 	ldr.w	r0, [r6, r8, lsl #3]
c0de37c8:	eb06 04c8 	add.w	r4, r6, r8, lsl #3
c0de37cc:	f005 ff68 	bl	c0de96a0 <pic>
c0de37d0:	4607      	mov	r7, r0
c0de37d2:	6860      	ldr	r0, [r4, #4]
c0de37d4:	f005 ff64 	bl	c0de96a0 <pic>
c0de37d8:	4604      	mov	r4, r0
c0de37da:	4638      	mov	r0, r7
c0de37dc:	f006 f8fc 	bl	c0de99d8 <strlen>
c0de37e0:	b282      	uxth	r2, r0
c0de37e2:	4593      	cmp	fp, r2
c0de37e4:	d104      	bne.n	c0de37f0 <tx_getToken+0x88>
c0de37e6:	4628      	mov	r0, r5
c0de37e8:	4639      	mov	r1, r7
c0de37ea:	f006 f8fd 	bl	c0de99e8 <strncmp>
c0de37ee:	b140      	cbz	r0, c0de3802 <tx_getToken+0x9a>
c0de37f0:	f108 0801 	add.w	r8, r8, #1
c0de37f4:	e7e3      	b.n	c0de37be <tx_getToken+0x56>
c0de37f6:	462c      	mov	r4, r5
c0de37f8:	9e03      	ldr	r6, [sp, #12]
c0de37fa:	9f0c      	ldr	r7, [sp, #48]	; 0x30
c0de37fc:	e9dd 5801 	ldrd	r5, r8, [sp, #4]
c0de3800:	e014      	b.n	c0de382c <tx_getToken+0xc4>
c0de3802:	4620      	mov	r0, r4
c0de3804:	f006 f8e8 	bl	c0de99d8 <strlen>
c0de3808:	4e23      	ldr	r6, [pc, #140]	; (c0de3898 <tx_getToken+0x130>)
c0de380a:	4605      	mov	r5, r0
c0de380c:	2000      	movs	r0, #0
c0de380e:	f809 0006 	strb.w	r0, [r9, r6]
c0de3812:	4620      	mov	r0, r4
c0de3814:	4922      	ldr	r1, [pc, #136]	; (c0de38a0 <tx_getToken+0x138>)
c0de3816:	4479      	add	r1, pc
c0de3818:	f006 f919 	bl	c0de9a4e <strstr>
c0de381c:	2800      	cmp	r0, #0
c0de381e:	bf18      	it	ne
c0de3820:	2001      	movne	r0, #1
c0de3822:	f809 0006 	strb.w	r0, [r9, r6]
c0de3826:	9f0c      	ldr	r7, [sp, #48]	; 0x30
c0de3828:	e9dd 8602 	ldrd	r8, r6, [sp, #8]
c0de382c:	4640      	mov	r0, r8
c0de382e:	4651      	mov	r1, sl
c0de3830:	f006 f874 	bl	c0de991c <explicit_bzero>
c0de3834:	2000      	movs	r0, #0
c0de3836:	7038      	strb	r0, [r7, #0]
c0de3838:	f1aa 0001 	sub.w	r0, sl, #1
c0de383c:	b282      	uxth	r2, r0
c0de383e:	b302      	cbz	r2, c0de3882 <tx_getToken+0x11a>
c0de3840:	0429      	lsls	r1, r5, #16
c0de3842:	d01e      	beq.n	c0de3882 <tx_getToken+0x11a>
c0de3844:	b281      	uxth	r1, r0
c0de3846:	b2ab      	uxth	r3, r5
c0de3848:	fbb3 f1f1 	udiv	r1, r3, r1
c0de384c:	fb01 5010 	mls	r0, r1, r0, r5
c0de3850:	b283      	uxth	r3, r0
c0de3852:	461d      	mov	r5, r3
c0de3854:	2b00      	cmp	r3, #0
c0de3856:	bf18      	it	ne
c0de3858:	2501      	movne	r5, #1
c0de385a:	4429      	add	r1, r5
c0de385c:	7039      	strb	r1, [r7, #0]
c0de385e:	b2c9      	uxtb	r1, r1
c0de3860:	42b1      	cmp	r1, r6
c0de3862:	d90e      	bls.n	c0de3882 <tx_getToken+0x11a>
c0de3864:	0400      	lsls	r0, r0, #16
c0de3866:	d007      	beq.n	c0de3878 <tx_getToken+0x110>
c0de3868:	1e48      	subs	r0, r1, #1
c0de386a:	42b0      	cmp	r0, r6
c0de386c:	d104      	bne.n	c0de3878 <tx_getToken+0x110>
c0de386e:	fb06 4102 	mla	r1, r6, r2, r4
c0de3872:	4640      	mov	r0, r8
c0de3874:	461a      	mov	r2, r3
c0de3876:	e002      	b.n	c0de387e <tx_getToken+0x116>
c0de3878:	fb06 4102 	mla	r1, r6, r2, r4
c0de387c:	4640      	mov	r0, r8
c0de387e:	f006 f846 	bl	c0de990e <__aeabi_memmove>
c0de3882:	7838      	ldrb	r0, [r7, #0]
c0de3884:	2100      	movs	r1, #0
c0de3886:	42b0      	cmp	r0, r6
c0de3888:	bf98      	it	ls
c0de388a:	2101      	movls	r1, #1
c0de388c:	0088      	lsls	r0, r1, #2
c0de388e:	b004      	add	sp, #16
c0de3890:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3894:	000038c4 	.word	0x000038c4
c0de3898:	0000512a 	.word	0x0000512a
c0de389c:	000081e0 	.word	0x000081e0
c0de38a0:	00006ba8 	.word	0x00006ba8

c0de38a4 <tx_traverse_find>:
c0de38a4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de38a8:	b086      	sub	sp, #24
c0de38aa:	f8df b2e0 	ldr.w	fp, [pc, #736]	; c0de3b8c <tx_traverse_find+0x2e8>
c0de38ae:	4680      	mov	r8, r0
c0de38b0:	468a      	mov	sl, r1
c0de38b2:	eb09 050b 	add.w	r5, r9, fp
c0de38b6:	1d28      	adds	r0, r5, #4
c0de38b8:	eb00 00c8 	add.w	r0, r0, r8, lsl #3
c0de38bc:	7b04      	ldrb	r4, [r0, #12]
c0de38be:	f001 ffe7 	bl	c0de5890 <check_app_canary>
c0de38c2:	6868      	ldr	r0, [r5, #4]
c0de38c4:	2800      	cmp	r0, #0
c0de38c6:	d046      	beq.n	c0de3956 <tx_traverse_find+0xb2>
c0de38c8:	eb09 000b 	add.w	r0, r9, fp
c0de38cc:	f641 012e 	movw	r1, #6190	; 0x182e
c0de38d0:	5c40      	ldrb	r0, [r0, r1]
c0de38d2:	b140      	cbz	r0, c0de38e6 <tx_traverse_find+0x42>
c0de38d4:	eb09 000b 	add.w	r0, r9, fp
c0de38d8:	f641 012f 	movw	r1, #6191	; 0x182f
c0de38dc:	5c40      	ldrb	r0, [r0, r1]
c0de38de:	b110      	cbz	r0, c0de38e6 <tx_traverse_find+0x42>
c0de38e0:	1ee0      	subs	r0, r4, #3
c0de38e2:	2801      	cmp	r0, #1
c0de38e4:	d85a      	bhi.n	c0de399c <tx_traverse_find+0xf8>
c0de38e6:	eb09 000b 	add.w	r0, r9, fp
c0de38ea:	f641 0118 	movw	r1, #6168	; 0x1818
c0de38ee:	5c46      	ldrb	r6, [r0, r1]
c0de38f0:	f016 0701 	ands.w	r7, r6, #1
c0de38f4:	d00a      	beq.n	c0de390c <tx_traverse_find+0x68>
c0de38f6:	07b0      	lsls	r0, r6, #30
c0de38f8:	d508      	bpl.n	c0de390c <tx_traverse_find+0x68>
c0de38fa:	f000 f94f 	bl	c0de3b9c <OUTLINED_FUNCTION_0>
c0de38fe:	49a4      	ldr	r1, [pc, #656]	; (c0de3b90 <tx_traverse_find+0x2ec>)
c0de3900:	4479      	add	r1, pc
c0de3902:	f006 f85f 	bl	c0de99c4 <strcmp>
c0de3906:	2800      	cmp	r0, #0
c0de3908:	f000 8087 	beq.w	c0de3a1a <tx_traverse_find+0x176>
c0de390c:	2400      	movs	r4, #0
c0de390e:	f000 f94b 	bl	c0de3ba8 <OUTLINED_FUNCTION_1>
c0de3912:	f641 0224 	movw	r2, #6180	; 0x1824
c0de3916:	5a41      	ldrh	r1, [r0, r1]
c0de3918:	5880      	ldr	r0, [r0, r2]
c0de391a:	4048      	eors	r0, r1
c0de391c:	f006 0108 	and.w	r1, r6, #8
c0de3920:	ea51 0500 	orrs.w	r5, r1, r0
c0de3924:	bf18      	it	ne
c0de3926:	2501      	movne	r5, #1
c0de3928:	b147      	cbz	r7, c0de393c <tx_traverse_find+0x98>
c0de392a:	0770      	lsls	r0, r6, #29
c0de392c:	d506      	bpl.n	c0de393c <tx_traverse_find+0x98>
c0de392e:	f000 f935 	bl	c0de3b9c <OUTLINED_FUNCTION_0>
c0de3932:	4998      	ldr	r1, [pc, #608]	; (c0de3b94 <tx_traverse_find+0x2f0>)
c0de3934:	4479      	add	r1, pc
c0de3936:	f006 f845 	bl	c0de99c4 <strcmp>
c0de393a:	b100      	cbz	r0, c0de393e <tx_traverse_find+0x9a>
c0de393c:	2500      	movs	r5, #0
c0de393e:	432c      	orrs	r4, r5
c0de3940:	f001 ffa6 	bl	c0de5890 <check_app_canary>
c0de3944:	b154      	cbz	r4, c0de395c <tx_traverse_find+0xb8>
c0de3946:	f000 f92f 	bl	c0de3ba8 <OUTLINED_FUNCTION_1>
c0de394a:	1842      	adds	r2, r0, r1
c0de394c:	5a40      	ldrh	r0, [r0, r1]
c0de394e:	8893      	ldrh	r3, [r2, #4]
c0de3950:	3301      	adds	r3, #1
c0de3952:	8093      	strh	r3, [r2, #4]
c0de3954:	e013      	b.n	c0de397e <tx_traverse_find+0xda>
c0de3956:	f04f 0a01 	mov.w	sl, #1
c0de395a:	e01a      	b.n	c0de3992 <tx_traverse_find+0xee>
c0de395c:	eb09 010b 	add.w	r1, r9, fp
c0de3960:	f641 022c 	movw	r2, #6188	; 0x182c
c0de3964:	5a88      	ldrh	r0, [r1, r2]
c0de3966:	4411      	add	r1, r2
c0de3968:	f9b1 1004 	ldrsh.w	r1, [r1, #4]
c0de396c:	4288      	cmp	r0, r1
c0de396e:	d106      	bne.n	c0de397e <tx_traverse_find+0xda>
c0de3970:	f8aa 8000 	strh.w	r8, [sl]
c0de3974:	f001 ff8c 	bl	c0de5890 <check_app_canary>
c0de3978:	f04f 0a00 	mov.w	sl, #0
c0de397c:	e009      	b.n	c0de3992 <tx_traverse_find+0xee>
c0de397e:	eb09 010b 	add.w	r1, r9, fp
c0de3982:	3001      	adds	r0, #1
c0de3984:	f641 022c 	movw	r2, #6188	; 0x182c
c0de3988:	5288      	strh	r0, [r1, r2]
c0de398a:	f001 ff81 	bl	c0de5890 <check_app_canary>
c0de398e:	f04f 0a13 	mov.w	sl, #19
c0de3992:	fa5f f08a 	uxtb.w	r0, sl
c0de3996:	b006      	add	sp, #24
c0de3998:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de399c:	eb09 000b 	add.w	r0, r9, fp
c0de39a0:	f10d 0216 	add.w	r2, sp, #22
c0de39a4:	4641      	mov	r1, r8
c0de39a6:	f8cd a00c 	str.w	sl, [sp, #12]
c0de39aa:	3008      	adds	r0, #8
c0de39ac:	f7fd fb18 	bl	c0de0fe0 <object_get_element_count>
c0de39b0:	4682      	mov	sl, r0
c0de39b2:	f001 ff6d 	bl	c0de5890 <check_app_canary>
c0de39b6:	f1ba 0f00 	cmp.w	sl, #0
c0de39ba:	d1ea      	bne.n	c0de3992 <tx_traverse_find+0xee>
c0de39bc:	2c01      	cmp	r4, #1
c0de39be:	d036      	beq.n	c0de3a2e <tx_traverse_find+0x18a>
c0de39c0:	2c02      	cmp	r4, #2
c0de39c2:	d1e4      	bne.n	c0de398e <tx_traverse_find+0xea>
c0de39c4:	2400      	movs	r4, #0
c0de39c6:	f641 072f 	movw	r7, #6191	; 0x182f
c0de39ca:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de39ce:	b2a2      	uxth	r2, r4
c0de39d0:	4282      	cmp	r2, r0
c0de39d2:	d2dc      	bcs.n	c0de398e <tx_traverse_find+0xea>
c0de39d4:	eb09 000b 	add.w	r0, r9, fp
c0de39d8:	4641      	mov	r1, r8
c0de39da:	ab04      	add	r3, sp, #16
c0de39dc:	3008      	adds	r0, #8
c0de39de:	f7fd fada 	bl	c0de0f96 <array_get_nth_element>
c0de39e2:	4682      	mov	sl, r0
c0de39e4:	f001 ff54 	bl	c0de5890 <check_app_canary>
c0de39e8:	f1ba 0f00 	cmp.w	sl, #0
c0de39ec:	d1d1      	bne.n	c0de3992 <tx_traverse_find+0xee>
c0de39ee:	eb09 050b 	add.w	r5, r9, fp
c0de39f2:	f001 ff4d 	bl	c0de5890 <check_app_canary>
c0de39f6:	5de8      	ldrb	r0, [r5, r7]
c0de39f8:	9903      	ldr	r1, [sp, #12]
c0de39fa:	3801      	subs	r0, #1
c0de39fc:	55e8      	strb	r0, [r5, r7]
c0de39fe:	f8bd 0010 	ldrh.w	r0, [sp, #16]
c0de3a02:	f7ff ff4f 	bl	c0de38a4 <tx_traverse_find>
c0de3a06:	4606      	mov	r6, r0
c0de3a08:	5de8      	ldrb	r0, [r5, r7]
c0de3a0a:	3001      	adds	r0, #1
c0de3a0c:	55e8      	strb	r0, [r5, r7]
c0de3a0e:	f001 ff3f 	bl	c0de5890 <check_app_canary>
c0de3a12:	2e00      	cmp	r6, #0
c0de3a14:	d0bd      	beq.n	c0de3992 <tx_traverse_find+0xee>
c0de3a16:	3401      	adds	r4, #1
c0de3a18:	e7d7      	b.n	c0de39ca <tx_traverse_find+0x126>
c0de3a1a:	f000 f8c5 	bl	c0de3ba8 <OUTLINED_FUNCTION_1>
c0de3a1e:	f641 021c 	movw	r2, #6172	; 0x181c
c0de3a22:	5a41      	ldrh	r1, [r0, r1]
c0de3a24:	5880      	ldr	r0, [r0, r2]
c0de3a26:	1a44      	subs	r4, r0, r1
c0de3a28:	bf18      	it	ne
c0de3a2a:	2401      	movne	r4, #1
c0de3a2c:	e76f      	b.n	c0de390e <tx_traverse_find+0x6a>
c0de3a2e:	f000 f8b5 	bl	c0de3b9c <OUTLINED_FUNCTION_0>
c0de3a32:	f005 ffd1 	bl	c0de99d8 <strlen>
c0de3a36:	9000      	str	r0, [sp, #0]
c0de3a38:	ad05      	add	r5, sp, #20
c0de3a3a:	2400      	movs	r4, #0
c0de3a3c:	f04f 0a00 	mov.w	sl, #0
c0de3a40:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de3a44:	b2a7      	uxth	r7, r4
c0de3a46:	4287      	cmp	r7, r0
c0de3a48:	d2a1      	bcs.n	c0de398e <tx_traverse_find+0xea>
c0de3a4a:	eb09 000b 	add.w	r0, r9, fp
c0de3a4e:	4641      	mov	r1, r8
c0de3a50:	463a      	mov	r2, r7
c0de3a52:	462b      	mov	r3, r5
c0de3a54:	3008      	adds	r0, #8
c0de3a56:	f7fd fae8 	bl	c0de102a <object_get_nth_key>
c0de3a5a:	4606      	mov	r6, r0
c0de3a5c:	f001 ff18 	bl	c0de5890 <check_app_canary>
c0de3a60:	b966      	cbnz	r6, c0de3a7c <tx_traverse_find+0x1d8>
c0de3a62:	eb09 000b 	add.w	r0, r9, fp
c0de3a66:	4641      	mov	r1, r8
c0de3a68:	463a      	mov	r2, r7
c0de3a6a:	f10d 0312 	add.w	r3, sp, #18
c0de3a6e:	3008      	adds	r0, #8
c0de3a70:	f7fd fb08 	bl	c0de1084 <object_get_nth_value>
c0de3a74:	4606      	mov	r6, r0
c0de3a76:	f001 ff0b 	bl	c0de5890 <check_app_canary>
c0de3a7a:	b12e      	cbz	r6, c0de3a88 <tx_traverse_find+0x1e4>
c0de3a7c:	2000      	movs	r0, #0
c0de3a7e:	46b2      	mov	sl, r6
c0de3a80:	3401      	adds	r4, #1
c0de3a82:	2800      	cmp	r0, #0
c0de3a84:	d1dc      	bne.n	c0de3a40 <tx_traverse_find+0x19c>
c0de3a86:	e784      	b.n	c0de3992 <tx_traverse_find+0xee>
c0de3a88:	eb09 000b 	add.w	r0, r9, fp
c0de3a8c:	f641 0134 	movw	r1, #6196	; 0x1834
c0de3a90:	f8bd 6014 	ldrh.w	r6, [sp, #20]
c0de3a94:	2200      	movs	r2, #0
c0de3a96:	5847      	ldr	r7, [r0, r1]
c0de3a98:	7838      	ldrb	r0, [r7, #0]
c0de3a9a:	b1e8      	cbz	r0, c0de3ad8 <tx_traverse_find+0x234>
c0de3a9c:	eb09 000b 	add.w	r0, r9, fp
c0de3aa0:	f641 0138 	movw	r1, #6200	; 0x1838
c0de3aa4:	9602      	str	r6, [sp, #8]
c0de3aa6:	5a46      	ldrh	r6, [r0, r1]
c0de3aa8:	19b8      	adds	r0, r7, r6
c0de3aaa:	4275      	negs	r5, r6
c0de3aac:	f800 2c01 	strb.w	r2, [r0, #-1]
c0de3ab0:	4638      	mov	r0, r7
c0de3ab2:	f005 ff91 	bl	c0de99d8 <strlen>
c0de3ab6:	2200      	movs	r2, #0
c0de3ab8:	43c1      	mvns	r1, r0
c0de3aba:	1b4d      	subs	r5, r1, r5
c0de3abc:	bf18      	it	ne
c0de3abe:	2501      	movne	r5, #1
c0de3ac0:	42f1      	cmn	r1, r6
c0de3ac2:	9e02      	ldr	r6, [sp, #8]
c0de3ac4:	d008      	beq.n	c0de3ad8 <tx_traverse_find+0x234>
c0de3ac6:	4934      	ldr	r1, [pc, #208]	; (c0de3b98 <tx_traverse_find+0x2f4>)
c0de3ac8:	4407      	add	r7, r0
c0de3aca:	462a      	mov	r2, r5
c0de3acc:	4638      	mov	r0, r7
c0de3ace:	4479      	add	r1, pc
c0de3ad0:	f005 ff1b 	bl	c0de990a <__aeabi_memcpy>
c0de3ad4:	2200      	movs	r2, #0
c0de3ad6:	557a      	strb	r2, [r7, r5]
c0de3ad8:	eb09 000b 	add.w	r0, r9, fp
c0de3adc:	f850 1f04 	ldr.w	r1, [r0, #4]!
c0de3ae0:	9101      	str	r1, [sp, #4]
c0de3ae2:	f641 0134 	movw	r1, #6196	; 0x1834
c0de3ae6:	5a45      	ldrh	r5, [r0, r1]
c0de3ae8:	f641 0130 	movw	r1, #6192	; 0x1830
c0de3aec:	5847      	ldr	r7, [r0, r1]
c0de3aee:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
c0de3af2:	f9b0 600e 	ldrsh.w	r6, [r0, #14]
c0de3af6:	f9b0 0010 	ldrsh.w	r0, [r0, #16]
c0de3afa:	1979      	adds	r1, r7, r5
c0de3afc:	9002      	str	r0, [sp, #8]
c0de3afe:	4638      	mov	r0, r7
c0de3b00:	f801 2c01 	strb.w	r2, [r1, #-1]
c0de3b04:	f005 ff68 	bl	c0de99d8 <strlen>
c0de3b08:	9b02      	ldr	r3, [sp, #8]
c0de3b0a:	43c1      	mvns	r1, r0
c0de3b0c:	4429      	add	r1, r5
c0de3b0e:	1b9d      	subs	r5, r3, r6
c0de3b10:	42a9      	cmp	r1, r5
c0de3b12:	bf38      	it	cc
c0de3b14:	460d      	movcc	r5, r1
c0de3b16:	b145      	cbz	r5, c0de3b2a <tx_traverse_find+0x286>
c0de3b18:	4407      	add	r7, r0
c0de3b1a:	9801      	ldr	r0, [sp, #4]
c0de3b1c:	462a      	mov	r2, r5
c0de3b1e:	1981      	adds	r1, r0, r6
c0de3b20:	4638      	mov	r0, r7
c0de3b22:	f005 fef4 	bl	c0de990e <__aeabi_memmove>
c0de3b26:	2000      	movs	r0, #0
c0de3b28:	5578      	strb	r0, [r7, r5]
c0de3b2a:	eb09 050b 	add.w	r5, r9, fp
c0de3b2e:	f001 feaf 	bl	c0de5890 <check_app_canary>
c0de3b32:	f641 072e 	movw	r7, #6190	; 0x182e
c0de3b36:	f641 012f 	movw	r1, #6191	; 0x182f
c0de3b3a:	5de8      	ldrb	r0, [r5, r7]
c0de3b3c:	3801      	subs	r0, #1
c0de3b3e:	55e8      	strb	r0, [r5, r7]
c0de3b40:	5c68      	ldrb	r0, [r5, r1]
c0de3b42:	3801      	subs	r0, #1
c0de3b44:	5468      	strb	r0, [r5, r1]
c0de3b46:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de3b4a:	9903      	ldr	r1, [sp, #12]
c0de3b4c:	f7ff feaa 	bl	c0de38a4 <tx_traverse_find>
c0de3b50:	4606      	mov	r6, r0
c0de3b52:	f001 fe9d 	bl	c0de5890 <check_app_canary>
c0de3b56:	5de8      	ldrb	r0, [r5, r7]
c0de3b58:	f641 012f 	movw	r1, #6191	; 0x182f
c0de3b5c:	3001      	adds	r0, #1
c0de3b5e:	55e8      	strb	r0, [r5, r7]
c0de3b60:	5c68      	ldrb	r0, [r5, r1]
c0de3b62:	3001      	adds	r0, #1
c0de3b64:	5468      	strb	r0, [r5, r1]
c0de3b66:	b15e      	cbz	r6, c0de3b80 <tx_traverse_find+0x2dc>
c0de3b68:	eb09 000b 	add.w	r0, r9, fp
c0de3b6c:	f641 0134 	movw	r1, #6196	; 0x1834
c0de3b70:	2200      	movs	r2, #0
c0de3b72:	5840      	ldr	r0, [r0, r1]
c0de3b74:	9900      	ldr	r1, [sp, #0]
c0de3b76:	5442      	strb	r2, [r0, r1]
c0de3b78:	f001 fe8a 	bl	c0de5890 <check_app_canary>
c0de3b7c:	2001      	movs	r0, #1
c0de3b7e:	e002      	b.n	c0de3b86 <tx_traverse_find+0x2e2>
c0de3b80:	2000      	movs	r0, #0
c0de3b82:	f04f 0a00 	mov.w	sl, #0
c0de3b86:	ad05      	add	r5, sp, #20
c0de3b88:	e77a      	b.n	c0de3a80 <tx_traverse_find+0x1dc>
c0de3b8a:	bf00      	nop
c0de3b8c:	000038c4 	.word	0x000038c4
c0de3b90:	00006eab 	.word	0x00006eab
c0de3b94:	00007826 	.word	0x00007826
c0de3b98:	0000639b 	.word	0x0000639b

c0de3b9c <OUTLINED_FUNCTION_0>:
c0de3b9c:	eb09 000b 	add.w	r0, r9, fp
c0de3ba0:	f641 0134 	movw	r1, #6196	; 0x1834
c0de3ba4:	5840      	ldr	r0, [r0, r1]
c0de3ba6:	4770      	bx	lr

c0de3ba8 <OUTLINED_FUNCTION_1>:
c0de3ba8:	eb09 000b 	add.w	r0, r9, fp
c0de3bac:	f641 012c 	movw	r1, #6188	; 0x182c
c0de3bb0:	4770      	bx	lr
	...

c0de3bb4 <is_space>:
c0de3bb4:	b510      	push	{r4, lr}
c0de3bb6:	4907      	ldr	r1, [pc, #28]	; (c0de3bd4 <is_space+0x20>)
c0de3bb8:	2300      	movs	r3, #0
c0de3bba:	4479      	add	r1, pc
c0de3bbc:	461a      	mov	r2, r3
c0de3bbe:	2b06      	cmp	r3, #6
c0de3bc0:	d003      	beq.n	c0de3bca <is_space+0x16>
c0de3bc2:	5c8c      	ldrb	r4, [r1, r2]
c0de3bc4:	1c53      	adds	r3, r2, #1
c0de3bc6:	4284      	cmp	r4, r0
c0de3bc8:	d1f8      	bne.n	c0de3bbc <is_space+0x8>
c0de3bca:	2000      	movs	r0, #0
c0de3bcc:	2a06      	cmp	r2, #6
c0de3bce:	bf38      	it	cc
c0de3bd0:	2001      	movcc	r0, #1
c0de3bd2:	bd10      	pop	{r4, pc}
c0de3bd4:	00007ffa 	.word	0x00007ffa

c0de3bd8 <contains_whitespace>:
c0de3bd8:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3bdc:	4683      	mov	fp, r0
c0de3bde:	f641 0008 	movw	r0, #6152	; 0x1808
c0de3be2:	2601      	movs	r6, #1
c0de3be4:	2700      	movs	r7, #0
c0de3be6:	eb0b 0500 	add.w	r5, fp, r0
c0de3bea:	f8db a004 	ldr.w	sl, [fp, #4]
c0de3bee:	f9bb 000c 	ldrsh.w	r0, [fp, #12]
c0de3bf2:	9001      	str	r0, [sp, #4]
c0de3bf4:	4556      	cmp	r6, sl
c0de3bf6:	d21a      	bcs.n	c0de3c2e <contains_whitespace+0x56>
c0de3bf8:	eb0b 04c6 	add.w	r4, fp, r6, lsl #3
c0de3bfc:	7a20      	ldrb	r0, [r4, #8]
c0de3bfe:	b328      	cbz	r0, c0de3c4c <contains_whitespace+0x74>
c0de3c00:	f9b4 800a 	ldrsh.w	r8, [r4, #10]
c0de3c04:	4547      	cmp	r7, r8
c0de3c06:	da07      	bge.n	c0de3c18 <contains_whitespace+0x40>
c0de3c08:	6828      	ldr	r0, [r5, #0]
c0de3c0a:	5dc0      	ldrb	r0, [r0, r7]
c0de3c0c:	f7ff ffd2 	bl	c0de3bb4 <is_space>
c0de3c10:	3701      	adds	r7, #1
c0de3c12:	2801      	cmp	r0, #1
c0de3c14:	d1f6      	bne.n	c0de3c04 <contains_whitespace+0x2c>
c0de3c16:	e007      	b.n	c0de3c28 <contains_whitespace+0x50>
c0de3c18:	f9b4 000c 	ldrsh.w	r0, [r4, #12]
c0de3c1c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
c0de3c20:	db17      	blt.n	c0de3c52 <contains_whitespace+0x7a>
c0de3c22:	3601      	adds	r6, #1
c0de3c24:	1c47      	adds	r7, r0, #1
c0de3c26:	e7e5      	b.n	c0de3bf4 <contains_whitespace+0x1c>
c0de3c28:	2018      	movs	r0, #24
c0de3c2a:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de3c2e:	9c01      	ldr	r4, [sp, #4]
c0de3c30:	42a7      	cmp	r7, r4
c0de3c32:	da0b      	bge.n	c0de3c4c <contains_whitespace+0x74>
c0de3c34:	6828      	ldr	r0, [r5, #0]
c0de3c36:	5dc0      	ldrb	r0, [r0, r7]
c0de3c38:	b140      	cbz	r0, c0de3c4c <contains_whitespace+0x74>
c0de3c3a:	f7ff ffbb 	bl	c0de3bb4 <is_space>
c0de3c3e:	4601      	mov	r1, r0
c0de3c40:	3701      	adds	r7, #1
c0de3c42:	2018      	movs	r0, #24
c0de3c44:	2900      	cmp	r1, #0
c0de3c46:	d0f3      	beq.n	c0de3c30 <contains_whitespace+0x58>
c0de3c48:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de3c4c:	2000      	movs	r0, #0
c0de3c4e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de3c52:	2020      	movs	r0, #32
c0de3c54:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de3c58 <is_sorted>:
c0de3c58:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3c5c:	f5ad 7d00 	sub.w	sp, sp, #512	; 0x200
c0de3c60:	ac40      	add	r4, sp, #256	; 0x100
c0de3c62:	468a      	mov	sl, r1
c0de3c64:	4605      	mov	r5, r0
c0de3c66:	f44f 7180 	mov.w	r1, #256	; 0x100
c0de3c6a:	4616      	mov	r6, r2
c0de3c6c:	4620      	mov	r0, r4
c0de3c6e:	f005 fe55 	bl	c0de991c <explicit_bzero>
c0de3c72:	46e8      	mov	r8, sp
c0de3c74:	f44f 7180 	mov.w	r1, #256	; 0x100
c0de3c78:	4640      	mov	r0, r8
c0de3c7a:	f005 fe4f 	bl	c0de991c <explicit_bzero>
c0de3c7e:	eb06 01c5 	add.w	r1, r6, r5, lsl #3
c0de3c82:	2500      	movs	r5, #0
c0de3c84:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
c0de3c88:	f9b1 100c 	ldrsh.w	r1, [r1, #12]
c0de3c8c:	1a0f      	subs	r7, r1, r0
c0de3c8e:	2fff      	cmp	r7, #255	; 0xff
c0de3c90:	d823      	bhi.n	c0de3cda <is_sorted+0x82>
c0de3c92:	f641 0108 	movw	r1, #6152	; 0x1808
c0de3c96:	463a      	mov	r2, r7
c0de3c98:	f856 b001 	ldr.w	fp, [r6, r1]
c0de3c9c:	eb0b 0100 	add.w	r1, fp, r0
c0de3ca0:	4620      	mov	r0, r4
c0de3ca2:	f005 feb5 	bl	c0de9a10 <strncpy>
c0de3ca6:	eb06 01ca 	add.w	r1, r6, sl, lsl #3
c0de3caa:	55e5      	strb	r5, [r4, r7]
c0de3cac:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
c0de3cb0:	f9b1 100c 	ldrsh.w	r1, [r1, #12]
c0de3cb4:	1a0c      	subs	r4, r1, r0
c0de3cb6:	2cff      	cmp	r4, #255	; 0xff
c0de3cb8:	d80f      	bhi.n	c0de3cda <is_sorted+0x82>
c0de3cba:	eb0b 0100 	add.w	r1, fp, r0
c0de3cbe:	4640      	mov	r0, r8
c0de3cc0:	4622      	mov	r2, r4
c0de3cc2:	f005 fea5 	bl	c0de9a10 <strncpy>
c0de3cc6:	2500      	movs	r5, #0
c0de3cc8:	4641      	mov	r1, r8
c0de3cca:	f808 5004 	strb.w	r5, [r8, r4]
c0de3cce:	a840      	add	r0, sp, #256	; 0x100
c0de3cd0:	f005 fe78 	bl	c0de99c4 <strcmp>
c0de3cd4:	2801      	cmp	r0, #1
c0de3cd6:	bfb8      	it	lt
c0de3cd8:	2501      	movlt	r5, #1
c0de3cda:	4628      	mov	r0, r5
c0de3cdc:	f50d 7d00 	add.w	sp, sp, #512	; 0x200
c0de3ce0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3ce4 <dictionaries_sorted>:
c0de3ce4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3ce8:	4604      	mov	r4, r0
c0de3cea:	2500      	movs	r5, #0
c0de3cec:	f10d 0a06 	add.w	sl, sp, #6
c0de3cf0:	f10d 0804 	add.w	r8, sp, #4
c0de3cf4:	f10d 0b02 	add.w	fp, sp, #2
c0de3cf8:	6860      	ldr	r0, [r4, #4]
c0de3cfa:	4285      	cmp	r5, r0
c0de3cfc:	d235      	bcs.n	c0de3d6a <dictionaries_sorted+0x86>
c0de3cfe:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de3d02:	7a00      	ldrb	r0, [r0, #8]
c0de3d04:	2801      	cmp	r0, #1
c0de3d06:	d12b      	bne.n	c0de3d60 <dictionaries_sorted+0x7c>
c0de3d08:	b2ae      	uxth	r6, r5
c0de3d0a:	4620      	mov	r0, r4
c0de3d0c:	4652      	mov	r2, sl
c0de3d0e:	4631      	mov	r1, r6
c0de3d10:	f7fd f966 	bl	c0de0fe0 <object_get_element_count>
c0de3d14:	bb30      	cbnz	r0, c0de3d64 <dictionaries_sorted+0x80>
c0de3d16:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de3d1a:	2802      	cmp	r0, #2
c0de3d1c:	d320      	bcc.n	c0de3d60 <dictionaries_sorted+0x7c>
c0de3d1e:	4620      	mov	r0, r4
c0de3d20:	4631      	mov	r1, r6
c0de3d22:	2200      	movs	r2, #0
c0de3d24:	4643      	mov	r3, r8
c0de3d26:	f7fd f980 	bl	c0de102a <object_get_nth_key>
c0de3d2a:	b9d8      	cbnz	r0, c0de3d64 <dictionaries_sorted+0x80>
c0de3d2c:	2701      	movs	r7, #1
c0de3d2e:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de3d32:	4287      	cmp	r7, r0
c0de3d34:	d214      	bcs.n	c0de3d60 <dictionaries_sorted+0x7c>
c0de3d36:	b2ba      	uxth	r2, r7
c0de3d38:	4620      	mov	r0, r4
c0de3d3a:	4631      	mov	r1, r6
c0de3d3c:	465b      	mov	r3, fp
c0de3d3e:	f7fd f974 	bl	c0de102a <object_get_nth_key>
c0de3d42:	b978      	cbnz	r0, c0de3d64 <dictionaries_sorted+0x80>
c0de3d44:	f8bd 1002 	ldrh.w	r1, [sp, #2]
c0de3d48:	f8bd 0004 	ldrh.w	r0, [sp, #4]
c0de3d4c:	4622      	mov	r2, r4
c0de3d4e:	f7ff ff83 	bl	c0de3c58 <is_sorted>
c0de3d52:	b138      	cbz	r0, c0de3d64 <dictionaries_sorted+0x80>
c0de3d54:	f8bd 0002 	ldrh.w	r0, [sp, #2]
c0de3d58:	3701      	adds	r7, #1
c0de3d5a:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de3d5e:	e7e6      	b.n	c0de3d2e <dictionaries_sorted+0x4a>
c0de3d60:	3501      	adds	r5, #1
c0de3d62:	e7c9      	b.n	c0de3cf8 <dictionaries_sorted+0x14>
c0de3d64:	2000      	movs	r0, #0
c0de3d66:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de3d6a:	2001      	movs	r0, #1
c0de3d6c:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de3d70 <tx_validate>:
c0de3d70:	b51c      	push	{r2, r3, r4, lr}
c0de3d72:	4604      	mov	r4, r0
c0de3d74:	f7ff ff30 	bl	c0de3bd8 <contains_whitespace>
c0de3d78:	b100      	cbz	r0, c0de3d7c <tx_validate+0xc>
c0de3d7a:	bd1c      	pop	{r2, r3, r4, pc}
c0de3d7c:	4620      	mov	r0, r4
c0de3d7e:	f7ff ffb1 	bl	c0de3ce4 <dictionaries_sorted>
c0de3d82:	2801      	cmp	r0, #1
c0de3d84:	bf1c      	itt	ne
c0de3d86:	2019      	movne	r0, #25
c0de3d88:	bd1c      	popne	{r2, r3, r4, pc}
c0de3d8a:	4a21      	ldr	r2, [pc, #132]	; (c0de3e10 <tx_validate+0xa0>)
c0de3d8c:	f10d 0306 	add.w	r3, sp, #6
c0de3d90:	4620      	mov	r0, r4
c0de3d92:	2100      	movs	r1, #0
c0de3d94:	447a      	add	r2, pc
c0de3d96:	f7fd f989 	bl	c0de10ac <object_get_value>
c0de3d9a:	b108      	cbz	r0, c0de3da0 <tx_validate+0x30>
c0de3d9c:	201a      	movs	r0, #26
c0de3d9e:	bd1c      	pop	{r2, r3, r4, pc}
c0de3da0:	4a1c      	ldr	r2, [pc, #112]	; (c0de3e14 <tx_validate+0xa4>)
c0de3da2:	f10d 0306 	add.w	r3, sp, #6
c0de3da6:	4620      	mov	r0, r4
c0de3da8:	2100      	movs	r1, #0
c0de3daa:	447a      	add	r2, pc
c0de3dac:	f7fd f97e 	bl	c0de10ac <object_get_value>
c0de3db0:	b108      	cbz	r0, c0de3db6 <tx_validate+0x46>
c0de3db2:	201b      	movs	r0, #27
c0de3db4:	bd1c      	pop	{r2, r3, r4, pc}
c0de3db6:	4a18      	ldr	r2, [pc, #96]	; (c0de3e18 <tx_validate+0xa8>)
c0de3db8:	f10d 0306 	add.w	r3, sp, #6
c0de3dbc:	4620      	mov	r0, r4
c0de3dbe:	2100      	movs	r1, #0
c0de3dc0:	447a      	add	r2, pc
c0de3dc2:	f7fd f973 	bl	c0de10ac <object_get_value>
c0de3dc6:	b108      	cbz	r0, c0de3dcc <tx_validate+0x5c>
c0de3dc8:	201c      	movs	r0, #28
c0de3dca:	bd1c      	pop	{r2, r3, r4, pc}
c0de3dcc:	4a13      	ldr	r2, [pc, #76]	; (c0de3e1c <tx_validate+0xac>)
c0de3dce:	f10d 0306 	add.w	r3, sp, #6
c0de3dd2:	4620      	mov	r0, r4
c0de3dd4:	2100      	movs	r1, #0
c0de3dd6:	447a      	add	r2, pc
c0de3dd8:	f7fd f968 	bl	c0de10ac <object_get_value>
c0de3ddc:	b108      	cbz	r0, c0de3de2 <tx_validate+0x72>
c0de3dde:	201d      	movs	r0, #29
c0de3de0:	bd1c      	pop	{r2, r3, r4, pc}
c0de3de2:	4a0f      	ldr	r2, [pc, #60]	; (c0de3e20 <tx_validate+0xb0>)
c0de3de4:	f10d 0306 	add.w	r3, sp, #6
c0de3de8:	4620      	mov	r0, r4
c0de3dea:	2100      	movs	r1, #0
c0de3dec:	447a      	add	r2, pc
c0de3dee:	f7fd f95d 	bl	c0de10ac <object_get_value>
c0de3df2:	b108      	cbz	r0, c0de3df8 <tx_validate+0x88>
c0de3df4:	201e      	movs	r0, #30
c0de3df6:	bd1c      	pop	{r2, r3, r4, pc}
c0de3df8:	4a0a      	ldr	r2, [pc, #40]	; (c0de3e24 <tx_validate+0xb4>)
c0de3dfa:	f10d 0306 	add.w	r3, sp, #6
c0de3dfe:	4620      	mov	r0, r4
c0de3e00:	2100      	movs	r1, #0
c0de3e02:	447a      	add	r2, pc
c0de3e04:	f7fd f952 	bl	c0de10ac <object_get_value>
c0de3e08:	2800      	cmp	r0, #0
c0de3e0a:	bf18      	it	ne
c0de3e0c:	201f      	movne	r0, #31
c0de3e0e:	bd1c      	pop	{r2, r3, r4, pc}
c0de3e10:	000061d4 	.word	0x000061d4
c0de3e14:	00006934 	.word	0x00006934
c0de3e18:	00005e50 	.word	0x00005e50
c0de3e1c:	00006659 	.word	0x00006659
c0de3e20:	000075db 	.word	0x000075db
c0de3e24:	00006cf6 	.word	0x00006cf6

c0de3e28 <jsmn_parse>:
c0de3e28:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3e2c:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
c0de3e30:	8804      	ldrh	r4, [r0, #0]
c0de3e32:	8846      	ldrh	r6, [r0, #2]
c0de3e34:	469a      	mov	sl, r3
c0de3e36:	4696      	mov	lr, r2
c0de3e38:	460f      	mov	r7, r1
c0de3e3a:	4605      	mov	r5, r0
c0de3e3c:	9101      	str	r1, [sp, #4]
c0de3e3e:	fa1f f88c 	uxth.w	r8, ip
c0de3e42:	b2a0      	uxth	r0, r4
c0de3e44:	4570      	cmp	r0, lr
c0de3e46:	f080 8177 	bcs.w	c0de4138 <jsmn_parse+0x310>
c0de3e4a:	f817 b000 	ldrb.w	fp, [r7, r0]
c0de3e4e:	f1ab 0009 	sub.w	r0, fp, #9
c0de3e52:	2819      	cmp	r0, #25
c0de3e54:	d944      	bls.n	c0de3ee0 <jsmn_parse+0xb8>
c0de3e56:	f1bb 0f2c 	cmp.w	fp, #44	; 0x2c
c0de3e5a:	f000 80e5 	beq.w	c0de4028 <jsmn_parse+0x200>
c0de3e5e:	f1bb 0f3a 	cmp.w	fp, #58	; 0x3a
c0de3e62:	f000 80b9 	beq.w	c0de3fd8 <jsmn_parse+0x1b0>
c0de3e66:	f1bb 0f5b 	cmp.w	fp, #91	; 0x5b
c0de3e6a:	f000 8090 	beq.w	c0de3f8e <jsmn_parse+0x166>
c0de3e6e:	f1bb 0f5d 	cmp.w	fp, #93	; 0x5d
c0de3e72:	f000 80b5 	beq.w	c0de3fe0 <jsmn_parse+0x1b8>
c0de3e76:	f1bb 0f7b 	cmp.w	fp, #123	; 0x7b
c0de3e7a:	f000 8088 	beq.w	c0de3f8e <jsmn_parse+0x166>
c0de3e7e:	f1bb 0f7d 	cmp.w	fp, #125	; 0x7d
c0de3e82:	f000 80ad 	beq.w	c0de3fe0 <jsmn_parse+0x1b8>
c0de3e86:	f1bb 0f00 	cmp.w	fp, #0
c0de3e8a:	4621      	mov	r1, r4
c0de3e8c:	f000 8154 	beq.w	c0de4138 <jsmn_parse+0x310>
c0de3e90:	b288      	uxth	r0, r1
c0de3e92:	4570      	cmp	r0, lr
c0de3e94:	f080 80e8 	bcs.w	c0de4068 <jsmn_parse+0x240>
c0de3e98:	5c38      	ldrb	r0, [r7, r0]
c0de3e9a:	280d      	cmp	r0, #13
c0de3e9c:	d806      	bhi.n	c0de3eac <jsmn_parse+0x84>
c0de3e9e:	2201      	movs	r2, #1
c0de3ea0:	f242 6301 	movw	r3, #9729	; 0x2601
c0de3ea4:	4082      	lsls	r2, r0
c0de3ea6:	421a      	tst	r2, r3
c0de3ea8:	f040 80de 	bne.w	c0de4068 <jsmn_parse+0x240>
c0de3eac:	f1a0 0220 	sub.w	r2, r0, #32
c0de3eb0:	2a1a      	cmp	r2, #26
c0de3eb2:	d806      	bhi.n	c0de3ec2 <jsmn_parse+0x9a>
c0de3eb4:	2301      	movs	r3, #1
c0de3eb6:	fa03 f202 	lsl.w	r2, r3, r2
c0de3eba:	4bb5      	ldr	r3, [pc, #724]	; (c0de4190 <jsmn_parse+0x368>)
c0de3ebc:	421a      	tst	r2, r3
c0de3ebe:	f040 80d3 	bne.w	c0de4068 <jsmn_parse+0x240>
c0de3ec2:	285d      	cmp	r0, #93	; 0x5d
c0de3ec4:	f000 80d0 	beq.w	c0de4068 <jsmn_parse+0x240>
c0de3ec8:	287d      	cmp	r0, #125	; 0x7d
c0de3eca:	f000 80cd 	beq.w	c0de4068 <jsmn_parse+0x240>
c0de3ece:	2820      	cmp	r0, #32
c0de3ed0:	f0c0 8147 	bcc.w	c0de4162 <jsmn_parse+0x33a>
c0de3ed4:	287e      	cmp	r0, #126	; 0x7e
c0de3ed6:	f200 8144 	bhi.w	c0de4162 <jsmn_parse+0x33a>
c0de3eda:	3101      	adds	r1, #1
c0de3edc:	8029      	strh	r1, [r5, #0]
c0de3ede:	e7d7      	b.n	c0de3e90 <jsmn_parse+0x68>
c0de3ee0:	2101      	movs	r1, #1
c0de3ee2:	4aa9      	ldr	r2, [pc, #676]	; (c0de4188 <jsmn_parse+0x360>)
c0de3ee4:	4081      	lsls	r1, r0
c0de3ee6:	4211      	tst	r1, r2
c0de3ee8:	f040 811e 	bne.w	c0de4128 <jsmn_parse+0x300>
c0de3eec:	2819      	cmp	r0, #25
c0de3eee:	4621      	mov	r1, r4
c0de3ef0:	d1b1      	bne.n	c0de3e56 <jsmn_parse+0x2e>
c0de3ef2:	4608      	mov	r0, r1
c0de3ef4:	3101      	adds	r1, #1
c0de3ef6:	b28a      	uxth	r2, r1
c0de3ef8:	8029      	strh	r1, [r5, #0]
c0de3efa:	4572      	cmp	r2, lr
c0de3efc:	f080 8117 	bcs.w	c0de412e <jsmn_parse+0x306>
c0de3f00:	5cbb      	ldrb	r3, [r7, r2]
c0de3f02:	2b5c      	cmp	r3, #92	; 0x5c
c0de3f04:	d005      	beq.n	c0de3f12 <jsmn_parse+0xea>
c0de3f06:	2b00      	cmp	r3, #0
c0de3f08:	f000 8111 	beq.w	c0de412e <jsmn_parse+0x306>
c0de3f0c:	2b22      	cmp	r3, #34	; 0x22
c0de3f0e:	d1f0      	bne.n	c0de3ef2 <jsmn_parse+0xca>
c0de3f10:	e0e3      	b.n	c0de40da <jsmn_parse+0x2b2>
c0de3f12:	3201      	adds	r2, #1
c0de3f14:	4572      	cmp	r2, lr
c0de3f16:	d2ec      	bcs.n	c0de3ef2 <jsmn_parse+0xca>
c0de3f18:	1c81      	adds	r1, r0, #2
c0de3f1a:	8029      	strh	r1, [r5, #0]
c0de3f1c:	b28a      	uxth	r2, r1
c0de3f1e:	f817 b002 	ldrb.w	fp, [r7, r2]
c0de3f22:	f1ab 035c 	sub.w	r3, fp, #92	; 0x5c
c0de3f26:	2b19      	cmp	r3, #25
c0de3f28:	d827      	bhi.n	c0de3f7a <jsmn_parse+0x152>
c0de3f2a:	2701      	movs	r7, #1
c0de3f2c:	4622      	mov	r2, r4
c0de3f2e:	4634      	mov	r4, r6
c0de3f30:	462e      	mov	r6, r5
c0de3f32:	4d96      	ldr	r5, [pc, #600]	; (c0de418c <jsmn_parse+0x364>)
c0de3f34:	409f      	lsls	r7, r3
c0de3f36:	422f      	tst	r7, r5
c0de3f38:	9f01      	ldr	r7, [sp, #4]
c0de3f3a:	4635      	mov	r5, r6
c0de3f3c:	4626      	mov	r6, r4
c0de3f3e:	4614      	mov	r4, r2
c0de3f40:	d1d7      	bne.n	c0de3ef2 <jsmn_parse+0xca>
c0de3f42:	2b19      	cmp	r3, #25
c0de3f44:	d119      	bne.n	c0de3f7a <jsmn_parse+0x152>
c0de3f46:	3003      	adds	r0, #3
c0de3f48:	2100      	movs	r1, #0
c0de3f4a:	8028      	strh	r0, [r5, #0]
c0de3f4c:	2903      	cmp	r1, #3
c0de3f4e:	d81b      	bhi.n	c0de3f88 <jsmn_parse+0x160>
c0de3f50:	b282      	uxth	r2, r0
c0de3f52:	4572      	cmp	r2, lr
c0de3f54:	d218      	bcs.n	c0de3f88 <jsmn_parse+0x160>
c0de3f56:	5cba      	ldrb	r2, [r7, r2]
c0de3f58:	b1b2      	cbz	r2, c0de3f88 <jsmn_parse+0x160>
c0de3f5a:	f1a2 0330 	sub.w	r3, r2, #48	; 0x30
c0de3f5e:	2b0a      	cmp	r3, #10
c0de3f60:	d307      	bcc.n	c0de3f72 <jsmn_parse+0x14a>
c0de3f62:	f1a2 0341 	sub.w	r3, r2, #65	; 0x41
c0de3f66:	2b06      	cmp	r3, #6
c0de3f68:	d303      	bcc.n	c0de3f72 <jsmn_parse+0x14a>
c0de3f6a:	3a61      	subs	r2, #97	; 0x61
c0de3f6c:	2a06      	cmp	r2, #6
c0de3f6e:	f080 80fd 	bcs.w	c0de416c <jsmn_parse+0x344>
c0de3f72:	3001      	adds	r0, #1
c0de3f74:	3101      	adds	r1, #1
c0de3f76:	8028      	strh	r0, [r5, #0]
c0de3f78:	e7e8      	b.n	c0de3f4c <jsmn_parse+0x124>
c0de3f7a:	f1bb 0f22 	cmp.w	fp, #34	; 0x22
c0de3f7e:	d0b8      	beq.n	c0de3ef2 <jsmn_parse+0xca>
c0de3f80:	f1bb 0f2f 	cmp.w	fp, #47	; 0x2f
c0de3f84:	d0b5      	beq.n	c0de3ef2 <jsmn_parse+0xca>
c0de3f86:	e0f1      	b.n	c0de416c <jsmn_parse+0x344>
c0de3f88:	1e41      	subs	r1, r0, #1
c0de3f8a:	8029      	strh	r1, [r5, #0]
c0de3f8c:	e7b1      	b.n	c0de3ef2 <jsmn_parse+0xca>
c0de3f8e:	3601      	adds	r6, #1
c0de3f90:	f1ba 0f00 	cmp.w	sl, #0
c0de3f94:	f000 80c8 	beq.w	c0de4128 <jsmn_parse+0x300>
c0de3f98:	9a0a      	ldr	r2, [sp, #40]	; 0x28
c0de3f9a:	4628      	mov	r0, r5
c0de3f9c:	4651      	mov	r1, sl
c0de3f9e:	4677      	mov	r7, lr
c0de3fa0:	9600      	str	r6, [sp, #0]
c0de3fa2:	f000 f8f7 	bl	c0de4194 <jsmn_alloc_token>
c0de3fa6:	2800      	cmp	r0, #0
c0de3fa8:	f000 80e9 	beq.w	c0de417e <jsmn_parse+0x356>
c0de3fac:	88a9      	ldrh	r1, [r5, #4]
c0de3fae:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
c0de3fb2:	46be      	mov	lr, r7
c0de3fb4:	4541      	cmp	r1, r8
c0de3fb6:	d005      	beq.n	c0de3fc4 <jsmn_parse+0x19c>
c0de3fb8:	b209      	sxth	r1, r1
c0de3fba:	eb0a 01c1 	add.w	r1, sl, r1, lsl #3
c0de3fbe:	88ca      	ldrh	r2, [r1, #6]
c0de3fc0:	3201      	adds	r2, #1
c0de3fc2:	80ca      	strh	r2, [r1, #6]
c0de3fc4:	2102      	movs	r1, #2
c0de3fc6:	f1bb 0f7b 	cmp.w	fp, #123	; 0x7b
c0de3fca:	bf08      	it	eq
c0de3fcc:	2101      	moveq	r1, #1
c0de3fce:	882c      	ldrh	r4, [r5, #0]
c0de3fd0:	7001      	strb	r1, [r0, #0]
c0de3fd2:	e9dd 6700 	ldrd	r6, r7, [sp]
c0de3fd6:	8044      	strh	r4, [r0, #2]
c0de3fd8:	8868      	ldrh	r0, [r5, #2]
c0de3fda:	3801      	subs	r0, #1
c0de3fdc:	80a8      	strh	r0, [r5, #4]
c0de3fde:	e0a3      	b.n	c0de4128 <jsmn_parse+0x300>
c0de3fe0:	f1ba 0f00 	cmp.w	sl, #0
c0de3fe4:	f000 80a0 	beq.w	c0de4128 <jsmn_parse+0x300>
c0de3fe8:	2102      	movs	r1, #2
c0de3fea:	f1bb 0f7d 	cmp.w	fp, #125	; 0x7d
c0de3fee:	bf08      	it	eq
c0de3ff0:	2101      	moveq	r1, #1
c0de3ff2:	886b      	ldrh	r3, [r5, #2]
c0de3ff4:	1e58      	subs	r0, r3, #1
c0de3ff6:	b200      	sxth	r0, r0
c0de3ff8:	4560      	cmp	r0, ip
c0de3ffa:	dd5c      	ble.n	c0de40b6 <jsmn_parse+0x28e>
c0de3ffc:	b287      	uxth	r7, r0
c0de3ffe:	eb0a 02c7 	add.w	r2, sl, r7, lsl #3
c0de4002:	8853      	ldrh	r3, [r2, #2]
c0de4004:	4543      	cmp	r3, r8
c0de4006:	4603      	mov	r3, r0
c0de4008:	d0f4      	beq.n	c0de3ff4 <jsmn_parse+0x1cc>
c0de400a:	f832 3f04 	ldrh.w	r3, [r2, #4]!
c0de400e:	4543      	cmp	r3, r8
c0de4010:	4603      	mov	r3, r0
c0de4012:	d1ef      	bne.n	c0de3ff4 <jsmn_parse+0x1cc>
c0de4014:	f81a 3037 	ldrb.w	r3, [sl, r7, lsl #3]
c0de4018:	4299      	cmp	r1, r3
c0de401a:	f040 80a8 	bne.w	c0de416e <jsmn_parse+0x346>
c0de401e:	1c61      	adds	r1, r4, #1
c0de4020:	f8a5 c004 	strh.w	ip, [r5, #4]
c0de4024:	8011      	strh	r1, [r2, #0]
c0de4026:	e048      	b.n	c0de40ba <jsmn_parse+0x292>
c0de4028:	f1ba 0f00 	cmp.w	sl, #0
c0de402c:	d07c      	beq.n	c0de4128 <jsmn_parse+0x300>
c0de402e:	88a8      	ldrh	r0, [r5, #4]
c0de4030:	4540      	cmp	r0, r8
c0de4032:	d079      	beq.n	c0de4128 <jsmn_parse+0x300>
c0de4034:	b200      	sxth	r0, r0
c0de4036:	f81a 0030 	ldrb.w	r0, [sl, r0, lsl #3]
c0de403a:	3801      	subs	r0, #1
c0de403c:	2802      	cmp	r0, #2
c0de403e:	d373      	bcc.n	c0de4128 <jsmn_parse+0x300>
c0de4040:	8868      	ldrh	r0, [r5, #2]
c0de4042:	3801      	subs	r0, #1
c0de4044:	b200      	sxth	r0, r0
c0de4046:	4560      	cmp	r0, ip
c0de4048:	dd6e      	ble.n	c0de4128 <jsmn_parse+0x300>
c0de404a:	b281      	uxth	r1, r0
c0de404c:	f81a 2031 	ldrb.w	r2, [sl, r1, lsl #3]
c0de4050:	3a01      	subs	r2, #1
c0de4052:	2a01      	cmp	r2, #1
c0de4054:	d8f5      	bhi.n	c0de4042 <jsmn_parse+0x21a>
c0de4056:	eb0a 01c1 	add.w	r1, sl, r1, lsl #3
c0de405a:	884a      	ldrh	r2, [r1, #2]
c0de405c:	4542      	cmp	r2, r8
c0de405e:	d0f0      	beq.n	c0de4042 <jsmn_parse+0x21a>
c0de4060:	8889      	ldrh	r1, [r1, #4]
c0de4062:	4541      	cmp	r1, r8
c0de4064:	d1ed      	bne.n	c0de4042 <jsmn_parse+0x21a>
c0de4066:	e7b9      	b.n	c0de3fdc <jsmn_parse+0x1b4>
c0de4068:	f1ba 0f00 	cmp.w	sl, #0
c0de406c:	d014      	beq.n	c0de4098 <jsmn_parse+0x270>
c0de406e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
c0de4070:	4628      	mov	r0, r5
c0de4072:	4651      	mov	r1, sl
c0de4074:	46f3      	mov	fp, lr
c0de4076:	4637      	mov	r7, r6
c0de4078:	f000 f88c 	bl	c0de4194 <jsmn_alloc_token>
c0de407c:	2800      	cmp	r0, #0
c0de407e:	d07a      	beq.n	c0de4176 <jsmn_parse+0x34e>
c0de4080:	2100      	movs	r1, #0
c0de4082:	463e      	mov	r6, r7
c0de4084:	9f01      	ldr	r7, [sp, #4]
c0de4086:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
c0de408a:	46de      	mov	lr, fp
c0de408c:	8044      	strh	r4, [r0, #2]
c0de408e:	80c1      	strh	r1, [r0, #6]
c0de4090:	2104      	movs	r1, #4
c0de4092:	7001      	strb	r1, [r0, #0]
c0de4094:	8829      	ldrh	r1, [r5, #0]
c0de4096:	8081      	strh	r1, [r0, #4]
c0de4098:	3601      	adds	r6, #1
c0de409a:	1e4c      	subs	r4, r1, #1
c0de409c:	f1ba 0f00 	cmp.w	sl, #0
c0de40a0:	d042      	beq.n	c0de4128 <jsmn_parse+0x300>
c0de40a2:	88a8      	ldrh	r0, [r5, #4]
c0de40a4:	4540      	cmp	r0, r8
c0de40a6:	d03f      	beq.n	c0de4128 <jsmn_parse+0x300>
c0de40a8:	b200      	sxth	r0, r0
c0de40aa:	eb0a 00c0 	add.w	r0, sl, r0, lsl #3
c0de40ae:	88c1      	ldrh	r1, [r0, #6]
c0de40b0:	3101      	adds	r1, #1
c0de40b2:	80c1      	strh	r1, [r0, #6]
c0de40b4:	e038      	b.n	c0de4128 <jsmn_parse+0x300>
c0de40b6:	0419      	lsls	r1, r3, #16
c0de40b8:	d059      	beq.n	c0de416e <jsmn_parse+0x346>
c0de40ba:	9f01      	ldr	r7, [sp, #4]
c0de40bc:	b201      	sxth	r1, r0
c0de40be:	4561      	cmp	r1, ip
c0de40c0:	dd32      	ble.n	c0de4128 <jsmn_parse+0x300>
c0de40c2:	b281      	uxth	r1, r0
c0de40c4:	eb0a 01c1 	add.w	r1, sl, r1, lsl #3
c0de40c8:	884a      	ldrh	r2, [r1, #2]
c0de40ca:	4542      	cmp	r2, r8
c0de40cc:	d003      	beq.n	c0de40d6 <jsmn_parse+0x2ae>
c0de40ce:	8889      	ldrh	r1, [r1, #4]
c0de40d0:	4541      	cmp	r1, r8
c0de40d2:	f43f af83 	beq.w	c0de3fdc <jsmn_parse+0x1b4>
c0de40d6:	3801      	subs	r0, #1
c0de40d8:	e7f0      	b.n	c0de40bc <jsmn_parse+0x294>
c0de40da:	f1ba 0f00 	cmp.w	sl, #0
c0de40de:	d015      	beq.n	c0de410c <jsmn_parse+0x2e4>
c0de40e0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
c0de40e2:	4628      	mov	r0, r5
c0de40e4:	4651      	mov	r1, sl
c0de40e6:	46f3      	mov	fp, lr
c0de40e8:	4637      	mov	r7, r6
c0de40ea:	f000 f853 	bl	c0de4194 <jsmn_alloc_token>
c0de40ee:	2800      	cmp	r0, #0
c0de40f0:	d044      	beq.n	c0de417c <jsmn_parse+0x354>
c0de40f2:	2100      	movs	r1, #0
c0de40f4:	463e      	mov	r6, r7
c0de40f6:	9f01      	ldr	r7, [sp, #4]
c0de40f8:	1c62      	adds	r2, r4, #1
c0de40fa:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
c0de40fe:	46de      	mov	lr, fp
c0de4100:	80c1      	strh	r1, [r0, #6]
c0de4102:	2103      	movs	r1, #3
c0de4104:	8042      	strh	r2, [r0, #2]
c0de4106:	7001      	strb	r1, [r0, #0]
c0de4108:	8829      	ldrh	r1, [r5, #0]
c0de410a:	8081      	strh	r1, [r0, #4]
c0de410c:	3601      	adds	r6, #1
c0de410e:	f1ba 0f00 	cmp.w	sl, #0
c0de4112:	d008      	beq.n	c0de4126 <jsmn_parse+0x2fe>
c0de4114:	88a8      	ldrh	r0, [r5, #4]
c0de4116:	4540      	cmp	r0, r8
c0de4118:	d005      	beq.n	c0de4126 <jsmn_parse+0x2fe>
c0de411a:	b200      	sxth	r0, r0
c0de411c:	eb0a 00c0 	add.w	r0, sl, r0, lsl #3
c0de4120:	88c2      	ldrh	r2, [r0, #6]
c0de4122:	3201      	adds	r2, #1
c0de4124:	80c2      	strh	r2, [r0, #6]
c0de4126:	460c      	mov	r4, r1
c0de4128:	3401      	adds	r4, #1
c0de412a:	802c      	strh	r4, [r5, #0]
c0de412c:	e689      	b.n	c0de3e42 <jsmn_parse+0x1a>
c0de412e:	802c      	strh	r4, [r5, #0]
c0de4130:	f06f 0002 	mvn.w	r0, #2
c0de4134:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de4138:	f1ba 0f00 	cmp.w	sl, #0
c0de413c:	d00e      	beq.n	c0de415c <jsmn_parse+0x334>
c0de413e:	8868      	ldrh	r0, [r5, #2]
c0de4140:	3801      	subs	r0, #1
c0de4142:	b200      	sxth	r0, r0
c0de4144:	4560      	cmp	r0, ip
c0de4146:	dd09      	ble.n	c0de415c <jsmn_parse+0x334>
c0de4148:	b281      	uxth	r1, r0
c0de414a:	eb0a 01c1 	add.w	r1, sl, r1, lsl #3
c0de414e:	884a      	ldrh	r2, [r1, #2]
c0de4150:	4542      	cmp	r2, r8
c0de4152:	d0f5      	beq.n	c0de4140 <jsmn_parse+0x318>
c0de4154:	8889      	ldrh	r1, [r1, #4]
c0de4156:	4541      	cmp	r1, r8
c0de4158:	d1f2      	bne.n	c0de4140 <jsmn_parse+0x318>
c0de415a:	e7e9      	b.n	c0de4130 <jsmn_parse+0x308>
c0de415c:	b230      	sxth	r0, r6
c0de415e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de4162:	f06f 0001 	mvn.w	r0, #1
c0de4166:	802c      	strh	r4, [r5, #0]
c0de4168:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de416c:	802c      	strh	r4, [r5, #0]
c0de416e:	f06f 0001 	mvn.w	r0, #1
c0de4172:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de4176:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
c0de417a:	e7f4      	b.n	c0de4166 <jsmn_parse+0x33e>
c0de417c:	802c      	strh	r4, [r5, #0]
c0de417e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
c0de4182:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de4186:	bf00      	nop
c0de4188:	00800013 	.word	0x00800013
c0de418c:	01440441 	.word	0x01440441
c0de4190:	04001001 	.word	0x04001001

c0de4194 <jsmn_alloc_token>:
c0de4194:	b510      	push	{r4, lr}
c0de4196:	8844      	ldrh	r4, [r0, #2]
c0de4198:	4603      	mov	r3, r0
c0de419a:	2000      	movs	r0, #0
c0de419c:	4294      	cmp	r4, r2
c0de419e:	d209      	bcs.n	c0de41b4 <jsmn_alloc_token+0x20>
c0de41a0:	eb01 01c4 	add.w	r1, r1, r4, lsl #3
c0de41a4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
c0de41a8:	3401      	adds	r4, #1
c0de41aa:	80c8      	strh	r0, [r1, #6]
c0de41ac:	4608      	mov	r0, r1
c0de41ae:	808a      	strh	r2, [r1, #4]
c0de41b0:	805c      	strh	r4, [r3, #2]
c0de41b2:	804a      	strh	r2, [r1, #2]
c0de41b4:	bd10      	pop	{r4, pc}

c0de41b6 <jsmn_init>:
c0de41b6:	f64f 71ff 	movw	r1, #65535	; 0xffff
c0de41ba:	8081      	strh	r1, [r0, #4]
c0de41bc:	2100      	movs	r1, #0
c0de41be:	8041      	strh	r1, [r0, #2]
c0de41c0:	8001      	strh	r1, [r0, #0]
c0de41c2:	4770      	bx	lr

c0de41c4 <io_event>:
c0de41c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de41c6:	f8df 54a4 	ldr.w	r5, [pc, #1188]	; c0de466c <io_event+0x4a8>
c0de41ca:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de41ce:	2815      	cmp	r0, #21
c0de41d0:	f000 80a9 	beq.w	c0de4326 <io_event+0x162>
c0de41d4:	280d      	cmp	r0, #13
c0de41d6:	f000 80b1 	beq.w	c0de433c <io_event+0x178>
c0de41da:	280e      	cmp	r0, #14
c0de41dc:	d054      	beq.n	c0de4288 <io_event+0xc4>
c0de41de:	2805      	cmp	r0, #5
c0de41e0:	f040 80fc 	bne.w	c0de43dc <io_event+0x218>
c0de41e4:	f8df 6488 	ldr.w	r6, [pc, #1160]	; c0de4670 <io_event+0x4ac>
c0de41e8:	2001      	movs	r0, #1
c0de41ea:	f809 0006 	strb.w	r0, [r9, r6]
c0de41ee:	eb09 0406 	add.w	r4, r9, r6
c0de41f2:	f000 fb59 	bl	c0de48a8 <OUTLINED_FUNCTION_8>
c0de41f6:	f000 fb4e 	bl	c0de4896 <OUTLINED_FUNCTION_6>
c0de41fa:	2800      	cmp	r0, #0
c0de41fc:	6060      	str	r0, [r4, #4]
c0de41fe:	f000 8221 	beq.w	c0de4644 <io_event+0x480>
c0de4202:	2897      	cmp	r0, #151	; 0x97
c0de4204:	f000 821e 	beq.w	c0de4644 <io_event+0x480>
c0de4208:	f8df 4468 	ldr.w	r4, [pc, #1128]	; c0de4674 <io_event+0x4b0>
c0de420c:	2869      	cmp	r0, #105	; 0x69
c0de420e:	f040 81de 	bne.w	c0de45ce <io_event+0x40a>
c0de4212:	eb09 0504 	add.w	r5, r9, r4
c0de4216:	f004 fcb9 	bl	c0de8b8c <io_seproxyhal_init_ux>
c0de421a:	f004 fcb9 	bl	c0de8b90 <io_seproxyhal_init_button>
c0de421e:	2000      	movs	r0, #0
c0de4220:	444e      	add	r6, r9
c0de4222:	f8a5 00ca 	strh.w	r0, [r5, #202]	; 0xca
c0de4226:	f000 fb36 	bl	c0de4896 <OUTLINED_FUNCTION_6>
c0de422a:	f8d5 10cc 	ldr.w	r1, [r5, #204]	; 0xcc
c0de422e:	6070      	str	r0, [r6, #4]
c0de4230:	2900      	cmp	r1, #0
c0de4232:	f000 8207 	beq.w	c0de4644 <io_event+0x480>
c0de4236:	2800      	cmp	r0, #0
c0de4238:	f000 8204 	beq.w	c0de4644 <io_event+0x480>
c0de423c:	2897      	cmp	r0, #151	; 0x97
c0de423e:	f000 8201 	beq.w	c0de4644 <io_event+0x480>
c0de4242:	f000 fb05 	bl	c0de4850 <OUTLINED_FUNCTION_1>
c0de4246:	f080 81fd 	bcs.w	c0de4644 <io_event+0x480>
c0de424a:	f005 fa6f 	bl	c0de972c <os_perso_isonboarded>
c0de424e:	28aa      	cmp	r0, #170	; 0xaa
c0de4250:	d104      	bne.n	c0de425c <io_event+0x98>
c0de4252:	f005 faa2 	bl	c0de979a <os_global_pin_is_validated>
c0de4256:	28aa      	cmp	r0, #170	; 0xaa
c0de4258:	f040 81f4 	bne.w	c0de4644 <io_event+0x480>
c0de425c:	f000 fb16 	bl	c0de488c <OUTLINED_FUNCTION_5>
c0de4260:	f000 fb0d 	bl	c0de487e <OUTLINED_FUNCTION_4>
c0de4264:	f080 81f5 	bcs.w	c0de4652 <io_event+0x48e>
c0de4268:	f000 fae8 	bl	c0de483c <OUTLINED_FUNCTION_0>
c0de426c:	d003      	beq.n	c0de4276 <io_event+0xb2>
c0de426e:	4798      	blx	r3
c0de4270:	b138      	cbz	r0, c0de4282 <io_event+0xbe>
c0de4272:	f000 fafd 	bl	c0de4870 <OUTLINED_FUNCTION_3>
c0de4276:	2801      	cmp	r0, #1
c0de4278:	bf08      	it	eq
c0de427a:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de427e:	f000 fcb5 	bl	c0de4bec <io_seproxyhal_display>
c0de4282:	f000 faed 	bl	c0de4860 <OUTLINED_FUNCTION_2>
c0de4286:	e7eb      	b.n	c0de4260 <io_event+0x9c>
c0de4288:	f8df 63e4 	ldr.w	r6, [pc, #996]	; c0de4670 <io_event+0x4ac>
c0de428c:	2001      	movs	r0, #1
c0de428e:	2700      	movs	r7, #0
c0de4290:	eb09 0506 	add.w	r5, r9, r6
c0de4294:	f809 0006 	strb.w	r0, [r9, r6]
c0de4298:	4628      	mov	r0, r5
c0de429a:	606f      	str	r7, [r5, #4]
c0de429c:	f005 fa86 	bl	c0de97ac <os_ux>
c0de42a0:	f000 faf9 	bl	c0de4896 <OUTLINED_FUNCTION_6>
c0de42a4:	2869      	cmp	r0, #105	; 0x69
c0de42a6:	6068      	str	r0, [r5, #4]
c0de42a8:	f040 80e5 	bne.w	c0de4476 <io_event+0x2b2>
c0de42ac:	f8df 43c4 	ldr.w	r4, [pc, #964]	; c0de4674 <io_event+0x4b0>
c0de42b0:	eb09 0504 	add.w	r5, r9, r4
c0de42b4:	f004 fc6a 	bl	c0de8b8c <io_seproxyhal_init_ux>
c0de42b8:	f004 fc6a 	bl	c0de8b90 <io_seproxyhal_init_button>
c0de42bc:	2004      	movs	r0, #4
c0de42be:	f8a5 70ca 	strh.w	r7, [r5, #202]	; 0xca
c0de42c2:	444e      	add	r6, r9
c0de42c4:	f005 fade 	bl	c0de9884 <os_sched_last_status>
c0de42c8:	f8d5 10cc 	ldr.w	r1, [r5, #204]	; 0xcc
c0de42cc:	6070      	str	r0, [r6, #4]
c0de42ce:	2900      	cmp	r1, #0
c0de42d0:	f000 81b8 	beq.w	c0de4644 <io_event+0x480>
c0de42d4:	2800      	cmp	r0, #0
c0de42d6:	f000 81b5 	beq.w	c0de4644 <io_event+0x480>
c0de42da:	2897      	cmp	r0, #151	; 0x97
c0de42dc:	f000 81b2 	beq.w	c0de4644 <io_event+0x480>
c0de42e0:	f000 fab6 	bl	c0de4850 <OUTLINED_FUNCTION_1>
c0de42e4:	f080 81ae 	bcs.w	c0de4644 <io_event+0x480>
c0de42e8:	f005 fa20 	bl	c0de972c <os_perso_isonboarded>
c0de42ec:	28aa      	cmp	r0, #170	; 0xaa
c0de42ee:	d104      	bne.n	c0de42fa <io_event+0x136>
c0de42f0:	f005 fa53 	bl	c0de979a <os_global_pin_is_validated>
c0de42f4:	28aa      	cmp	r0, #170	; 0xaa
c0de42f6:	f040 81a5 	bne.w	c0de4644 <io_event+0x480>
c0de42fa:	f000 fac7 	bl	c0de488c <OUTLINED_FUNCTION_5>
c0de42fe:	f000 fabe 	bl	c0de487e <OUTLINED_FUNCTION_4>
c0de4302:	f080 81a6 	bcs.w	c0de4652 <io_event+0x48e>
c0de4306:	f000 fa99 	bl	c0de483c <OUTLINED_FUNCTION_0>
c0de430a:	d003      	beq.n	c0de4314 <io_event+0x150>
c0de430c:	4798      	blx	r3
c0de430e:	b138      	cbz	r0, c0de4320 <io_event+0x15c>
c0de4310:	f000 faae 	bl	c0de4870 <OUTLINED_FUNCTION_3>
c0de4314:	2801      	cmp	r0, #1
c0de4316:	bf08      	it	eq
c0de4318:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de431c:	f000 fc66 	bl	c0de4bec <io_seproxyhal_display>
c0de4320:	f000 fa9e 	bl	c0de4860 <OUTLINED_FUNCTION_2>
c0de4324:	e7eb      	b.n	c0de42fe <io_event+0x13a>
c0de4326:	48d4      	ldr	r0, [pc, #848]	; (c0de4678 <io_event+0x4b4>)
c0de4328:	4448      	add	r0, r9
c0de432a:	7980      	ldrb	r0, [r0, #6]
c0de432c:	2801      	cmp	r0, #1
c0de432e:	d105      	bne.n	c0de433c <io_event+0x178>
c0de4330:	eb09 0005 	add.w	r0, r9, r5
c0de4334:	7980      	ldrb	r0, [r0, #6]
c0de4336:	0700      	lsls	r0, r0, #28
c0de4338:	f140 8195 	bpl.w	c0de4666 <io_event+0x4a2>
c0de433c:	4dcc      	ldr	r5, [pc, #816]	; (c0de4670 <io_event+0x4ac>)
c0de433e:	2001      	movs	r0, #1
c0de4340:	f809 0005 	strb.w	r0, [r9, r5]
c0de4344:	eb09 0405 	add.w	r4, r9, r5
c0de4348:	f000 faae 	bl	c0de48a8 <OUTLINED_FUNCTION_8>
c0de434c:	f000 faa3 	bl	c0de4896 <OUTLINED_FUNCTION_6>
c0de4350:	2800      	cmp	r0, #0
c0de4352:	6060      	str	r0, [r4, #4]
c0de4354:	f000 8176 	beq.w	c0de4644 <io_event+0x480>
c0de4358:	2897      	cmp	r0, #151	; 0x97
c0de435a:	f000 8173 	beq.w	c0de4644 <io_event+0x480>
c0de435e:	4cc5      	ldr	r4, [pc, #788]	; (c0de4674 <io_event+0x4b0>)
c0de4360:	2869      	cmp	r0, #105	; 0x69
c0de4362:	f040 8111 	bne.w	c0de4588 <io_event+0x3c4>
c0de4366:	eb09 0604 	add.w	r6, r9, r4
c0de436a:	f004 fc0f 	bl	c0de8b8c <io_seproxyhal_init_ux>
c0de436e:	f004 fc0f 	bl	c0de8b90 <io_seproxyhal_init_button>
c0de4372:	2000      	movs	r0, #0
c0de4374:	444d      	add	r5, r9
c0de4376:	f8a6 00ca 	strh.w	r0, [r6, #202]	; 0xca
c0de437a:	f000 fa8c 	bl	c0de4896 <OUTLINED_FUNCTION_6>
c0de437e:	f8d6 10cc 	ldr.w	r1, [r6, #204]	; 0xcc
c0de4382:	6068      	str	r0, [r5, #4]
c0de4384:	2900      	cmp	r1, #0
c0de4386:	f000 815d 	beq.w	c0de4644 <io_event+0x480>
c0de438a:	2800      	cmp	r0, #0
c0de438c:	f000 815a 	beq.w	c0de4644 <io_event+0x480>
c0de4390:	2897      	cmp	r0, #151	; 0x97
c0de4392:	f000 8157 	beq.w	c0de4644 <io_event+0x480>
c0de4396:	f000 fa5b 	bl	c0de4850 <OUTLINED_FUNCTION_1>
c0de439a:	f080 8153 	bcs.w	c0de4644 <io_event+0x480>
c0de439e:	f005 f9c5 	bl	c0de972c <os_perso_isonboarded>
c0de43a2:	28aa      	cmp	r0, #170	; 0xaa
c0de43a4:	d104      	bne.n	c0de43b0 <io_event+0x1ec>
c0de43a6:	f005 f9f8 	bl	c0de979a <os_global_pin_is_validated>
c0de43aa:	28aa      	cmp	r0, #170	; 0xaa
c0de43ac:	f040 814a 	bne.w	c0de4644 <io_event+0x480>
c0de43b0:	f000 fa6c 	bl	c0de488c <OUTLINED_FUNCTION_5>
c0de43b4:	f000 fa63 	bl	c0de487e <OUTLINED_FUNCTION_4>
c0de43b8:	f080 814b 	bcs.w	c0de4652 <io_event+0x48e>
c0de43bc:	f000 fa3e 	bl	c0de483c <OUTLINED_FUNCTION_0>
c0de43c0:	d003      	beq.n	c0de43ca <io_event+0x206>
c0de43c2:	4798      	blx	r3
c0de43c4:	b138      	cbz	r0, c0de43d6 <io_event+0x212>
c0de43c6:	f000 fa53 	bl	c0de4870 <OUTLINED_FUNCTION_3>
c0de43ca:	2801      	cmp	r0, #1
c0de43cc:	bf08      	it	eq
c0de43ce:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de43d2:	f000 fc0b 	bl	c0de4bec <io_seproxyhal_display>
c0de43d6:	f000 fa43 	bl	c0de4860 <OUTLINED_FUNCTION_2>
c0de43da:	e7eb      	b.n	c0de43b4 <io_event+0x1f0>
c0de43dc:	4da4      	ldr	r5, [pc, #656]	; (c0de4670 <io_event+0x4ac>)
c0de43de:	2001      	movs	r0, #1
c0de43e0:	2600      	movs	r6, #0
c0de43e2:	eb09 0405 	add.w	r4, r9, r5
c0de43e6:	f809 0005 	strb.w	r0, [r9, r5]
c0de43ea:	4620      	mov	r0, r4
c0de43ec:	6066      	str	r6, [r4, #4]
c0de43ee:	f005 f9dd 	bl	c0de97ac <os_ux>
c0de43f2:	f000 fa50 	bl	c0de4896 <OUTLINED_FUNCTION_6>
c0de43f6:	6060      	str	r0, [r4, #4]
c0de43f8:	4c9e      	ldr	r4, [pc, #632]	; (c0de4674 <io_event+0x4b0>)
c0de43fa:	2869      	cmp	r0, #105	; 0x69
c0de43fc:	f040 80a1 	bne.w	c0de4542 <io_event+0x37e>
c0de4400:	eb09 0704 	add.w	r7, r9, r4
c0de4404:	f004 fbc2 	bl	c0de8b8c <io_seproxyhal_init_ux>
c0de4408:	f004 fbc2 	bl	c0de8b90 <io_seproxyhal_init_button>
c0de440c:	2004      	movs	r0, #4
c0de440e:	f8a7 60ca 	strh.w	r6, [r7, #202]	; 0xca
c0de4412:	444d      	add	r5, r9
c0de4414:	f005 fa36 	bl	c0de9884 <os_sched_last_status>
c0de4418:	f8d7 10cc 	ldr.w	r1, [r7, #204]	; 0xcc
c0de441c:	6068      	str	r0, [r5, #4]
c0de441e:	2900      	cmp	r1, #0
c0de4420:	f000 8110 	beq.w	c0de4644 <io_event+0x480>
c0de4424:	2800      	cmp	r0, #0
c0de4426:	f000 810d 	beq.w	c0de4644 <io_event+0x480>
c0de442a:	2897      	cmp	r0, #151	; 0x97
c0de442c:	f000 810a 	beq.w	c0de4644 <io_event+0x480>
c0de4430:	f000 fa0e 	bl	c0de4850 <OUTLINED_FUNCTION_1>
c0de4434:	f080 8106 	bcs.w	c0de4644 <io_event+0x480>
c0de4438:	f005 f978 	bl	c0de972c <os_perso_isonboarded>
c0de443c:	28aa      	cmp	r0, #170	; 0xaa
c0de443e:	d104      	bne.n	c0de444a <io_event+0x286>
c0de4440:	f005 f9ab 	bl	c0de979a <os_global_pin_is_validated>
c0de4444:	28aa      	cmp	r0, #170	; 0xaa
c0de4446:	f040 80fd 	bne.w	c0de4644 <io_event+0x480>
c0de444a:	f000 fa1f 	bl	c0de488c <OUTLINED_FUNCTION_5>
c0de444e:	f000 fa16 	bl	c0de487e <OUTLINED_FUNCTION_4>
c0de4452:	f080 80fe 	bcs.w	c0de4652 <io_event+0x48e>
c0de4456:	f000 f9f1 	bl	c0de483c <OUTLINED_FUNCTION_0>
c0de445a:	d003      	beq.n	c0de4464 <io_event+0x2a0>
c0de445c:	4798      	blx	r3
c0de445e:	b138      	cbz	r0, c0de4470 <io_event+0x2ac>
c0de4460:	f000 fa06 	bl	c0de4870 <OUTLINED_FUNCTION_3>
c0de4464:	2801      	cmp	r0, #1
c0de4466:	bf08      	it	eq
c0de4468:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de446c:	f000 fbbe 	bl	c0de4bec <io_seproxyhal_display>
c0de4470:	f000 f9f6 	bl	c0de4860 <OUTLINED_FUNCTION_2>
c0de4474:	e7eb      	b.n	c0de444e <io_event+0x28a>
c0de4476:	4d7f      	ldr	r5, [pc, #508]	; (c0de4674 <io_event+0x4b0>)
c0de4478:	4604      	mov	r4, r0
c0de447a:	eb09 0005 	add.w	r0, r9, r5
c0de447e:	f8d0 00e4 	ldr.w	r0, [r0, #228]	; 0xe4
c0de4482:	b1a0      	cbz	r0, c0de44ae <io_event+0x2ea>
c0de4484:	f1b0 0264 	subs.w	r2, r0, #100	; 0x64
c0de4488:	eb09 0105 	add.w	r1, r9, r5
c0de448c:	bf38      	it	cc
c0de448e:	2200      	movcc	r2, #0
c0de4490:	2864      	cmp	r0, #100	; 0x64
c0de4492:	f8c1 20e4 	str.w	r2, [r1, #228]	; 0xe4
c0de4496:	d80a      	bhi.n	c0de44ae <io_event+0x2ea>
c0de4498:	f8d1 10e0 	ldr.w	r1, [r1, #224]	; 0xe0
c0de449c:	b139      	cbz	r1, c0de44ae <io_event+0x2ea>
c0de449e:	eb09 0005 	add.w	r0, r9, r5
c0de44a2:	f8d0 20e8 	ldr.w	r2, [r0, #232]	; 0xe8
c0de44a6:	f8c0 20e4 	str.w	r2, [r0, #228]	; 0xe4
c0de44aa:	2000      	movs	r0, #0
c0de44ac:	4788      	blx	r1
c0de44ae:	2c00      	cmp	r4, #0
c0de44b0:	f000 80c8 	beq.w	c0de4644 <io_event+0x480>
c0de44b4:	2c97      	cmp	r4, #151	; 0x97
c0de44b6:	f000 80c5 	beq.w	c0de4644 <io_event+0x480>
c0de44ba:	eb09 0005 	add.w	r0, r9, r5
c0de44be:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de44c2:	2800      	cmp	r0, #0
c0de44c4:	f000 80cc 	beq.w	c0de4660 <io_event+0x49c>
c0de44c8:	eb09 0005 	add.w	r0, r9, r5
c0de44cc:	f890 10d0 	ldrb.w	r1, [r0, #208]	; 0xd0
c0de44d0:	f8b0 00ca 	ldrh.w	r0, [r0, #202]	; 0xca
c0de44d4:	4288      	cmp	r0, r1
c0de44d6:	f080 80c3 	bcs.w	c0de4660 <io_event+0x49c>
c0de44da:	f005 f927 	bl	c0de972c <os_perso_isonboarded>
c0de44de:	28aa      	cmp	r0, #170	; 0xaa
c0de44e0:	d104      	bne.n	c0de44ec <io_event+0x328>
c0de44e2:	f005 f95a 	bl	c0de979a <os_global_pin_is_validated>
c0de44e6:	28aa      	cmp	r0, #170	; 0xaa
c0de44e8:	f040 80ba 	bne.w	c0de4660 <io_event+0x49c>
c0de44ec:	eb09 0005 	add.w	r0, r9, r5
c0de44f0:	f8b0 00ca 	ldrh.w	r0, [r0, #202]	; 0xca
c0de44f4:	eb09 0105 	add.w	r1, r9, r5
c0de44f8:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de44fc:	b281      	uxth	r1, r0
c0de44fe:	4291      	cmp	r1, r2
c0de4500:	f080 80ab 	bcs.w	c0de465a <io_event+0x496>
c0de4504:	eb09 0005 	add.w	r0, r9, r5
c0de4508:	f8d0 30d8 	ldr.w	r3, [r0, #216]	; 0xd8
c0de450c:	f8d0 20cc 	ldr.w	r2, [r0, #204]	; 0xcc
c0de4510:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de4514:	b13b      	cbz	r3, c0de4526 <io_event+0x362>
c0de4516:	4798      	blx	r3
c0de4518:	b158      	cbz	r0, c0de4532 <io_event+0x36e>
c0de451a:	eb09 0205 	add.w	r2, r9, r5
c0de451e:	f8b2 10ca 	ldrh.w	r1, [r2, #202]	; 0xca
c0de4522:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de4526:	2801      	cmp	r0, #1
c0de4528:	bf08      	it	eq
c0de452a:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de452e:	f000 fb5d 	bl	c0de4bec <io_seproxyhal_display>
c0de4532:	eb09 0105 	add.w	r1, r9, r5
c0de4536:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de453a:	3001      	adds	r0, #1
c0de453c:	f8a1 00ca 	strh.w	r0, [r1, #202]	; 0xca
c0de4540:	e7d8      	b.n	c0de44f4 <io_event+0x330>
c0de4542:	f000 f9ab 	bl	c0de489c <OUTLINED_FUNCTION_7>
c0de4546:	d073      	beq.n	c0de4630 <io_event+0x46c>
c0de4548:	f000 f982 	bl	c0de4850 <OUTLINED_FUNCTION_1>
c0de454c:	d270      	bcs.n	c0de4630 <io_event+0x46c>
c0de454e:	f005 f8ed 	bl	c0de972c <os_perso_isonboarded>
c0de4552:	28aa      	cmp	r0, #170	; 0xaa
c0de4554:	d103      	bne.n	c0de455e <io_event+0x39a>
c0de4556:	f005 f920 	bl	c0de979a <os_global_pin_is_validated>
c0de455a:	28aa      	cmp	r0, #170	; 0xaa
c0de455c:	d168      	bne.n	c0de4630 <io_event+0x46c>
c0de455e:	f000 f995 	bl	c0de488c <OUTLINED_FUNCTION_5>
c0de4562:	f000 f98c 	bl	c0de487e <OUTLINED_FUNCTION_4>
c0de4566:	d260      	bcs.n	c0de462a <io_event+0x466>
c0de4568:	f000 f968 	bl	c0de483c <OUTLINED_FUNCTION_0>
c0de456c:	d003      	beq.n	c0de4576 <io_event+0x3b2>
c0de456e:	4798      	blx	r3
c0de4570:	b138      	cbz	r0, c0de4582 <io_event+0x3be>
c0de4572:	f000 f97d 	bl	c0de4870 <OUTLINED_FUNCTION_3>
c0de4576:	2801      	cmp	r0, #1
c0de4578:	bf08      	it	eq
c0de457a:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de457e:	f000 fb35 	bl	c0de4bec <io_seproxyhal_display>
c0de4582:	f000 f96d 	bl	c0de4860 <OUTLINED_FUNCTION_2>
c0de4586:	e7ec      	b.n	c0de4562 <io_event+0x39e>
c0de4588:	f000 f988 	bl	c0de489c <OUTLINED_FUNCTION_7>
c0de458c:	d050      	beq.n	c0de4630 <io_event+0x46c>
c0de458e:	f000 f95f 	bl	c0de4850 <OUTLINED_FUNCTION_1>
c0de4592:	d24d      	bcs.n	c0de4630 <io_event+0x46c>
c0de4594:	f005 f8ca 	bl	c0de972c <os_perso_isonboarded>
c0de4598:	28aa      	cmp	r0, #170	; 0xaa
c0de459a:	d103      	bne.n	c0de45a4 <io_event+0x3e0>
c0de459c:	f005 f8fd 	bl	c0de979a <os_global_pin_is_validated>
c0de45a0:	28aa      	cmp	r0, #170	; 0xaa
c0de45a2:	d145      	bne.n	c0de4630 <io_event+0x46c>
c0de45a4:	f000 f972 	bl	c0de488c <OUTLINED_FUNCTION_5>
c0de45a8:	f000 f969 	bl	c0de487e <OUTLINED_FUNCTION_4>
c0de45ac:	d23d      	bcs.n	c0de462a <io_event+0x466>
c0de45ae:	f000 f945 	bl	c0de483c <OUTLINED_FUNCTION_0>
c0de45b2:	d003      	beq.n	c0de45bc <io_event+0x3f8>
c0de45b4:	4798      	blx	r3
c0de45b6:	b138      	cbz	r0, c0de45c8 <io_event+0x404>
c0de45b8:	f000 f95a 	bl	c0de4870 <OUTLINED_FUNCTION_3>
c0de45bc:	2801      	cmp	r0, #1
c0de45be:	bf08      	it	eq
c0de45c0:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de45c4:	f000 fb12 	bl	c0de4bec <io_seproxyhal_display>
c0de45c8:	f000 f94a 	bl	c0de4860 <OUTLINED_FUNCTION_2>
c0de45cc:	e7ec      	b.n	c0de45a8 <io_event+0x3e4>
c0de45ce:	eb09 0004 	add.w	r0, r9, r4
c0de45d2:	f8d0 00dc 	ldr.w	r0, [r0, #220]	; 0xdc
c0de45d6:	b128      	cbz	r0, c0de45e4 <io_event+0x420>
c0de45d8:	eb09 0105 	add.w	r1, r9, r5
c0de45dc:	78c9      	ldrb	r1, [r1, #3]
c0de45de:	0849      	lsrs	r1, r1, #1
c0de45e0:	f004 fb26 	bl	c0de8c30 <io_seproxyhal_button_push>
c0de45e4:	f000 f95a 	bl	c0de489c <OUTLINED_FUNCTION_7>
c0de45e8:	d022      	beq.n	c0de4630 <io_event+0x46c>
c0de45ea:	f000 f931 	bl	c0de4850 <OUTLINED_FUNCTION_1>
c0de45ee:	d21f      	bcs.n	c0de4630 <io_event+0x46c>
c0de45f0:	f005 f89c 	bl	c0de972c <os_perso_isonboarded>
c0de45f4:	28aa      	cmp	r0, #170	; 0xaa
c0de45f6:	d103      	bne.n	c0de4600 <io_event+0x43c>
c0de45f8:	f005 f8cf 	bl	c0de979a <os_global_pin_is_validated>
c0de45fc:	28aa      	cmp	r0, #170	; 0xaa
c0de45fe:	d117      	bne.n	c0de4630 <io_event+0x46c>
c0de4600:	f000 f944 	bl	c0de488c <OUTLINED_FUNCTION_5>
c0de4604:	f000 f93b 	bl	c0de487e <OUTLINED_FUNCTION_4>
c0de4608:	d20f      	bcs.n	c0de462a <io_event+0x466>
c0de460a:	f000 f917 	bl	c0de483c <OUTLINED_FUNCTION_0>
c0de460e:	d003      	beq.n	c0de4618 <io_event+0x454>
c0de4610:	4798      	blx	r3
c0de4612:	b138      	cbz	r0, c0de4624 <io_event+0x460>
c0de4614:	f000 f92c 	bl	c0de4870 <OUTLINED_FUNCTION_3>
c0de4618:	2801      	cmp	r0, #1
c0de461a:	bf08      	it	eq
c0de461c:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de4620:	f000 fae4 	bl	c0de4bec <io_seproxyhal_display>
c0de4624:	f000 f91c 	bl	c0de4860 <OUTLINED_FUNCTION_2>
c0de4628:	e7ec      	b.n	c0de4604 <io_event+0x440>
c0de462a:	bf08      	it	eq
c0de462c:	f005 f936 	bleq	c0de989c <screen_update>
c0de4630:	eb09 0004 	add.w	r0, r9, r4
c0de4634:	f890 10d0 	ldrb.w	r1, [r0, #208]	; 0xd0
c0de4638:	f8b0 00ca 	ldrh.w	r0, [r0, #202]	; 0xca
c0de463c:	4288      	cmp	r0, r1
c0de463e:	bf28      	it	cs
c0de4640:	f005 f8fa 	blcs	c0de9838 <io_seph_is_status_sent>
c0de4644:	f005 f8f8 	bl	c0de9838 <io_seph_is_status_sent>
c0de4648:	b908      	cbnz	r0, c0de464e <io_event+0x48a>
c0de464a:	f004 f969 	bl	c0de8920 <io_seproxyhal_general_status>
c0de464e:	2001      	movs	r0, #1
c0de4650:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de4652:	d1f7      	bne.n	c0de4644 <io_event+0x480>
c0de4654:	f005 f922 	bl	c0de989c <screen_update>
c0de4658:	e7f4      	b.n	c0de4644 <io_event+0x480>
c0de465a:	bf08      	it	eq
c0de465c:	f005 f91e 	bleq	c0de989c <screen_update>
c0de4660:	eb09 0005 	add.w	r0, r9, r5
c0de4664:	e7e6      	b.n	c0de4634 <io_event+0x470>
c0de4666:	2005      	movs	r0, #5
c0de4668:	f004 f953 	bl	c0de8912 <os_longjmp>
c0de466c:	0000512b 	.word	0x0000512b
c0de4670:	00006410 	.word	0x00006410
c0de4674:	000062d4 	.word	0x000062d4
c0de4678:	00006684 	.word	0x00006684

c0de467c <io_exchange_al>:
c0de467c:	b510      	push	{r4, lr}
c0de467e:	4604      	mov	r4, r0
c0de4680:	f000 0003 	and.w	r0, r0, #3
c0de4684:	2801      	cmp	r0, #1
c0de4686:	d00a      	beq.n	c0de469e <io_exchange_al+0x22>
c0de4688:	2802      	cmp	r0, #2
c0de468a:	d111      	bne.n	c0de46b0 <io_exchange_al+0x34>
c0de468c:	480a      	ldr	r0, [pc, #40]	; (c0de46b8 <io_exchange_al+0x3c>)
c0de468e:	4448      	add	r0, r9
c0de4690:	b139      	cbz	r1, c0de46a2 <io_exchange_al+0x26>
c0de4692:	f005 f8c7 	bl	c0de9824 <io_seph_send>
c0de4696:	0620      	lsls	r0, r4, #24
c0de4698:	bf48      	it	mi
c0de469a:	f005 f828 	blmi	c0de96ee <halt>
c0de469e:	2000      	movs	r0, #0
c0de46a0:	bd10      	pop	{r4, pc}
c0de46a2:	f44f 7182 	mov.w	r1, #260	; 0x104
c0de46a6:	2200      	movs	r2, #0
c0de46a8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de46ac:	f005 b8cc 	b.w	c0de9848 <io_seph_recv>
c0de46b0:	2002      	movs	r0, #2
c0de46b2:	f004 f92e 	bl	c0de8912 <os_longjmp>
c0de46b6:	bf00      	nop
c0de46b8:	00006580 	.word	0x00006580

c0de46bc <handle_generic_apdu>:
c0de46bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de46be:	2a05      	cmp	r2, #5
c0de46c0:	d311      	bcc.n	c0de46e6 <handle_generic_apdu+0x2a>
c0de46c2:	481a      	ldr	r0, [pc, #104]	; (c0de472c <handle_generic_apdu+0x70>)
c0de46c4:	460c      	mov	r4, r1
c0de46c6:	eb09 0200 	add.w	r2, r9, r0
c0de46ca:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de46ce:	7853      	ldrb	r3, [r2, #1]
c0de46d0:	7895      	ldrb	r5, [r2, #2]
c0de46d2:	78d2      	ldrb	r2, [r2, #3]
c0de46d4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de46d8:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de46dc:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de46e0:	f5b1 7ff0 	cmp.w	r1, #480	; 0x1e0
c0de46e4:	d000      	beq.n	c0de46e8 <handle_generic_apdu+0x2c>
c0de46e6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de46e8:	2133      	movs	r1, #51	; 0x33
c0de46ea:	eb09 0600 	add.w	r6, r9, r0
c0de46ee:	2700      	movs	r7, #0
c0de46f0:	f809 1000 	strb.w	r1, [r9, r0]
c0de46f4:	2004      	movs	r0, #4
c0de46f6:	1d75      	adds	r5, r6, #5
c0de46f8:	2140      	movs	r1, #64	; 0x40
c0de46fa:	70b7      	strb	r7, [r6, #2]
c0de46fc:	70f0      	strb	r0, [r6, #3]
c0de46fe:	2010      	movs	r0, #16
c0de4700:	7070      	strb	r0, [r6, #1]
c0de4702:	4628      	mov	r0, r5
c0de4704:	f005 f864 	bl	c0de97d0 <os_version>
c0de4708:	b2c1      	uxtb	r1, r0
c0de470a:	7130      	strb	r0, [r6, #4]
c0de470c:	546f      	strb	r7, [r5, r1]
c0de470e:	186f      	adds	r7, r5, r1
c0de4710:	2140      	movs	r1, #64	; 0x40
c0de4712:	1cbd      	adds	r5, r7, #2
c0de4714:	4628      	mov	r0, r5
c0de4716:	f005 f865 	bl	c0de97e4 <os_seph_version>
c0de471a:	7078      	strb	r0, [r7, #1]
c0de471c:	b2c0      	uxtb	r0, r0
c0de471e:	4428      	add	r0, r5
c0de4720:	1b80      	subs	r0, r0, r6
c0de4722:	6020      	str	r0, [r4, #0]
c0de4724:	f44f 4010 	mov.w	r0, #36864	; 0x9000
c0de4728:	f004 f8f3 	bl	c0de8912 <os_longjmp>
c0de472c:	00006580 	.word	0x00006580

c0de4730 <app_init>:
c0de4730:	b580      	push	{r7, lr}
c0de4732:	f004 f9f9 	bl	c0de8b28 <io_seproxyhal_init>
c0de4736:	f001 f823 	bl	c0de5780 <init_zondax_canary>
c0de473a:	2000      	movs	r0, #0
c0de473c:	f003 f8f4 	bl	c0de7928 <USB_power>
c0de4740:	2001      	movs	r0, #1
c0de4742:	f003 f8f1 	bl	c0de7928 <USB_power>
c0de4746:	f000 fe37 	bl	c0de53b8 <app_mode_reset>
c0de474a:	2000      	movs	r0, #0
c0de474c:	2100      	movs	r1, #0
c0de474e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de4752:	f000 b8cf 	b.w	c0de48f4 <view_idle_show>
	...

c0de4758 <app_main>:
c0de4758:	b090      	sub	sp, #64	; 0x40
c0de475a:	2600      	movs	r6, #0
c0de475c:	960f      	str	r6, [sp, #60]	; 0x3c
c0de475e:	960e      	str	r6, [sp, #56]	; 0x38
c0de4760:	960d      	str	r6, [sp, #52]	; 0x34
c0de4762:	f7fc f9a5 	bl	c0de0ab0 <tx_initialize>
c0de4766:	f8df a0d0 	ldr.w	sl, [pc, #208]	; c0de4838 <app_main+0xe0>
c0de476a:	466c      	mov	r4, sp
c0de476c:	ad0e      	add	r5, sp, #56	; 0x38
c0de476e:	f10d 0834 	add.w	r8, sp, #52	; 0x34
c0de4772:	f04f 0b0d 	mov.w	fp, #13
c0de4776:	4620      	mov	r0, r4
c0de4778:	f8ad 6032 	strh.w	r6, [sp, #50]	; 0x32
c0de477c:	f005 f914 	bl	c0de99a8 <setjmp>
c0de4780:	4607      	mov	r7, r0
c0de4782:	f8ad 002c 	strh.w	r0, [sp, #44]	; 0x2c
c0de4786:	b280      	uxth	r0, r0
c0de4788:	2805      	cmp	r0, #5
c0de478a:	d021      	beq.n	c0de47d0 <app_main+0x78>
c0de478c:	bb28      	cbnz	r0, c0de47da <app_main+0x82>
c0de478e:	4620      	mov	r0, r4
c0de4790:	f005 f86e 	bl	c0de9870 <try_context_set>
c0de4794:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de4796:	910f      	str	r1, [sp, #60]	; 0x3c
c0de4798:	960e      	str	r6, [sp, #56]	; 0x38
c0de479a:	900a      	str	r0, [sp, #40]	; 0x28
c0de479c:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de479e:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0de47a0:	b2c0      	uxtb	r0, r0
c0de47a2:	b289      	uxth	r1, r1
c0de47a4:	f004 facc 	bl	c0de8d40 <io_exchange>
c0de47a8:	900f      	str	r0, [sp, #60]	; 0x3c
c0de47aa:	960d      	str	r6, [sp, #52]	; 0x34
c0de47ac:	f001 f870 	bl	c0de5890 <check_app_canary>
c0de47b0:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de47b2:	b3e8      	cbz	r0, c0de4830 <app_main+0xd8>
c0de47b4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de47b6:	4629      	mov	r1, r5
c0de47b8:	f7ff ff80 	bl	c0de46bc <handle_generic_apdu>
c0de47bc:	f001 f868 	bl	c0de5890 <check_app_canary>
c0de47c0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de47c2:	4640      	mov	r0, r8
c0de47c4:	4629      	mov	r1, r5
c0de47c6:	f7fb fd6f 	bl	c0de02a8 <handleApdu>
c0de47ca:	f001 f861 	bl	c0de5890 <check_app_canary>
c0de47ce:	e022      	b.n	c0de4816 <app_main+0xbe>
c0de47d0:	f000 f86f 	bl	c0de48b2 <OUTLINED_FUNCTION_9>
c0de47d4:	f7ff ffac 	bl	c0de4730 <app_init>
c0de47d8:	e7cd      	b.n	c0de4776 <app_main+0x1e>
c0de47da:	f000 f86a 	bl	c0de48b2 <OUTLINED_FUNCTION_9>
c0de47de:	f407 4070 	and.w	r0, r7, #61440	; 0xf000
c0de47e2:	f5b0 4f10 	cmp.w	r0, #36864	; 0x9000
c0de47e6:	d004      	beq.n	c0de47f2 <app_main+0x9a>
c0de47e8:	f5b0 4fc0 	cmp.w	r0, #24576	; 0x6000
c0de47ec:	bf18      	it	ne
c0de47ee:	f36b 27df 	bfine	r7, fp, #11, #21
c0de47f2:	f8ad 7032 	strh.w	r7, [sp, #50]	; 0x32
c0de47f6:	4648      	mov	r0, r9
c0de47f8:	f8bd 1032 	ldrh.w	r1, [sp, #50]	; 0x32
c0de47fc:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0de47fe:	eb09 000a 	add.w	r0, r9, sl
c0de4802:	0a09      	lsrs	r1, r1, #8
c0de4804:	5481      	strb	r1, [r0, r2]
c0de4806:	f8bd 1032 	ldrh.w	r1, [sp, #50]	; 0x32
c0de480a:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0de480c:	4410      	add	r0, r2
c0de480e:	7041      	strb	r1, [r0, #1]
c0de4810:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de4812:	3002      	adds	r0, #2
c0de4814:	900e      	str	r0, [sp, #56]	; 0x38
c0de4816:	f005 f823 	bl	c0de9860 <try_context_get>
c0de481a:	42a0      	cmp	r0, r4
c0de481c:	d102      	bne.n	c0de4824 <app_main+0xcc>
c0de481e:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de4820:	f005 f826 	bl	c0de9870 <try_context_set>
c0de4824:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
c0de4828:	2800      	cmp	r0, #0
c0de482a:	d0a4      	beq.n	c0de4776 <app_main+0x1e>
c0de482c:	f004 f871 	bl	c0de8912 <os_longjmp>
c0de4830:	f646 1082 	movw	r0, #27010	; 0x6982
c0de4834:	f004 f86d 	bl	c0de8912 <os_longjmp>
c0de4838:	00006580 	.word	0x00006580

c0de483c <OUTLINED_FUNCTION_0>:
c0de483c:	eb09 0004 	add.w	r0, r9, r4
c0de4840:	f8d0 30d8 	ldr.w	r3, [r0, #216]	; 0xd8
c0de4844:	f8d0 20cc 	ldr.w	r2, [r0, #204]	; 0xcc
c0de4848:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de484c:	2b00      	cmp	r3, #0
c0de484e:	4770      	bx	lr

c0de4850 <OUTLINED_FUNCTION_1>:
c0de4850:	eb09 0004 	add.w	r0, r9, r4
c0de4854:	f890 10d0 	ldrb.w	r1, [r0, #208]	; 0xd0
c0de4858:	f8b0 00ca 	ldrh.w	r0, [r0, #202]	; 0xca
c0de485c:	4288      	cmp	r0, r1
c0de485e:	4770      	bx	lr

c0de4860 <OUTLINED_FUNCTION_2>:
c0de4860:	eb09 0104 	add.w	r1, r9, r4
c0de4864:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de4868:	3001      	adds	r0, #1
c0de486a:	f8a1 00ca 	strh.w	r0, [r1, #202]	; 0xca
c0de486e:	4770      	bx	lr

c0de4870 <OUTLINED_FUNCTION_3>:
c0de4870:	eb09 0204 	add.w	r2, r9, r4
c0de4874:	f8b2 10ca 	ldrh.w	r1, [r2, #202]	; 0xca
c0de4878:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de487c:	4770      	bx	lr

c0de487e <OUTLINED_FUNCTION_4>:
c0de487e:	eb09 0104 	add.w	r1, r9, r4
c0de4882:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de4886:	b281      	uxth	r1, r0
c0de4888:	4291      	cmp	r1, r2
c0de488a:	4770      	bx	lr

c0de488c <OUTLINED_FUNCTION_5>:
c0de488c:	eb09 0004 	add.w	r0, r9, r4
c0de4890:	f8b0 00ca 	ldrh.w	r0, [r0, #202]	; 0xca
c0de4894:	4770      	bx	lr

c0de4896 <OUTLINED_FUNCTION_6>:
c0de4896:	2004      	movs	r0, #4
c0de4898:	f004 bff4 	b.w	c0de9884 <os_sched_last_status>

c0de489c <OUTLINED_FUNCTION_7>:
c0de489c:	eb09 0004 	add.w	r0, r9, r4
c0de48a0:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de48a4:	2800      	cmp	r0, #0
c0de48a6:	4770      	bx	lr

c0de48a8 <OUTLINED_FUNCTION_8>:
c0de48a8:	2000      	movs	r0, #0
c0de48aa:	6060      	str	r0, [r4, #4]
c0de48ac:	4620      	mov	r0, r4
c0de48ae:	f004 bf7d 	b.w	c0de97ac <os_ux>

c0de48b2 <OUTLINED_FUNCTION_9>:
c0de48b2:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de48b4:	f8ad 602c 	strh.w	r6, [sp, #44]	; 0x2c
c0de48b8:	f004 bfda 	b.w	c0de9870 <try_context_set>

c0de48bc <h_paging_init>:
c0de48bc:	b580      	push	{r7, lr}
c0de48be:	4807      	ldr	r0, [pc, #28]	; (c0de48dc <h_paging_init+0x20>)
c0de48c0:	4478      	add	r0, pc
c0de48c2:	f000 fff7 	bl	c0de58b4 <zemu_log_stack>
c0de48c6:	4803      	ldr	r0, [pc, #12]	; (c0de48d4 <h_paging_init+0x18>)
c0de48c8:	4a03      	ldr	r2, [pc, #12]	; (c0de48d8 <h_paging_init+0x1c>)
c0de48ca:	f241 015c 	movw	r1, #4188	; 0x105c
c0de48ce:	4448      	add	r0, r9
c0de48d0:	5042      	str	r2, [r0, r1]
c0de48d2:	bd80      	pop	{r7, pc}
c0de48d4:	0000525c 	.word	0x0000525c
c0de48d8:	0100ff00 	.word	0x0100ff00
c0de48dc:	000057fd 	.word	0x000057fd

c0de48e0 <view_init>:
c0de48e0:	b580      	push	{r7, lr}
c0de48e2:	4803      	ldr	r0, [pc, #12]	; (c0de48f0 <view_init+0x10>)
c0de48e4:	f44f 7188 	mov.w	r1, #272	; 0x110
c0de48e8:	4448      	add	r0, r9
c0de48ea:	f005 f80b 	bl	c0de9904 <__aeabi_memclr>
c0de48ee:	bd80      	pop	{r7, pc}
c0de48f0:	000062d4 	.word	0x000062d4

c0de48f4 <view_idle_show>:
c0de48f4:	f000 bc32 	b.w	c0de515c <view_idle_show_impl>

c0de48f8 <view_review_init>:
c0de48f8:	b5b0      	push	{r4, r5, r7, lr}
c0de48fa:	4b03      	ldr	r3, [pc, #12]	; (c0de4908 <view_review_init+0x10>)
c0de48fc:	f241 046f 	movw	r4, #4207	; 0x106f
c0de4900:	2500      	movs	r5, #0
c0de4902:	f000 b940 	b.w	c0de4b86 <OUTLINED_FUNCTION_1>
c0de4906:	bf00      	nop
c0de4908:	0000525c 	.word	0x0000525c

c0de490c <view_review_show>:
c0de490c:	2100      	movs	r1, #0
c0de490e:	2200      	movs	r2, #0
c0de4910:	f000 bc4e 	b.w	c0de51b0 <view_review_show_impl>

c0de4914 <h_approve>:
c0de4914:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de4916:	482c      	ldr	r0, [pc, #176]	; (c0de49c8 <h_approve+0xb4>)
c0de4918:	4478      	add	r0, pc
c0de491a:	f000 ffcb 	bl	c0de58b4 <zemu_log_stack>
c0de491e:	f000 f957 	bl	c0de4bd0 <OUTLINED_FUNCTION_6>
c0de4922:	4d26      	ldr	r5, [pc, #152]	; (c0de49bc <h_approve+0xa8>)
c0de4924:	4c26      	ldr	r4, [pc, #152]	; (c0de49c0 <h_approve+0xac>)
c0de4926:	f000 f921 	bl	c0de4b6c <OUTLINED_FUNCTION_0>
c0de492a:	42b7      	cmp	r7, r6
c0de492c:	d235      	bcs.n	c0de499a <h_approve+0x86>
c0de492e:	eb09 0005 	add.w	r0, r9, r5
c0de4932:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de4936:	2800      	cmp	r0, #0
c0de4938:	d0f5      	beq.n	c0de4926 <h_approve+0x12>
c0de493a:	eb09 0005 	add.w	r0, r9, r5
c0de493e:	f000 f93b 	bl	c0de4bb8 <OUTLINED_FUNCTION_4>
c0de4942:	d2f0      	bcs.n	c0de4926 <h_approve+0x12>
c0de4944:	f004 fef2 	bl	c0de972c <os_perso_isonboarded>
c0de4948:	28aa      	cmp	r0, #170	; 0xaa
c0de494a:	d103      	bne.n	c0de4954 <h_approve+0x40>
c0de494c:	f004 ff25 	bl	c0de979a <os_global_pin_is_validated>
c0de4950:	28aa      	cmp	r0, #170	; 0xaa
c0de4952:	d1e8      	bne.n	c0de4926 <h_approve+0x12>
c0de4954:	eb09 0005 	add.w	r0, r9, r5
c0de4958:	f8b0 00ca 	ldrh.w	r0, [r0, #202]	; 0xca
c0de495c:	eb09 0105 	add.w	r1, r9, r5
c0de4960:	f000 f93f 	bl	c0de4be2 <OUTLINED_FUNCTION_8>
c0de4964:	d215      	bcs.n	c0de4992 <h_approve+0x7e>
c0de4966:	eb09 0005 	add.w	r0, r9, r5
c0de496a:	f000 f918 	bl	c0de4b9e <OUTLINED_FUNCTION_2>
c0de496e:	d005      	beq.n	c0de497c <h_approve+0x68>
c0de4970:	4798      	blx	r3
c0de4972:	b148      	cbz	r0, c0de4988 <h_approve+0x74>
c0de4974:	eb09 0205 	add.w	r2, r9, r5
c0de4978:	f000 f92e 	bl	c0de4bd8 <OUTLINED_FUNCTION_7>
c0de497c:	2801      	cmp	r0, #1
c0de497e:	bf08      	it	eq
c0de4980:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de4984:	f000 f932 	bl	c0de4bec <io_seproxyhal_display>
c0de4988:	eb09 0105 	add.w	r1, r9, r5
c0de498c:	f000 f91a 	bl	c0de4bc4 <OUTLINED_FUNCTION_5>
c0de4990:	e7e4      	b.n	c0de495c <h_approve+0x48>
c0de4992:	d1c8      	bne.n	c0de4926 <h_approve+0x12>
c0de4994:	f004 ff82 	bl	c0de989c <screen_update>
c0de4998:	e7c5      	b.n	c0de4926 <h_approve+0x12>
c0de499a:	f003 ffc1 	bl	c0de8920 <io_seproxyhal_general_status>
c0de499e:	eb09 0004 	add.w	r0, r9, r4
c0de49a2:	f000 f904 	bl	c0de4bae <OUTLINED_FUNCTION_3>
c0de49a6:	4807      	ldr	r0, [pc, #28]	; (c0de49c4 <h_approve+0xb0>)
c0de49a8:	f241 0148 	movw	r1, #4168	; 0x1048
c0de49ac:	4448      	add	r0, r9
c0de49ae:	5840      	ldr	r0, [r0, r1]
c0de49b0:	b110      	cbz	r0, c0de49b8 <h_approve+0xa4>
c0de49b2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de49b6:	4700      	bx	r0
c0de49b8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de49ba:	bf00      	nop
c0de49bc:	000062d4 	.word	0x000062d4
c0de49c0:	0000512b 	.word	0x0000512b
c0de49c4:	0000525c 	.word	0x0000525c
c0de49c8:	00005403 	.word	0x00005403

c0de49cc <h_reject>:
c0de49cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de49d0:	4680      	mov	r8, r0
c0de49d2:	4839      	ldr	r0, [pc, #228]	; (c0de4ab8 <h_reject+0xec>)
c0de49d4:	4478      	add	r0, pc
c0de49d6:	f000 ff6d 	bl	c0de58b4 <zemu_log_stack>
c0de49da:	f000 f8f9 	bl	c0de4bd0 <OUTLINED_FUNCTION_6>
c0de49de:	4e33      	ldr	r6, [pc, #204]	; (c0de4aac <h_reject+0xe0>)
c0de49e0:	4d33      	ldr	r5, [pc, #204]	; (c0de4ab0 <h_reject+0xe4>)
c0de49e2:	eb09 0006 	add.w	r0, r9, r6
c0de49e6:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de49ea:	2200      	movs	r2, #0
c0de49ec:	f890 70d0 	ldrb.w	r7, [r0, #208]	; 0xd0
c0de49f0:	f8b0 40ca 	ldrh.w	r4, [r0, #202]	; 0xca
c0de49f4:	eb09 0005 	add.w	r0, r9, r5
c0de49f8:	f004 ff26 	bl	c0de9848 <io_seph_recv>
c0de49fc:	42bc      	cmp	r4, r7
c0de49fe:	d235      	bcs.n	c0de4a6c <h_reject+0xa0>
c0de4a00:	eb09 0006 	add.w	r0, r9, r6
c0de4a04:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de4a08:	2800      	cmp	r0, #0
c0de4a0a:	d0ea      	beq.n	c0de49e2 <h_reject+0x16>
c0de4a0c:	eb09 0006 	add.w	r0, r9, r6
c0de4a10:	f000 f8d2 	bl	c0de4bb8 <OUTLINED_FUNCTION_4>
c0de4a14:	d2e5      	bcs.n	c0de49e2 <h_reject+0x16>
c0de4a16:	f004 fe89 	bl	c0de972c <os_perso_isonboarded>
c0de4a1a:	28aa      	cmp	r0, #170	; 0xaa
c0de4a1c:	d103      	bne.n	c0de4a26 <h_reject+0x5a>
c0de4a1e:	f004 febc 	bl	c0de979a <os_global_pin_is_validated>
c0de4a22:	28aa      	cmp	r0, #170	; 0xaa
c0de4a24:	d1dd      	bne.n	c0de49e2 <h_reject+0x16>
c0de4a26:	eb09 0006 	add.w	r0, r9, r6
c0de4a2a:	f8b0 00ca 	ldrh.w	r0, [r0, #202]	; 0xca
c0de4a2e:	eb09 0106 	add.w	r1, r9, r6
c0de4a32:	f000 f8d6 	bl	c0de4be2 <OUTLINED_FUNCTION_8>
c0de4a36:	d215      	bcs.n	c0de4a64 <h_reject+0x98>
c0de4a38:	eb09 0006 	add.w	r0, r9, r6
c0de4a3c:	f000 f8af 	bl	c0de4b9e <OUTLINED_FUNCTION_2>
c0de4a40:	d005      	beq.n	c0de4a4e <h_reject+0x82>
c0de4a42:	4798      	blx	r3
c0de4a44:	b148      	cbz	r0, c0de4a5a <h_reject+0x8e>
c0de4a46:	eb09 0206 	add.w	r2, r9, r6
c0de4a4a:	f000 f8c5 	bl	c0de4bd8 <OUTLINED_FUNCTION_7>
c0de4a4e:	2801      	cmp	r0, #1
c0de4a50:	bf08      	it	eq
c0de4a52:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de4a56:	f000 f8c9 	bl	c0de4bec <io_seproxyhal_display>
c0de4a5a:	eb09 0106 	add.w	r1, r9, r6
c0de4a5e:	f000 f8b1 	bl	c0de4bc4 <OUTLINED_FUNCTION_5>
c0de4a62:	e7e4      	b.n	c0de4a2e <h_reject+0x62>
c0de4a64:	d1bd      	bne.n	c0de49e2 <h_reject+0x16>
c0de4a66:	f004 ff19 	bl	c0de989c <screen_update>
c0de4a6a:	e7ba      	b.n	c0de49e2 <h_reject+0x16>
c0de4a6c:	f003 ff58 	bl	c0de8920 <io_seproxyhal_general_status>
c0de4a70:	eb09 0005 	add.w	r0, r9, r5
c0de4a74:	f000 f89b 	bl	c0de4bae <OUTLINED_FUNCTION_3>
c0de4a78:	f06f 0004 	mvn.w	r0, #4
c0de4a7c:	ea18 0f00 	tst.w	r8, r0
c0de4a80:	bf08      	it	eq
c0de4a82:	e8bd 81f0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de4a86:	4d0b      	ldr	r5, [pc, #44]	; (c0de4ab4 <h_reject+0xe8>)
c0de4a88:	f44f 7182 	mov.w	r1, #260	; 0x104
c0de4a8c:	eb09 0405 	add.w	r4, r9, r5
c0de4a90:	4620      	mov	r0, r4
c0de4a92:	f004 ff43 	bl	c0de991c <explicit_bzero>
c0de4a96:	2069      	movs	r0, #105	; 0x69
c0de4a98:	2102      	movs	r1, #2
c0de4a9a:	f809 0005 	strb.w	r0, [r9, r5]
c0de4a9e:	2086      	movs	r0, #134	; 0x86
c0de4aa0:	7060      	strb	r0, [r4, #1]
c0de4aa2:	2020      	movs	r0, #32
c0de4aa4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4aa8:	f004 b94a 	b.w	c0de8d40 <io_exchange>
c0de4aac:	000062d4 	.word	0x000062d4
c0de4ab0:	0000512b 	.word	0x0000512b
c0de4ab4:	00006580 	.word	0x00006580
c0de4ab8:	00005990 	.word	0x00005990

c0de4abc <h_error_accept>:
c0de4abc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de4abe:	f000 f887 	bl	c0de4bd0 <OUTLINED_FUNCTION_6>
c0de4ac2:	4d27      	ldr	r5, [pc, #156]	; (c0de4b60 <h_error_accept+0xa4>)
c0de4ac4:	4c27      	ldr	r4, [pc, #156]	; (c0de4b64 <h_error_accept+0xa8>)
c0de4ac6:	f000 f851 	bl	c0de4b6c <OUTLINED_FUNCTION_0>
c0de4aca:	42b7      	cmp	r7, r6
c0de4acc:	d235      	bcs.n	c0de4b3a <h_error_accept+0x7e>
c0de4ace:	eb09 0005 	add.w	r0, r9, r5
c0de4ad2:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de4ad6:	2800      	cmp	r0, #0
c0de4ad8:	d0f5      	beq.n	c0de4ac6 <h_error_accept+0xa>
c0de4ada:	eb09 0005 	add.w	r0, r9, r5
c0de4ade:	f000 f86b 	bl	c0de4bb8 <OUTLINED_FUNCTION_4>
c0de4ae2:	d2f0      	bcs.n	c0de4ac6 <h_error_accept+0xa>
c0de4ae4:	f004 fe22 	bl	c0de972c <os_perso_isonboarded>
c0de4ae8:	28aa      	cmp	r0, #170	; 0xaa
c0de4aea:	d103      	bne.n	c0de4af4 <h_error_accept+0x38>
c0de4aec:	f004 fe55 	bl	c0de979a <os_global_pin_is_validated>
c0de4af0:	28aa      	cmp	r0, #170	; 0xaa
c0de4af2:	d1e8      	bne.n	c0de4ac6 <h_error_accept+0xa>
c0de4af4:	eb09 0005 	add.w	r0, r9, r5
c0de4af8:	f8b0 00ca 	ldrh.w	r0, [r0, #202]	; 0xca
c0de4afc:	eb09 0105 	add.w	r1, r9, r5
c0de4b00:	f000 f86f 	bl	c0de4be2 <OUTLINED_FUNCTION_8>
c0de4b04:	d215      	bcs.n	c0de4b32 <h_error_accept+0x76>
c0de4b06:	eb09 0005 	add.w	r0, r9, r5
c0de4b0a:	f000 f848 	bl	c0de4b9e <OUTLINED_FUNCTION_2>
c0de4b0e:	d005      	beq.n	c0de4b1c <h_error_accept+0x60>
c0de4b10:	4798      	blx	r3
c0de4b12:	b148      	cbz	r0, c0de4b28 <h_error_accept+0x6c>
c0de4b14:	eb09 0205 	add.w	r2, r9, r5
c0de4b18:	f000 f85e 	bl	c0de4bd8 <OUTLINED_FUNCTION_7>
c0de4b1c:	2801      	cmp	r0, #1
c0de4b1e:	bf08      	it	eq
c0de4b20:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de4b24:	f000 f862 	bl	c0de4bec <io_seproxyhal_display>
c0de4b28:	eb09 0105 	add.w	r1, r9, r5
c0de4b2c:	f000 f84a 	bl	c0de4bc4 <OUTLINED_FUNCTION_5>
c0de4b30:	e7e4      	b.n	c0de4afc <h_error_accept+0x40>
c0de4b32:	d1c8      	bne.n	c0de4ac6 <h_error_accept+0xa>
c0de4b34:	f004 feb2 	bl	c0de989c <screen_update>
c0de4b38:	e7c5      	b.n	c0de4ac6 <h_error_accept+0xa>
c0de4b3a:	f003 fef1 	bl	c0de8920 <io_seproxyhal_general_status>
c0de4b3e:	eb09 0004 	add.w	r0, r9, r4
c0de4b42:	f000 f834 	bl	c0de4bae <OUTLINED_FUNCTION_3>
c0de4b46:	4808      	ldr	r0, [pc, #32]	; (c0de4b68 <h_error_accept+0xac>)
c0de4b48:	2169      	movs	r1, #105	; 0x69
c0de4b4a:	f809 1000 	strb.w	r1, [r9, r0]
c0de4b4e:	4448      	add	r0, r9
c0de4b50:	2184      	movs	r1, #132	; 0x84
c0de4b52:	7041      	strb	r1, [r0, #1]
c0de4b54:	2020      	movs	r0, #32
c0de4b56:	2102      	movs	r1, #2
c0de4b58:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de4b5c:	f004 b8f0 	b.w	c0de8d40 <io_exchange>
c0de4b60:	000062d4 	.word	0x000062d4
c0de4b64:	0000512b 	.word	0x0000512b
c0de4b68:	00006580 	.word	0x00006580

c0de4b6c <OUTLINED_FUNCTION_0>:
c0de4b6c:	eb09 0005 	add.w	r0, r9, r5
c0de4b70:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de4b74:	2200      	movs	r2, #0
c0de4b76:	f890 60d0 	ldrb.w	r6, [r0, #208]	; 0xd0
c0de4b7a:	f8b0 70ca 	ldrh.w	r7, [r0, #202]	; 0xca
c0de4b7e:	eb09 0004 	add.w	r0, r9, r4
c0de4b82:	f004 be61 	b.w	c0de9848 <io_seph_recv>

c0de4b86 <OUTLINED_FUNCTION_1>:
c0de4b86:	444b      	add	r3, r9
c0de4b88:	551d      	strb	r5, [r3, r4]
c0de4b8a:	f241 0448 	movw	r4, #4168	; 0x1048
c0de4b8e:	511a      	str	r2, [r3, r4]
c0de4b90:	f241 0244 	movw	r2, #4164	; 0x1044
c0de4b94:	5099      	str	r1, [r3, r2]
c0de4b96:	f44f 5182 	mov.w	r1, #4160	; 0x1040
c0de4b9a:	5058      	str	r0, [r3, r1]
c0de4b9c:	bdb0      	pop	{r4, r5, r7, pc}

c0de4b9e <OUTLINED_FUNCTION_2>:
c0de4b9e:	f8d0 30d8 	ldr.w	r3, [r0, #216]	; 0xd8
c0de4ba2:	f8d0 20cc 	ldr.w	r2, [r0, #204]	; 0xcc
c0de4ba6:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de4baa:	2b00      	cmp	r3, #0
c0de4bac:	4770      	bx	lr

c0de4bae <OUTLINED_FUNCTION_3>:
c0de4bae:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de4bb2:	2200      	movs	r2, #0
c0de4bb4:	f004 be48 	b.w	c0de9848 <io_seph_recv>

c0de4bb8 <OUTLINED_FUNCTION_4>:
c0de4bb8:	f890 10d0 	ldrb.w	r1, [r0, #208]	; 0xd0
c0de4bbc:	f8b0 00ca 	ldrh.w	r0, [r0, #202]	; 0xca
c0de4bc0:	4288      	cmp	r0, r1
c0de4bc2:	4770      	bx	lr

c0de4bc4 <OUTLINED_FUNCTION_5>:
c0de4bc4:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de4bc8:	3001      	adds	r0, #1
c0de4bca:	f8a1 00ca 	strh.w	r0, [r1, #202]	; 0xca
c0de4bce:	4770      	bx	lr

c0de4bd0 <OUTLINED_FUNCTION_6>:
c0de4bd0:	2000      	movs	r0, #0
c0de4bd2:	2100      	movs	r1, #0
c0de4bd4:	f000 bac2 	b.w	c0de515c <view_idle_show_impl>

c0de4bd8 <OUTLINED_FUNCTION_7>:
c0de4bd8:	f8b2 10ca 	ldrh.w	r1, [r2, #202]	; 0xca
c0de4bdc:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de4be0:	4770      	bx	lr

c0de4be2 <OUTLINED_FUNCTION_8>:
c0de4be2:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de4be6:	b281      	uxth	r1, r0
c0de4be8:	4291      	cmp	r1, r2
c0de4bea:	4770      	bx	lr

c0de4bec <io_seproxyhal_display>:
c0de4bec:	f003 bff9 	b.w	c0de8be2 <io_seproxyhal_display_default>

c0de4bf0 <view_error_show>:
c0de4bf0:	b510      	push	{r4, lr}
c0de4bf2:	480a      	ldr	r0, [pc, #40]	; (c0de4c1c <view_error_show+0x2c>)
c0de4bf4:	490a      	ldr	r1, [pc, #40]	; (c0de4c20 <view_error_show+0x30>)
c0de4bf6:	2206      	movs	r2, #6
c0de4bf8:	eb09 0400 	add.w	r4, r9, r0
c0de4bfc:	4479      	add	r1, pc
c0de4bfe:	4620      	mov	r0, r4
c0de4c00:	f004 fe83 	bl	c0de990a <__aeabi_memcpy>
c0de4c04:	4907      	ldr	r1, [pc, #28]	; (c0de4c24 <view_error_show+0x34>)
c0de4c06:	f104 0040 	add.w	r0, r4, #64	; 0x40
c0de4c0a:	4479      	add	r1, pc
c0de4c0c:	c91c      	ldmia	r1!, {r2, r3, r4}
c0de4c0e:	7809      	ldrb	r1, [r1, #0]
c0de4c10:	c01c      	stmia	r0!, {r2, r3, r4}
c0de4c12:	7001      	strb	r1, [r0, #0]
c0de4c14:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4c18:	f000 bb56 	b.w	c0de52c8 <view_error_show_impl>
c0de4c1c:	0000525c 	.word	0x0000525c
c0de4c20:	00005ec8 	.word	0x00005ec8
c0de4c24:	00006fbe 	.word	0x00006fbe

c0de4c28 <view_custom_error_show>:
c0de4c28:	b570      	push	{r4, r5, r6, lr}
c0de4c2a:	4e0d      	ldr	r6, [pc, #52]	; (c0de4c60 <view_custom_error_show+0x38>)
c0de4c2c:	4603      	mov	r3, r0
c0de4c2e:	480b      	ldr	r0, [pc, #44]	; (c0de4c5c <view_custom_error_show+0x34>)
c0de4c30:	460c      	mov	r4, r1
c0de4c32:	2140      	movs	r1, #64	; 0x40
c0de4c34:	eb09 0500 	add.w	r5, r9, r0
c0de4c38:	447e      	add	r6, pc
c0de4c3a:	4628      	mov	r0, r5
c0de4c3c:	4632      	mov	r2, r6
c0de4c3e:	f004 fba3 	bl	c0de9388 <snprintf>
c0de4c42:	f105 0040 	add.w	r0, r5, #64	; 0x40
c0de4c46:	f44f 5180 	mov.w	r1, #4096	; 0x1000
c0de4c4a:	4632      	mov	r2, r6
c0de4c4c:	4623      	mov	r3, r4
c0de4c4e:	f004 fb9b 	bl	c0de9388 <snprintf>
c0de4c52:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de4c56:	f000 bb4d 	b.w	c0de52f4 <view_custom_error_show_impl>
c0de4c5a:	bf00      	nop
c0de4c5c:	0000525c 	.word	0x0000525c
c0de4c60:	0000549e 	.word	0x0000549e

c0de4c64 <h_paging_increase>:
c0de4c64:	b510      	push	{r4, lr}
c0de4c66:	4815      	ldr	r0, [pc, #84]	; (c0de4cbc <h_paging_increase+0x58>)
c0de4c68:	4478      	add	r0, pc
c0de4c6a:	f000 fe23 	bl	c0de58b4 <zemu_log_stack>
c0de4c6e:	4812      	ldr	r0, [pc, #72]	; (c0de4cb8 <h_paging_increase+0x54>)
c0de4c70:	f241 015f 	movw	r1, #4191	; 0x105f
c0de4c74:	eb09 0200 	add.w	r2, r9, r0
c0de4c78:	5c53      	ldrb	r3, [r2, r1]
c0de4c7a:	f241 015e 	movw	r1, #4190	; 0x105e
c0de4c7e:	5c52      	ldrb	r2, [r2, r1]
c0de4c80:	3201      	adds	r2, #1
c0de4c82:	429a      	cmp	r2, r3
c0de4c84:	d201      	bcs.n	c0de4c8a <h_paging_increase+0x26>
c0de4c86:	4448      	add	r0, r9
c0de4c88:	e013      	b.n	c0de4cb2 <h_paging_increase+0x4e>
c0de4c8a:	eb09 0100 	add.w	r1, r9, r0
c0de4c8e:	f241 025d 	movw	r2, #4189	; 0x105d
c0de4c92:	5c8b      	ldrb	r3, [r1, r2]
c0de4c94:	b173      	cbz	r3, c0de4cb4 <h_paging_increase+0x50>
c0de4c96:	eb09 0200 	add.w	r2, r9, r0
c0de4c9a:	f241 015c 	movw	r1, #4188	; 0x105c
c0de4c9e:	3b01      	subs	r3, #1
c0de4ca0:	5c52      	ldrb	r2, [r2, r1]
c0de4ca2:	4293      	cmp	r3, r2
c0de4ca4:	dd06      	ble.n	c0de4cb4 <h_paging_increase+0x50>
c0de4ca6:	4448      	add	r0, r9
c0de4ca8:	3201      	adds	r2, #1
c0de4caa:	f241 035e 	movw	r3, #4190	; 0x105e
c0de4cae:	2400      	movs	r4, #0
c0de4cb0:	54c4      	strb	r4, [r0, r3]
c0de4cb2:	5442      	strb	r2, [r0, r1]
c0de4cb4:	bd10      	pop	{r4, pc}
c0de4cb6:	bf00      	nop
c0de4cb8:	0000525c 	.word	0x0000525c
c0de4cbc:	000050bd 	.word	0x000050bd

c0de4cc0 <h_paging_can_decrease>:
c0de4cc0:	b510      	push	{r4, lr}
c0de4cc2:	480b      	ldr	r0, [pc, #44]	; (c0de4cf0 <h_paging_can_decrease+0x30>)
c0de4cc4:	f241 015c 	movw	r1, #4188	; 0x105c
c0de4cc8:	f241 025e 	movw	r2, #4190	; 0x105e
c0de4ccc:	4448      	add	r0, r9
c0de4cce:	5c41      	ldrb	r1, [r0, r1]
c0de4cd0:	5c80      	ldrb	r0, [r0, r2]
c0de4cd2:	ea50 0401 	orrs.w	r4, r0, r1
c0de4cd6:	4907      	ldr	r1, [pc, #28]	; (c0de4cf4 <h_paging_can_decrease+0x34>)
c0de4cd8:	4807      	ldr	r0, [pc, #28]	; (c0de4cf8 <h_paging_can_decrease+0x38>)
c0de4cda:	4478      	add	r0, pc
c0de4cdc:	4479      	add	r1, pc
c0de4cde:	bf08      	it	eq
c0de4ce0:	4608      	moveq	r0, r1
c0de4ce2:	f000 fde7 	bl	c0de58b4 <zemu_log_stack>
c0de4ce6:	2c00      	cmp	r4, #0
c0de4ce8:	bf18      	it	ne
c0de4cea:	2401      	movne	r4, #1
c0de4cec:	4620      	mov	r0, r4
c0de4cee:	bd10      	pop	{r4, pc}
c0de4cf0:	0000525c 	.word	0x0000525c
c0de4cf4:	0000505b 	.word	0x0000505b
c0de4cf8:	000057cd 	.word	0x000057cd

c0de4cfc <h_paging_decrease>:
c0de4cfc:	b510      	push	{r4, lr}
c0de4cfe:	4811      	ldr	r0, [pc, #68]	; (c0de4d44 <h_paging_decrease+0x48>)
c0de4d00:	f241 015e 	movw	r1, #4190	; 0x105e
c0de4d04:	eb09 0200 	add.w	r2, r9, r0
c0de4d08:	5c52      	ldrb	r2, [r2, r1]
c0de4d0a:	b142      	cbz	r2, c0de4d1e <h_paging_decrease+0x22>
c0de4d0c:	4448      	add	r0, r9
c0de4d0e:	3a01      	subs	r2, #1
c0de4d10:	5442      	strb	r2, [r0, r1]
c0de4d12:	480e      	ldr	r0, [pc, #56]	; (c0de4d4c <h_paging_decrease+0x50>)
c0de4d14:	4478      	add	r0, pc
c0de4d16:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4d1a:	f000 bdcb 	b.w	c0de58b4 <zemu_log_stack>
c0de4d1e:	eb09 0200 	add.w	r2, r9, r0
c0de4d22:	f241 015c 	movw	r1, #4188	; 0x105c
c0de4d26:	5c52      	ldrb	r2, [r2, r1]
c0de4d28:	b15a      	cbz	r2, c0de4d42 <h_paging_decrease+0x46>
c0de4d2a:	eb09 0400 	add.w	r4, r9, r0
c0de4d2e:	1e50      	subs	r0, r2, #1
c0de4d30:	5460      	strb	r0, [r4, r1]
c0de4d32:	4805      	ldr	r0, [pc, #20]	; (c0de4d48 <h_paging_decrease+0x4c>)
c0de4d34:	4478      	add	r0, pc
c0de4d36:	f000 fdbd 	bl	c0de58b4 <zemu_log_stack>
c0de4d3a:	f241 005e 	movw	r0, #4190	; 0x105e
c0de4d3e:	21ff      	movs	r1, #255	; 0xff
c0de4d40:	5421      	strb	r1, [r4, r0]
c0de4d42:	bd10      	pop	{r4, pc}
c0de4d44:	0000525c 	.word	0x0000525c
c0de4d48:	00005980 	.word	0x00005980
c0de4d4c:	000058a8 	.word	0x000058a8

c0de4d50 <h_review_update_data>:
c0de4d50:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de4d54:	4e59      	ldr	r6, [pc, #356]	; (c0de4ebc <h_review_update_data+0x16c>)
c0de4d56:	f241 0144 	movw	r1, #4164	; 0x1044
c0de4d5a:	eb09 0006 	add.w	r0, r9, r6
c0de4d5e:	5841      	ldr	r1, [r0, r1]
c0de4d60:	2900      	cmp	r1, #0
c0de4d62:	f000 809c 	beq.w	c0de4e9e <h_review_update_data+0x14e>
c0de4d66:	eb09 0006 	add.w	r0, r9, r6
c0de4d6a:	f44f 5b82 	mov.w	fp, #4160	; 0x1040
c0de4d6e:	f850 000b 	ldr.w	r0, [r0, fp]
c0de4d72:	2800      	cmp	r0, #0
c0de4d74:	f000 8096 	beq.w	c0de4ea4 <h_review_update_data+0x154>
c0de4d78:	f241 055d 	movw	r5, #4189	; 0x105d
c0de4d7c:	f241 085f 	movw	r8, #4191	; 0x105f
c0de4d80:	2700      	movs	r7, #0
c0de4d82:	eb09 0006 	add.w	r0, r9, r6
c0de4d86:	4428      	add	r0, r5
c0de4d88:	4788      	blx	r1
c0de4d8a:	2803      	cmp	r0, #3
c0de4d8c:	f040 808f 	bne.w	c0de4eae <h_review_update_data+0x15e>
c0de4d90:	eb09 0106 	add.w	r1, r9, r6
c0de4d94:	f241 005c 	movw	r0, #4188	; 0x105c
c0de4d98:	f44f 5280 	mov.w	r2, #4096	; 0x1000
c0de4d9c:	560c      	ldrsb	r4, [r1, r0]
c0de4d9e:	eb01 0008 	add.w	r0, r1, r8
c0de4da2:	f851 500b 	ldr.w	r5, [r1, fp]
c0de4da6:	e9cd 2700 	strd	r2, r7, [sp]
c0de4daa:	f101 0340 	add.w	r3, r1, #64	; 0x40
c0de4dae:	2240      	movs	r2, #64	; 0x40
c0de4db0:	9002      	str	r0, [sp, #8]
c0de4db2:	4620      	mov	r0, r4
c0de4db4:	47a8      	blx	r5
c0de4db6:	2803      	cmp	r0, #3
c0de4db8:	d179      	bne.n	c0de4eae <h_review_update_data+0x15e>
c0de4dba:	eb09 0506 	add.w	r5, r9, r6
c0de4dbe:	2001      	movs	r0, #1
c0de4dc0:	b2e4      	uxtb	r4, r4
c0de4dc2:	f805 0008 	strb.w	r0, [r5, r8]
c0de4dc6:	f000 f9c5 	bl	c0de5154 <get_max_char_per_line>
c0de4dca:	eb05 0108 	add.w	r1, r5, r8
c0de4dce:	f855 700b 	ldr.w	r7, [r5, fp]
c0de4dd2:	2200      	movs	r2, #0
c0de4dd4:	fa1f fa80 	uxth.w	sl, r0
c0de4dd8:	b264      	sxtb	r4, r4
c0de4dda:	f105 0340 	add.w	r3, r5, #64	; 0x40
c0de4dde:	e9cd a200 	strd	sl, r2, [sp]
c0de4de2:	9102      	str	r1, [sp, #8]
c0de4de4:	4620      	mov	r0, r4
c0de4de6:	4629      	mov	r1, r5
c0de4de8:	2240      	movs	r2, #64	; 0x40
c0de4dea:	47b8      	blx	r7
c0de4dec:	2803      	cmp	r0, #3
c0de4dee:	d15e      	bne.n	c0de4eae <h_review_update_data+0x15e>
c0de4df0:	eb09 0106 	add.w	r1, r9, r6
c0de4df4:	f241 005e 	movw	r0, #4190	; 0x105e
c0de4df8:	5c08      	ldrb	r0, [r1, r0]
c0de4dfa:	f811 1008 	ldrb.w	r1, [r1, r8]
c0de4dfe:	b139      	cbz	r1, c0de4e10 <h_review_update_data+0xc0>
c0de4e00:	4288      	cmp	r0, r1
c0de4e02:	d905      	bls.n	c0de4e10 <h_review_update_data+0xc0>
c0de4e04:	1e48      	subs	r0, r1, #1
c0de4e06:	eb09 0206 	add.w	r2, r9, r6
c0de4e0a:	f241 015e 	movw	r1, #4190	; 0x105e
c0de4e0e:	5450      	strb	r0, [r2, r1]
c0de4e10:	eb09 0106 	add.w	r1, r9, r6
c0de4e14:	b2c0      	uxtb	r0, r0
c0de4e16:	eb01 0208 	add.w	r2, r1, r8
c0de4e1a:	f851 500b 	ldr.w	r5, [r1, fp]
c0de4e1e:	e9cd a000 	strd	sl, r0, [sp]
c0de4e22:	f101 0340 	add.w	r3, r1, #64	; 0x40
c0de4e26:	4620      	mov	r0, r4
c0de4e28:	9202      	str	r2, [sp, #8]
c0de4e2a:	2240      	movs	r2, #64	; 0x40
c0de4e2c:	47a8      	blx	r5
c0de4e2e:	2803      	cmp	r0, #3
c0de4e30:	d13d      	bne.n	c0de4eae <h_review_update_data+0x15e>
c0de4e32:	eb09 0006 	add.w	r0, r9, r6
c0de4e36:	f241 055d 	movw	r5, #4189	; 0x105d
c0de4e3a:	2700      	movs	r7, #0
c0de4e3c:	5d41      	ldrb	r1, [r0, r5]
c0de4e3e:	3101      	adds	r1, #1
c0de4e40:	5541      	strb	r1, [r0, r5]
c0de4e42:	f810 0008 	ldrb.w	r0, [r0, r8]
c0de4e46:	2802      	cmp	r0, #2
c0de4e48:	d31b      	bcc.n	c0de4e82 <h_review_update_data+0x132>
c0de4e4a:	eb09 0006 	add.w	r0, r9, r6
c0de4e4e:	2140      	movs	r1, #64	; 0x40
c0de4e50:	f004 fdf1 	bl	c0de9a36 <strnlen>
c0de4e54:	b2c1      	uxtb	r1, r0
c0de4e56:	293f      	cmp	r1, #63	; 0x3f
c0de4e58:	d80f      	bhi.n	c0de4e7a <h_review_update_data+0x12a>
c0de4e5a:	eb09 0006 	add.w	r0, r9, r6
c0de4e5e:	f241 025e 	movw	r2, #4190	; 0x105e
c0de4e62:	f810 3008 	ldrb.w	r3, [r0, r8]
c0de4e66:	5c82      	ldrb	r2, [r0, r2]
c0de4e68:	4408      	add	r0, r1
c0de4e6a:	f1c1 0140 	rsb	r1, r1, #64	; 0x40
c0de4e6e:	9300      	str	r3, [sp, #0]
c0de4e70:	1c53      	adds	r3, r2, #1
c0de4e72:	4a14      	ldr	r2, [pc, #80]	; (c0de4ec4 <h_review_update_data+0x174>)
c0de4e74:	447a      	add	r2, pc
c0de4e76:	f004 fa87 	bl	c0de9388 <snprintf>
c0de4e7a:	eb09 0006 	add.w	r0, r9, r6
c0de4e7e:	f810 0008 	ldrb.w	r0, [r0, r8]
c0de4e82:	b9b8      	cbnz	r0, c0de4eb4 <h_review_update_data+0x164>
c0de4e84:	eb09 0406 	add.w	r4, r9, r6
c0de4e88:	f7ff feec 	bl	c0de4c64 <h_paging_increase>
c0de4e8c:	f814 0008 	ldrb.w	r0, [r4, r8]
c0de4e90:	b980      	cbnz	r0, c0de4eb4 <h_review_update_data+0x164>
c0de4e92:	eb09 0006 	add.w	r0, r9, r6
c0de4e96:	f241 0144 	movw	r1, #4164	; 0x1044
c0de4e9a:	5841      	ldr	r1, [r0, r1]
c0de4e9c:	e771      	b.n	c0de4d82 <h_review_update_data+0x32>
c0de4e9e:	4808      	ldr	r0, [pc, #32]	; (c0de4ec0 <h_review_update_data+0x170>)
c0de4ea0:	4478      	add	r0, pc
c0de4ea2:	e001      	b.n	c0de4ea8 <h_review_update_data+0x158>
c0de4ea4:	4808      	ldr	r0, [pc, #32]	; (c0de4ec8 <h_review_update_data+0x178>)
c0de4ea6:	4478      	add	r0, pc
c0de4ea8:	f000 fd04 	bl	c0de58b4 <zemu_log_stack>
c0de4eac:	2005      	movs	r0, #5
c0de4eae:	b004      	add	sp, #16
c0de4eb0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4eb4:	f000 f94c 	bl	c0de5150 <splitValueAddress>
c0de4eb8:	2003      	movs	r0, #3
c0de4eba:	e7f8      	b.n	c0de4eae <h_review_update_data+0x15e>
c0de4ebc:	0000525c 	.word	0x0000525c
c0de4ec0:	00005d47 	.word	0x00005d47
c0de4ec4:	000054f9 	.word	0x000054f9
c0de4ec8:	0000660e 	.word	0x0000660e

c0de4ecc <ux_idle_flow_2_step_validateinit>:
c0de4ecc:	b580      	push	{r7, lr}
c0de4ece:	f000 fa7d 	bl	c0de53cc <app_mode_expert>
c0de4ed2:	f080 0001 	eor.w	r0, r0, #1
c0de4ed6:	f000 fa85 	bl	c0de53e4 <app_mode_set_expert>
c0de4eda:	4904      	ldr	r1, [pc, #16]	; (c0de4eec <ux_idle_flow_2_step_validateinit+0x20>)
c0de4edc:	4a04      	ldr	r2, [pc, #16]	; (c0de4ef0 <ux_idle_flow_2_step_validateinit+0x24>)
c0de4ede:	2000      	movs	r0, #0
c0de4ee0:	4479      	add	r1, pc
c0de4ee2:	447a      	add	r2, pc
c0de4ee4:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de4ee8:	f002 bf32 	b.w	c0de7d50 <ux_flow_init>
c0de4eec:	00006dd4 	.word	0x00006dd4
c0de4ef0:	00006d32 	.word	0x00006d32

c0de4ef4 <ux_idle_flow_2_step_init>:
c0de4ef4:	b5b0      	push	{r4, r5, r7, lr}
c0de4ef6:	490f      	ldr	r1, [pc, #60]	; (c0de4f34 <ux_idle_flow_2_step_init+0x40>)
c0de4ef8:	4d0b      	ldr	r5, [pc, #44]	; (c0de4f28 <ux_idle_flow_2_step_init+0x34>)
c0de4efa:	4604      	mov	r4, r0
c0de4efc:	4479      	add	r1, pc
c0de4efe:	eb09 0005 	add.w	r0, r9, r5
c0de4f02:	c90c      	ldmia	r1!, {r2, r3}
c0de4f04:	3040      	adds	r0, #64	; 0x40
c0de4f06:	7809      	ldrb	r1, [r1, #0]
c0de4f08:	c00c      	stmia	r0!, {r2, r3}
c0de4f0a:	7001      	strb	r1, [r0, #0]
c0de4f0c:	f000 fa5e 	bl	c0de53cc <app_mode_expert>
c0de4f10:	b128      	cbz	r0, c0de4f1e <ux_idle_flow_2_step_init+0x2a>
c0de4f12:	4906      	ldr	r1, [pc, #24]	; (c0de4f2c <ux_idle_flow_2_step_init+0x38>)
c0de4f14:	4a06      	ldr	r2, [pc, #24]	; (c0de4f30 <ux_idle_flow_2_step_init+0x3c>)
c0de4f16:	eb09 0005 	add.w	r0, r9, r5
c0de4f1a:	e9c0 2110 	strd	r2, r1, [r0, #64]	; 0x40
c0de4f1e:	4620      	mov	r0, r4
c0de4f20:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de4f24:	f002 bfee 	b.w	c0de7f04 <ux_layout_bn_init>
c0de4f28:	0000525c 	.word	0x0000525c
c0de4f2c:	0064656c 	.word	0x0064656c
c0de4f30:	62616e65 	.word	0x62616e65
c0de4f34:	00006cc0 	.word	0x00006cc0

c0de4f38 <ux_review_skip_step_init>:
c0de4f38:	490a      	ldr	r1, [pc, #40]	; (c0de4f64 <ux_review_skip_step_init+0x2c>)
c0de4f3a:	2201      	movs	r2, #1
c0de4f3c:	4b0b      	ldr	r3, [pc, #44]	; (c0de4f6c <ux_review_skip_step_init+0x34>)
c0de4f3e:	f809 2001 	strb.w	r2, [r9, r1]
c0de4f42:	4909      	ldr	r1, [pc, #36]	; (c0de4f68 <ux_review_skip_step_init+0x30>)
c0de4f44:	eb00 02c0 	add.w	r2, r0, r0, lsl #3
c0de4f48:	4449      	add	r1, r9
c0de4f4a:	eb01 0182 	add.w	r1, r1, r2, lsl #2
c0de4f4e:	f8d1 20dc 	ldr.w	r2, [r1, #220]	; 0xdc
c0de4f52:	f849 2003 	str.w	r2, [r9, r3]
c0de4f56:	4a06      	ldr	r2, [pc, #24]	; (c0de4f70 <ux_review_skip_step_init+0x38>)
c0de4f58:	447a      	add	r2, pc
c0de4f5a:	f8c1 20dc 	str.w	r2, [r1, #220]	; 0xdc
c0de4f5e:	f002 bffd 	b.w	c0de7f5c <ux_layout_nn_init>
c0de4f62:	bf00      	nop
c0de4f64:	000062cc 	.word	0x000062cc
c0de4f68:	000062d4 	.word	0x000062d4
c0de4f6c:	000062d0 	.word	0x000062d0
c0de4f70:	000003c5 	.word	0x000003c5

c0de4f74 <ux_idle_flow_6_step_validateinit>:
c0de4f74:	20ff      	movs	r0, #255	; 0xff
c0de4f76:	f004 fc4b 	bl	c0de9810 <os_sched_exit>

c0de4f7a <ux_error_flow_2_step_validateinit>:
c0de4f7a:	2000      	movs	r0, #0
c0de4f7c:	f7ff bd9e 	b.w	c0de4abc <h_error_accept>

c0de4f80 <ux_custom_error_flow_2_step_validateinit>:
c0de4f80:	2000      	movs	r0, #0
c0de4f82:	f7ff bd9b 	b.w	c0de4abc <h_error_accept>
	...

c0de4f88 <ux_review_flow_2_start_step_init>:
c0de4f88:	b510      	push	{r4, lr}
c0de4f8a:	4c0c      	ldr	r4, [pc, #48]	; (c0de4fbc <ux_review_flow_2_start_step_init+0x34>)
c0de4f8c:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de4f90:	b128      	cbz	r0, c0de4f9e <ux_review_flow_2_start_step_init+0x16>
c0de4f92:	f7ff fe95 	bl	c0de4cc0 <h_paging_can_decrease>
c0de4f96:	b150      	cbz	r0, c0de4fae <ux_review_flow_2_start_step_init+0x26>
c0de4f98:	f7ff feb0 	bl	c0de4cfc <h_paging_decrease>
c0de4f9c:	e001      	b.n	c0de4fa2 <ux_review_flow_2_start_step_init+0x1a>
c0de4f9e:	f7ff fc8d 	bl	c0de48bc <h_paging_init>
c0de4fa2:	f000 f8b7 	bl	c0de5114 <h_review_update>
c0de4fa6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4faa:	f002 bddf 	b.w	c0de7b6c <ux_flow_next>
c0de4fae:	2000      	movs	r0, #0
c0de4fb0:	f809 0004 	strb.w	r0, [r9, r4]
c0de4fb4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4fb8:	f002 bddc 	b.w	c0de7b74 <ux_flow_prev>
c0de4fbc:	000063e4 	.word	0x000063e4

c0de4fc0 <ux_review_flow_2_step_init>:
c0de4fc0:	4902      	ldr	r1, [pc, #8]	; (c0de4fcc <ux_review_flow_2_step_init+0xc>)
c0de4fc2:	2201      	movs	r2, #1
c0de4fc4:	f809 2001 	strb.w	r2, [r9, r1]
c0de4fc8:	f003 b984 	b.w	c0de82d4 <ux_layout_bn_paging_init>
c0de4fcc:	000063e4 	.word	0x000063e4

c0de4fd0 <ux_review_flow_2_end_step_init>:
c0de4fd0:	b5b0      	push	{r4, r5, r7, lr}
c0de4fd2:	4c3b      	ldr	r4, [pc, #236]	; (c0de50c0 <ux_review_flow_2_end_step_init+0xf0>)
c0de4fd4:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de4fd8:	2800      	cmp	r0, #0
c0de4fda:	d051      	beq.n	c0de5080 <ux_review_flow_2_end_step_init+0xb0>
c0de4fdc:	f7ff fe42 	bl	c0de4c64 <h_paging_increase>
c0de4fe0:	f7ff feb6 	bl	c0de4d50 <h_review_update_data>
c0de4fe4:	2805      	cmp	r0, #5
c0de4fe6:	d050      	beq.n	c0de508a <ux_review_flow_2_end_step_init+0xba>
c0de4fe8:	2803      	cmp	r0, #3
c0de4fea:	d155      	bne.n	c0de5098 <ux_review_flow_2_end_step_init+0xc8>
c0de4fec:	4c35      	ldr	r4, [pc, #212]	; (c0de50c4 <ux_review_flow_2_end_step_init+0xf4>)
c0de4fee:	eb09 0504 	add.w	r5, r9, r4
c0de4ff2:	f003 f957 	bl	c0de82a4 <ux_layout_paging_reset>
c0de4ff6:	f241 006f 	movw	r0, #4207	; 0x106f
c0de4ffa:	5c28      	ldrb	r0, [r5, r0]
c0de4ffc:	2800      	cmp	r0, #0
c0de4ffe:	d04d      	beq.n	c0de509c <ux_review_flow_2_end_step_init+0xcc>
c0de5000:	4831      	ldr	r0, [pc, #196]	; (c0de50c8 <ux_review_flow_2_end_step_init+0xf8>)
c0de5002:	f859 0000 	ldr.w	r0, [r9, r0]
c0de5006:	3803      	subs	r0, #3
c0de5008:	2801      	cmp	r0, #1
c0de500a:	d847      	bhi.n	c0de509c <ux_review_flow_2_end_step_init+0xcc>
c0de500c:	eb09 0104 	add.w	r1, r9, r4
c0de5010:	f241 005c 	movw	r0, #4188	; 0x105c
c0de5014:	5c08      	ldrb	r0, [r1, r0]
c0de5016:	2802      	cmp	r0, #2
c0de5018:	d340      	bcc.n	c0de509c <ux_review_flow_2_end_step_init+0xcc>
c0de501a:	f241 025e 	movw	r2, #4190	; 0x105e
c0de501e:	f241 035f 	movw	r3, #4191	; 0x105f
c0de5022:	5c8a      	ldrb	r2, [r1, r2]
c0de5024:	5cc9      	ldrb	r1, [r1, r3]
c0de5026:	3901      	subs	r1, #1
c0de5028:	4291      	cmp	r1, r2
c0de502a:	d137      	bne.n	c0de509c <ux_review_flow_2_end_step_init+0xcc>
c0de502c:	eb09 0104 	add.w	r1, r9, r4
c0de5030:	f241 025d 	movw	r2, #4189	; 0x105d
c0de5034:	5c89      	ldrb	r1, [r1, r2]
c0de5036:	3901      	subs	r1, #1
c0de5038:	4281      	cmp	r1, r0
c0de503a:	dd2f      	ble.n	c0de509c <ux_review_flow_2_end_step_init+0xcc>
c0de503c:	4926      	ldr	r1, [pc, #152]	; (c0de50d8 <ux_review_flow_2_end_step_init+0x108>)
c0de503e:	4823      	ldr	r0, [pc, #140]	; (c0de50cc <ux_review_flow_2_end_step_init+0xfc>)
c0de5040:	4d23      	ldr	r5, [pc, #140]	; (c0de50d0 <ux_review_flow_2_end_step_init+0x100>)
c0de5042:	2200      	movs	r2, #0
c0de5044:	4479      	add	r1, pc
c0de5046:	f849 1000 	str.w	r1, [r9, r0]
c0de504a:	eb09 0100 	add.w	r1, r9, r0
c0de504e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
c0de5052:	6048      	str	r0, [r1, #4]
c0de5054:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de5058:	1e44      	subs	r4, r0, #1
c0de505a:	4620      	mov	r0, r4
c0de505c:	f002 fe78 	bl	c0de7d50 <ux_flow_init>
c0de5060:	eb09 0005 	add.w	r0, r9, r5
c0de5064:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de5068:	4a1a      	ldr	r2, [pc, #104]	; (c0de50d4 <ux_review_flow_2_end_step_init+0x104>)
c0de506a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de506e:	f8d0 10dc 	ldr.w	r1, [r0, #220]	; 0xdc
c0de5072:	f849 1002 	str.w	r1, [r9, r2]
c0de5076:	4919      	ldr	r1, [pc, #100]	; (c0de50dc <ux_review_flow_2_end_step_init+0x10c>)
c0de5078:	4479      	add	r1, pc
c0de507a:	f8c0 10dc 	str.w	r1, [r0, #220]	; 0xdc
c0de507e:	bdb0      	pop	{r4, r5, r7, pc}
c0de5080:	f7ff fe3c 	bl	c0de4cfc <h_paging_decrease>
c0de5084:	f000 f846 	bl	c0de5114 <h_review_update>
c0de5088:	e008      	b.n	c0de509c <ux_review_flow_2_end_step_init+0xcc>
c0de508a:	2000      	movs	r0, #0
c0de508c:	f809 0004 	strb.w	r0, [r9, r4]
c0de5090:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5094:	f002 bd6a 	b.w	c0de7b6c <ux_flow_next>
c0de5098:	f7ff fdaa 	bl	c0de4bf0 <view_error_show>
c0de509c:	480c      	ldr	r0, [pc, #48]	; (c0de50d0 <ux_review_flow_2_end_step_init+0x100>)
c0de509e:	eb09 0100 	add.w	r1, r9, r0
c0de50a2:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de50a6:	eb00 0040 	add.w	r0, r0, r0, lsl #1
c0de50aa:	eb01 0080 	add.w	r0, r1, r0, lsl #2
c0de50ae:	8a81      	ldrh	r1, [r0, #20]
c0de50b0:	1e8a      	subs	r2, r1, #2
c0de50b2:	3901      	subs	r1, #1
c0de50b4:	82c2      	strh	r2, [r0, #22]
c0de50b6:	8281      	strh	r1, [r0, #20]
c0de50b8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de50bc:	f002 beca 	b.w	c0de7e54 <ux_flow_relayout>
c0de50c0:	000063e4 	.word	0x000063e4
c0de50c4:	0000525c 	.word	0x0000525c
c0de50c8:	00005258 	.word	0x00005258
c0de50cc:	000063e8 	.word	0x000063e8
c0de50d0:	000062d4 	.word	0x000062d4
c0de50d4:	000062d0 	.word	0x000062d0
c0de50d8:	00006c00 	.word	0x00006c00
c0de50dc:	000002a5 	.word	0x000002a5

c0de50e0 <ux_review_flow_3_step_validateinit>:
c0de50e0:	2000      	movs	r0, #0
c0de50e2:	f7ff bc17 	b.w	c0de4914 <h_approve>
	...

c0de50e8 <ux_review_flow_4_step_validateinit>:
c0de50e8:	4802      	ldr	r0, [pc, #8]	; (c0de50f4 <ux_review_flow_4_step_validateinit+0xc>)
c0de50ea:	f859 0000 	ldr.w	r0, [r9, r0]
c0de50ee:	f7ff bc6d 	b.w	c0de49cc <h_reject>
c0de50f2:	bf00      	nop
c0de50f4:	00005258 	.word	0x00005258

c0de50f8 <ux_review_flow_6_step_validateinit>:
c0de50f8:	2000      	movs	r0, #0
c0de50fa:	f7ff bc0b 	b.w	c0de4914 <h_approve>
	...

c0de5100 <ux_review_flow_5_step_validateinit>:
c0de5100:	4902      	ldr	r1, [pc, #8]	; (c0de510c <ux_review_flow_5_step_validateinit+0xc>)
c0de5102:	2003      	movs	r0, #3
c0de5104:	4479      	add	r1, pc
c0de5106:	f000 b873 	b.w	c0de51f0 <run_ux_review_flow>
c0de510a:	bf00      	nop
c0de510c:	00006d40 	.word	0x00006d40

c0de5110 <ux_review_flow_5_step_init>:
c0de5110:	f003 b9ba 	b.w	c0de8488 <ux_layout_pb_init>

c0de5114 <h_review_update>:
c0de5114:	b580      	push	{r7, lr}
c0de5116:	f7ff fe1b 	bl	c0de4d50 <h_review_update_data>
c0de511a:	2803      	cmp	r0, #3
c0de511c:	d001      	beq.n	c0de5122 <h_review_update+0xe>
c0de511e:	2805      	cmp	r0, #5
c0de5120:	d100      	bne.n	c0de5124 <h_review_update+0x10>
c0de5122:	bd80      	pop	{r7, pc}
c0de5124:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de5128:	f7ff bd62 	b.w	c0de4bf0 <view_error_show>

c0de512c <splitValueField>:
c0de512c:	b510      	push	{r4, lr}
c0de512e:	4c07      	ldr	r4, [pc, #28]	; (c0de514c <splitValueField+0x20>)
c0de5130:	eb09 0004 	add.w	r0, r9, r4
c0de5134:	3040      	adds	r0, #64	; 0x40
c0de5136:	f004 fc4f 	bl	c0de99d8 <strlen>
c0de513a:	0400      	lsls	r0, r0, #16
c0de513c:	d000      	beq.n	c0de5140 <splitValueField+0x14>
c0de513e:	bd10      	pop	{r4, pc}
c0de5140:	eb09 0004 	add.w	r0, r9, r4
c0de5144:	2120      	movs	r1, #32
c0de5146:	f8a0 1040 	strh.w	r1, [r0, #64]	; 0x40
c0de514a:	bd10      	pop	{r4, pc}
c0de514c:	0000525c 	.word	0x0000525c

c0de5150 <splitValueAddress>:
c0de5150:	f7ff bfec 	b.w	c0de512c <splitValueField>

c0de5154 <get_max_char_per_line>:
c0de5154:	f44f 5080 	mov.w	r0, #4096	; 0x1000
c0de5158:	4770      	bx	lr
	...

c0de515c <view_idle_show_impl>:
c0de515c:	b580      	push	{r7, lr}
c0de515e:	b141      	cbz	r1, c0de5172 <view_idle_show_impl+0x16>
c0de5160:	480e      	ldr	r0, [pc, #56]	; (c0de519c <view_idle_show_impl+0x40>)
c0de5162:	4a11      	ldr	r2, [pc, #68]	; (c0de51a8 <view_idle_show_impl+0x4c>)
c0de5164:	460b      	mov	r3, r1
c0de5166:	2140      	movs	r1, #64	; 0x40
c0de5168:	4448      	add	r0, r9
c0de516a:	447a      	add	r2, pc
c0de516c:	f004 f90c 	bl	c0de9388 <snprintf>
c0de5170:	e006      	b.n	c0de5180 <view_idle_show_impl+0x24>
c0de5172:	480a      	ldr	r0, [pc, #40]	; (c0de519c <view_idle_show_impl+0x40>)
c0de5174:	490b      	ldr	r1, [pc, #44]	; (c0de51a4 <view_idle_show_impl+0x48>)
c0de5176:	2206      	movs	r2, #6
c0de5178:	4448      	add	r0, r9
c0de517a:	4479      	add	r1, pc
c0de517c:	f004 fbc5 	bl	c0de990a <__aeabi_memcpy>
c0de5180:	4807      	ldr	r0, [pc, #28]	; (c0de51a0 <view_idle_show_impl+0x44>)
c0de5182:	f000 f915 	bl	c0de53b0 <OUTLINED_FUNCTION_0>
c0de5186:	d101      	bne.n	c0de518c <view_idle_show_impl+0x30>
c0de5188:	f003 fa48 	bl	c0de861c <ux_stack_push>
c0de518c:	4907      	ldr	r1, [pc, #28]	; (c0de51ac <view_idle_show_impl+0x50>)
c0de518e:	2000      	movs	r0, #0
c0de5190:	2200      	movs	r2, #0
c0de5192:	4479      	add	r1, pc
c0de5194:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de5198:	f002 bdda 	b.w	c0de7d50 <ux_flow_init>
c0de519c:	0000525c 	.word	0x0000525c
c0de51a0:	000062d4 	.word	0x000062d4
c0de51a4:	00005454 	.word	0x00005454
c0de51a8:	00004f6c 	.word	0x00004f6c
c0de51ac:	00006b22 	.word	0x00006b22

c0de51b0 <view_review_show_impl>:
c0de51b0:	b510      	push	{r4, lr}
c0de51b2:	4c0c      	ldr	r4, [pc, #48]	; (c0de51e4 <view_review_show_impl+0x34>)
c0de51b4:	f849 0004 	str.w	r0, [r9, r4]
c0de51b8:	f7ff fb80 	bl	c0de48bc <h_paging_init>
c0de51bc:	f7ff fd9e 	bl	c0de4cfc <h_paging_decrease>
c0de51c0:	4809      	ldr	r0, [pc, #36]	; (c0de51e8 <view_review_show_impl+0x38>)
c0de51c2:	2100      	movs	r1, #0
c0de51c4:	f809 1000 	strb.w	r1, [r9, r0]
c0de51c8:	4808      	ldr	r0, [pc, #32]	; (c0de51ec <view_review_show_impl+0x3c>)
c0de51ca:	f000 f8f1 	bl	c0de53b0 <OUTLINED_FUNCTION_0>
c0de51ce:	d101      	bne.n	c0de51d4 <view_review_show_impl+0x24>
c0de51d0:	f003 fa24 	bl	c0de861c <ux_stack_push>
c0de51d4:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de51d8:	2100      	movs	r1, #0
c0de51da:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de51de:	f000 b807 	b.w	c0de51f0 <run_ux_review_flow>
c0de51e2:	bf00      	nop
c0de51e4:	00005258 	.word	0x00005258
c0de51e8:	000063e4 	.word	0x000063e4
c0de51ec:	000062d4 	.word	0x000062d4

c0de51f0 <run_ux_review_flow>:
c0de51f0:	b570      	push	{r4, r5, r6, lr}
c0de51f2:	460c      	mov	r4, r1
c0de51f4:	4605      	mov	r5, r0
c0de51f6:	2804      	cmp	r0, #4
c0de51f8:	d006      	beq.n	c0de5208 <run_ux_review_flow+0x18>
c0de51fa:	2d01      	cmp	r5, #1
c0de51fc:	d008      	beq.n	c0de5210 <run_ux_review_flow+0x20>
c0de51fe:	bbdd      	cbnz	r5, c0de5278 <run_ux_review_flow+0x88>
c0de5200:	4926      	ldr	r1, [pc, #152]	; (c0de529c <run_ux_review_flow+0xac>)
c0de5202:	4825      	ldr	r0, [pc, #148]	; (c0de5298 <run_ux_review_flow+0xa8>)
c0de5204:	4479      	add	r1, pc
c0de5206:	e006      	b.n	c0de5216 <run_ux_review_flow+0x26>
c0de5208:	4926      	ldr	r1, [pc, #152]	; (c0de52a4 <run_ux_review_flow+0xb4>)
c0de520a:	4823      	ldr	r0, [pc, #140]	; (c0de5298 <run_ux_review_flow+0xa8>)
c0de520c:	4479      	add	r1, pc
c0de520e:	e002      	b.n	c0de5216 <run_ux_review_flow+0x26>
c0de5210:	4923      	ldr	r1, [pc, #140]	; (c0de52a0 <run_ux_review_flow+0xb0>)
c0de5212:	4821      	ldr	r0, [pc, #132]	; (c0de5298 <run_ux_review_flow+0xa8>)
c0de5214:	4479      	add	r1, pc
c0de5216:	f849 1000 	str.w	r1, [r9, r0]
c0de521a:	2001      	movs	r0, #1
c0de521c:	4e24      	ldr	r6, [pc, #144]	; (c0de52b0 <run_ux_review_flow+0xc0>)
c0de521e:	491e      	ldr	r1, [pc, #120]	; (c0de5298 <run_ux_review_flow+0xa8>)
c0de5220:	1c43      	adds	r3, r0, #1
c0de5222:	eb09 0201 	add.w	r2, r9, r1
c0de5226:	447e      	add	r6, pc
c0de5228:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de522c:	4b21      	ldr	r3, [pc, #132]	; (c0de52b4 <run_ux_review_flow+0xc4>)
c0de522e:	447b      	add	r3, pc
c0de5230:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
c0de5234:	1c83      	adds	r3, r0, #2
c0de5236:	4e20      	ldr	r6, [pc, #128]	; (c0de52b8 <run_ux_review_flow+0xc8>)
c0de5238:	447e      	add	r6, pc
c0de523a:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de523e:	1cc2      	adds	r2, r0, #3
c0de5240:	2d04      	cmp	r5, #4
c0de5242:	d102      	bne.n	c0de524a <run_ux_review_flow+0x5a>
c0de5244:	481d      	ldr	r0, [pc, #116]	; (c0de52bc <run_ux_review_flow+0xcc>)
c0de5246:	4478      	add	r0, pc
c0de5248:	e008      	b.n	c0de525c <run_ux_review_flow+0x6c>
c0de524a:	4d1d      	ldr	r5, [pc, #116]	; (c0de52c0 <run_ux_review_flow+0xd0>)
c0de524c:	eb09 0301 	add.w	r3, r9, r1
c0de5250:	447d      	add	r5, pc
c0de5252:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
c0de5256:	1d02      	adds	r2, r0, #4
c0de5258:	481a      	ldr	r0, [pc, #104]	; (c0de52c4 <run_ux_review_flow+0xd4>)
c0de525a:	4478      	add	r0, pc
c0de525c:	4449      	add	r1, r9
c0de525e:	1c53      	adds	r3, r2, #1
c0de5260:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
c0de5264:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de5268:	f841 5023 	str.w	r5, [r1, r3, lsl #2]
c0de526c:	2000      	movs	r0, #0
c0de526e:	4622      	mov	r2, r4
c0de5270:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5274:	f002 bd6c 	b.w	c0de7d50 <ux_flow_init>
c0de5278:	480b      	ldr	r0, [pc, #44]	; (c0de52a8 <run_ux_review_flow+0xb8>)
c0de527a:	4e07      	ldr	r6, [pc, #28]	; (c0de5298 <run_ux_review_flow+0xa8>)
c0de527c:	4478      	add	r0, pc
c0de527e:	f849 0006 	str.w	r0, [r9, r6]
c0de5282:	f000 f8cb 	bl	c0de541c <app_mode_shortcut>
c0de5286:	2800      	cmp	r0, #0
c0de5288:	d0c7      	beq.n	c0de521a <run_ux_review_flow+0x2a>
c0de528a:	4908      	ldr	r1, [pc, #32]	; (c0de52ac <run_ux_review_flow+0xbc>)
c0de528c:	eb09 0006 	add.w	r0, r9, r6
c0de5290:	4479      	add	r1, pc
c0de5292:	6041      	str	r1, [r0, #4]
c0de5294:	2002      	movs	r0, #2
c0de5296:	e7c1      	b.n	c0de521c <run_ux_review_flow+0x2c>
c0de5298:	000063e8 	.word	0x000063e8
c0de529c:	00006bbc 	.word	0x00006bbc
c0de52a0:	00006b90 	.word	0x00006b90
c0de52a4:	00006bd0 	.word	0x00006bd0
c0de52a8:	00006b0c 	.word	0x00006b0c
c0de52ac:	00006c44 	.word	0x00006c44
c0de52b0:	00006bde 	.word	0x00006bde
c0de52b4:	00006bbe 	.word	0x00006bbe
c0de52b8:	00006bdc 	.word	0x00006bdc
c0de52bc:	00006c5e 	.word	0x00006c5e
c0de52c0:	00006bf4 	.word	0x00006bf4
c0de52c4:	00006c1a 	.word	0x00006c1a

c0de52c8 <view_error_show_impl>:
c0de52c8:	b580      	push	{r7, lr}
c0de52ca:	f002 ffeb 	bl	c0de82a4 <ux_layout_paging_reset>
c0de52ce:	4807      	ldr	r0, [pc, #28]	; (c0de52ec <view_error_show_impl+0x24>)
c0de52d0:	f000 f86e 	bl	c0de53b0 <OUTLINED_FUNCTION_0>
c0de52d4:	d101      	bne.n	c0de52da <view_error_show_impl+0x12>
c0de52d6:	f003 f9a1 	bl	c0de861c <ux_stack_push>
c0de52da:	4905      	ldr	r1, [pc, #20]	; (c0de52f0 <view_error_show_impl+0x28>)
c0de52dc:	2000      	movs	r0, #0
c0de52de:	2200      	movs	r2, #0
c0de52e0:	4479      	add	r1, pc
c0de52e2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de52e6:	f002 bd33 	b.w	c0de7d50 <ux_flow_init>
c0de52ea:	bf00      	nop
c0de52ec:	000062d4 	.word	0x000062d4
c0de52f0:	00006a38 	.word	0x00006a38

c0de52f4 <view_custom_error_show_impl>:
c0de52f4:	b580      	push	{r7, lr}
c0de52f6:	f002 ffd5 	bl	c0de82a4 <ux_layout_paging_reset>
c0de52fa:	4807      	ldr	r0, [pc, #28]	; (c0de5318 <view_custom_error_show_impl+0x24>)
c0de52fc:	f000 f858 	bl	c0de53b0 <OUTLINED_FUNCTION_0>
c0de5300:	d101      	bne.n	c0de5306 <view_custom_error_show_impl+0x12>
c0de5302:	f003 f98b 	bl	c0de861c <ux_stack_push>
c0de5306:	4905      	ldr	r1, [pc, #20]	; (c0de531c <view_custom_error_show_impl+0x28>)
c0de5308:	2000      	movs	r0, #0
c0de530a:	2200      	movs	r2, #0
c0de530c:	4479      	add	r1, pc
c0de530e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de5312:	f002 bd1d 	b.w	c0de7d50 <ux_flow_init>
c0de5316:	bf00      	nop
c0de5318:	000062d4 	.word	0x000062d4
c0de531c:	00006a64 	.word	0x00006a64

c0de5320 <handle_button_push>:
c0de5320:	b580      	push	{r7, lr}
c0de5322:	4a19      	ldr	r2, [pc, #100]	; (c0de5388 <handle_button_push+0x68>)
c0de5324:	f819 2002 	ldrb.w	r2, [r9, r2]
c0de5328:	b18a      	cbz	r2, c0de534e <handle_button_push+0x2e>
c0de532a:	4918      	ldr	r1, [pc, #96]	; (c0de538c <handle_button_push+0x6c>)
c0de532c:	4288      	cmp	r0, r1
c0de532e:	d01e      	beq.n	c0de536e <handle_button_push+0x4e>
c0de5330:	4917      	ldr	r1, [pc, #92]	; (c0de5390 <handle_button_push+0x70>)
c0de5332:	4288      	cmp	r0, r1
c0de5334:	d014      	beq.n	c0de5360 <handle_button_push+0x40>
c0de5336:	4917      	ldr	r1, [pc, #92]	; (c0de5394 <handle_button_push+0x74>)
c0de5338:	4288      	cmp	r0, r1
c0de533a:	d10f      	bne.n	c0de535c <handle_button_push+0x3c>
c0de533c:	4816      	ldr	r0, [pc, #88]	; (c0de5398 <handle_button_push+0x78>)
c0de533e:	f859 0000 	ldr.w	r0, [r9, r0]
c0de5342:	2804      	cmp	r0, #4
c0de5344:	d11c      	bne.n	c0de5380 <handle_button_push+0x60>
c0de5346:	4917      	ldr	r1, [pc, #92]	; (c0de53a4 <handle_button_push+0x84>)
c0de5348:	2004      	movs	r0, #4
c0de534a:	4479      	add	r1, pc
c0de534c:	e014      	b.n	c0de5378 <handle_button_push+0x58>
c0de534e:	4a14      	ldr	r2, [pc, #80]	; (c0de53a0 <handle_button_push+0x80>)
c0de5350:	f859 2002 	ldr.w	r2, [r9, r2]
c0de5354:	b112      	cbz	r2, c0de535c <handle_button_push+0x3c>
c0de5356:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de535a:	4710      	bx	r2
c0de535c:	2000      	movs	r0, #0
c0de535e:	bd80      	pop	{r7, pc}
c0de5360:	480e      	ldr	r0, [pc, #56]	; (c0de539c <handle_button_push+0x7c>)
c0de5362:	f241 015c 	movw	r1, #4188	; 0x105c
c0de5366:	4448      	add	r0, r9
c0de5368:	5c42      	ldrb	r2, [r0, r1]
c0de536a:	3201      	adds	r2, #1
c0de536c:	5442      	strb	r2, [r0, r1]
c0de536e:	480a      	ldr	r0, [pc, #40]	; (c0de5398 <handle_button_push+0x78>)
c0de5370:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de5374:	490d      	ldr	r1, [pc, #52]	; (c0de53ac <handle_button_push+0x8c>)
c0de5376:	4479      	add	r1, pc
c0de5378:	f7ff ff3a 	bl	c0de51f0 <run_ux_review_flow>
c0de537c:	2001      	movs	r0, #1
c0de537e:	bd80      	pop	{r7, pc}
c0de5380:	4909      	ldr	r1, [pc, #36]	; (c0de53a8 <handle_button_push+0x88>)
c0de5382:	b2c0      	uxtb	r0, r0
c0de5384:	4479      	add	r1, pc
c0de5386:	e7f7      	b.n	c0de5378 <handle_button_push+0x58>
c0de5388:	000062cc 	.word	0x000062cc
c0de538c:	80000001 	.word	0x80000001
c0de5390:	80000002 	.word	0x80000002
c0de5394:	80000003 	.word	0x80000003
c0de5398:	00005258 	.word	0x00005258
c0de539c:	0000525c 	.word	0x0000525c
c0de53a0:	000062d0 	.word	0x000062d0
c0de53a4:	00006b5a 	.word	0x00006b5a
c0de53a8:	00006ac0 	.word	0x00006ac0
c0de53ac:	00006a76 	.word	0x00006a76

c0de53b0 <OUTLINED_FUNCTION_0>:
c0de53b0:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de53b4:	2800      	cmp	r0, #0
c0de53b6:	4770      	bx	lr

c0de53b8 <app_mode_reset>:
c0de53b8:	4803      	ldr	r0, [pc, #12]	; (c0de53c8 <app_mode_reset+0x10>)
c0de53ba:	2100      	movs	r1, #0
c0de53bc:	f809 1000 	strb.w	r1, [r9, r0]
c0de53c0:	4448      	add	r0, r9
c0de53c2:	7041      	strb	r1, [r0, #1]
c0de53c4:	4770      	bx	lr
c0de53c6:	bf00      	nop
c0de53c8:	00006418 	.word	0x00006418

c0de53cc <app_mode_expert>:
c0de53cc:	b580      	push	{r7, lr}
c0de53ce:	4804      	ldr	r0, [pc, #16]	; (c0de53e0 <app_mode_expert+0x14>)
c0de53d0:	4478      	add	r0, pc
c0de53d2:	f004 f965 	bl	c0de96a0 <pic>
c0de53d6:	7800      	ldrb	r0, [r0, #0]
c0de53d8:	2800      	cmp	r0, #0
c0de53da:	bf18      	it	ne
c0de53dc:	2001      	movne	r0, #1
c0de53de:	bd80      	pop	{r7, pc}
c0de53e0:	0000be2c 	.word	0x0000be2c

c0de53e4 <app_mode_set_expert>:
c0de53e4:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de53e6:	f88d 0004 	strb.w	r0, [sp, #4]
c0de53ea:	4c0a      	ldr	r4, [pc, #40]	; (c0de5414 <app_mode_set_expert+0x30>)
c0de53ec:	4d0a      	ldr	r5, [pc, #40]	; (c0de5418 <app_mode_set_expert+0x34>)
c0de53ee:	447c      	add	r4, pc
c0de53f0:	447d      	add	r5, pc
c0de53f2:	4620      	mov	r0, r4
c0de53f4:	47a8      	blx	r5
c0de53f6:	7840      	ldrb	r0, [r0, #1]
c0de53f8:	f88d 0005 	strb.w	r0, [sp, #5]
c0de53fc:	4620      	mov	r0, r4
c0de53fe:	47a8      	blx	r5
c0de5400:	7880      	ldrb	r0, [r0, #2]
c0de5402:	f88d 0006 	strb.w	r0, [sp, #6]
c0de5406:	4620      	mov	r0, r4
c0de5408:	47a8      	blx	r5
c0de540a:	a901      	add	r1, sp, #4
c0de540c:	2203      	movs	r2, #3
c0de540e:	f004 f977 	bl	c0de9700 <nvm_write>
c0de5412:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de5414:	0000be0e 	.word	0x0000be0e
c0de5418:	000042ad 	.word	0x000042ad

c0de541c <app_mode_shortcut>:
c0de541c:	4803      	ldr	r0, [pc, #12]	; (c0de542c <app_mode_shortcut+0x10>)
c0de541e:	4448      	add	r0, r9
c0de5420:	7840      	ldrb	r0, [r0, #1]
c0de5422:	2800      	cmp	r0, #0
c0de5424:	bf18      	it	ne
c0de5426:	2001      	movne	r0, #1
c0de5428:	4770      	bx	lr
c0de542a:	bf00      	nop
c0de542c:	00006418 	.word	0x00006418

c0de5430 <bech32EncodeFromBytes>:
c0de5430:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5434:	b0a4      	sub	sp, #144	; 0x90
c0de5436:	469a      	mov	sl, r3
c0de5438:	4614      	mov	r4, r2
c0de543a:	460e      	mov	r6, r1
c0de543c:	4605      	mov	r5, r0
c0de543e:	f004 fa6d 	bl	c0de991c <explicit_bzero>
c0de5442:	9f2c      	ldr	r7, [sp, #176]	; 0xb0
c0de5444:	2f40      	cmp	r7, #64	; 0x40
c0de5446:	d82e      	bhi.n	c0de54a6 <bech32EncodeFromBytes+0x76>
c0de5448:	4620      	mov	r0, r4
c0de544a:	f004 fac5 	bl	c0de99d8 <strlen>
c0de544e:	eb00 0047 	add.w	r0, r0, r7, lsl #1
c0de5452:	3007      	adds	r0, #7
c0de5454:	42b0      	cmp	r0, r6
c0de5456:	d901      	bls.n	c0de545c <bech32EncodeFromBytes+0x2c>
c0de5458:	2006      	movs	r0, #6
c0de545a:	e025      	b.n	c0de54a8 <bech32EncodeFromBytes+0x78>
c0de545c:	2000      	movs	r0, #0
c0de545e:	f10d 0810 	add.w	r8, sp, #16
c0de5462:	f8dd b0b4 	ldr.w	fp, [sp, #180]	; 0xb4
c0de5466:	2180      	movs	r1, #128	; 0x80
c0de5468:	9003      	str	r0, [sp, #12]
c0de546a:	4640      	mov	r0, r8
c0de546c:	f004 fa56 	bl	c0de991c <explicit_bzero>
c0de5470:	2008      	movs	r0, #8
c0de5472:	f8cd b008 	str.w	fp, [sp, #8]
c0de5476:	2205      	movs	r2, #5
c0de5478:	4653      	mov	r3, sl
c0de547a:	e9cd 7000 	strd	r7, r0, [sp]
c0de547e:	a903      	add	r1, sp, #12
c0de5480:	4640      	mov	r0, r8
c0de5482:	f000 f939 	bl	c0de56f8 <convert_bits>
c0de5486:	9b03      	ldr	r3, [sp, #12]
c0de5488:	42b3      	cmp	r3, r6
c0de548a:	d20c      	bcs.n	c0de54a6 <bech32EncodeFromBytes+0x76>
c0de548c:	982e      	ldr	r0, [sp, #184]	; 0xb8
c0de548e:	4621      	mov	r1, r4
c0de5490:	9000      	str	r0, [sp, #0]
c0de5492:	aa04      	add	r2, sp, #16
c0de5494:	4628      	mov	r0, r5
c0de5496:	f000 f8c5 	bl	c0de5624 <bech32_encode>
c0de549a:	4601      	mov	r1, r0
c0de549c:	2003      	movs	r0, #3
c0de549e:	2900      	cmp	r1, #0
c0de54a0:	bf08      	it	eq
c0de54a2:	200a      	moveq	r0, #10
c0de54a4:	e000      	b.n	c0de54a8 <bech32EncodeFromBytes+0x78>
c0de54a6:	2009      	movs	r0, #9
c0de54a8:	b024      	add	sp, #144	; 0x90
c0de54aa:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de54b0 <buffering_init>:
c0de54b0:	b510      	push	{r4, lr}
c0de54b2:	4c0b      	ldr	r4, [pc, #44]	; (c0de54e0 <buffering_init+0x30>)
c0de54b4:	f849 0004 	str.w	r0, [r9, r4]
c0de54b8:	480a      	ldr	r0, [pc, #40]	; (c0de54e4 <buffering_init+0x34>)
c0de54ba:	f849 2000 	str.w	r2, [r9, r0]
c0de54be:	eb09 0204 	add.w	r2, r9, r4
c0de54c2:	2400      	movs	r4, #0
c0de54c4:	4448      	add	r0, r9
c0de54c6:	e9c2 1401 	strd	r1, r4, [r2, #4]
c0de54ca:	7b11      	ldrb	r1, [r2, #12]
c0de54cc:	e9c0 3401 	strd	r3, r4, [r0, #4]
c0de54d0:	f041 0101 	orr.w	r1, r1, #1
c0de54d4:	7311      	strb	r1, [r2, #12]
c0de54d6:	7b01      	ldrb	r1, [r0, #12]
c0de54d8:	f001 01fe 	and.w	r1, r1, #254	; 0xfe
c0de54dc:	7301      	strb	r1, [r0, #12]
c0de54de:	bd10      	pop	{r4, pc}
c0de54e0:	0000641c 	.word	0x0000641c
c0de54e4:	0000642c 	.word	0x0000642c

c0de54e8 <buffering_reset>:
c0de54e8:	4807      	ldr	r0, [pc, #28]	; (c0de5508 <buffering_reset+0x20>)
c0de54ea:	4a08      	ldr	r2, [pc, #32]	; (c0de550c <buffering_reset+0x24>)
c0de54ec:	2100      	movs	r1, #0
c0de54ee:	4448      	add	r0, r9
c0de54f0:	444a      	add	r2, r9
c0de54f2:	6081      	str	r1, [r0, #8]
c0de54f4:	6091      	str	r1, [r2, #8]
c0de54f6:	7b01      	ldrb	r1, [r0, #12]
c0de54f8:	f041 0101 	orr.w	r1, r1, #1
c0de54fc:	7301      	strb	r1, [r0, #12]
c0de54fe:	7b10      	ldrb	r0, [r2, #12]
c0de5500:	f000 00fe 	and.w	r0, r0, #254	; 0xfe
c0de5504:	7310      	strb	r0, [r2, #12]
c0de5506:	4770      	bx	lr
c0de5508:	0000641c 	.word	0x0000641c
c0de550c:	0000642c 	.word	0x0000642c

c0de5510 <buffering_append>:
c0de5510:	b570      	push	{r4, r5, r6, lr}
c0de5512:	4e24      	ldr	r6, [pc, #144]	; (c0de55a4 <buffering_append+0x94>)
c0de5514:	4605      	mov	r5, r0
c0de5516:	460c      	mov	r4, r1
c0de5518:	eb09 0006 	add.w	r0, r9, r6
c0de551c:	7b00      	ldrb	r0, [r0, #12]
c0de551e:	07c1      	lsls	r1, r0, #31
c0de5520:	d109      	bne.n	c0de5536 <buffering_append+0x26>
c0de5522:	4821      	ldr	r0, [pc, #132]	; (c0de55a8 <buffering_append+0x98>)
c0de5524:	eb09 0100 	add.w	r1, r9, r0
c0de5528:	e9d1 2101 	ldrd	r2, r1, [r1, #4]
c0de552c:	1a52      	subs	r2, r2, r1
c0de552e:	42a2      	cmp	r2, r4
c0de5530:	d221      	bcs.n	c0de5576 <buffering_append+0x66>
c0de5532:	2400      	movs	r4, #0
c0de5534:	e034      	b.n	c0de55a0 <buffering_append+0x90>
c0de5536:	eb09 0106 	add.w	r1, r9, r6
c0de553a:	e9d1 2101 	ldrd	r2, r1, [r1, #4]
c0de553e:	1a52      	subs	r2, r2, r1
c0de5540:	42a2      	cmp	r2, r4
c0de5542:	d222      	bcs.n	c0de558a <buffering_append+0x7a>
c0de5544:	eb09 0206 	add.w	r2, r9, r6
c0de5548:	f000 00fe 	and.w	r0, r0, #254	; 0xfe
c0de554c:	7310      	strb	r0, [r2, #12]
c0de554e:	4816      	ldr	r0, [pc, #88]	; (c0de55a8 <buffering_append+0x98>)
c0de5550:	4448      	add	r0, r9
c0de5552:	7b02      	ldrb	r2, [r0, #12]
c0de5554:	f042 0201 	orr.w	r2, r2, #1
c0de5558:	7302      	strb	r2, [r0, #12]
c0de555a:	b119      	cbz	r1, c0de5564 <buffering_append+0x54>
c0de555c:	f859 0006 	ldr.w	r0, [r9, r6]
c0de5560:	f7ff ffd6 	bl	c0de5510 <buffering_append>
c0de5564:	4628      	mov	r0, r5
c0de5566:	4621      	mov	r1, r4
c0de5568:	f7ff ffd2 	bl	c0de5510 <buffering_append>
c0de556c:	eb09 0106 	add.w	r1, r9, r6
c0de5570:	2200      	movs	r2, #0
c0de5572:	608a      	str	r2, [r1, #8]
c0de5574:	bd70      	pop	{r4, r5, r6, pc}
c0de5576:	eb09 0600 	add.w	r6, r9, r0
c0de557a:	4622      	mov	r2, r4
c0de557c:	f856 0b08 	ldr.w	r0, [r6], #8
c0de5580:	4408      	add	r0, r1
c0de5582:	4629      	mov	r1, r5
c0de5584:	f004 f8bc 	bl	c0de9700 <nvm_write>
c0de5588:	e007      	b.n	c0de559a <buffering_append+0x8a>
c0de558a:	444e      	add	r6, r9
c0de558c:	4622      	mov	r2, r4
c0de558e:	f856 0b08 	ldr.w	r0, [r6], #8
c0de5592:	4408      	add	r0, r1
c0de5594:	4629      	mov	r1, r5
c0de5596:	f004 f9ba 	bl	c0de990e <__aeabi_memmove>
c0de559a:	6830      	ldr	r0, [r6, #0]
c0de559c:	4420      	add	r0, r4
c0de559e:	6030      	str	r0, [r6, #0]
c0de55a0:	4620      	mov	r0, r4
c0de55a2:	bd70      	pop	{r4, r5, r6, pc}
c0de55a4:	0000641c 	.word	0x0000641c
c0de55a8:	0000642c 	.word	0x0000642c

c0de55ac <buffering_get_buffer>:
c0de55ac:	4805      	ldr	r0, [pc, #20]	; (c0de55c4 <buffering_get_buffer+0x18>)
c0de55ae:	4904      	ldr	r1, [pc, #16]	; (c0de55c0 <buffering_get_buffer+0x14>)
c0de55b0:	4448      	add	r0, r9
c0de55b2:	7b02      	ldrb	r2, [r0, #12]
c0de55b4:	07d2      	lsls	r2, r2, #31
c0de55b6:	bf08      	it	eq
c0de55b8:	eb09 0001 	addeq.w	r0, r9, r1
c0de55bc:	4770      	bx	lr
c0de55be:	bf00      	nop
c0de55c0:	0000642c 	.word	0x0000642c
c0de55c4:	0000641c 	.word	0x0000641c

c0de55c8 <bech32_polymod_step>:
c0de55c8:	4910      	ldr	r1, [pc, #64]	; (c0de560c <bech32_polymod_step+0x44>)
c0de55ca:	f3c0 6240 	ubfx	r2, r0, #25, #1
c0de55ce:	4b10      	ldr	r3, [pc, #64]	; (c0de5610 <bech32_polymod_step+0x48>)
c0de55d0:	4252      	negs	r2, r2
c0de55d2:	401a      	ands	r2, r3
c0de55d4:	ea01 1140 	and.w	r1, r1, r0, lsl #5
c0de55d8:	4b0e      	ldr	r3, [pc, #56]	; (c0de5614 <bech32_polymod_step+0x4c>)
c0de55da:	4051      	eors	r1, r2
c0de55dc:	f3c0 6280 	ubfx	r2, r0, #26, #1
c0de55e0:	4252      	negs	r2, r2
c0de55e2:	401a      	ands	r2, r3
c0de55e4:	4b0c      	ldr	r3, [pc, #48]	; (c0de5618 <bech32_polymod_step+0x50>)
c0de55e6:	4051      	eors	r1, r2
c0de55e8:	f3c0 62c0 	ubfx	r2, r0, #27, #1
c0de55ec:	4252      	negs	r2, r2
c0de55ee:	401a      	ands	r2, r3
c0de55f0:	4b0a      	ldr	r3, [pc, #40]	; (c0de561c <bech32_polymod_step+0x54>)
c0de55f2:	4051      	eors	r1, r2
c0de55f4:	f3c0 7200 	ubfx	r2, r0, #28, #1
c0de55f8:	f3c0 7040 	ubfx	r0, r0, #29, #1
c0de55fc:	4252      	negs	r2, r2
c0de55fe:	4240      	negs	r0, r0
c0de5600:	401a      	ands	r2, r3
c0de5602:	4051      	eors	r1, r2
c0de5604:	4a06      	ldr	r2, [pc, #24]	; (c0de5620 <bech32_polymod_step+0x58>)
c0de5606:	4010      	ands	r0, r2
c0de5608:	4048      	eors	r0, r1
c0de560a:	4770      	bx	lr
c0de560c:	3fffffe0 	.word	0x3fffffe0
c0de5610:	3b6a57b2 	.word	0x3b6a57b2
c0de5614:	26508e6d 	.word	0x26508e6d
c0de5618:	1ea119fa 	.word	0x1ea119fa
c0de561c:	3d4233dd 	.word	0x3d4233dd
c0de5620:	2a1462b3 	.word	0x2a1462b3

c0de5624 <bech32_encode>:
c0de5624:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5628:	4604      	mov	r4, r0
c0de562a:	469a      	mov	sl, r3
c0de562c:	4693      	mov	fp, r2
c0de562e:	460f      	mov	r7, r1
c0de5630:	2500      	movs	r5, #0
c0de5632:	2001      	movs	r0, #1
c0de5634:	5d7e      	ldrb	r6, [r7, r5]
c0de5636:	b16e      	cbz	r6, c0de5654 <bech32_encode+0x30>
c0de5638:	2e21      	cmp	r6, #33	; 0x21
c0de563a:	d310      	bcc.n	c0de565e <bech32_encode+0x3a>
c0de563c:	2e7e      	cmp	r6, #126	; 0x7e
c0de563e:	d80e      	bhi.n	c0de565e <bech32_encode+0x3a>
c0de5640:	f1a6 0141 	sub.w	r1, r6, #65	; 0x41
c0de5644:	291a      	cmp	r1, #26
c0de5646:	d30a      	bcc.n	c0de565e <bech32_encode+0x3a>
c0de5648:	f7ff ffbe 	bl	c0de55c8 <bech32_polymod_step>
c0de564c:	ea80 1056 	eor.w	r0, r0, r6, lsr #5
c0de5650:	3501      	adds	r5, #1
c0de5652:	e7ef      	b.n	c0de5634 <bech32_encode+0x10>
c0de5654:	eb0a 0105 	add.w	r1, sl, r5
c0de5658:	3107      	adds	r1, #7
c0de565a:	295a      	cmp	r1, #90	; 0x5a
c0de565c:	d902      	bls.n	c0de5664 <bech32_encode+0x40>
c0de565e:	2000      	movs	r0, #0
c0de5660:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5664:	f7ff ffb0 	bl	c0de55c8 <bech32_polymod_step>
c0de5668:	783d      	ldrb	r5, [r7, #0]
c0de566a:	b145      	cbz	r5, c0de567e <bech32_encode+0x5a>
c0de566c:	f7ff ffac 	bl	c0de55c8 <bech32_polymod_step>
c0de5670:	f005 011f 	and.w	r1, r5, #31
c0de5674:	f804 5b01 	strb.w	r5, [r4], #1
c0de5678:	3701      	adds	r7, #1
c0de567a:	4048      	eors	r0, r1
c0de567c:	e7f4      	b.n	c0de5668 <bech32_encode+0x44>
c0de567e:	2131      	movs	r1, #49	; 0x31
c0de5680:	2500      	movs	r5, #0
c0de5682:	7021      	strb	r1, [r4, #0]
c0de5684:	4f1b      	ldr	r7, [pc, #108]	; (c0de56f4 <bech32_encode+0xd0>)
c0de5686:	447f      	add	r7, pc
c0de5688:	4555      	cmp	r5, sl
c0de568a:	d00f      	beq.n	c0de56ac <bech32_encode+0x88>
c0de568c:	f89b 6000 	ldrb.w	r6, [fp]
c0de5690:	2e1f      	cmp	r6, #31
c0de5692:	d8e4      	bhi.n	c0de565e <bech32_encode+0x3a>
c0de5694:	f817 8006 	ldrb.w	r8, [r7, r6]
c0de5698:	3401      	adds	r4, #1
c0de569a:	f7ff ff95 	bl	c0de55c8 <bech32_polymod_step>
c0de569e:	f884 8000 	strb.w	r8, [r4]
c0de56a2:	4070      	eors	r0, r6
c0de56a4:	3501      	adds	r5, #1
c0de56a6:	f10b 0b01 	add.w	fp, fp, #1
c0de56aa:	e7ed      	b.n	c0de5688 <bech32_encode+0x64>
c0de56ac:	2506      	movs	r5, #6
c0de56ae:	b11d      	cbz	r5, c0de56b8 <bech32_encode+0x94>
c0de56b0:	f7ff ff8a 	bl	c0de55c8 <bech32_polymod_step>
c0de56b4:	3d01      	subs	r5, #1
c0de56b6:	e7fa      	b.n	c0de56ae <bech32_encode+0x8a>
c0de56b8:	9a08      	ldr	r2, [sp, #32]
c0de56ba:	2100      	movs	r1, #0
c0de56bc:	2a02      	cmp	r2, #2
c0de56be:	bf04      	itt	eq
c0de56c0:	f243 01a3 	movweq	r1, #12451	; 0x30a3
c0de56c4:	f6c2 31c8 	movteq	r1, #11208	; 0x2bc8
c0de56c8:	2a01      	cmp	r2, #1
c0de56ca:	bf08      	it	eq
c0de56cc:	4611      	moveq	r1, r2
c0de56ce:	4041      	eors	r1, r0
c0de56d0:	2001      	movs	r0, #1
c0de56d2:	2219      	movs	r2, #25
c0de56d4:	2807      	cmp	r0, #7
c0de56d6:	d008      	beq.n	c0de56ea <bech32_encode+0xc6>
c0de56d8:	fa21 f302 	lsr.w	r3, r1, r2
c0de56dc:	3a05      	subs	r2, #5
c0de56de:	f003 031f 	and.w	r3, r3, #31
c0de56e2:	5cfb      	ldrb	r3, [r7, r3]
c0de56e4:	5423      	strb	r3, [r4, r0]
c0de56e6:	3001      	adds	r0, #1
c0de56e8:	e7f4      	b.n	c0de56d4 <bech32_encode+0xb0>
c0de56ea:	2100      	movs	r1, #0
c0de56ec:	5421      	strb	r1, [r4, r0]
c0de56ee:	2001      	movs	r0, #1
c0de56f0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de56f4:	000050ea 	.word	0x000050ea

c0de56f8 <convert_bits>:
c0de56f8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de56fc:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
c0de5700:	f10d 0e20 	add.w	lr, sp, #32
c0de5704:	4257      	negs	r7, r2
c0de5706:	f04f 0a00 	mov.w	sl, #0
c0de570a:	2600      	movs	r6, #0
c0de570c:	4094      	lsls	r4, r2
c0de570e:	e89e 5100 	ldmia.w	lr, {r8, ip, lr}
c0de5712:	ea6f 0b04 	mvn.w	fp, r4
c0de5716:	f1b8 0f00 	cmp.w	r8, #0
c0de571a:	d016      	beq.n	c0de574a <convert_bits+0x52>
c0de571c:	781d      	ldrb	r5, [r3, #0]
c0de571e:	fa0a fa0c 	lsl.w	sl, sl, ip
c0de5722:	f1a8 0801 	sub.w	r8, r8, #1
c0de5726:	4466      	add	r6, ip
c0de5728:	ea4a 0a05 	orr.w	sl, sl, r5
c0de572c:	4296      	cmp	r6, r2
c0de572e:	db0a      	blt.n	c0de5746 <convert_bits+0x4e>
c0de5730:	680c      	ldr	r4, [r1, #0]
c0de5732:	1c65      	adds	r5, r4, #1
c0de5734:	600d      	str	r5, [r1, #0]
c0de5736:	19bd      	adds	r5, r7, r6
c0de5738:	1ab6      	subs	r6, r6, r2
c0de573a:	fa2a f505 	lsr.w	r5, sl, r5
c0de573e:	ea05 050b 	and.w	r5, r5, fp
c0de5742:	5505      	strb	r5, [r0, r4]
c0de5744:	e7f2      	b.n	c0de572c <convert_bits+0x34>
c0de5746:	3301      	adds	r3, #1
c0de5748:	e7e5      	b.n	c0de5716 <convert_bits+0x1e>
c0de574a:	f1be 0f00 	cmp.w	lr, #0
c0de574e:	d00a      	beq.n	c0de5766 <convert_bits+0x6e>
c0de5750:	b196      	cbz	r6, c0de5778 <convert_bits+0x80>
c0de5752:	680b      	ldr	r3, [r1, #0]
c0de5754:	1c5c      	adds	r4, r3, #1
c0de5756:	600c      	str	r4, [r1, #0]
c0de5758:	1b91      	subs	r1, r2, r6
c0de575a:	fa0a f101 	lsl.w	r1, sl, r1
c0de575e:	ea01 010b 	and.w	r1, r1, fp
c0de5762:	54c1      	strb	r1, [r0, r3]
c0de5764:	e008      	b.n	c0de5778 <convert_bits+0x80>
c0de5766:	2000      	movs	r0, #0
c0de5768:	4566      	cmp	r6, ip
c0de576a:	da06      	bge.n	c0de577a <convert_bits+0x82>
c0de576c:	1b91      	subs	r1, r2, r6
c0de576e:	fa0a f101 	lsl.w	r1, sl, r1
c0de5772:	ea11 010b 	ands.w	r1, r1, fp
c0de5776:	d100      	bne.n	c0de577a <convert_bits+0x82>
c0de5778:	2001      	movs	r0, #1
c0de577a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de5780 <init_zondax_canary>:
c0de5780:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de5782:	4c13      	ldr	r4, [pc, #76]	; (c0de57d0 <init_zondax_canary+0x50>)
c0de5784:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de5788:	bb08      	cbnz	r0, c0de57ce <init_zondax_canary+0x4e>
c0de578a:	2000      	movs	r0, #0
c0de578c:	210a      	movs	r1, #10
c0de578e:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de5792:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de5796:	a801      	add	r0, sp, #4
c0de5798:	f003 ffbc 	bl	c0de9714 <cx_get_random_bytes>
c0de579c:	b108      	cbz	r0, c0de57a2 <init_zondax_canary+0x22>
c0de579e:	f000 f875 	bl	c0de588c <handle_stack_overflow>
c0de57a2:	eb09 0004 	add.w	r0, r9, r4
c0de57a6:	2100      	movs	r1, #0
c0de57a8:	6840      	ldr	r0, [r0, #4]
c0de57aa:	aa01      	add	r2, sp, #4
c0de57ac:	2920      	cmp	r1, #32
c0de57ae:	d005      	beq.n	c0de57bc <init_zondax_canary+0x3c>
c0de57b0:	f812 3b01 	ldrb.w	r3, [r2], #1
c0de57b4:	408b      	lsls	r3, r1
c0de57b6:	3108      	adds	r1, #8
c0de57b8:	4418      	add	r0, r3
c0de57ba:	e7f7      	b.n	c0de57ac <init_zondax_canary+0x2c>
c0de57bc:	2101      	movs	r1, #1
c0de57be:	f809 1004 	strb.w	r1, [r9, r4]
c0de57c2:	4904      	ldr	r1, [pc, #16]	; (c0de57d4 <init_zondax_canary+0x54>)
c0de57c4:	4449      	add	r1, r9
c0de57c6:	6048      	str	r0, [r1, #4]
c0de57c8:	eb09 0104 	add.w	r1, r9, r4
c0de57cc:	6048      	str	r0, [r1, #4]
c0de57ce:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}
c0de57d0:	0000643c 	.word	0x0000643c
c0de57d4:	00006704 	.word	0x00006704

c0de57d8 <check_zondax_canary>:
c0de57d8:	4807      	ldr	r0, [pc, #28]	; (c0de57f8 <check_zondax_canary+0x20>)
c0de57da:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de57de:	2901      	cmp	r1, #1
c0de57e0:	d107      	bne.n	c0de57f2 <check_zondax_canary+0x1a>
c0de57e2:	4906      	ldr	r1, [pc, #24]	; (c0de57fc <check_zondax_canary+0x24>)
c0de57e4:	4448      	add	r0, r9
c0de57e6:	6840      	ldr	r0, [r0, #4]
c0de57e8:	4449      	add	r1, r9
c0de57ea:	6849      	ldr	r1, [r1, #4]
c0de57ec:	4281      	cmp	r1, r0
c0de57ee:	bf08      	it	eq
c0de57f0:	4770      	bxeq	lr
c0de57f2:	f000 b84b 	b.w	c0de588c <handle_stack_overflow>
c0de57f6:	bf00      	nop
c0de57f8:	0000643c 	.word	0x0000643c
c0de57fc:	00006704 	.word	0x00006704

c0de5800 <z_strlen>:
c0de5800:	b108      	cbz	r0, c0de5806 <z_strlen+0x6>
c0de5802:	f004 b918 	b.w	c0de9a36 <strnlen>
c0de5806:	2000      	movs	r0, #0
c0de5808:	4770      	bx	lr
	...

c0de580c <z_str3join>:
c0de580c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5810:	4e1c      	ldr	r6, [pc, #112]	; (c0de5884 <z_str3join+0x78>)
c0de5812:	461c      	mov	r4, r3
c0de5814:	4617      	mov	r7, r2
c0de5816:	460d      	mov	r5, r1
c0de5818:	4682      	mov	sl, r0
c0de581a:	447e      	add	r6, pc
c0de581c:	47b0      	blx	r6
c0de581e:	4683      	mov	fp, r0
c0de5820:	4638      	mov	r0, r7
c0de5822:	4629      	mov	r1, r5
c0de5824:	9701      	str	r7, [sp, #4]
c0de5826:	4627      	mov	r7, r4
c0de5828:	47b0      	blx	r6
c0de582a:	4604      	mov	r4, r0
c0de582c:	4638      	mov	r0, r7
c0de582e:	4629      	mov	r1, r5
c0de5830:	47b0      	blx	r6
c0de5832:	eb00 080b 	add.w	r8, r0, fp
c0de5836:	4602      	mov	r2, r0
c0de5838:	f108 0601 	add.w	r6, r8, #1
c0de583c:	1930      	adds	r0, r6, r4
c0de583e:	42a8      	cmp	r0, r5
c0de5840:	d908      	bls.n	c0de5854 <z_str3join+0x48>
c0de5842:	4a11      	ldr	r2, [pc, #68]	; (c0de5888 <z_str3join+0x7c>)
c0de5844:	4650      	mov	r0, sl
c0de5846:	4629      	mov	r1, r5
c0de5848:	447a      	add	r2, pc
c0de584a:	f003 fd9d 	bl	c0de9388 <snprintf>
c0de584e:	2006      	movs	r0, #6
c0de5850:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5854:	b13a      	cbz	r2, c0de5866 <z_str3join+0x5a>
c0de5856:	eb0a 000b 	add.w	r0, sl, fp
c0de585a:	4639      	mov	r1, r7
c0de585c:	f004 f857 	bl	c0de990e <__aeabi_memmove>
c0de5860:	2000      	movs	r0, #0
c0de5862:	f80a 0008 	strb.w	r0, [sl, r8]
c0de5866:	b154      	cbz	r4, c0de587e <z_str3join+0x72>
c0de5868:	eb0a 0004 	add.w	r0, sl, r4
c0de586c:	4651      	mov	r1, sl
c0de586e:	4632      	mov	r2, r6
c0de5870:	f004 f84d 	bl	c0de990e <__aeabi_memmove>
c0de5874:	9901      	ldr	r1, [sp, #4]
c0de5876:	4650      	mov	r0, sl
c0de5878:	4622      	mov	r2, r4
c0de587a:	f004 f848 	bl	c0de990e <__aeabi_memmove>
c0de587e:	2003      	movs	r0, #3
c0de5880:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de5884:	ffffffe3 	.word	0xffffffe3
c0de5888:	00005d89 	.word	0x00005d89

c0de588c <handle_stack_overflow>:
c0de588c:	f003 ba08 	b.w	c0de8ca0 <io_seproxyhal_se_reset>

c0de5890 <check_app_canary>:
c0de5890:	b580      	push	{r7, lr}
c0de5892:	4806      	ldr	r0, [pc, #24]	; (c0de58ac <check_app_canary+0x1c>)
c0de5894:	4906      	ldr	r1, [pc, #24]	; (c0de58b0 <check_app_canary+0x20>)
c0de5896:	f859 0000 	ldr.w	r0, [r9, r0]
c0de589a:	4288      	cmp	r0, r1
c0de589c:	bf18      	it	ne
c0de589e:	f003 f9ff 	blne	c0de8ca0 <io_seproxyhal_se_reset>
c0de58a2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de58a6:	f7ff bf97 	b.w	c0de57d8 <check_zondax_canary>
c0de58aa:	bf00      	nop
c0de58ac:	00006704 	.word	0x00006704
c0de58b0:	dead0031 	.word	0xdead0031

c0de58b4 <zemu_log_stack>:
c0de58b4:	4770      	bx	lr

c0de58b6 <_cbor_value_decode_int64_internal>:
c0de58b6:	b580      	push	{r7, lr}
c0de58b8:	7bc1      	ldrb	r1, [r0, #15]
c0de58ba:	078a      	lsls	r2, r1, #30
c0de58bc:	d401      	bmi.n	c0de58c2 <_cbor_value_decode_int64_internal+0xc>
c0de58be:	7b82      	ldrb	r2, [r0, #14]
c0de58c0:	2afa      	cmp	r2, #250	; 0xfa
c0de58c2:	07c9      	lsls	r1, r1, #31
c0de58c4:	d103      	bne.n	c0de58ce <_cbor_value_decode_int64_internal+0x18>
c0de58c6:	f000 f811 	bl	c0de58ec <read_uint32>
c0de58ca:	2100      	movs	r1, #0
c0de58cc:	bd80      	pop	{r7, pc}
c0de58ce:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de58d2:	f000 b800 	b.w	c0de58d6 <read_uint64>

c0de58d6 <read_uint64>:
c0de58d6:	b5e0      	push	{r5, r6, r7, lr}
c0de58d8:	4669      	mov	r1, sp
c0de58da:	2201      	movs	r2, #1
c0de58dc:	2308      	movs	r3, #8
c0de58de:	f000 fb24 	bl	c0de5f2a <read_bytes_unchecked>
c0de58e2:	e9dd 1000 	ldrd	r1, r0, [sp]
c0de58e6:	ba00      	rev	r0, r0
c0de58e8:	ba09      	rev	r1, r1
c0de58ea:	bd8c      	pop	{r2, r3, r7, pc}

c0de58ec <read_uint32>:
c0de58ec:	b5e0      	push	{r5, r6, r7, lr}
c0de58ee:	a901      	add	r1, sp, #4
c0de58f0:	2201      	movs	r2, #1
c0de58f2:	2304      	movs	r3, #4
c0de58f4:	f000 fb19 	bl	c0de5f2a <read_bytes_unchecked>
c0de58f8:	9801      	ldr	r0, [sp, #4]
c0de58fa:	ba00      	rev	r0, r0
c0de58fc:	bd8c      	pop	{r2, r3, r7, pc}

c0de58fe <cbor_parser_init>:
c0de58fe:	b510      	push	{r4, lr}
c0de5900:	2400      	movs	r4, #0
c0de5902:	4401      	add	r1, r0
c0de5904:	605c      	str	r4, [r3, #4]
c0de5906:	711a      	strb	r2, [r3, #4]
c0de5908:	6019      	str	r1, [r3, #0]
c0de590a:	2201      	movs	r2, #1
c0de590c:	9902      	ldr	r1, [sp, #8]
c0de590e:	e9c1 3000 	strd	r3, r0, [r1]
c0de5912:	73cc      	strb	r4, [r1, #15]
c0de5914:	608a      	str	r2, [r1, #8]
c0de5916:	4608      	mov	r0, r1
c0de5918:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de591c:	f000 b800 	b.w	c0de5920 <preparse_value>

c0de5920 <preparse_value>:
c0de5920:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de5924:	4604      	mov	r4, r0
c0de5926:	7bc0      	ldrb	r0, [r0, #15]
c0de5928:	f10d 0107 	add.w	r1, sp, #7
c0de592c:	46a0      	mov	r8, r4
c0de592e:	f000 0060 	and.w	r0, r0, #96	; 0x60
c0de5932:	73e0      	strb	r0, [r4, #15]
c0de5934:	20ff      	movs	r0, #255	; 0xff
c0de5936:	f808 0f0e 	strb.w	r0, [r8, #14]!
c0de593a:	4620      	mov	r0, r4
c0de593c:	f000 fb0b 	bl	c0de5f56 <read_bytes>
c0de5940:	2800      	cmp	r0, #0
c0de5942:	d03f      	beq.n	c0de59c4 <preparse_value+0xa4>
c0de5944:	f89d 5007 	ldrb.w	r5, [sp, #7]
c0de5948:	4626      	mov	r6, r4
c0de594a:	f005 001f 	and.w	r0, r5, #31
c0de594e:	f005 01e0 	and.w	r1, r5, #224	; 0xe0
c0de5952:	f826 0f0c 	strh.w	r0, [r6, #12]!
c0de5956:	281c      	cmp	r0, #28
c0de5958:	f88d 0007 	strb.w	r0, [sp, #7]
c0de595c:	70b1      	strb	r1, [r6, #2]
c0de595e:	d313      	bcc.n	c0de5988 <preparse_value+0x68>
c0de5960:	281f      	cmp	r0, #31
c0de5962:	f040 8088 	bne.w	c0de5a76 <preparse_value+0x156>
c0de5966:	2004      	movs	r0, #4
c0de5968:	ea80 1055 	eor.w	r0, r0, r5, lsr #5
c0de596c:	2807      	cmp	r0, #7
c0de596e:	d82c      	bhi.n	c0de59ca <preparse_value+0xaa>
c0de5970:	2201      	movs	r2, #1
c0de5972:	fa02 f000 	lsl.w	r0, r2, r0
c0de5976:	f010 0fc3 	tst.w	r0, #195	; 0xc3
c0de597a:	d026      	beq.n	c0de59ca <preparse_value+0xaa>
c0de597c:	7be0      	ldrb	r0, [r4, #15]
c0de597e:	73a1      	strb	r1, [r4, #14]
c0de5980:	f040 0010 	orr.w	r0, r0, #16
c0de5984:	73e0      	strb	r0, [r4, #15]
c0de5986:	e072      	b.n	c0de5a6e <preparse_value+0x14e>
c0de5988:	f1b0 0118 	subs.w	r1, r0, #24
c0de598c:	f04f 0201 	mov.w	r2, #1
c0de5990:	fa02 f701 	lsl.w	r7, r2, r1
c0de5994:	bf38      	it	cc
c0de5996:	2700      	movcc	r7, #0
c0de5998:	d331      	bcc.n	c0de59fe <preparse_value+0xde>
c0de599a:	1c79      	adds	r1, r7, #1
c0de599c:	4620      	mov	r0, r4
c0de599e:	f000 faeb 	bl	c0de5f78 <can_read_bytes>
c0de59a2:	b178      	cbz	r0, c0de59c4 <preparse_value+0xa4>
c0de59a4:	2000      	movs	r0, #0
c0de59a6:	2f02      	cmp	r7, #2
c0de59a8:	8030      	strh	r0, [r6, #0]
c0de59aa:	d015      	beq.n	c0de59d8 <preparse_value+0xb8>
c0de59ac:	2f01      	cmp	r7, #1
c0de59ae:	d11e      	bne.n	c0de59ee <preparse_value+0xce>
c0de59b0:	f10d 0106 	add.w	r1, sp, #6
c0de59b4:	4620      	mov	r0, r4
c0de59b6:	2201      	movs	r2, #1
c0de59b8:	2301      	movs	r3, #1
c0de59ba:	f000 fab6 	bl	c0de5f2a <read_bytes_unchecked>
c0de59be:	f89d 0006 	ldrb.w	r0, [sp, #6]
c0de59c2:	e012      	b.n	c0de59ea <preparse_value+0xca>
c0de59c4:	f240 1701 	movw	r7, #257	; 0x101
c0de59c8:	e052      	b.n	c0de5a70 <preparse_value+0x150>
c0de59ca:	f240 1705 	movw	r7, #261	; 0x105
c0de59ce:	2ddf      	cmp	r5, #223	; 0xdf
c0de59d0:	bf88      	it	hi
c0de59d2:	f44f 7781 	movhi.w	r7, #258	; 0x102
c0de59d6:	e04b      	b.n	c0de5a70 <preparse_value+0x150>
c0de59d8:	4620      	mov	r0, r4
c0de59da:	4631      	mov	r1, r6
c0de59dc:	2201      	movs	r2, #1
c0de59de:	2302      	movs	r3, #2
c0de59e0:	f000 faa3 	bl	c0de5f2a <read_bytes_unchecked>
c0de59e4:	89a0      	ldrh	r0, [r4, #12]
c0de59e6:	ba00      	rev	r0, r0
c0de59e8:	0c00      	lsrs	r0, r0, #16
c0de59ea:	81a0      	strh	r0, [r4, #12]
c0de59ec:	e007      	b.n	c0de59fe <preparse_value+0xde>
c0de59ee:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de59f2:	7be1      	ldrb	r1, [r4, #15]
c0de59f4:	f000 0003 	and.w	r0, r0, #3
c0de59f8:	4308      	orrs	r0, r1
c0de59fa:	73e0      	strb	r0, [r4, #15]
c0de59fc:	2000      	movs	r0, #0
c0de59fe:	2107      	movs	r1, #7
c0de5a00:	ebb1 1f55 	cmp.w	r1, r5, lsr #5
c0de5a04:	d009      	beq.n	c0de5a1a <preparse_value+0xfa>
c0de5a06:	0968      	lsrs	r0, r5, #5
c0de5a08:	2801      	cmp	r0, #1
c0de5a0a:	d130      	bne.n	c0de5a6e <preparse_value+0x14e>
c0de5a0c:	7be0      	ldrb	r0, [r4, #15]
c0de5a0e:	2700      	movs	r7, #0
c0de5a10:	73a7      	strb	r7, [r4, #14]
c0de5a12:	f040 0004 	orr.w	r0, r0, #4
c0de5a16:	73e0      	strb	r0, [r4, #15]
c0de5a18:	e02a      	b.n	c0de5a70 <preparse_value+0x150>
c0de5a1a:	f89d 1007 	ldrb.w	r1, [sp, #7]
c0de5a1e:	291b      	cmp	r1, #27
c0de5a20:	d81d      	bhi.n	c0de5a5e <preparse_value+0x13e>
c0de5a22:	2201      	movs	r2, #1
c0de5a24:	408a      	lsls	r2, r1
c0de5a26:	f012 7f38 	tst.w	r2, #48234496	; 0x2e00000
c0de5a2a:	d106      	bne.n	c0de5a3a <preparse_value+0x11a>
c0de5a2c:	f012 6f40 	tst.w	r2, #201326592	; 0xc000000
c0de5a30:	d00b      	beq.n	c0de5a4a <preparse_value+0x12a>
c0de5a32:	7be0      	ldrb	r0, [r4, #15]
c0de5a34:	f040 0002 	orr.w	r0, r0, #2
c0de5a38:	73e0      	strb	r0, [r4, #15]
c0de5a3a:	4620      	mov	r0, r4
c0de5a3c:	4641      	mov	r1, r8
c0de5a3e:	2200      	movs	r2, #0
c0de5a40:	2301      	movs	r3, #1
c0de5a42:	2700      	movs	r7, #0
c0de5a44:	f000 fa71 	bl	c0de5f2a <read_bytes_unchecked>
c0de5a48:	e012      	b.n	c0de5a70 <preparse_value+0x150>
c0de5a4a:	2918      	cmp	r1, #24
c0de5a4c:	d107      	bne.n	c0de5a5e <preparse_value+0x13e>
c0de5a4e:	281f      	cmp	r0, #31
c0de5a50:	d80d      	bhi.n	c0de5a6e <preparse_value+0x14e>
c0de5a52:	20ff      	movs	r0, #255	; 0xff
c0de5a54:	f44f 7783 	mov.w	r7, #262	; 0x106
c0de5a58:	f888 0000 	strb.w	r0, [r8]
c0de5a5c:	e008      	b.n	c0de5a70 <preparse_value+0x150>
c0de5a5e:	2914      	cmp	r1, #20
c0de5a60:	d105      	bne.n	c0de5a6e <preparse_value+0x14e>
c0de5a62:	20f5      	movs	r0, #245	; 0xf5
c0de5a64:	2700      	movs	r7, #0
c0de5a66:	f888 0000 	strb.w	r0, [r8]
c0de5a6a:	8037      	strh	r7, [r6, #0]
c0de5a6c:	e000      	b.n	c0de5a70 <preparse_value+0x150>
c0de5a6e:	2700      	movs	r7, #0
c0de5a70:	4638      	mov	r0, r7
c0de5a72:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de5a76:	f240 1705 	movw	r7, #261	; 0x105
c0de5a7a:	2ddf      	cmp	r5, #223	; 0xdf
c0de5a7c:	bf88      	it	hi
c0de5a7e:	f240 1703 	movwhi	r7, #259	; 0x103
c0de5a82:	e7f5      	b.n	c0de5a70 <preparse_value+0x150>

c0de5a84 <preparse_next_value_nodecrement>:
c0de5a84:	b51c      	push	{r2, r3, r4, lr}
c0de5a86:	4604      	mov	r4, r0
c0de5a88:	6880      	ldr	r0, [r0, #8]
c0de5a8a:	3001      	adds	r0, #1
c0de5a8c:	d003      	beq.n	c0de5a96 <preparse_next_value_nodecrement+0x12>
c0de5a8e:	4620      	mov	r0, r4
c0de5a90:	f7ff ff46 	bl	c0de5920 <preparse_value>
c0de5a94:	bd1c      	pop	{r2, r3, r4, pc}
c0de5a96:	f10d 0107 	add.w	r1, sp, #7
c0de5a9a:	4620      	mov	r0, r4
c0de5a9c:	f000 fa5b 	bl	c0de5f56 <read_bytes>
c0de5aa0:	2800      	cmp	r0, #0
c0de5aa2:	d0f4      	beq.n	c0de5a8e <preparse_next_value_nodecrement+0xa>
c0de5aa4:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5aa8:	28ff      	cmp	r0, #255	; 0xff
c0de5aaa:	d1f0      	bne.n	c0de5a8e <preparse_next_value_nodecrement+0xa>
c0de5aac:	7be1      	ldrb	r1, [r4, #15]
c0de5aae:	0688      	lsls	r0, r1, #26
c0de5ab0:	d501      	bpl.n	c0de5ab6 <preparse_next_value_nodecrement+0x32>
c0de5ab2:	0648      	lsls	r0, r1, #25
c0de5ab4:	d402      	bmi.n	c0de5abc <preparse_next_value_nodecrement+0x38>
c0de5ab6:	7ba0      	ldrb	r0, [r4, #14]
c0de5ab8:	28c0      	cmp	r0, #192	; 0xc0
c0de5aba:	d102      	bne.n	c0de5ac2 <preparse_next_value_nodecrement+0x3e>
c0de5abc:	f44f 7081 	mov.w	r0, #258	; 0x102
c0de5ac0:	bd1c      	pop	{r2, r3, r4, pc}
c0de5ac2:	2000      	movs	r0, #0
c0de5ac4:	22ff      	movs	r2, #255	; 0xff
c0de5ac6:	f041 0110 	orr.w	r1, r1, #16
c0de5aca:	60a0      	str	r0, [r4, #8]
c0de5acc:	73a2      	strb	r2, [r4, #14]
c0de5ace:	73e1      	strb	r1, [r4, #15]
c0de5ad0:	bd1c      	pop	{r2, r3, r4, pc}

c0de5ad2 <cbor_value_advance>:
c0de5ad2:	6881      	ldr	r1, [r0, #8]
c0de5ad4:	b119      	cbz	r1, c0de5ade <cbor_value_advance+0xc>
c0de5ad6:	f44f 6180 	mov.w	r1, #1024	; 0x400
c0de5ada:	f000 b814 	b.w	c0de5b06 <advance_recursive>
c0de5ade:	2003      	movs	r0, #3
c0de5ae0:	4770      	bx	lr

c0de5ae2 <advance_internal>:
c0de5ae2:	b510      	push	{r4, lr}
c0de5ae4:	4604      	mov	r4, r0
c0de5ae6:	f000 f88f 	bl	c0de5c08 <extract_number_and_advance>
c0de5aea:	4601      	mov	r1, r0
c0de5aec:	7ba0      	ldrb	r0, [r4, #14]
c0de5aee:	f040 0020 	orr.w	r0, r0, #32
c0de5af2:	2860      	cmp	r0, #96	; 0x60
c0de5af4:	d102      	bne.n	c0de5afc <advance_internal+0x1a>
c0de5af6:	4620      	mov	r0, r4
c0de5af8:	f000 f87a 	bl	c0de5bf0 <advance_bytes>
c0de5afc:	4620      	mov	r0, r4
c0de5afe:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5b02:	f000 b8b2 	b.w	c0de5c6a <preparse_next_value>

c0de5b06 <advance_recursive>:
c0de5b06:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de5b08:	4604      	mov	r4, r0
c0de5b0a:	7b80      	ldrb	r0, [r0, #14]
c0de5b0c:	460d      	mov	r5, r1
c0de5b0e:	f080 0280 	eor.w	r2, r0, #128	; 0x80
c0de5b12:	00c1      	lsls	r1, r0, #3
c0de5b14:	0612      	lsls	r2, r2, #24
c0de5b16:	ea41 7152 	orr.w	r1, r1, r2, lsr #29
c0de5b1a:	b2c9      	uxtb	r1, r1
c0de5b1c:	2907      	cmp	r1, #7
c0de5b1e:	d824      	bhi.n	c0de5b6a <advance_recursive+0x64>
c0de5b20:	2201      	movs	r2, #1
c0de5b22:	fa02 f101 	lsl.w	r1, r2, r1
c0de5b26:	f011 0fc3 	tst.w	r1, #195	; 0xc3
c0de5b2a:	d01e      	beq.n	c0de5b6a <advance_recursive+0x64>
c0de5b2c:	f000 00df 	and.w	r0, r0, #223	; 0xdf
c0de5b30:	2880      	cmp	r0, #128	; 0x80
c0de5b32:	d110      	bne.n	c0de5b56 <advance_recursive+0x50>
c0de5b34:	b1ed      	cbz	r5, c0de5b72 <advance_recursive+0x6c>
c0de5b36:	4669      	mov	r1, sp
c0de5b38:	4620      	mov	r0, r4
c0de5b3a:	f000 f823 	bl	c0de5b84 <cbor_value_enter_container>
c0de5b3e:	b9f8      	cbnz	r0, c0de5b80 <advance_recursive+0x7a>
c0de5b40:	3d01      	subs	r5, #1
c0de5b42:	466e      	mov	r6, sp
c0de5b44:	9802      	ldr	r0, [sp, #8]
c0de5b46:	b1b8      	cbz	r0, c0de5b78 <advance_recursive+0x72>
c0de5b48:	4630      	mov	r0, r6
c0de5b4a:	4629      	mov	r1, r5
c0de5b4c:	f7ff ffdb 	bl	c0de5b06 <advance_recursive>
c0de5b50:	2800      	cmp	r0, #0
c0de5b52:	d0f7      	beq.n	c0de5b44 <advance_recursive+0x3e>
c0de5b54:	e014      	b.n	c0de5b80 <advance_recursive+0x7a>
c0de5b56:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
c0de5b5a:	466a      	mov	r2, sp
c0de5b5c:	2100      	movs	r1, #0
c0de5b5e:	4623      	mov	r3, r4
c0de5b60:	9000      	str	r0, [sp, #0]
c0de5b62:	4620      	mov	r0, r4
c0de5b64:	f000 f8a2 	bl	c0de5cac <_cbor_value_copy_string>
c0de5b68:	e00a      	b.n	c0de5b80 <advance_recursive+0x7a>
c0de5b6a:	4620      	mov	r0, r4
c0de5b6c:	f7ff ffb9 	bl	c0de5ae2 <advance_internal>
c0de5b70:	e006      	b.n	c0de5b80 <advance_recursive+0x7a>
c0de5b72:	f240 4001 	movw	r0, #1025	; 0x401
c0de5b76:	e003      	b.n	c0de5b80 <advance_recursive+0x7a>
c0de5b78:	4669      	mov	r1, sp
c0de5b7a:	4620      	mov	r0, r4
c0de5b7c:	f000 f865 	bl	c0de5c4a <cbor_value_leave_container>
c0de5b80:	b004      	add	sp, #16
c0de5b82:	bd70      	pop	{r4, r5, r6, pc}

c0de5b84 <cbor_value_enter_container>:
c0de5b84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de5b86:	4605      	mov	r5, r0
c0de5b88:	460c      	mov	r4, r1
c0de5b8a:	4608      	mov	r0, r1
c0de5b8c:	4629      	mov	r1, r5
c0de5b8e:	e891 00cc 	ldmia.w	r1, {r2, r3, r6, r7}
c0de5b92:	c0cc      	stmia	r0!, {r2, r3, r6, r7}
c0de5b94:	7be8      	ldrb	r0, [r5, #15]
c0de5b96:	06c0      	lsls	r0, r0, #27
c0de5b98:	d40c      	bmi.n	c0de5bb4 <cbor_value_enter_container+0x30>
c0de5b9a:	4620      	mov	r0, r4
c0de5b9c:	f000 f834 	bl	c0de5c08 <extract_number_and_advance>
c0de5ba0:	60a0      	str	r0, [r4, #8]
c0de5ba2:	b911      	cbnz	r1, c0de5baa <cbor_value_enter_container+0x26>
c0de5ba4:	ea61 0200 	orn	r2, r1, r0
c0de5ba8:	b9a2      	cbnz	r2, c0de5bd4 <cbor_value_enter_container+0x50>
c0de5baa:	6868      	ldr	r0, [r5, #4]
c0de5bac:	6060      	str	r0, [r4, #4]
c0de5bae:	f44f 6080 	mov.w	r0, #1024	; 0x400
c0de5bb2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de5bb4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
c0de5bb8:	2101      	movs	r1, #1
c0de5bba:	60a0      	str	r0, [r4, #8]
c0de5bbc:	4620      	mov	r0, r4
c0de5bbe:	f000 f817 	bl	c0de5bf0 <advance_bytes>
c0de5bc2:	7ba2      	ldrb	r2, [r4, #14]
c0de5bc4:	f002 0020 	and.w	r0, r2, #32
c0de5bc8:	73e0      	strb	r0, [r4, #15]
c0de5bca:	4620      	mov	r0, r4
c0de5bcc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de5bd0:	f7ff bf58 	b.w	c0de5a84 <preparse_next_value_nodecrement>
c0de5bd4:	7ba2      	ldrb	r2, [r4, #14]
c0de5bd6:	2aa0      	cmp	r2, #160	; 0xa0
c0de5bd8:	d104      	bne.n	c0de5be4 <cbor_value_enter_container+0x60>
c0de5bda:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
c0de5bde:	dde4      	ble.n	c0de5baa <cbor_value_enter_container+0x26>
c0de5be0:	0043      	lsls	r3, r0, #1
c0de5be2:	60a3      	str	r3, [r4, #8]
c0de5be4:	4308      	orrs	r0, r1
c0de5be6:	d1ed      	bne.n	c0de5bc4 <cbor_value_enter_container+0x40>
c0de5be8:	20ff      	movs	r0, #255	; 0xff
c0de5bea:	73a0      	strb	r0, [r4, #14]
c0de5bec:	2000      	movs	r0, #0
c0de5bee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de5bf0 <advance_bytes>:
c0de5bf0:	6802      	ldr	r2, [r0, #0]
c0de5bf2:	7913      	ldrb	r3, [r2, #4]
c0de5bf4:	07db      	lsls	r3, r3, #31
c0de5bf6:	d103      	bne.n	c0de5c00 <advance_bytes+0x10>
c0de5bf8:	6842      	ldr	r2, [r0, #4]
c0de5bfa:	4411      	add	r1, r2
c0de5bfc:	6041      	str	r1, [r0, #4]
c0de5bfe:	4770      	bx	lr
c0de5c00:	6812      	ldr	r2, [r2, #0]
c0de5c02:	6840      	ldr	r0, [r0, #4]
c0de5c04:	6892      	ldr	r2, [r2, #8]
c0de5c06:	4710      	bx	r2

c0de5c08 <extract_number_and_advance>:
c0de5c08:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de5c0a:	4604      	mov	r4, r0
c0de5c0c:	f000 f846 	bl	c0de5c9c <_cbor_value_extract_int64_helper>
c0de5c10:	4605      	mov	r5, r0
c0de5c12:	460e      	mov	r6, r1
c0de5c14:	f10d 0103 	add.w	r1, sp, #3
c0de5c18:	4620      	mov	r0, r4
c0de5c1a:	2200      	movs	r2, #0
c0de5c1c:	2301      	movs	r3, #1
c0de5c1e:	2701      	movs	r7, #1
c0de5c20:	f000 f983 	bl	c0de5f2a <read_bytes_unchecked>
c0de5c24:	f89d 0003 	ldrb.w	r0, [sp, #3]
c0de5c28:	f000 001f 	and.w	r0, r0, #31
c0de5c2c:	f88d 0003 	strb.w	r0, [sp, #3]
c0de5c30:	3818      	subs	r0, #24
c0de5c32:	fa07 f000 	lsl.w	r0, r7, r0
c0de5c36:	f100 0101 	add.w	r1, r0, #1
c0de5c3a:	4620      	mov	r0, r4
c0de5c3c:	bf38      	it	cc
c0de5c3e:	2101      	movcc	r1, #1
c0de5c40:	f7ff ffd6 	bl	c0de5bf0 <advance_bytes>
c0de5c44:	4628      	mov	r0, r5
c0de5c46:	4631      	mov	r1, r6
c0de5c48:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de5c4a <cbor_value_leave_container>:
c0de5c4a:	b510      	push	{r4, lr}
c0de5c4c:	4604      	mov	r4, r0
c0de5c4e:	6848      	ldr	r0, [r1, #4]
c0de5c50:	6060      	str	r0, [r4, #4]
c0de5c52:	7bc8      	ldrb	r0, [r1, #15]
c0de5c54:	06c0      	lsls	r0, r0, #27
c0de5c56:	d503      	bpl.n	c0de5c60 <cbor_value_leave_container+0x16>
c0de5c58:	4620      	mov	r0, r4
c0de5c5a:	2101      	movs	r1, #1
c0de5c5c:	f7ff ffc8 	bl	c0de5bf0 <advance_bytes>
c0de5c60:	4620      	mov	r0, r4
c0de5c62:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5c66:	f000 b800 	b.w	c0de5c6a <preparse_next_value>

c0de5c6a <preparse_next_value>:
c0de5c6a:	7b81      	ldrb	r1, [r0, #14]
c0de5c6c:	29c0      	cmp	r1, #192	; 0xc0
c0de5c6e:	d005      	beq.n	c0de5c7c <preparse_next_value+0x12>
c0de5c70:	6882      	ldr	r2, [r0, #8]
c0de5c72:	1c53      	adds	r3, r2, #1
c0de5c74:	d002      	beq.n	c0de5c7c <preparse_next_value+0x12>
c0de5c76:	3a01      	subs	r2, #1
c0de5c78:	6082      	str	r2, [r0, #8]
c0de5c7a:	d007      	beq.n	c0de5c8c <preparse_next_value+0x22>
c0de5c7c:	29c0      	cmp	r1, #192	; 0xc0
c0de5c7e:	d003      	beq.n	c0de5c88 <preparse_next_value+0x1e>
c0de5c80:	7bc1      	ldrb	r1, [r0, #15]
c0de5c82:	f081 0140 	eor.w	r1, r1, #64	; 0x40
c0de5c86:	73c1      	strb	r1, [r0, #15]
c0de5c88:	f7ff befc 	b.w	c0de5a84 <preparse_next_value_nodecrement>
c0de5c8c:	21ff      	movs	r1, #255	; 0xff
c0de5c8e:	7381      	strb	r1, [r0, #14]
c0de5c90:	7bc1      	ldrb	r1, [r0, #15]
c0de5c92:	f001 01ef 	and.w	r1, r1, #239	; 0xef
c0de5c96:	73c1      	strb	r1, [r0, #15]
c0de5c98:	2000      	movs	r0, #0
c0de5c9a:	4770      	bx	lr

c0de5c9c <_cbor_value_extract_int64_helper>:
c0de5c9c:	7bc1      	ldrb	r1, [r0, #15]
c0de5c9e:	0789      	lsls	r1, r1, #30
c0de5ca0:	bf48      	it	mi
c0de5ca2:	f7ff be08 	bmi.w	c0de58b6 <_cbor_value_decode_int64_internal>
c0de5ca6:	8980      	ldrh	r0, [r0, #12]
c0de5ca8:	2100      	movs	r1, #0
c0de5caa:	4770      	bx	lr

c0de5cac <_cbor_value_copy_string>:
c0de5cac:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de5cae:	4c0b      	ldr	r4, [pc, #44]	; (c0de5cdc <_cbor_value_copy_string+0x30>)
c0de5cb0:	4d0b      	ldr	r5, [pc, #44]	; (c0de5ce0 <_cbor_value_copy_string+0x34>)
c0de5cb2:	2900      	cmp	r1, #0
c0de5cb4:	447d      	add	r5, pc
c0de5cb6:	447c      	add	r4, pc
c0de5cb8:	bf08      	it	eq
c0de5cba:	4625      	moveq	r5, r4
c0de5cbc:	e9cd 3500 	strd	r3, r5, [sp]
c0de5cc0:	f10d 030f 	add.w	r3, sp, #15
c0de5cc4:	f000 f8c9 	bl	c0de5e5a <iterate_string_chunks>
c0de5cc8:	f89d 100f 	ldrb.w	r1, [sp, #15]
c0de5ccc:	fab1 f181 	clz	r1, r1
c0de5cd0:	0949      	lsrs	r1, r1, #5
c0de5cd2:	2800      	cmp	r0, #0
c0de5cd4:	bf08      	it	eq
c0de5cd6:	07c8      	lsleq	r0, r1, #31
c0de5cd8:	b004      	add	sp, #16
c0de5cda:	bdb0      	pop	{r4, r5, r7, pc}
c0de5cdc:	0000026d 	.word	0x0000026d
c0de5ce0:	00000263 	.word	0x00000263

c0de5ce4 <_cbor_value_begin_string_iteration>:
c0de5ce4:	b580      	push	{r7, lr}
c0de5ce6:	7bc1      	ldrb	r1, [r0, #15]
c0de5ce8:	f041 020c 	orr.w	r2, r1, #12
c0de5cec:	06c9      	lsls	r1, r1, #27
c0de5cee:	73c2      	strb	r2, [r0, #15]
c0de5cf0:	d502      	bpl.n	c0de5cf8 <_cbor_value_begin_string_iteration+0x14>
c0de5cf2:	2101      	movs	r1, #1
c0de5cf4:	f7ff ff7c 	bl	c0de5bf0 <advance_bytes>
c0de5cf8:	2000      	movs	r0, #0
c0de5cfa:	bd80      	pop	{r7, pc}

c0de5cfc <_cbor_value_finish_string_iteration>:
c0de5cfc:	b510      	push	{r4, lr}
c0de5cfe:	4604      	mov	r4, r0
c0de5d00:	7bc0      	ldrb	r0, [r0, #15]
c0de5d02:	06c0      	lsls	r0, r0, #27
c0de5d04:	d503      	bpl.n	c0de5d0e <_cbor_value_finish_string_iteration+0x12>
c0de5d06:	4620      	mov	r0, r4
c0de5d08:	2101      	movs	r1, #1
c0de5d0a:	f7ff ff71 	bl	c0de5bf0 <advance_bytes>
c0de5d0e:	4620      	mov	r0, r4
c0de5d10:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5d14:	f7ff bfa9 	b.w	c0de5c6a <preparse_next_value>

c0de5d18 <get_string_chunk_size>:
c0de5d18:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5d1a:	4607      	mov	r7, r0
c0de5d1c:	7bc0      	ldrb	r0, [r0, #15]
c0de5d1e:	f010 0f14 	tst.w	r0, #20
c0de5d22:	d00b      	beq.n	c0de5d3c <get_string_chunk_size+0x24>
c0de5d24:	460c      	mov	r4, r1
c0de5d26:	f10d 0107 	add.w	r1, sp, #7
c0de5d2a:	4638      	mov	r0, r7
c0de5d2c:	4615      	mov	r5, r2
c0de5d2e:	f000 f912 	bl	c0de5f56 <read_bytes>
c0de5d32:	b3a8      	cbz	r0, c0de5da0 <get_string_chunk_size+0x88>
c0de5d34:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5d38:	28ff      	cmp	r0, #255	; 0xff
c0de5d3a:	d102      	bne.n	c0de5d42 <get_string_chunk_size+0x2a>
c0de5d3c:	f240 1007 	movw	r0, #263	; 0x107
c0de5d40:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de5d42:	7bb9      	ldrb	r1, [r7, #14]
c0de5d44:	f000 02e0 	and.w	r2, r0, #224	; 0xe0
c0de5d48:	428a      	cmp	r2, r1
c0de5d4a:	bf1c      	itt	ne
c0de5d4c:	f44f 7082 	movne.w	r0, #260	; 0x104
c0de5d50:	bdfe      	popne	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de5d52:	f000 001f 	and.w	r0, r0, #31
c0de5d56:	2818      	cmp	r0, #24
c0de5d58:	f88d 0007 	strb.w	r0, [sp, #7]
c0de5d5c:	d204      	bcs.n	c0de5d68 <get_string_chunk_size+0x50>
c0de5d5e:	2601      	movs	r6, #1
c0de5d60:	6028      	str	r0, [r5, #0]
c0de5d62:	2000      	movs	r0, #0
c0de5d64:	6026      	str	r6, [r4, #0]
c0de5d66:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de5d68:	281b      	cmp	r0, #27
c0de5d6a:	d835      	bhi.n	c0de5dd8 <get_string_chunk_size+0xc0>
c0de5d6c:	3818      	subs	r0, #24
c0de5d6e:	2101      	movs	r1, #1
c0de5d70:	fa01 f000 	lsl.w	r0, r1, r0
c0de5d74:	1c46      	adds	r6, r0, #1
c0de5d76:	4638      	mov	r0, r7
c0de5d78:	4631      	mov	r1, r6
c0de5d7a:	f000 f8fd 	bl	c0de5f78 <can_read_bytes>
c0de5d7e:	b178      	cbz	r0, c0de5da0 <get_string_chunk_size+0x88>
c0de5d80:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5d84:	2819      	cmp	r0, #25
c0de5d86:	d80e      	bhi.n	c0de5da6 <get_string_chunk_size+0x8e>
c0de5d88:	d113      	bne.n	c0de5db2 <get_string_chunk_size+0x9a>
c0de5d8a:	a902      	add	r1, sp, #8
c0de5d8c:	4638      	mov	r0, r7
c0de5d8e:	2201      	movs	r2, #1
c0de5d90:	2302      	movs	r3, #2
c0de5d92:	f000 f8ca 	bl	c0de5f2a <read_bytes_unchecked>
c0de5d96:	f8bd 0008 	ldrh.w	r0, [sp, #8]
c0de5d9a:	ba00      	rev	r0, r0
c0de5d9c:	0c00      	lsrs	r0, r0, #16
c0de5d9e:	e7df      	b.n	c0de5d60 <get_string_chunk_size+0x48>
c0de5da0:	f240 1001 	movw	r0, #257	; 0x101
c0de5da4:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de5da6:	281a      	cmp	r0, #26
c0de5da8:	d10d      	bne.n	c0de5dc6 <get_string_chunk_size+0xae>
c0de5daa:	4638      	mov	r0, r7
c0de5dac:	f7ff fd9e 	bl	c0de58ec <read_uint32>
c0de5db0:	e7d6      	b.n	c0de5d60 <get_string_chunk_size+0x48>
c0de5db2:	f10d 010b 	add.w	r1, sp, #11
c0de5db6:	4638      	mov	r0, r7
c0de5db8:	2201      	movs	r2, #1
c0de5dba:	2301      	movs	r3, #1
c0de5dbc:	f000 f8b5 	bl	c0de5f2a <read_bytes_unchecked>
c0de5dc0:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de5dc4:	e7cc      	b.n	c0de5d60 <get_string_chunk_size+0x48>
c0de5dc6:	4638      	mov	r0, r7
c0de5dc8:	f7ff fd85 	bl	c0de58d6 <read_uint64>
c0de5dcc:	2900      	cmp	r1, #0
c0de5dce:	6028      	str	r0, [r5, #0]
c0de5dd0:	d0c7      	beq.n	c0de5d62 <get_string_chunk_size+0x4a>
c0de5dd2:	f44f 6080 	mov.w	r0, #1024	; 0x400
c0de5dd6:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de5dd8:	f240 1005 	movw	r0, #261	; 0x105
c0de5ddc:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de5dde <_cbor_value_get_string_chunk>:
c0de5dde:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5de0:	b085      	sub	sp, #20
c0de5de2:	f10d 0c04 	add.w	ip, sp, #4
c0de5de6:	2b00      	cmp	r3, #0
c0de5de8:	bf18      	it	ne
c0de5dea:	469c      	movne	ip, r3
c0de5dec:	e890 00f0 	ldmia.w	r0, {r4, r5, r6, r7}
c0de5df0:	4663      	mov	r3, ip
c0de5df2:	4660      	mov	r0, ip
c0de5df4:	c3f0      	stmia	r3!, {r4, r5, r6, r7}
c0de5df6:	f000 f802 	bl	c0de5dfe <get_string_chunk>
c0de5dfa:	b005      	add	sp, #20
c0de5dfc:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de5dfe <get_string_chunk>:
c0de5dfe:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de5e00:	460d      	mov	r5, r1
c0de5e02:	4669      	mov	r1, sp
c0de5e04:	4616      	mov	r6, r2
c0de5e06:	4604      	mov	r4, r0
c0de5e08:	f7ff ff86 	bl	c0de5d18 <get_string_chunk_size>
c0de5e0c:	b100      	cbz	r0, c0de5e10 <get_string_chunk+0x12>
c0de5e0e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de5e10:	6821      	ldr	r1, [r4, #0]
c0de5e12:	6836      	ldr	r6, [r6, #0]
c0de5e14:	9a00      	ldr	r2, [sp, #0]
c0de5e16:	7908      	ldrb	r0, [r1, #4]
c0de5e18:	07c0      	lsls	r0, r0, #31
c0de5e1a:	d10d      	bne.n	c0de5e38 <get_string_chunk+0x3a>
c0de5e1c:	6860      	ldr	r0, [r4, #4]
c0de5e1e:	4631      	mov	r1, r6
c0de5e20:	4410      	add	r0, r2
c0de5e22:	6060      	str	r0, [r4, #4]
c0de5e24:	4620      	mov	r0, r4
c0de5e26:	f000 f8a7 	bl	c0de5f78 <can_read_bytes>
c0de5e2a:	b198      	cbz	r0, c0de5e54 <get_string_chunk+0x56>
c0de5e2c:	6860      	ldr	r0, [r4, #4]
c0de5e2e:	6028      	str	r0, [r5, #0]
c0de5e30:	6860      	ldr	r0, [r4, #4]
c0de5e32:	4430      	add	r0, r6
c0de5e34:	6060      	str	r0, [r4, #4]
c0de5e36:	e007      	b.n	c0de5e48 <get_string_chunk+0x4a>
c0de5e38:	6809      	ldr	r1, [r1, #0]
c0de5e3a:	6860      	ldr	r0, [r4, #4]
c0de5e3c:	4633      	mov	r3, r6
c0de5e3e:	68cf      	ldr	r7, [r1, #12]
c0de5e40:	4629      	mov	r1, r5
c0de5e42:	47b8      	blx	r7
c0de5e44:	2800      	cmp	r0, #0
c0de5e46:	d1e2      	bne.n	c0de5e0e <get_string_chunk+0x10>
c0de5e48:	7be0      	ldrb	r0, [r4, #15]
c0de5e4a:	f000 00fb 	and.w	r0, r0, #251	; 0xfb
c0de5e4e:	73e0      	strb	r0, [r4, #15]
c0de5e50:	2000      	movs	r0, #0
c0de5e52:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de5e54:	f240 1001 	movw	r0, #257	; 0x101
c0de5e58:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de5e5a <iterate_string_chunks>:
c0de5e5a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5e5e:	b088      	sub	sp, #32
c0de5e60:	9201      	str	r2, [sp, #4]
c0de5e62:	7b82      	ldrb	r2, [r0, #14]
c0de5e64:	468a      	mov	sl, r1
c0de5e66:	9910      	ldr	r1, [sp, #64]	; 0x40
c0de5e68:	ae04      	add	r6, sp, #16
c0de5e6a:	461d      	mov	r5, r3
c0de5e6c:	2a40      	cmp	r2, #64	; 0x40
c0de5e6e:	2900      	cmp	r1, #0
c0de5e70:	bf18      	it	ne
c0de5e72:	460e      	movne	r6, r1
c0de5e74:	e890 009c 	ldmia.w	r0, {r2, r3, r4, r7}
c0de5e78:	4631      	mov	r1, r6
c0de5e7a:	2001      	movs	r0, #1
c0de5e7c:	c19c      	stmia	r1!, {r2, r3, r4, r7}
c0de5e7e:	7028      	strb	r0, [r5, #0]
c0de5e80:	4630      	mov	r0, r6
c0de5e82:	f7ff ff2f 	bl	c0de5ce4 <_cbor_value_begin_string_iteration>
c0de5e86:	ac03      	add	r4, sp, #12
c0de5e88:	f04f 0800 	mov.w	r8, #0
c0de5e8c:	af02      	add	r7, sp, #8
c0de5e8e:	4630      	mov	r0, r6
c0de5e90:	4621      	mov	r1, r4
c0de5e92:	463a      	mov	r2, r7
c0de5e94:	f7ff ffb3 	bl	c0de5dfe <get_string_chunk>
c0de5e98:	b9c8      	cbnz	r0, c0de5ece <iterate_string_chunks+0x74>
c0de5e9a:	9a02      	ldr	r2, [sp, #8]
c0de5e9c:	eb18 0b02 	adds.w	fp, r8, r2
c0de5ea0:	d238      	bcs.n	c0de5f14 <iterate_string_chunks+0xba>
c0de5ea2:	7828      	ldrb	r0, [r5, #0]
c0de5ea4:	b118      	cbz	r0, c0de5eae <iterate_string_chunks+0x54>
c0de5ea6:	9801      	ldr	r0, [sp, #4]
c0de5ea8:	6800      	ldr	r0, [r0, #0]
c0de5eaa:	4558      	cmp	r0, fp
c0de5eac:	d201      	bcs.n	c0de5eb2 <iterate_string_chunks+0x58>
c0de5eae:	2000      	movs	r0, #0
c0de5eb0:	e00a      	b.n	c0de5ec8 <iterate_string_chunks+0x6e>
c0de5eb2:	4650      	mov	r0, sl
c0de5eb4:	f1ba 0f00 	cmp.w	sl, #0
c0de5eb8:	9b11      	ldr	r3, [sp, #68]	; 0x44
c0de5eba:	bf18      	it	ne
c0de5ebc:	4440      	addne	r0, r8
c0de5ebe:	9903      	ldr	r1, [sp, #12]
c0de5ec0:	4798      	blx	r3
c0de5ec2:	2800      	cmp	r0, #0
c0de5ec4:	bf18      	it	ne
c0de5ec6:	2001      	movne	r0, #1
c0de5ec8:	7028      	strb	r0, [r5, #0]
c0de5eca:	46d8      	mov	r8, fp
c0de5ecc:	e7df      	b.n	c0de5e8e <iterate_string_chunks+0x34>
c0de5ece:	f240 1107 	movw	r1, #263	; 0x107
c0de5ed2:	4288      	cmp	r0, r1
c0de5ed4:	d11b      	bne.n	c0de5f0e <iterate_string_chunks+0xb4>
c0de5ed6:	7828      	ldrb	r0, [r5, #0]
c0de5ed8:	b198      	cbz	r0, c0de5f02 <iterate_string_chunks+0xa8>
c0de5eda:	9801      	ldr	r0, [sp, #4]
c0de5edc:	6800      	ldr	r0, [r0, #0]
c0de5ede:	4540      	cmp	r0, r8
c0de5ee0:	d90f      	bls.n	c0de5f02 <iterate_string_chunks+0xa8>
c0de5ee2:	2000      	movs	r0, #0
c0de5ee4:	9b11      	ldr	r3, [sp, #68]	; 0x44
c0de5ee6:	f1ba 0f00 	cmp.w	sl, #0
c0de5eea:	f88d 0008 	strb.w	r0, [sp, #8]
c0de5eee:	bf18      	it	ne
c0de5ef0:	44c2      	addne	sl, r8
c0de5ef2:	a902      	add	r1, sp, #8
c0de5ef4:	4650      	mov	r0, sl
c0de5ef6:	2201      	movs	r2, #1
c0de5ef8:	4798      	blx	r3
c0de5efa:	2800      	cmp	r0, #0
c0de5efc:	bf18      	it	ne
c0de5efe:	2001      	movne	r0, #1
c0de5f00:	7028      	strb	r0, [r5, #0]
c0de5f02:	9801      	ldr	r0, [sp, #4]
c0de5f04:	f8c0 8000 	str.w	r8, [r0]
c0de5f08:	4630      	mov	r0, r6
c0de5f0a:	f7ff fef7 	bl	c0de5cfc <_cbor_value_finish_string_iteration>
c0de5f0e:	b008      	add	sp, #32
c0de5f10:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5f14:	f44f 6080 	mov.w	r0, #1024	; 0x400
c0de5f18:	e7f9      	b.n	c0de5f0e <iterate_string_chunks+0xb4>

c0de5f1a <iterate_memcpy>:
c0de5f1a:	b510      	push	{r4, lr}
c0de5f1c:	4604      	mov	r4, r0
c0de5f1e:	f003 fcf4 	bl	c0de990a <__aeabi_memcpy>
c0de5f22:	4620      	mov	r0, r4
c0de5f24:	bd10      	pop	{r4, pc}

c0de5f26 <iterate_noop>:
c0de5f26:	2001      	movs	r0, #1
c0de5f28:	4770      	bx	lr

c0de5f2a <read_bytes_unchecked>:
c0de5f2a:	b5b0      	push	{r4, r5, r7, lr}
c0de5f2c:	460c      	mov	r4, r1
c0de5f2e:	6801      	ldr	r1, [r0, #0]
c0de5f30:	790d      	ldrb	r5, [r1, #4]
c0de5f32:	07ed      	lsls	r5, r5, #31
c0de5f34:	d107      	bne.n	c0de5f46 <read_bytes_unchecked+0x1c>
c0de5f36:	6840      	ldr	r0, [r0, #4]
c0de5f38:	1881      	adds	r1, r0, r2
c0de5f3a:	4620      	mov	r0, r4
c0de5f3c:	461a      	mov	r2, r3
c0de5f3e:	f003 fce4 	bl	c0de990a <__aeabi_memcpy>
c0de5f42:	4620      	mov	r0, r4
c0de5f44:	bdb0      	pop	{r4, r5, r7, pc}
c0de5f46:	6809      	ldr	r1, [r1, #0]
c0de5f48:	6840      	ldr	r0, [r0, #4]
c0de5f4a:	f8d1 c004 	ldr.w	ip, [r1, #4]
c0de5f4e:	4621      	mov	r1, r4
c0de5f50:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f54:	4760      	bx	ip

c0de5f56 <read_bytes>:
c0de5f56:	b5b0      	push	{r4, r5, r7, lr}
c0de5f58:	460c      	mov	r4, r1
c0de5f5a:	2101      	movs	r1, #1
c0de5f5c:	4605      	mov	r5, r0
c0de5f5e:	f000 f80b 	bl	c0de5f78 <can_read_bytes>
c0de5f62:	b138      	cbz	r0, c0de5f74 <read_bytes+0x1e>
c0de5f64:	4628      	mov	r0, r5
c0de5f66:	4621      	mov	r1, r4
c0de5f68:	2200      	movs	r2, #0
c0de5f6a:	2301      	movs	r3, #1
c0de5f6c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5f70:	f7ff bfdb 	b.w	c0de5f2a <read_bytes_unchecked>
c0de5f74:	2000      	movs	r0, #0
c0de5f76:	bdb0      	pop	{r4, r5, r7, pc}

c0de5f78 <can_read_bytes>:
c0de5f78:	6802      	ldr	r2, [r0, #0]
c0de5f7a:	7913      	ldrb	r3, [r2, #4]
c0de5f7c:	07db      	lsls	r3, r3, #31
c0de5f7e:	d107      	bne.n	c0de5f90 <can_read_bytes+0x18>
c0de5f80:	6840      	ldr	r0, [r0, #4]
c0de5f82:	6812      	ldr	r2, [r2, #0]
c0de5f84:	1a12      	subs	r2, r2, r0
c0de5f86:	2000      	movs	r0, #0
c0de5f88:	428a      	cmp	r2, r1
c0de5f8a:	bf28      	it	cs
c0de5f8c:	2001      	movcs	r0, #1
c0de5f8e:	4770      	bx	lr
c0de5f90:	6812      	ldr	r2, [r2, #0]
c0de5f92:	6840      	ldr	r0, [r0, #4]
c0de5f94:	6812      	ldr	r2, [r2, #0]
c0de5f96:	4710      	bx	r2

c0de5f98 <bagl_draw_with_context>:
c0de5f98:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5f9c:	b08e      	sub	sp, #56	; 0x38
c0de5f9e:	4604      	mov	r4, r0
c0de5fa0:	7800      	ldrb	r0, [r0, #0]
c0de5fa2:	910d      	str	r1, [sp, #52]	; 0x34
c0de5fa4:	920b      	str	r2, [sp, #44]	; 0x2c
c0de5fa6:	f000 087f 	and.w	r8, r0, #127	; 0x7f
c0de5faa:	f1b8 0f05 	cmp.w	r8, #5
c0de5fae:	d10c      	bne.n	c0de5fca <bagl_draw_with_context+0x32>
c0de5fb0:	2000      	movs	r0, #0
c0de5fb2:	f04f 0b00 	mov.w	fp, #0
c0de5fb6:	f04f 0a00 	mov.w	sl, #0
c0de5fba:	9009      	str	r0, [sp, #36]	; 0x24
c0de5fbc:	2000      	movs	r0, #0
c0de5fbe:	900c      	str	r0, [sp, #48]	; 0x30
c0de5fc0:	2000      	movs	r0, #0
c0de5fc2:	9008      	str	r0, [sp, #32]
c0de5fc4:	2000      	movs	r0, #0
c0de5fc6:	900a      	str	r0, [sp, #40]	; 0x28
c0de5fc8:	e0a5      	b.n	c0de6116 <bagl_draw_with_context+0x17e>
c0de5fca:	8b20      	ldrh	r0, [r4, #24]
c0de5fcc:	461d      	mov	r5, r3
c0de5fce:	4616      	mov	r6, r2
c0de5fd0:	f000 fa4e 	bl	c0de6470 <bagl_get_font>
c0de5fd4:	b1d8      	cbz	r0, c0de600e <bagl_draw_with_context+0x76>
c0de5fd6:	f890 a005 	ldrb.w	sl, [r0, #5]
c0de5fda:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de5fdc:	f8b4 b008 	ldrh.w	fp, [r4, #8]
c0de5fe0:	b190      	cbz	r0, c0de6008 <bagl_draw_with_context+0x70>
c0de5fe2:	b18e      	cbz	r6, c0de6008 <bagl_draw_with_context+0x70>
c0de5fe4:	88e1      	ldrh	r1, [r4, #6]
c0de5fe6:	8b20      	ldrh	r0, [r4, #24]
c0de5fe8:	9a0d      	ldr	r2, [sp, #52]	; 0x34
c0de5fea:	b2f3      	uxtb	r3, r6
c0de5fec:	9500      	str	r5, [sp, #0]
c0de5fee:	3164      	adds	r1, #100	; 0x64
c0de5ff0:	b289      	uxth	r1, r1
c0de5ff2:	f000 fa5f 	bl	c0de64b4 <bagl_compute_line_width>
c0de5ff6:	4607      	mov	r7, r0
c0de5ff8:	88e0      	ldrh	r0, [r4, #6]
c0de5ffa:	2e05      	cmp	r6, #5
c0de5ffc:	bf28      	it	cs
c0de5ffe:	4287      	cmpcs	r7, r0
c0de6000:	d810      	bhi.n	c0de6024 <bagl_draw_with_context+0x8c>
c0de6002:	4633      	mov	r3, r6
c0de6004:	2600      	movs	r6, #0
c0de6006:	e059      	b.n	c0de60bc <bagl_draw_with_context+0x124>
c0de6008:	2300      	movs	r3, #0
c0de600a:	2600      	movs	r6, #0
c0de600c:	e005      	b.n	c0de601a <bagl_draw_with_context+0x82>
c0de600e:	2300      	movs	r3, #0
c0de6010:	2600      	movs	r6, #0
c0de6012:	f04f 0b00 	mov.w	fp, #0
c0de6016:	f04f 0a00 	mov.w	sl, #0
c0de601a:	2000      	movs	r0, #0
c0de601c:	9008      	str	r0, [sp, #32]
c0de601e:	2000      	movs	r0, #0
c0de6020:	900a      	str	r0, [sp, #40]	; 0x28
c0de6022:	e076      	b.n	c0de6112 <bagl_draw_with_context+0x17a>
c0de6024:	8b20      	ldrh	r0, [r4, #24]
c0de6026:	e9cd ab07 	strd	sl, fp, [sp, #28]
c0de602a:	f8cd 8024 	str.w	r8, [sp, #36]	; 0x24
c0de602e:	9500      	str	r5, [sp, #0]
c0de6030:	2164      	movs	r1, #100	; 0x64
c0de6032:	2303      	movs	r3, #3
c0de6034:	4aac      	ldr	r2, [pc, #688]	; (c0de62e8 <bagl_draw_with_context+0x350>)
c0de6036:	447a      	add	r2, pc
c0de6038:	f000 fa3c 	bl	c0de64b4 <bagl_compute_line_width>
c0de603c:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de603e:	900c      	str	r0, [sp, #48]	; 0x30
c0de6040:	88e0      	ldrh	r0, [r4, #6]
c0de6042:	2200      	movs	r2, #0
c0de6044:	0873      	lsrs	r3, r6, #1
c0de6046:	920a      	str	r2, [sp, #40]	; 0x28
c0de6048:	eb01 0c56 	add.w	ip, r1, r6, lsr #1
c0de604c:	468a      	mov	sl, r1
c0de604e:	eba1 010c 	sub.w	r1, r1, ip
c0de6052:	eb01 0b06 	add.w	fp, r1, r6
c0de6056:	4666      	mov	r6, ip
c0de6058:	b363      	cbz	r3, c0de60b4 <bagl_draw_with_context+0x11c>
c0de605a:	b281      	uxth	r1, r0
c0de605c:	428f      	cmp	r7, r1
c0de605e:	d929      	bls.n	c0de60b4 <bagl_draw_with_context+0x11c>
c0de6060:	f1bb 0f00 	cmp.w	fp, #0
c0de6064:	d026      	beq.n	c0de60b4 <bagl_draw_with_context+0x11c>
c0de6066:	8b20      	ldrh	r0, [r4, #24]
c0de6068:	4698      	mov	r8, r3
c0de606a:	b2db      	uxtb	r3, r3
c0de606c:	4652      	mov	r2, sl
c0de606e:	9500      	str	r5, [sp, #0]
c0de6070:	f000 fa20 	bl	c0de64b4 <bagl_compute_line_width>
c0de6074:	4607      	mov	r7, r0
c0de6076:	88e1      	ldrh	r1, [r4, #6]
c0de6078:	8b20      	ldrh	r0, [r4, #24]
c0de607a:	fa5f f38b 	uxtb.w	r3, fp
c0de607e:	4632      	mov	r2, r6
c0de6080:	9500      	str	r5, [sp, #0]
c0de6082:	f000 fa17 	bl	c0de64b4 <bagl_compute_line_width>
c0de6086:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de6088:	4643      	mov	r3, r8
c0de608a:	4439      	add	r1, r7
c0de608c:	180f      	adds	r7, r1, r0
c0de608e:	88e0      	ldrh	r0, [r4, #6]
c0de6090:	4287      	cmp	r7, r0
c0de6092:	d9e1      	bls.n	c0de6058 <bagl_draw_with_context+0xc0>
c0de6094:	990a      	ldr	r1, [sp, #40]	; 0x28
c0de6096:	2901      	cmp	r1, #1
c0de6098:	d003      	beq.n	c0de60a2 <bagl_draw_with_context+0x10a>
c0de609a:	4632      	mov	r2, r6
c0de609c:	b911      	cbnz	r1, c0de60a4 <bagl_draw_with_context+0x10c>
c0de609e:	3b01      	subs	r3, #1
c0de60a0:	e000      	b.n	c0de60a4 <bagl_draw_with_context+0x10c>
c0de60a2:	1c72      	adds	r2, r6, #1
c0de60a4:	2601      	movs	r6, #1
c0de60a6:	4694      	mov	ip, r2
c0de60a8:	ea26 0101 	bic.w	r1, r6, r1
c0de60ac:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
c0de60ae:	910a      	str	r1, [sp, #40]	; 0x28
c0de60b0:	4651      	mov	r1, sl
c0de60b2:	e7cb      	b.n	c0de604c <bagl_draw_with_context+0xb4>
c0de60b4:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
c0de60b8:	e9dd ab07 	ldrd	sl, fp, [sp, #28]
c0de60bc:	8b21      	ldrh	r1, [r4, #24]
c0de60be:	f401 4240 	and.w	r2, r1, #49152	; 0xc000
c0de60c2:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
c0de60c6:	d005      	beq.n	c0de60d4 <bagl_draw_with_context+0x13c>
c0de60c8:	f5b2 4f80 	cmp.w	r2, #16384	; 0x4000
c0de60cc:	d10c      	bne.n	c0de60e8 <bagl_draw_with_context+0x150>
c0de60ce:	b280      	uxth	r0, r0
c0de60d0:	1bc0      	subs	r0, r0, r7
c0de60d2:	e006      	b.n	c0de60e2 <bagl_draw_with_context+0x14a>
c0de60d4:	f06f 0201 	mvn.w	r2, #1
c0de60d8:	b280      	uxth	r0, r0
c0de60da:	fb97 f2f2 	sdiv	r2, r7, r2
c0de60de:	eb02 0050 	add.w	r0, r2, r0, lsr #1
c0de60e2:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
c0de60e6:	e000      	b.n	c0de60ea <bagl_draw_with_context+0x152>
c0de60e8:	2000      	movs	r0, #0
c0de60ea:	900a      	str	r0, [sp, #40]	; 0x28
c0de60ec:	f401 5040 	and.w	r0, r1, #12288	; 0x3000
c0de60f0:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
c0de60f4:	d007      	beq.n	c0de6106 <bagl_draw_with_context+0x16e>
c0de60f6:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
c0de60fa:	bf12      	itee	ne
c0de60fc:	2000      	movne	r0, #0
c0de60fe:	8920      	ldrheq	r0, [r4, #8]
c0de6100:	eba0 000a 	subeq.w	r0, r0, sl
c0de6104:	e004      	b.n	c0de6110 <bagl_draw_with_context+0x178>
c0de6106:	8920      	ldrh	r0, [r4, #8]
c0de6108:	ea6f 015a 	mvn.w	r1, sl, lsr #1
c0de610c:	eb01 0050 	add.w	r0, r1, r0, lsr #1
c0de6110:	9008      	str	r0, [sp, #32]
c0de6112:	9309      	str	r3, [sp, #36]	; 0x24
c0de6114:	960c      	str	r6, [sp, #48]	; 0x30
c0de6116:	8927      	ldrh	r7, [r4, #8]
c0de6118:	88e3      	ldrh	r3, [r4, #6]
c0de611a:	0879      	lsrs	r1, r7, #1
c0de611c:	0858      	lsrs	r0, r3, #1
c0de611e:	460a      	mov	r2, r1
c0de6120:	ebb0 0f57 	cmp.w	r0, r7, lsr #1
c0de6124:	bf38      	it	cc
c0de6126:	085a      	lsrcc	r2, r3, #1
c0de6128:	7ae6      	ldrb	r6, [r4, #11]
c0de612a:	42b2      	cmp	r2, r6
c0de612c:	4635      	mov	r5, r6
c0de612e:	d803      	bhi.n	c0de6138 <bagl_draw_with_context+0x1a0>
c0de6130:	4288      	cmp	r0, r1
c0de6132:	bf2c      	ite	cs
c0de6134:	460d      	movcs	r5, r1
c0de6136:	4605      	movcc	r5, r0
c0de6138:	f1a8 0001 	sub.w	r0, r8, #1
c0de613c:	2804      	cmp	r0, #4
c0de613e:	d22c      	bcs.n	c0de619a <bagl_draw_with_context+0x202>
c0de6140:	f1b8 0f02 	cmp.w	r8, #2
c0de6144:	bf18      	it	ne
c0de6146:	f1b8 0f07 	cmpne.w	r8, #7
c0de614a:	d12e      	bne.n	c0de61aa <bagl_draw_with_context+0x212>
c0de614c:	f1b8 0f07 	cmp.w	r8, #7
c0de6150:	bf08      	it	eq
c0de6152:	465f      	moveq	r7, fp
c0de6154:	6960      	ldr	r0, [r4, #20]
c0de6156:	f000 fcf4 	bl	c0de6b42 <OUTLINED_FUNCTION_9>
c0de615a:	9700      	str	r7, [sp, #0]
c0de615c:	f1b8 0f07 	cmp.w	r8, #7
c0de6160:	bf08      	it	eq
c0de6162:	eba2 020a 	subeq.w	r2, r2, sl
c0de6166:	f003 fbb9 	bl	c0de98dc <bagl_hal_draw_rect>
c0de616a:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de616c:	2800      	cmp	r0, #0
c0de616e:	f000 8174 	beq.w	c0de645a <bagl_draw_with_context+0x4c2>
c0de6172:	f1b8 0f04 	cmp.w	r8, #4
c0de6176:	f000 8170 	beq.w	c0de645a <bagl_draw_with_context+0x4c2>
c0de617a:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de617c:	2800      	cmp	r0, #0
c0de617e:	f000 816c 	beq.w	c0de645a <bagl_draw_with_context+0x4c2>
c0de6182:	f048 0102 	orr.w	r1, r8, #2
c0de6186:	e9d4 b004 	ldrd	fp, r0, [r4, #16]
c0de618a:	46d4      	mov	ip, sl
c0de618c:	2903      	cmp	r1, #3
c0de618e:	d132      	bne.n	c0de61f6 <bagl_draw_with_context+0x25e>
c0de6190:	7b21      	ldrb	r1, [r4, #12]
c0de6192:	2901      	cmp	r1, #1
c0de6194:	d12f      	bne.n	c0de61f6 <bagl_draw_with_context+0x25e>
c0de6196:	4682      	mov	sl, r0
c0de6198:	e02f      	b.n	c0de61fa <bagl_draw_with_context+0x262>
c0de619a:	f1b8 0f06 	cmp.w	r8, #6
c0de619e:	f000 808a 	beq.w	c0de62b6 <bagl_draw_with_context+0x31e>
c0de61a2:	f1b8 0f07 	cmp.w	r8, #7
c0de61a6:	d0cb      	beq.n	c0de6140 <bagl_draw_with_context+0x1a8>
c0de61a8:	e157      	b.n	c0de645a <bagl_draw_with_context+0x4c2>
c0de61aa:	f1b8 0f04 	cmp.w	r8, #4
c0de61ae:	bf08      	it	eq
c0de61b0:	2e00      	cmpeq	r6, #0
c0de61b2:	f000 814c 	beq.w	c0de644e <bagl_draw_with_context+0x4b6>
c0de61b6:	7b20      	ldrb	r0, [r4, #12]
c0de61b8:	2801      	cmp	r0, #1
c0de61ba:	f040 8097 	bne.w	c0de62ec <bagl_draw_with_context+0x354>
c0de61be:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de61c2:	6920      	ldr	r0, [r4, #16]
c0de61c4:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de61c8:	9700      	str	r7, [sp, #0]
c0de61ca:	eba3 0345 	sub.w	r3, r3, r5, lsl #1
c0de61ce:	4ea5      	ldr	r6, [pc, #660]	; (c0de6464 <bagl_draw_with_context+0x4cc>)
c0de61d0:	4429      	add	r1, r5
c0de61d2:	447e      	add	r6, pc
c0de61d4:	47b0      	blx	r6
c0de61d6:	f000 fc9b 	bl	c0de6b10 <OUTLINED_FUNCTION_5>
c0de61da:	6920      	ldr	r0, [r4, #16]
c0de61dc:	9200      	str	r2, [sp, #0]
c0de61de:	18ea      	adds	r2, r5, r3
c0de61e0:	462b      	mov	r3, r5
c0de61e2:	47b0      	blx	r6
c0de61e4:	f000 fc88 	bl	c0de6af8 <OUTLINED_FUNCTION_3>
c0de61e8:	6920      	ldr	r0, [r4, #16]
c0de61ea:	442a      	add	r2, r5
c0de61ec:	9100      	str	r1, [sp, #0]
c0de61ee:	1b79      	subs	r1, r7, r5
c0de61f0:	4419      	add	r1, r3
c0de61f2:	462b      	mov	r3, r5
c0de61f4:	e0cd      	b.n	c0de6392 <bagl_draw_with_context+0x3fa>
c0de61f6:	46da      	mov	sl, fp
c0de61f8:	4683      	mov	fp, r0
c0de61fa:	f1b8 0707 	subs.w	r7, r8, #7
c0de61fe:	8b20      	ldrh	r0, [r4, #24]
c0de6200:	f9b4 e002 	ldrsh.w	lr, [r4, #2]
c0de6204:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de6208:	88e3      	ldrh	r3, [r4, #6]
c0de620a:	8926      	ldrh	r6, [r4, #8]
c0de620c:	9908      	ldr	r1, [sp, #32]
c0de620e:	bf18      	it	ne
c0de6210:	460f      	movne	r7, r1
c0de6212:	9d0a      	ldr	r5, [sp, #40]	; 0x28
c0de6214:	1bf6      	subs	r6, r6, r7
c0de6216:	1b5b      	subs	r3, r3, r5
c0de6218:	f1b8 0f07 	cmp.w	r8, #7
c0de621c:	bf08      	it	eq
c0de621e:	f1cc 0100 	rsbeq	r1, ip, #0
c0de6222:	440a      	add	r2, r1
c0de6224:	4688      	mov	r8, r1
c0de6226:	e88d 004c 	stmia.w	sp, {r2, r3, r6}
c0de622a:	9a0d      	ldr	r2, [sp, #52]	; 0x34
c0de622c:	2100      	movs	r1, #0
c0de622e:	eb05 030e 	add.w	r3, r5, lr
c0de6232:	9105      	str	r1, [sp, #20]
c0de6234:	4651      	mov	r1, sl
c0de6236:	9203      	str	r2, [sp, #12]
c0de6238:	9a09      	ldr	r2, [sp, #36]	; 0x24
c0de623a:	9204      	str	r2, [sp, #16]
c0de623c:	465a      	mov	r2, fp
c0de623e:	f000 f94d 	bl	c0de64dc <bagl_draw_string>
c0de6242:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de6244:	2900      	cmp	r1, #0
c0de6246:	f000 8108 	beq.w	c0de645a <bagl_draw_with_context+0x4c2>
c0de624a:	4a88      	ldr	r2, [pc, #544]	; (c0de646c <bagl_draw_with_context+0x4d4>)
c0de624c:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de6250:	88e6      	ldrh	r6, [r4, #6]
c0de6252:	9d0a      	ldr	r5, [sp, #40]	; 0x28
c0de6254:	8921      	ldrh	r1, [r4, #8]
c0de6256:	f8b4 c018 	ldrh.w	ip, [r4, #24]
c0de625a:	f04f 0e03 	mov.w	lr, #3
c0de625e:	1b76      	subs	r6, r6, r5
c0de6260:	4443      	add	r3, r8
c0de6262:	1bc9      	subs	r1, r1, r7
c0de6264:	447a      	add	r2, pc
c0de6266:	e9cd 3600 	strd	r3, r6, [sp]
c0de626a:	ab02      	add	r3, sp, #8
c0de626c:	e8a3 4006 	stmia.w	r3!, {r1, r2, lr}
c0de6270:	2100      	movs	r1, #0
c0de6272:	465a      	mov	r2, fp
c0de6274:	9105      	str	r1, [sp, #20]
c0de6276:	b283      	uxth	r3, r0
c0de6278:	4660      	mov	r0, ip
c0de627a:	4651      	mov	r1, sl
c0de627c:	f000 f92e 	bl	c0de64dc <bagl_draw_string>
c0de6280:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
c0de6282:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de6284:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de6288:	88e3      	ldrh	r3, [r4, #6]
c0de628a:	f8b4 c018 	ldrh.w	ip, [r4, #24]
c0de628e:	8924      	ldrh	r4, [r4, #8]
c0de6290:	440e      	add	r6, r1
c0de6292:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de6294:	1b5b      	subs	r3, r3, r5
c0de6296:	4442      	add	r2, r8
c0de6298:	1be4      	subs	r4, r4, r7
c0de629a:	e88d 001c 	stmia.w	sp, {r2, r3, r4}
c0de629e:	b283      	uxth	r3, r0
c0de62a0:	4660      	mov	r0, ip
c0de62a2:	465a      	mov	r2, fp
c0de62a4:	1a76      	subs	r6, r6, r1
c0de62a6:	e9cd 1603 	strd	r1, r6, [sp, #12]
c0de62aa:	2100      	movs	r1, #0
c0de62ac:	9105      	str	r1, [sp, #20]
c0de62ae:	4651      	mov	r1, sl
c0de62b0:	f000 f914 	bl	c0de64dc <bagl_draw_string>
c0de62b4:	e0d1      	b.n	c0de645a <bagl_draw_with_context+0x4c2>
c0de62b6:	f9b4 1004 	ldrsh.w	r1, [r4, #4]
c0de62ba:	f9b4 0002 	ldrsh.w	r0, [r4, #2]
c0de62be:	7b23      	ldrb	r3, [r4, #12]
c0de62c0:	198a      	adds	r2, r1, r6
c0de62c2:	1981      	adds	r1, r0, r6
c0de62c4:	6920      	ldr	r0, [r4, #16]
c0de62c6:	2b01      	cmp	r3, #1
c0de62c8:	d004      	beq.n	c0de62d4 <bagl_draw_with_context+0x33c>
c0de62ca:	7aa3      	ldrb	r3, [r4, #10]
c0de62cc:	429e      	cmp	r6, r3
c0de62ce:	d901      	bls.n	c0de62d4 <bagl_draw_with_context+0x33c>
c0de62d0:	1af3      	subs	r3, r6, r3
c0de62d2:	e000      	b.n	c0de62d6 <bagl_draw_with_context+0x33e>
c0de62d4:	2300      	movs	r3, #0
c0de62d6:	6964      	ldr	r4, [r4, #20]
c0de62d8:	25ff      	movs	r5, #255	; 0xff
c0de62da:	e9cd 5300 	strd	r5, r3, [sp]
c0de62de:	4633      	mov	r3, r6
c0de62e0:	9402      	str	r4, [sp, #8]
c0de62e2:	f000 fa4d 	bl	c0de6780 <bagl_draw_circle_helper>
c0de62e6:	e0b8      	b.n	c0de645a <bagl_draw_with_context+0x4c2>
c0de62e8:	00004be1 	.word	0x00004be1
c0de62ec:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de62f0:	6960      	ldr	r0, [r4, #20]
c0de62f2:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de62f6:	9700      	str	r7, [sp, #0]
c0de62f8:	eba3 0345 	sub.w	r3, r3, r5, lsl #1
c0de62fc:	4e58      	ldr	r6, [pc, #352]	; (c0de6460 <bagl_draw_with_context+0x4c8>)
c0de62fe:	4429      	add	r1, r5
c0de6300:	447e      	add	r6, pc
c0de6302:	47b0      	blx	r6
c0de6304:	f000 fc04 	bl	c0de6b10 <OUTLINED_FUNCTION_5>
c0de6308:	6960      	ldr	r0, [r4, #20]
c0de630a:	9200      	str	r2, [sp, #0]
c0de630c:	18ea      	adds	r2, r5, r3
c0de630e:	462b      	mov	r3, r5
c0de6310:	47b0      	blx	r6
c0de6312:	f000 fbf1 	bl	c0de6af8 <OUTLINED_FUNCTION_3>
c0de6316:	6960      	ldr	r0, [r4, #20]
c0de6318:	442a      	add	r2, r5
c0de631a:	9100      	str	r1, [sp, #0]
c0de631c:	43e9      	mvns	r1, r5
c0de631e:	4439      	add	r1, r7
c0de6320:	4419      	add	r1, r3
c0de6322:	462b      	mov	r3, r5
c0de6324:	47b0      	blx	r6
c0de6326:	88e3      	ldrh	r3, [r4, #6]
c0de6328:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de632c:	6920      	ldr	r0, [r4, #16]
c0de632e:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de6332:	7aa7      	ldrb	r7, [r4, #10]
c0de6334:	4429      	add	r1, r5
c0de6336:	eba3 0345 	sub.w	r3, r3, r5, lsl #1
c0de633a:	9700      	str	r7, [sp, #0]
c0de633c:	47b0      	blx	r6
c0de633e:	f8b4 c008 	ldrh.w	ip, [r4, #8]
c0de6342:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de6346:	7aa2      	ldrb	r2, [r4, #10]
c0de6348:	88e3      	ldrh	r3, [r4, #6]
c0de634a:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de634e:	6920      	ldr	r0, [r4, #16]
c0de6350:	9200      	str	r2, [sp, #0]
c0de6352:	eb07 020c 	add.w	r2, r7, ip
c0de6356:	4429      	add	r1, r5
c0de6358:	eba3 0345 	sub.w	r3, r3, r5, lsl #1
c0de635c:	3a01      	subs	r2, #1
c0de635e:	47b0      	blx	r6
c0de6360:	8920      	ldrh	r0, [r4, #8]
c0de6362:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de6366:	7aa3      	ldrb	r3, [r4, #10]
c0de6368:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de636c:	eba0 0245 	sub.w	r2, r0, r5, lsl #1
c0de6370:	6920      	ldr	r0, [r4, #16]
c0de6372:	9200      	str	r2, [sp, #0]
c0de6374:	19ea      	adds	r2, r5, r7
c0de6376:	47b0      	blx	r6
c0de6378:	8920      	ldrh	r0, [r4, #8]
c0de637a:	88e7      	ldrh	r7, [r4, #6]
c0de637c:	f000 fbe1 	bl	c0de6b42 <OUTLINED_FUNCTION_9>
c0de6380:	7aa3      	ldrb	r3, [r4, #10]
c0de6382:	4439      	add	r1, r7
c0de6384:	eba0 0c45 	sub.w	ip, r0, r5, lsl #1
c0de6388:	6920      	ldr	r0, [r4, #16]
c0de638a:	442a      	add	r2, r5
c0de638c:	f8cd c000 	str.w	ip, [sp]
c0de6390:	3901      	subs	r1, #1
c0de6392:	47b0      	blx	r6
c0de6394:	2d02      	cmp	r5, #2
c0de6396:	f4ff aee8 	bcc.w	c0de616a <bagl_draw_with_context+0x1d2>
c0de639a:	7b20      	ldrb	r0, [r4, #12]
c0de639c:	f04f 0b00 	mov.w	fp, #0
c0de63a0:	f8cd a01c 	str.w	sl, [sp, #28]
c0de63a4:	2801      	cmp	r0, #1
c0de63a6:	d003      	beq.n	c0de63b0 <bagl_draw_with_context+0x418>
c0de63a8:	7aa0      	ldrb	r0, [r4, #10]
c0de63aa:	1a28      	subs	r0, r5, r0
c0de63ac:	bf28      	it	cs
c0de63ae:	4683      	movcs	fp, r0
c0de63b0:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de63b4:	27c0      	movs	r7, #192	; 0xc0
c0de63b6:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
c0de63ba:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de63be:	e9cd 7b00 	strd	r7, fp, [sp]
c0de63c2:	9102      	str	r1, [sp, #8]
c0de63c4:	18a9      	adds	r1, r5, r2
c0de63c6:	18ea      	adds	r2, r5, r3
c0de63c8:	462b      	mov	r3, r5
c0de63ca:	4e27      	ldr	r6, [pc, #156]	; (c0de6468 <bagl_draw_with_context+0x4d0>)
c0de63cc:	447e      	add	r6, pc
c0de63ce:	47b0      	blx	r6
c0de63d0:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de63d4:	f8b4 c006 	ldrh.w	ip, [r4, #6]
c0de63d8:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
c0de63dc:	7aa2      	ldrb	r2, [r4, #10]
c0de63de:	46b2      	mov	sl, r6
c0de63e0:	f9b4 6004 	ldrsh.w	r6, [r4, #4]
c0de63e4:	2730      	movs	r7, #48	; 0x30
c0de63e6:	e9cd 7b00 	strd	r7, fp, [sp]
c0de63ea:	9102      	str	r1, [sp, #8]
c0de63ec:	18a9      	adds	r1, r5, r2
c0de63ee:	eb03 020c 	add.w	r2, r3, ip
c0de63f2:	462b      	mov	r3, r5
c0de63f4:	1a51      	subs	r1, r2, r1
c0de63f6:	19aa      	adds	r2, r5, r6
c0de63f8:	47d0      	blx	sl
c0de63fa:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de63fe:	8922      	ldrh	r2, [r4, #8]
c0de6400:	f9b4 6004 	ldrsh.w	r6, [r4, #4]
c0de6404:	7aa7      	ldrb	r7, [r4, #10]
c0de6406:	f9b4 c002 	ldrsh.w	ip, [r4, #2]
c0de640a:	230c      	movs	r3, #12
c0de640c:	e9cd 3b00 	strd	r3, fp, [sp]
c0de6410:	462b      	mov	r3, r5
c0de6412:	9102      	str	r1, [sp, #8]
c0de6414:	19e9      	adds	r1, r5, r7
c0de6416:	4432      	add	r2, r6
c0de6418:	1a52      	subs	r2, r2, r1
c0de641a:	eb05 010c 	add.w	r1, r5, ip
c0de641e:	47d0      	blx	sl
c0de6420:	7aa2      	ldrb	r2, [r4, #10]
c0de6422:	88e3      	ldrh	r3, [r4, #6]
c0de6424:	f9b4 6002 	ldrsh.w	r6, [r4, #2]
c0de6428:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de642c:	2103      	movs	r1, #3
c0de642e:	e9d4 0e04 	ldrd	r0, lr, [r4, #16]
c0de6432:	f8b4 c008 	ldrh.w	ip, [r4, #8]
c0de6436:	e88d 4802 	stmia.w	sp, {r1, fp, lr}
c0de643a:	18f1      	adds	r1, r6, r3
c0de643c:	442a      	add	r2, r5
c0de643e:	462b      	mov	r3, r5
c0de6440:	1a89      	subs	r1, r1, r2
c0de6442:	1aba      	subs	r2, r7, r2
c0de6444:	4462      	add	r2, ip
c0de6446:	47d0      	blx	sl
c0de6448:	f8dd a01c 	ldr.w	sl, [sp, #28]
c0de644c:	e68d      	b.n	c0de616a <bagl_draw_with_context+0x1d2>
c0de644e:	f000 fb78 	bl	c0de6b42 <OUTLINED_FUNCTION_9>
c0de6452:	6920      	ldr	r0, [r4, #16]
c0de6454:	9700      	str	r7, [sp, #0]
c0de6456:	f003 fa41 	bl	c0de98dc <bagl_hal_draw_rect>
c0de645a:	b00e      	add	sp, #56	; 0x38
c0de645c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6460:	000035d9 	.word	0x000035d9
c0de6464:	00003707 	.word	0x00003707
c0de6468:	000003b1 	.word	0x000003b1
c0de646c:	000049b3 	.word	0x000049b3

c0de6470 <bagl_get_font>:
c0de6470:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de6472:	4604      	mov	r4, r0
c0de6474:	480d      	ldr	r0, [pc, #52]	; (c0de64ac <bagl_get_font+0x3c>)
c0de6476:	4e0e      	ldr	r6, [pc, #56]	; (c0de64b0 <bagl_get_font+0x40>)
c0de6478:	f36f 341f 	bfc	r4, #12, #20
c0de647c:	4478      	add	r0, pc
c0de647e:	447e      	add	r6, pc
c0de6480:	6800      	ldr	r0, [r0, #0]
c0de6482:	b180      	cbz	r0, c0de64a6 <bagl_get_font+0x36>
c0de6484:	1e47      	subs	r7, r0, #1
c0de6486:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de648a:	f850 5c04 	ldr.w	r5, [r0, #-4]
c0de648e:	4628      	mov	r0, r5
c0de6490:	f003 f906 	bl	c0de96a0 <pic>
c0de6494:	7880      	ldrb	r0, [r0, #2]
c0de6496:	4284      	cmp	r4, r0
c0de6498:	4638      	mov	r0, r7
c0de649a:	d1f2      	bne.n	c0de6482 <bagl_get_font+0x12>
c0de649c:	4628      	mov	r0, r5
c0de649e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de64a2:	f003 b8fd 	b.w	c0de96a0 <pic>
c0de64a6:	2000      	movs	r0, #0
c0de64a8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de64aa:	bf00      	nop
c0de64ac:	000065e8 	.word	0x000065e8
c0de64b0:	000065da 	.word	0x000065da

c0de64b4 <bagl_compute_line_width>:
c0de64b4:	b5b0      	push	{r4, r5, r7, lr}
c0de64b6:	b086      	sub	sp, #24
c0de64b8:	2400      	movs	r4, #0
c0de64ba:	f243 0539 	movw	r5, #12345	; 0x3039
c0de64be:	e9cd 5100 	strd	r5, r1, [sp]
c0de64c2:	e9cd 4202 	strd	r4, r2, [sp, #8]
c0de64c6:	e9cd 3404 	strd	r3, r4, [sp, #16]
c0de64ca:	2100      	movs	r1, #0
c0de64cc:	2200      	movs	r2, #0
c0de64ce:	f243 0339 	movw	r3, #12345	; 0x3039
c0de64d2:	f000 f803 	bl	c0de64dc <bagl_draw_string>
c0de64d6:	b280      	uxth	r0, r0
c0de64d8:	b006      	add	sp, #24
c0de64da:	bdb0      	pop	{r4, r5, r7, pc}

c0de64dc <bagl_draw_string>:
c0de64dc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de64e0:	b0a6      	sub	sp, #152	; 0x98
c0de64e2:	9d2e      	ldr	r5, [sp, #184]	; 0xb8
c0de64e4:	e9cd 2116 	strd	r2, r1, [sp, #88]	; 0x58
c0de64e8:	f243 0139 	movw	r1, #12345	; 0x3039
c0de64ec:	9205      	str	r2, [sp, #20]
c0de64ee:	9307      	str	r3, [sp, #28]
c0de64f0:	ea85 0201 	eor.w	r2, r5, r1
c0de64f4:	4059      	eors	r1, r3
c0de64f6:	ea51 0402 	orrs.w	r4, r1, r2
c0de64fa:	4627      	mov	r7, r4
c0de64fc:	bf14      	ite	ne
c0de64fe:	461f      	movne	r7, r3
c0de6500:	4625      	moveq	r5, r4
c0de6502:	9513      	str	r5, [sp, #76]	; 0x4c
c0de6504:	f7ff ffb4 	bl	c0de6470 <bagl_get_font>
c0de6508:	2800      	cmp	r0, #0
c0de650a:	f000 8126 	beq.w	c0de675a <bagl_draw_string+0x27e>
c0de650e:	4683      	mov	fp, r0
c0de6510:	fab4 f084 	clz	r0, r4
c0de6514:	9a13      	ldr	r2, [sp, #76]	; 0x4c
c0de6516:	e9dd c631 	ldrd	ip, r6, [sp, #196]	; 0xc4
c0de651a:	46be      	mov	lr, r7
c0de651c:	0940      	lsrs	r0, r0, #5
c0de651e:	9010      	str	r0, [sp, #64]	; 0x40
c0de6520:	e9dd 102f 	ldrd	r1, r0, [sp, #188]	; 0xbc
c0de6524:	eb07 0a01 	add.w	sl, r7, r1
c0de6528:	4410      	add	r0, r2
c0de652a:	f89b 1003 	ldrb.w	r1, [fp, #3]
c0de652e:	9006      	str	r0, [sp, #24]
c0de6530:	2001      	movs	r0, #1
c0de6532:	f8cd a03c 	str.w	sl, [sp, #60]	; 0x3c
c0de6536:	4088      	lsls	r0, r1
c0de6538:	9111      	str	r1, [sp, #68]	; 0x44
c0de653a:	9008      	str	r0, [sp, #32]
c0de653c:	2e00      	cmp	r6, #0
c0de653e:	f000 810f 	beq.w	c0de6760 <bagl_draw_string+0x284>
c0de6542:	f89b 4004 	ldrb.w	r4, [fp, #4]
c0de6546:	f89b 0006 	ldrb.w	r0, [fp, #6]
c0de654a:	f81c 5b01 	ldrb.w	r5, [ip], #1
c0de654e:	4f8b      	ldr	r7, [pc, #556]	; (c0de677c <bagl_draw_string+0x2a0>)
c0de6550:	4285      	cmp	r5, r0
c0de6552:	447f      	add	r7, pc
c0de6554:	d303      	bcc.n	c0de655e <bagl_draw_string+0x82>
c0de6556:	f89b 1007 	ldrb.w	r1, [fp, #7]
c0de655a:	428d      	cmp	r5, r1
c0de655c:	d915      	bls.n	c0de658a <bagl_draw_string+0xae>
c0de655e:	2dc0      	cmp	r5, #192	; 0xc0
c0de6560:	d302      	bcc.n	c0de6568 <bagl_draw_string+0x8c>
c0de6562:	f005 073f 	and.w	r7, r5, #63	; 0x3f
c0de6566:	e004      	b.n	c0de6572 <bagl_draw_string+0x96>
c0de6568:	b268      	sxtb	r0, r5
c0de656a:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
c0de656e:	dd26      	ble.n	c0de65be <bagl_draw_string+0xe2>
c0de6570:	2700      	movs	r7, #0
c0de6572:	2000      	movs	r0, #0
c0de6574:	9a13      	ldr	r2, [sp, #76]	; 0x4c
c0de6576:	9012      	str	r0, [sp, #72]	; 0x48
c0de6578:	9811      	ldr	r0, [sp, #68]	; 0x44
c0de657a:	9414      	str	r4, [sp, #80]	; 0x50
c0de657c:	f04f 0800 	mov.w	r8, #0
c0de6580:	2500      	movs	r5, #0
c0de6582:	2100      	movs	r1, #0
c0de6584:	4360      	muls	r0, r4
c0de6586:	4378      	muls	r0, r7
c0de6588:	e091      	b.n	c0de66ae <bagl_draw_string+0x1d2>
c0de658a:	e9cd 4c14 	strd	r4, ip, [sp, #80]	; 0x50
c0de658e:	1a2c      	subs	r4, r5, r0
c0de6590:	f8db 000c 	ldr.w	r0, [fp, #12]
c0de6594:	e9cd 6e0d 	strd	r6, lr, [sp, #52]	; 0x34
c0de6598:	f003 f882 	bl	c0de96a0 <pic>
c0de659c:	4680      	mov	r8, r0
c0de659e:	f8db 0008 	ldr.w	r0, [fp, #8]
c0de65a2:	f003 f87d 	bl	c0de96a0 <pic>
c0de65a6:	f850 5024 	ldr.w	r5, [r0, r4, lsl #2]
c0de65aa:	f89b 0006 	ldrb.w	r0, [fp, #6]
c0de65ae:	f89b 1007 	ldrb.w	r1, [fp, #7]
c0de65b2:	1a08      	subs	r0, r1, r0
c0de65b4:	4284      	cmp	r4, r0
c0de65b6:	d130      	bne.n	c0de661a <bagl_draw_string+0x13e>
c0de65b8:	f8bb 0000 	ldrh.w	r0, [fp]
c0de65bc:	e036      	b.n	c0de662c <bagl_draw_string+0x150>
c0de65be:	06a8      	lsls	r0, r5, #26
c0de65c0:	f8cd e038 	str.w	lr, [sp, #56]	; 0x38
c0de65c4:	f8cd c054 	str.w	ip, [sp, #84]	; 0x54
c0de65c8:	f04f 000f 	mov.w	r0, #15
c0de65cc:	bf58      	it	pl
c0de65ce:	200e      	movpl	r0, #14
c0de65d0:	f7ff ff4e 	bl	c0de6470 <bagl_get_font>
c0de65d4:	2800      	cmp	r0, #0
c0de65d6:	f000 80b7 	beq.w	c0de6748 <bagl_draw_string+0x26c>
c0de65da:	4680      	mov	r8, r0
c0de65dc:	68c0      	ldr	r0, [r0, #12]
c0de65de:	47b8      	blx	r7
c0de65e0:	4604      	mov	r4, r0
c0de65e2:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de65e6:	47b8      	blx	r7
c0de65e8:	f005 0a1f 	and.w	sl, r5, #31
c0de65ec:	f850 002a 	ldr.w	r0, [r0, sl, lsl #2]
c0de65f0:	f3c0 008b 	ubfx	r0, r0, #2, #12
c0de65f4:	4420      	add	r0, r4
c0de65f6:	9012      	str	r0, [sp, #72]	; 0x48
c0de65f8:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de65fc:	47b8      	blx	r7
c0de65fe:	f89b 1005 	ldrb.w	r1, [fp, #5]
c0de6602:	9a13      	ldr	r2, [sp, #76]	; 0x4c
c0de6604:	f850 002a 	ldr.w	r0, [r0, sl, lsl #2]
c0de6608:	f898 4004 	ldrb.w	r4, [r8, #4]
c0de660c:	4411      	add	r1, r2
c0de660e:	f898 2005 	ldrb.w	r2, [r8, #5]
c0de6612:	f3c0 3784 	ubfx	r7, r0, #14, #5
c0de6616:	1a8a      	subs	r2, r1, r2
c0de6618:	e09a      	b.n	c0de6750 <bagl_draw_string+0x274>
c0de661a:	f8db 0008 	ldr.w	r0, [fp, #8]
c0de661e:	f003 f83f 	bl	c0de96a0 <pic>
c0de6622:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de6626:	6840      	ldr	r0, [r0, #4]
c0de6628:	f3c0 008b 	ubfx	r0, r0, #2, #12
c0de662c:	900c      	str	r0, [sp, #48]	; 0x30
c0de662e:	f3c5 008b 	ubfx	r0, r5, #2, #12
c0de6632:	4440      	add	r0, r8
c0de6634:	9012      	str	r0, [sp, #72]	; 0x48
c0de6636:	f000 fa68 	bl	c0de6b0a <OUTLINED_FUNCTION_4>
c0de663a:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de663e:	900b      	str	r0, [sp, #44]	; 0x2c
c0de6640:	f000 fa63 	bl	c0de6b0a <OUTLINED_FUNCTION_4>
c0de6644:	f850 8024 	ldr.w	r8, [r0, r4, lsl #2]
c0de6648:	f000 fa5f 	bl	c0de6b0a <OUTLINED_FUNCTION_4>
c0de664c:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de6650:	900a      	str	r0, [sp, #40]	; 0x28
c0de6652:	f000 fa5a 	bl	c0de6b0a <OUTLINED_FUNCTION_4>
c0de6656:	f850 a024 	ldr.w	sl, [r0, r4, lsl #2]
c0de665a:	f3c8 3084 	ubfx	r0, r8, #14, #5
c0de665e:	eba0 751a 	sub.w	r5, r0, sl, lsr #28
c0de6662:	f000 fa52 	bl	c0de6b0a <OUTLINED_FUNCTION_4>
c0de6666:	f850 6024 	ldr.w	r6, [r0, r4, lsl #2]
c0de666a:	f89b 0005 	ldrb.w	r0, [fp, #5]
c0de666e:	9009      	str	r0, [sp, #36]	; 0x24
c0de6670:	f000 fa4b 	bl	c0de6b0a <OUTLINED_FUNCTION_4>
c0de6674:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de6678:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de667a:	9a09      	ldr	r2, [sp, #36]	; 0x24
c0de667c:	f8dd c054 	ldr.w	ip, [sp, #84]	; 0x54
c0de6680:	f3c0 40c3 	ubfx	r0, r0, #19, #4
c0de6684:	1a28      	subs	r0, r5, r0
c0de6686:	ea4f 751a 	mov.w	r5, sl, lsr #28
c0de668a:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
c0de668e:	b2c7      	uxtb	r7, r0
c0de6690:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de6692:	f3c0 008b 	ubfx	r0, r0, #2, #12
c0de6696:	1a08      	subs	r0, r1, r0
c0de6698:	990a      	ldr	r1, [sp, #40]	; 0x28
c0de669a:	00c0      	lsls	r0, r0, #3
c0de669c:	f3c1 48c3 	ubfx	r8, r1, #19, #4
c0de66a0:	f3c6 51c4 	ubfx	r1, r6, #23, #5
c0de66a4:	e9dd 6e0d 	ldrd	r6, lr, [sp, #52]	; 0x34
c0de66a8:	1a89      	subs	r1, r1, r2
c0de66aa:	9a13      	ldr	r2, [sp, #76]	; 0x4c
c0de66ac:	3109      	adds	r1, #9
c0de66ae:	9b10      	ldr	r3, [sp, #64]	; 0x40
c0de66b0:	b143      	cbz	r3, c0de66c4 <bagl_draw_string+0x1e8>
c0de66b2:	f1ba 0f00 	cmp.w	sl, #0
c0de66b6:	dd30      	ble.n	c0de671a <bagl_draw_string+0x23e>
c0de66b8:	eb08 000e 	add.w	r0, r8, lr
c0de66bc:	19c1      	adds	r1, r0, r7
c0de66be:	4551      	cmp	r1, sl
c0de66c0:	dd2d      	ble.n	c0de671e <bagl_draw_string+0x242>
c0de66c2:	e056      	b.n	c0de6772 <bagl_draw_string+0x296>
c0de66c4:	eb08 030e 	add.w	r3, r8, lr
c0de66c8:	443b      	add	r3, r7
c0de66ca:	4553      	cmp	r3, sl
c0de66cc:	dd0b      	ble.n	c0de66e6 <bagl_draw_string+0x20a>
c0de66ce:	9b13      	ldr	r3, [sp, #76]	; 0x4c
c0de66d0:	9a14      	ldr	r2, [sp, #80]	; 0x50
c0de66d2:	9c06      	ldr	r4, [sp, #24]
c0de66d4:	330c      	adds	r3, #12
c0de66d6:	441a      	add	r2, r3
c0de66d8:	9313      	str	r3, [sp, #76]	; 0x4c
c0de66da:	440a      	add	r2, r1
c0de66dc:	42a2      	cmp	r2, r4
c0de66de:	9c07      	ldr	r4, [sp, #28]
c0de66e0:	461a      	mov	r2, r3
c0de66e2:	dd01      	ble.n	c0de66e8 <bagl_draw_string+0x20c>
c0de66e4:	e03e      	b.n	c0de6764 <bagl_draw_string+0x288>
c0de66e6:	4674      	mov	r4, lr
c0de66e8:	46aa      	mov	sl, r5
c0de66ea:	9d12      	ldr	r5, [sp, #72]	; 0x48
c0de66ec:	f8cd c054 	str.w	ip, [sp, #84]	; 0x54
c0de66f0:	b1bd      	cbz	r5, c0de6722 <bagl_draw_string+0x246>
c0de66f2:	9b08      	ldr	r3, [sp, #32]
c0de66f4:	b280      	uxth	r0, r0
c0de66f6:	4411      	add	r1, r2
c0de66f8:	463a      	mov	r2, r7
c0de66fa:	9300      	str	r3, [sp, #0]
c0de66fc:	ab16      	add	r3, sp, #88	; 0x58
c0de66fe:	9004      	str	r0, [sp, #16]
c0de6700:	eb04 0008 	add.w	r0, r4, r8
c0de6704:	9301      	str	r3, [sp, #4]
c0de6706:	9b11      	ldr	r3, [sp, #68]	; 0x44
c0de6708:	e9cd 3502 	strd	r3, r5, [sp, #8]
c0de670c:	9b14      	ldr	r3, [sp, #80]	; 0x50
c0de670e:	f003 f8cd 	bl	c0de98ac <bagl_hal_draw_bitmap_within_rect>
c0de6712:	f5b0 4f10 	cmp.w	r0, #36864	; 0x9000
c0de6716:	d00b      	beq.n	c0de6730 <bagl_draw_string+0x254>
c0de6718:	e02a      	b.n	c0de6770 <bagl_draw_string+0x294>
c0de671a:	eb08 000e 	add.w	r0, r8, lr
c0de671e:	4428      	add	r0, r5
c0de6720:	e00e      	b.n	c0de6740 <bagl_draw_string+0x264>
c0de6722:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de6724:	4621      	mov	r1, r4
c0de6726:	463b      	mov	r3, r7
c0de6728:	9000      	str	r0, [sp, #0]
c0de672a:	9805      	ldr	r0, [sp, #20]
c0de672c:	f003 f8d6 	bl	c0de98dc <bagl_hal_draw_rect>
c0de6730:	eb0a 0008 	add.w	r0, sl, r8
c0de6734:	f8dd c054 	ldr.w	ip, [sp, #84]	; 0x54
c0de6738:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
c0de673c:	4438      	add	r0, r7
c0de673e:	4627      	mov	r7, r4
c0de6740:	3e01      	subs	r6, #1
c0de6742:	eb00 0e07 	add.w	lr, r0, r7
c0de6746:	e6f9      	b.n	c0de653c <bagl_draw_string+0x60>
c0de6748:	2000      	movs	r0, #0
c0de674a:	9a13      	ldr	r2, [sp, #76]	; 0x4c
c0de674c:	2700      	movs	r7, #0
c0de674e:	9012      	str	r0, [sp, #72]	; 0x48
c0de6750:	f8dd c054 	ldr.w	ip, [sp, #84]	; 0x54
c0de6754:	e9dd ea0e 	ldrd	lr, sl, [sp, #56]	; 0x38
c0de6758:	e70e      	b.n	c0de6578 <bagl_draw_string+0x9c>
c0de675a:	f04f 0e00 	mov.w	lr, #0
c0de675e:	e008      	b.n	c0de6772 <bagl_draw_string+0x296>
c0de6760:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de6762:	b930      	cbnz	r0, c0de6772 <bagl_draw_string+0x296>
c0de6764:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0de6766:	fa1f f08e 	uxth.w	r0, lr
c0de676a:	ea40 4e01 	orr.w	lr, r0, r1, lsl #16
c0de676e:	e000      	b.n	c0de6772 <bagl_draw_string+0x296>
c0de6770:	46a6      	mov	lr, r4
c0de6772:	4670      	mov	r0, lr
c0de6774:	b026      	add	sp, #152	; 0x98
c0de6776:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de677a:	bf00      	nop
c0de677c:	0000314b 	.word	0x0000314b

c0de6780 <bagl_draw_circle_helper>:
c0de6780:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6784:	b096      	sub	sp, #88	; 0x58
c0de6786:	4607      	mov	r7, r0
c0de6788:	981f      	ldr	r0, [sp, #124]	; 0x7c
c0de678a:	460c      	mov	r4, r1
c0de678c:	2100      	movs	r1, #0
c0de678e:	9214      	str	r2, [sp, #80]	; 0x50
c0de6790:	f1c3 0b01 	rsb	fp, r3, #1
c0de6794:	f04f 0a00 	mov.w	sl, #0
c0de6798:	9115      	str	r1, [sp, #84]	; 0x54
c0de679a:	2100      	movs	r1, #0
c0de679c:	eba3 0800 	sub.w	r8, r3, r0
c0de67a0:	1ac2      	subs	r2, r0, r3
c0de67a2:	f1b8 0f00 	cmp.w	r8, #0
c0de67a6:	bfc8      	it	gt
c0de67a8:	2101      	movgt	r1, #1
c0de67aa:	2800      	cmp	r0, #0
c0de67ac:	bf18      	it	ne
c0de67ae:	2001      	movne	r0, #1
c0de67b0:	9413      	str	r4, [sp, #76]	; 0x4c
c0de67b2:	9706      	str	r7, [sp, #24]
c0de67b4:	f8cd 803c 	str.w	r8, [sp, #60]	; 0x3c
c0de67b8:	4008      	ands	r0, r1
c0de67ba:	2501      	movs	r5, #1
c0de67bc:	9012      	str	r0, [sp, #72]	; 0x48
c0de67be:	1c50      	adds	r0, r2, #1
c0de67c0:	9002      	str	r0, [sp, #8]
c0de67c2:	f1c8 0001 	rsb	r0, r8, #1
c0de67c6:	9003      	str	r0, [sp, #12]
c0de67c8:	f1a8 0001 	sub.w	r0, r8, #1
c0de67cc:	9005      	str	r0, [sp, #20]
c0de67ce:	eba4 0008 	sub.w	r0, r4, r8
c0de67d2:	461c      	mov	r4, r3
c0de67d4:	3001      	adds	r0, #1
c0de67d6:	9004      	str	r0, [sp, #16]
c0de67d8:	981e      	ldr	r0, [sp, #120]	; 0x78
c0de67da:	f000 0180 	and.w	r1, r0, #128	; 0x80
c0de67de:	910a      	str	r1, [sp, #40]	; 0x28
c0de67e0:	f000 0140 	and.w	r1, r0, #64	; 0x40
c0de67e4:	910e      	str	r1, [sp, #56]	; 0x38
c0de67e6:	f000 0120 	and.w	r1, r0, #32
c0de67ea:	9109      	str	r1, [sp, #36]	; 0x24
c0de67ec:	f000 0110 	and.w	r1, r0, #16
c0de67f0:	910d      	str	r1, [sp, #52]	; 0x34
c0de67f2:	f000 0108 	and.w	r1, r0, #8
c0de67f6:	9108      	str	r1, [sp, #32]
c0de67f8:	f000 0104 	and.w	r1, r0, #4
c0de67fc:	910c      	str	r1, [sp, #48]	; 0x30
c0de67fe:	f000 0102 	and.w	r1, r0, #2
c0de6802:	f000 0001 	and.w	r0, r0, #1
c0de6806:	900b      	str	r0, [sp, #44]	; 0x2c
c0de6808:	2003      	movs	r0, #3
c0de680a:	9107      	str	r1, [sp, #28]
c0de680c:	9011      	str	r0, [sp, #68]	; 0x44
c0de680e:	9410      	str	r4, [sp, #64]	; 0x40
c0de6810:	459a      	cmp	sl, r3
c0de6812:	f300 8131 	bgt.w	c0de6a78 <bagl_draw_circle_helper+0x2f8>
c0de6816:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de6818:	461c      	mov	r4, r3
c0de681a:	b920      	cbnz	r0, c0de6826 <bagl_draw_circle_helper+0xa6>
c0de681c:	9807      	ldr	r0, [sp, #28]
c0de681e:	b3a8      	cbz	r0, c0de688c <bagl_draw_circle_helper+0x10c>
c0de6820:	9812      	ldr	r0, [sp, #72]	; 0x48
c0de6822:	b998      	cbnz	r0, c0de684c <bagl_draw_circle_helper+0xcc>
c0de6824:	e02a      	b.n	c0de687c <bagl_draw_circle_helper+0xfc>
c0de6826:	9812      	ldr	r0, [sp, #72]	; 0x48
c0de6828:	b1f0      	cbz	r0, c0de6868 <bagl_draw_circle_helper+0xe8>
c0de682a:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de682c:	9500      	str	r5, [sp, #0]
c0de682e:	463d      	mov	r5, r7
c0de6830:	9f13      	ldr	r7, [sp, #76]	; 0x4c
c0de6832:	eb00 060a 	add.w	r6, r0, sl
c0de6836:	9805      	ldr	r0, [sp, #20]
c0de6838:	4639      	mov	r1, r7
c0de683a:	4632      	mov	r2, r6
c0de683c:	1a23      	subs	r3, r4, r0
c0de683e:	9820      	ldr	r0, [sp, #128]	; 0x80
c0de6840:	f003 f84c 	bl	c0de98dc <bagl_hal_draw_rect>
c0de6844:	f000 f944 	bl	c0de6ad0 <OUTLINED_FUNCTION_0>
c0de6848:	9807      	ldr	r0, [sp, #28]
c0de684a:	b1f8      	cbz	r0, c0de688c <bagl_draw_circle_helper+0x10c>
c0de684c:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de684e:	1826      	adds	r6, r4, r0
c0de6850:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de6852:	42a0      	cmp	r0, r4
c0de6854:	d005      	beq.n	c0de6862 <bagl_draw_circle_helper+0xe2>
c0de6856:	9802      	ldr	r0, [sp, #8]
c0de6858:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0de685a:	4632      	mov	r2, r6
c0de685c:	9500      	str	r5, [sp, #0]
c0de685e:	f000 f943 	bl	c0de6ae8 <OUTLINED_FUNCTION_1>
c0de6862:	f000 f95d 	bl	c0de6b20 <OUTLINED_FUNCTION_6>
c0de6866:	e00f      	b.n	c0de6888 <bagl_draw_circle_helper+0x108>
c0de6868:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de686a:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0de686c:	4623      	mov	r3, r4
c0de686e:	9500      	str	r5, [sp, #0]
c0de6870:	4450      	add	r0, sl
c0de6872:	1e42      	subs	r2, r0, #1
c0de6874:	f000 f93d 	bl	c0de6af2 <OUTLINED_FUNCTION_2>
c0de6878:	9807      	ldr	r0, [sp, #28]
c0de687a:	b138      	cbz	r0, c0de688c <bagl_draw_circle_helper+0x10c>
c0de687c:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de687e:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0de6880:	4653      	mov	r3, sl
c0de6882:	9500      	str	r5, [sp, #0]
c0de6884:	4420      	add	r0, r4
c0de6886:	1e42      	subs	r2, r0, #1
c0de6888:	f000 f933 	bl	c0de6af2 <OUTLINED_FUNCTION_2>
c0de688c:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de688e:	b928      	cbnz	r0, c0de689c <bagl_draw_circle_helper+0x11c>
c0de6890:	9808      	ldr	r0, [sp, #32]
c0de6892:	2800      	cmp	r0, #0
c0de6894:	d04f      	beq.n	c0de6936 <bagl_draw_circle_helper+0x1b6>
c0de6896:	9812      	ldr	r0, [sp, #72]	; 0x48
c0de6898:	b9e0      	cbnz	r0, c0de68d4 <bagl_draw_circle_helper+0x154>
c0de689a:	e02e      	b.n	c0de68fa <bagl_draw_circle_helper+0x17a>
c0de689c:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de689e:	1b06      	subs	r6, r0, r4
c0de68a0:	9812      	ldr	r0, [sp, #72]	; 0x48
c0de68a2:	b300      	cbz	r0, c0de68e6 <bagl_draw_circle_helper+0x166>
c0de68a4:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de68a6:	9f05      	ldr	r7, [sp, #20]
c0de68a8:	9500      	str	r5, [sp, #0]
c0de68aa:	4631      	mov	r1, r6
c0de68ac:	eb00 050a 	add.w	r5, r0, sl
c0de68b0:	9820      	ldr	r0, [sp, #128]	; 0x80
c0de68b2:	1be3      	subs	r3, r4, r7
c0de68b4:	462a      	mov	r2, r5
c0de68b6:	f003 f811 	bl	c0de98dc <bagl_hal_draw_rect>
c0de68ba:	2001      	movs	r0, #1
c0de68bc:	f8dd 803c 	ldr.w	r8, [sp, #60]	; 0x3c
c0de68c0:	1bf1      	subs	r1, r6, r7
c0de68c2:	462a      	mov	r2, r5
c0de68c4:	9f06      	ldr	r7, [sp, #24]
c0de68c6:	2501      	movs	r5, #1
c0de68c8:	9000      	str	r0, [sp, #0]
c0de68ca:	9806      	ldr	r0, [sp, #24]
c0de68cc:	f000 f936 	bl	c0de6b3c <OUTLINED_FUNCTION_8>
c0de68d0:	9808      	ldr	r0, [sp, #32]
c0de68d2:	b380      	cbz	r0, c0de6936 <bagl_draw_circle_helper+0x1b6>
c0de68d4:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de68d6:	42a0      	cmp	r0, r4
c0de68d8:	d116      	bne.n	c0de6908 <bagl_draw_circle_helper+0x188>
c0de68da:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de68dc:	9d15      	ldr	r5, [sp, #84]	; 0x54
c0de68de:	f04f 0801 	mov.w	r8, #1
c0de68e2:	1826      	adds	r6, r4, r0
c0de68e4:	e01c      	b.n	c0de6920 <bagl_draw_circle_helper+0x1a0>
c0de68e6:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de68e8:	4631      	mov	r1, r6
c0de68ea:	4623      	mov	r3, r4
c0de68ec:	9500      	str	r5, [sp, #0]
c0de68ee:	4450      	add	r0, sl
c0de68f0:	1e42      	subs	r2, r0, #1
c0de68f2:	f000 f8fe 	bl	c0de6af2 <OUTLINED_FUNCTION_2>
c0de68f6:	9808      	ldr	r0, [sp, #32]
c0de68f8:	b1e8      	cbz	r0, c0de6936 <bagl_draw_circle_helper+0x1b6>
c0de68fa:	f000 f918 	bl	c0de6b2e <OUTLINED_FUNCTION_7>
c0de68fe:	4420      	add	r0, r4
c0de6900:	1e42      	subs	r2, r0, #1
c0de6902:	f000 f8f6 	bl	c0de6af2 <OUTLINED_FUNCTION_2>
c0de6906:	e016      	b.n	c0de6936 <bagl_draw_circle_helper+0x1b6>
c0de6908:	9500      	str	r5, [sp, #0]
c0de690a:	9d15      	ldr	r5, [sp, #84]	; 0x54
c0de690c:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de690e:	f04f 0801 	mov.w	r8, #1
c0de6912:	1941      	adds	r1, r0, r5
c0de6914:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de6916:	1826      	adds	r6, r4, r0
c0de6918:	9802      	ldr	r0, [sp, #8]
c0de691a:	4632      	mov	r2, r6
c0de691c:	f000 f8e4 	bl	c0de6ae8 <OUTLINED_FUNCTION_1>
c0de6920:	f8cd 8000 	str.w	r8, [sp]
c0de6924:	9804      	ldr	r0, [sp, #16]
c0de6926:	f8dd 803c 	ldr.w	r8, [sp, #60]	; 0x3c
c0de692a:	4632      	mov	r2, r6
c0de692c:	1941      	adds	r1, r0, r5
c0de692e:	4638      	mov	r0, r7
c0de6930:	f000 f904 	bl	c0de6b3c <OUTLINED_FUNCTION_8>
c0de6934:	2501      	movs	r5, #1
c0de6936:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de6938:	b920      	cbnz	r0, c0de6944 <bagl_draw_circle_helper+0x1c4>
c0de693a:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de693c:	b398      	cbz	r0, c0de69a6 <bagl_draw_circle_helper+0x226>
c0de693e:	9812      	ldr	r0, [sp, #72]	; 0x48
c0de6940:	b998      	cbnz	r0, c0de696a <bagl_draw_circle_helper+0x1ea>
c0de6942:	e029      	b.n	c0de6998 <bagl_draw_circle_helper+0x218>
c0de6944:	e9dd 0114 	ldrd	r0, r1, [sp, #80]	; 0x50
c0de6948:	1846      	adds	r6, r0, r1
c0de694a:	9812      	ldr	r0, [sp, #72]	; 0x48
c0de694c:	b1d8      	cbz	r0, c0de6986 <bagl_draw_circle_helper+0x206>
c0de694e:	9805      	ldr	r0, [sp, #20]
c0de6950:	9500      	str	r5, [sp, #0]
c0de6952:	463d      	mov	r5, r7
c0de6954:	9f13      	ldr	r7, [sp, #76]	; 0x4c
c0de6956:	4632      	mov	r2, r6
c0de6958:	1a23      	subs	r3, r4, r0
c0de695a:	9820      	ldr	r0, [sp, #128]	; 0x80
c0de695c:	4639      	mov	r1, r7
c0de695e:	f002 ffbd 	bl	c0de98dc <bagl_hal_draw_rect>
c0de6962:	f000 f8b5 	bl	c0de6ad0 <OUTLINED_FUNCTION_0>
c0de6966:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de6968:	b1e8      	cbz	r0, c0de69a6 <bagl_draw_circle_helper+0x226>
c0de696a:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de696c:	1b06      	subs	r6, r0, r4
c0de696e:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de6970:	42a0      	cmp	r0, r4
c0de6972:	d005      	beq.n	c0de6980 <bagl_draw_circle_helper+0x200>
c0de6974:	9802      	ldr	r0, [sp, #8]
c0de6976:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0de6978:	4632      	mov	r2, r6
c0de697a:	9500      	str	r5, [sp, #0]
c0de697c:	f000 f8b4 	bl	c0de6ae8 <OUTLINED_FUNCTION_1>
c0de6980:	f000 f8ce 	bl	c0de6b20 <OUTLINED_FUNCTION_6>
c0de6984:	e00d      	b.n	c0de69a2 <bagl_draw_circle_helper+0x222>
c0de6986:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0de6988:	4638      	mov	r0, r7
c0de698a:	4632      	mov	r2, r6
c0de698c:	4623      	mov	r3, r4
c0de698e:	9500      	str	r5, [sp, #0]
c0de6990:	f002 ffa4 	bl	c0de98dc <bagl_hal_draw_rect>
c0de6994:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de6996:	b130      	cbz	r0, c0de69a6 <bagl_draw_circle_helper+0x226>
c0de6998:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de699a:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0de699c:	4653      	mov	r3, sl
c0de699e:	9500      	str	r5, [sp, #0]
c0de69a0:	1b02      	subs	r2, r0, r4
c0de69a2:	f000 f8a6 	bl	c0de6af2 <OUTLINED_FUNCTION_2>
c0de69a6:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de69a8:	b928      	cbnz	r0, c0de69b6 <bagl_draw_circle_helper+0x236>
c0de69aa:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de69ac:	2800      	cmp	r0, #0
c0de69ae:	d04f      	beq.n	c0de6a50 <bagl_draw_circle_helper+0x2d0>
c0de69b0:	9812      	ldr	r0, [sp, #72]	; 0x48
c0de69b2:	b9e8      	cbnz	r0, c0de69f0 <bagl_draw_circle_helper+0x270>
c0de69b4:	e030      	b.n	c0de6a18 <bagl_draw_circle_helper+0x298>
c0de69b6:	e9dd 0114 	ldrd	r0, r1, [sp, #80]	; 0x50
c0de69ba:	eb00 0801 	add.w	r8, r0, r1
c0de69be:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de69c0:	1b06      	subs	r6, r0, r4
c0de69c2:	9812      	ldr	r0, [sp, #72]	; 0x48
c0de69c4:	b1e8      	cbz	r0, c0de6a02 <bagl_draw_circle_helper+0x282>
c0de69c6:	9f05      	ldr	r7, [sp, #20]
c0de69c8:	9820      	ldr	r0, [sp, #128]	; 0x80
c0de69ca:	4631      	mov	r1, r6
c0de69cc:	4642      	mov	r2, r8
c0de69ce:	9500      	str	r5, [sp, #0]
c0de69d0:	1be3      	subs	r3, r4, r7
c0de69d2:	f002 ff83 	bl	c0de98dc <bagl_hal_draw_rect>
c0de69d6:	1bf1      	subs	r1, r6, r7
c0de69d8:	4642      	mov	r2, r8
c0de69da:	f8dd 803c 	ldr.w	r8, [sp, #60]	; 0x3c
c0de69de:	9f06      	ldr	r7, [sp, #24]
c0de69e0:	2001      	movs	r0, #1
c0de69e2:	2501      	movs	r5, #1
c0de69e4:	9000      	str	r0, [sp, #0]
c0de69e6:	4638      	mov	r0, r7
c0de69e8:	f000 f8a8 	bl	c0de6b3c <OUTLINED_FUNCTION_8>
c0de69ec:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de69ee:	b378      	cbz	r0, c0de6a50 <bagl_draw_circle_helper+0x2d0>
c0de69f0:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de69f2:	46b8      	mov	r8, r7
c0de69f4:	42a0      	cmp	r0, r4
c0de69f6:	d115      	bne.n	c0de6a24 <bagl_draw_circle_helper+0x2a4>
c0de69f8:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de69fa:	9d15      	ldr	r5, [sp, #84]	; 0x54
c0de69fc:	2701      	movs	r7, #1
c0de69fe:	1b06      	subs	r6, r0, r4
c0de6a00:	e01b      	b.n	c0de6a3a <bagl_draw_circle_helper+0x2ba>
c0de6a02:	9f06      	ldr	r7, [sp, #24]
c0de6a04:	4631      	mov	r1, r6
c0de6a06:	4642      	mov	r2, r8
c0de6a08:	4623      	mov	r3, r4
c0de6a0a:	9500      	str	r5, [sp, #0]
c0de6a0c:	f000 f871 	bl	c0de6af2 <OUTLINED_FUNCTION_2>
c0de6a10:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de6a12:	f8dd 803c 	ldr.w	r8, [sp, #60]	; 0x3c
c0de6a16:	b1d8      	cbz	r0, c0de6a50 <bagl_draw_circle_helper+0x2d0>
c0de6a18:	f000 f889 	bl	c0de6b2e <OUTLINED_FUNCTION_7>
c0de6a1c:	1b02      	subs	r2, r0, r4
c0de6a1e:	f000 f868 	bl	c0de6af2 <OUTLINED_FUNCTION_2>
c0de6a22:	e015      	b.n	c0de6a50 <bagl_draw_circle_helper+0x2d0>
c0de6a24:	9500      	str	r5, [sp, #0]
c0de6a26:	9d15      	ldr	r5, [sp, #84]	; 0x54
c0de6a28:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de6a2a:	2701      	movs	r7, #1
c0de6a2c:	1941      	adds	r1, r0, r5
c0de6a2e:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de6a30:	1b06      	subs	r6, r0, r4
c0de6a32:	9802      	ldr	r0, [sp, #8]
c0de6a34:	4632      	mov	r2, r6
c0de6a36:	f000 f857 	bl	c0de6ae8 <OUTLINED_FUNCTION_1>
c0de6a3a:	9804      	ldr	r0, [sp, #16]
c0de6a3c:	9700      	str	r7, [sp, #0]
c0de6a3e:	4647      	mov	r7, r8
c0de6a40:	4632      	mov	r2, r6
c0de6a42:	1941      	adds	r1, r0, r5
c0de6a44:	4640      	mov	r0, r8
c0de6a46:	f8dd 803c 	ldr.w	r8, [sp, #60]	; 0x3c
c0de6a4a:	f000 f877 	bl	c0de6b3c <OUTLINED_FUNCTION_8>
c0de6a4e:	2501      	movs	r5, #1
c0de6a50:	1e60      	subs	r0, r4, #1
c0de6a52:	f10a 0a01 	add.w	sl, sl, #1
c0de6a56:	4603      	mov	r3, r0
c0de6a58:	f1bb 0f01 	cmp.w	fp, #1
c0de6a5c:	bfbc      	itt	lt
c0de6a5e:	4623      	movlt	r3, r4
c0de6a60:	2000      	movlt	r0, #0
c0de6a62:	9911      	ldr	r1, [sp, #68]	; 0x44
c0de6a64:	ebab 0040 	sub.w	r0, fp, r0, lsl #1
c0de6a68:	eb01 0b00 	add.w	fp, r1, r0
c0de6a6c:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de6a6e:	3102      	adds	r1, #2
c0de6a70:	9111      	str	r1, [sp, #68]	; 0x44
c0de6a72:	3801      	subs	r0, #1
c0de6a74:	9015      	str	r0, [sp, #84]	; 0x54
c0de6a76:	e6ca      	b.n	c0de680e <bagl_draw_circle_helper+0x8e>
c0de6a78:	b016      	add	sp, #88	; 0x58
c0de6a7a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de6a7e <bagl_draw_glyph>:
c0de6a7e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6a82:	b086      	sub	sp, #24
c0de6a84:	688d      	ldr	r5, [r1, #8]
c0de6a86:	2d02      	cmp	r5, #2
c0de6a88:	d81f      	bhi.n	c0de6aca <bagl_draw_glyph+0x4c>
c0de6a8a:	f9b0 a002 	ldrsh.w	sl, [r0, #2]
c0de6a8e:	f9b0 b004 	ldrsh.w	fp, [r0, #4]
c0de6a92:	6808      	ldr	r0, [r1, #0]
c0de6a94:	f8d1 8004 	ldr.w	r8, [r1, #4]
c0de6a98:	460e      	mov	r6, r1
c0de6a9a:	9005      	str	r0, [sp, #20]
c0de6a9c:	68c8      	ldr	r0, [r1, #12]
c0de6a9e:	f002 fdff 	bl	c0de96a0 <pic>
c0de6aa2:	4604      	mov	r4, r0
c0de6aa4:	6930      	ldr	r0, [r6, #16]
c0de6aa6:	68b7      	ldr	r7, [r6, #8]
c0de6aa8:	f002 fdfa 	bl	c0de96a0 <pic>
c0de6aac:	ce0e      	ldmia	r6!, {r1, r2, r3}
c0de6aae:	4359      	muls	r1, r3
c0de6ab0:	4643      	mov	r3, r8
c0de6ab2:	4351      	muls	r1, r2
c0de6ab4:	2201      	movs	r2, #1
c0de6ab6:	40aa      	lsls	r2, r5
c0de6ab8:	e9cd 0103 	strd	r0, r1, [sp, #12]
c0de6abc:	4650      	mov	r0, sl
c0de6abe:	4659      	mov	r1, fp
c0de6ac0:	e88d 0094 	stmia.w	sp, {r2, r4, r7}
c0de6ac4:	9a05      	ldr	r2, [sp, #20]
c0de6ac6:	f002 fef1 	bl	c0de98ac <bagl_hal_draw_bitmap_within_rect>
c0de6aca:	b006      	add	sp, #24
c0de6acc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de6ad0 <OUTLINED_FUNCTION_0>:
c0de6ad0:	2001      	movs	r0, #1
c0de6ad2:	9903      	ldr	r1, [sp, #12]
c0de6ad4:	4632      	mov	r2, r6
c0de6ad6:	4643      	mov	r3, r8
c0de6ad8:	9000      	str	r0, [sp, #0]
c0de6ada:	19e0      	adds	r0, r4, r7
c0de6adc:	462f      	mov	r7, r5
c0de6ade:	2501      	movs	r5, #1
c0de6ae0:	4401      	add	r1, r0
c0de6ae2:	4638      	mov	r0, r7
c0de6ae4:	f002 befa 	b.w	c0de98dc <bagl_hal_draw_rect>

c0de6ae8 <OUTLINED_FUNCTION_1>:
c0de6ae8:	eb00 030a 	add.w	r3, r0, sl
c0de6aec:	9820      	ldr	r0, [sp, #128]	; 0x80
c0de6aee:	f002 bef5 	b.w	c0de98dc <bagl_hal_draw_rect>

c0de6af2 <OUTLINED_FUNCTION_2>:
c0de6af2:	4638      	mov	r0, r7
c0de6af4:	f002 bef2 	b.w	c0de98dc <bagl_hal_draw_rect>

c0de6af8 <OUTLINED_FUNCTION_3>:
c0de6af8:	8920      	ldrh	r0, [r4, #8]
c0de6afa:	f9b4 7002 	ldrsh.w	r7, [r4, #2]
c0de6afe:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de6b02:	88e3      	ldrh	r3, [r4, #6]
c0de6b04:	eba0 0145 	sub.w	r1, r0, r5, lsl #1
c0de6b08:	4770      	bx	lr

c0de6b0a <OUTLINED_FUNCTION_4>:
c0de6b0a:	f8db 0008 	ldr.w	r0, [fp, #8]
c0de6b0e:	4738      	bx	r7

c0de6b10 <OUTLINED_FUNCTION_5>:
c0de6b10:	8920      	ldrh	r0, [r4, #8]
c0de6b12:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de6b16:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de6b1a:	eba0 0245 	sub.w	r2, r0, r5, lsl #1
c0de6b1e:	4770      	bx	lr

c0de6b20 <OUTLINED_FUNCTION_6>:
c0de6b20:	9804      	ldr	r0, [sp, #16]
c0de6b22:	9500      	str	r5, [sp, #0]
c0de6b24:	4632      	mov	r2, r6
c0de6b26:	4643      	mov	r3, r8
c0de6b28:	eb00 010a 	add.w	r1, r0, sl
c0de6b2c:	4770      	bx	lr

c0de6b2e <OUTLINED_FUNCTION_7>:
c0de6b2e:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de6b30:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0de6b32:	4653      	mov	r3, sl
c0de6b34:	9500      	str	r5, [sp, #0]
c0de6b36:	4401      	add	r1, r0
c0de6b38:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de6b3a:	4770      	bx	lr

c0de6b3c <OUTLINED_FUNCTION_8>:
c0de6b3c:	4643      	mov	r3, r8
c0de6b3e:	f002 becd 	b.w	c0de98dc <bagl_hal_draw_rect>

c0de6b42 <OUTLINED_FUNCTION_9>:
c0de6b42:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de6b46:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de6b4a:	4770      	bx	lr

c0de6b4c <USBD_HID_Setup>:
c0de6b4c:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de6b4e:	460d      	mov	r5, r1
c0de6b50:	7809      	ldrb	r1, [r1, #0]
c0de6b52:	4604      	mov	r4, r0
c0de6b54:	2000      	movs	r0, #0
c0de6b56:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de6b5a:	f88d 0005 	strb.w	r0, [sp, #5]
c0de6b5e:	f011 0160 	ands.w	r1, r1, #96	; 0x60
c0de6b62:	d010      	beq.n	c0de6b86 <USBD_HID_Setup+0x3a>
c0de6b64:	2920      	cmp	r1, #32
c0de6b66:	d13c      	bne.n	c0de6be2 <USBD_HID_Setup+0x96>
c0de6b68:	7868      	ldrb	r0, [r5, #1]
c0de6b6a:	f1a0 010a 	sub.w	r1, r0, #10
c0de6b6e:	2902      	cmp	r1, #2
c0de6b70:	d336      	bcc.n	c0de6be0 <USBD_HID_Setup+0x94>
c0de6b72:	2802      	cmp	r0, #2
c0de6b74:	d018      	beq.n	c0de6ba8 <USBD_HID_Setup+0x5c>
c0de6b76:	2803      	cmp	r0, #3
c0de6b78:	d016      	beq.n	c0de6ba8 <USBD_HID_Setup+0x5c>
c0de6b7a:	4620      	mov	r0, r4
c0de6b7c:	4629      	mov	r1, r5
c0de6b7e:	f000 fe8f 	bl	c0de78a0 <USBD_CtlError>
c0de6b82:	2002      	movs	r0, #2
c0de6b84:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de6b86:	7868      	ldrb	r0, [r5, #1]
c0de6b88:	280b      	cmp	r0, #11
c0de6b8a:	d012      	beq.n	c0de6bb2 <USBD_HID_Setup+0x66>
c0de6b8c:	280a      	cmp	r0, #10
c0de6b8e:	d00b      	beq.n	c0de6ba8 <USBD_HID_Setup+0x5c>
c0de6b90:	2806      	cmp	r0, #6
c0de6b92:	d125      	bne.n	c0de6be0 <USBD_HID_Setup+0x94>
c0de6b94:	78e8      	ldrb	r0, [r5, #3]
c0de6b96:	2821      	cmp	r0, #33	; 0x21
c0de6b98:	d00f      	beq.n	c0de6bba <USBD_HID_Setup+0x6e>
c0de6b9a:	2822      	cmp	r0, #34	; 0x22
c0de6b9c:	d11b      	bne.n	c0de6bd6 <USBD_HID_Setup+0x8a>
c0de6b9e:	f10d 0006 	add.w	r0, sp, #6
c0de6ba2:	f000 fd99 	bl	c0de76d8 <USBD_HID_GetReportDescriptor_impl>
c0de6ba6:	e00c      	b.n	c0de6bc2 <USBD_HID_Setup+0x76>
c0de6ba8:	f10d 0105 	add.w	r1, sp, #5
c0de6bac:	4620      	mov	r0, r4
c0de6bae:	2201      	movs	r2, #1
c0de6bb0:	e014      	b.n	c0de6bdc <USBD_HID_Setup+0x90>
c0de6bb2:	4620      	mov	r0, r4
c0de6bb4:	f000 fc2e 	bl	c0de7414 <USBD_CtlSendStatus>
c0de6bb8:	e012      	b.n	c0de6be0 <USBD_HID_Setup+0x94>
c0de6bba:	f10d 0006 	add.w	r0, sp, #6
c0de6bbe:	f000 fd77 	bl	c0de76b0 <USBD_HID_GetHidDescriptor_impl>
c0de6bc2:	4601      	mov	r1, r0
c0de6bc4:	88ea      	ldrh	r2, [r5, #6]
c0de6bc6:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de6bca:	4290      	cmp	r0, r2
c0de6bcc:	bf38      	it	cc
c0de6bce:	4602      	movcc	r2, r0
c0de6bd0:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de6bd4:	e001      	b.n	c0de6bda <USBD_HID_Setup+0x8e>
c0de6bd6:	2200      	movs	r2, #0
c0de6bd8:	2100      	movs	r1, #0
c0de6bda:	4620      	mov	r0, r4
c0de6bdc:	f000 fbf9 	bl	c0de73d2 <USBD_CtlSendData>
c0de6be0:	2000      	movs	r0, #0
c0de6be2:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de6be4 <USBD_HID_Init>:
c0de6be4:	b510      	push	{r4, lr}
c0de6be6:	2182      	movs	r1, #130	; 0x82
c0de6be8:	2203      	movs	r2, #3
c0de6bea:	2340      	movs	r3, #64	; 0x40
c0de6bec:	4604      	mov	r4, r0
c0de6bee:	f000 fc69 	bl	c0de74c4 <USBD_LL_OpenEP>
c0de6bf2:	4620      	mov	r0, r4
c0de6bf4:	2102      	movs	r1, #2
c0de6bf6:	2203      	movs	r2, #3
c0de6bf8:	2340      	movs	r3, #64	; 0x40
c0de6bfa:	f000 fc63 	bl	c0de74c4 <USBD_LL_OpenEP>
c0de6bfe:	4620      	mov	r0, r4
c0de6c00:	2102      	movs	r1, #2
c0de6c02:	2240      	movs	r2, #64	; 0x40
c0de6c04:	f000 fd1a 	bl	c0de763c <USBD_LL_PrepareReceive>
c0de6c08:	2000      	movs	r0, #0
c0de6c0a:	bd10      	pop	{r4, pc}

c0de6c0c <USBD_HID_DeInit>:
c0de6c0c:	2000      	movs	r0, #0
c0de6c0e:	4770      	bx	lr

c0de6c10 <USBD_Init>:
c0de6c10:	b198      	cbz	r0, c0de6c3a <USBD_Init+0x2a>
c0de6c12:	b570      	push	{r4, r5, r6, lr}
c0de6c14:	460e      	mov	r6, r1
c0de6c16:	f44f 719a 	mov.w	r1, #308	; 0x134
c0de6c1a:	4615      	mov	r5, r2
c0de6c1c:	4604      	mov	r4, r0
c0de6c1e:	f002 fe71 	bl	c0de9904 <__aeabi_memclr>
c0de6c22:	b10e      	cbz	r6, c0de6c28 <USBD_Init+0x18>
c0de6c24:	f8c4 6110 	str.w	r6, [r4, #272]	; 0x110
c0de6c28:	2001      	movs	r0, #1
c0de6c2a:	7025      	strb	r5, [r4, #0]
c0de6c2c:	f884 00fc 	strb.w	r0, [r4, #252]	; 0xfc
c0de6c30:	4620      	mov	r0, r4
c0de6c32:	f000 fc0b 	bl	c0de744c <USBD_LL_Init>
c0de6c36:	2000      	movs	r0, #0
c0de6c38:	bd70      	pop	{r4, r5, r6, pc}
c0de6c3a:	2002      	movs	r0, #2
c0de6c3c:	4770      	bx	lr

c0de6c3e <USBD_DeInit>:
c0de6c3e:	b5b0      	push	{r4, r5, r7, lr}
c0de6c40:	4604      	mov	r4, r0
c0de6c42:	2001      	movs	r0, #1
c0de6c44:	f44f 758a 	mov.w	r5, #276	; 0x114
c0de6c48:	f884 00fc 	strb.w	r0, [r4, #252]	; 0xfc
c0de6c4c:	f5b5 7f96 	cmp.w	r5, #300	; 0x12c
c0de6c50:	d008      	beq.n	c0de6c64 <USBD_DeInit+0x26>
c0de6c52:	5960      	ldr	r0, [r4, r5]
c0de6c54:	b120      	cbz	r0, c0de6c60 <USBD_DeInit+0x22>
c0de6c56:	6840      	ldr	r0, [r0, #4]
c0de6c58:	f002 fd22 	bl	c0de96a0 <pic>
c0de6c5c:	f000 f975 	bl	c0de6f4a <OUTLINED_FUNCTION_3>
c0de6c60:	3508      	adds	r5, #8
c0de6c62:	e7f3      	b.n	c0de6c4c <USBD_DeInit+0xe>
c0de6c64:	4620      	mov	r0, r4
c0de6c66:	f000 fc25 	bl	c0de74b4 <USBD_LL_Stop>
c0de6c6a:	4620      	mov	r0, r4
c0de6c6c:	f000 fbfc 	bl	c0de7468 <USBD_LL_DeInit>
c0de6c70:	2000      	movs	r0, #0
c0de6c72:	bdb0      	pop	{r4, r5, r7, pc}

c0de6c74 <USBD_RegisterClassForInterface>:
c0de6c74:	b13a      	cbz	r2, c0de6c86 <USBD_RegisterClassForInterface+0x12>
c0de6c76:	2802      	cmp	r0, #2
c0de6c78:	bf9c      	itt	ls
c0de6c7a:	eb01 00c0 	addls.w	r0, r1, r0, lsl #3
c0de6c7e:	f8c0 2114 	strls.w	r2, [r0, #276]	; 0x114
c0de6c82:	2000      	movs	r0, #0
c0de6c84:	4770      	bx	lr
c0de6c86:	2002      	movs	r0, #2
c0de6c88:	4770      	bx	lr

c0de6c8a <USBD_Start>:
c0de6c8a:	b580      	push	{r7, lr}
c0de6c8c:	f000 fbf4 	bl	c0de7478 <USBD_LL_Start>
c0de6c90:	2000      	movs	r0, #0
c0de6c92:	bd80      	pop	{r7, pc}

c0de6c94 <USBD_SetClassConfig>:
c0de6c94:	b570      	push	{r4, r5, r6, lr}
c0de6c96:	460c      	mov	r4, r1
c0de6c98:	4605      	mov	r5, r0
c0de6c9a:	2600      	movs	r6, #0
c0de6c9c:	2e03      	cmp	r6, #3
c0de6c9e:	bf04      	itt	eq
c0de6ca0:	2000      	moveq	r0, #0
c0de6ca2:	bd70      	popeq	{r4, r5, r6, pc}
c0de6ca4:	4628      	mov	r0, r5
c0de6ca6:	4631      	mov	r1, r6
c0de6ca8:	f000 f953 	bl	c0de6f52 <usbd_is_valid_intf>
c0de6cac:	b150      	cbz	r0, c0de6cc4 <USBD_SetClassConfig+0x30>
c0de6cae:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0de6cb2:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de6cb6:	6800      	ldr	r0, [r0, #0]
c0de6cb8:	f002 fcf2 	bl	c0de96a0 <pic>
c0de6cbc:	4602      	mov	r2, r0
c0de6cbe:	4628      	mov	r0, r5
c0de6cc0:	4621      	mov	r1, r4
c0de6cc2:	4790      	blx	r2
c0de6cc4:	3601      	adds	r6, #1
c0de6cc6:	e7e9      	b.n	c0de6c9c <USBD_SetClassConfig+0x8>

c0de6cc8 <USBD_ClrClassConfig>:
c0de6cc8:	b570      	push	{r4, r5, r6, lr}
c0de6cca:	460c      	mov	r4, r1
c0de6ccc:	4605      	mov	r5, r0
c0de6cce:	2600      	movs	r6, #0
c0de6cd0:	2e03      	cmp	r6, #3
c0de6cd2:	bf04      	itt	eq
c0de6cd4:	2000      	moveq	r0, #0
c0de6cd6:	bd70      	popeq	{r4, r5, r6, pc}
c0de6cd8:	4628      	mov	r0, r5
c0de6cda:	4631      	mov	r1, r6
c0de6cdc:	f000 f939 	bl	c0de6f52 <usbd_is_valid_intf>
c0de6ce0:	b138      	cbz	r0, c0de6cf2 <USBD_ClrClassConfig+0x2a>
c0de6ce2:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0de6ce6:	f000 f926 	bl	c0de6f36 <OUTLINED_FUNCTION_1>
c0de6cea:	4602      	mov	r2, r0
c0de6cec:	4628      	mov	r0, r5
c0de6cee:	4621      	mov	r1, r4
c0de6cf0:	4790      	blx	r2
c0de6cf2:	3601      	adds	r6, #1
c0de6cf4:	e7ec      	b.n	c0de6cd0 <USBD_ClrClassConfig+0x8>

c0de6cf6 <USBD_LL_SetupStage>:
c0de6cf6:	b5b0      	push	{r4, r5, r7, lr}
c0de6cf8:	f500 7584 	add.w	r5, r0, #264	; 0x108
c0de6cfc:	4604      	mov	r4, r0
c0de6cfe:	4628      	mov	r0, r5
c0de6d00:	f000 fb34 	bl	c0de736c <USBD_ParseSetupRequest>
c0de6d04:	f8b4 110e 	ldrh.w	r1, [r4, #270]	; 0x10e
c0de6d08:	2001      	movs	r0, #1
c0de6d0a:	e9c4 013d 	strd	r0, r1, [r4, #244]	; 0xf4
c0de6d0e:	f894 0108 	ldrb.w	r0, [r4, #264]	; 0x108
c0de6d12:	f000 011f 	and.w	r1, r0, #31
c0de6d16:	2902      	cmp	r1, #2
c0de6d18:	d007      	beq.n	c0de6d2a <USBD_LL_SetupStage+0x34>
c0de6d1a:	2901      	cmp	r1, #1
c0de6d1c:	d00a      	beq.n	c0de6d34 <USBD_LL_SetupStage+0x3e>
c0de6d1e:	b971      	cbnz	r1, c0de6d3e <USBD_LL_SetupStage+0x48>
c0de6d20:	4620      	mov	r0, r4
c0de6d22:	4629      	mov	r1, r5
c0de6d24:	f000 f921 	bl	c0de6f6a <USBD_StdDevReq>
c0de6d28:	e00e      	b.n	c0de6d48 <USBD_LL_SetupStage+0x52>
c0de6d2a:	4620      	mov	r0, r4
c0de6d2c:	4629      	mov	r1, r5
c0de6d2e:	f000 faa8 	bl	c0de7282 <USBD_StdEPReq>
c0de6d32:	e009      	b.n	c0de6d48 <USBD_LL_SetupStage+0x52>
c0de6d34:	4620      	mov	r0, r4
c0de6d36:	4629      	mov	r1, r5
c0de6d38:	f000 fa89 	bl	c0de724e <USBD_StdItfReq>
c0de6d3c:	e004      	b.n	c0de6d48 <USBD_LL_SetupStage+0x52>
c0de6d3e:	f000 0180 	and.w	r1, r0, #128	; 0x80
c0de6d42:	4620      	mov	r0, r4
c0de6d44:	f000 fbf2 	bl	c0de752c <USBD_LL_StallEP>
c0de6d48:	2000      	movs	r0, #0
c0de6d4a:	bdb0      	pop	{r4, r5, r7, pc}

c0de6d4c <USBD_LL_DataOutStage>:
c0de6d4c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6d50:	4690      	mov	r8, r2
c0de6d52:	4604      	mov	r4, r0
c0de6d54:	b1c9      	cbz	r1, c0de6d8a <USBD_LL_DataOutStage+0x3e>
c0de6d56:	469a      	mov	sl, r3
c0de6d58:	460f      	mov	r7, r1
c0de6d5a:	2500      	movs	r5, #0
c0de6d5c:	2d03      	cmp	r5, #3
c0de6d5e:	d040      	beq.n	c0de6de2 <USBD_LL_DataOutStage+0x96>
c0de6d60:	f000 f8e5 	bl	c0de6f2e <OUTLINED_FUNCTION_0>
c0de6d64:	b178      	cbz	r0, c0de6d86 <USBD_LL_DataOutStage+0x3a>
c0de6d66:	f000 f8eb 	bl	c0de6f40 <OUTLINED_FUNCTION_2>
c0de6d6a:	6980      	ldr	r0, [r0, #24]
c0de6d6c:	b158      	cbz	r0, c0de6d86 <USBD_LL_DataOutStage+0x3a>
c0de6d6e:	f894 10fc 	ldrb.w	r1, [r4, #252]	; 0xfc
c0de6d72:	2903      	cmp	r1, #3
c0de6d74:	d107      	bne.n	c0de6d86 <USBD_LL_DataOutStage+0x3a>
c0de6d76:	f002 fc93 	bl	c0de96a0 <pic>
c0de6d7a:	4606      	mov	r6, r0
c0de6d7c:	4620      	mov	r0, r4
c0de6d7e:	4639      	mov	r1, r7
c0de6d80:	4642      	mov	r2, r8
c0de6d82:	4653      	mov	r3, sl
c0de6d84:	47b0      	blx	r6
c0de6d86:	3501      	adds	r5, #1
c0de6d88:	e7e8      	b.n	c0de6d5c <USBD_LL_DataOutStage+0x10>
c0de6d8a:	f8d4 00f4 	ldr.w	r0, [r4, #244]	; 0xf4
c0de6d8e:	2803      	cmp	r0, #3
c0de6d90:	d127      	bne.n	c0de6de2 <USBD_LL_DataOutStage+0x96>
c0de6d92:	e9d4 1023 	ldrd	r1, r0, [r4, #140]	; 0x8c
c0de6d96:	4281      	cmp	r1, r0
c0de6d98:	d90b      	bls.n	c0de6db2 <USBD_LL_DataOutStage+0x66>
c0de6d9a:	1a09      	subs	r1, r1, r0
c0de6d9c:	f8c4 108c 	str.w	r1, [r4, #140]	; 0x8c
c0de6da0:	4281      	cmp	r1, r0
c0de6da2:	bf38      	it	cc
c0de6da4:	4608      	movcc	r0, r1
c0de6da6:	b282      	uxth	r2, r0
c0de6da8:	4641      	mov	r1, r8
c0de6daa:	4620      	mov	r0, r4
c0de6dac:	f000 fb2c 	bl	c0de7408 <USBD_CtlContinueRx>
c0de6db0:	e017      	b.n	c0de6de2 <USBD_LL_DataOutStage+0x96>
c0de6db2:	2500      	movs	r5, #0
c0de6db4:	2d03      	cmp	r5, #3
c0de6db6:	d011      	beq.n	c0de6ddc <USBD_LL_DataOutStage+0x90>
c0de6db8:	f000 f8b9 	bl	c0de6f2e <OUTLINED_FUNCTION_0>
c0de6dbc:	b160      	cbz	r0, c0de6dd8 <USBD_LL_DataOutStage+0x8c>
c0de6dbe:	f000 f8bf 	bl	c0de6f40 <OUTLINED_FUNCTION_2>
c0de6dc2:	6900      	ldr	r0, [r0, #16]
c0de6dc4:	b140      	cbz	r0, c0de6dd8 <USBD_LL_DataOutStage+0x8c>
c0de6dc6:	f894 10fc 	ldrb.w	r1, [r4, #252]	; 0xfc
c0de6dca:	2903      	cmp	r1, #3
c0de6dcc:	d104      	bne.n	c0de6dd8 <USBD_LL_DataOutStage+0x8c>
c0de6dce:	f002 fc67 	bl	c0de96a0 <pic>
c0de6dd2:	4601      	mov	r1, r0
c0de6dd4:	4620      	mov	r0, r4
c0de6dd6:	4788      	blx	r1
c0de6dd8:	3501      	adds	r5, #1
c0de6dda:	e7eb      	b.n	c0de6db4 <USBD_LL_DataOutStage+0x68>
c0de6ddc:	4620      	mov	r0, r4
c0de6dde:	f000 fb19 	bl	c0de7414 <USBD_CtlSendStatus>
c0de6de2:	2000      	movs	r0, #0
c0de6de4:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de6de8 <USBD_LL_DataInStage>:
c0de6de8:	b570      	push	{r4, r5, r6, lr}
c0de6dea:	4604      	mov	r4, r0
c0de6dec:	b1d1      	cbz	r1, c0de6e24 <USBD_LL_DataInStage+0x3c>
c0de6dee:	460d      	mov	r5, r1
c0de6df0:	2600      	movs	r6, #0
c0de6df2:	2e03      	cmp	r6, #3
c0de6df4:	d060      	beq.n	c0de6eb8 <USBD_LL_DataInStage+0xd0>
c0de6df6:	4620      	mov	r0, r4
c0de6df8:	4631      	mov	r1, r6
c0de6dfa:	f000 f8aa 	bl	c0de6f52 <usbd_is_valid_intf>
c0de6dfe:	b178      	cbz	r0, c0de6e20 <USBD_LL_DataInStage+0x38>
c0de6e00:	eb04 00c6 	add.w	r0, r4, r6, lsl #3
c0de6e04:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de6e08:	6940      	ldr	r0, [r0, #20]
c0de6e0a:	b148      	cbz	r0, c0de6e20 <USBD_LL_DataInStage+0x38>
c0de6e0c:	f894 10fc 	ldrb.w	r1, [r4, #252]	; 0xfc
c0de6e10:	2903      	cmp	r1, #3
c0de6e12:	d105      	bne.n	c0de6e20 <USBD_LL_DataInStage+0x38>
c0de6e14:	f002 fc44 	bl	c0de96a0 <pic>
c0de6e18:	4602      	mov	r2, r0
c0de6e1a:	4620      	mov	r0, r4
c0de6e1c:	4629      	mov	r1, r5
c0de6e1e:	4790      	blx	r2
c0de6e20:	3601      	adds	r6, #1
c0de6e22:	e7e6      	b.n	c0de6df2 <USBD_LL_DataInStage+0xa>
c0de6e24:	f8d4 00f4 	ldr.w	r0, [r4, #244]	; 0xf4
c0de6e28:	2802      	cmp	r0, #2
c0de6e2a:	d13e      	bne.n	c0de6eaa <USBD_LL_DataInStage+0xc2>
c0de6e2c:	e9d4 1007 	ldrd	r1, r0, [r4, #28]
c0de6e30:	4281      	cmp	r1, r0
c0de6e32:	d90b      	bls.n	c0de6e4c <USBD_LL_DataInStage+0x64>
c0de6e34:	1a0a      	subs	r2, r1, r0
c0de6e36:	f8d4 1130 	ldr.w	r1, [r4, #304]	; 0x130
c0de6e3a:	61e2      	str	r2, [r4, #28]
c0de6e3c:	b292      	uxth	r2, r2
c0de6e3e:	4401      	add	r1, r0
c0de6e40:	4620      	mov	r0, r4
c0de6e42:	f8c4 1130 	str.w	r1, [r4, #304]	; 0x130
c0de6e46:	f000 fad5 	bl	c0de73f4 <USBD_CtlContinueSendData>
c0de6e4a:	e02e      	b.n	c0de6eaa <USBD_LL_DataInStage+0xc2>
c0de6e4c:	b1a0      	cbz	r0, c0de6e78 <USBD_LL_DataInStage+0x90>
c0de6e4e:	69a1      	ldr	r1, [r4, #24]
c0de6e50:	fbb1 f2f0 	udiv	r2, r1, r0
c0de6e54:	fb02 1210 	mls	r2, r2, r0, r1
c0de6e58:	b972      	cbnz	r2, c0de6e78 <USBD_LL_DataInStage+0x90>
c0de6e5a:	4281      	cmp	r1, r0
c0de6e5c:	d30c      	bcc.n	c0de6e78 <USBD_LL_DataInStage+0x90>
c0de6e5e:	f8d4 00f8 	ldr.w	r0, [r4, #248]	; 0xf8
c0de6e62:	4281      	cmp	r1, r0
c0de6e64:	d208      	bcs.n	c0de6e78 <USBD_LL_DataInStage+0x90>
c0de6e66:	4620      	mov	r0, r4
c0de6e68:	2100      	movs	r1, #0
c0de6e6a:	2200      	movs	r2, #0
c0de6e6c:	2500      	movs	r5, #0
c0de6e6e:	f000 fac1 	bl	c0de73f4 <USBD_CtlContinueSendData>
c0de6e72:	f8c4 50f8 	str.w	r5, [r4, #248]	; 0xf8
c0de6e76:	e018      	b.n	c0de6eaa <USBD_LL_DataInStage+0xc2>
c0de6e78:	2500      	movs	r5, #0
c0de6e7a:	4620      	mov	r0, r4
c0de6e7c:	2d03      	cmp	r5, #3
c0de6e7e:	d012      	beq.n	c0de6ea6 <USBD_LL_DataInStage+0xbe>
c0de6e80:	4629      	mov	r1, r5
c0de6e82:	f000 f866 	bl	c0de6f52 <usbd_is_valid_intf>
c0de6e86:	b160      	cbz	r0, c0de6ea2 <USBD_LL_DataInStage+0xba>
c0de6e88:	f000 f85a 	bl	c0de6f40 <OUTLINED_FUNCTION_2>
c0de6e8c:	68c0      	ldr	r0, [r0, #12]
c0de6e8e:	b140      	cbz	r0, c0de6ea2 <USBD_LL_DataInStage+0xba>
c0de6e90:	f894 10fc 	ldrb.w	r1, [r4, #252]	; 0xfc
c0de6e94:	2903      	cmp	r1, #3
c0de6e96:	d104      	bne.n	c0de6ea2 <USBD_LL_DataInStage+0xba>
c0de6e98:	f002 fc02 	bl	c0de96a0 <pic>
c0de6e9c:	4601      	mov	r1, r0
c0de6e9e:	4620      	mov	r0, r4
c0de6ea0:	4788      	blx	r1
c0de6ea2:	3501      	adds	r5, #1
c0de6ea4:	e7e9      	b.n	c0de6e7a <USBD_LL_DataInStage+0x92>
c0de6ea6:	f000 fac0 	bl	c0de742a <USBD_CtlReceiveStatus>
c0de6eaa:	f894 0100 	ldrb.w	r0, [r4, #256]	; 0x100
c0de6eae:	2801      	cmp	r0, #1
c0de6eb0:	bf04      	itt	eq
c0de6eb2:	2000      	moveq	r0, #0
c0de6eb4:	f884 0100 	strbeq.w	r0, [r4, #256]	; 0x100
c0de6eb8:	2000      	movs	r0, #0
c0de6eba:	bd70      	pop	{r4, r5, r6, pc}

c0de6ebc <USBD_LL_Reset>:
c0de6ebc:	b5b0      	push	{r4, r5, r7, lr}
c0de6ebe:	4604      	mov	r4, r0
c0de6ec0:	2001      	movs	r0, #1
c0de6ec2:	2500      	movs	r5, #0
c0de6ec4:	f884 00fc 	strb.w	r0, [r4, #252]	; 0xfc
c0de6ec8:	2040      	movs	r0, #64	; 0x40
c0de6eca:	6220      	str	r0, [r4, #32]
c0de6ecc:	f8c4 0090 	str.w	r0, [r4, #144]	; 0x90
c0de6ed0:	2d03      	cmp	r5, #3
c0de6ed2:	bf04      	itt	eq
c0de6ed4:	2000      	moveq	r0, #0
c0de6ed6:	bdb0      	popeq	{r4, r5, r7, pc}
c0de6ed8:	f000 f829 	bl	c0de6f2e <OUTLINED_FUNCTION_0>
c0de6edc:	b128      	cbz	r0, c0de6eea <USBD_LL_Reset+0x2e>
c0de6ede:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de6ee2:	f000 f828 	bl	c0de6f36 <OUTLINED_FUNCTION_1>
c0de6ee6:	f000 f830 	bl	c0de6f4a <OUTLINED_FUNCTION_3>
c0de6eea:	3501      	adds	r5, #1
c0de6eec:	e7f0      	b.n	c0de6ed0 <USBD_LL_Reset+0x14>

c0de6eee <USBD_LL_SetSpeed>:
c0de6eee:	7401      	strb	r1, [r0, #16]
c0de6ef0:	2000      	movs	r0, #0
c0de6ef2:	4770      	bx	lr

c0de6ef4 <USBD_LL_Suspend>:
c0de6ef4:	2000      	movs	r0, #0
c0de6ef6:	4770      	bx	lr

c0de6ef8 <USBD_LL_Resume>:
c0de6ef8:	2000      	movs	r0, #0
c0de6efa:	4770      	bx	lr

c0de6efc <USBD_LL_SOF>:
c0de6efc:	b5b0      	push	{r4, r5, r7, lr}
c0de6efe:	4604      	mov	r4, r0
c0de6f00:	f890 00fc 	ldrb.w	r0, [r0, #252]	; 0xfc
c0de6f04:	2803      	cmp	r0, #3
c0de6f06:	d110      	bne.n	c0de6f2a <USBD_LL_SOF+0x2e>
c0de6f08:	2500      	movs	r5, #0
c0de6f0a:	2d03      	cmp	r5, #3
c0de6f0c:	d00d      	beq.n	c0de6f2a <USBD_LL_SOF+0x2e>
c0de6f0e:	f000 f80e 	bl	c0de6f2e <OUTLINED_FUNCTION_0>
c0de6f12:	b140      	cbz	r0, c0de6f26 <USBD_LL_SOF+0x2a>
c0de6f14:	f000 f814 	bl	c0de6f40 <OUTLINED_FUNCTION_2>
c0de6f18:	69c0      	ldr	r0, [r0, #28]
c0de6f1a:	b120      	cbz	r0, c0de6f26 <USBD_LL_SOF+0x2a>
c0de6f1c:	f002 fbc0 	bl	c0de96a0 <pic>
c0de6f20:	4601      	mov	r1, r0
c0de6f22:	4620      	mov	r0, r4
c0de6f24:	4788      	blx	r1
c0de6f26:	3501      	adds	r5, #1
c0de6f28:	e7ef      	b.n	c0de6f0a <USBD_LL_SOF+0xe>
c0de6f2a:	2000      	movs	r0, #0
c0de6f2c:	bdb0      	pop	{r4, r5, r7, pc}

c0de6f2e <OUTLINED_FUNCTION_0>:
c0de6f2e:	4620      	mov	r0, r4
c0de6f30:	4629      	mov	r1, r5
c0de6f32:	f000 b80e 	b.w	c0de6f52 <usbd_is_valid_intf>

c0de6f36 <OUTLINED_FUNCTION_1>:
c0de6f36:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de6f3a:	6840      	ldr	r0, [r0, #4]
c0de6f3c:	f002 bbb0 	b.w	c0de96a0 <pic>

c0de6f40 <OUTLINED_FUNCTION_2>:
c0de6f40:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de6f44:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de6f48:	4770      	bx	lr

c0de6f4a <OUTLINED_FUNCTION_3>:
c0de6f4a:	7921      	ldrb	r1, [r4, #4]
c0de6f4c:	4602      	mov	r2, r0
c0de6f4e:	4620      	mov	r0, r4
c0de6f50:	4710      	bx	r2

c0de6f52 <usbd_is_valid_intf>:
c0de6f52:	2902      	cmp	r1, #2
c0de6f54:	bf84      	itt	hi
c0de6f56:	2000      	movhi	r0, #0
c0de6f58:	4770      	bxhi	lr
c0de6f5a:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de6f5e:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de6f62:	2800      	cmp	r0, #0
c0de6f64:	bf18      	it	ne
c0de6f66:	2001      	movne	r0, #1
c0de6f68:	4770      	bx	lr

c0de6f6a <USBD_StdDevReq>:
c0de6f6a:	b580      	push	{r7, lr}
c0de6f6c:	784a      	ldrb	r2, [r1, #1]
c0de6f6e:	b172      	cbz	r2, c0de6f8e <USBD_StdDevReq+0x24>
c0de6f70:	2a01      	cmp	r2, #1
c0de6f72:	d00f      	beq.n	c0de6f94 <USBD_StdDevReq+0x2a>
c0de6f74:	2a03      	cmp	r2, #3
c0de6f76:	d010      	beq.n	c0de6f9a <USBD_StdDevReq+0x30>
c0de6f78:	2a05      	cmp	r2, #5
c0de6f7a:	d011      	beq.n	c0de6fa0 <USBD_StdDevReq+0x36>
c0de6f7c:	2a09      	cmp	r2, #9
c0de6f7e:	d012      	beq.n	c0de6fa6 <USBD_StdDevReq+0x3c>
c0de6f80:	2a08      	cmp	r2, #8
c0de6f82:	d013      	beq.n	c0de6fac <USBD_StdDevReq+0x42>
c0de6f84:	2a06      	cmp	r2, #6
c0de6f86:	d114      	bne.n	c0de6fb2 <USBD_StdDevReq+0x48>
c0de6f88:	f000 f817 	bl	c0de6fba <USBD_GetDescriptor>
c0de6f8c:	e013      	b.n	c0de6fb6 <USBD_StdDevReq+0x4c>
c0de6f8e:	f000 f8fc 	bl	c0de718a <USBD_GetStatus>
c0de6f92:	e010      	b.n	c0de6fb6 <USBD_StdDevReq+0x4c>
c0de6f94:	f000 f936 	bl	c0de7204 <USBD_ClrFeature>
c0de6f98:	e00d      	b.n	c0de6fb6 <USBD_StdDevReq+0x4c>
c0de6f9a:	f000 f91a 	bl	c0de71d2 <USBD_SetFeature>
c0de6f9e:	e00a      	b.n	c0de6fb6 <USBD_StdDevReq+0x4c>
c0de6fa0:	f000 f888 	bl	c0de70b4 <USBD_SetAddress>
c0de6fa4:	e007      	b.n	c0de6fb6 <USBD_StdDevReq+0x4c>
c0de6fa6:	f000 f8a6 	bl	c0de70f6 <USBD_SetConfig>
c0de6faa:	e004      	b.n	c0de6fb6 <USBD_StdDevReq+0x4c>
c0de6fac:	f000 f8d9 	bl	c0de7162 <USBD_GetConfig>
c0de6fb0:	e001      	b.n	c0de6fb6 <USBD_StdDevReq+0x4c>
c0de6fb2:	f000 fc75 	bl	c0de78a0 <USBD_CtlError>
c0de6fb6:	2000      	movs	r0, #0
c0de6fb8:	bd80      	pop	{r7, pc}

c0de6fba <USBD_GetDescriptor>:
c0de6fba:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de6fbc:	460d      	mov	r5, r1
c0de6fbe:	4604      	mov	r4, r0
c0de6fc0:	2000      	movs	r0, #0
c0de6fc2:	8849      	ldrh	r1, [r1, #2]
c0de6fc4:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de6fc8:	2001      	movs	r0, #1
c0de6fca:	ebb0 2f11 	cmp.w	r0, r1, lsr #8
c0de6fce:	d026      	beq.n	c0de701e <USBD_GetDescriptor+0x64>
c0de6fd0:	0a08      	lsrs	r0, r1, #8
c0de6fd2:	2802      	cmp	r0, #2
c0de6fd4:	d02e      	beq.n	c0de7034 <USBD_GetDescriptor+0x7a>
c0de6fd6:	2803      	cmp	r0, #3
c0de6fd8:	d00a      	beq.n	c0de6ff0 <USBD_GetDescriptor+0x36>
c0de6fda:	2806      	cmp	r0, #6
c0de6fdc:	d031      	beq.n	c0de7042 <USBD_GetDescriptor+0x88>
c0de6fde:	2807      	cmp	r0, #7
c0de6fe0:	d016      	beq.n	c0de7010 <USBD_GetDescriptor+0x56>
c0de6fe2:	280f      	cmp	r0, #15
c0de6fe4:	d12f      	bne.n	c0de7046 <USBD_GetDescriptor+0x8c>
c0de6fe6:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de6fea:	69c0      	ldr	r0, [r0, #28]
c0de6fec:	b9d0      	cbnz	r0, c0de7024 <USBD_GetDescriptor+0x6a>
c0de6fee:	e02a      	b.n	c0de7046 <USBD_GetDescriptor+0x8c>
c0de6ff0:	b2c8      	uxtb	r0, r1
c0de6ff2:	2805      	cmp	r0, #5
c0de6ff4:	d04a      	beq.n	c0de708c <USBD_GetDescriptor+0xd2>
c0de6ff6:	2801      	cmp	r0, #1
c0de6ff8:	d04c      	beq.n	c0de7094 <USBD_GetDescriptor+0xda>
c0de6ffa:	2802      	cmp	r0, #2
c0de6ffc:	d04e      	beq.n	c0de709c <USBD_GetDescriptor+0xe2>
c0de6ffe:	2803      	cmp	r0, #3
c0de7000:	d050      	beq.n	c0de70a4 <USBD_GetDescriptor+0xea>
c0de7002:	2804      	cmp	r0, #4
c0de7004:	d052      	beq.n	c0de70ac <USBD_GetDescriptor+0xf2>
c0de7006:	b9f0      	cbnz	r0, c0de7046 <USBD_GetDescriptor+0x8c>
c0de7008:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de700c:	6840      	ldr	r0, [r0, #4]
c0de700e:	e009      	b.n	c0de7024 <USBD_GetDescriptor+0x6a>
c0de7010:	7c20      	ldrb	r0, [r4, #16]
c0de7012:	b9c0      	cbnz	r0, c0de7046 <USBD_GetDescriptor+0x8c>
c0de7014:	f8d4 0114 	ldr.w	r0, [r4, #276]	; 0x114
c0de7018:	b1a8      	cbz	r0, c0de7046 <USBD_GetDescriptor+0x8c>
c0de701a:	6b00      	ldr	r0, [r0, #48]	; 0x30
c0de701c:	e01f      	b.n	c0de705e <USBD_GetDescriptor+0xa4>
c0de701e:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de7022:	6800      	ldr	r0, [r0, #0]
c0de7024:	f002 fb3c 	bl	c0de96a0 <pic>
c0de7028:	4602      	mov	r2, r0
c0de702a:	7c20      	ldrb	r0, [r4, #16]
c0de702c:	f10d 0106 	add.w	r1, sp, #6
c0de7030:	4790      	blx	r2
c0de7032:	e01a      	b.n	c0de706a <USBD_GetDescriptor+0xb0>
c0de7034:	f8d4 0114 	ldr.w	r0, [r4, #276]	; 0x114
c0de7038:	b140      	cbz	r0, c0de704c <USBD_GetDescriptor+0x92>
c0de703a:	7c21      	ldrb	r1, [r4, #16]
c0de703c:	b171      	cbz	r1, c0de705c <USBD_GetDescriptor+0xa2>
c0de703e:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
c0de7040:	e00d      	b.n	c0de705e <USBD_GetDescriptor+0xa4>
c0de7042:	7c20      	ldrb	r0, [r4, #16]
c0de7044:	b120      	cbz	r0, c0de7050 <USBD_GetDescriptor+0x96>
c0de7046:	f000 f9ba 	bl	c0de73be <OUTLINED_FUNCTION_2>
c0de704a:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de704c:	2100      	movs	r1, #0
c0de704e:	e00d      	b.n	c0de706c <USBD_GetDescriptor+0xb2>
c0de7050:	f8d4 0114 	ldr.w	r0, [r4, #276]	; 0x114
c0de7054:	2800      	cmp	r0, #0
c0de7056:	d0f6      	beq.n	c0de7046 <USBD_GetDescriptor+0x8c>
c0de7058:	6b40      	ldr	r0, [r0, #52]	; 0x34
c0de705a:	e000      	b.n	c0de705e <USBD_GetDescriptor+0xa4>
c0de705c:	6a80      	ldr	r0, [r0, #40]	; 0x28
c0de705e:	f002 fb1f 	bl	c0de96a0 <pic>
c0de7062:	4601      	mov	r1, r0
c0de7064:	f10d 0006 	add.w	r0, sp, #6
c0de7068:	4788      	blx	r1
c0de706a:	4601      	mov	r1, r0
c0de706c:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de7070:	2800      	cmp	r0, #0
c0de7072:	d0ea      	beq.n	c0de704a <USBD_GetDescriptor+0x90>
c0de7074:	88ea      	ldrh	r2, [r5, #6]
c0de7076:	2a00      	cmp	r2, #0
c0de7078:	d0e7      	beq.n	c0de704a <USBD_GetDescriptor+0x90>
c0de707a:	4290      	cmp	r0, r2
c0de707c:	bf38      	it	cc
c0de707e:	4602      	movcc	r2, r0
c0de7080:	4620      	mov	r0, r4
c0de7082:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de7086:	f000 f9a4 	bl	c0de73d2 <USBD_CtlSendData>
c0de708a:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de708c:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de7090:	6980      	ldr	r0, [r0, #24]
c0de7092:	e7c7      	b.n	c0de7024 <USBD_GetDescriptor+0x6a>
c0de7094:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de7098:	6880      	ldr	r0, [r0, #8]
c0de709a:	e7c3      	b.n	c0de7024 <USBD_GetDescriptor+0x6a>
c0de709c:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de70a0:	68c0      	ldr	r0, [r0, #12]
c0de70a2:	e7bf      	b.n	c0de7024 <USBD_GetDescriptor+0x6a>
c0de70a4:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de70a8:	6900      	ldr	r0, [r0, #16]
c0de70aa:	e7bb      	b.n	c0de7024 <USBD_GetDescriptor+0x6a>
c0de70ac:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de70b0:	6940      	ldr	r0, [r0, #20]
c0de70b2:	e7b7      	b.n	c0de7024 <USBD_GetDescriptor+0x6a>

c0de70b4 <USBD_SetAddress>:
c0de70b4:	b5b0      	push	{r4, r5, r7, lr}
c0de70b6:	4604      	mov	r4, r0
c0de70b8:	8888      	ldrh	r0, [r1, #4]
c0de70ba:	b928      	cbnz	r0, c0de70c8 <USBD_SetAddress+0x14>
c0de70bc:	88c8      	ldrh	r0, [r1, #6]
c0de70be:	b918      	cbnz	r0, c0de70c8 <USBD_SetAddress+0x14>
c0de70c0:	f894 00fc 	ldrb.w	r0, [r4, #252]	; 0xfc
c0de70c4:	2803      	cmp	r0, #3
c0de70c6:	d104      	bne.n	c0de70d2 <USBD_SetAddress+0x1e>
c0de70c8:	4620      	mov	r0, r4
c0de70ca:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de70ce:	f000 bbe7 	b.w	c0de78a0 <USBD_CtlError>
c0de70d2:	7888      	ldrb	r0, [r1, #2]
c0de70d4:	f000 057f 	and.w	r5, r0, #127	; 0x7f
c0de70d8:	4620      	mov	r0, r4
c0de70da:	4629      	mov	r1, r5
c0de70dc:	f884 50fe 	strb.w	r5, [r4, #254]	; 0xfe
c0de70e0:	f000 fa78 	bl	c0de75d4 <USBD_LL_SetUSBAddress>
c0de70e4:	f000 f972 	bl	c0de73cc <OUTLINED_FUNCTION_4>
c0de70e8:	b10d      	cbz	r5, c0de70ee <USBD_SetAddress+0x3a>
c0de70ea:	2002      	movs	r0, #2
c0de70ec:	e000      	b.n	c0de70f0 <USBD_SetAddress+0x3c>
c0de70ee:	2001      	movs	r0, #1
c0de70f0:	f884 00fc 	strb.w	r0, [r4, #252]	; 0xfc
c0de70f4:	bdb0      	pop	{r4, r5, r7, pc}

c0de70f6 <USBD_SetConfig>:
c0de70f6:	b570      	push	{r4, r5, r6, lr}
c0de70f8:	788e      	ldrb	r6, [r1, #2]
c0de70fa:	460d      	mov	r5, r1
c0de70fc:	4604      	mov	r4, r0
c0de70fe:	2e02      	cmp	r6, #2
c0de7100:	d219      	bcs.n	c0de7136 <USBD_SetConfig+0x40>
c0de7102:	f894 00fc 	ldrb.w	r0, [r4, #252]	; 0xfc
c0de7106:	2803      	cmp	r0, #3
c0de7108:	d006      	beq.n	c0de7118 <USBD_SetConfig+0x22>
c0de710a:	2802      	cmp	r0, #2
c0de710c:	d113      	bne.n	c0de7136 <USBD_SetConfig+0x40>
c0de710e:	b31e      	cbz	r6, c0de7158 <USBD_SetConfig+0x62>
c0de7110:	2003      	movs	r0, #3
c0de7112:	f884 00fc 	strb.w	r0, [r4, #252]	; 0xfc
c0de7116:	e007      	b.n	c0de7128 <USBD_SetConfig+0x32>
c0de7118:	b19e      	cbz	r6, c0de7142 <USBD_SetConfig+0x4c>
c0de711a:	6860      	ldr	r0, [r4, #4]
c0de711c:	42b0      	cmp	r0, r6
c0de711e:	d01b      	beq.n	c0de7158 <USBD_SetConfig+0x62>
c0de7120:	b2c1      	uxtb	r1, r0
c0de7122:	4620      	mov	r0, r4
c0de7124:	f7ff fdd0 	bl	c0de6cc8 <USBD_ClrClassConfig>
c0de7128:	4620      	mov	r0, r4
c0de712a:	4631      	mov	r1, r6
c0de712c:	6066      	str	r6, [r4, #4]
c0de712e:	f7ff fdb1 	bl	c0de6c94 <USBD_SetClassConfig>
c0de7132:	2802      	cmp	r0, #2
c0de7134:	d110      	bne.n	c0de7158 <USBD_SetConfig+0x62>
c0de7136:	4620      	mov	r0, r4
c0de7138:	4629      	mov	r1, r5
c0de713a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de713e:	f000 bbaf 	b.w	c0de78a0 <USBD_CtlError>
c0de7142:	2000      	movs	r0, #0
c0de7144:	4631      	mov	r1, r6
c0de7146:	6060      	str	r0, [r4, #4]
c0de7148:	2002      	movs	r0, #2
c0de714a:	f884 00fc 	strb.w	r0, [r4, #252]	; 0xfc
c0de714e:	4620      	mov	r0, r4
c0de7150:	f7ff fdba 	bl	c0de6cc8 <USBD_ClrClassConfig>
c0de7154:	f000 f93a 	bl	c0de73cc <OUTLINED_FUNCTION_4>
c0de7158:	4620      	mov	r0, r4
c0de715a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de715e:	f000 b959 	b.w	c0de7414 <USBD_CtlSendStatus>

c0de7162 <USBD_GetConfig>:
c0de7162:	88ca      	ldrh	r2, [r1, #6]
c0de7164:	2a01      	cmp	r2, #1
c0de7166:	d10a      	bne.n	c0de717e <USBD_GetConfig+0x1c>
c0de7168:	f890 20fc 	ldrb.w	r2, [r0, #252]	; 0xfc
c0de716c:	2a03      	cmp	r2, #3
c0de716e:	d008      	beq.n	c0de7182 <USBD_GetConfig+0x20>
c0de7170:	2a02      	cmp	r2, #2
c0de7172:	d104      	bne.n	c0de717e <USBD_GetConfig+0x1c>
c0de7174:	2200      	movs	r2, #0
c0de7176:	4601      	mov	r1, r0
c0de7178:	f841 2f08 	str.w	r2, [r1, #8]!
c0de717c:	e002      	b.n	c0de7184 <USBD_GetConfig+0x22>
c0de717e:	f000 bb8f 	b.w	c0de78a0 <USBD_CtlError>
c0de7182:	1d01      	adds	r1, r0, #4
c0de7184:	2201      	movs	r2, #1
c0de7186:	f000 b924 	b.w	c0de73d2 <USBD_CtlSendData>

c0de718a <USBD_GetStatus>:
c0de718a:	b5b0      	push	{r4, r5, r7, lr}
c0de718c:	4604      	mov	r4, r0
c0de718e:	f890 00fc 	ldrb.w	r0, [r0, #252]	; 0xfc
c0de7192:	f000 00fe 	and.w	r0, r0, #254	; 0xfe
c0de7196:	2802      	cmp	r0, #2
c0de7198:	d10d      	bne.n	c0de71b6 <USBD_GetStatus+0x2c>
c0de719a:	2001      	movs	r0, #1
c0de719c:	4625      	mov	r5, r4
c0de719e:	f845 0f0c 	str.w	r0, [r5, #12]!
c0de71a2:	f8d5 00f8 	ldr.w	r0, [r5, #248]	; 0xf8
c0de71a6:	b158      	cbz	r0, c0de71c0 <USBD_GetStatus+0x36>
c0de71a8:	4620      	mov	r0, r4
c0de71aa:	f000 f93e 	bl	c0de742a <USBD_CtlReceiveStatus>
c0de71ae:	68e0      	ldr	r0, [r4, #12]
c0de71b0:	f040 0002 	orr.w	r0, r0, #2
c0de71b4:	e005      	b.n	c0de71c2 <USBD_GetStatus+0x38>
c0de71b6:	4620      	mov	r0, r4
c0de71b8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de71bc:	f000 bb70 	b.w	c0de78a0 <USBD_CtlError>
c0de71c0:	2003      	movs	r0, #3
c0de71c2:	60e0      	str	r0, [r4, #12]
c0de71c4:	4620      	mov	r0, r4
c0de71c6:	4629      	mov	r1, r5
c0de71c8:	2202      	movs	r2, #2
c0de71ca:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de71ce:	f000 b900 	b.w	c0de73d2 <USBD_CtlSendData>

c0de71d2 <USBD_SetFeature>:
c0de71d2:	b5b0      	push	{r4, r5, r7, lr}
c0de71d4:	4604      	mov	r4, r0
c0de71d6:	8848      	ldrh	r0, [r1, #2]
c0de71d8:	2801      	cmp	r0, #1
c0de71da:	bf18      	it	ne
c0de71dc:	bdb0      	popne	{r4, r5, r7, pc}
c0de71de:	2001      	movs	r0, #1
c0de71e0:	460d      	mov	r5, r1
c0de71e2:	f8c4 0104 	str.w	r0, [r4, #260]	; 0x104
c0de71e6:	7908      	ldrb	r0, [r1, #4]
c0de71e8:	2802      	cmp	r0, #2
c0de71ea:	d806      	bhi.n	c0de71fa <USBD_SetFeature+0x28>
c0de71ec:	f000 f8e1 	bl	c0de73b2 <OUTLINED_FUNCTION_1>
c0de71f0:	d003      	beq.n	c0de71fa <USBD_SetFeature+0x28>
c0de71f2:	f000 f8e8 	bl	c0de73c6 <OUTLINED_FUNCTION_3>
c0de71f6:	f000 f8d8 	bl	c0de73aa <OUTLINED_FUNCTION_0>
c0de71fa:	4620      	mov	r0, r4
c0de71fc:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de7200:	f000 b908 	b.w	c0de7414 <USBD_CtlSendStatus>

c0de7204 <USBD_ClrFeature>:
c0de7204:	b5b0      	push	{r4, r5, r7, lr}
c0de7206:	4604      	mov	r4, r0
c0de7208:	f890 00fc 	ldrb.w	r0, [r0, #252]	; 0xfc
c0de720c:	460d      	mov	r5, r1
c0de720e:	f000 00fe 	and.w	r0, r0, #254	; 0xfe
c0de7212:	2802      	cmp	r0, #2
c0de7214:	d115      	bne.n	c0de7242 <USBD_ClrFeature+0x3e>
c0de7216:	8868      	ldrh	r0, [r5, #2]
c0de7218:	2801      	cmp	r0, #1
c0de721a:	bf18      	it	ne
c0de721c:	bdb0      	popne	{r4, r5, r7, pc}
c0de721e:	2000      	movs	r0, #0
c0de7220:	f8c4 0104 	str.w	r0, [r4, #260]	; 0x104
c0de7224:	7928      	ldrb	r0, [r5, #4]
c0de7226:	2802      	cmp	r0, #2
c0de7228:	d806      	bhi.n	c0de7238 <USBD_ClrFeature+0x34>
c0de722a:	f000 f8c2 	bl	c0de73b2 <OUTLINED_FUNCTION_1>
c0de722e:	d003      	beq.n	c0de7238 <USBD_ClrFeature+0x34>
c0de7230:	f000 f8c9 	bl	c0de73c6 <OUTLINED_FUNCTION_3>
c0de7234:	f000 f8b9 	bl	c0de73aa <OUTLINED_FUNCTION_0>
c0de7238:	4620      	mov	r0, r4
c0de723a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de723e:	f000 b8e9 	b.w	c0de7414 <USBD_CtlSendStatus>
c0de7242:	4620      	mov	r0, r4
c0de7244:	4629      	mov	r1, r5
c0de7246:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de724a:	f000 bb29 	b.w	c0de78a0 <USBD_CtlError>

c0de724e <USBD_StdItfReq>:
c0de724e:	b5b0      	push	{r4, r5, r7, lr}
c0de7250:	4604      	mov	r4, r0
c0de7252:	f890 00fc 	ldrb.w	r0, [r0, #252]	; 0xfc
c0de7256:	460d      	mov	r5, r1
c0de7258:	2803      	cmp	r0, #3
c0de725a:	d10e      	bne.n	c0de727a <USBD_StdItfReq+0x2c>
c0de725c:	7928      	ldrb	r0, [r5, #4]
c0de725e:	2802      	cmp	r0, #2
c0de7260:	d80b      	bhi.n	c0de727a <USBD_StdItfReq+0x2c>
c0de7262:	f000 f8a6 	bl	c0de73b2 <OUTLINED_FUNCTION_1>
c0de7266:	d008      	beq.n	c0de727a <USBD_StdItfReq+0x2c>
c0de7268:	f000 f8ad 	bl	c0de73c6 <OUTLINED_FUNCTION_3>
c0de726c:	f000 f89d 	bl	c0de73aa <OUTLINED_FUNCTION_0>
c0de7270:	88e8      	ldrh	r0, [r5, #6]
c0de7272:	b920      	cbnz	r0, c0de727e <USBD_StdItfReq+0x30>
c0de7274:	f000 f8aa 	bl	c0de73cc <OUTLINED_FUNCTION_4>
c0de7278:	e001      	b.n	c0de727e <USBD_StdItfReq+0x30>
c0de727a:	f000 f8a0 	bl	c0de73be <OUTLINED_FUNCTION_2>
c0de727e:	2000      	movs	r0, #0
c0de7280:	bdb0      	pop	{r4, r5, r7, pc}

c0de7282 <USBD_StdEPReq>:
c0de7282:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de7284:	460d      	mov	r5, r1
c0de7286:	7909      	ldrb	r1, [r1, #4]
c0de7288:	4604      	mov	r4, r0
c0de728a:	f001 007f 	and.w	r0, r1, #127	; 0x7f
c0de728e:	2808      	cmp	r0, #8
c0de7290:	d302      	bcc.n	c0de7298 <USBD_StdEPReq+0x16>
c0de7292:	f000 f894 	bl	c0de73be <OUTLINED_FUNCTION_2>
c0de7296:	e067      	b.n	c0de7368 <USBD_StdEPReq+0xe6>
c0de7298:	2902      	cmp	r1, #2
c0de729a:	d80f      	bhi.n	c0de72bc <USBD_StdEPReq+0x3a>
c0de729c:	782a      	ldrb	r2, [r5, #0]
c0de729e:	f002 0260 	and.w	r2, r2, #96	; 0x60
c0de72a2:	2a20      	cmp	r2, #32
c0de72a4:	d10a      	bne.n	c0de72bc <USBD_StdEPReq+0x3a>
c0de72a6:	eb04 02c1 	add.w	r2, r4, r1, lsl #3
c0de72aa:	f8d2 2114 	ldr.w	r2, [r2, #276]	; 0x114
c0de72ae:	b12a      	cbz	r2, c0de72bc <USBD_StdEPReq+0x3a>
c0de72b0:	6890      	ldr	r0, [r2, #8]
c0de72b2:	f002 f9f5 	bl	c0de96a0 <pic>
c0de72b6:	f000 f878 	bl	c0de73aa <OUTLINED_FUNCTION_0>
c0de72ba:	e055      	b.n	c0de7368 <USBD_StdEPReq+0xe6>
c0de72bc:	786a      	ldrb	r2, [r5, #1]
c0de72be:	b152      	cbz	r2, c0de72d6 <USBD_StdEPReq+0x54>
c0de72c0:	2a01      	cmp	r2, #1
c0de72c2:	d010      	beq.n	c0de72e6 <USBD_StdEPReq+0x64>
c0de72c4:	2a03      	cmp	r2, #3
c0de72c6:	d14f      	bne.n	c0de7368 <USBD_StdEPReq+0xe6>
c0de72c8:	f894 00fc 	ldrb.w	r0, [r4, #252]	; 0xfc
c0de72cc:	2803      	cmp	r0, #3
c0de72ce:	d018      	beq.n	c0de7302 <USBD_StdEPReq+0x80>
c0de72d0:	2802      	cmp	r0, #2
c0de72d2:	d00e      	beq.n	c0de72f2 <USBD_StdEPReq+0x70>
c0de72d4:	e7dd      	b.n	c0de7292 <USBD_StdEPReq+0x10>
c0de72d6:	f894 20fc 	ldrb.w	r2, [r4, #252]	; 0xfc
c0de72da:	2a03      	cmp	r2, #3
c0de72dc:	d027      	beq.n	c0de732e <USBD_StdEPReq+0xac>
c0de72de:	2a02      	cmp	r2, #2
c0de72e0:	d1d7      	bne.n	c0de7292 <USBD_StdEPReq+0x10>
c0de72e2:	b950      	cbnz	r0, c0de72fa <USBD_StdEPReq+0x78>
c0de72e4:	e040      	b.n	c0de7368 <USBD_StdEPReq+0xe6>
c0de72e6:	f894 20fc 	ldrb.w	r2, [r4, #252]	; 0xfc
c0de72ea:	2a03      	cmp	r2, #3
c0de72ec:	d02e      	beq.n	c0de734c <USBD_StdEPReq+0xca>
c0de72ee:	2a02      	cmp	r2, #2
c0de72f0:	d1cf      	bne.n	c0de7292 <USBD_StdEPReq+0x10>
c0de72f2:	f041 0080 	orr.w	r0, r1, #128	; 0x80
c0de72f6:	2880      	cmp	r0, #128	; 0x80
c0de72f8:	d036      	beq.n	c0de7368 <USBD_StdEPReq+0xe6>
c0de72fa:	4620      	mov	r0, r4
c0de72fc:	f000 f916 	bl	c0de752c <USBD_LL_StallEP>
c0de7300:	e032      	b.n	c0de7368 <USBD_StdEPReq+0xe6>
c0de7302:	8868      	ldrh	r0, [r5, #2]
c0de7304:	b938      	cbnz	r0, c0de7316 <USBD_StdEPReq+0x94>
c0de7306:	f041 0080 	orr.w	r0, r1, #128	; 0x80
c0de730a:	2880      	cmp	r0, #128	; 0x80
c0de730c:	d003      	beq.n	c0de7316 <USBD_StdEPReq+0x94>
c0de730e:	4620      	mov	r0, r4
c0de7310:	f000 f90c 	bl	c0de752c <USBD_LL_StallEP>
c0de7314:	7929      	ldrb	r1, [r5, #4]
c0de7316:	2902      	cmp	r1, #2
c0de7318:	d824      	bhi.n	c0de7364 <USBD_StdEPReq+0xe2>
c0de731a:	eb04 00c1 	add.w	r0, r4, r1, lsl #3
c0de731e:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de7322:	b1f8      	cbz	r0, c0de7364 <USBD_StdEPReq+0xe2>
c0de7324:	f000 f84f 	bl	c0de73c6 <OUTLINED_FUNCTION_3>
c0de7328:	f000 f83f 	bl	c0de73aa <OUTLINED_FUNCTION_0>
c0de732c:	e01a      	b.n	c0de7364 <USBD_StdEPReq+0xe2>
c0de732e:	4620      	mov	r0, r4
c0de7330:	f000 f93c 	bl	c0de75ac <USBD_LL_IsStallEP>
c0de7334:	2800      	cmp	r0, #0
c0de7336:	bf18      	it	ne
c0de7338:	2001      	movne	r0, #1
c0de733a:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de733e:	f10d 0106 	add.w	r1, sp, #6
c0de7342:	4620      	mov	r0, r4
c0de7344:	2202      	movs	r2, #2
c0de7346:	f000 f844 	bl	c0de73d2 <USBD_CtlSendData>
c0de734a:	e00d      	b.n	c0de7368 <USBD_StdEPReq+0xe6>
c0de734c:	886a      	ldrh	r2, [r5, #2]
c0de734e:	b95a      	cbnz	r2, c0de7368 <USBD_StdEPReq+0xe6>
c0de7350:	b140      	cbz	r0, c0de7364 <USBD_StdEPReq+0xe2>
c0de7352:	4620      	mov	r0, r4
c0de7354:	f000 f90a 	bl	c0de756c <USBD_LL_ClearStallEP>
c0de7358:	7928      	ldrb	r0, [r5, #4]
c0de735a:	2802      	cmp	r0, #2
c0de735c:	d802      	bhi.n	c0de7364 <USBD_StdEPReq+0xe2>
c0de735e:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de7362:	e7dc      	b.n	c0de731e <USBD_StdEPReq+0x9c>
c0de7364:	f000 f832 	bl	c0de73cc <OUTLINED_FUNCTION_4>
c0de7368:	2000      	movs	r0, #0
c0de736a:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de736c <USBD_ParseSetupRequest>:
c0de736c:	780a      	ldrb	r2, [r1, #0]
c0de736e:	7002      	strb	r2, [r0, #0]
c0de7370:	784a      	ldrb	r2, [r1, #1]
c0de7372:	7042      	strb	r2, [r0, #1]
c0de7374:	788a      	ldrb	r2, [r1, #2]
c0de7376:	78cb      	ldrb	r3, [r1, #3]
c0de7378:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de737c:	8042      	strh	r2, [r0, #2]
c0de737e:	790a      	ldrb	r2, [r1, #4]
c0de7380:	794b      	ldrb	r3, [r1, #5]
c0de7382:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7386:	8082      	strh	r2, [r0, #4]
c0de7388:	798a      	ldrb	r2, [r1, #6]
c0de738a:	79c9      	ldrb	r1, [r1, #7]
c0de738c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de7390:	80c1      	strh	r1, [r0, #6]
c0de7392:	4770      	bx	lr

c0de7394 <USBD_CtlStall>:
c0de7394:	b510      	push	{r4, lr}
c0de7396:	2180      	movs	r1, #128	; 0x80
c0de7398:	4604      	mov	r4, r0
c0de739a:	f000 f8c7 	bl	c0de752c <USBD_LL_StallEP>
c0de739e:	4620      	mov	r0, r4
c0de73a0:	2100      	movs	r1, #0
c0de73a2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de73a6:	f000 b8c1 	b.w	c0de752c <USBD_LL_StallEP>

c0de73aa <OUTLINED_FUNCTION_0>:
c0de73aa:	4602      	mov	r2, r0
c0de73ac:	4620      	mov	r0, r4
c0de73ae:	4629      	mov	r1, r5
c0de73b0:	4710      	bx	r2

c0de73b2 <OUTLINED_FUNCTION_1>:
c0de73b2:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de73b6:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de73ba:	2800      	cmp	r0, #0
c0de73bc:	4770      	bx	lr

c0de73be <OUTLINED_FUNCTION_2>:
c0de73be:	4620      	mov	r0, r4
c0de73c0:	4629      	mov	r1, r5
c0de73c2:	f000 ba6d 	b.w	c0de78a0 <USBD_CtlError>

c0de73c6 <OUTLINED_FUNCTION_3>:
c0de73c6:	6880      	ldr	r0, [r0, #8]
c0de73c8:	f002 b96a 	b.w	c0de96a0 <pic>

c0de73cc <OUTLINED_FUNCTION_4>:
c0de73cc:	4620      	mov	r0, r4
c0de73ce:	f000 b821 	b.w	c0de7414 <USBD_CtlSendStatus>

c0de73d2 <USBD_CtlSendData>:
c0de73d2:	b510      	push	{r4, lr}
c0de73d4:	460c      	mov	r4, r1
c0de73d6:	f8c0 1130 	str.w	r1, [r0, #304]	; 0x130
c0de73da:	2102      	movs	r1, #2
c0de73dc:	e9c0 2206 	strd	r2, r2, [r0, #24]
c0de73e0:	f8c0 10f4 	str.w	r1, [r0, #244]	; 0xf4
c0de73e4:	6a01      	ldr	r1, [r0, #32]
c0de73e6:	4291      	cmp	r1, r2
c0de73e8:	bf88      	it	hi
c0de73ea:	4611      	movhi	r1, r2
c0de73ec:	f000 f829 	bl	c0de7442 <OUTLINED_FUNCTION_1>
c0de73f0:	2000      	movs	r0, #0
c0de73f2:	bd10      	pop	{r4, pc}

c0de73f4 <USBD_CtlContinueSendData>:
c0de73f4:	b510      	push	{r4, lr}
c0de73f6:	460c      	mov	r4, r1
c0de73f8:	6a01      	ldr	r1, [r0, #32]
c0de73fa:	4291      	cmp	r1, r2
c0de73fc:	bf88      	it	hi
c0de73fe:	4611      	movhi	r1, r2
c0de7400:	f000 f81f 	bl	c0de7442 <OUTLINED_FUNCTION_1>
c0de7404:	2000      	movs	r0, #0
c0de7406:	bd10      	pop	{r4, pc}

c0de7408 <USBD_CtlContinueRx>:
c0de7408:	b580      	push	{r7, lr}
c0de740a:	2100      	movs	r1, #0
c0de740c:	f000 f916 	bl	c0de763c <USBD_LL_PrepareReceive>
c0de7410:	2000      	movs	r0, #0
c0de7412:	bd80      	pop	{r7, pc}

c0de7414 <USBD_CtlSendStatus>:
c0de7414:	b580      	push	{r7, lr}
c0de7416:	2104      	movs	r1, #4
c0de7418:	2200      	movs	r2, #0
c0de741a:	2300      	movs	r3, #0
c0de741c:	f8c0 10f4 	str.w	r1, [r0, #244]	; 0xf4
c0de7420:	2100      	movs	r1, #0
c0de7422:	f000 f8ed 	bl	c0de7600 <USBD_LL_Transmit>
c0de7426:	2000      	movs	r0, #0
c0de7428:	bd80      	pop	{r7, pc}

c0de742a <USBD_CtlReceiveStatus>:
c0de742a:	b580      	push	{r7, lr}
c0de742c:	2105      	movs	r1, #5
c0de742e:	2200      	movs	r2, #0
c0de7430:	f000 f802 	bl	c0de7438 <OUTLINED_FUNCTION_0>
c0de7434:	2000      	movs	r0, #0
c0de7436:	bd80      	pop	{r7, pc}

c0de7438 <OUTLINED_FUNCTION_0>:
c0de7438:	f8c0 10f4 	str.w	r1, [r0, #244]	; 0xf4
c0de743c:	2100      	movs	r1, #0
c0de743e:	f000 b8fd 	b.w	c0de763c <USBD_LL_PrepareReceive>

c0de7442 <OUTLINED_FUNCTION_1>:
c0de7442:	b28b      	uxth	r3, r1
c0de7444:	4622      	mov	r2, r4
c0de7446:	2100      	movs	r1, #0
c0de7448:	f000 b8da 	b.w	c0de7600 <USBD_LL_Transmit>

c0de744c <USBD_LL_Init>:
c0de744c:	4804      	ldr	r0, [pc, #16]	; (c0de7460 <USBD_LL_Init+0x14>)
c0de744e:	2100      	movs	r1, #0
c0de7450:	f849 1000 	str.w	r1, [r9, r0]
c0de7454:	4803      	ldr	r0, [pc, #12]	; (c0de7464 <USBD_LL_Init+0x18>)
c0de7456:	f849 1000 	str.w	r1, [r9, r0]
c0de745a:	2000      	movs	r0, #0
c0de745c:	4770      	bx	lr
c0de745e:	bf00      	nop
c0de7460:	0000657c 	.word	0x0000657c
c0de7464:	00006578 	.word	0x00006578

c0de7468 <USBD_LL_DeInit>:
c0de7468:	b5e0      	push	{r5, r6, r7, lr}
c0de746a:	f000 f90e 	bl	c0de768a <OUTLINED_FUNCTION_1>
c0de746e:	a801      	add	r0, sp, #4
c0de7470:	f002 f9d8 	bl	c0de9824 <io_seph_send>
c0de7474:	2000      	movs	r0, #0
c0de7476:	bd8c      	pop	{r2, r3, r7, pc}

c0de7478 <USBD_LL_Start>:
c0de7478:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0de747a:	2003      	movs	r0, #3
c0de747c:	f10d 0403 	add.w	r4, sp, #3
c0de7480:	2500      	movs	r5, #0
c0de7482:	264f      	movs	r6, #79	; 0x4f
c0de7484:	2105      	movs	r1, #5
c0de7486:	f88d 0006 	strb.w	r0, [sp, #6]
c0de748a:	2002      	movs	r0, #2
c0de748c:	f88d 5007 	strb.w	r5, [sp, #7]
c0de7490:	f88d 5004 	strb.w	r5, [sp, #4]
c0de7494:	f88d 6003 	strb.w	r6, [sp, #3]
c0de7498:	f000 f905 	bl	c0de76a6 <OUTLINED_FUNCTION_2>
c0de749c:	2001      	movs	r0, #1
c0de749e:	2104      	movs	r1, #4
c0de74a0:	f88d 5004 	strb.w	r5, [sp, #4]
c0de74a4:	f88d 6003 	strb.w	r6, [sp, #3]
c0de74a8:	f88d 0006 	strb.w	r0, [sp, #6]
c0de74ac:	f000 f8fb 	bl	c0de76a6 <OUTLINED_FUNCTION_2>
c0de74b0:	2000      	movs	r0, #0
c0de74b2:	bd7c      	pop	{r2, r3, r4, r5, r6, pc}

c0de74b4 <USBD_LL_Stop>:
c0de74b4:	b5e0      	push	{r5, r6, r7, lr}
c0de74b6:	f000 f8e8 	bl	c0de768a <OUTLINED_FUNCTION_1>
c0de74ba:	a801      	add	r0, sp, #4
c0de74bc:	f002 f9b2 	bl	c0de9824 <io_seph_send>
c0de74c0:	2000      	movs	r0, #0
c0de74c2:	bd8c      	pop	{r2, r3, r7, pc}

c0de74c4 <USBD_LL_OpenEP>:
c0de74c4:	b51c      	push	{r2, r3, r4, lr}
c0de74c6:	4817      	ldr	r0, [pc, #92]	; (c0de7524 <USBD_LL_OpenEP+0x60>)
c0de74c8:	2400      	movs	r4, #0
c0de74ca:	f88d 1005 	strb.w	r1, [sp, #5]
c0de74ce:	2104      	movs	r1, #4
c0de74d0:	f88d 1003 	strb.w	r1, [sp, #3]
c0de74d4:	2105      	movs	r1, #5
c0de74d6:	f88d 4006 	strb.w	r4, [sp, #6]
c0de74da:	f88d 4001 	strb.w	r4, [sp, #1]
c0de74de:	f849 4000 	str.w	r4, [r9, r0]
c0de74e2:	4811      	ldr	r0, [pc, #68]	; (c0de7528 <USBD_LL_OpenEP+0x64>)
c0de74e4:	f88d 1002 	strb.w	r1, [sp, #2]
c0de74e8:	214f      	movs	r1, #79	; 0x4f
c0de74ea:	f88d 1000 	strb.w	r1, [sp]
c0de74ee:	f849 4000 	str.w	r4, [r9, r0]
c0de74f2:	2001      	movs	r0, #1
c0de74f4:	f88d 0004 	strb.w	r0, [sp, #4]
c0de74f8:	b152      	cbz	r2, c0de7510 <USBD_LL_OpenEP+0x4c>
c0de74fa:	2a03      	cmp	r2, #3
c0de74fc:	d005      	beq.n	c0de750a <USBD_LL_OpenEP+0x46>
c0de74fe:	2a02      	cmp	r2, #2
c0de7500:	d005      	beq.n	c0de750e <USBD_LL_OpenEP+0x4a>
c0de7502:	2a01      	cmp	r2, #1
c0de7504:	d106      	bne.n	c0de7514 <USBD_LL_OpenEP+0x50>
c0de7506:	2004      	movs	r0, #4
c0de7508:	e002      	b.n	c0de7510 <USBD_LL_OpenEP+0x4c>
c0de750a:	2002      	movs	r0, #2
c0de750c:	e000      	b.n	c0de7510 <USBD_LL_OpenEP+0x4c>
c0de750e:	2003      	movs	r0, #3
c0de7510:	f88d 0006 	strb.w	r0, [sp, #6]
c0de7514:	4668      	mov	r0, sp
c0de7516:	2108      	movs	r1, #8
c0de7518:	f88d 3007 	strb.w	r3, [sp, #7]
c0de751c:	f002 f982 	bl	c0de9824 <io_seph_send>
c0de7520:	2000      	movs	r0, #0
c0de7522:	bd1c      	pop	{r2, r3, r4, pc}
c0de7524:	00006578 	.word	0x00006578
c0de7528:	0000657c 	.word	0x0000657c

c0de752c <USBD_LL_StallEP>:
c0de752c:	b51c      	push	{r2, r3, r4, lr}
c0de752e:	460c      	mov	r4, r1
c0de7530:	2000      	movs	r0, #0
c0de7532:	2140      	movs	r1, #64	; 0x40
c0de7534:	f000 f89a 	bl	c0de766c <OUTLINED_FUNCTION_0>
c0de7538:	f10d 0002 	add.w	r0, sp, #2
c0de753c:	2106      	movs	r1, #6
c0de753e:	f002 f971 	bl	c0de9824 <io_seph_send>
c0de7542:	4909      	ldr	r1, [pc, #36]	; (c0de7568 <USBD_LL_StallEP+0x3c>)
c0de7544:	0622      	lsls	r2, r4, #24
c0de7546:	4807      	ldr	r0, [pc, #28]	; (c0de7564 <USBD_LL_StallEP+0x38>)
c0de7548:	f004 027f 	and.w	r2, r4, #127	; 0x7f
c0de754c:	4449      	add	r1, r9
c0de754e:	bf58      	it	pl
c0de7550:	eb09 0100 	addpl.w	r1, r9, r0
c0de7554:	2301      	movs	r3, #1
c0de7556:	6808      	ldr	r0, [r1, #0]
c0de7558:	fa03 f202 	lsl.w	r2, r3, r2
c0de755c:	4310      	orrs	r0, r2
c0de755e:	6008      	str	r0, [r1, #0]
c0de7560:	2000      	movs	r0, #0
c0de7562:	bd1c      	pop	{r2, r3, r4, pc}
c0de7564:	0000657c 	.word	0x0000657c
c0de7568:	00006578 	.word	0x00006578

c0de756c <USBD_LL_ClearStallEP>:
c0de756c:	b51c      	push	{r2, r3, r4, lr}
c0de756e:	460c      	mov	r4, r1
c0de7570:	2000      	movs	r0, #0
c0de7572:	2180      	movs	r1, #128	; 0x80
c0de7574:	f000 f87a 	bl	c0de766c <OUTLINED_FUNCTION_0>
c0de7578:	f10d 0002 	add.w	r0, sp, #2
c0de757c:	2106      	movs	r1, #6
c0de757e:	f002 f951 	bl	c0de9824 <io_seph_send>
c0de7582:	4909      	ldr	r1, [pc, #36]	; (c0de75a8 <USBD_LL_ClearStallEP+0x3c>)
c0de7584:	0622      	lsls	r2, r4, #24
c0de7586:	4807      	ldr	r0, [pc, #28]	; (c0de75a4 <USBD_LL_ClearStallEP+0x38>)
c0de7588:	f004 027f 	and.w	r2, r4, #127	; 0x7f
c0de758c:	4449      	add	r1, r9
c0de758e:	bf58      	it	pl
c0de7590:	eb09 0100 	addpl.w	r1, r9, r0
c0de7594:	2301      	movs	r3, #1
c0de7596:	6808      	ldr	r0, [r1, #0]
c0de7598:	fa03 f202 	lsl.w	r2, r3, r2
c0de759c:	4390      	bics	r0, r2
c0de759e:	6008      	str	r0, [r1, #0]
c0de75a0:	2000      	movs	r0, #0
c0de75a2:	bd1c      	pop	{r2, r3, r4, pc}
c0de75a4:	0000657c 	.word	0x0000657c
c0de75a8:	00006578 	.word	0x00006578

c0de75ac <USBD_LL_IsStallEP>:
c0de75ac:	4a08      	ldr	r2, [pc, #32]	; (c0de75d0 <USBD_LL_IsStallEP+0x24>)
c0de75ae:	060b      	lsls	r3, r1, #24
c0de75b0:	4806      	ldr	r0, [pc, #24]	; (c0de75cc <USBD_LL_IsStallEP+0x20>)
c0de75b2:	f001 017f 	and.w	r1, r1, #127	; 0x7f
c0de75b6:	444a      	add	r2, r9
c0de75b8:	bf58      	it	pl
c0de75ba:	eb09 0200 	addpl.w	r2, r9, r0
c0de75be:	7810      	ldrb	r0, [r2, #0]
c0de75c0:	2201      	movs	r2, #1
c0de75c2:	fa02 f101 	lsl.w	r1, r2, r1
c0de75c6:	4008      	ands	r0, r1
c0de75c8:	4770      	bx	lr
c0de75ca:	bf00      	nop
c0de75cc:	0000657c 	.word	0x0000657c
c0de75d0:	00006578 	.word	0x00006578

c0de75d4 <USBD_LL_SetUSBAddress>:
c0de75d4:	b5e0      	push	{r5, r6, r7, lr}
c0de75d6:	2003      	movs	r0, #3
c0de75d8:	f88d 1007 	strb.w	r1, [sp, #7]
c0de75dc:	2105      	movs	r1, #5
c0de75de:	f88d 0006 	strb.w	r0, [sp, #6]
c0de75e2:	2002      	movs	r0, #2
c0de75e4:	f88d 0005 	strb.w	r0, [sp, #5]
c0de75e8:	2000      	movs	r0, #0
c0de75ea:	f88d 0004 	strb.w	r0, [sp, #4]
c0de75ee:	204f      	movs	r0, #79	; 0x4f
c0de75f0:	f88d 0003 	strb.w	r0, [sp, #3]
c0de75f4:	f10d 0003 	add.w	r0, sp, #3
c0de75f8:	f002 f914 	bl	c0de9824 <io_seph_send>
c0de75fc:	2000      	movs	r0, #0
c0de75fe:	bd8c      	pop	{r2, r3, r7, pc}

c0de7600 <USBD_LL_Transmit>:
c0de7600:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de7602:	2020      	movs	r0, #32
c0de7604:	f88d 1005 	strb.w	r1, [sp, #5]
c0de7608:	2106      	movs	r1, #6
c0de760a:	461c      	mov	r4, r3
c0de760c:	4615      	mov	r5, r2
c0de760e:	f88d 3007 	strb.w	r3, [sp, #7]
c0de7612:	f88d 0006 	strb.w	r0, [sp, #6]
c0de7616:	2050      	movs	r0, #80	; 0x50
c0de7618:	f88d 0002 	strb.w	r0, [sp, #2]
c0de761c:	1cd8      	adds	r0, r3, #3
c0de761e:	f88d 0004 	strb.w	r0, [sp, #4]
c0de7622:	0a00      	lsrs	r0, r0, #8
c0de7624:	f88d 0003 	strb.w	r0, [sp, #3]
c0de7628:	f10d 0002 	add.w	r0, sp, #2
c0de762c:	f002 f8fa 	bl	c0de9824 <io_seph_send>
c0de7630:	4628      	mov	r0, r5
c0de7632:	4621      	mov	r1, r4
c0de7634:	f002 f8f6 	bl	c0de9824 <io_seph_send>
c0de7638:	2000      	movs	r0, #0
c0de763a:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de763c <USBD_LL_PrepareReceive>:
c0de763c:	b5e0      	push	{r5, r6, r7, lr}
c0de763e:	2030      	movs	r0, #48	; 0x30
c0de7640:	f88d 1005 	strb.w	r1, [sp, #5]
c0de7644:	2106      	movs	r1, #6
c0de7646:	f88d 2007 	strb.w	r2, [sp, #7]
c0de764a:	f88d 0006 	strb.w	r0, [sp, #6]
c0de764e:	2003      	movs	r0, #3
c0de7650:	f88d 0004 	strb.w	r0, [sp, #4]
c0de7654:	2000      	movs	r0, #0
c0de7656:	f88d 0003 	strb.w	r0, [sp, #3]
c0de765a:	2050      	movs	r0, #80	; 0x50
c0de765c:	f88d 0002 	strb.w	r0, [sp, #2]
c0de7660:	f10d 0002 	add.w	r0, sp, #2
c0de7664:	f002 f8de 	bl	c0de9824 <io_seph_send>
c0de7668:	2000      	movs	r0, #0
c0de766a:	bd8c      	pop	{r2, r3, r7, pc}

c0de766c <OUTLINED_FUNCTION_0>:
c0de766c:	f88d 1006 	strb.w	r1, [sp, #6]
c0de7670:	2103      	movs	r1, #3
c0de7672:	f88d 0007 	strb.w	r0, [sp, #7]
c0de7676:	f88d 0003 	strb.w	r0, [sp, #3]
c0de767a:	2050      	movs	r0, #80	; 0x50
c0de767c:	f88d 4005 	strb.w	r4, [sp, #5]
c0de7680:	f88d 1004 	strb.w	r1, [sp, #4]
c0de7684:	f88d 0002 	strb.w	r0, [sp, #2]
c0de7688:	4770      	bx	lr

c0de768a <OUTLINED_FUNCTION_1>:
c0de768a:	2002      	movs	r0, #2
c0de768c:	2104      	movs	r1, #4
c0de768e:	f88d 0007 	strb.w	r0, [sp, #7]
c0de7692:	2001      	movs	r0, #1
c0de7694:	f88d 0006 	strb.w	r0, [sp, #6]
c0de7698:	2000      	movs	r0, #0
c0de769a:	f88d 0005 	strb.w	r0, [sp, #5]
c0de769e:	204f      	movs	r0, #79	; 0x4f
c0de76a0:	f88d 0004 	strb.w	r0, [sp, #4]
c0de76a4:	4770      	bx	lr

c0de76a6 <OUTLINED_FUNCTION_2>:
c0de76a6:	f88d 0005 	strb.w	r0, [sp, #5]
c0de76aa:	4620      	mov	r0, r4
c0de76ac:	f002 b8ba 	b.w	c0de9824 <io_seph_send>

c0de76b0 <USBD_HID_GetHidDescriptor_impl>:
c0de76b0:	4907      	ldr	r1, [pc, #28]	; (c0de76d0 <USBD_HID_GetHidDescriptor_impl+0x20>)
c0de76b2:	2200      	movs	r2, #0
c0de76b4:	4449      	add	r1, r9
c0de76b6:	f891 110c 	ldrb.w	r1, [r1, #268]	; 0x10c
c0de76ba:	2900      	cmp	r1, #0
c0de76bc:	f04f 0100 	mov.w	r1, #0
c0de76c0:	bf08      	it	eq
c0de76c2:	2109      	moveq	r1, #9
c0de76c4:	8001      	strh	r1, [r0, #0]
c0de76c6:	4803      	ldr	r0, [pc, #12]	; (c0de76d4 <USBD_HID_GetHidDescriptor_impl+0x24>)
c0de76c8:	4478      	add	r0, pc
c0de76ca:	bf18      	it	ne
c0de76cc:	4610      	movne	r0, r2
c0de76ce:	4770      	bx	lr
c0de76d0:	00006444 	.word	0x00006444
c0de76d4:	000053a0 	.word	0x000053a0

c0de76d8 <USBD_HID_GetReportDescriptor_impl>:
c0de76d8:	4907      	ldr	r1, [pc, #28]	; (c0de76f8 <USBD_HID_GetReportDescriptor_impl+0x20>)
c0de76da:	2200      	movs	r2, #0
c0de76dc:	4449      	add	r1, r9
c0de76de:	f891 110c 	ldrb.w	r1, [r1, #268]	; 0x10c
c0de76e2:	2900      	cmp	r1, #0
c0de76e4:	f04f 0100 	mov.w	r1, #0
c0de76e8:	bf08      	it	eq
c0de76ea:	2122      	moveq	r1, #34	; 0x22
c0de76ec:	8001      	strh	r1, [r0, #0]
c0de76ee:	4803      	ldr	r0, [pc, #12]	; (c0de76fc <USBD_HID_GetReportDescriptor_impl+0x24>)
c0de76f0:	4478      	add	r0, pc
c0de76f2:	bf18      	it	ne
c0de76f4:	4610      	movne	r0, r2
c0de76f6:	4770      	bx	lr
c0de76f8:	00006444 	.word	0x00006444
c0de76fc:	00005381 	.word	0x00005381

c0de7700 <USBD_HID_DataIn_impl>:
c0de7700:	2902      	cmp	r1, #2
c0de7702:	d106      	bne.n	c0de7712 <USBD_HID_DataIn_impl+0x12>
c0de7704:	b580      	push	{r7, lr}
c0de7706:	4804      	ldr	r0, [pc, #16]	; (c0de7718 <USBD_HID_DataIn_impl+0x18>)
c0de7708:	4478      	add	r0, pc
c0de770a:	f001 fdab 	bl	c0de9264 <io_usb_hid_sent>
c0de770e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7712:	2000      	movs	r0, #0
c0de7714:	4770      	bx	lr
c0de7716:	bf00      	nop
c0de7718:	0000198d 	.word	0x0000198d

c0de771c <USBD_HID_DataOut_impl>:
c0de771c:	b570      	push	{r4, r5, r6, lr}
c0de771e:	2902      	cmp	r1, #2
c0de7720:	d121      	bne.n	c0de7766 <USBD_HID_DataOut_impl+0x4a>
c0de7722:	4615      	mov	r5, r2
c0de7724:	2102      	movs	r1, #2
c0de7726:	2240      	movs	r2, #64	; 0x40
c0de7728:	461c      	mov	r4, r3
c0de772a:	f7ff ff87 	bl	c0de763c <USBD_LL_PrepareReceive>
c0de772e:	4e0f      	ldr	r6, [pc, #60]	; (c0de776c <USBD_HID_DataOut_impl+0x50>)
c0de7730:	eb09 0006 	add.w	r0, r9, r6
c0de7734:	7980      	ldrb	r0, [r0, #6]
c0de7736:	b9b0      	cbnz	r0, c0de7766 <USBD_HID_DataOut_impl+0x4a>
c0de7738:	2002      	movs	r0, #2
c0de773a:	f001 fc6f 	bl	c0de901c <io_seproxyhal_get_ep_rx_size>
c0de773e:	4602      	mov	r2, r0
c0de7740:	480c      	ldr	r0, [pc, #48]	; (c0de7774 <USBD_HID_DataOut_impl+0x58>)
c0de7742:	4629      	mov	r1, r5
c0de7744:	4623      	mov	r3, r4
c0de7746:	4478      	add	r0, pc
c0de7748:	f001 fcac 	bl	c0de90a4 <io_usb_hid_receive>
c0de774c:	2802      	cmp	r0, #2
c0de774e:	d10a      	bne.n	c0de7766 <USBD_HID_DataOut_impl+0x4a>
c0de7750:	2007      	movs	r0, #7
c0de7752:	2101      	movs	r1, #1
c0de7754:	f809 0006 	strb.w	r0, [r9, r6]
c0de7758:	eb09 0006 	add.w	r0, r9, r6
c0de775c:	7181      	strb	r1, [r0, #6]
c0de775e:	4904      	ldr	r1, [pc, #16]	; (c0de7770 <USBD_HID_DataOut_impl+0x54>)
c0de7760:	f859 1001 	ldr.w	r1, [r9, r1]
c0de7764:	8041      	strh	r1, [r0, #2]
c0de7766:	2000      	movs	r0, #0
c0de7768:	bd70      	pop	{r4, r5, r6, pc}
c0de776a:	bf00      	nop
c0de776c:	00006684 	.word	0x00006684
c0de7770:	000066f4 	.word	0x000066f4
c0de7774:	0000194f 	.word	0x0000194f

c0de7778 <USBD_WEBUSB_Init>:
c0de7778:	b510      	push	{r4, lr}
c0de777a:	2183      	movs	r1, #131	; 0x83
c0de777c:	2203      	movs	r2, #3
c0de777e:	2340      	movs	r3, #64	; 0x40
c0de7780:	4604      	mov	r4, r0
c0de7782:	f7ff fe9f 	bl	c0de74c4 <USBD_LL_OpenEP>
c0de7786:	4620      	mov	r0, r4
c0de7788:	2103      	movs	r1, #3
c0de778a:	2203      	movs	r2, #3
c0de778c:	2340      	movs	r3, #64	; 0x40
c0de778e:	f7ff fe99 	bl	c0de74c4 <USBD_LL_OpenEP>
c0de7792:	4620      	mov	r0, r4
c0de7794:	2103      	movs	r1, #3
c0de7796:	2240      	movs	r2, #64	; 0x40
c0de7798:	f7ff ff50 	bl	c0de763c <USBD_LL_PrepareReceive>
c0de779c:	2000      	movs	r0, #0
c0de779e:	bd10      	pop	{r4, pc}

c0de77a0 <USBD_WEBUSB_DeInit>:
c0de77a0:	2000      	movs	r0, #0
c0de77a2:	4770      	bx	lr

c0de77a4 <USBD_WEBUSB_Setup>:
c0de77a4:	2000      	movs	r0, #0
c0de77a6:	4770      	bx	lr

c0de77a8 <USBD_WEBUSB_DataIn>:
c0de77a8:	2903      	cmp	r1, #3
c0de77aa:	d106      	bne.n	c0de77ba <USBD_WEBUSB_DataIn+0x12>
c0de77ac:	b580      	push	{r7, lr}
c0de77ae:	4804      	ldr	r0, [pc, #16]	; (c0de77c0 <USBD_WEBUSB_DataIn+0x18>)
c0de77b0:	4478      	add	r0, pc
c0de77b2:	f001 fd57 	bl	c0de9264 <io_usb_hid_sent>
c0de77b6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de77ba:	2000      	movs	r0, #0
c0de77bc:	4770      	bx	lr
c0de77be:	bf00      	nop
c0de77c0:	00001279 	.word	0x00001279

c0de77c4 <USBD_WEBUSB_DataOut>:
c0de77c4:	b570      	push	{r4, r5, r6, lr}
c0de77c6:	2903      	cmp	r1, #3
c0de77c8:	d121      	bne.n	c0de780e <USBD_WEBUSB_DataOut+0x4a>
c0de77ca:	4615      	mov	r5, r2
c0de77cc:	2103      	movs	r1, #3
c0de77ce:	2240      	movs	r2, #64	; 0x40
c0de77d0:	461c      	mov	r4, r3
c0de77d2:	f7ff ff33 	bl	c0de763c <USBD_LL_PrepareReceive>
c0de77d6:	4e0f      	ldr	r6, [pc, #60]	; (c0de7814 <USBD_WEBUSB_DataOut+0x50>)
c0de77d8:	eb09 0006 	add.w	r0, r9, r6
c0de77dc:	7980      	ldrb	r0, [r0, #6]
c0de77de:	b9b0      	cbnz	r0, c0de780e <USBD_WEBUSB_DataOut+0x4a>
c0de77e0:	2003      	movs	r0, #3
c0de77e2:	f001 fc1b 	bl	c0de901c <io_seproxyhal_get_ep_rx_size>
c0de77e6:	4602      	mov	r2, r0
c0de77e8:	480c      	ldr	r0, [pc, #48]	; (c0de781c <USBD_WEBUSB_DataOut+0x58>)
c0de77ea:	4629      	mov	r1, r5
c0de77ec:	4623      	mov	r3, r4
c0de77ee:	4478      	add	r0, pc
c0de77f0:	f001 fc58 	bl	c0de90a4 <io_usb_hid_receive>
c0de77f4:	2802      	cmp	r0, #2
c0de77f6:	d10a      	bne.n	c0de780e <USBD_WEBUSB_DataOut+0x4a>
c0de77f8:	200b      	movs	r0, #11
c0de77fa:	2105      	movs	r1, #5
c0de77fc:	f809 0006 	strb.w	r0, [r9, r6]
c0de7800:	eb09 0006 	add.w	r0, r9, r6
c0de7804:	7181      	strb	r1, [r0, #6]
c0de7806:	4904      	ldr	r1, [pc, #16]	; (c0de7818 <USBD_WEBUSB_DataOut+0x54>)
c0de7808:	f859 1001 	ldr.w	r1, [r9, r1]
c0de780c:	8041      	strh	r1, [r0, #2]
c0de780e:	2000      	movs	r0, #0
c0de7810:	bd70      	pop	{r4, r5, r6, pc}
c0de7812:	bf00      	nop
c0de7814:	00006684 	.word	0x00006684
c0de7818:	000066f4 	.word	0x000066f4
c0de781c:	0000123b 	.word	0x0000123b

c0de7820 <USBD_DeviceDescriptor>:
c0de7820:	2012      	movs	r0, #18
c0de7822:	8008      	strh	r0, [r1, #0]
c0de7824:	4801      	ldr	r0, [pc, #4]	; (c0de782c <USBD_DeviceDescriptor+0xc>)
c0de7826:	4478      	add	r0, pc
c0de7828:	4770      	bx	lr
c0de782a:	bf00      	nop
c0de782c:	0000548e 	.word	0x0000548e

c0de7830 <USBD_LangIDStrDescriptor>:
c0de7830:	2004      	movs	r0, #4
c0de7832:	8008      	strh	r0, [r1, #0]
c0de7834:	4801      	ldr	r0, [pc, #4]	; (c0de783c <USBD_LangIDStrDescriptor+0xc>)
c0de7836:	4478      	add	r0, pc
c0de7838:	4770      	bx	lr
c0de783a:	bf00      	nop
c0de783c:	00005490 	.word	0x00005490

c0de7840 <USBD_ManufacturerStrDescriptor>:
c0de7840:	200e      	movs	r0, #14
c0de7842:	8008      	strh	r0, [r1, #0]
c0de7844:	4801      	ldr	r0, [pc, #4]	; (c0de784c <USBD_ManufacturerStrDescriptor+0xc>)
c0de7846:	4478      	add	r0, pc
c0de7848:	4770      	bx	lr
c0de784a:	bf00      	nop
c0de784c:	00005484 	.word	0x00005484

c0de7850 <USBD_ProductStrDescriptor>:
c0de7850:	2018      	movs	r0, #24
c0de7852:	8008      	strh	r0, [r1, #0]
c0de7854:	4801      	ldr	r0, [pc, #4]	; (c0de785c <USBD_ProductStrDescriptor+0xc>)
c0de7856:	4478      	add	r0, pc
c0de7858:	4770      	bx	lr
c0de785a:	bf00      	nop
c0de785c:	00005482 	.word	0x00005482

c0de7860 <USBD_SerialStrDescriptor>:
c0de7860:	200a      	movs	r0, #10
c0de7862:	8008      	strh	r0, [r1, #0]
c0de7864:	4801      	ldr	r0, [pc, #4]	; (c0de786c <USBD_SerialStrDescriptor+0xc>)
c0de7866:	4478      	add	r0, pc
c0de7868:	4770      	bx	lr
c0de786a:	bf00      	nop
c0de786c:	0000548a 	.word	0x0000548a

c0de7870 <USBD_ConfigStrDescriptor>:
c0de7870:	2018      	movs	r0, #24
c0de7872:	8008      	strh	r0, [r1, #0]
c0de7874:	4801      	ldr	r0, [pc, #4]	; (c0de787c <USBD_ConfigStrDescriptor+0xc>)
c0de7876:	4478      	add	r0, pc
c0de7878:	4770      	bx	lr
c0de787a:	bf00      	nop
c0de787c:	00005462 	.word	0x00005462

c0de7880 <USBD_InterfaceStrDescriptor>:
c0de7880:	2018      	movs	r0, #24
c0de7882:	8008      	strh	r0, [r1, #0]
c0de7884:	4801      	ldr	r0, [pc, #4]	; (c0de788c <USBD_InterfaceStrDescriptor+0xc>)
c0de7886:	4478      	add	r0, pc
c0de7888:	4770      	bx	lr
c0de788a:	bf00      	nop
c0de788c:	00005452 	.word	0x00005452

c0de7890 <USBD_BOSDescriptor>:
c0de7890:	2039      	movs	r0, #57	; 0x39
c0de7892:	8008      	strh	r0, [r1, #0]
c0de7894:	4801      	ldr	r0, [pc, #4]	; (c0de789c <USBD_BOSDescriptor+0xc>)
c0de7896:	4478      	add	r0, pc
c0de7898:	4770      	bx	lr
c0de789a:	bf00      	nop
c0de789c:	000051fd 	.word	0x000051fd

c0de78a0 <USBD_CtlError>:
c0de78a0:	b580      	push	{r7, lr}
c0de78a2:	f991 2000 	ldrsb.w	r2, [r1]
c0de78a6:	f1b2 3fff 	cmp.w	r2, #4294967295	; 0xffffffff
c0de78aa:	dd03      	ble.n	c0de78b4 <USBD_CtlError+0x14>
c0de78ac:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de78b0:	f7ff bd70 	b.w	c0de7394 <USBD_CtlStall>
c0de78b4:	784a      	ldrb	r2, [r1, #1]
c0de78b6:	2a77      	cmp	r2, #119	; 0x77
c0de78b8:	d00d      	beq.n	c0de78d6 <USBD_CtlError+0x36>
c0de78ba:	2a06      	cmp	r2, #6
c0de78bc:	d1f6      	bne.n	c0de78ac <USBD_CtlError+0xc>
c0de78be:	884a      	ldrh	r2, [r1, #2]
c0de78c0:	f240 33ee 	movw	r3, #1006	; 0x3ee
c0de78c4:	429a      	cmp	r2, r3
c0de78c6:	d1f1      	bne.n	c0de78ac <USBD_CtlError+0xc>
c0de78c8:	88ca      	ldrh	r2, [r1, #6]
c0de78ca:	2a12      	cmp	r2, #18
c0de78cc:	bf28      	it	cs
c0de78ce:	2212      	movcs	r2, #18
c0de78d0:	4911      	ldr	r1, [pc, #68]	; (c0de7918 <USBD_CtlError+0x78>)
c0de78d2:	4479      	add	r1, pc
c0de78d4:	e01c      	b.n	c0de7910 <USBD_CtlError+0x70>
c0de78d6:	888a      	ldrh	r2, [r1, #4]
c0de78d8:	2a04      	cmp	r2, #4
c0de78da:	d106      	bne.n	c0de78ea <USBD_CtlError+0x4a>
c0de78dc:	88ca      	ldrh	r2, [r1, #6]
c0de78de:	2a28      	cmp	r2, #40	; 0x28
c0de78e0:	bf28      	it	cs
c0de78e2:	2228      	movcs	r2, #40	; 0x28
c0de78e4:	490d      	ldr	r1, [pc, #52]	; (c0de791c <USBD_CtlError+0x7c>)
c0de78e6:	4479      	add	r1, pc
c0de78e8:	e012      	b.n	c0de7910 <USBD_CtlError+0x70>
c0de78ea:	888a      	ldrh	r2, [r1, #4]
c0de78ec:	2a05      	cmp	r2, #5
c0de78ee:	d106      	bne.n	c0de78fe <USBD_CtlError+0x5e>
c0de78f0:	88ca      	ldrh	r2, [r1, #6]
c0de78f2:	2a92      	cmp	r2, #146	; 0x92
c0de78f4:	bf28      	it	cs
c0de78f6:	2292      	movcs	r2, #146	; 0x92
c0de78f8:	4909      	ldr	r1, [pc, #36]	; (c0de7920 <USBD_CtlError+0x80>)
c0de78fa:	4479      	add	r1, pc
c0de78fc:	e008      	b.n	c0de7910 <USBD_CtlError+0x70>
c0de78fe:	888a      	ldrh	r2, [r1, #4]
c0de7900:	2a07      	cmp	r2, #7
c0de7902:	d1d3      	bne.n	c0de78ac <USBD_CtlError+0xc>
c0de7904:	88ca      	ldrh	r2, [r1, #6]
c0de7906:	2ab2      	cmp	r2, #178	; 0xb2
c0de7908:	bf28      	it	cs
c0de790a:	22b2      	movcs	r2, #178	; 0xb2
c0de790c:	4905      	ldr	r1, [pc, #20]	; (c0de7924 <USBD_CtlError+0x84>)
c0de790e:	4479      	add	r1, pc
c0de7910:	f7ff fd5f 	bl	c0de73d2 <USBD_CtlSendData>
c0de7914:	bd80      	pop	{r7, pc}
c0de7916:	bf00      	nop
c0de7918:	0000521a 	.word	0x0000521a
c0de791c:	00005414 	.word	0x00005414
c0de7920:	00005204 	.word	0x00005204
c0de7924:	00005282 	.word	0x00005282

c0de7928 <USB_power>:
c0de7928:	b5b0      	push	{r4, r5, r7, lr}
c0de792a:	4d1b      	ldr	r5, [pc, #108]	; (c0de7998 <USB_power+0x70>)
c0de792c:	4604      	mov	r4, r0
c0de792e:	f44f 719a 	mov.w	r1, #308	; 0x134
c0de7932:	eb09 0005 	add.w	r0, r9, r5
c0de7936:	f001 ffe5 	bl	c0de9904 <__aeabi_memclr>
c0de793a:	4818      	ldr	r0, [pc, #96]	; (c0de799c <USB_power+0x74>)
c0de793c:	2100      	movs	r1, #0
c0de793e:	4448      	add	r0, r9
c0de7940:	7481      	strb	r1, [r0, #18]
c0de7942:	8201      	strh	r1, [r0, #16]
c0de7944:	60c1      	str	r1, [r0, #12]
c0de7946:	e9c0 1105 	strd	r1, r1, [r0, #20]
c0de794a:	61c1      	str	r1, [r0, #28]
c0de794c:	8401      	strh	r1, [r0, #32]
c0de794e:	b1ec      	cbz	r4, c0de798c <USB_power+0x64>
c0de7950:	eb09 0405 	add.w	r4, r9, r5
c0de7954:	f44f 719a 	mov.w	r1, #308	; 0x134
c0de7958:	4620      	mov	r0, r4
c0de795a:	f001 ffd3 	bl	c0de9904 <__aeabi_memclr>
c0de795e:	4910      	ldr	r1, [pc, #64]	; (c0de79a0 <USB_power+0x78>)
c0de7960:	4620      	mov	r0, r4
c0de7962:	2200      	movs	r2, #0
c0de7964:	4479      	add	r1, pc
c0de7966:	f7ff f953 	bl	c0de6c10 <USBD_Init>
c0de796a:	4a0e      	ldr	r2, [pc, #56]	; (c0de79a4 <USB_power+0x7c>)
c0de796c:	2000      	movs	r0, #0
c0de796e:	4621      	mov	r1, r4
c0de7970:	447a      	add	r2, pc
c0de7972:	f7ff f97f 	bl	c0de6c74 <USBD_RegisterClassForInterface>
c0de7976:	4a0c      	ldr	r2, [pc, #48]	; (c0de79a8 <USB_power+0x80>)
c0de7978:	2001      	movs	r0, #1
c0de797a:	4621      	mov	r1, r4
c0de797c:	447a      	add	r2, pc
c0de797e:	f7ff f979 	bl	c0de6c74 <USBD_RegisterClassForInterface>
c0de7982:	4620      	mov	r0, r4
c0de7984:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de7988:	f7ff b97f 	b.w	c0de6c8a <USBD_Start>
c0de798c:	eb09 0005 	add.w	r0, r9, r5
c0de7990:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de7994:	f7ff b953 	b.w	c0de6c3e <USBD_DeInit>
c0de7998:	00006444 	.word	0x00006444
c0de799c:	00006684 	.word	0x00006684
c0de79a0:	00005168 	.word	0x00005168
c0de79a4:	000052d4 	.word	0x000052d4
c0de79a8:	00005300 	.word	0x00005300

c0de79ac <USBD_GetCfgDesc_impl>:
c0de79ac:	2140      	movs	r1, #64	; 0x40
c0de79ae:	8001      	strh	r1, [r0, #0]
c0de79b0:	4801      	ldr	r0, [pc, #4]	; (c0de79b8 <USBD_GetCfgDesc_impl+0xc>)
c0de79b2:	4478      	add	r0, pc
c0de79b4:	4770      	bx	lr
c0de79b6:	bf00      	nop
c0de79b8:	00005372 	.word	0x00005372

c0de79bc <USBD_GetDeviceQualifierDesc_impl>:
c0de79bc:	210a      	movs	r1, #10
c0de79be:	8001      	strh	r1, [r0, #0]
c0de79c0:	4801      	ldr	r0, [pc, #4]	; (c0de79c8 <USBD_GetDeviceQualifierDesc_impl+0xc>)
c0de79c2:	4478      	add	r0, pc
c0de79c4:	4770      	bx	lr
c0de79c6:	bf00      	nop
c0de79c8:	000053a2 	.word	0x000053a2

c0de79cc <ux_flow_is_first>:
c0de79cc:	b580      	push	{r7, lr}
c0de79ce:	f000 f81f 	bl	c0de7a10 <ux_flow_check_valid>
c0de79d2:	b1c8      	cbz	r0, c0de7a08 <ux_flow_is_first+0x3c>
c0de79d4:	490d      	ldr	r1, [pc, #52]	; (c0de7a0c <ux_flow_is_first+0x40>)
c0de79d6:	f000 fa4d 	bl	c0de7e74 <OUTLINED_FUNCTION_0>
c0de79da:	d015      	beq.n	c0de7a08 <ux_flow_is_first+0x3c>
c0de79dc:	4449      	add	r1, r9
c0de79de:	eb01 0182 	add.w	r1, r1, r2, lsl #2
c0de79e2:	8c8a      	ldrh	r2, [r1, #36]	; 0x24
c0de79e4:	8c09      	ldrh	r1, [r1, #32]
c0de79e6:	b929      	cbnz	r1, c0de79f4 <ux_flow_is_first+0x28>
c0de79e8:	eb00 0382 	add.w	r3, r0, r2, lsl #2
c0de79ec:	f853 3c04 	ldr.w	r3, [r3, #-4]
c0de79f0:	3303      	adds	r3, #3
c0de79f2:	d109      	bne.n	c0de7a08 <ux_flow_is_first+0x3c>
c0de79f4:	4291      	cmp	r1, r2
c0de79f6:	d205      	bcs.n	c0de7a04 <ux_flow_is_first+0x38>
c0de79f8:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de79fc:	f850 0c04 	ldr.w	r0, [r0, #-4]
c0de7a00:	3002      	adds	r0, #2
c0de7a02:	d001      	beq.n	c0de7a08 <ux_flow_is_first+0x3c>
c0de7a04:	2000      	movs	r0, #0
c0de7a06:	bd80      	pop	{r7, pc}
c0de7a08:	2001      	movs	r0, #1
c0de7a0a:	bd80      	pop	{r7, pc}
c0de7a0c:	000062d4 	.word	0x000062d4

c0de7a10 <ux_flow_check_valid>:
c0de7a10:	4808      	ldr	r0, [pc, #32]	; (c0de7a34 <ux_flow_check_valid+0x24>)
c0de7a12:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de7a16:	2901      	cmp	r1, #1
c0de7a18:	bf84      	itt	hi
c0de7a1a:	2000      	movhi	r0, #0
c0de7a1c:	4770      	bxhi	lr
c0de7a1e:	4448      	add	r0, r9
c0de7a20:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de7a24:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de7a28:	8b00      	ldrh	r0, [r0, #24]
c0de7a2a:	2800      	cmp	r0, #0
c0de7a2c:	bf18      	it	ne
c0de7a2e:	2001      	movne	r0, #1
c0de7a30:	4770      	bx	lr
c0de7a32:	bf00      	nop
c0de7a34:	000062d4 	.word	0x000062d4

c0de7a38 <ux_flow_is_last>:
c0de7a38:	b580      	push	{r7, lr}
c0de7a3a:	f7ff ffe9 	bl	c0de7a10 <ux_flow_check_valid>
c0de7a3e:	b1b8      	cbz	r0, c0de7a70 <ux_flow_is_last+0x38>
c0de7a40:	490c      	ldr	r1, [pc, #48]	; (c0de7a74 <ux_flow_is_last+0x3c>)
c0de7a42:	f000 fa17 	bl	c0de7e74 <OUTLINED_FUNCTION_0>
c0de7a46:	d013      	beq.n	c0de7a70 <ux_flow_is_last+0x38>
c0de7a48:	f000 fa20 	bl	c0de7e8c <OUTLINED_FUNCTION_1>
c0de7a4c:	d010      	beq.n	c0de7a70 <ux_flow_is_last+0x38>
c0de7a4e:	4449      	add	r1, r9
c0de7a50:	eb01 0182 	add.w	r1, r1, r2, lsl #2
c0de7a54:	1e5a      	subs	r2, r3, #1
c0de7a56:	8c09      	ldrh	r1, [r1, #32]
c0de7a58:	428a      	cmp	r2, r1
c0de7a5a:	dd09      	ble.n	c0de7a70 <ux_flow_is_last+0x38>
c0de7a5c:	1e9a      	subs	r2, r3, #2
c0de7a5e:	428a      	cmp	r2, r1
c0de7a60:	dd04      	ble.n	c0de7a6c <ux_flow_is_last+0x34>
c0de7a62:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de7a66:	6840      	ldr	r0, [r0, #4]
c0de7a68:	3002      	adds	r0, #2
c0de7a6a:	d001      	beq.n	c0de7a70 <ux_flow_is_last+0x38>
c0de7a6c:	2000      	movs	r0, #0
c0de7a6e:	bd80      	pop	{r7, pc}
c0de7a70:	2001      	movs	r0, #1
c0de7a72:	bd80      	pop	{r7, pc}
c0de7a74:	000062d4 	.word	0x000062d4

c0de7a78 <ux_flow_direction>:
c0de7a78:	480a      	ldr	r0, [pc, #40]	; (c0de7aa4 <ux_flow_direction+0x2c>)
c0de7a7a:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de7a7e:	b169      	cbz	r1, c0de7a9c <ux_flow_direction+0x24>
c0de7a80:	4448      	add	r0, r9
c0de7a82:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de7a86:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de7a8a:	8ac1      	ldrh	r1, [r0, #22]
c0de7a8c:	8a80      	ldrh	r0, [r0, #20]
c0de7a8e:	4288      	cmp	r0, r1
c0de7a90:	d901      	bls.n	c0de7a96 <ux_flow_direction+0x1e>
c0de7a92:	2001      	movs	r0, #1
c0de7a94:	e003      	b.n	c0de7a9e <ux_flow_direction+0x26>
c0de7a96:	d201      	bcs.n	c0de7a9c <ux_flow_direction+0x24>
c0de7a98:	20ff      	movs	r0, #255	; 0xff
c0de7a9a:	e000      	b.n	c0de7a9e <ux_flow_direction+0x26>
c0de7a9c:	2000      	movs	r0, #0
c0de7a9e:	b240      	sxtb	r0, r0
c0de7aa0:	4770      	bx	lr
c0de7aa2:	bf00      	nop
c0de7aa4:	000062d4 	.word	0x000062d4

c0de7aa8 <ux_flow_get_current>:
c0de7aa8:	b580      	push	{r7, lr}
c0de7aaa:	f7ff ffb1 	bl	c0de7a10 <ux_flow_check_valid>
c0de7aae:	b178      	cbz	r0, c0de7ad0 <ux_flow_get_current+0x28>
c0de7ab0:	490a      	ldr	r1, [pc, #40]	; (c0de7adc <ux_flow_get_current+0x34>)
c0de7ab2:	f000 f9df 	bl	c0de7e74 <OUTLINED_FUNCTION_0>
c0de7ab6:	d00b      	beq.n	c0de7ad0 <ux_flow_get_current+0x28>
c0de7ab8:	4449      	add	r1, r9
c0de7aba:	eb01 0282 	add.w	r2, r1, r2, lsl #2
c0de7abe:	8c11      	ldrh	r1, [r2, #32]
c0de7ac0:	8c92      	ldrh	r2, [r2, #36]	; 0x24
c0de7ac2:	4291      	cmp	r1, r2
c0de7ac4:	d204      	bcs.n	c0de7ad0 <ux_flow_get_current+0x28>
c0de7ac6:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de7aca:	f110 0f04 	cmn.w	r0, #4
c0de7ace:	d901      	bls.n	c0de7ad4 <ux_flow_get_current+0x2c>
c0de7ad0:	2000      	movs	r0, #0
c0de7ad2:	bd80      	pop	{r7, pc}
c0de7ad4:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7ad8:	f001 bde2 	b.w	c0de96a0 <pic>
c0de7adc:	000062d4 	.word	0x000062d4

c0de7ae0 <ux_flow_next_internal>:
c0de7ae0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de7ae4:	4d20      	ldr	r5, [pc, #128]	; (c0de7b68 <ux_flow_next_internal+0x88>)
c0de7ae6:	4680      	mov	r8, r0
c0de7ae8:	f819 6005 	ldrb.w	r6, [r9, r5]
c0de7aec:	f7ff ff90 	bl	c0de7a10 <ux_flow_check_valid>
c0de7af0:	b3c0      	cbz	r0, c0de7b64 <ux_flow_next_internal+0x84>
c0de7af2:	1e70      	subs	r0, r6, #1
c0de7af4:	eb09 0205 	add.w	r2, r9, r5
c0de7af8:	eb00 0140 	add.w	r1, r0, r0, lsl #1
c0de7afc:	eb02 0281 	add.w	r2, r2, r1, lsl #2
c0de7b00:	69d2      	ldr	r2, [r2, #28]
c0de7b02:	b37a      	cbz	r2, c0de7b64 <ux_flow_next_internal+0x84>
c0de7b04:	eb09 0305 	add.w	r3, r9, r5
c0de7b08:	eb03 0381 	add.w	r3, r3, r1, lsl #2
c0de7b0c:	8c9f      	ldrh	r7, [r3, #36]	; 0x24
c0de7b0e:	2f02      	cmp	r7, #2
c0de7b10:	d328      	bcc.n	c0de7b64 <ux_flow_next_internal+0x84>
c0de7b12:	eb09 0305 	add.w	r3, r9, r5
c0de7b16:	1e7c      	subs	r4, r7, #1
c0de7b18:	eb03 0381 	add.w	r3, r3, r1, lsl #2
c0de7b1c:	f833 6f20 	ldrh.w	r6, [r3, #32]!
c0de7b20:	42b4      	cmp	r4, r6
c0de7b22:	dd1f      	ble.n	c0de7b64 <ux_flow_next_internal+0x84>
c0de7b24:	1ebc      	subs	r4, r7, #2
c0de7b26:	42b4      	cmp	r4, r6
c0de7b28:	db0e      	blt.n	c0de7b48 <ux_flow_next_internal+0x68>
c0de7b2a:	eb02 0286 	add.w	r2, r2, r6, lsl #2
c0de7b2e:	6852      	ldr	r2, [r2, #4]
c0de7b30:	1c94      	adds	r4, r2, #2
c0de7b32:	d017      	beq.n	c0de7b64 <ux_flow_next_internal+0x84>
c0de7b34:	3203      	adds	r2, #3
c0de7b36:	d107      	bne.n	c0de7b48 <ux_flow_next_internal+0x68>
c0de7b38:	2200      	movs	r2, #0
c0de7b3a:	801a      	strh	r2, [r3, #0]
c0de7b3c:	eb09 0305 	add.w	r3, r9, r5
c0de7b40:	eb03 0181 	add.w	r1, r3, r1, lsl #2
c0de7b44:	844a      	strh	r2, [r1, #34]	; 0x22
c0de7b46:	e009      	b.n	c0de7b5c <ux_flow_next_internal+0x7c>
c0de7b48:	1c72      	adds	r2, r6, #1
c0de7b4a:	801a      	strh	r2, [r3, #0]
c0de7b4c:	eb09 0205 	add.w	r2, r9, r5
c0de7b50:	f1b8 0f00 	cmp.w	r8, #0
c0de7b54:	eb02 0181 	add.w	r1, r2, r1, lsl #2
c0de7b58:	844e      	strh	r6, [r1, #34]	; 0x22
c0de7b5a:	d003      	beq.n	c0de7b64 <ux_flow_next_internal+0x84>
c0de7b5c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de7b60:	f000 b84a 	b.w	c0de7bf8 <ux_flow_engine_init_step>
c0de7b64:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de7b68:	000062d4 	.word	0x000062d4

c0de7b6c <ux_flow_next>:
c0de7b6c:	2001      	movs	r0, #1
c0de7b6e:	f7ff bfb7 	b.w	c0de7ae0 <ux_flow_next_internal>
	...

c0de7b74 <ux_flow_prev>:
c0de7b74:	b570      	push	{r4, r5, r6, lr}
c0de7b76:	4c1f      	ldr	r4, [pc, #124]	; (c0de7bf4 <ux_flow_prev+0x80>)
c0de7b78:	f819 5004 	ldrb.w	r5, [r9, r4]
c0de7b7c:	f7ff ff48 	bl	c0de7a10 <ux_flow_check_valid>
c0de7b80:	b178      	cbz	r0, c0de7ba2 <ux_flow_prev+0x2e>
c0de7b82:	1e68      	subs	r0, r5, #1
c0de7b84:	eb09 0204 	add.w	r2, r9, r4
c0de7b88:	eb00 0140 	add.w	r1, r0, r0, lsl #1
c0de7b8c:	eb02 0281 	add.w	r2, r2, r1, lsl #2
c0de7b90:	69d3      	ldr	r3, [r2, #28]
c0de7b92:	b133      	cbz	r3, c0de7ba2 <ux_flow_prev+0x2e>
c0de7b94:	eb09 0204 	add.w	r2, r9, r4
c0de7b98:	eb02 0281 	add.w	r2, r2, r1, lsl #2
c0de7b9c:	8c92      	ldrh	r2, [r2, #36]	; 0x24
c0de7b9e:	2a02      	cmp	r2, #2
c0de7ba0:	d200      	bcs.n	c0de7ba4 <ux_flow_prev+0x30>
c0de7ba2:	bd70      	pop	{r4, r5, r6, pc}
c0de7ba4:	eb09 0504 	add.w	r5, r9, r4
c0de7ba8:	eb05 0581 	add.w	r5, r5, r1, lsl #2
c0de7bac:	f835 6f20 	ldrh.w	r6, [r5, #32]!
c0de7bb0:	b16e      	cbz	r6, c0de7bce <ux_flow_prev+0x5a>
c0de7bb2:	eb03 0286 	add.w	r2, r3, r6, lsl #2
c0de7bb6:	f852 2c04 	ldr.w	r2, [r2, #-4]
c0de7bba:	3202      	adds	r2, #2
c0de7bbc:	d0f1      	beq.n	c0de7ba2 <ux_flow_prev+0x2e>
c0de7bbe:	1e72      	subs	r2, r6, #1
c0de7bc0:	802a      	strh	r2, [r5, #0]
c0de7bc2:	eb09 0204 	add.w	r2, r9, r4
c0de7bc6:	eb02 0181 	add.w	r1, r2, r1, lsl #2
c0de7bca:	844e      	strh	r6, [r1, #34]	; 0x22
c0de7bcc:	e00d      	b.n	c0de7bea <ux_flow_prev+0x76>
c0de7bce:	eb03 0382 	add.w	r3, r3, r2, lsl #2
c0de7bd2:	f853 3c04 	ldr.w	r3, [r3, #-4]
c0de7bd6:	3303      	adds	r3, #3
c0de7bd8:	d1e3      	bne.n	c0de7ba2 <ux_flow_prev+0x2e>
c0de7bda:	1e93      	subs	r3, r2, #2
c0de7bdc:	3a01      	subs	r2, #1
c0de7bde:	802b      	strh	r3, [r5, #0]
c0de7be0:	eb09 0304 	add.w	r3, r9, r4
c0de7be4:	eb03 0181 	add.w	r1, r3, r1, lsl #2
c0de7be8:	844a      	strh	r2, [r1, #34]	; 0x22
c0de7bea:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de7bee:	f000 b803 	b.w	c0de7bf8 <ux_flow_engine_init_step>
c0de7bf2:	bf00      	nop
c0de7bf4:	000062d4 	.word	0x000062d4

c0de7bf8 <ux_flow_engine_init_step>:
c0de7bf8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de7bfc:	4604      	mov	r4, r0
c0de7bfe:	481c      	ldr	r0, [pc, #112]	; (c0de7c70 <ux_flow_engine_init_step+0x78>)
c0de7c00:	eb04 0144 	add.w	r1, r4, r4, lsl #1
c0de7c04:	4448      	add	r0, r9
c0de7c06:	eb00 0681 	add.w	r6, r0, r1, lsl #2
c0de7c0a:	f856 0f1c 	ldr.w	r0, [r6, #28]!
c0de7c0e:	4637      	mov	r7, r6
c0de7c10:	f837 1f04 	ldrh.w	r1, [r7, #4]!
c0de7c14:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de7c18:	f110 0f04 	cmn.w	r0, #4
c0de7c1c:	bf88      	it	hi
c0de7c1e:	e8bd 81f0 	ldmiahi.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de7c22:	f001 fd3d 	bl	c0de96a0 <pic>
c0de7c26:	8839      	ldrh	r1, [r7, #0]
c0de7c28:	6832      	ldr	r2, [r6, #0]
c0de7c2a:	6805      	ldr	r5, [r0, #0]
c0de7c2c:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
c0de7c30:	4608      	mov	r0, r1
c0de7c32:	f001 fd35 	bl	c0de96a0 <pic>
c0de7c36:	b13d      	cbz	r5, c0de7c48 <ux_flow_engine_init_step+0x50>
c0de7c38:	6800      	ldr	r0, [r0, #0]
c0de7c3a:	f001 fd31 	bl	c0de96a0 <pic>
c0de7c3e:	4601      	mov	r1, r0
c0de7c40:	4620      	mov	r0, r4
c0de7c42:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de7c46:	4708      	bx	r1
c0de7c48:	6880      	ldr	r0, [r0, #8]
c0de7c4a:	4d0a      	ldr	r5, [pc, #40]	; (c0de7c74 <ux_flow_engine_init_step+0x7c>)
c0de7c4c:	447d      	add	r5, pc
c0de7c4e:	47a8      	blx	r5
c0de7c50:	4680      	mov	r8, r0
c0de7c52:	8838      	ldrh	r0, [r7, #0]
c0de7c54:	6831      	ldr	r1, [r6, #0]
c0de7c56:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de7c5a:	47a8      	blx	r5
c0de7c5c:	6840      	ldr	r0, [r0, #4]
c0de7c5e:	47a8      	blx	r5
c0de7c60:	4602      	mov	r2, r0
c0de7c62:	4620      	mov	r0, r4
c0de7c64:	4641      	mov	r1, r8
c0de7c66:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de7c6a:	f000 b871 	b.w	c0de7d50 <ux_flow_init>
c0de7c6e:	bf00      	nop
c0de7c70:	000062d4 	.word	0x000062d4
c0de7c74:	00001a51 	.word	0x00001a51

c0de7c78 <ux_flow_validate>:
c0de7c78:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7c7c:	4d33      	ldr	r5, [pc, #204]	; (c0de7d4c <ux_flow_validate+0xd4>)
c0de7c7e:	f819 4005 	ldrb.w	r4, [r9, r5]
c0de7c82:	f7ff fec5 	bl	c0de7a10 <ux_flow_check_valid>
c0de7c86:	2800      	cmp	r0, #0
c0de7c88:	d04c      	beq.n	c0de7d24 <ux_flow_validate+0xac>
c0de7c8a:	f1a4 0801 	sub.w	r8, r4, #1
c0de7c8e:	eb09 0005 	add.w	r0, r9, r5
c0de7c92:	eb08 0648 	add.w	r6, r8, r8, lsl #1
c0de7c96:	eb00 0486 	add.w	r4, r0, r6, lsl #2
c0de7c9a:	f854 0f1c 	ldr.w	r0, [r4, #28]!
c0de7c9e:	2800      	cmp	r0, #0
c0de7ca0:	d040      	beq.n	c0de7d24 <ux_flow_validate+0xac>
c0de7ca2:	eb09 0105 	add.w	r1, r9, r5
c0de7ca6:	eb01 0786 	add.w	r7, r1, r6, lsl #2
c0de7caa:	f837 1f24 	ldrh.w	r1, [r7, #36]!
c0de7cae:	b3c9      	cbz	r1, c0de7d24 <ux_flow_validate+0xac>
c0de7cb0:	eb09 0205 	add.w	r2, r9, r5
c0de7cb4:	eb02 0a86 	add.w	sl, r2, r6, lsl #2
c0de7cb8:	f83a 2f20 	ldrh.w	r2, [sl, #32]!
c0de7cbc:	428a      	cmp	r2, r1
c0de7cbe:	d231      	bcs.n	c0de7d24 <ux_flow_validate+0xac>
c0de7cc0:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
c0de7cc4:	f001 fcec 	bl	c0de96a0 <pic>
c0de7cc8:	6880      	ldr	r0, [r0, #8]
c0de7cca:	b180      	cbz	r0, c0de7cee <ux_flow_validate+0x76>
c0de7ccc:	f8ba 0000 	ldrh.w	r0, [sl]
c0de7cd0:	6821      	ldr	r1, [r4, #0]
c0de7cd2:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de7cd6:	f001 fce3 	bl	c0de96a0 <pic>
c0de7cda:	6880      	ldr	r0, [r0, #8]
c0de7cdc:	f001 fce0 	bl	c0de96a0 <pic>
c0de7ce0:	4601      	mov	r1, r0
c0de7ce2:	4640      	mov	r0, r8
c0de7ce4:	2200      	movs	r2, #0
c0de7ce6:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7cea:	f000 b831 	b.w	c0de7d50 <ux_flow_init>
c0de7cee:	8838      	ldrh	r0, [r7, #0]
c0de7cf0:	b1c0      	cbz	r0, c0de7d24 <ux_flow_validate+0xac>
c0de7cf2:	1e81      	subs	r1, r0, #2
c0de7cf4:	f8ba 0000 	ldrh.w	r0, [sl]
c0de7cf8:	4281      	cmp	r1, r0
c0de7cfa:	db13      	blt.n	c0de7d24 <ux_flow_validate+0xac>
c0de7cfc:	6822      	ldr	r2, [r4, #0]
c0de7cfe:	eb02 0380 	add.w	r3, r2, r0, lsl #2
c0de7d02:	685b      	ldr	r3, [r3, #4]
c0de7d04:	1cdc      	adds	r4, r3, #3
c0de7d06:	d00f      	beq.n	c0de7d28 <ux_flow_validate+0xb0>
c0de7d08:	3302      	adds	r3, #2
c0de7d0a:	d10b      	bne.n	c0de7d24 <ux_flow_validate+0xac>
c0de7d0c:	b283      	uxth	r3, r0
c0de7d0e:	4299      	cmp	r1, r3
c0de7d10:	db0e      	blt.n	c0de7d30 <ux_flow_validate+0xb8>
c0de7d12:	eb02 0383 	add.w	r3, r2, r3, lsl #2
c0de7d16:	685b      	ldr	r3, [r3, #4]
c0de7d18:	3302      	adds	r3, #2
c0de7d1a:	d109      	bne.n	c0de7d30 <ux_flow_validate+0xb8>
c0de7d1c:	3001      	adds	r0, #1
c0de7d1e:	f8aa 0000 	strh.w	r0, [sl]
c0de7d22:	e7f3      	b.n	c0de7d0c <ux_flow_validate+0x94>
c0de7d24:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de7d28:	2000      	movs	r0, #0
c0de7d2a:	f8aa 0000 	strh.w	r0, [sl]
c0de7d2e:	e002      	b.n	c0de7d36 <ux_flow_validate+0xbe>
c0de7d30:	1c41      	adds	r1, r0, #1
c0de7d32:	f8aa 1000 	strh.w	r1, [sl]
c0de7d36:	eb09 0105 	add.w	r1, r9, r5
c0de7d3a:	eb01 0186 	add.w	r1, r1, r6, lsl #2
c0de7d3e:	8448      	strh	r0, [r1, #34]	; 0x22
c0de7d40:	4640      	mov	r0, r8
c0de7d42:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7d46:	f7ff bf57 	b.w	c0de7bf8 <ux_flow_engine_init_step>
c0de7d4a:	bf00      	nop
c0de7d4c:	000062d4 	.word	0x000062d4

c0de7d50 <ux_flow_init>:
c0de7d50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7d52:	b100      	cbz	r0, c0de7d56 <ux_flow_init+0x6>
c0de7d54:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de7d56:	4e1e      	ldr	r6, [pc, #120]	; (c0de7dd0 <ux_flow_init+0x80>)
c0de7d58:	460d      	mov	r5, r1
c0de7d5a:	2122      	movs	r1, #34	; 0x22
c0de7d5c:	4614      	mov	r4, r2
c0de7d5e:	eb09 0006 	add.w	r0, r9, r6
c0de7d62:	3004      	adds	r0, #4
c0de7d64:	f001 fdce 	bl	c0de9904 <__aeabi_memclr>
c0de7d68:	2d00      	cmp	r5, #0
c0de7d6a:	d0f3      	beq.n	c0de7d54 <ux_flow_init+0x4>
c0de7d6c:	4628      	mov	r0, r5
c0de7d6e:	eb09 0706 	add.w	r7, r9, r6
c0de7d72:	f001 fc95 	bl	c0de96a0 <pic>
c0de7d76:	8cb9      	ldrh	r1, [r7, #36]	; 0x24
c0de7d78:	61f8      	str	r0, [r7, #28]
c0de7d7a:	b28a      	uxth	r2, r1
c0de7d7c:	f850 2022 	ldr.w	r2, [r0, r2, lsl #2]
c0de7d80:	3201      	adds	r2, #1
c0de7d82:	d004      	beq.n	c0de7d8e <ux_flow_init+0x3e>
c0de7d84:	eb09 0206 	add.w	r2, r9, r6
c0de7d88:	3101      	adds	r1, #1
c0de7d8a:	8491      	strh	r1, [r2, #36]	; 0x24
c0de7d8c:	e7f5      	b.n	c0de7d7a <ux_flow_init+0x2a>
c0de7d8e:	b1cc      	cbz	r4, c0de7dc4 <ux_flow_init+0x74>
c0de7d90:	4620      	mov	r0, r4
c0de7d92:	eb09 0506 	add.w	r5, r9, r6
c0de7d96:	f001 fc83 	bl	c0de96a0 <pic>
c0de7d9a:	4604      	mov	r4, r0
c0de7d9c:	8c28      	ldrh	r0, [r5, #32]
c0de7d9e:	eb09 0106 	add.w	r1, r9, r6
c0de7da2:	b280      	uxth	r0, r0
c0de7da4:	69c9      	ldr	r1, [r1, #28]
c0de7da6:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de7daa:	1c41      	adds	r1, r0, #1
c0de7dac:	d00a      	beq.n	c0de7dc4 <ux_flow_init+0x74>
c0de7dae:	f001 fc77 	bl	c0de96a0 <pic>
c0de7db2:	42a0      	cmp	r0, r4
c0de7db4:	d006      	beq.n	c0de7dc4 <ux_flow_init+0x74>
c0de7db6:	eb09 0106 	add.w	r1, r9, r6
c0de7dba:	8c08      	ldrh	r0, [r1, #32]
c0de7dbc:	8448      	strh	r0, [r1, #34]	; 0x22
c0de7dbe:	3001      	adds	r0, #1
c0de7dc0:	8408      	strh	r0, [r1, #32]
c0de7dc2:	e7ec      	b.n	c0de7d9e <ux_flow_init+0x4e>
c0de7dc4:	2000      	movs	r0, #0
c0de7dc6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de7dca:	f7ff bf15 	b.w	c0de7bf8 <ux_flow_engine_init_step>
c0de7dce:	bf00      	nop
c0de7dd0:	000062d4 	.word	0x000062d4

c0de7dd4 <ux_flow_button_callback>:
c0de7dd4:	b580      	push	{r7, lr}
c0de7dd6:	4909      	ldr	r1, [pc, #36]	; (c0de7dfc <ux_flow_button_callback+0x28>)
c0de7dd8:	4288      	cmp	r0, r1
c0de7dda:	d008      	beq.n	c0de7dee <ux_flow_button_callback+0x1a>
c0de7ddc:	4908      	ldr	r1, [pc, #32]	; (c0de7e00 <ux_flow_button_callback+0x2c>)
c0de7dde:	4288      	cmp	r0, r1
c0de7de0:	d008      	beq.n	c0de7df4 <ux_flow_button_callback+0x20>
c0de7de2:	4908      	ldr	r1, [pc, #32]	; (c0de7e04 <ux_flow_button_callback+0x30>)
c0de7de4:	4288      	cmp	r0, r1
c0de7de6:	d107      	bne.n	c0de7df8 <ux_flow_button_callback+0x24>
c0de7de8:	f7ff fec4 	bl	c0de7b74 <ux_flow_prev>
c0de7dec:	e004      	b.n	c0de7df8 <ux_flow_button_callback+0x24>
c0de7dee:	f7ff ff43 	bl	c0de7c78 <ux_flow_validate>
c0de7df2:	e001      	b.n	c0de7df8 <ux_flow_button_callback+0x24>
c0de7df4:	f7ff feba 	bl	c0de7b6c <ux_flow_next>
c0de7df8:	2000      	movs	r0, #0
c0de7dfa:	bd80      	pop	{r7, pc}
c0de7dfc:	80000003 	.word	0x80000003
c0de7e00:	80000002 	.word	0x80000002
c0de7e04:	80000001 	.word	0x80000001

c0de7e08 <ux_stack_get_step_params>:
c0de7e08:	b5b0      	push	{r4, r5, r7, lr}
c0de7e0a:	b9a8      	cbnz	r0, c0de7e38 <ux_stack_get_step_params+0x30>
c0de7e0c:	480b      	ldr	r0, [pc, #44]	; (c0de7e3c <ux_stack_get_step_params+0x34>)
c0de7e0e:	eb09 0100 	add.w	r1, r9, r0
c0de7e12:	8c8a      	ldrh	r2, [r1, #36]	; 0x24
c0de7e14:	8c09      	ldrh	r1, [r1, #32]
c0de7e16:	4291      	cmp	r1, r2
c0de7e18:	d20e      	bcs.n	c0de7e38 <ux_stack_get_step_params+0x30>
c0de7e1a:	eb09 0400 	add.w	r4, r9, r0
c0de7e1e:	69e0      	ldr	r0, [r4, #28]
c0de7e20:	4d07      	ldr	r5, [pc, #28]	; (c0de7e40 <ux_stack_get_step_params+0x38>)
c0de7e22:	447d      	add	r5, pc
c0de7e24:	47a8      	blx	r5
c0de7e26:	8c21      	ldrh	r1, [r4, #32]
c0de7e28:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de7e2c:	47a8      	blx	r5
c0de7e2e:	6840      	ldr	r0, [r0, #4]
c0de7e30:	4629      	mov	r1, r5
c0de7e32:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de7e36:	4708      	bx	r1
c0de7e38:	2000      	movs	r0, #0
c0de7e3a:	bdb0      	pop	{r4, r5, r7, pc}
c0de7e3c:	000062d4 	.word	0x000062d4
c0de7e40:	0000187b 	.word	0x0000187b

c0de7e44 <ux_stack_get_current_step_params>:
c0de7e44:	4802      	ldr	r0, [pc, #8]	; (c0de7e50 <ux_stack_get_current_step_params+0xc>)
c0de7e46:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de7e4a:	3801      	subs	r0, #1
c0de7e4c:	f7ff bfdc 	b.w	c0de7e08 <ux_stack_get_step_params>
c0de7e50:	000062d4 	.word	0x000062d4

c0de7e54 <ux_flow_relayout>:
c0de7e54:	b580      	push	{r7, lr}
c0de7e56:	f7ff fe27 	bl	c0de7aa8 <ux_flow_get_current>
c0de7e5a:	b138      	cbz	r0, c0de7e6c <ux_flow_relayout+0x18>
c0de7e5c:	4804      	ldr	r0, [pc, #16]	; (c0de7e70 <ux_flow_relayout+0x1c>)
c0de7e5e:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de7e62:	3801      	subs	r0, #1
c0de7e64:	f7ff fec8 	bl	c0de7bf8 <ux_flow_engine_init_step>
c0de7e68:	2001      	movs	r0, #1
c0de7e6a:	bd80      	pop	{r7, pc}
c0de7e6c:	2000      	movs	r0, #0
c0de7e6e:	bd80      	pop	{r7, pc}
c0de7e70:	000062d4 	.word	0x000062d4

c0de7e74 <OUTLINED_FUNCTION_0>:
c0de7e74:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de7e78:	eb09 0001 	add.w	r0, r9, r1
c0de7e7c:	3a01      	subs	r2, #1
c0de7e7e:	eb02 0242 	add.w	r2, r2, r2, lsl #1
c0de7e82:	eb00 0082 	add.w	r0, r0, r2, lsl #2
c0de7e86:	69c0      	ldr	r0, [r0, #28]
c0de7e88:	2800      	cmp	r0, #0
c0de7e8a:	4770      	bx	lr

c0de7e8c <OUTLINED_FUNCTION_1>:
c0de7e8c:	eb09 0301 	add.w	r3, r9, r1
c0de7e90:	eb03 0382 	add.w	r3, r3, r2, lsl #2
c0de7e94:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
c0de7e96:	2b00      	cmp	r3, #0
c0de7e98:	4770      	bx	lr
	...

c0de7e9c <ux_layout_bb_init_common>:
c0de7e9c:	b510      	push	{r4, lr}
c0de7e9e:	4604      	mov	r4, r0
c0de7ea0:	f000 fc14 	bl	c0de86cc <ux_stack_init>
c0de7ea4:	480a      	ldr	r0, [pc, #40]	; (c0de7ed0 <ux_layout_bb_init_common+0x34>)
c0de7ea6:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de7eaa:	4448      	add	r0, r9
c0de7eac:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de7eb0:	2105      	movs	r1, #5
c0de7eb2:	f880 10d0 	strb.w	r1, [r0, #208]	; 0xd0
c0de7eb6:	4907      	ldr	r1, [pc, #28]	; (c0de7ed4 <ux_layout_bb_init_common+0x38>)
c0de7eb8:	4479      	add	r1, pc
c0de7eba:	f8c0 10cc 	str.w	r1, [r0, #204]	; 0xcc
c0de7ebe:	4906      	ldr	r1, [pc, #24]	; (c0de7ed8 <ux_layout_bb_init_common+0x3c>)
c0de7ec0:	4479      	add	r1, pc
c0de7ec2:	f8c0 10dc 	str.w	r1, [r0, #220]	; 0xdc
c0de7ec6:	2101      	movs	r1, #1
c0de7ec8:	f880 10c9 	strb.w	r1, [r0, #201]	; 0xc9
c0de7ecc:	bd10      	pop	{r4, pc}
c0de7ece:	bf00      	nop
c0de7ed0:	000062d4 	.word	0x000062d4
c0de7ed4:	00004eb8 	.word	0x00004eb8
c0de7ed8:	ffffff11 	.word	0xffffff11

c0de7edc <ux_layout_bn_prepro>:
c0de7edc:	b580      	push	{r7, lr}
c0de7ede:	f000 fb6b 	bl	c0de85b8 <ux_layout_strings_prepro>
c0de7ee2:	b158      	cbz	r0, c0de7efc <ux_layout_bn_prepro+0x20>
c0de7ee4:	4906      	ldr	r1, [pc, #24]	; (c0de7f00 <ux_layout_bn_prepro+0x24>)
c0de7ee6:	eb09 0201 	add.w	r2, r9, r1
c0de7eea:	f892 20a9 	ldrb.w	r2, [r2, #169]	; 0xa9
c0de7eee:	2a11      	cmp	r2, #17
c0de7ef0:	bf02      	ittt	eq
c0de7ef2:	4449      	addeq	r1, r9
c0de7ef4:	f248 020a 	movweq	r2, #32778	; 0x800a
c0de7ef8:	f8a1 20c0 	strheq.w	r2, [r1, #192]	; 0xc0
c0de7efc:	bd80      	pop	{r7, pc}
c0de7efe:	bf00      	nop
c0de7f00:	000062d4 	.word	0x000062d4

c0de7f04 <ux_layout_bn_init>:
c0de7f04:	b510      	push	{r4, lr}
c0de7f06:	4604      	mov	r4, r0
c0de7f08:	f7ff ffc8 	bl	c0de7e9c <ux_layout_bb_init_common>
c0de7f0c:	4807      	ldr	r0, [pc, #28]	; (c0de7f2c <ux_layout_bn_init+0x28>)
c0de7f0e:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de7f12:	4448      	add	r0, r9
c0de7f14:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de7f18:	4905      	ldr	r1, [pc, #20]	; (c0de7f30 <ux_layout_bn_init+0x2c>)
c0de7f1a:	4479      	add	r1, pc
c0de7f1c:	f8c0 10d8 	str.w	r1, [r0, #216]	; 0xd8
c0de7f20:	4620      	mov	r0, r4
c0de7f22:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de7f26:	f000 bbab 	b.w	c0de8680 <ux_stack_display>
c0de7f2a:	bf00      	nop
c0de7f2c:	000062d4 	.word	0x000062d4
c0de7f30:	ffffffbf 	.word	0xffffffbf

c0de7f34 <ux_layout_nn_prepro>:
c0de7f34:	b580      	push	{r7, lr}
c0de7f36:	f000 fb3f 	bl	c0de85b8 <ux_layout_strings_prepro>
c0de7f3a:	b158      	cbz	r0, c0de7f54 <ux_layout_nn_prepro+0x20>
c0de7f3c:	4906      	ldr	r1, [pc, #24]	; (c0de7f58 <ux_layout_nn_prepro+0x24>)
c0de7f3e:	eb09 0201 	add.w	r2, r9, r1
c0de7f42:	f892 20a9 	ldrb.w	r2, [r2, #169]	; 0xa9
c0de7f46:	2a10      	cmp	r2, #16
c0de7f48:	bf22      	ittt	cs
c0de7f4a:	4449      	addcs	r1, r9
c0de7f4c:	f248 020a 	movwcs	r2, #32778	; 0x800a
c0de7f50:	f8a1 20c0 	strhcs.w	r2, [r1, #192]	; 0xc0
c0de7f54:	bd80      	pop	{r7, pc}
c0de7f56:	bf00      	nop
c0de7f58:	000062d4 	.word	0x000062d4

c0de7f5c <ux_layout_nn_init>:
c0de7f5c:	b510      	push	{r4, lr}
c0de7f5e:	4604      	mov	r4, r0
c0de7f60:	f7ff ff9c 	bl	c0de7e9c <ux_layout_bb_init_common>
c0de7f64:	4807      	ldr	r0, [pc, #28]	; (c0de7f84 <ux_layout_nn_init+0x28>)
c0de7f66:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de7f6a:	4448      	add	r0, r9
c0de7f6c:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de7f70:	4905      	ldr	r1, [pc, #20]	; (c0de7f88 <ux_layout_nn_init+0x2c>)
c0de7f72:	4479      	add	r1, pc
c0de7f74:	f8c0 10d8 	str.w	r1, [r0, #216]	; 0xd8
c0de7f78:	4620      	mov	r0, r4
c0de7f7a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de7f7e:	f000 bb7f 	b.w	c0de8680 <ux_stack_display>
c0de7f82:	bf00      	nop
c0de7f84:	000062d4 	.word	0x000062d4
c0de7f88:	ffffffbf 	.word	0xffffffbf

c0de7f8c <ux_layout_paging_prepro_common>:
c0de7f8c:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de7f90:	f8df 8140 	ldr.w	r8, [pc, #320]	; c0de80d4 <ux_layout_paging_prepro_common+0x148>
c0de7f94:	4606      	mov	r6, r0
c0de7f96:	4614      	mov	r4, r2
c0de7f98:	460d      	mov	r5, r1
c0de7f9a:	2220      	movs	r2, #32
c0de7f9c:	4631      	mov	r1, r6
c0de7f9e:	eb09 0008 	add.w	r0, r9, r8
c0de7fa2:	30a8      	adds	r0, #168	; 0xa8
c0de7fa4:	f001 fcb3 	bl	c0de990e <__aeabi_memmove>
c0de7fa8:	7870      	ldrb	r0, [r6, #1]
c0de7faa:	f1a0 0111 	sub.w	r1, r0, #17
c0de7fae:	2903      	cmp	r1, #3
c0de7fb0:	d310      	bcc.n	c0de7fd4 <ux_layout_paging_prepro_common+0x48>
c0de7fb2:	2810      	cmp	r0, #16
c0de7fb4:	d023      	beq.n	c0de7ffe <ux_layout_paging_prepro_common+0x72>
c0de7fb6:	2802      	cmp	r0, #2
c0de7fb8:	d038      	beq.n	c0de802c <ux_layout_paging_prepro_common+0xa0>
c0de7fba:	2801      	cmp	r0, #1
c0de7fbc:	f040 8085 	bne.w	c0de80ca <ux_layout_paging_prepro_common+0x13e>
c0de7fc0:	f7ff fd04 	bl	c0de79cc <ux_flow_is_first>
c0de7fc4:	2800      	cmp	r0, #0
c0de7fc6:	f000 8080 	beq.w	c0de80ca <ux_layout_paging_prepro_common+0x13e>
c0de7fca:	eb09 0008 	add.w	r0, r9, r8
c0de7fce:	6840      	ldr	r0, [r0, #4]
c0de7fd0:	b3b8      	cbz	r0, c0de8042 <ux_layout_paging_prepro_common+0xb6>
c0de7fd2:	e07a      	b.n	c0de80ca <ux_layout_paging_prepro_common+0x13e>
c0de7fd4:	f000 000f 	and.w	r0, r0, #15
c0de7fd8:	1e46      	subs	r6, r0, #1
c0de7fda:	2e02      	cmp	r6, #2
c0de7fdc:	d875      	bhi.n	c0de80ca <ux_layout_paging_prepro_common+0x13e>
c0de7fde:	eb09 0008 	add.w	r0, r9, r8
c0de7fe2:	eb00 0046 	add.w	r0, r0, r6, lsl #1
c0de7fe6:	8a85      	ldrh	r5, [r0, #20]
c0de7fe8:	2d00      	cmp	r5, #0
c0de7fea:	d06e      	beq.n	c0de80ca <ux_layout_paging_prepro_common+0x13e>
c0de7fec:	2d7f      	cmp	r5, #127	; 0x7f
c0de7fee:	bf28      	it	cs
c0de7ff0:	257f      	movcs	r5, #127	; 0x7f
c0de7ff2:	2c00      	cmp	r4, #0
c0de7ff4:	d046      	beq.n	c0de8084 <ux_layout_paging_prepro_common+0xf8>
c0de7ff6:	4620      	mov	r0, r4
c0de7ff8:	f001 fb52 	bl	c0de96a0 <pic>
c0de7ffc:	e046      	b.n	c0de808c <ux_layout_paging_prepro_common+0x100>
c0de7ffe:	b31d      	cbz	r5, c0de8048 <ux_layout_paging_prepro_common+0xbc>
c0de8000:	eb09 0408 	add.w	r4, r9, r8
c0de8004:	4628      	mov	r0, r5
c0de8006:	68a6      	ldr	r6, [r4, #8]
c0de8008:	f001 fb4a 	bl	c0de96a0 <pic>
c0de800c:	4603      	mov	r3, r0
c0de800e:	e9d4 0101 	ldrd	r0, r1, [r4, #4]
c0de8012:	3001      	adds	r0, #1
c0de8014:	e9cd 0100 	strd	r0, r1, [sp]
c0de8018:	2e01      	cmp	r6, #1
c0de801a:	4830      	ldr	r0, [pc, #192]	; (c0de80dc <ux_layout_paging_prepro_common+0x150>)
c0de801c:	4a30      	ldr	r2, [pc, #192]	; (c0de80e0 <ux_layout_paging_prepro_common+0x154>)
c0de801e:	4478      	add	r0, pc
c0de8020:	447a      	add	r2, pc
c0de8022:	bf88      	it	hi
c0de8024:	4602      	movhi	r2, r0
c0de8026:	f104 0028 	add.w	r0, r4, #40	; 0x28
c0de802a:	e016      	b.n	c0de805a <ux_layout_paging_prepro_common+0xce>
c0de802c:	f7ff fd04 	bl	c0de7a38 <ux_flow_is_last>
c0de8030:	2800      	cmp	r0, #0
c0de8032:	d04a      	beq.n	c0de80ca <ux_layout_paging_prepro_common+0x13e>
c0de8034:	eb09 0008 	add.w	r0, r9, r8
c0de8038:	e9d0 1001 	ldrd	r1, r0, [r0, #4]
c0de803c:	3801      	subs	r0, #1
c0de803e:	4281      	cmp	r1, r0
c0de8040:	d143      	bne.n	c0de80ca <ux_layout_paging_prepro_common+0x13e>
c0de8042:	2000      	movs	r0, #0
c0de8044:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de8048:	eb09 0008 	add.w	r0, r9, r8
c0de804c:	e9d0 1201 	ldrd	r1, r2, [r0, #4]
c0de8050:	3028      	adds	r0, #40	; 0x28
c0de8052:	9200      	str	r2, [sp, #0]
c0de8054:	1c4b      	adds	r3, r1, #1
c0de8056:	4a23      	ldr	r2, [pc, #140]	; (c0de80e4 <ux_layout_paging_prepro_common+0x158>)
c0de8058:	447a      	add	r2, pc
c0de805a:	2180      	movs	r1, #128	; 0x80
c0de805c:	f001 f994 	bl	c0de9388 <snprintf>
c0de8060:	eb09 0008 	add.w	r0, r9, r8
c0de8064:	4a1c      	ldr	r2, [pc, #112]	; (c0de80d8 <ux_layout_paging_prepro_common+0x14c>)
c0de8066:	f100 0128 	add.w	r1, r0, #40	; 0x28
c0de806a:	f8c0 10c4 	str.w	r1, [r0, #196]	; 0xc4
c0de806e:	7b01      	ldrb	r1, [r0, #12]
c0de8070:	3202      	adds	r2, #2
c0de8072:	29ef      	cmp	r1, #239	; 0xef
c0de8074:	bf84      	itt	hi
c0de8076:	f248 0208 	movwhi	r2, #32776	; 0x8008
c0de807a:	f6cf 72ff 	movthi	r2, #65535	; 0xffff
c0de807e:	f8a0 20c0 	strh.w	r2, [r0, #192]	; 0xc0
c0de8082:	e022      	b.n	c0de80ca <ux_layout_paging_prepro_common+0x13e>
c0de8084:	eb09 0008 	add.w	r0, r9, r8
c0de8088:	f8d0 010c 	ldr.w	r0, [r0, #268]	; 0x10c
c0de808c:	eb09 0708 	add.w	r7, r9, r8
c0de8090:	462b      	mov	r3, r5
c0de8092:	eb07 0146 	add.w	r1, r7, r6, lsl #1
c0de8096:	f107 0428 	add.w	r4, r7, #40	; 0x28
c0de809a:	89c9      	ldrh	r1, [r1, #14]
c0de809c:	4408      	add	r0, r1
c0de809e:	2180      	movs	r1, #128	; 0x80
c0de80a0:	9000      	str	r0, [sp, #0]
c0de80a2:	4620      	mov	r0, r4
c0de80a4:	4a10      	ldr	r2, [pc, #64]	; (c0de80e8 <ux_layout_paging_prepro_common+0x15c>)
c0de80a6:	447a      	add	r2, pc
c0de80a8:	f001 f96e 	bl	c0de9388 <snprintf>
c0de80ac:	7b38      	ldrb	r0, [r7, #12]
c0de80ae:	490a      	ldr	r1, [pc, #40]	; (c0de80d8 <ux_layout_paging_prepro_common+0x14c>)
c0de80b0:	f8c7 40c4 	str.w	r4, [r7, #196]	; 0xc4
c0de80b4:	f000 000f 	and.w	r0, r0, #15
c0de80b8:	3102      	adds	r1, #2
c0de80ba:	280f      	cmp	r0, #15
c0de80bc:	bf04      	itt	eq
c0de80be:	f248 0108 	movweq	r1, #32776	; 0x8008
c0de80c2:	f6cf 71ff 	movteq	r1, #65535	; 0xffff
c0de80c6:	f8a7 10c0 	strh.w	r1, [r7, #192]	; 0xc0
c0de80ca:	eb09 0008 	add.w	r0, r9, r8
c0de80ce:	30a8      	adds	r0, #168	; 0xa8
c0de80d0:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de80d4:	000062d4 	.word	0x000062d4
c0de80d8:	ffff8008 	.word	0xffff8008
c0de80dc:	00001d4c 	.word	0x00001d4c
c0de80e0:	000020b6 	.word	0x000020b6
c0de80e4:	00003481 	.word	0x00003481
c0de80e8:	00001e95 	.word	0x00001e95

c0de80ec <ux_layout_paging_redisplay_common>:
c0de80ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de80f0:	4606      	mov	r6, r0
c0de80f2:	4812      	ldr	r0, [pc, #72]	; (c0de813c <ux_layout_paging_redisplay_common+0x50>)
c0de80f4:	4615      	mov	r5, r2
c0de80f6:	4698      	mov	r8, r3
c0de80f8:	2308      	movs	r3, #8
c0de80fa:	460f      	mov	r7, r1
c0de80fc:	eb09 0200 	add.w	r2, r9, r0
c0de8100:	eb06 00c6 	add.w	r0, r6, r6, lsl #3
c0de8104:	eb02 0480 	add.w	r4, r2, r0, lsl #2
c0de8108:	2007      	movs	r0, #7
c0de810a:	f884 00d0 	strb.w	r0, [r4, #208]	; 0xd0
c0de810e:	480c      	ldr	r0, [pc, #48]	; (c0de8140 <ux_layout_paging_redisplay_common+0x54>)
c0de8110:	4478      	add	r0, pc
c0de8112:	f8c4 00cc 	str.w	r0, [r4, #204]	; 0xcc
c0de8116:	2001      	movs	r0, #1
c0de8118:	f884 00c9 	strb.w	r0, [r4, #201]	; 0xc9
c0de811c:	7b10      	ldrb	r0, [r2, #12]
c0de811e:	0700      	lsls	r0, r0, #28
c0de8120:	bf08      	it	eq
c0de8122:	230a      	moveq	r3, #10
c0de8124:	f852 1f04 	ldr.w	r1, [r2, #4]!
c0de8128:	4638      	mov	r0, r7
c0de812a:	f000 f8e3 	bl	c0de82f4 <ux_layout_paging_compute>
c0de812e:	e9c4 8536 	strd	r8, r5, [r4, #216]	; 0xd8
c0de8132:	4630      	mov	r0, r6
c0de8134:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de8138:	f000 baa2 	b.w	c0de8680 <ux_stack_display>
c0de813c:	000062d4 	.word	0x000062d4
c0de8140:	00004d00 	.word	0x00004d00

c0de8144 <ux_layout_paging_redisplay_by_addr>:
c0de8144:	b510      	push	{r4, lr}
c0de8146:	4604      	mov	r4, r0
c0de8148:	f7ff fe7c 	bl	c0de7e44 <ux_stack_get_current_step_params>
c0de814c:	b148      	cbz	r0, c0de8162 <ux_layout_paging_redisplay_by_addr+0x1e>
c0de814e:	6841      	ldr	r1, [r0, #4]
c0de8150:	4a04      	ldr	r2, [pc, #16]	; (c0de8164 <ux_layout_paging_redisplay_by_addr+0x20>)
c0de8152:	4b05      	ldr	r3, [pc, #20]	; (c0de8168 <ux_layout_paging_redisplay_by_addr+0x24>)
c0de8154:	4620      	mov	r0, r4
c0de8156:	447a      	add	r2, pc
c0de8158:	447b      	add	r3, pc
c0de815a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de815e:	f7ff bfc5 	b.w	c0de80ec <ux_layout_paging_redisplay_common>
c0de8162:	bd10      	pop	{r4, pc}
c0de8164:	00000013 	.word	0x00000013
c0de8168:	00000095 	.word	0x00000095

c0de816c <ux_layout_paging_button_callback_by_addr>:
c0de816c:	b580      	push	{r7, lr}
c0de816e:	491c      	ldr	r1, [pc, #112]	; (c0de81e0 <ux_layout_paging_button_callback_by_addr+0x74>)
c0de8170:	4288      	cmp	r0, r1
c0de8172:	d00e      	beq.n	c0de8192 <ux_layout_paging_button_callback_by_addr+0x26>
c0de8174:	491b      	ldr	r1, [pc, #108]	; (c0de81e4 <ux_layout_paging_button_callback_by_addr+0x78>)
c0de8176:	4288      	cmp	r0, r1
c0de8178:	d018      	beq.n	c0de81ac <ux_layout_paging_button_callback_by_addr+0x40>
c0de817a:	491b      	ldr	r1, [pc, #108]	; (c0de81e8 <ux_layout_paging_button_callback_by_addr+0x7c>)
c0de817c:	4288      	cmp	r0, r1
c0de817e:	d12c      	bne.n	c0de81da <ux_layout_paging_button_callback_by_addr+0x6e>
c0de8180:	481a      	ldr	r0, [pc, #104]	; (c0de81ec <ux_layout_paging_button_callback_by_addr+0x80>)
c0de8182:	eb09 0100 	add.w	r1, r9, r0
c0de8186:	6849      	ldr	r1, [r1, #4]
c0de8188:	b329      	cbz	r1, c0de81d6 <ux_layout_paging_button_callback_by_addr+0x6a>
c0de818a:	eb09 0200 	add.w	r2, r9, r0
c0de818e:	3901      	subs	r1, #1
c0de8190:	e01a      	b.n	c0de81c8 <ux_layout_paging_button_callback_by_addr+0x5c>
c0de8192:	4816      	ldr	r0, [pc, #88]	; (c0de81ec <ux_layout_paging_button_callback_by_addr+0x80>)
c0de8194:	eb09 0100 	add.w	r1, r9, r0
c0de8198:	6889      	ldr	r1, [r1, #8]
c0de819a:	b121      	cbz	r1, c0de81a6 <ux_layout_paging_button_callback_by_addr+0x3a>
c0de819c:	4448      	add	r0, r9
c0de819e:	3901      	subs	r1, #1
c0de81a0:	6840      	ldr	r0, [r0, #4]
c0de81a2:	4281      	cmp	r1, r0
c0de81a4:	d119      	bne.n	c0de81da <ux_layout_paging_button_callback_by_addr+0x6e>
c0de81a6:	f7ff fd67 	bl	c0de7c78 <ux_flow_validate>
c0de81aa:	e016      	b.n	c0de81da <ux_layout_paging_button_callback_by_addr+0x6e>
c0de81ac:	480f      	ldr	r0, [pc, #60]	; (c0de81ec <ux_layout_paging_button_callback_by_addr+0x80>)
c0de81ae:	eb09 0200 	add.w	r2, r9, r0
c0de81b2:	e9d2 1201 	ldrd	r1, r2, [r2, #4]
c0de81b6:	3a01      	subs	r2, #1
c0de81b8:	4291      	cmp	r1, r2
c0de81ba:	d102      	bne.n	c0de81c2 <ux_layout_paging_button_callback_by_addr+0x56>
c0de81bc:	f7ff fcd6 	bl	c0de7b6c <ux_flow_next>
c0de81c0:	e00b      	b.n	c0de81da <ux_layout_paging_button_callback_by_addr+0x6e>
c0de81c2:	eb09 0200 	add.w	r2, r9, r0
c0de81c6:	3101      	adds	r1, #1
c0de81c8:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de81cc:	6051      	str	r1, [r2, #4]
c0de81ce:	3801      	subs	r0, #1
c0de81d0:	f7ff ffb8 	bl	c0de8144 <ux_layout_paging_redisplay_by_addr>
c0de81d4:	e001      	b.n	c0de81da <ux_layout_paging_button_callback_by_addr+0x6e>
c0de81d6:	f7ff fccd 	bl	c0de7b74 <ux_flow_prev>
c0de81da:	2000      	movs	r0, #0
c0de81dc:	bd80      	pop	{r7, pc}
c0de81de:	bf00      	nop
c0de81e0:	80000003 	.word	0x80000003
c0de81e4:	80000002 	.word	0x80000002
c0de81e8:	80000001 	.word	0x80000001
c0de81ec:	000062d4 	.word	0x000062d4

c0de81f0 <ux_layout_paging_prepro_by_addr>:
c0de81f0:	b510      	push	{r4, lr}
c0de81f2:	4604      	mov	r4, r0
c0de81f4:	f7ff fe26 	bl	c0de7e44 <ux_stack_get_current_step_params>
c0de81f8:	b130      	cbz	r0, c0de8208 <ux_layout_paging_prepro_by_addr+0x18>
c0de81fa:	e9d0 1200 	ldrd	r1, r2, [r0]
c0de81fe:	4620      	mov	r0, r4
c0de8200:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de8204:	f7ff bec2 	b.w	c0de7f8c <ux_layout_paging_prepro_common>
c0de8208:	2000      	movs	r0, #0
c0de820a:	bd10      	pop	{r4, pc}

c0de820c <ux_layout_paging_init_common>:
c0de820c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de8210:	f8df 8088 	ldr.w	r8, [pc, #136]	; c0de829c <ux_layout_paging_init_common+0x90>
c0de8214:	4604      	mov	r4, r0
c0de8216:	4692      	mov	sl, r2
c0de8218:	460d      	mov	r5, r1
c0de821a:	eb09 0008 	add.w	r0, r9, r8
c0de821e:	7b07      	ldrb	r7, [r0, #12]
c0de8220:	f7ff fc2a 	bl	c0de7a78 <ux_flow_direction>
c0de8224:	2801      	cmp	r0, #1
c0de8226:	d00c      	beq.n	c0de8242 <ux_layout_paging_init_common+0x36>
c0de8228:	3001      	adds	r0, #1
c0de822a:	d10c      	bne.n	c0de8246 <ux_layout_paging_init_common+0x3a>
c0de822c:	eb09 0608 	add.w	r6, r9, r8
c0de8230:	2114      	movs	r1, #20
c0de8232:	f106 0008 	add.w	r0, r6, #8
c0de8236:	f001 fb65 	bl	c0de9904 <__aeabi_memclr>
c0de823a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
c0de823e:	6070      	str	r0, [r6, #4]
c0de8240:	e001      	b.n	c0de8246 <ux_layout_paging_init_common+0x3a>
c0de8242:	f000 f851 	bl	c0de82e8 <OUTLINED_FUNCTION_1>
c0de8246:	eb09 0608 	add.w	r6, r9, r8
c0de824a:	4620      	mov	r0, r4
c0de824c:	7337      	strb	r7, [r6, #12]
c0de824e:	f000 fa3d 	bl	c0de86cc <ux_stack_init>
c0de8252:	f8d6 010c 	ldr.w	r0, [r6, #268]	; 0x10c
c0de8256:	2308      	movs	r3, #8
c0de8258:	4328      	orrs	r0, r5
c0de825a:	4811      	ldr	r0, [pc, #68]	; (c0de82a0 <ux_layout_paging_init_common+0x94>)
c0de825c:	4478      	add	r0, pc
c0de825e:	bf18      	it	ne
c0de8260:	4628      	movne	r0, r5
c0de8262:	7b31      	ldrb	r1, [r6, #12]
c0de8264:	0709      	lsls	r1, r1, #28
c0de8266:	bf08      	it	eq
c0de8268:	230a      	moveq	r3, #10
c0de826a:	1d32      	adds	r2, r6, #4
c0de826c:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
c0de8270:	f000 f840 	bl	c0de82f4 <ux_layout_paging_compute>
c0de8274:	60b0      	str	r0, [r6, #8]
c0de8276:	b148      	cbz	r0, c0de828c <ux_layout_paging_init_common+0x80>
c0de8278:	eb09 0108 	add.w	r1, r9, r8
c0de827c:	3801      	subs	r0, #1
c0de827e:	6849      	ldr	r1, [r1, #4]
c0de8280:	4281      	cmp	r1, r0
c0de8282:	bf84      	itt	hi
c0de8284:	eb09 0108 	addhi.w	r1, r9, r8
c0de8288:	6048      	strhi	r0, [r1, #4]
c0de828a:	e001      	b.n	c0de8290 <ux_layout_paging_init_common+0x84>
c0de828c:	f000 f82c 	bl	c0de82e8 <OUTLINED_FUNCTION_1>
c0de8290:	4620      	mov	r0, r4
c0de8292:	4651      	mov	r1, sl
c0de8294:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de8298:	4708      	bx	r1
c0de829a:	bf00      	nop
c0de829c:	000062d4 	.word	0x000062d4
c0de82a0:	00002eb0 	.word	0x00002eb0

c0de82a4 <ux_layout_paging_reset>:
c0de82a4:	b580      	push	{r7, lr}
c0de82a6:	4803      	ldr	r0, [pc, #12]	; (c0de82b4 <ux_layout_paging_reset+0x10>)
c0de82a8:	2118      	movs	r1, #24
c0de82aa:	4448      	add	r0, r9
c0de82ac:	3004      	adds	r0, #4
c0de82ae:	f001 fb29 	bl	c0de9904 <__aeabi_memclr>
c0de82b2:	bd80      	pop	{r7, pc}
c0de82b4:	000062d4 	.word	0x000062d4

c0de82b8 <ux_layout_paging_init>:
c0de82b8:	b510      	push	{r4, lr}
c0de82ba:	4604      	mov	r4, r0
c0de82bc:	f7ff fda4 	bl	c0de7e08 <ux_stack_get_step_params>
c0de82c0:	6841      	ldr	r1, [r0, #4]
c0de82c2:	4a03      	ldr	r2, [pc, #12]	; (c0de82d0 <ux_layout_paging_init+0x18>)
c0de82c4:	4620      	mov	r0, r4
c0de82c6:	447a      	add	r2, pc
c0de82c8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de82cc:	f7ff bf9e 	b.w	c0de820c <ux_layout_paging_init_common>
c0de82d0:	fffffe7b 	.word	0xfffffe7b

c0de82d4 <ux_layout_bn_paging_init>:
c0de82d4:	4901      	ldr	r1, [pc, #4]	; (c0de82dc <ux_layout_bn_paging_init+0x8>)
c0de82d6:	22f0      	movs	r2, #240	; 0xf0
c0de82d8:	f000 b802 	b.w	c0de82e0 <OUTLINED_FUNCTION_0>
c0de82dc:	000062d4 	.word	0x000062d4

c0de82e0 <OUTLINED_FUNCTION_0>:
c0de82e0:	4449      	add	r1, r9
c0de82e2:	730a      	strb	r2, [r1, #12]
c0de82e4:	f7ff bfe8 	b.w	c0de82b8 <ux_layout_paging_init>

c0de82e8 <OUTLINED_FUNCTION_1>:
c0de82e8:	eb09 0008 	add.w	r0, r9, r8
c0de82ec:	2118      	movs	r1, #24
c0de82ee:	3004      	adds	r0, #4
c0de82f0:	f001 bb08 	b.w	c0de9904 <__aeabi_memclr>

c0de82f4 <ux_layout_paging_compute>:
c0de82f4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de82f8:	b088      	sub	sp, #32
c0de82fa:	460e      	mov	r6, r1
c0de82fc:	4607      	mov	r7, r0
c0de82fe:	f102 000a 	add.w	r0, r2, #10
c0de8302:	210c      	movs	r1, #12
c0de8304:	461c      	mov	r4, r3
c0de8306:	4615      	mov	r5, r2
c0de8308:	f001 fafc 	bl	c0de9904 <__aeabi_memclr>
c0de830c:	1c70      	adds	r0, r6, #1
c0de830e:	9005      	str	r0, [sp, #20]
c0de8310:	d004      	beq.n	c0de831c <ux_layout_paging_compute+0x28>
c0de8312:	6868      	ldr	r0, [r5, #4]
c0de8314:	42b0      	cmp	r0, r6
c0de8316:	d801      	bhi.n	c0de831c <ux_layout_paging_compute+0x28>
c0de8318:	2000      	movs	r0, #0
c0de831a:	e076      	b.n	c0de840a <ux_layout_paging_compute+0x116>
c0de831c:	9503      	str	r5, [sp, #12]
c0de831e:	b127      	cbz	r7, c0de832a <ux_layout_paging_compute+0x36>
c0de8320:	4638      	mov	r0, r7
c0de8322:	f001 f9bd 	bl	c0de96a0 <pic>
c0de8326:	4682      	mov	sl, r0
c0de8328:	e003      	b.n	c0de8332 <ux_layout_paging_compute+0x3e>
c0de832a:	4839      	ldr	r0, [pc, #228]	; (c0de8410 <ux_layout_paging_compute+0x11c>)
c0de832c:	4448      	add	r0, r9
c0de832e:	f8d0 a10c 	ldr.w	sl, [r0, #268]	; 0x10c
c0de8332:	4650      	mov	r0, sl
c0de8334:	f001 fb50 	bl	c0de99d8 <strlen>
c0de8338:	eb0a 0800 	add.w	r8, sl, r0
c0de833c:	2300      	movs	r3, #0
c0de833e:	2200      	movs	r2, #0
c0de8340:	4650      	mov	r0, sl
c0de8342:	f8cd a008 	str.w	sl, [sp, #8]
c0de8346:	9604      	str	r6, [sp, #16]
c0de8348:	45c2      	cmp	sl, r8
c0de834a:	d25b      	bcs.n	c0de8404 <ux_layout_paging_compute+0x110>
c0de834c:	2500      	movs	r5, #0
c0de834e:	4657      	mov	r7, sl
c0de8350:	e9cd 3206 	strd	r3, r2, [sp, #24]
c0de8354:	eb0a 0605 	add.w	r6, sl, r5
c0de8358:	4546      	cmp	r6, r8
c0de835a:	d217      	bcs.n	c0de838c <ux_layout_paging_compute+0x98>
c0de835c:	2000      	movs	r0, #0
c0de835e:	f105 0b01 	add.w	fp, r5, #1
c0de8362:	2100      	movs	r1, #0
c0de8364:	4652      	mov	r2, sl
c0de8366:	9000      	str	r0, [sp, #0]
c0de8368:	fa5f f38b 	uxtb.w	r3, fp
c0de836c:	4620      	mov	r0, r4
c0de836e:	f7fe f8a1 	bl	c0de64b4 <bagl_compute_line_width>
c0de8372:	2872      	cmp	r0, #114	; 0x72
c0de8374:	d80a      	bhi.n	c0de838c <ux_layout_paging_compute+0x98>
c0de8376:	7835      	ldrb	r5, [r6, #0]
c0de8378:	4628      	mov	r0, r5
c0de837a:	f000 f84b 	bl	c0de8414 <is_word_delim>
c0de837e:	2800      	cmp	r0, #0
c0de8380:	bf18      	it	ne
c0de8382:	4637      	movne	r7, r6
c0de8384:	2d0a      	cmp	r5, #10
c0de8386:	465d      	mov	r5, fp
c0de8388:	d1e4      	bne.n	c0de8354 <ux_layout_paging_compute+0x60>
c0de838a:	e000      	b.n	c0de838e <ux_layout_paging_compute+0x9a>
c0de838c:	46ab      	mov	fp, r5
c0de838e:	eb0a 050b 	add.w	r5, sl, fp
c0de8392:	4545      	cmp	r5, r8
c0de8394:	d211      	bcs.n	c0de83ba <ux_layout_paging_compute+0xc6>
c0de8396:	9e04      	ldr	r6, [sp, #16]
c0de8398:	f1bb 0f00 	cmp.w	fp, #0
c0de839c:	bf18      	it	ne
c0de839e:	4557      	cmpne	r7, sl
c0de83a0:	d00c      	beq.n	c0de83bc <ux_layout_paging_compute+0xc8>
c0de83a2:	f815 0c01 	ldrb.w	r0, [r5, #-1]
c0de83a6:	f000 f835 	bl	c0de8414 <is_word_delim>
c0de83aa:	b938      	cbnz	r0, c0de83bc <ux_layout_paging_compute+0xc8>
c0de83ac:	7828      	ldrb	r0, [r5, #0]
c0de83ae:	f000 f831 	bl	c0de8414 <is_word_delim>
c0de83b2:	b918      	cbnz	r0, c0de83bc <ux_layout_paging_compute+0xc8>
c0de83b4:	eba7 0b0a 	sub.w	fp, r7, sl
c0de83b8:	e000      	b.n	c0de83bc <ux_layout_paging_compute+0xc8>
c0de83ba:	9e04      	ldr	r6, [sp, #16]
c0de83bc:	9805      	ldr	r0, [sp, #20]
c0de83be:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
c0de83c2:	b180      	cbz	r0, c0de83e6 <ux_layout_paging_compute+0xf2>
c0de83c4:	42b2      	cmp	r2, r6
c0de83c6:	d10e      	bne.n	c0de83e6 <ux_layout_paging_compute+0xf2>
c0de83c8:	9803      	ldr	r0, [sp, #12]
c0de83ca:	6840      	ldr	r0, [r0, #4]
c0de83cc:	42b0      	cmp	r0, r6
c0de83ce:	d90a      	bls.n	c0de83e6 <ux_layout_paging_compute+0xf2>
c0de83d0:	9803      	ldr	r0, [sp, #12]
c0de83d2:	9902      	ldr	r1, [sp, #8]
c0de83d4:	2b01      	cmp	r3, #1
c0de83d6:	eb00 0043 	add.w	r0, r0, r3, lsl #1
c0de83da:	ebaa 0101 	sub.w	r1, sl, r1
c0de83de:	f8a0 b010 	strh.w	fp, [r0, #16]
c0de83e2:	8141      	strh	r1, [r0, #10]
c0de83e4:	d810      	bhi.n	c0de8408 <ux_layout_paging_compute+0x114>
c0de83e6:	44da      	add	sl, fp
c0de83e8:	2000      	movs	r0, #0
c0de83ea:	2100      	movs	r1, #0
c0de83ec:	45c2      	cmp	sl, r8
c0de83ee:	bf38      	it	cc
c0de83f0:	2001      	movcc	r0, #1
c0de83f2:	3301      	adds	r3, #1
c0de83f4:	2b02      	cmp	r3, #2
c0de83f6:	bf88      	it	hi
c0de83f8:	2101      	movhi	r1, #1
c0de83fa:	4008      	ands	r0, r1
c0de83fc:	bf18      	it	ne
c0de83fe:	2300      	movne	r3, #0
c0de8400:	4402      	add	r2, r0
c0de8402:	e7a1      	b.n	c0de8348 <ux_layout_paging_compute+0x54>
c0de8404:	1c50      	adds	r0, r2, #1
c0de8406:	e000      	b.n	c0de840a <ux_layout_paging_compute+0x116>
c0de8408:	2001      	movs	r0, #1
c0de840a:	b008      	add	sp, #32
c0de840c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de8410:	000062d4 	.word	0x000062d4

c0de8414 <is_word_delim>:
c0de8414:	4601      	mov	r1, r0
c0de8416:	2001      	movs	r0, #1
c0de8418:	290a      	cmp	r1, #10
c0de841a:	d006      	beq.n	c0de842a <is_word_delim+0x16>
c0de841c:	2920      	cmp	r1, #32
c0de841e:	d004      	beq.n	c0de842a <is_word_delim+0x16>
c0de8420:	292d      	cmp	r1, #45	; 0x2d
c0de8422:	d002      	beq.n	c0de842a <is_word_delim+0x16>
c0de8424:	295f      	cmp	r1, #95	; 0x5f
c0de8426:	bf18      	it	ne
c0de8428:	2000      	movne	r0, #0
c0de842a:	4770      	bx	lr

c0de842c <ux_layout_pb_prepro>:
c0de842c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de842e:	4f15      	ldr	r7, [pc, #84]	; (c0de8484 <ux_layout_pb_prepro+0x58>)
c0de8430:	4605      	mov	r5, r0
c0de8432:	eb09 0007 	add.w	r0, r9, r7
c0de8436:	f100 06a8 	add.w	r6, r0, #168	; 0xa8
c0de843a:	f7ff fd03 	bl	c0de7e44 <ux_stack_get_current_step_params>
c0de843e:	4604      	mov	r4, r0
c0de8440:	4630      	mov	r0, r6
c0de8442:	4629      	mov	r1, r5
c0de8444:	2220      	movs	r2, #32
c0de8446:	f001 fa62 	bl	c0de990e <__aeabi_memmove>
c0de844a:	7868      	ldrb	r0, [r5, #1]
c0de844c:	2811      	cmp	r0, #17
c0de844e:	d008      	beq.n	c0de8462 <ux_layout_pb_prepro+0x36>
c0de8450:	2802      	cmp	r0, #2
c0de8452:	d008      	beq.n	c0de8466 <ux_layout_pb_prepro+0x3a>
c0de8454:	2810      	cmp	r0, #16
c0de8456:	d00b      	beq.n	c0de8470 <ux_layout_pb_prepro+0x44>
c0de8458:	2801      	cmp	r0, #1
c0de845a:	d10e      	bne.n	c0de847a <ux_layout_pb_prepro+0x4e>
c0de845c:	f7ff fab6 	bl	c0de79cc <ux_flow_is_first>
c0de8460:	e003      	b.n	c0de846a <ux_layout_pb_prepro+0x3e>
c0de8462:	6861      	ldr	r1, [r4, #4]
c0de8464:	e005      	b.n	c0de8472 <ux_layout_pb_prepro+0x46>
c0de8466:	f7ff fae7 	bl	c0de7a38 <ux_flow_is_last>
c0de846a:	b130      	cbz	r0, c0de847a <ux_layout_pb_prepro+0x4e>
c0de846c:	2000      	movs	r0, #0
c0de846e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de8470:	6821      	ldr	r1, [r4, #0]
c0de8472:	eb09 0007 	add.w	r0, r9, r7
c0de8476:	f8c0 10c4 	str.w	r1, [r0, #196]	; 0xc4
c0de847a:	eb09 0007 	add.w	r0, r9, r7
c0de847e:	30a8      	adds	r0, #168	; 0xa8
c0de8480:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de8482:	bf00      	nop
c0de8484:	000062d4 	.word	0x000062d4

c0de8488 <ux_layout_pb_init>:
c0de8488:	b510      	push	{r4, lr}
c0de848a:	4604      	mov	r4, r0
c0de848c:	f000 f91e 	bl	c0de86cc <ux_stack_init>
c0de8490:	480d      	ldr	r0, [pc, #52]	; (c0de84c8 <ux_layout_pb_init+0x40>)
c0de8492:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de8496:	4448      	add	r0, r9
c0de8498:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de849c:	2105      	movs	r1, #5
c0de849e:	f880 10d0 	strb.w	r1, [r0, #208]	; 0xd0
c0de84a2:	490a      	ldr	r1, [pc, #40]	; (c0de84cc <ux_layout_pb_init+0x44>)
c0de84a4:	4479      	add	r1, pc
c0de84a6:	f8c0 10cc 	str.w	r1, [r0, #204]	; 0xcc
c0de84aa:	4909      	ldr	r1, [pc, #36]	; (c0de84d0 <ux_layout_pb_init+0x48>)
c0de84ac:	4a09      	ldr	r2, [pc, #36]	; (c0de84d4 <ux_layout_pb_init+0x4c>)
c0de84ae:	4479      	add	r1, pc
c0de84b0:	447a      	add	r2, pc
c0de84b2:	e9c0 2136 	strd	r2, r1, [r0, #216]	; 0xd8
c0de84b6:	2101      	movs	r1, #1
c0de84b8:	f880 10c9 	strb.w	r1, [r0, #201]	; 0xc9
c0de84bc:	4620      	mov	r0, r4
c0de84be:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de84c2:	f000 b8dd 	b.w	c0de8680 <ux_stack_display>
c0de84c6:	bf00      	nop
c0de84c8:	000062d4 	.word	0x000062d4
c0de84cc:	00004a4c 	.word	0x00004a4c
c0de84d0:	fffff923 	.word	0xfffff923
c0de84d4:	ffffff79 	.word	0xffffff79

c0de84d8 <ux_layout_pbb_prepro>:
c0de84d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de84da:	4f1a      	ldr	r7, [pc, #104]	; (c0de8544 <ux_layout_pbb_prepro+0x6c>)
c0de84dc:	4605      	mov	r5, r0
c0de84de:	eb09 0007 	add.w	r0, r9, r7
c0de84e2:	f100 06a8 	add.w	r6, r0, #168	; 0xa8
c0de84e6:	f7ff fcad 	bl	c0de7e44 <ux_stack_get_current_step_params>
c0de84ea:	4604      	mov	r4, r0
c0de84ec:	4630      	mov	r0, r6
c0de84ee:	4629      	mov	r1, r5
c0de84f0:	2220      	movs	r2, #32
c0de84f2:	f001 fa0c 	bl	c0de990e <__aeabi_memmove>
c0de84f6:	7868      	ldrb	r0, [r5, #1]
c0de84f8:	f1a0 0110 	sub.w	r1, r0, #16
c0de84fc:	2902      	cmp	r1, #2
c0de84fe:	d308      	bcc.n	c0de8512 <ux_layout_pbb_prepro+0x3a>
c0de8500:	280f      	cmp	r0, #15
c0de8502:	d010      	beq.n	c0de8526 <ux_layout_pbb_prepro+0x4e>
c0de8504:	2802      	cmp	r0, #2
c0de8506:	d017      	beq.n	c0de8538 <ux_layout_pbb_prepro+0x60>
c0de8508:	2801      	cmp	r0, #1
c0de850a:	d111      	bne.n	c0de8530 <ux_layout_pbb_prepro+0x58>
c0de850c:	f7ff fa5e 	bl	c0de79cc <ux_flow_is_first>
c0de8510:	e014      	b.n	c0de853c <ux_layout_pbb_prepro+0x64>
c0de8512:	eb09 0007 	add.w	r0, r9, r7
c0de8516:	f890 10a9 	ldrb.w	r1, [r0, #169]	; 0xa9
c0de851a:	f001 010f 	and.w	r1, r1, #15
c0de851e:	eb04 0181 	add.w	r1, r4, r1, lsl #2
c0de8522:	6849      	ldr	r1, [r1, #4]
c0de8524:	e002      	b.n	c0de852c <ux_layout_pbb_prepro+0x54>
c0de8526:	6821      	ldr	r1, [r4, #0]
c0de8528:	eb09 0007 	add.w	r0, r9, r7
c0de852c:	f8c0 10c4 	str.w	r1, [r0, #196]	; 0xc4
c0de8530:	eb09 0007 	add.w	r0, r9, r7
c0de8534:	30a8      	adds	r0, #168	; 0xa8
c0de8536:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de8538:	f7ff fa7e 	bl	c0de7a38 <ux_flow_is_last>
c0de853c:	2800      	cmp	r0, #0
c0de853e:	d0f7      	beq.n	c0de8530 <ux_layout_pbb_prepro+0x58>
c0de8540:	2000      	movs	r0, #0
c0de8542:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de8544:	000062d4 	.word	0x000062d4

c0de8548 <ux_layout_pbb_init_common>:
c0de8548:	b510      	push	{r4, lr}
c0de854a:	4604      	mov	r4, r0
c0de854c:	f000 f8be 	bl	c0de86cc <ux_stack_init>
c0de8550:	480a      	ldr	r0, [pc, #40]	; (c0de857c <ux_layout_pbb_init_common+0x34>)
c0de8552:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de8556:	4448      	add	r0, r9
c0de8558:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de855c:	2106      	movs	r1, #6
c0de855e:	f880 10d0 	strb.w	r1, [r0, #208]	; 0xd0
c0de8562:	4907      	ldr	r1, [pc, #28]	; (c0de8580 <ux_layout_pbb_init_common+0x38>)
c0de8564:	4479      	add	r1, pc
c0de8566:	f8c0 10cc 	str.w	r1, [r0, #204]	; 0xcc
c0de856a:	4906      	ldr	r1, [pc, #24]	; (c0de8584 <ux_layout_pbb_init_common+0x3c>)
c0de856c:	4479      	add	r1, pc
c0de856e:	f8c0 10dc 	str.w	r1, [r0, #220]	; 0xdc
c0de8572:	2101      	movs	r1, #1
c0de8574:	f880 10c9 	strb.w	r1, [r0, #201]	; 0xc9
c0de8578:	bd10      	pop	{r4, pc}
c0de857a:	bf00      	nop
c0de857c:	000062d4 	.word	0x000062d4
c0de8580:	00004a2c 	.word	0x00004a2c
c0de8584:	fffff865 	.word	0xfffff865

c0de8588 <ux_layout_pbb_init>:
c0de8588:	b510      	push	{r4, lr}
c0de858a:	4604      	mov	r4, r0
c0de858c:	f7ff ffdc 	bl	c0de8548 <ux_layout_pbb_init_common>
c0de8590:	4807      	ldr	r0, [pc, #28]	; (c0de85b0 <ux_layout_pbb_init+0x28>)
c0de8592:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de8596:	4448      	add	r0, r9
c0de8598:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de859c:	4905      	ldr	r1, [pc, #20]	; (c0de85b4 <ux_layout_pbb_init+0x2c>)
c0de859e:	4479      	add	r1, pc
c0de85a0:	f8c0 10d8 	str.w	r1, [r0, #216]	; 0xd8
c0de85a4:	4620      	mov	r0, r4
c0de85a6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de85aa:	f000 b869 	b.w	c0de8680 <ux_stack_display>
c0de85ae:	bf00      	nop
c0de85b0:	000062d4 	.word	0x000062d4
c0de85b4:	ffffff37 	.word	0xffffff37

c0de85b8 <ux_layout_strings_prepro>:
c0de85b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de85ba:	4f17      	ldr	r7, [pc, #92]	; (c0de8618 <ux_layout_strings_prepro+0x60>)
c0de85bc:	4605      	mov	r5, r0
c0de85be:	eb09 0007 	add.w	r0, r9, r7
c0de85c2:	f100 06a8 	add.w	r6, r0, #168	; 0xa8
c0de85c6:	f7ff fc3d 	bl	c0de7e44 <ux_stack_get_current_step_params>
c0de85ca:	4604      	mov	r4, r0
c0de85cc:	4630      	mov	r0, r6
c0de85ce:	4629      	mov	r1, r5
c0de85d0:	2220      	movs	r2, #32
c0de85d2:	f001 f99c 	bl	c0de990e <__aeabi_memmove>
c0de85d6:	7868      	ldrb	r0, [r5, #1]
c0de85d8:	2802      	cmp	r0, #2
c0de85da:	d004      	beq.n	c0de85e6 <ux_layout_strings_prepro+0x2e>
c0de85dc:	2801      	cmp	r0, #1
c0de85de:	d107      	bne.n	c0de85f0 <ux_layout_strings_prepro+0x38>
c0de85e0:	f7ff f9f4 	bl	c0de79cc <ux_flow_is_first>
c0de85e4:	e001      	b.n	c0de85ea <ux_layout_strings_prepro+0x32>
c0de85e6:	f7ff fa27 	bl	c0de7a38 <ux_flow_is_last>
c0de85ea:	b180      	cbz	r0, c0de860e <ux_layout_strings_prepro+0x56>
c0de85ec:	2000      	movs	r0, #0
c0de85ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de85f0:	eb09 0007 	add.w	r0, r9, r7
c0de85f4:	f890 00a9 	ldrb.w	r0, [r0, #169]	; 0xa9
c0de85f8:	f010 0ff0 	tst.w	r0, #240	; 0xf0
c0de85fc:	d007      	beq.n	c0de860e <ux_layout_strings_prepro+0x56>
c0de85fe:	f000 000f 	and.w	r0, r0, #15
c0de8602:	eb09 0107 	add.w	r1, r9, r7
c0de8606:	f854 0020 	ldr.w	r0, [r4, r0, lsl #2]
c0de860a:	f8c1 00c4 	str.w	r0, [r1, #196]	; 0xc4
c0de860e:	eb09 0007 	add.w	r0, r9, r7
c0de8612:	30a8      	adds	r0, #168	; 0xa8
c0de8614:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de8616:	bf00      	nop
c0de8618:	000062d4 	.word	0x000062d4

c0de861c <ux_stack_push>:
c0de861c:	b5b0      	push	{r4, r5, r7, lr}
c0de861e:	4c07      	ldr	r4, [pc, #28]	; (c0de863c <ux_stack_push+0x20>)
c0de8620:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de8624:	b940      	cbnz	r0, c0de8638 <ux_stack_push+0x1c>
c0de8626:	f000 f8d1 	bl	c0de87cc <OUTLINED_FUNCTION_0>
c0de862a:	2001      	movs	r0, #1
c0de862c:	2100      	movs	r1, #0
c0de862e:	f809 0004 	strb.w	r0, [r9, r4]
c0de8632:	e9c5 1107 	strd	r1, r1, [r5, #28]
c0de8636:	6269      	str	r1, [r5, #36]	; 0x24
c0de8638:	3801      	subs	r0, #1
c0de863a:	bdb0      	pop	{r4, r5, r7, pc}
c0de863c:	000062d4 	.word	0x000062d4

c0de8640 <ux_stack_redisplay>:
c0de8640:	b580      	push	{r7, lr}
c0de8642:	f7ff fc07 	bl	c0de7e54 <ux_flow_relayout>
c0de8646:	b100      	cbz	r0, c0de864a <ux_stack_redisplay+0xa>
c0de8648:	bd80      	pop	{r7, pc}
c0de864a:	480c      	ldr	r0, [pc, #48]	; (c0de867c <ux_stack_redisplay+0x3c>)
c0de864c:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de8650:	2901      	cmp	r1, #1
c0de8652:	d108      	bne.n	c0de8666 <ux_stack_redisplay+0x26>
c0de8654:	4448      	add	r0, r9
c0de8656:	2100      	movs	r1, #0
c0de8658:	f8a0 10ca 	strh.w	r1, [r0, #202]	; 0xca
c0de865c:	2000      	movs	r0, #0
c0de865e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de8662:	f000 b80d 	b.w	c0de8680 <ux_stack_display>
c0de8666:	2900      	cmp	r1, #0
c0de8668:	d1ee      	bne.n	c0de8648 <ux_stack_redisplay+0x8>
c0de866a:	eb09 0100 	add.w	r1, r9, r0
c0de866e:	7849      	ldrb	r1, [r1, #1]
c0de8670:	29aa      	cmp	r1, #170	; 0xaa
c0de8672:	bf02      	ittt	eq
c0de8674:	4448      	addeq	r0, r9
c0de8676:	2169      	moveq	r1, #105	; 0x69
c0de8678:	7041      	strbeq	r1, [r0, #1]
c0de867a:	bd80      	pop	{r7, pc}
c0de867c:	000062d4 	.word	0x000062d4

c0de8680 <ux_stack_display>:
c0de8680:	b510      	push	{r4, lr}
c0de8682:	4911      	ldr	r1, [pc, #68]	; (c0de86c8 <ux_stack_display+0x48>)
c0de8684:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de8688:	b1a2      	cbz	r2, c0de86b4 <ux_stack_display+0x34>
c0de868a:	1c43      	adds	r3, r0, #1
c0de868c:	4293      	cmp	r3, r2
c0de868e:	d10f      	bne.n	c0de86b0 <ux_stack_display+0x30>
c0de8690:	4449      	add	r1, r9
c0de8692:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
c0de8696:	eb01 0480 	add.w	r4, r1, r0, lsl #2
c0de869a:	f000 fa77 	bl	c0de8b8c <io_seproxyhal_init_ux>
c0de869e:	2000      	movs	r0, #0
c0de86a0:	f8a4 00ca 	strh.w	r0, [r4, #202]	; 0xca
c0de86a4:	f104 00c8 	add.w	r0, r4, #200	; 0xc8
c0de86a8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de86ac:	f000 b838 	b.w	c0de8720 <ux_stack_display_elements>
c0de86b0:	b103      	cbz	r3, c0de86b4 <ux_stack_display+0x34>
c0de86b2:	bd10      	pop	{r4, pc}
c0de86b4:	eb09 0001 	add.w	r0, r9, r1
c0de86b8:	7840      	ldrb	r0, [r0, #1]
c0de86ba:	28aa      	cmp	r0, #170	; 0xaa
c0de86bc:	bf02      	ittt	eq
c0de86be:	eb09 0001 	addeq.w	r0, r9, r1
c0de86c2:	2169      	moveq	r1, #105	; 0x69
c0de86c4:	7041      	strbeq	r1, [r0, #1]
c0de86c6:	bd10      	pop	{r4, pc}
c0de86c8:	000062d4 	.word	0x000062d4

c0de86cc <ux_stack_init>:
c0de86cc:	b510      	push	{r4, lr}
c0de86ce:	4604      	mov	r4, r0
c0de86d0:	f000 fa5c 	bl	c0de8b8c <io_seproxyhal_init_ux>
c0de86d4:	b104      	cbz	r4, c0de86d8 <ux_stack_init+0xc>
c0de86d6:	bd10      	pop	{r4, pc}
c0de86d8:	4803      	ldr	r0, [pc, #12]	; (c0de86e8 <ux_stack_init+0x1c>)
c0de86da:	2124      	movs	r1, #36	; 0x24
c0de86dc:	4448      	add	r0, r9
c0de86de:	30c8      	adds	r0, #200	; 0xc8
c0de86e0:	f001 f910 	bl	c0de9904 <__aeabi_memclr>
c0de86e4:	bd10      	pop	{r4, pc}
c0de86e6:	bf00      	nop
c0de86e8:	000062d4 	.word	0x000062d4

c0de86ec <ux_stack_display_element_callback>:
c0de86ec:	b510      	push	{r4, lr}
c0de86ee:	4604      	mov	r4, r0
c0de86f0:	480a      	ldr	r0, [pc, #40]	; (c0de871c <ux_stack_display_element_callback+0x30>)
c0de86f2:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de86f6:	b179      	cbz	r1, c0de8718 <ux_stack_display_element_callback+0x2c>
c0de86f8:	4448      	add	r0, r9
c0de86fa:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
c0de86fe:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de8702:	f8d0 10b4 	ldr.w	r1, [r0, #180]	; 0xb4
c0de8706:	b139      	cbz	r1, c0de8718 <ux_stack_display_element_callback+0x2c>
c0de8708:	4620      	mov	r0, r4
c0de870a:	4788      	blx	r1
c0de870c:	b118      	cbz	r0, c0de8716 <ux_stack_display_element_callback+0x2a>
c0de870e:	2801      	cmp	r0, #1
c0de8710:	bf18      	it	ne
c0de8712:	4604      	movne	r4, r0
c0de8714:	e000      	b.n	c0de8718 <ux_stack_display_element_callback+0x2c>
c0de8716:	2400      	movs	r4, #0
c0de8718:	4620      	mov	r0, r4
c0de871a:	bd10      	pop	{r4, pc}
c0de871c:	000062d4 	.word	0x000062d4

c0de8720 <ux_stack_display_elements>:
c0de8720:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de8724:	4604      	mov	r4, r0
c0de8726:	f001 f801 	bl	c0de972c <os_perso_isonboarded>
c0de872a:	28aa      	cmp	r0, #170	; 0xaa
c0de872c:	d103      	bne.n	c0de8736 <ux_stack_display_elements+0x16>
c0de872e:	f001 f834 	bl	c0de979a <os_global_pin_is_validated>
c0de8732:	28aa      	cmp	r0, #170	; 0xaa
c0de8734:	d13f      	bne.n	c0de87b6 <ux_stack_display_elements+0x96>
c0de8736:	f8df a090 	ldr.w	sl, [pc, #144]	; c0de87c8 <ux_stack_display_elements+0xa8>
c0de873a:	2101      	movs	r1, #1
c0de873c:	2000      	movs	r0, #0
c0de873e:	07c9      	lsls	r1, r1, #31
c0de8740:	d027      	beq.n	c0de8792 <ux_stack_display_elements+0x72>
c0de8742:	7861      	ldrb	r1, [r4, #1]
c0de8744:	b329      	cbz	r1, c0de8792 <ux_stack_display_elements+0x72>
c0de8746:	8862      	ldrh	r2, [r4, #2]
c0de8748:	7a21      	ldrb	r1, [r4, #8]
c0de874a:	1a17      	subs	r7, r2, r0
c0de874c:	0152      	lsls	r2, r2, #5
c0de874e:	eb00 0801 	add.w	r8, r0, r1
c0de8752:	eba2 1640 	sub.w	r6, r2, r0, lsl #5
c0de8756:	b2c8      	uxtb	r0, r1
c0de8758:	4287      	cmp	r7, r0
c0de875a:	d217      	bcs.n	c0de878c <ux_stack_display_elements+0x6c>
c0de875c:	8860      	ldrh	r0, [r4, #2]
c0de875e:	3001      	adds	r0, #1
c0de8760:	8060      	strh	r0, [r4, #2]
c0de8762:	6860      	ldr	r0, [r4, #4]
c0de8764:	1985      	adds	r5, r0, r6
c0de8766:	4628      	mov	r0, r5
c0de8768:	f7ff ffc0 	bl	c0de86ec <ux_stack_display_element_callback>
c0de876c:	b130      	cbz	r0, c0de877c <ux_stack_display_elements+0x5c>
c0de876e:	2801      	cmp	r0, #1
c0de8770:	bf18      	it	ne
c0de8772:	4605      	movne	r5, r0
c0de8774:	4628      	mov	r0, r5
c0de8776:	f7fc fa39 	bl	c0de4bec <io_seproxyhal_display>
c0de877a:	e003      	b.n	c0de8784 <ux_stack_display_elements+0x64>
c0de877c:	eb09 000a 	add.w	r0, r9, sl
c0de8780:	7840      	ldrb	r0, [r0, #1]
c0de8782:	b9c0      	cbnz	r0, c0de87b6 <ux_stack_display_elements+0x96>
c0de8784:	7a21      	ldrb	r1, [r4, #8]
c0de8786:	3620      	adds	r6, #32
c0de8788:	3701      	adds	r7, #1
c0de878a:	e7e4      	b.n	c0de8756 <ux_stack_display_elements+0x36>
c0de878c:	2100      	movs	r1, #0
c0de878e:	4640      	mov	r0, r8
c0de8790:	e7d5      	b.n	c0de873e <ux_stack_display_elements+0x1e>
c0de8792:	8861      	ldrh	r1, [r4, #2]
c0de8794:	4288      	cmp	r0, r1
c0de8796:	d10e      	bne.n	c0de87b6 <ux_stack_display_elements+0x96>
c0de8798:	f001 f880 	bl	c0de989c <screen_update>
c0de879c:	8860      	ldrh	r0, [r4, #2]
c0de879e:	68e1      	ldr	r1, [r4, #12]
c0de87a0:	3001      	adds	r0, #1
c0de87a2:	8060      	strh	r0, [r4, #2]
c0de87a4:	b119      	cbz	r1, c0de87ae <ux_stack_display_elements+0x8e>
c0de87a6:	2000      	movs	r0, #0
c0de87a8:	2500      	movs	r5, #0
c0de87aa:	4788      	blx	r1
c0de87ac:	b128      	cbz	r0, c0de87ba <ux_stack_display_elements+0x9a>
c0de87ae:	7821      	ldrb	r1, [r4, #0]
c0de87b0:	eb09 000a 	add.w	r0, r9, sl
c0de87b4:	7041      	strb	r1, [r0, #1]
c0de87b6:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de87ba:	eb09 000a 	add.w	r0, r9, sl
c0de87be:	8065      	strh	r5, [r4, #2]
c0de87c0:	7045      	strb	r5, [r0, #1]
c0de87c2:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de87c6:	bf00      	nop
c0de87c8:	000062d4 	.word	0x000062d4

c0de87cc <OUTLINED_FUNCTION_0>:
c0de87cc:	eb09 0504 	add.w	r5, r9, r4
c0de87d0:	2124      	movs	r1, #36	; 0x24
c0de87d2:	f105 00c8 	add.w	r0, r5, #200	; 0xc8
c0de87d6:	f001 b895 	b.w	c0de9904 <__aeabi_memclr>

c0de87da <cx_ripemd160_hash_iovec>:
c0de87da:	b580      	push	{r7, lr}
c0de87dc:	b09a      	sub	sp, #104	; 0x68
c0de87de:	f000 f860 	bl	c0de88a2 <OUTLINED_FUNCTION_0>
c0de87e2:	a802      	add	r0, sp, #8
c0de87e4:	2160      	movs	r1, #96	; 0x60
c0de87e6:	2201      	movs	r2, #1
c0de87e8:	f000 f802 	bl	c0de87f0 <hash_iovec>
c0de87ec:	b01a      	add	sp, #104	; 0x68
c0de87ee:	bd80      	pop	{r7, pc}

c0de87f0 <hash_iovec>:
c0de87f0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de87f4:	468a      	mov	sl, r1
c0de87f6:	4611      	mov	r1, r2
c0de87f8:	461e      	mov	r6, r3
c0de87fa:	4605      	mov	r5, r0
c0de87fc:	f000 f869 	bl	c0de88d2 <cx_hash_init>
c0de8800:	4607      	mov	r7, r0
c0de8802:	b998      	cbnz	r0, c0de882c <hash_iovec+0x3c>
c0de8804:	e9dd 4808 	ldrd	r4, r8, [sp, #32]
c0de8808:	3604      	adds	r6, #4
c0de880a:	b154      	cbz	r4, c0de8822 <hash_iovec+0x32>
c0de880c:	f856 1c04 	ldr.w	r1, [r6, #-4]
c0de8810:	6832      	ldr	r2, [r6, #0]
c0de8812:	4628      	mov	r0, r5
c0de8814:	f000 f869 	bl	c0de88ea <cx_hash_update>
c0de8818:	3608      	adds	r6, #8
c0de881a:	3c01      	subs	r4, #1
c0de881c:	2800      	cmp	r0, #0
c0de881e:	d0f4      	beq.n	c0de880a <hash_iovec+0x1a>
c0de8820:	e003      	b.n	c0de882a <hash_iovec+0x3a>
c0de8822:	4628      	mov	r0, r5
c0de8824:	4641      	mov	r1, r8
c0de8826:	f000 f850 	bl	c0de88ca <cx_hash_final>
c0de882a:	4607      	mov	r7, r0
c0de882c:	4628      	mov	r0, r5
c0de882e:	4651      	mov	r1, sl
c0de8830:	f001 f874 	bl	c0de991c <explicit_bzero>
c0de8834:	4638      	mov	r0, r7
c0de8836:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de883a <hash_iovec_ex>:
c0de883a:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de883e:	468a      	mov	sl, r1
c0de8840:	4611      	mov	r1, r2
c0de8842:	461a      	mov	r2, r3
c0de8844:	4605      	mov	r5, r0
c0de8846:	f000 f848 	bl	c0de88da <cx_hash_init_ex>
c0de884a:	4607      	mov	r7, r0
c0de884c:	b9a8      	cbnz	r0, c0de887a <hash_iovec_ex+0x40>
c0de884e:	f10d 0820 	add.w	r8, sp, #32
c0de8852:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de8856:	1d04      	adds	r4, r0, #4
c0de8858:	b156      	cbz	r6, c0de8870 <hash_iovec_ex+0x36>
c0de885a:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de885e:	6822      	ldr	r2, [r4, #0]
c0de8860:	4628      	mov	r0, r5
c0de8862:	f000 f842 	bl	c0de88ea <cx_hash_update>
c0de8866:	3408      	adds	r4, #8
c0de8868:	3e01      	subs	r6, #1
c0de886a:	2800      	cmp	r0, #0
c0de886c:	d0f4      	beq.n	c0de8858 <hash_iovec_ex+0x1e>
c0de886e:	e003      	b.n	c0de8878 <hash_iovec_ex+0x3e>
c0de8870:	4628      	mov	r0, r5
c0de8872:	4641      	mov	r1, r8
c0de8874:	f000 f829 	bl	c0de88ca <cx_hash_final>
c0de8878:	4607      	mov	r7, r0
c0de887a:	4628      	mov	r0, r5
c0de887c:	4651      	mov	r1, sl
c0de887e:	f001 f84d 	bl	c0de991c <explicit_bzero>
c0de8882:	4638      	mov	r0, r7
c0de8884:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de8888 <cx_keccak_256_hash_iovec>:
c0de8888:	b580      	push	{r7, lr}
c0de888a:	b0ee      	sub	sp, #440	; 0x1b8
c0de888c:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de8890:	a804      	add	r0, sp, #16
c0de8892:	f44f 71d4 	mov.w	r1, #424	; 0x1a8
c0de8896:	2206      	movs	r2, #6
c0de8898:	2320      	movs	r3, #32
c0de889a:	f7ff ffce 	bl	c0de883a <hash_iovec_ex>
c0de889e:	b06e      	add	sp, #440	; 0x1b8
c0de88a0:	bd80      	pop	{r7, pc}

c0de88a2 <OUTLINED_FUNCTION_0>:
c0de88a2:	e9cd 1200 	strd	r1, r2, [sp]
c0de88a6:	4603      	mov	r3, r0
c0de88a8:	4770      	bx	lr

c0de88aa <cx_ecdsa_sign_no_throw>:
c0de88aa:	b403      	push	{r0, r1}
c0de88ac:	f04f 002c 	mov.w	r0, #44	; 0x2c
c0de88b0:	e028      	b.n	c0de8904 <cx_trampoline_helper>

c0de88b2 <cx_ecfp_generate_pair_no_throw>:
c0de88b2:	b403      	push	{r0, r1}
c0de88b4:	f04f 0032 	mov.w	r0, #50	; 0x32
c0de88b8:	e024      	b.n	c0de8904 <cx_trampoline_helper>

c0de88ba <cx_ecfp_init_private_key_no_throw>:
c0de88ba:	b403      	push	{r0, r1}
c0de88bc:	f04f 0033 	mov.w	r0, #51	; 0x33
c0de88c0:	e020      	b.n	c0de8904 <cx_trampoline_helper>

c0de88c2 <cx_ecfp_init_public_key_no_throw>:
c0de88c2:	b403      	push	{r0, r1}
c0de88c4:	f04f 0034 	mov.w	r0, #52	; 0x34
c0de88c8:	e01c      	b.n	c0de8904 <cx_trampoline_helper>

c0de88ca <cx_hash_final>:
c0de88ca:	b403      	push	{r0, r1}
c0de88cc:	f04f 003f 	mov.w	r0, #63	; 0x3f
c0de88d0:	e018      	b.n	c0de8904 <cx_trampoline_helper>

c0de88d2 <cx_hash_init>:
c0de88d2:	b403      	push	{r0, r1}
c0de88d4:	f04f 0042 	mov.w	r0, #66	; 0x42
c0de88d8:	e014      	b.n	c0de8904 <cx_trampoline_helper>

c0de88da <cx_hash_init_ex>:
c0de88da:	b403      	push	{r0, r1}
c0de88dc:	f04f 0043 	mov.w	r0, #67	; 0x43
c0de88e0:	e010      	b.n	c0de8904 <cx_trampoline_helper>

c0de88e2 <cx_hash_sha256>:
c0de88e2:	b403      	push	{r0, r1}
c0de88e4:	f04f 0046 	mov.w	r0, #70	; 0x46
c0de88e8:	e00c      	b.n	c0de8904 <cx_trampoline_helper>

c0de88ea <cx_hash_update>:
c0de88ea:	b403      	push	{r0, r1}
c0de88ec:	f04f 0048 	mov.w	r0, #72	; 0x48
c0de88f0:	e008      	b.n	c0de8904 <cx_trampoline_helper>

c0de88f2 <cx_rng_no_throw>:
c0de88f2:	b403      	push	{r0, r1}
c0de88f4:	f04f 006a 	mov.w	r0, #106	; 0x6a
c0de88f8:	e004      	b.n	c0de8904 <cx_trampoline_helper>
	...

c0de88fc <cx_aes_siv_reset>:
c0de88fc:	b403      	push	{r0, r1}
c0de88fe:	f04f 0090 	mov.w	r0, #144	; 0x90
c0de8902:	e7ff      	b.n	c0de8904 <cx_trampoline_helper>

c0de8904 <cx_trampoline_helper>:
c0de8904:	4900      	ldr	r1, [pc, #0]	; (c0de8908 <cx_trampoline_helper+0x4>)
c0de8906:	4708      	bx	r1
c0de8908:	00810001 	.word	0x00810001

c0de890c <os_boot>:
c0de890c:	2000      	movs	r0, #0
c0de890e:	f000 bfaf 	b.w	c0de9870 <try_context_set>

c0de8912 <os_longjmp>:
c0de8912:	4604      	mov	r4, r0
c0de8914:	f000 ffa4 	bl	c0de9860 <try_context_get>
c0de8918:	4621      	mov	r1, r4
c0de891a:	f001 f84b 	bl	c0de99b4 <longjmp>
	...

c0de8920 <io_seproxyhal_general_status>:
c0de8920:	4802      	ldr	r0, [pc, #8]	; (c0de892c <io_seproxyhal_general_status+0xc>)
c0de8922:	2105      	movs	r1, #5
c0de8924:	4478      	add	r0, pc
c0de8926:	f000 bf7d 	b.w	c0de9824 <io_seph_send>
c0de892a:	bf00      	nop
c0de892c:	0000472c 	.word	0x0000472c

c0de8930 <io_seproxyhal_handle_usb_event>:
c0de8930:	b510      	push	{r4, lr}
c0de8932:	481d      	ldr	r0, [pc, #116]	; (c0de89a8 <io_seproxyhal_handle_usb_event+0x78>)
c0de8934:	4448      	add	r0, r9
c0de8936:	78c0      	ldrb	r0, [r0, #3]
c0de8938:	2808      	cmp	r0, #8
c0de893a:	d01f      	beq.n	c0de897c <io_seproxyhal_handle_usb_event+0x4c>
c0de893c:	2802      	cmp	r0, #2
c0de893e:	d023      	beq.n	c0de8988 <io_seproxyhal_handle_usb_event+0x58>
c0de8940:	2804      	cmp	r0, #4
c0de8942:	d027      	beq.n	c0de8994 <io_seproxyhal_handle_usb_event+0x64>
c0de8944:	2801      	cmp	r0, #1
c0de8946:	bf18      	it	ne
c0de8948:	bd10      	popne	{r4, pc}
c0de894a:	4818      	ldr	r0, [pc, #96]	; (c0de89ac <io_seproxyhal_handle_usb_event+0x7c>)
c0de894c:	2101      	movs	r1, #1
c0de894e:	eb09 0400 	add.w	r4, r9, r0
c0de8952:	4620      	mov	r0, r4
c0de8954:	f7fe facb 	bl	c0de6eee <USBD_LL_SetSpeed>
c0de8958:	4620      	mov	r0, r4
c0de895a:	f7fe faaf 	bl	c0de6ebc <USBD_LL_Reset>
c0de895e:	4814      	ldr	r0, [pc, #80]	; (c0de89b0 <io_seproxyhal_handle_usb_event+0x80>)
c0de8960:	eb09 0100 	add.w	r1, r9, r0
c0de8964:	7989      	ldrb	r1, [r1, #6]
c0de8966:	b9d9      	cbnz	r1, c0de89a0 <io_seproxyhal_handle_usb_event+0x70>
c0de8968:	4448      	add	r0, r9
c0de896a:	2100      	movs	r1, #0
c0de896c:	7481      	strb	r1, [r0, #18]
c0de896e:	8201      	strh	r1, [r0, #16]
c0de8970:	60c1      	str	r1, [r0, #12]
c0de8972:	e9c0 1105 	strd	r1, r1, [r0, #20]
c0de8976:	61c1      	str	r1, [r0, #28]
c0de8978:	8401      	strh	r1, [r0, #32]
c0de897a:	bd10      	pop	{r4, pc}
c0de897c:	480b      	ldr	r0, [pc, #44]	; (c0de89ac <io_seproxyhal_handle_usb_event+0x7c>)
c0de897e:	4448      	add	r0, r9
c0de8980:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de8984:	f7fe bab8 	b.w	c0de6ef8 <USBD_LL_Resume>
c0de8988:	4808      	ldr	r0, [pc, #32]	; (c0de89ac <io_seproxyhal_handle_usb_event+0x7c>)
c0de898a:	4448      	add	r0, r9
c0de898c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de8990:	f7fe bab4 	b.w	c0de6efc <USBD_LL_SOF>
c0de8994:	4805      	ldr	r0, [pc, #20]	; (c0de89ac <io_seproxyhal_handle_usb_event+0x7c>)
c0de8996:	4448      	add	r0, r9
c0de8998:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de899c:	f7fe baaa 	b.w	c0de6ef4 <USBD_LL_Suspend>
c0de89a0:	2005      	movs	r0, #5
c0de89a2:	f7ff ffb6 	bl	c0de8912 <os_longjmp>
c0de89a6:	bf00      	nop
c0de89a8:	0000512b 	.word	0x0000512b
c0de89ac:	00006444 	.word	0x00006444
c0de89b0:	00006684 	.word	0x00006684

c0de89b4 <io_seproxyhal_handle_usb_ep_xfer_event>:
c0de89b4:	b580      	push	{r7, lr}
c0de89b6:	4a1a      	ldr	r2, [pc, #104]	; (c0de8a20 <io_seproxyhal_handle_usb_ep_xfer_event+0x6c>)
c0de89b8:	eb09 0002 	add.w	r0, r9, r2
c0de89bc:	78c1      	ldrb	r1, [r0, #3]
c0de89be:	7900      	ldrb	r0, [r0, #4]
c0de89c0:	f001 017f 	and.w	r1, r1, #127	; 0x7f
c0de89c4:	2804      	cmp	r0, #4
c0de89c6:	d01b      	beq.n	c0de8a00 <io_seproxyhal_handle_usb_ep_xfer_event+0x4c>
c0de89c8:	2802      	cmp	r0, #2
c0de89ca:	d00a      	beq.n	c0de89e2 <io_seproxyhal_handle_usb_ep_xfer_event+0x2e>
c0de89cc:	2801      	cmp	r0, #1
c0de89ce:	d125      	bne.n	c0de8a1c <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de89d0:	4815      	ldr	r0, [pc, #84]	; (c0de8a28 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de89d2:	eb09 0102 	add.w	r1, r9, r2
c0de89d6:	3106      	adds	r1, #6
c0de89d8:	4448      	add	r0, r9
c0de89da:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de89de:	f7fe b98a 	b.w	c0de6cf6 <USBD_LL_SetupStage>
c0de89e2:	2906      	cmp	r1, #6
c0de89e4:	d81a      	bhi.n	c0de8a1c <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de89e6:	480f      	ldr	r0, [pc, #60]	; (c0de8a24 <io_seproxyhal_handle_usb_ep_xfer_event+0x70>)
c0de89e8:	2300      	movs	r3, #0
c0de89ea:	444a      	add	r2, r9
c0de89ec:	3206      	adds	r2, #6
c0de89ee:	4448      	add	r0, r9
c0de89f0:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0de89f4:	8283      	strh	r3, [r0, #20]
c0de89f6:	480c      	ldr	r0, [pc, #48]	; (c0de8a28 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de89f8:	4448      	add	r0, r9
c0de89fa:	f7fe f9f5 	bl	c0de6de8 <USBD_LL_DataInStage>
c0de89fe:	bd80      	pop	{r7, pc}
c0de8a00:	2906      	cmp	r1, #6
c0de8a02:	d80b      	bhi.n	c0de8a1c <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de8a04:	4807      	ldr	r0, [pc, #28]	; (c0de8a24 <io_seproxyhal_handle_usb_ep_xfer_event+0x70>)
c0de8a06:	444a      	add	r2, r9
c0de8a08:	7953      	ldrb	r3, [r2, #5]
c0de8a0a:	3206      	adds	r2, #6
c0de8a0c:	4448      	add	r0, r9
c0de8a0e:	4408      	add	r0, r1
c0de8a10:	7303      	strb	r3, [r0, #12]
c0de8a12:	4805      	ldr	r0, [pc, #20]	; (c0de8a28 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de8a14:	2300      	movs	r3, #0
c0de8a16:	4448      	add	r0, r9
c0de8a18:	f7fe f998 	bl	c0de6d4c <USBD_LL_DataOutStage>
c0de8a1c:	bd80      	pop	{r7, pc}
c0de8a1e:	bf00      	nop
c0de8a20:	0000512b 	.word	0x0000512b
c0de8a24:	00006684 	.word	0x00006684
c0de8a28:	00006444 	.word	0x00006444

c0de8a2c <io_usb_send_apdu_data_ep0x83>:
c0de8a2c:	460a      	mov	r2, r1
c0de8a2e:	4601      	mov	r1, r0
c0de8a30:	2083      	movs	r0, #131	; 0x83
c0de8a32:	2314      	movs	r3, #20
c0de8a34:	f000 bb00 	b.w	c0de9038 <io_usb_send_ep>

c0de8a38 <io_seproxyhal_handle_capdu_event>:
c0de8a38:	480d      	ldr	r0, [pc, #52]	; (c0de8a70 <io_seproxyhal_handle_capdu_event+0x38>)
c0de8a3a:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de8a3e:	b101      	cbz	r1, c0de8a42 <io_seproxyhal_handle_capdu_event+0xa>
c0de8a40:	4770      	bx	lr
c0de8a42:	210a      	movs	r1, #10
c0de8a44:	f809 1000 	strb.w	r1, [r9, r0]
c0de8a48:	4448      	add	r0, r9
c0de8a4a:	2106      	movs	r1, #6
c0de8a4c:	7181      	strb	r1, [r0, #6]
c0de8a4e:	4909      	ldr	r1, [pc, #36]	; (c0de8a74 <io_seproxyhal_handle_capdu_event+0x3c>)
c0de8a50:	4449      	add	r1, r9
c0de8a52:	784a      	ldrb	r2, [r1, #1]
c0de8a54:	788b      	ldrb	r3, [r1, #2]
c0de8a56:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de8a5a:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
c0de8a5e:	bf88      	it	hi
c0de8a60:	f240 1201 	movwhi	r2, #257	; 0x101
c0de8a64:	8042      	strh	r2, [r0, #2]
c0de8a66:	4804      	ldr	r0, [pc, #16]	; (c0de8a78 <io_seproxyhal_handle_capdu_event+0x40>)
c0de8a68:	3103      	adds	r1, #3
c0de8a6a:	4448      	add	r0, r9
c0de8a6c:	f000 bf4d 	b.w	c0de990a <__aeabi_memcpy>
c0de8a70:	00006684 	.word	0x00006684
c0de8a74:	0000512b 	.word	0x0000512b
c0de8a78:	00006580 	.word	0x00006580

c0de8a7c <io_seproxyhal_handle_event>:
c0de8a7c:	b510      	push	{r4, lr}
c0de8a7e:	4928      	ldr	r1, [pc, #160]	; (c0de8b20 <io_seproxyhal_handle_event+0xa4>)
c0de8a80:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de8a84:	280e      	cmp	r0, #14
c0de8a86:	d011      	beq.n	c0de8aac <io_seproxyhal_handle_event+0x30>
c0de8a88:	281a      	cmp	r0, #26
c0de8a8a:	d02c      	beq.n	c0de8ae6 <io_seproxyhal_handle_event+0x6a>
c0de8a8c:	4449      	add	r1, r9
c0de8a8e:	2810      	cmp	r0, #16
c0de8a90:	784a      	ldrb	r2, [r1, #1]
c0de8a92:	7889      	ldrb	r1, [r1, #2]
c0de8a94:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de8a98:	d031      	beq.n	c0de8afe <io_seproxyhal_handle_event+0x82>
c0de8a9a:	2816      	cmp	r0, #22
c0de8a9c:	d033      	beq.n	c0de8b06 <io_seproxyhal_handle_event+0x8a>
c0de8a9e:	280f      	cmp	r0, #15
c0de8aa0:	d129      	bne.n	c0de8af6 <io_seproxyhal_handle_event+0x7a>
c0de8aa2:	2901      	cmp	r1, #1
c0de8aa4:	d12d      	bne.n	c0de8b02 <io_seproxyhal_handle_event+0x86>
c0de8aa6:	f7ff ff43 	bl	c0de8930 <io_seproxyhal_handle_usb_event>
c0de8aaa:	e031      	b.n	c0de8b10 <io_seproxyhal_handle_event+0x94>
c0de8aac:	481d      	ldr	r0, [pc, #116]	; (c0de8b24 <io_seproxyhal_handle_event+0xa8>)
c0de8aae:	eb09 0100 	add.w	r1, r9, r0
c0de8ab2:	688a      	ldr	r2, [r1, #8]
c0de8ab4:	3264      	adds	r2, #100	; 0x64
c0de8ab6:	608a      	str	r2, [r1, #8]
c0de8ab8:	2100      	movs	r1, #0
c0de8aba:	1dca      	adds	r2, r1, #7
c0de8abc:	d01b      	beq.n	c0de8af6 <io_seproxyhal_handle_event+0x7a>
c0de8abe:	eb09 0200 	add.w	r2, r9, r0
c0de8ac2:	eb02 0241 	add.w	r2, r2, r1, lsl #1
c0de8ac6:	8c12      	ldrh	r2, [r2, #32]
c0de8ac8:	b15a      	cbz	r2, c0de8ae2 <io_seproxyhal_handle_event+0x66>
c0de8aca:	4614      	mov	r4, r2
c0de8acc:	2a64      	cmp	r2, #100	; 0x64
c0de8ace:	eb09 0300 	add.w	r3, r9, r0
c0de8ad2:	bf98      	it	ls
c0de8ad4:	2464      	movls	r4, #100	; 0x64
c0de8ad6:	eb03 0341 	add.w	r3, r3, r1, lsl #1
c0de8ada:	3c64      	subs	r4, #100	; 0x64
c0de8adc:	2a65      	cmp	r2, #101	; 0x65
c0de8ade:	841c      	strh	r4, [r3, #32]
c0de8ae0:	d318      	bcc.n	c0de8b14 <io_seproxyhal_handle_event+0x98>
c0de8ae2:	3901      	subs	r1, #1
c0de8ae4:	e7e9      	b.n	c0de8aba <io_seproxyhal_handle_event+0x3e>
c0de8ae6:	eb09 0001 	add.w	r0, r9, r1
c0de8aea:	78c0      	ldrb	r0, [r0, #3]
c0de8aec:	2803      	cmp	r0, #3
c0de8aee:	d102      	bne.n	c0de8af6 <io_seproxyhal_handle_event+0x7a>
c0de8af0:	f7ff fda6 	bl	c0de8640 <ux_stack_redisplay>
c0de8af4:	e00c      	b.n	c0de8b10 <io_seproxyhal_handle_event+0x94>
c0de8af6:	2002      	movs	r0, #2
c0de8af8:	f7fb fb64 	bl	c0de41c4 <io_event>
c0de8afc:	bd10      	pop	{r4, pc}
c0de8afe:	2903      	cmp	r1, #3
c0de8b00:	d204      	bcs.n	c0de8b0c <io_seproxyhal_handle_event+0x90>
c0de8b02:	2000      	movs	r0, #0
c0de8b04:	bd10      	pop	{r4, pc}
c0de8b06:	f7ff ff97 	bl	c0de8a38 <io_seproxyhal_handle_capdu_event>
c0de8b0a:	e001      	b.n	c0de8b10 <io_seproxyhal_handle_event+0x94>
c0de8b0c:	f7ff ff52 	bl	c0de89b4 <io_seproxyhal_handle_usb_ep_xfer_event>
c0de8b10:	2001      	movs	r0, #1
c0de8b12:	bd10      	pop	{r4, pc}
c0de8b14:	2100      	movs	r1, #0
c0de8b16:	f809 1000 	strb.w	r1, [r9, r0]
c0de8b1a:	2005      	movs	r0, #5
c0de8b1c:	f7ff fef9 	bl	c0de8912 <os_longjmp>
c0de8b20:	0000512b 	.word	0x0000512b
c0de8b24:	00006684 	.word	0x00006684

c0de8b28 <io_seproxyhal_init>:
c0de8b28:	b5b0      	push	{r4, r5, r7, lr}
c0de8b2a:	4c13      	ldr	r4, [pc, #76]	; (c0de8b78 <io_seproxyhal_init+0x50>)
c0de8b2c:	2008      	movs	r0, #8
c0de8b2e:	4914      	ldr	r1, [pc, #80]	; (c0de8b80 <io_seproxyhal_init+0x58>)
c0de8b30:	2500      	movs	r5, #0
c0de8b32:	f849 0004 	str.w	r0, [r9, r4]
c0de8b36:	4811      	ldr	r0, [pc, #68]	; (c0de8b7c <io_seproxyhal_init+0x54>)
c0de8b38:	f849 1000 	str.w	r1, [r9, r0]
c0de8b3c:	eb09 0004 	add.w	r0, r9, r4
c0de8b40:	6045      	str	r5, [r0, #4]
c0de8b42:	2d01      	cmp	r5, #1
c0de8b44:	d809      	bhi.n	c0de8b5a <io_seproxyhal_init+0x32>
c0de8b46:	eb09 0004 	add.w	r0, r9, r4
c0de8b4a:	f000 fe2f 	bl	c0de97ac <os_ux>
c0de8b4e:	2004      	movs	r0, #4
c0de8b50:	f000 fe98 	bl	c0de9884 <os_sched_last_status>
c0de8b54:	3501      	adds	r5, #1
c0de8b56:	28aa      	cmp	r0, #170	; 0xaa
c0de8b58:	d1f3      	bne.n	c0de8b42 <io_seproxyhal_init+0x1a>
c0de8b5a:	480a      	ldr	r0, [pc, #40]	; (c0de8b84 <io_seproxyhal_init+0x5c>)
c0de8b5c:	2124      	movs	r1, #36	; 0x24
c0de8b5e:	4448      	add	r0, r9
c0de8b60:	f000 fed0 	bl	c0de9904 <__aeabi_memclr>
c0de8b64:	f000 fb6c 	bl	c0de9240 <io_usb_hid_init>
c0de8b68:	4807      	ldr	r0, [pc, #28]	; (c0de8b88 <io_seproxyhal_init+0x60>)
c0de8b6a:	2100      	movs	r1, #0
c0de8b6c:	f849 1000 	str.w	r1, [r9, r0]
c0de8b70:	4448      	add	r0, r9
c0de8b72:	6041      	str	r1, [r0, #4]
c0de8b74:	bdb0      	pop	{r4, r5, r7, pc}
c0de8b76:	bf00      	nop
c0de8b78:	00006410 	.word	0x00006410
c0de8b7c:	00006704 	.word	0x00006704
c0de8b80:	dead0031 	.word	0xdead0031
c0de8b84:	00006684 	.word	0x00006684
c0de8b88:	000066a8 	.word	0x000066a8

c0de8b8c <io_seproxyhal_init_ux>:
c0de8b8c:	4770      	bx	lr
	...

c0de8b90 <io_seproxyhal_init_button>:
c0de8b90:	4803      	ldr	r0, [pc, #12]	; (c0de8ba0 <io_seproxyhal_init_button+0x10>)
c0de8b92:	2100      	movs	r1, #0
c0de8b94:	f849 1000 	str.w	r1, [r9, r0]
c0de8b98:	4448      	add	r0, r9
c0de8b9a:	6041      	str	r1, [r0, #4]
c0de8b9c:	4770      	bx	lr
c0de8b9e:	bf00      	nop
c0de8ba0:	000066a8 	.word	0x000066a8

c0de8ba4 <io_seproxyhal_display_icon>:
c0de8ba4:	b5b0      	push	{r4, r5, r7, lr}
c0de8ba6:	b088      	sub	sp, #32
c0de8ba8:	4605      	mov	r5, r0
c0de8baa:	4608      	mov	r0, r1
c0de8bac:	f000 fd78 	bl	c0de96a0 <pic>
c0de8bb0:	b1a8      	cbz	r0, c0de8bde <io_seproxyhal_display_icon+0x3a>
c0de8bb2:	4604      	mov	r4, r0
c0de8bb4:	6900      	ldr	r0, [r0, #16]
c0de8bb6:	b190      	cbz	r0, c0de8bde <io_seproxyhal_display_icon+0x3a>
c0de8bb8:	4628      	mov	r0, r5
c0de8bba:	f000 fd71 	bl	c0de96a0 <pic>
c0de8bbe:	ad01      	add	r5, sp, #4
c0de8bc0:	4601      	mov	r1, r0
c0de8bc2:	221c      	movs	r2, #28
c0de8bc4:	4628      	mov	r0, r5
c0de8bc6:	f000 fea0 	bl	c0de990a <__aeabi_memcpy>
c0de8bca:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de8bce:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de8bd2:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de8bd6:	4628      	mov	r0, r5
c0de8bd8:	4621      	mov	r1, r4
c0de8bda:	f7fd ff50 	bl	c0de6a7e <bagl_draw_glyph>
c0de8bde:	b008      	add	sp, #32
c0de8be0:	bdb0      	pop	{r4, r5, r7, pc}

c0de8be2 <io_seproxyhal_display_default>:
c0de8be2:	b570      	push	{r4, r5, r6, lr}
c0de8be4:	f000 fd5c 	bl	c0de96a0 <pic>
c0de8be8:	4604      	mov	r4, r0
c0de8bea:	69c0      	ldr	r0, [r0, #28]
c0de8bec:	7821      	ldrb	r1, [r4, #0]
c0de8bee:	f001 067f 	and.w	r6, r1, #127	; 0x7f
c0de8bf2:	f000 fd55 	bl	c0de96a0 <pic>
c0de8bf6:	b166      	cbz	r6, c0de8c12 <io_seproxyhal_display_default+0x30>
c0de8bf8:	4605      	mov	r5, r0
c0de8bfa:	b158      	cbz	r0, c0de8c14 <io_seproxyhal_display_default+0x32>
c0de8bfc:	2e05      	cmp	r6, #5
c0de8bfe:	d101      	bne.n	c0de8c04 <io_seproxyhal_display_default+0x22>
c0de8c00:	7ea0      	ldrb	r0, [r4, #26]
c0de8c02:	b178      	cbz	r0, c0de8c24 <io_seproxyhal_display_default+0x42>
c0de8c04:	4628      	mov	r0, r5
c0de8c06:	f000 fee7 	bl	c0de99d8 <strlen>
c0de8c0a:	b282      	uxth	r2, r0
c0de8c0c:	4620      	mov	r0, r4
c0de8c0e:	4629      	mov	r1, r5
c0de8c10:	e003      	b.n	c0de8c1a <io_seproxyhal_display_default+0x38>
c0de8c12:	bd70      	pop	{r4, r5, r6, pc}
c0de8c14:	4620      	mov	r0, r4
c0de8c16:	2100      	movs	r1, #0
c0de8c18:	2200      	movs	r2, #0
c0de8c1a:	2300      	movs	r3, #0
c0de8c1c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de8c20:	f7fd b9ba 	b.w	c0de5f98 <bagl_draw_with_context>
c0de8c24:	4620      	mov	r0, r4
c0de8c26:	4629      	mov	r1, r5
c0de8c28:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de8c2c:	f7ff bfba 	b.w	c0de8ba4 <io_seproxyhal_display_icon>

c0de8c30 <io_seproxyhal_button_push>:
c0de8c30:	b1a0      	cbz	r0, c0de8c5c <io_seproxyhal_button_push+0x2c>
c0de8c32:	b570      	push	{r4, r5, r6, lr}
c0de8c34:	4c19      	ldr	r4, [pc, #100]	; (c0de8c9c <io_seproxyhal_button_push+0x6c>)
c0de8c36:	4602      	mov	r2, r0
c0de8c38:	460b      	mov	r3, r1
c0de8c3a:	f859 0004 	ldr.w	r0, [r9, r4]
c0de8c3e:	eb09 0104 	add.w	r1, r9, r4
c0de8c42:	6849      	ldr	r1, [r1, #4]
c0de8c44:	4298      	cmp	r0, r3
c0de8c46:	bf02      	ittt	eq
c0de8c48:	eb09 0504 	addeq.w	r5, r9, r4
c0de8c4c:	3101      	addeq	r1, #1
c0de8c4e:	6069      	streq	r1, [r5, #4]
c0de8c50:	4318      	orrs	r0, r3
c0de8c52:	b123      	cbz	r3, c0de8c5e <io_seproxyhal_button_push+0x2e>
c0de8c54:	4605      	mov	r5, r0
c0de8c56:	f849 0004 	str.w	r0, [r9, r4]
c0de8c5a:	e008      	b.n	c0de8c6e <io_seproxyhal_button_push+0x3e>
c0de8c5c:	4770      	bx	lr
c0de8c5e:	2500      	movs	r5, #0
c0de8c60:	eb09 0604 	add.w	r6, r9, r4
c0de8c64:	f040 4000 	orr.w	r0, r0, #2147483648	; 0x80000000
c0de8c68:	f849 5004 	str.w	r5, [r9, r4]
c0de8c6c:	6075      	str	r5, [r6, #4]
c0de8c6e:	429d      	cmp	r5, r3
c0de8c70:	bf1e      	ittt	ne
c0de8c72:	eb09 0304 	addne.w	r3, r9, r4
c0de8c76:	2400      	movne	r4, #0
c0de8c78:	605c      	strne	r4, [r3, #4]
c0de8c7a:	2908      	cmp	r1, #8
c0de8c7c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de8c80:	d30a      	bcc.n	c0de8c98 <io_seproxyhal_button_push+0x68>
c0de8c82:	2303      	movs	r3, #3
c0de8c84:	fbb1 f3f3 	udiv	r3, r1, r3
c0de8c88:	eb03 0343 	add.w	r3, r3, r3, lsl #1
c0de8c8c:	1acb      	subs	r3, r1, r3
c0de8c8e:	bf08      	it	eq
c0de8c90:	f040 4080 	orreq.w	r0, r0, #1073741824	; 0x40000000
c0de8c94:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
c0de8c98:	4710      	bx	r2
c0de8c9a:	bf00      	nop
c0de8c9c:	000066a8 	.word	0x000066a8

c0de8ca0 <io_seproxyhal_se_reset>:
c0de8ca0:	4802      	ldr	r0, [pc, #8]	; (c0de8cac <io_seproxyhal_se_reset+0xc>)
c0de8ca2:	2103      	movs	r1, #3
c0de8ca4:	4478      	add	r0, pc
c0de8ca6:	f000 fdbd 	bl	c0de9824 <io_seph_send>
c0de8caa:	e7fe      	b.n	c0de8caa <io_seproxyhal_se_reset+0xa>
c0de8cac:	000043b1 	.word	0x000043b1

c0de8cb0 <os_io_seproxyhal_get_app_name_and_version>:
c0de8cb0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de8cb2:	4811      	ldr	r0, [pc, #68]	; (c0de8cf8 <os_io_seproxyhal_get_app_name_and_version+0x48>)
c0de8cb4:	2501      	movs	r5, #1
c0de8cb6:	f44f 7281 	mov.w	r2, #258	; 0x102
c0de8cba:	eb09 0600 	add.w	r6, r9, r0
c0de8cbe:	f809 5000 	strb.w	r5, [r9, r0]
c0de8cc2:	2001      	movs	r0, #1
c0de8cc4:	1cb1      	adds	r1, r6, #2
c0de8cc6:	f000 fd97 	bl	c0de97f8 <os_registry_get_current_app_tag>
c0de8cca:	1987      	adds	r7, r0, r6
c0de8ccc:	4604      	mov	r4, r0
c0de8cce:	7070      	strb	r0, [r6, #1]
c0de8cd0:	f240 1001 	movw	r0, #257	; 0x101
c0de8cd4:	1b02      	subs	r2, r0, r4
c0de8cd6:	1cf9      	adds	r1, r7, #3
c0de8cd8:	2002      	movs	r0, #2
c0de8cda:	f000 fd8d 	bl	c0de97f8 <os_registry_get_current_app_tag>
c0de8cde:	4404      	add	r4, r0
c0de8ce0:	70b8      	strb	r0, [r7, #2]
c0de8ce2:	4426      	add	r6, r4
c0de8ce4:	70f5      	strb	r5, [r6, #3]
c0de8ce6:	f000 fd6b 	bl	c0de97c0 <os_flags>
c0de8cea:	2100      	movs	r1, #0
c0de8cec:	7130      	strb	r0, [r6, #4]
c0de8cee:	1de0      	adds	r0, r4, #7
c0de8cf0:	71b1      	strb	r1, [r6, #6]
c0de8cf2:	2190      	movs	r1, #144	; 0x90
c0de8cf4:	7171      	strb	r1, [r6, #5]
c0de8cf6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de8cf8:	00006580 	.word	0x00006580

c0de8cfc <os_io_seproxyhal_pki_load_certificate>:
c0de8cfc:	b5b0      	push	{r4, r5, r7, lr}
c0de8cfe:	b09e      	sub	sp, #120	; 0x78
c0de8d00:	460b      	mov	r3, r1
c0de8d02:	4601      	mov	r1, r0
c0de8d04:	ac03      	add	r4, sp, #12
c0de8d06:	2000      	movs	r0, #0
c0de8d08:	e9cd 0400 	strd	r0, r4, [sp]
c0de8d0c:	4610      	mov	r0, r2
c0de8d0e:	461a      	mov	r2, r3
c0de8d10:	2300      	movs	r3, #0
c0de8d12:	f000 fd29 	bl	c0de9768 <os_pki_load_certificate>
c0de8d16:	4605      	mov	r5, r0
c0de8d18:	4620      	mov	r0, r4
c0de8d1a:	216c      	movs	r1, #108	; 0x6c
c0de8d1c:	f000 fdfe 	bl	c0de991c <explicit_bzero>
c0de8d20:	2d00      	cmp	r5, #0
c0de8d22:	4906      	ldr	r1, [pc, #24]	; (c0de8d3c <os_io_seproxyhal_pki_load_certificate+0x40>)
c0de8d24:	bf08      	it	eq
c0de8d26:	f44f 4510 	moveq.w	r5, #36864	; 0x9000
c0de8d2a:	0a28      	lsrs	r0, r5, #8
c0de8d2c:	f809 0001 	strb.w	r0, [r9, r1]
c0de8d30:	eb09 0001 	add.w	r0, r9, r1
c0de8d34:	7045      	strb	r5, [r0, #1]
c0de8d36:	2002      	movs	r0, #2
c0de8d38:	b01e      	add	sp, #120	; 0x78
c0de8d3a:	bdb0      	pop	{r4, r5, r7, pc}
c0de8d3c:	00006580 	.word	0x00006580

c0de8d40 <io_exchange>:
c0de8d40:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de8d44:	4680      	mov	r8, r0
c0de8d46:	4898      	ldr	r0, [pc, #608]	; (c0de8fa8 <io_exchange+0x268>)
c0de8d48:	460f      	mov	r7, r1
c0de8d4a:	4998      	ldr	r1, [pc, #608]	; (c0de8fac <io_exchange+0x26c>)
c0de8d4c:	f859 0000 	ldr.w	r0, [r9, r0]
c0de8d50:	4288      	cmp	r0, r1
c0de8d52:	f040 8126 	bne.w	c0de8fa2 <io_exchange+0x262>
c0de8d56:	489a      	ldr	r0, [pc, #616]	; (c0de8fc0 <io_exchange+0x280>)
c0de8d58:	4c96      	ldr	r4, [pc, #600]	; (c0de8fb4 <io_exchange+0x274>)
c0de8d5a:	f8df b25c 	ldr.w	fp, [pc, #604]	; c0de8fb8 <io_exchange+0x278>
c0de8d5e:	4d94      	ldr	r5, [pc, #592]	; (c0de8fb0 <io_exchange+0x270>)
c0de8d60:	f04f 0a00 	mov.w	sl, #0
c0de8d64:	4478      	add	r0, pc
c0de8d66:	9001      	str	r0, [sp, #4]
c0de8d68:	fa5f f688 	uxtb.w	r6, r8
c0de8d6c:	ea5f 7088 	movs.w	r0, r8, lsl #30
c0de8d70:	f040 80ff 	bne.w	c0de8f72 <io_exchange+0x232>
c0de8d74:	f006 0110 	and.w	r1, r6, #16
c0de8d78:	0438      	lsls	r0, r7, #16
c0de8d7a:	d07b      	beq.n	c0de8e74 <io_exchange+0x134>
c0de8d7c:	2900      	cmp	r1, #0
c0de8d7e:	d179      	bne.n	c0de8e74 <io_exchange+0x134>
c0de8d80:	9102      	str	r1, [sp, #8]
c0de8d82:	f000 fd59 	bl	c0de9838 <io_seph_is_status_sent>
c0de8d86:	b138      	cbz	r0, c0de8d98 <io_exchange+0x58>
c0de8d88:	eb09 0005 	add.w	r0, r9, r5
c0de8d8c:	f000 f940 	bl	c0de9010 <OUTLINED_FUNCTION_0>
c0de8d90:	2001      	movs	r0, #1
c0de8d92:	f000 f919 	bl	c0de8fc8 <os_io_seph_recv_and_process>
c0de8d96:	e7f4      	b.n	c0de8d82 <io_exchange+0x42>
c0de8d98:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de8d9c:	eb09 0104 	add.w	r1, r9, r4
c0de8da0:	f8cd 800c 	str.w	r8, [sp, #12]
c0de8da4:	f8d1 8008 	ldr.w	r8, [r1, #8]
c0de8da8:	2807      	cmp	r0, #7
c0de8daa:	d00c      	beq.n	c0de8dc6 <io_exchange+0x86>
c0de8dac:	280a      	cmp	r0, #10
c0de8dae:	d00f      	beq.n	c0de8dd0 <io_exchange+0x90>
c0de8db0:	280b      	cmp	r0, #11
c0de8db2:	d02a      	beq.n	c0de8e0a <io_exchange+0xca>
c0de8db4:	2800      	cmp	r0, #0
c0de8db6:	f000 80ee 	beq.w	c0de8f96 <io_exchange+0x256>
c0de8dba:	b2b9      	uxth	r1, r7
c0de8dbc:	4630      	mov	r0, r6
c0de8dbe:	f7fb fc5d 	bl	c0de467c <io_exchange_al>
c0de8dc2:	b348      	cbz	r0, c0de8e18 <io_exchange+0xd8>
c0de8dc4:	e0e7      	b.n	c0de8f96 <io_exchange+0x256>
c0de8dc6:	9801      	ldr	r0, [sp, #4]
c0de8dc8:	eb09 020b 	add.w	r2, r9, fp
c0de8dcc:	b2b9      	uxth	r1, r7
c0de8dce:	e021      	b.n	c0de8e14 <io_exchange+0xd4>
c0de8dd0:	46da      	mov	sl, fp
c0de8dd2:	fa1f fb87 	uxth.w	fp, r7
c0de8dd6:	f5bb 7f82 	cmp.w	fp, #260	; 0x104
c0de8dda:	f200 80df 	bhi.w	c0de8f9c <io_exchange+0x25c>
c0de8dde:	2053      	movs	r0, #83	; 0x53
c0de8de0:	0a39      	lsrs	r1, r7, #8
c0de8de2:	f809 0005 	strb.w	r0, [r9, r5]
c0de8de6:	eb09 0005 	add.w	r0, r9, r5
c0de8dea:	7041      	strb	r1, [r0, #1]
c0de8dec:	2103      	movs	r1, #3
c0de8dee:	7087      	strb	r7, [r0, #2]
c0de8df0:	f000 fd18 	bl	c0de9824 <io_seph_send>
c0de8df4:	4659      	mov	r1, fp
c0de8df6:	eb09 000a 	add.w	r0, r9, sl
c0de8dfa:	46d3      	mov	fp, sl
c0de8dfc:	f000 fd12 	bl	c0de9824 <io_seph_send>
c0de8e00:	f04f 0a00 	mov.w	sl, #0
c0de8e04:	f809 a004 	strb.w	sl, [r9, r4]
c0de8e08:	e006      	b.n	c0de8e18 <io_exchange+0xd8>
c0de8e0a:	486e      	ldr	r0, [pc, #440]	; (c0de8fc4 <io_exchange+0x284>)
c0de8e0c:	eb09 020b 	add.w	r2, r9, fp
c0de8e10:	b2b9      	uxth	r1, r7
c0de8e12:	4478      	add	r0, pc
c0de8e14:	f000 fa9c 	bl	c0de9350 <io_usb_hid_send>
c0de8e18:	f508 67fa 	add.w	r7, r8, #2000	; 0x7d0
c0de8e1c:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de8e20:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de8e24:	b190      	cbz	r0, c0de8e4c <io_exchange+0x10c>
c0de8e26:	f7ff fd7b 	bl	c0de8920 <io_seproxyhal_general_status>
c0de8e2a:	eb09 0005 	add.w	r0, r9, r5
c0de8e2e:	f000 f8ef 	bl	c0de9010 <OUTLINED_FUNCTION_0>
c0de8e32:	eb09 0004 	add.w	r0, r9, r4
c0de8e36:	6880      	ldr	r0, [r0, #8]
c0de8e38:	42b8      	cmp	r0, r7
c0de8e3a:	f080 80a6 	bcs.w	c0de8f8a <io_exchange+0x24a>
c0de8e3e:	f7ff fe1d 	bl	c0de8a7c <io_seproxyhal_handle_event>
c0de8e42:	f000 fcf9 	bl	c0de9838 <io_seph_is_status_sent>
c0de8e46:	2800      	cmp	r0, #0
c0de8e48:	d1ef      	bne.n	c0de8e2a <io_exchange+0xea>
c0de8e4a:	e7e9      	b.n	c0de8e20 <io_exchange+0xe0>
c0de8e4c:	2000      	movs	r0, #0
c0de8e4e:	eb09 0104 	add.w	r1, r9, r4
c0de8e52:	7188      	strb	r0, [r1, #6]
c0de8e54:	8048      	strh	r0, [r1, #2]
c0de8e56:	ea5f 6188 	movs.w	r1, r8, lsl #26
c0de8e5a:	f809 0004 	strb.w	r0, [r9, r4]
c0de8e5e:	f100 8084 	bmi.w	c0de8f6a <io_exchange+0x22a>
c0de8e62:	f7ff fd5d 	bl	c0de8920 <io_seproxyhal_general_status>
c0de8e66:	fa4f f088 	sxtb.w	r0, r8
c0de8e6a:	9902      	ldr	r1, [sp, #8]
c0de8e6c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
c0de8e70:	f340 808e 	ble.w	c0de8f90 <io_exchange+0x250>
c0de8e74:	0770      	lsls	r0, r6, #29
c0de8e76:	d40d      	bmi.n	c0de8e94 <io_exchange+0x154>
c0de8e78:	b941      	cbnz	r1, c0de8e8c <io_exchange+0x14c>
c0de8e7a:	0670      	lsls	r0, r6, #25
c0de8e7c:	f100 8080 	bmi.w	c0de8f80 <io_exchange+0x240>
c0de8e80:	eb09 0004 	add.w	r0, r9, r4
c0de8e84:	f809 a004 	strb.w	sl, [r9, r4]
c0de8e88:	f880 a006 	strb.w	sl, [r0, #6]
c0de8e8c:	eb09 0004 	add.w	r0, r9, r4
c0de8e90:	f8a0 a002 	strh.w	sl, [r0, #2]
c0de8e94:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de8e98:	b118      	cbz	r0, c0de8ea2 <io_exchange+0x162>
c0de8e9a:	eb09 0004 	add.w	r0, r9, r4
c0de8e9e:	8840      	ldrh	r0, [r0, #2]
c0de8ea0:	b9d0      	cbnz	r0, c0de8ed8 <io_exchange+0x198>
c0de8ea2:	f7ff fd3d 	bl	c0de8920 <io_seproxyhal_general_status>
c0de8ea6:	eb09 0005 	add.w	r0, r9, r5
c0de8eaa:	f000 f8b1 	bl	c0de9010 <OUTLINED_FUNCTION_0>
c0de8eae:	2803      	cmp	r0, #3
c0de8eb0:	d308      	bcc.n	c0de8ec4 <io_exchange+0x184>
c0de8eb2:	eb09 0105 	add.w	r1, r9, r5
c0de8eb6:	784a      	ldrb	r2, [r1, #1]
c0de8eb8:	7889      	ldrb	r1, [r1, #2]
c0de8eba:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de8ebe:	3103      	adds	r1, #3
c0de8ec0:	4281      	cmp	r1, r0
c0de8ec2:	d006      	beq.n	c0de8ed2 <io_exchange+0x192>
c0de8ec4:	2000      	movs	r0, #0
c0de8ec6:	eb09 0104 	add.w	r1, r9, r4
c0de8eca:	f809 0004 	strb.w	r0, [r9, r4]
c0de8ece:	8048      	strh	r0, [r1, #2]
c0de8ed0:	e7e2      	b.n	c0de8e98 <io_exchange+0x158>
c0de8ed2:	f7ff fdd3 	bl	c0de8a7c <io_seproxyhal_handle_event>
c0de8ed6:	e7dd      	b.n	c0de8e94 <io_exchange+0x154>
c0de8ed8:	f000 fc56 	bl	c0de9788 <os_perso_is_pin_set>
c0de8edc:	28aa      	cmp	r0, #170	; 0xaa
c0de8ede:	d103      	bne.n	c0de8ee8 <io_exchange+0x1a8>
c0de8ee0:	f000 fc5b 	bl	c0de979a <os_global_pin_is_validated>
c0de8ee4:	28aa      	cmp	r0, #170	; 0xaa
c0de8ee6:	d118      	bne.n	c0de8f1a <io_exchange+0x1da>
c0de8ee8:	f819 000b 	ldrb.w	r0, [r9, fp]
c0de8eec:	28b0      	cmp	r0, #176	; 0xb0
c0de8eee:	d139      	bne.n	c0de8f64 <io_exchange+0x224>
c0de8ef0:	eb09 000b 	add.w	r0, r9, fp
c0de8ef4:	7840      	ldrb	r0, [r0, #1]
c0de8ef6:	28a7      	cmp	r0, #167	; 0xa7
c0de8ef8:	d017      	beq.n	c0de8f2a <io_exchange+0x1ea>
c0de8efa:	2806      	cmp	r0, #6
c0de8efc:	d027      	beq.n	c0de8f4e <io_exchange+0x20e>
c0de8efe:	2801      	cmp	r0, #1
c0de8f00:	d130      	bne.n	c0de8f64 <io_exchange+0x224>
c0de8f02:	eb09 000b 	add.w	r0, r9, fp
c0de8f06:	7881      	ldrb	r1, [r0, #2]
c0de8f08:	78c0      	ldrb	r0, [r0, #3]
c0de8f0a:	4308      	orrs	r0, r1
c0de8f0c:	d12a      	bne.n	c0de8f64 <io_exchange+0x224>
c0de8f0e:	f008 0803 	and.w	r8, r8, #3
c0de8f12:	f7ff fecd 	bl	c0de8cb0 <os_io_seproxyhal_get_app_name_and_version>
c0de8f16:	4607      	mov	r7, r0
c0de8f18:	e726      	b.n	c0de8d68 <io_exchange+0x28>
c0de8f1a:	2055      	movs	r0, #85	; 0x55
c0de8f1c:	2115      	movs	r1, #21
c0de8f1e:	f809 000b 	strb.w	r0, [r9, fp]
c0de8f22:	eb09 000b 	add.w	r0, r9, fp
c0de8f26:	7041      	strb	r1, [r0, #1]
c0de8f28:	e018      	b.n	c0de8f5c <io_exchange+0x21c>
c0de8f2a:	eb09 000b 	add.w	r0, r9, fp
c0de8f2e:	7881      	ldrb	r1, [r0, #2]
c0de8f30:	78c0      	ldrb	r0, [r0, #3]
c0de8f32:	4308      	orrs	r0, r1
c0de8f34:	d116      	bne.n	c0de8f64 <io_exchange+0x224>
c0de8f36:	2090      	movs	r0, #144	; 0x90
c0de8f38:	2702      	movs	r7, #2
c0de8f3a:	f809 000b 	strb.w	r0, [r9, fp]
c0de8f3e:	eb09 000b 	add.w	r0, r9, fp
c0de8f42:	f880 a001 	strb.w	sl, [r0, #1]
c0de8f46:	481d      	ldr	r0, [pc, #116]	; (c0de8fbc <io_exchange+0x27c>)
c0de8f48:	f360 089f 	bfi	r8, r0, #2, #30
c0de8f4c:	e70c      	b.n	c0de8d68 <io_exchange+0x28>
c0de8f4e:	eb09 000b 	add.w	r0, r9, fp
c0de8f52:	7882      	ldrb	r2, [r0, #2]
c0de8f54:	7901      	ldrb	r1, [r0, #4]
c0de8f56:	3005      	adds	r0, #5
c0de8f58:	f7ff fed0 	bl	c0de8cfc <os_io_seproxyhal_pki_load_certificate>
c0de8f5c:	f008 0803 	and.w	r8, r8, #3
c0de8f60:	2702      	movs	r7, #2
c0de8f62:	e701      	b.n	c0de8d68 <io_exchange+0x28>
c0de8f64:	eb09 0004 	add.w	r0, r9, r4
c0de8f68:	8840      	ldrh	r0, [r0, #2]
c0de8f6a:	b280      	uxth	r0, r0
c0de8f6c:	b004      	add	sp, #16
c0de8f6e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de8f72:	b2b9      	uxth	r1, r7
c0de8f74:	4630      	mov	r0, r6
c0de8f76:	b004      	add	sp, #16
c0de8f78:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8f7c:	f7fb bb7e 	b.w	c0de467c <io_exchange_al>
c0de8f80:	eb09 0004 	add.w	r0, r9, r4
c0de8f84:	8840      	ldrh	r0, [r0, #2]
c0de8f86:	3805      	subs	r0, #5
c0de8f88:	e7ef      	b.n	c0de8f6a <io_exchange+0x22a>
c0de8f8a:	2005      	movs	r0, #5
c0de8f8c:	f7ff fcc1 	bl	c0de8912 <os_longjmp>
c0de8f90:	2005      	movs	r0, #5
c0de8f92:	f000 fc3d 	bl	c0de9810 <os_sched_exit>
c0de8f96:	2004      	movs	r0, #4
c0de8f98:	f7ff fcbb 	bl	c0de8912 <os_longjmp>
c0de8f9c:	2002      	movs	r0, #2
c0de8f9e:	f7ff fcb8 	bl	c0de8912 <os_longjmp>
c0de8fa2:	f7ff fe7d 	bl	c0de8ca0 <io_seproxyhal_se_reset>
c0de8fa6:	bf00      	nop
c0de8fa8:	00006704 	.word	0x00006704
c0de8fac:	dead0031 	.word	0xdead0031
c0de8fb0:	0000512b 	.word	0x0000512b
c0de8fb4:	00006684 	.word	0x00006684
c0de8fb8:	00006580 	.word	0x00006580
c0de8fbc:	3fffffe0 	.word	0x3fffffe0
c0de8fc0:	00000331 	.word	0x00000331
c0de8fc4:	fffffc17 	.word	0xfffffc17

c0de8fc8 <os_io_seph_recv_and_process>:
c0de8fc8:	b5b0      	push	{r4, r5, r7, lr}
c0de8fca:	4604      	mov	r4, r0
c0de8fcc:	f7ff fca8 	bl	c0de8920 <io_seproxyhal_general_status>
c0de8fd0:	4d0d      	ldr	r5, [pc, #52]	; (c0de9008 <os_io_seph_recv_and_process+0x40>)
c0de8fd2:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de8fd6:	2200      	movs	r2, #0
c0de8fd8:	eb09 0005 	add.w	r0, r9, r5
c0de8fdc:	f000 fc34 	bl	c0de9848 <io_seph_recv>
c0de8fe0:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de8fe4:	2815      	cmp	r0, #21
c0de8fe6:	d808      	bhi.n	c0de8ffa <os_io_seph_recv_and_process+0x32>
c0de8fe8:	2101      	movs	r1, #1
c0de8fea:	fa01 f000 	lsl.w	r0, r1, r0
c0de8fee:	4907      	ldr	r1, [pc, #28]	; (c0de900c <os_io_seph_recv_and_process+0x44>)
c0de8ff0:	4208      	tst	r0, r1
c0de8ff2:	d002      	beq.n	c0de8ffa <os_io_seph_recv_and_process+0x32>
c0de8ff4:	b10c      	cbz	r4, c0de8ffa <os_io_seph_recv_and_process+0x32>
c0de8ff6:	2000      	movs	r0, #0
c0de8ff8:	bdb0      	pop	{r4, r5, r7, pc}
c0de8ffa:	f7ff fd3f 	bl	c0de8a7c <io_seproxyhal_handle_event>
c0de8ffe:	2800      	cmp	r0, #0
c0de9000:	bf18      	it	ne
c0de9002:	2001      	movne	r0, #1
c0de9004:	bdb0      	pop	{r4, r5, r7, pc}
c0de9006:	bf00      	nop
c0de9008:	0000512b 	.word	0x0000512b
c0de900c:	00207020 	.word	0x00207020

c0de9010 <OUTLINED_FUNCTION_0>:
c0de9010:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de9014:	2200      	movs	r2, #0
c0de9016:	f000 bc17 	b.w	c0de9848 <io_seph_recv>
	...

c0de901c <io_seproxyhal_get_ep_rx_size>:
c0de901c:	f000 007f 	and.w	r0, r0, #127	; 0x7f
c0de9020:	2806      	cmp	r0, #6
c0de9022:	bf84      	itt	hi
c0de9024:	2000      	movhi	r0, #0
c0de9026:	4770      	bxhi	lr
c0de9028:	4902      	ldr	r1, [pc, #8]	; (c0de9034 <io_seproxyhal_get_ep_rx_size+0x18>)
c0de902a:	4449      	add	r1, r9
c0de902c:	4408      	add	r0, r1
c0de902e:	7b00      	ldrb	r0, [r0, #12]
c0de9030:	4770      	bx	lr
c0de9032:	bf00      	nop
c0de9034:	00006684 	.word	0x00006684

c0de9038 <io_usb_send_ep>:
c0de9038:	2aff      	cmp	r2, #255	; 0xff
c0de903a:	d829      	bhi.n	c0de9090 <io_usb_send_ep+0x58>
c0de903c:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0de903e:	4604      	mov	r4, r0
c0de9040:	2020      	movs	r0, #32
c0de9042:	460e      	mov	r6, r1
c0de9044:	2106      	movs	r1, #6
c0de9046:	4615      	mov	r5, r2
c0de9048:	f88d 2007 	strb.w	r2, [sp, #7]
c0de904c:	f88d 0006 	strb.w	r0, [sp, #6]
c0de9050:	2050      	movs	r0, #80	; 0x50
c0de9052:	f88d 0002 	strb.w	r0, [sp, #2]
c0de9056:	f044 0080 	orr.w	r0, r4, #128	; 0x80
c0de905a:	f88d 0005 	strb.w	r0, [sp, #5]
c0de905e:	1cd0      	adds	r0, r2, #3
c0de9060:	f88d 0004 	strb.w	r0, [sp, #4]
c0de9064:	0a00      	lsrs	r0, r0, #8
c0de9066:	f88d 0003 	strb.w	r0, [sp, #3]
c0de906a:	f10d 0002 	add.w	r0, sp, #2
c0de906e:	f000 fbd9 	bl	c0de9824 <io_seph_send>
c0de9072:	4630      	mov	r0, r6
c0de9074:	4629      	mov	r1, r5
c0de9076:	f000 fbd5 	bl	c0de9824 <io_seph_send>
c0de907a:	4806      	ldr	r0, [pc, #24]	; (c0de9094 <io_usb_send_ep+0x5c>)
c0de907c:	f004 017f 	and.w	r1, r4, #127	; 0x7f
c0de9080:	4448      	add	r0, r9
c0de9082:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0de9086:	f44f 61fa 	mov.w	r1, #2000	; 0x7d0
c0de908a:	8281      	strh	r1, [r0, #20]
c0de908c:	e8bd 407c 	ldmia.w	sp!, {r2, r3, r4, r5, r6, lr}
c0de9090:	4770      	bx	lr
c0de9092:	bf00      	nop
c0de9094:	00006684 	.word	0x00006684

c0de9098 <io_usb_send_apdu_data>:
c0de9098:	460a      	mov	r2, r1
c0de909a:	4601      	mov	r1, r0
c0de909c:	2082      	movs	r0, #130	; 0x82
c0de909e:	f7ff bfcb 	b.w	c0de9038 <io_usb_send_ep>
	...

c0de90a4 <io_usb_hid_receive>:
c0de90a4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de90a8:	4615      	mov	r5, r2
c0de90aa:	460f      	mov	r7, r1
c0de90ac:	4682      	mov	sl, r0
c0de90ae:	b11b      	cbz	r3, c0de90b8 <io_usb_hid_receive+0x14>
c0de90b0:	f8b3 8004 	ldrh.w	r8, [r3, #4]
c0de90b4:	6818      	ldr	r0, [r3, #0]
c0de90b6:	e003      	b.n	c0de90c0 <io_usb_hid_receive+0x1c>
c0de90b8:	485a      	ldr	r0, [pc, #360]	; (c0de9224 <io_usb_hid_receive+0x180>)
c0de90ba:	f44f 7882 	mov.w	r8, #260	; 0x104
c0de90be:	4448      	add	r0, r9
c0de90c0:	9001      	str	r0, [sp, #4]
c0de90c2:	f8df b164 	ldr.w	fp, [pc, #356]	; c0de9228 <io_usb_hid_receive+0x184>
c0de90c6:	eb09 000b 	add.w	r0, r9, fp
c0de90ca:	4287      	cmp	r7, r0
c0de90cc:	d00e      	beq.n	c0de90ec <io_usb_hid_receive+0x48>
c0de90ce:	eb09 040b 	add.w	r4, r9, fp
c0de90d2:	2140      	movs	r1, #64	; 0x40
c0de90d4:	2640      	movs	r6, #64	; 0x40
c0de90d6:	4620      	mov	r0, r4
c0de90d8:	f000 fc14 	bl	c0de9904 <__aeabi_memclr>
c0de90dc:	2d40      	cmp	r5, #64	; 0x40
c0de90de:	bf38      	it	cc
c0de90e0:	462e      	movcc	r6, r5
c0de90e2:	4620      	mov	r0, r4
c0de90e4:	4639      	mov	r1, r7
c0de90e6:	4632      	mov	r2, r6
c0de90e8:	f000 fc11 	bl	c0de990e <__aeabi_memmove>
c0de90ec:	eb09 000b 	add.w	r0, r9, fp
c0de90f0:	7880      	ldrb	r0, [r0, #2]
c0de90f2:	b348      	cbz	r0, c0de9148 <io_usb_hid_receive+0xa4>
c0de90f4:	2801      	cmp	r0, #1
c0de90f6:	d033      	beq.n	c0de9160 <io_usb_hid_receive+0xbc>
c0de90f8:	2802      	cmp	r0, #2
c0de90fa:	d039      	beq.n	c0de9170 <io_usb_hid_receive+0xcc>
c0de90fc:	2805      	cmp	r0, #5
c0de90fe:	f040 8089 	bne.w	c0de9214 <io_usb_hid_receive+0x170>
c0de9102:	4c4a      	ldr	r4, [pc, #296]	; (c0de922c <io_usb_hid_receive+0x188>)
c0de9104:	eb09 010b 	add.w	r1, r9, fp
c0de9108:	f859 0004 	ldr.w	r0, [r9, r4]
c0de910c:	78ca      	ldrb	r2, [r1, #3]
c0de910e:	7909      	ldrb	r1, [r1, #4]
c0de9110:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de9114:	4288      	cmp	r0, r1
c0de9116:	d12f      	bne.n	c0de9178 <io_usb_hid_receive+0xd4>
c0de9118:	f859 0004 	ldr.w	r0, [r9, r4]
c0de911c:	b3d0      	cbz	r0, c0de9194 <io_usb_hid_receive+0xf0>
c0de911e:	4944      	ldr	r1, [pc, #272]	; (c0de9230 <io_usb_hid_receive+0x18c>)
c0de9120:	1f68      	subs	r0, r5, #5
c0de9122:	b283      	uxth	r3, r0
c0de9124:	f859 2001 	ldr.w	r2, [r9, r1]
c0de9128:	429a      	cmp	r2, r3
c0de912a:	bf38      	it	cc
c0de912c:	f859 0001 	ldrcc.w	r0, [r9, r1]
c0de9130:	b281      	uxth	r1, r0
c0de9132:	293b      	cmp	r1, #59	; 0x3b
c0de9134:	bf28      	it	cs
c0de9136:	203b      	movcs	r0, #59	; 0x3b
c0de9138:	b285      	uxth	r5, r0
c0de913a:	483e      	ldr	r0, [pc, #248]	; (c0de9234 <io_usb_hid_receive+0x190>)
c0de913c:	f859 6000 	ldr.w	r6, [r9, r0]
c0de9140:	eb09 000b 	add.w	r0, r9, fp
c0de9144:	1d41      	adds	r1, r0, #5
c0de9146:	e052      	b.n	c0de91ee <io_usb_hid_receive+0x14a>
c0de9148:	eb09 000b 	add.w	r0, r9, fp
c0de914c:	2400      	movs	r4, #0
c0de914e:	4601      	mov	r1, r0
c0de9150:	7104      	strb	r4, [r0, #4]
c0de9152:	f801 4f03 	strb.w	r4, [r1, #3]!
c0de9156:	70cc      	strb	r4, [r1, #3]
c0de9158:	708c      	strb	r4, [r1, #2]
c0de915a:	2140      	movs	r1, #64	; 0x40
c0de915c:	47d0      	blx	sl
c0de915e:	e00c      	b.n	c0de917a <io_usb_hid_receive+0xd6>
c0de9160:	eb09 040b 	add.w	r4, r9, fp
c0de9164:	2104      	movs	r1, #4
c0de9166:	1ce0      	adds	r0, r4, #3
c0de9168:	f7ff fbc3 	bl	c0de88f2 <cx_rng_no_throw>
c0de916c:	4620      	mov	r0, r4
c0de916e:	e001      	b.n	c0de9174 <io_usb_hid_receive+0xd0>
c0de9170:	eb09 000b 	add.w	r0, r9, fp
c0de9174:	2140      	movs	r1, #64	; 0x40
c0de9176:	47d0      	blx	sl
c0de9178:	2400      	movs	r4, #0
c0de917a:	482c      	ldr	r0, [pc, #176]	; (c0de922c <io_usb_hid_receive+0x188>)
c0de917c:	2100      	movs	r1, #0
c0de917e:	f849 1000 	str.w	r1, [r9, r0]
c0de9182:	482c      	ldr	r0, [pc, #176]	; (c0de9234 <io_usb_hid_receive+0x190>)
c0de9184:	f849 1000 	str.w	r1, [r9, r0]
c0de9188:	4829      	ldr	r0, [pc, #164]	; (c0de9230 <io_usb_hid_receive+0x18c>)
c0de918a:	f849 1000 	str.w	r1, [r9, r0]
c0de918e:	4620      	mov	r0, r4
c0de9190:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de9194:	eb09 000b 	add.w	r0, r9, fp
c0de9198:	7941      	ldrb	r1, [r0, #5]
c0de919a:	7980      	ldrb	r0, [r0, #6]
c0de919c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
c0de91a0:	4825      	ldr	r0, [pc, #148]	; (c0de9238 <io_usb_hid_receive+0x194>)
c0de91a2:	f849 1000 	str.w	r1, [r9, r0]
c0de91a6:	f859 1000 	ldr.w	r1, [r9, r0]
c0de91aa:	4541      	cmp	r1, r8
c0de91ac:	d8e4      	bhi.n	c0de9178 <io_usb_hid_receive+0xd4>
c0de91ae:	f859 1000 	ldr.w	r1, [r9, r0]
c0de91b2:	481f      	ldr	r0, [pc, #124]	; (c0de9230 <io_usb_hid_receive+0x18c>)
c0de91b4:	eb09 020b 	add.w	r2, r9, fp
c0de91b8:	f849 1000 	str.w	r1, [r9, r0]
c0de91bc:	f819 100b 	ldrb.w	r1, [r9, fp]
c0de91c0:	7852      	ldrb	r2, [r2, #1]
c0de91c2:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de91c6:	4a1d      	ldr	r2, [pc, #116]	; (c0de923c <io_usb_hid_receive+0x198>)
c0de91c8:	f849 1002 	str.w	r1, [r9, r2]
c0de91cc:	1fe9      	subs	r1, r5, #7
c0de91ce:	f859 2000 	ldr.w	r2, [r9, r0]
c0de91d2:	b28b      	uxth	r3, r1
c0de91d4:	429a      	cmp	r2, r3
c0de91d6:	bf38      	it	cc
c0de91d8:	f859 1000 	ldrcc.w	r1, [r9, r0]
c0de91dc:	b288      	uxth	r0, r1
c0de91de:	2839      	cmp	r0, #57	; 0x39
c0de91e0:	bf28      	it	cs
c0de91e2:	2139      	movcs	r1, #57	; 0x39
c0de91e4:	9e01      	ldr	r6, [sp, #4]
c0de91e6:	eb09 000b 	add.w	r0, r9, fp
c0de91ea:	b28d      	uxth	r5, r1
c0de91ec:	1dc1      	adds	r1, r0, #7
c0de91ee:	4630      	mov	r0, r6
c0de91f0:	462a      	mov	r2, r5
c0de91f2:	f000 fb8c 	bl	c0de990e <__aeabi_memmove>
c0de91f6:	480e      	ldr	r0, [pc, #56]	; (c0de9230 <io_usb_hid_receive+0x18c>)
c0de91f8:	f859 1000 	ldr.w	r1, [r9, r0]
c0de91fc:	1b49      	subs	r1, r1, r5
c0de91fe:	f849 1000 	str.w	r1, [r9, r0]
c0de9202:	490c      	ldr	r1, [pc, #48]	; (c0de9234 <io_usb_hid_receive+0x190>)
c0de9204:	1970      	adds	r0, r6, r5
c0de9206:	f849 0001 	str.w	r0, [r9, r1]
c0de920a:	f859 0004 	ldr.w	r0, [r9, r4]
c0de920e:	3001      	adds	r0, #1
c0de9210:	f849 0004 	str.w	r0, [r9, r4]
c0de9214:	4806      	ldr	r0, [pc, #24]	; (c0de9230 <io_usb_hid_receive+0x18c>)
c0de9216:	f859 0000 	ldr.w	r0, [r9, r0]
c0de921a:	b108      	cbz	r0, c0de9220 <io_usb_hid_receive+0x17c>
c0de921c:	2401      	movs	r4, #1
c0de921e:	e7b6      	b.n	c0de918e <io_usb_hid_receive+0xea>
c0de9220:	2402      	movs	r4, #2
c0de9222:	e7aa      	b.n	c0de917a <io_usb_hid_receive+0xd6>
c0de9224:	00006580 	.word	0x00006580
c0de9228:	000066b0 	.word	0x000066b0
c0de922c:	000066f0 	.word	0x000066f0
c0de9230:	000066f8 	.word	0x000066f8
c0de9234:	000066fc 	.word	0x000066fc
c0de9238:	000066f4 	.word	0x000066f4
c0de923c:	00006700 	.word	0x00006700

c0de9240 <io_usb_hid_init>:
c0de9240:	4805      	ldr	r0, [pc, #20]	; (c0de9258 <io_usb_hid_init+0x18>)
c0de9242:	2100      	movs	r1, #0
c0de9244:	f849 1000 	str.w	r1, [r9, r0]
c0de9248:	4804      	ldr	r0, [pc, #16]	; (c0de925c <io_usb_hid_init+0x1c>)
c0de924a:	f849 1000 	str.w	r1, [r9, r0]
c0de924e:	4804      	ldr	r0, [pc, #16]	; (c0de9260 <io_usb_hid_init+0x20>)
c0de9250:	f849 1000 	str.w	r1, [r9, r0]
c0de9254:	4770      	bx	lr
c0de9256:	bf00      	nop
c0de9258:	000066f0 	.word	0x000066f0
c0de925c:	000066fc 	.word	0x000066fc
c0de9260:	000066f8 	.word	0x000066f8

c0de9264 <io_usb_hid_sent>:
c0de9264:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9268:	f8df a0cc 	ldr.w	sl, [pc, #204]	; c0de9338 <io_usb_hid_sent+0xd4>
c0de926c:	4f33      	ldr	r7, [pc, #204]	; (c0de933c <io_usb_hid_sent+0xd8>)
c0de926e:	f859 400a 	ldr.w	r4, [r9, sl]
c0de9272:	f859 1007 	ldr.w	r1, [r9, r7]
c0de9276:	b351      	cbz	r1, c0de92ce <io_usb_hid_sent+0x6a>
c0de9278:	b34c      	cbz	r4, c0de92ce <io_usb_hid_sent+0x6a>
c0de927a:	f8df 80cc 	ldr.w	r8, [pc, #204]	; c0de9348 <io_usb_hid_sent+0xe4>
c0de927e:	4683      	mov	fp, r0
c0de9280:	213b      	movs	r1, #59	; 0x3b
c0de9282:	eb09 0508 	add.w	r5, r9, r8
c0de9286:	1d68      	adds	r0, r5, #5
c0de9288:	f000 fb3c 	bl	c0de9904 <__aeabi_memclr>
c0de928c:	482f      	ldr	r0, [pc, #188]	; (c0de934c <io_usb_hid_sent+0xe8>)
c0de928e:	4e2c      	ldr	r6, [pc, #176]	; (c0de9340 <io_usb_hid_sent+0xdc>)
c0de9290:	f859 1000 	ldr.w	r1, [r9, r0]
c0de9294:	0a09      	lsrs	r1, r1, #8
c0de9296:	f809 1008 	strb.w	r1, [r9, r8]
c0de929a:	2105      	movs	r1, #5
c0de929c:	70a9      	strb	r1, [r5, #2]
c0de929e:	f859 0000 	ldr.w	r0, [r9, r0]
c0de92a2:	7068      	strb	r0, [r5, #1]
c0de92a4:	f859 0006 	ldr.w	r0, [r9, r6]
c0de92a8:	0a00      	lsrs	r0, r0, #8
c0de92aa:	70e8      	strb	r0, [r5, #3]
c0de92ac:	f859 0006 	ldr.w	r0, [r9, r6]
c0de92b0:	7128      	strb	r0, [r5, #4]
c0de92b2:	f859 1006 	ldr.w	r1, [r9, r6]
c0de92b6:	f859 0007 	ldr.w	r0, [r9, r7]
c0de92ba:	b1a9      	cbz	r1, c0de92e8 <io_usb_hid_sent+0x84>
c0de92bc:	283b      	cmp	r0, #59	; 0x3b
c0de92be:	eb09 0008 	add.w	r0, r9, r8
c0de92c2:	bf94      	ite	ls
c0de92c4:	f859 5007 	ldrls.w	r5, [r9, r7]
c0de92c8:	253b      	movhi	r5, #59	; 0x3b
c0de92ca:	3005      	adds	r0, #5
c0de92cc:	e01b      	b.n	c0de9306 <io_usb_hid_sent+0xa2>
c0de92ce:	481c      	ldr	r0, [pc, #112]	; (c0de9340 <io_usb_hid_sent+0xdc>)
c0de92d0:	2100      	movs	r1, #0
c0de92d2:	f849 1000 	str.w	r1, [r9, r0]
c0de92d6:	481b      	ldr	r0, [pc, #108]	; (c0de9344 <io_usb_hid_sent+0xe0>)
c0de92d8:	f849 100a 	str.w	r1, [r9, sl]
c0de92dc:	f809 1000 	strb.w	r1, [r9, r0]
c0de92e0:	f849 1007 	str.w	r1, [r9, r7]
c0de92e4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de92e8:	2839      	cmp	r0, #57	; 0x39
c0de92ea:	bf94      	ite	ls
c0de92ec:	f859 5007 	ldrls.w	r5, [r9, r7]
c0de92f0:	2539      	movhi	r5, #57	; 0x39
c0de92f2:	f859 1007 	ldr.w	r1, [r9, r7]
c0de92f6:	eb09 0008 	add.w	r0, r9, r8
c0de92fa:	0a09      	lsrs	r1, r1, #8
c0de92fc:	7141      	strb	r1, [r0, #5]
c0de92fe:	f859 1007 	ldr.w	r1, [r9, r7]
c0de9302:	7181      	strb	r1, [r0, #6]
c0de9304:	3007      	adds	r0, #7
c0de9306:	4621      	mov	r1, r4
c0de9308:	462a      	mov	r2, r5
c0de930a:	f000 fb00 	bl	c0de990e <__aeabi_memmove>
c0de930e:	f859 0007 	ldr.w	r0, [r9, r7]
c0de9312:	465a      	mov	r2, fp
c0de9314:	2140      	movs	r1, #64	; 0x40
c0de9316:	1b40      	subs	r0, r0, r5
c0de9318:	f849 0007 	str.w	r0, [r9, r7]
c0de931c:	1960      	adds	r0, r4, r5
c0de931e:	f849 000a 	str.w	r0, [r9, sl]
c0de9322:	f859 0006 	ldr.w	r0, [r9, r6]
c0de9326:	3001      	adds	r0, #1
c0de9328:	f849 0006 	str.w	r0, [r9, r6]
c0de932c:	eb09 0008 	add.w	r0, r9, r8
c0de9330:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9334:	4710      	bx	r2
c0de9336:	bf00      	nop
c0de9338:	000066fc 	.word	0x000066fc
c0de933c:	000066f8 	.word	0x000066f8
c0de9340:	000066f0 	.word	0x000066f0
c0de9344:	00006684 	.word	0x00006684
c0de9348:	000066b0 	.word	0x000066b0
c0de934c:	00006700 	.word	0x00006700

c0de9350 <io_usb_hid_send>:
c0de9350:	b189      	cbz	r1, c0de9376 <io_usb_hid_send+0x26>
c0de9352:	b510      	push	{r4, lr}
c0de9354:	4b08      	ldr	r3, [pc, #32]	; (c0de9378 <io_usb_hid_send+0x28>)
c0de9356:	2400      	movs	r4, #0
c0de9358:	f849 4003 	str.w	r4, [r9, r3]
c0de935c:	4b07      	ldr	r3, [pc, #28]	; (c0de937c <io_usb_hid_send+0x2c>)
c0de935e:	f849 1003 	str.w	r1, [r9, r3]
c0de9362:	4b07      	ldr	r3, [pc, #28]	; (c0de9380 <io_usb_hid_send+0x30>)
c0de9364:	f849 2003 	str.w	r2, [r9, r3]
c0de9368:	4a06      	ldr	r2, [pc, #24]	; (c0de9384 <io_usb_hid_send+0x34>)
c0de936a:	f849 1002 	str.w	r1, [r9, r2]
c0de936e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9372:	f7ff bf77 	b.w	c0de9264 <io_usb_hid_sent>
c0de9376:	4770      	bx	lr
c0de9378:	000066f0 	.word	0x000066f0
c0de937c:	000066f8 	.word	0x000066f8
c0de9380:	000066fc 	.word	0x000066fc
c0de9384:	000066f4 	.word	0x000066f4

c0de9388 <snprintf>:
c0de9388:	b081      	sub	sp, #4
c0de938a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de938e:	b089      	sub	sp, #36	; 0x24
c0de9390:	2800      	cmp	r0, #0
c0de9392:	9311      	str	r3, [sp, #68]	; 0x44
c0de9394:	f000 816c 	beq.w	c0de9670 <snprintf+0x2e8>
c0de9398:	460d      	mov	r5, r1
c0de939a:	2900      	cmp	r1, #0
c0de939c:	f000 8168 	beq.w	c0de9670 <snprintf+0x2e8>
c0de93a0:	4629      	mov	r1, r5
c0de93a2:	4616      	mov	r6, r2
c0de93a4:	4604      	mov	r4, r0
c0de93a6:	f000 faad 	bl	c0de9904 <__aeabi_memclr>
c0de93aa:	f1b5 0801 	subs.w	r8, r5, #1
c0de93ae:	f000 815f 	beq.w	c0de9670 <snprintf+0x2e8>
c0de93b2:	a811      	add	r0, sp, #68	; 0x44
c0de93b4:	9004      	str	r0, [sp, #16]
c0de93b6:	7830      	ldrb	r0, [r6, #0]
c0de93b8:	2800      	cmp	r0, #0
c0de93ba:	f000 8159 	beq.w	c0de9670 <snprintf+0x2e8>
c0de93be:	2700      	movs	r7, #0
c0de93c0:	b128      	cbz	r0, c0de93ce <snprintf+0x46>
c0de93c2:	2825      	cmp	r0, #37	; 0x25
c0de93c4:	d003      	beq.n	c0de93ce <snprintf+0x46>
c0de93c6:	19f0      	adds	r0, r6, r7
c0de93c8:	3701      	adds	r7, #1
c0de93ca:	7840      	ldrb	r0, [r0, #1]
c0de93cc:	e7f8      	b.n	c0de93c0 <snprintf+0x38>
c0de93ce:	4547      	cmp	r7, r8
c0de93d0:	bf28      	it	cs
c0de93d2:	4647      	movcs	r7, r8
c0de93d4:	4620      	mov	r0, r4
c0de93d6:	4631      	mov	r1, r6
c0de93d8:	463a      	mov	r2, r7
c0de93da:	f000 fa98 	bl	c0de990e <__aeabi_memmove>
c0de93de:	ebb8 0807 	subs.w	r8, r8, r7
c0de93e2:	f000 8145 	beq.w	c0de9670 <snprintf+0x2e8>
c0de93e6:	5df1      	ldrb	r1, [r6, r7]
c0de93e8:	19f0      	adds	r0, r6, r7
c0de93ea:	443c      	add	r4, r7
c0de93ec:	4606      	mov	r6, r0
c0de93ee:	2925      	cmp	r1, #37	; 0x25
c0de93f0:	d1e1      	bne.n	c0de93b6 <snprintf+0x2e>
c0de93f2:	1c41      	adds	r1, r0, #1
c0de93f4:	f04f 0b00 	mov.w	fp, #0
c0de93f8:	2020      	movs	r0, #32
c0de93fa:	2500      	movs	r5, #0
c0de93fc:	2600      	movs	r6, #0
c0de93fe:	3101      	adds	r1, #1
c0de9400:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de9404:	4632      	mov	r2, r6
c0de9406:	3101      	adds	r1, #1
c0de9408:	2600      	movs	r6, #0
c0de940a:	2b2d      	cmp	r3, #45	; 0x2d
c0de940c:	d0f8      	beq.n	c0de9400 <snprintf+0x78>
c0de940e:	f1a3 0630 	sub.w	r6, r3, #48	; 0x30
c0de9412:	2e0a      	cmp	r6, #10
c0de9414:	d313      	bcc.n	c0de943e <snprintf+0xb6>
c0de9416:	2b25      	cmp	r3, #37	; 0x25
c0de9418:	d043      	beq.n	c0de94a2 <snprintf+0x11a>
c0de941a:	2b2a      	cmp	r3, #42	; 0x2a
c0de941c:	d01e      	beq.n	c0de945c <snprintf+0xd4>
c0de941e:	2b2e      	cmp	r3, #46	; 0x2e
c0de9420:	d128      	bne.n	c0de9474 <snprintf+0xec>
c0de9422:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de9426:	2a2a      	cmp	r2, #42	; 0x2a
c0de9428:	d139      	bne.n	c0de949e <snprintf+0x116>
c0de942a:	780a      	ldrb	r2, [r1, #0]
c0de942c:	2a48      	cmp	r2, #72	; 0x48
c0de942e:	d003      	beq.n	c0de9438 <snprintf+0xb0>
c0de9430:	2a73      	cmp	r2, #115	; 0x73
c0de9432:	d001      	beq.n	c0de9438 <snprintf+0xb0>
c0de9434:	2a68      	cmp	r2, #104	; 0x68
c0de9436:	d132      	bne.n	c0de949e <snprintf+0x116>
c0de9438:	9a04      	ldr	r2, [sp, #16]
c0de943a:	2601      	movs	r6, #1
c0de943c:	e016      	b.n	c0de946c <snprintf+0xe4>
c0de943e:	f083 0630 	eor.w	r6, r3, #48	; 0x30
c0de9442:	ea56 060b 	orrs.w	r6, r6, fp
c0de9446:	bf08      	it	eq
c0de9448:	2030      	moveq	r0, #48	; 0x30
c0de944a:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de944e:	3901      	subs	r1, #1
c0de9450:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de9454:	4616      	mov	r6, r2
c0de9456:	f1a3 0b30 	sub.w	fp, r3, #48	; 0x30
c0de945a:	e7d0      	b.n	c0de93fe <snprintf+0x76>
c0de945c:	460b      	mov	r3, r1
c0de945e:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de9462:	2a73      	cmp	r2, #115	; 0x73
c0de9464:	d11b      	bne.n	c0de949e <snprintf+0x116>
c0de9466:	9a04      	ldr	r2, [sp, #16]
c0de9468:	2602      	movs	r6, #2
c0de946a:	4619      	mov	r1, r3
c0de946c:	1d13      	adds	r3, r2, #4
c0de946e:	9304      	str	r3, [sp, #16]
c0de9470:	6815      	ldr	r5, [r2, #0]
c0de9472:	e7c4      	b.n	c0de93fe <snprintf+0x76>
c0de9474:	2b48      	cmp	r3, #72	; 0x48
c0de9476:	d016      	beq.n	c0de94a6 <snprintf+0x11e>
c0de9478:	2b58      	cmp	r3, #88	; 0x58
c0de947a:	d017      	beq.n	c0de94ac <snprintf+0x124>
c0de947c:	2b63      	cmp	r3, #99	; 0x63
c0de947e:	d020      	beq.n	c0de94c2 <snprintf+0x13a>
c0de9480:	2b64      	cmp	r3, #100	; 0x64
c0de9482:	d02a      	beq.n	c0de94da <snprintf+0x152>
c0de9484:	2b68      	cmp	r3, #104	; 0x68
c0de9486:	f000 8097 	beq.w	c0de95b8 <snprintf+0x230>
c0de948a:	2b70      	cmp	r3, #112	; 0x70
c0de948c:	d004      	beq.n	c0de9498 <snprintf+0x110>
c0de948e:	2b73      	cmp	r3, #115	; 0x73
c0de9490:	f000 8097 	beq.w	c0de95c2 <snprintf+0x23a>
c0de9494:	2b78      	cmp	r3, #120	; 0x78
c0de9496:	d102      	bne.n	c0de949e <snprintf+0x116>
c0de9498:	9403      	str	r4, [sp, #12]
c0de949a:	2200      	movs	r2, #0
c0de949c:	e008      	b.n	c0de94b0 <snprintf+0x128>
c0de949e:	1e4e      	subs	r6, r1, #1
c0de94a0:	e789      	b.n	c0de93b6 <snprintf+0x2e>
c0de94a2:	2025      	movs	r0, #37	; 0x25
c0de94a4:	e011      	b.n	c0de94ca <snprintf+0x142>
c0de94a6:	4876      	ldr	r0, [pc, #472]	; (c0de9680 <snprintf+0x2f8>)
c0de94a8:	4478      	add	r0, pc
c0de94aa:	e087      	b.n	c0de95bc <snprintf+0x234>
c0de94ac:	2201      	movs	r2, #1
c0de94ae:	9403      	str	r4, [sp, #12]
c0de94b0:	9201      	str	r2, [sp, #4]
c0de94b2:	9a04      	ldr	r2, [sp, #16]
c0de94b4:	f04f 0c00 	mov.w	ip, #0
c0de94b8:	1d13      	adds	r3, r2, #4
c0de94ba:	9304      	str	r3, [sp, #16]
c0de94bc:	2310      	movs	r3, #16
c0de94be:	6812      	ldr	r2, [r2, #0]
c0de94c0:	e019      	b.n	c0de94f6 <snprintf+0x16e>
c0de94c2:	9804      	ldr	r0, [sp, #16]
c0de94c4:	1d02      	adds	r2, r0, #4
c0de94c6:	9204      	str	r2, [sp, #16]
c0de94c8:	6800      	ldr	r0, [r0, #0]
c0de94ca:	1e4e      	subs	r6, r1, #1
c0de94cc:	f804 0b01 	strb.w	r0, [r4], #1
c0de94d0:	f1b8 0801 	subs.w	r8, r8, #1
c0de94d4:	f47f af6f 	bne.w	c0de93b6 <snprintf+0x2e>
c0de94d8:	e0ca      	b.n	c0de9670 <snprintf+0x2e8>
c0de94da:	9a04      	ldr	r2, [sp, #16]
c0de94dc:	9403      	str	r4, [sp, #12]
c0de94de:	1d13      	adds	r3, r2, #4
c0de94e0:	9304      	str	r3, [sp, #16]
c0de94e2:	6813      	ldr	r3, [r2, #0]
c0de94e4:	2b00      	cmp	r3, #0
c0de94e6:	461a      	mov	r2, r3
c0de94e8:	d500      	bpl.n	c0de94ec <snprintf+0x164>
c0de94ea:	425a      	negs	r2, r3
c0de94ec:	ea4f 7cd3 	mov.w	ip, r3, lsr #31
c0de94f0:	2300      	movs	r3, #0
c0de94f2:	9301      	str	r3, [sp, #4]
c0de94f4:	230a      	movs	r3, #10
c0de94f6:	4c64      	ldr	r4, [pc, #400]	; (c0de9688 <snprintf+0x300>)
c0de94f8:	1e4e      	subs	r6, r1, #1
c0de94fa:	f04f 0a01 	mov.w	sl, #1
c0de94fe:	447c      	add	r4, pc
c0de9500:	fba3 750a 	umull	r7, r5, r3, sl
c0de9504:	2d00      	cmp	r5, #0
c0de9506:	bf18      	it	ne
c0de9508:	2501      	movne	r5, #1
c0de950a:	4297      	cmp	r7, r2
c0de950c:	d804      	bhi.n	c0de9518 <snprintf+0x190>
c0de950e:	b91d      	cbnz	r5, c0de9518 <snprintf+0x190>
c0de9510:	f1ab 0b01 	sub.w	fp, fp, #1
c0de9514:	46ba      	mov	sl, r7
c0de9516:	e7f3      	b.n	c0de9500 <snprintf+0x178>
c0de9518:	f1bc 0f00 	cmp.w	ip, #0
c0de951c:	46e6      	mov	lr, ip
c0de951e:	bf18      	it	ne
c0de9520:	f04f 3eff 	movne.w	lr, #4294967295	; 0xffffffff
c0de9524:	f1bc 0f00 	cmp.w	ip, #0
c0de9528:	d008      	beq.n	c0de953c <snprintf+0x1b4>
c0de952a:	b2c5      	uxtb	r5, r0
c0de952c:	2d30      	cmp	r5, #48	; 0x30
c0de952e:	d108      	bne.n	c0de9542 <snprintf+0x1ba>
c0de9530:	212d      	movs	r1, #45	; 0x2d
c0de9532:	2501      	movs	r5, #1
c0de9534:	f88d 1014 	strb.w	r1, [sp, #20]
c0de9538:	2101      	movs	r1, #1
c0de953a:	e004      	b.n	c0de9546 <snprintf+0x1be>
c0de953c:	2101      	movs	r1, #1
c0de953e:	2500      	movs	r5, #0
c0de9540:	e001      	b.n	c0de9546 <snprintf+0x1be>
c0de9542:	2500      	movs	r5, #0
c0de9544:	2100      	movs	r1, #0
c0de9546:	9102      	str	r1, [sp, #8]
c0de9548:	eb0e 0c0b 	add.w	ip, lr, fp
c0de954c:	f1ac 0702 	sub.w	r7, ip, #2
c0de9550:	2f0d      	cmp	r7, #13
c0de9552:	d808      	bhi.n	c0de9566 <snprintf+0x1de>
c0de9554:	f1ce 0701 	rsb	r7, lr, #1
c0de9558:	a905      	add	r1, sp, #20
c0de955a:	45bb      	cmp	fp, r7
c0de955c:	d004      	beq.n	c0de9568 <snprintf+0x1e0>
c0de955e:	5548      	strb	r0, [r1, r5]
c0de9560:	3701      	adds	r7, #1
c0de9562:	3501      	adds	r5, #1
c0de9564:	e7f9      	b.n	c0de955a <snprintf+0x1d2>
c0de9566:	a905      	add	r1, sp, #20
c0de9568:	e9dd 7001 	ldrd	r7, r0, [sp, #4]
c0de956c:	b910      	cbnz	r0, c0de9574 <snprintf+0x1ec>
c0de956e:	202d      	movs	r0, #45	; 0x2d
c0de9570:	5548      	strb	r0, [r1, r5]
c0de9572:	3501      	adds	r5, #1
c0de9574:	4845      	ldr	r0, [pc, #276]	; (c0de968c <snprintf+0x304>)
c0de9576:	2f00      	cmp	r7, #0
c0de9578:	4478      	add	r0, pc
c0de957a:	bf08      	it	eq
c0de957c:	4620      	moveq	r0, r4
c0de957e:	f1ba 0f00 	cmp.w	sl, #0
c0de9582:	d00b      	beq.n	c0de959c <snprintf+0x214>
c0de9584:	fbb2 f7fa 	udiv	r7, r2, sl
c0de9588:	fbba faf3 	udiv	sl, sl, r3
c0de958c:	fbb7 f4f3 	udiv	r4, r7, r3
c0de9590:	fb04 7413 	mls	r4, r4, r3, r7
c0de9594:	5d04      	ldrb	r4, [r0, r4]
c0de9596:	554c      	strb	r4, [r1, r5]
c0de9598:	3501      	adds	r5, #1
c0de959a:	e7f0      	b.n	c0de957e <snprintf+0x1f6>
c0de959c:	4545      	cmp	r5, r8
c0de959e:	bf28      	it	cs
c0de95a0:	4645      	movcs	r5, r8
c0de95a2:	9c03      	ldr	r4, [sp, #12]
c0de95a4:	462a      	mov	r2, r5
c0de95a6:	4620      	mov	r0, r4
c0de95a8:	f000 f9b1 	bl	c0de990e <__aeabi_memmove>
c0de95ac:	ebb8 0805 	subs.w	r8, r8, r5
c0de95b0:	442c      	add	r4, r5
c0de95b2:	f47f af00 	bne.w	c0de93b6 <snprintf+0x2e>
c0de95b6:	e05b      	b.n	c0de9670 <snprintf+0x2e8>
c0de95b8:	4832      	ldr	r0, [pc, #200]	; (c0de9684 <snprintf+0x2fc>)
c0de95ba:	4478      	add	r0, pc
c0de95bc:	f04f 0c01 	mov.w	ip, #1
c0de95c0:	e003      	b.n	c0de95ca <snprintf+0x242>
c0de95c2:	482e      	ldr	r0, [pc, #184]	; (c0de967c <snprintf+0x2f4>)
c0de95c4:	f04f 0c00 	mov.w	ip, #0
c0de95c8:	4478      	add	r0, pc
c0de95ca:	9b04      	ldr	r3, [sp, #16]
c0de95cc:	b2d2      	uxtb	r2, r2
c0de95ce:	1d1e      	adds	r6, r3, #4
c0de95d0:	9604      	str	r6, [sp, #16]
c0de95d2:	1e4e      	subs	r6, r1, #1
c0de95d4:	6819      	ldr	r1, [r3, #0]
c0de95d6:	2a02      	cmp	r2, #2
c0de95d8:	d03b      	beq.n	c0de9652 <snprintf+0x2ca>
c0de95da:	2a01      	cmp	r2, #1
c0de95dc:	d007      	beq.n	c0de95ee <snprintf+0x266>
c0de95de:	463d      	mov	r5, r7
c0de95e0:	b92a      	cbnz	r2, c0de95ee <snprintf+0x266>
c0de95e2:	2200      	movs	r2, #0
c0de95e4:	5c8b      	ldrb	r3, [r1, r2]
c0de95e6:	3201      	adds	r2, #1
c0de95e8:	2b00      	cmp	r3, #0
c0de95ea:	d1fb      	bne.n	c0de95e4 <snprintf+0x25c>
c0de95ec:	1e55      	subs	r5, r2, #1
c0de95ee:	f1bc 0f00 	cmp.w	ip, #0
c0de95f2:	d014      	beq.n	c0de961e <snprintf+0x296>
c0de95f4:	2d00      	cmp	r5, #0
c0de95f6:	f43f aede 	beq.w	c0de93b6 <snprintf+0x2e>
c0de95fa:	f1b8 0f01 	cmp.w	r8, #1
c0de95fe:	d937      	bls.n	c0de9670 <snprintf+0x2e8>
c0de9600:	780a      	ldrb	r2, [r1, #0]
c0de9602:	0913      	lsrs	r3, r2, #4
c0de9604:	f002 020f 	and.w	r2, r2, #15
c0de9608:	5cc3      	ldrb	r3, [r0, r3]
c0de960a:	f1b8 0802 	subs.w	r8, r8, #2
c0de960e:	7023      	strb	r3, [r4, #0]
c0de9610:	5c82      	ldrb	r2, [r0, r2]
c0de9612:	7062      	strb	r2, [r4, #1]
c0de9614:	d02c      	beq.n	c0de9670 <snprintf+0x2e8>
c0de9616:	3101      	adds	r1, #1
c0de9618:	3d01      	subs	r5, #1
c0de961a:	3402      	adds	r4, #2
c0de961c:	e7ea      	b.n	c0de95f4 <snprintf+0x26c>
c0de961e:	4545      	cmp	r5, r8
c0de9620:	bf28      	it	cs
c0de9622:	4645      	movcs	r5, r8
c0de9624:	4620      	mov	r0, r4
c0de9626:	462a      	mov	r2, r5
c0de9628:	f000 f971 	bl	c0de990e <__aeabi_memmove>
c0de962c:	ebb8 0805 	subs.w	r8, r8, r5
c0de9630:	d01e      	beq.n	c0de9670 <snprintf+0x2e8>
c0de9632:	462f      	mov	r7, r5
c0de9634:	442c      	add	r4, r5
c0de9636:	45bb      	cmp	fp, r7
c0de9638:	f67f aebd 	bls.w	c0de93b6 <snprintf+0x2e>
c0de963c:	ebab 0507 	sub.w	r5, fp, r7
c0de9640:	4620      	mov	r0, r4
c0de9642:	4545      	cmp	r5, r8
c0de9644:	bf28      	it	cs
c0de9646:	4645      	movcs	r5, r8
c0de9648:	4629      	mov	r1, r5
c0de964a:	2220      	movs	r2, #32
c0de964c:	f000 f961 	bl	c0de9912 <__aeabi_memset>
c0de9650:	e7ac      	b.n	c0de95ac <snprintf+0x224>
c0de9652:	7808      	ldrb	r0, [r1, #0]
c0de9654:	2800      	cmp	r0, #0
c0de9656:	f47f aeae 	bne.w	c0de93b6 <snprintf+0x2e>
c0de965a:	4545      	cmp	r5, r8
c0de965c:	bf28      	it	cs
c0de965e:	4645      	movcs	r5, r8
c0de9660:	4620      	mov	r0, r4
c0de9662:	4629      	mov	r1, r5
c0de9664:	2220      	movs	r2, #32
c0de9666:	f000 f954 	bl	c0de9912 <__aeabi_memset>
c0de966a:	ebb8 0805 	subs.w	r8, r8, r5
c0de966e:	d1e1      	bne.n	c0de9634 <snprintf+0x2ac>
c0de9670:	2000      	movs	r0, #0
c0de9672:	b009      	add	sp, #36	; 0x24
c0de9674:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9678:	b001      	add	sp, #4
c0de967a:	4770      	bx	lr
c0de967c:	000023a4 	.word	0x000023a4
c0de9680:	000024e4 	.word	0x000024e4
c0de9684:	000023b2 	.word	0x000023b2
c0de9688:	0000246e 	.word	0x0000246e
c0de968c:	00002414 	.word	0x00002414

c0de9690 <pic_internal>:
c0de9690:	467a      	mov	r2, pc
c0de9692:	4902      	ldr	r1, [pc, #8]	; (c0de969c <pic_internal+0xc>)
c0de9694:	1cc9      	adds	r1, r1, #3
c0de9696:	1a89      	subs	r1, r1, r2
c0de9698:	1a40      	subs	r0, r0, r1
c0de969a:	4770      	bx	lr
c0de969c:	c0de9691 	.word	0xc0de9691

c0de96a0 <pic>:
c0de96a0:	4a0a      	ldr	r2, [pc, #40]	; (c0de96cc <pic+0x2c>)
c0de96a2:	4282      	cmp	r2, r0
c0de96a4:	490a      	ldr	r1, [pc, #40]	; (c0de96d0 <pic+0x30>)
c0de96a6:	d806      	bhi.n	c0de96b6 <pic+0x16>
c0de96a8:	4281      	cmp	r1, r0
c0de96aa:	d304      	bcc.n	c0de96b6 <pic+0x16>
c0de96ac:	b580      	push	{r7, lr}
c0de96ae:	f7ff ffef 	bl	c0de9690 <pic_internal>
c0de96b2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de96b6:	4907      	ldr	r1, [pc, #28]	; (c0de96d4 <pic+0x34>)
c0de96b8:	4288      	cmp	r0, r1
c0de96ba:	4a07      	ldr	r2, [pc, #28]	; (c0de96d8 <pic+0x38>)
c0de96bc:	d304      	bcc.n	c0de96c8 <pic+0x28>
c0de96be:	4290      	cmp	r0, r2
c0de96c0:	d802      	bhi.n	c0de96c8 <pic+0x28>
c0de96c2:	1a40      	subs	r0, r0, r1
c0de96c4:	4649      	mov	r1, r9
c0de96c6:	4408      	add	r0, r1
c0de96c8:	4770      	bx	lr
c0de96ca:	bf00      	nop
c0de96cc:	c0de0000 	.word	0xc0de0000
c0de96d0:	c0df144e 	.word	0xc0df144e
c0de96d4:	da7a0000 	.word	0xda7a0000
c0de96d8:	da7ab000 	.word	0xda7ab000

c0de96dc <SVC_Call>:
c0de96dc:	df01      	svc	1
c0de96de:	2900      	cmp	r1, #0
c0de96e0:	d100      	bne.n	c0de96e4 <exception>
c0de96e2:	4770      	bx	lr

c0de96e4 <exception>:
c0de96e4:	4608      	mov	r0, r1
c0de96e6:	f7ff f914 	bl	c0de8912 <os_longjmp>

c0de96ea <SVC_cx_call>:
c0de96ea:	df01      	svc	1
c0de96ec:	4770      	bx	lr

c0de96ee <halt>:
c0de96ee:	b5e0      	push	{r5, r6, r7, lr}
c0de96f0:	2000      	movs	r0, #0
c0de96f2:	4669      	mov	r1, sp
c0de96f4:	9001      	str	r0, [sp, #4]
c0de96f6:	2002      	movs	r0, #2
c0de96f8:	f7ff fff0 	bl	c0de96dc <SVC_Call>
c0de96fc:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de9700 <nvm_write>:
c0de9700:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de9702:	ab01      	add	r3, sp, #4
c0de9704:	c307      	stmia	r3!, {r0, r1, r2}
c0de9706:	4802      	ldr	r0, [pc, #8]	; (c0de9710 <nvm_write+0x10>)
c0de9708:	a901      	add	r1, sp, #4
c0de970a:	f7ff ffe7 	bl	c0de96dc <SVC_Call>
c0de970e:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de9710:	03000003 	.word	0x03000003

c0de9714 <cx_get_random_bytes>:
c0de9714:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de9716:	e9cd 0100 	strd	r0, r1, [sp]
c0de971a:	4803      	ldr	r0, [pc, #12]	; (c0de9728 <cx_get_random_bytes+0x14>)
c0de971c:	4669      	mov	r1, sp
c0de971e:	f7ff ffe4 	bl	c0de96ea <SVC_cx_call>
c0de9722:	b004      	add	sp, #16
c0de9724:	bd80      	pop	{r7, pc}
c0de9726:	bf00      	nop
c0de9728:	02000107 	.word	0x02000107

c0de972c <os_perso_isonboarded>:
c0de972c:	b5e0      	push	{r5, r6, r7, lr}
c0de972e:	2000      	movs	r0, #0
c0de9730:	4669      	mov	r1, sp
c0de9732:	9001      	str	r0, [sp, #4]
c0de9734:	209f      	movs	r0, #159	; 0x9f
c0de9736:	f7ff ffd1 	bl	c0de96dc <SVC_Call>
c0de973a:	b2c0      	uxtb	r0, r0
c0de973c:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de9740 <os_perso_derive_node_with_seed_key>:
c0de9740:	b510      	push	{r4, lr}
c0de9742:	b088      	sub	sp, #32
c0de9744:	9c0d      	ldr	r4, [sp, #52]	; 0x34
c0de9746:	9407      	str	r4, [sp, #28]
c0de9748:	9c0c      	ldr	r4, [sp, #48]	; 0x30
c0de974a:	9406      	str	r4, [sp, #24]
c0de974c:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
c0de974e:	9405      	str	r4, [sp, #20]
c0de9750:	9c0a      	ldr	r4, [sp, #40]	; 0x28
c0de9752:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de9756:	4803      	ldr	r0, [pc, #12]	; (c0de9764 <os_perso_derive_node_with_seed_key+0x24>)
c0de9758:	4669      	mov	r1, sp
c0de975a:	f7ff ffbf 	bl	c0de96dc <SVC_Call>
c0de975e:	b008      	add	sp, #32
c0de9760:	bd10      	pop	{r4, pc}
c0de9762:	bf00      	nop
c0de9764:	080000a6 	.word	0x080000a6

c0de9768 <os_pki_load_certificate>:
c0de9768:	b510      	push	{r4, lr}
c0de976a:	b086      	sub	sp, #24
c0de976c:	9c09      	ldr	r4, [sp, #36]	; 0x24
c0de976e:	9405      	str	r4, [sp, #20]
c0de9770:	9c08      	ldr	r4, [sp, #32]
c0de9772:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de9776:	4803      	ldr	r0, [pc, #12]	; (c0de9784 <os_pki_load_certificate+0x1c>)
c0de9778:	4669      	mov	r1, sp
c0de977a:	f7ff ffaf 	bl	c0de96dc <SVC_Call>
c0de977e:	b006      	add	sp, #24
c0de9780:	bd10      	pop	{r4, pc}
c0de9782:	bf00      	nop
c0de9784:	060000aa 	.word	0x060000aa

c0de9788 <os_perso_is_pin_set>:
c0de9788:	b5e0      	push	{r5, r6, r7, lr}
c0de978a:	2000      	movs	r0, #0
c0de978c:	4669      	mov	r1, sp
c0de978e:	9001      	str	r0, [sp, #4]
c0de9790:	209e      	movs	r0, #158	; 0x9e
c0de9792:	f7ff ffa3 	bl	c0de96dc <SVC_Call>
c0de9796:	b2c0      	uxtb	r0, r0
c0de9798:	bd8c      	pop	{r2, r3, r7, pc}

c0de979a <os_global_pin_is_validated>:
c0de979a:	b5e0      	push	{r5, r6, r7, lr}
c0de979c:	2000      	movs	r0, #0
c0de979e:	4669      	mov	r1, sp
c0de97a0:	9001      	str	r0, [sp, #4]
c0de97a2:	20a0      	movs	r0, #160	; 0xa0
c0de97a4:	f7ff ff9a 	bl	c0de96dc <SVC_Call>
c0de97a8:	b2c0      	uxtb	r0, r0
c0de97aa:	bd8c      	pop	{r2, r3, r7, pc}

c0de97ac <os_ux>:
c0de97ac:	b5e0      	push	{r5, r6, r7, lr}
c0de97ae:	f000 f8a5 	bl	c0de98fc <OUTLINED_FUNCTION_0>
c0de97b2:	4802      	ldr	r0, [pc, #8]	; (c0de97bc <os_ux+0x10>)
c0de97b4:	4669      	mov	r1, sp
c0de97b6:	f7ff ff91 	bl	c0de96dc <SVC_Call>
c0de97ba:	bd8c      	pop	{r2, r3, r7, pc}
c0de97bc:	01000064 	.word	0x01000064

c0de97c0 <os_flags>:
c0de97c0:	b5e0      	push	{r5, r6, r7, lr}
c0de97c2:	2000      	movs	r0, #0
c0de97c4:	4669      	mov	r1, sp
c0de97c6:	9001      	str	r0, [sp, #4]
c0de97c8:	206a      	movs	r0, #106	; 0x6a
c0de97ca:	f7ff ff87 	bl	c0de96dc <SVC_Call>
c0de97ce:	bd8c      	pop	{r2, r3, r7, pc}

c0de97d0 <os_version>:
c0de97d0:	b5e0      	push	{r5, r6, r7, lr}
c0de97d2:	e9cd 0100 	strd	r0, r1, [sp]
c0de97d6:	4802      	ldr	r0, [pc, #8]	; (c0de97e0 <os_version+0x10>)
c0de97d8:	4669      	mov	r1, sp
c0de97da:	f7ff ff7f 	bl	c0de96dc <SVC_Call>
c0de97de:	bd8c      	pop	{r2, r3, r7, pc}
c0de97e0:	0200006b 	.word	0x0200006b

c0de97e4 <os_seph_version>:
c0de97e4:	b5e0      	push	{r5, r6, r7, lr}
c0de97e6:	e9cd 0100 	strd	r0, r1, [sp]
c0de97ea:	4802      	ldr	r0, [pc, #8]	; (c0de97f4 <os_seph_version+0x10>)
c0de97ec:	4669      	mov	r1, sp
c0de97ee:	f7ff ff75 	bl	c0de96dc <SVC_Call>
c0de97f2:	bd8c      	pop	{r2, r3, r7, pc}
c0de97f4:	0200006f 	.word	0x0200006f

c0de97f8 <os_registry_get_current_app_tag>:
c0de97f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de97fa:	ab01      	add	r3, sp, #4
c0de97fc:	c307      	stmia	r3!, {r0, r1, r2}
c0de97fe:	4803      	ldr	r0, [pc, #12]	; (c0de980c <os_registry_get_current_app_tag+0x14>)
c0de9800:	a901      	add	r1, sp, #4
c0de9802:	f7ff ff6b 	bl	c0de96dc <SVC_Call>
c0de9806:	b004      	add	sp, #16
c0de9808:	bd80      	pop	{r7, pc}
c0de980a:	bf00      	nop
c0de980c:	03000074 	.word	0x03000074

c0de9810 <os_sched_exit>:
c0de9810:	b082      	sub	sp, #8
c0de9812:	f000 f873 	bl	c0de98fc <OUTLINED_FUNCTION_0>
c0de9816:	4802      	ldr	r0, [pc, #8]	; (c0de9820 <os_sched_exit+0x10>)
c0de9818:	4669      	mov	r1, sp
c0de981a:	f7ff ff5f 	bl	c0de96dc <SVC_Call>
c0de981e:	deff      	udf	#255	; 0xff
c0de9820:	0100009a 	.word	0x0100009a

c0de9824 <io_seph_send>:
c0de9824:	b5e0      	push	{r5, r6, r7, lr}
c0de9826:	e9cd 0100 	strd	r0, r1, [sp]
c0de982a:	4802      	ldr	r0, [pc, #8]	; (c0de9834 <io_seph_send+0x10>)
c0de982c:	4669      	mov	r1, sp
c0de982e:	f7ff ff55 	bl	c0de96dc <SVC_Call>
c0de9832:	bd8c      	pop	{r2, r3, r7, pc}
c0de9834:	02000083 	.word	0x02000083

c0de9838 <io_seph_is_status_sent>:
c0de9838:	b5e0      	push	{r5, r6, r7, lr}
c0de983a:	2000      	movs	r0, #0
c0de983c:	4669      	mov	r1, sp
c0de983e:	9001      	str	r0, [sp, #4]
c0de9840:	2084      	movs	r0, #132	; 0x84
c0de9842:	f7ff ff4b 	bl	c0de96dc <SVC_Call>
c0de9846:	bd8c      	pop	{r2, r3, r7, pc}

c0de9848 <io_seph_recv>:
c0de9848:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de984a:	ab01      	add	r3, sp, #4
c0de984c:	c307      	stmia	r3!, {r0, r1, r2}
c0de984e:	4803      	ldr	r0, [pc, #12]	; (c0de985c <io_seph_recv+0x14>)
c0de9850:	a901      	add	r1, sp, #4
c0de9852:	f7ff ff43 	bl	c0de96dc <SVC_Call>
c0de9856:	b280      	uxth	r0, r0
c0de9858:	b004      	add	sp, #16
c0de985a:	bd80      	pop	{r7, pc}
c0de985c:	03000085 	.word	0x03000085

c0de9860 <try_context_get>:
c0de9860:	b5e0      	push	{r5, r6, r7, lr}
c0de9862:	2000      	movs	r0, #0
c0de9864:	4669      	mov	r1, sp
c0de9866:	9001      	str	r0, [sp, #4]
c0de9868:	2087      	movs	r0, #135	; 0x87
c0de986a:	f7ff ff37 	bl	c0de96dc <SVC_Call>
c0de986e:	bd8c      	pop	{r2, r3, r7, pc}

c0de9870 <try_context_set>:
c0de9870:	b5e0      	push	{r5, r6, r7, lr}
c0de9872:	f000 f843 	bl	c0de98fc <OUTLINED_FUNCTION_0>
c0de9876:	4802      	ldr	r0, [pc, #8]	; (c0de9880 <try_context_set+0x10>)
c0de9878:	4669      	mov	r1, sp
c0de987a:	f7ff ff2f 	bl	c0de96dc <SVC_Call>
c0de987e:	bd8c      	pop	{r2, r3, r7, pc}
c0de9880:	0100010b 	.word	0x0100010b

c0de9884 <os_sched_last_status>:
c0de9884:	b5e0      	push	{r5, r6, r7, lr}
c0de9886:	f000 f839 	bl	c0de98fc <OUTLINED_FUNCTION_0>
c0de988a:	4803      	ldr	r0, [pc, #12]	; (c0de9898 <os_sched_last_status+0x14>)
c0de988c:	4669      	mov	r1, sp
c0de988e:	f7ff ff25 	bl	c0de96dc <SVC_Call>
c0de9892:	b2c0      	uxtb	r0, r0
c0de9894:	bd8c      	pop	{r2, r3, r7, pc}
c0de9896:	bf00      	nop
c0de9898:	0100009c 	.word	0x0100009c

c0de989c <screen_update>:
c0de989c:	b5e0      	push	{r5, r6, r7, lr}
c0de989e:	2000      	movs	r0, #0
c0de98a0:	4669      	mov	r1, sp
c0de98a2:	9001      	str	r0, [sp, #4]
c0de98a4:	207a      	movs	r0, #122	; 0x7a
c0de98a6:	f7ff ff19 	bl	c0de96dc <SVC_Call>
c0de98aa:	bd8c      	pop	{r2, r3, r7, pc}

c0de98ac <bagl_hal_draw_bitmap_within_rect>:
c0de98ac:	b510      	push	{r4, lr}
c0de98ae:	b08a      	sub	sp, #40	; 0x28
c0de98b0:	9c10      	ldr	r4, [sp, #64]	; 0x40
c0de98b2:	f10d 0c04 	add.w	ip, sp, #4
c0de98b6:	9409      	str	r4, [sp, #36]	; 0x24
c0de98b8:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
c0de98ba:	9408      	str	r4, [sp, #32]
c0de98bc:	9c0e      	ldr	r4, [sp, #56]	; 0x38
c0de98be:	9407      	str	r4, [sp, #28]
c0de98c0:	9c0d      	ldr	r4, [sp, #52]	; 0x34
c0de98c2:	9406      	str	r4, [sp, #24]
c0de98c4:	9c0c      	ldr	r4, [sp, #48]	; 0x30
c0de98c6:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de98ca:	4803      	ldr	r0, [pc, #12]	; (c0de98d8 <bagl_hal_draw_bitmap_within_rect+0x2c>)
c0de98cc:	a901      	add	r1, sp, #4
c0de98ce:	f7ff ff05 	bl	c0de96dc <SVC_Call>
c0de98d2:	b00a      	add	sp, #40	; 0x28
c0de98d4:	bd10      	pop	{r4, pc}
c0de98d6:	bf00      	nop
c0de98d8:	0900007c 	.word	0x0900007c

c0de98dc <bagl_hal_draw_rect>:
c0de98dc:	b510      	push	{r4, lr}
c0de98de:	b086      	sub	sp, #24
c0de98e0:	f10d 0c04 	add.w	ip, sp, #4
c0de98e4:	9c08      	ldr	r4, [sp, #32]
c0de98e6:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de98ea:	4803      	ldr	r0, [pc, #12]	; (c0de98f8 <bagl_hal_draw_rect+0x1c>)
c0de98ec:	a901      	add	r1, sp, #4
c0de98ee:	f7ff fef5 	bl	c0de96dc <SVC_Call>
c0de98f2:	b006      	add	sp, #24
c0de98f4:	bd10      	pop	{r4, pc}
c0de98f6:	bf00      	nop
c0de98f8:	0500007d 	.word	0x0500007d

c0de98fc <OUTLINED_FUNCTION_0>:
c0de98fc:	2100      	movs	r1, #0
c0de98fe:	e9cd 0100 	strd	r0, r1, [sp]
c0de9902:	4770      	bx	lr

c0de9904 <__aeabi_memclr>:
c0de9904:	2200      	movs	r2, #0
c0de9906:	f000 b804 	b.w	c0de9912 <__aeabi_memset>

c0de990a <__aeabi_memcpy>:
c0de990a:	f000 b81d 	b.w	c0de9948 <memcpy>

c0de990e <__aeabi_memmove>:
c0de990e:	f000 b828 	b.w	c0de9962 <memmove>

c0de9912 <__aeabi_memset>:
c0de9912:	4613      	mov	r3, r2
c0de9914:	460a      	mov	r2, r1
c0de9916:	4619      	mov	r1, r3
c0de9918:	f000 b83d 	b.w	c0de9996 <memset>

c0de991c <explicit_bzero>:
c0de991c:	f000 b800 	b.w	c0de9920 <bzero>

c0de9920 <bzero>:
c0de9920:	460a      	mov	r2, r1
c0de9922:	2100      	movs	r1, #0
c0de9924:	f000 b837 	b.w	c0de9996 <memset>

c0de9928 <memcmp>:
c0de9928:	3901      	subs	r1, #1
c0de992a:	4402      	add	r2, r0
c0de992c:	b510      	push	{r4, lr}
c0de992e:	4290      	cmp	r0, r2
c0de9930:	d101      	bne.n	c0de9936 <memcmp+0xe>
c0de9932:	2000      	movs	r0, #0
c0de9934:	e005      	b.n	c0de9942 <memcmp+0x1a>
c0de9936:	7803      	ldrb	r3, [r0, #0]
c0de9938:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de993c:	42a3      	cmp	r3, r4
c0de993e:	d001      	beq.n	c0de9944 <memcmp+0x1c>
c0de9940:	1b18      	subs	r0, r3, r4
c0de9942:	bd10      	pop	{r4, pc}
c0de9944:	3001      	adds	r0, #1
c0de9946:	e7f2      	b.n	c0de992e <memcmp+0x6>

c0de9948 <memcpy>:
c0de9948:	440a      	add	r2, r1
c0de994a:	1e43      	subs	r3, r0, #1
c0de994c:	4291      	cmp	r1, r2
c0de994e:	d100      	bne.n	c0de9952 <memcpy+0xa>
c0de9950:	4770      	bx	lr
c0de9952:	b510      	push	{r4, lr}
c0de9954:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de9958:	4291      	cmp	r1, r2
c0de995a:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de995e:	d1f9      	bne.n	c0de9954 <memcpy+0xc>
c0de9960:	bd10      	pop	{r4, pc}

c0de9962 <memmove>:
c0de9962:	4288      	cmp	r0, r1
c0de9964:	b510      	push	{r4, lr}
c0de9966:	eb01 0402 	add.w	r4, r1, r2
c0de996a:	d902      	bls.n	c0de9972 <memmove+0x10>
c0de996c:	4284      	cmp	r4, r0
c0de996e:	4623      	mov	r3, r4
c0de9970:	d807      	bhi.n	c0de9982 <memmove+0x20>
c0de9972:	1e43      	subs	r3, r0, #1
c0de9974:	42a1      	cmp	r1, r4
c0de9976:	d008      	beq.n	c0de998a <memmove+0x28>
c0de9978:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de997c:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de9980:	e7f8      	b.n	c0de9974 <memmove+0x12>
c0de9982:	4402      	add	r2, r0
c0de9984:	4601      	mov	r1, r0
c0de9986:	428a      	cmp	r2, r1
c0de9988:	d100      	bne.n	c0de998c <memmove+0x2a>
c0de998a:	bd10      	pop	{r4, pc}
c0de998c:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de9990:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de9994:	e7f7      	b.n	c0de9986 <memmove+0x24>

c0de9996 <memset>:
c0de9996:	4402      	add	r2, r0
c0de9998:	4603      	mov	r3, r0
c0de999a:	4293      	cmp	r3, r2
c0de999c:	d100      	bne.n	c0de99a0 <memset+0xa>
c0de999e:	4770      	bx	lr
c0de99a0:	f803 1b01 	strb.w	r1, [r3], #1
c0de99a4:	e7f9      	b.n	c0de999a <memset+0x4>
	...

c0de99a8 <setjmp>:
c0de99a8:	46ec      	mov	ip, sp
c0de99aa:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de99ae:	f04f 0000 	mov.w	r0, #0
c0de99b2:	4770      	bx	lr

c0de99b4 <longjmp>:
c0de99b4:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de99b8:	46e5      	mov	sp, ip
c0de99ba:	0008      	movs	r0, r1
c0de99bc:	bf08      	it	eq
c0de99be:	2001      	moveq	r0, #1
c0de99c0:	4770      	bx	lr
c0de99c2:	bf00      	nop

c0de99c4 <strcmp>:
c0de99c4:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de99c8:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de99cc:	2a01      	cmp	r2, #1
c0de99ce:	bf28      	it	cs
c0de99d0:	429a      	cmpcs	r2, r3
c0de99d2:	d0f7      	beq.n	c0de99c4 <strcmp>
c0de99d4:	1ad0      	subs	r0, r2, r3
c0de99d6:	4770      	bx	lr

c0de99d8 <strlen>:
c0de99d8:	4603      	mov	r3, r0
c0de99da:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de99de:	2a00      	cmp	r2, #0
c0de99e0:	d1fb      	bne.n	c0de99da <strlen+0x2>
c0de99e2:	1a18      	subs	r0, r3, r0
c0de99e4:	3801      	subs	r0, #1
c0de99e6:	4770      	bx	lr

c0de99e8 <strncmp>:
c0de99e8:	4603      	mov	r3, r0
c0de99ea:	b510      	push	{r4, lr}
c0de99ec:	b172      	cbz	r2, c0de9a0c <strncmp+0x24>
c0de99ee:	3901      	subs	r1, #1
c0de99f0:	1884      	adds	r4, r0, r2
c0de99f2:	f813 0b01 	ldrb.w	r0, [r3], #1
c0de99f6:	f811 2f01 	ldrb.w	r2, [r1, #1]!
c0de99fa:	4290      	cmp	r0, r2
c0de99fc:	d101      	bne.n	c0de9a02 <strncmp+0x1a>
c0de99fe:	42a3      	cmp	r3, r4
c0de9a00:	d101      	bne.n	c0de9a06 <strncmp+0x1e>
c0de9a02:	1a80      	subs	r0, r0, r2
c0de9a04:	bd10      	pop	{r4, pc}
c0de9a06:	2800      	cmp	r0, #0
c0de9a08:	d1f3      	bne.n	c0de99f2 <strncmp+0xa>
c0de9a0a:	e7fa      	b.n	c0de9a02 <strncmp+0x1a>
c0de9a0c:	4610      	mov	r0, r2
c0de9a0e:	e7f9      	b.n	c0de9a04 <strncmp+0x1c>

c0de9a10 <strncpy>:
c0de9a10:	3901      	subs	r1, #1
c0de9a12:	4603      	mov	r3, r0
c0de9a14:	b510      	push	{r4, lr}
c0de9a16:	b132      	cbz	r2, c0de9a26 <strncpy+0x16>
c0de9a18:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de9a1c:	3a01      	subs	r2, #1
c0de9a1e:	f803 4b01 	strb.w	r4, [r3], #1
c0de9a22:	2c00      	cmp	r4, #0
c0de9a24:	d1f7      	bne.n	c0de9a16 <strncpy+0x6>
c0de9a26:	441a      	add	r2, r3
c0de9a28:	2100      	movs	r1, #0
c0de9a2a:	4293      	cmp	r3, r2
c0de9a2c:	d100      	bne.n	c0de9a30 <strncpy+0x20>
c0de9a2e:	bd10      	pop	{r4, pc}
c0de9a30:	f803 1b01 	strb.w	r1, [r3], #1
c0de9a34:	e7f9      	b.n	c0de9a2a <strncpy+0x1a>

c0de9a36 <strnlen>:
c0de9a36:	4602      	mov	r2, r0
c0de9a38:	4401      	add	r1, r0
c0de9a3a:	b510      	push	{r4, lr}
c0de9a3c:	428a      	cmp	r2, r1
c0de9a3e:	4613      	mov	r3, r2
c0de9a40:	d003      	beq.n	c0de9a4a <strnlen+0x14>
c0de9a42:	781c      	ldrb	r4, [r3, #0]
c0de9a44:	3201      	adds	r2, #1
c0de9a46:	2c00      	cmp	r4, #0
c0de9a48:	d1f8      	bne.n	c0de9a3c <strnlen+0x6>
c0de9a4a:	1a18      	subs	r0, r3, r0
c0de9a4c:	bd10      	pop	{r4, pc}

c0de9a4e <strstr>:
c0de9a4e:	780a      	ldrb	r2, [r1, #0]
c0de9a50:	b570      	push	{r4, r5, r6, lr}
c0de9a52:	b96a      	cbnz	r2, c0de9a70 <strstr+0x22>
c0de9a54:	bd70      	pop	{r4, r5, r6, pc}
c0de9a56:	429a      	cmp	r2, r3
c0de9a58:	d109      	bne.n	c0de9a6e <strstr+0x20>
c0de9a5a:	460c      	mov	r4, r1
c0de9a5c:	4605      	mov	r5, r0
c0de9a5e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
c0de9a62:	2b00      	cmp	r3, #0
c0de9a64:	d0f6      	beq.n	c0de9a54 <strstr+0x6>
c0de9a66:	f815 6f01 	ldrb.w	r6, [r5, #1]!
c0de9a6a:	429e      	cmp	r6, r3
c0de9a6c:	d0f7      	beq.n	c0de9a5e <strstr+0x10>
c0de9a6e:	3001      	adds	r0, #1
c0de9a70:	7803      	ldrb	r3, [r0, #0]
c0de9a72:	2b00      	cmp	r3, #0
c0de9a74:	d1ef      	bne.n	c0de9a56 <strstr+0x8>
c0de9a76:	4618      	mov	r0, r3
c0de9a78:	e7ec      	b.n	c0de9a54 <strstr+0x6>

c0de9a7a <_ecode>:
	...

c0de9a7c <C_icon_app_colors>:
c0de9a7c:	0000 0000 ffff 00ff                         ........

c0de9a84 <C_icon_app_bitmap>:
c0de9a84:	ffff ffff ffff e43f e01f f18f e0c7 e467     ......?.......g.
c0de9a94:	e627 e307 f18f f807 fc27 ffff ffff ffff     '.......'.......

c0de9aa4 <C_icon_app>:
c0de9aa4:	0010 0000 0010 0000 0001 0000 9a7c c0de     ............|...
c0de9ab4:	9a84 c0de                                   ....

c0de9ab8 <C_icon_crossmark_bitmap>:
c0de9ab8:	8000 e601 71c0 3838 fc07 1e00 0780 03f0     .....q88........
c0de9ac8:	c1ce 38e1 0670 0018 0000 0000               ...8p.......

c0de9ad4 <C_icon_crossmark>:
c0de9ad4:	000e 0000 000e 0000 0001 0000 9a7c c0de     ............|...
c0de9ae4:	9ab8 c0de                                   ....

c0de9ae8 <C_icon_dashboard_bitmap>:
c0de9ae8:	01e0 c1fe 38ff 0670 79d8 9e7e e79f b9e7     .....8p..y~.....
c0de9af8:	e601 f1c0 f83f 7807 0000 0000               ....?..x....

c0de9b04 <C_icon_dashboard>:
c0de9b04:	000e 0000 000e 0000 0001 0000 9a7c c0de     ............|...
c0de9b14:	9ae8 c0de                                   ....

c0de9b18 <C_icon_eye_bitmap>:
c0de9b18:	0000 0000 e01e 1c1f 030e 8c63 6319 0c0c     ..........c..c..
c0de9b28:	8387 807f 0007 0000 0000 0000               ............

c0de9b34 <C_icon_eye>:
c0de9b34:	000e 0000 000e 0000 0001 0000 9a7c c0de     ............|...
c0de9b44:	9b18 c0de                                   ....

c0de9b48 <C_icon_left_bitmap>:
c0de9b48:	1248 0842                                   H.B.

c0de9b4c <C_icon_left>:
c0de9b4c:	0004 0000 0007 0000 0001 0000 9a7c c0de     ............|...
c0de9b5c:	9b48 c0de                                   H...

c0de9b60 <C_icon_right_bitmap>:
c0de9b60:	8421 0124                                   !.$.

c0de9b64 <C_icon_right>:
c0de9b64:	0004 0000 0007 0000 0001 0000 9a7c c0de     ............|...
c0de9b74:	9b60 c0de                                   `...

c0de9b78 <C_icon_validate_14_bitmap>:
c0de9b78:	0000 0000 0000 00c0 0038 e067 1c38 039c     ........8.g.8...
c0de9b88:	007e 800f 0001 0000 0000 0000               ~...........

c0de9b94 <C_icon_validate_14>:
c0de9b94:	000e 0000 000e 0000 0001 0000 9a7c c0de     ............|...
c0de9ba4:	9b78 c0de                                   x...

c0de9ba8 <C_icon_warning_bitmap>:
c0de9ba8:	0000 0030 800c 2007 cc01 3300 1ce0 0738     ..0.... ...3..8.
c0de9bb8:	c3ff f8f3 fe7c 001f 0000 0000               ....|.......

c0de9bc4 <C_icon_warning>:
c0de9bc4:	000e 0000 000e 0000 0001 0000 9a7c c0de     ............|...
c0de9bd4:	9ba8 c0de 6425 6900 6a6e 6d00 6773 2f73     ....%d.inj.msgs/
c0de9be4:	6e69 7570 7374 632f 696f 736e 4e00 206f     inputs/coins.No 
c0de9bf4:	7265 6f72 0072 6964 7073 616c 2079 6170     error.display pa
c0de9c04:	6567 6f20 7475 6f20 2066 6172 676e 0065     ge out of range.
c0de9c14:	6566 0065 6544 7473 4120 6464 6572 7373     fee.Dest Address
c0de9c24:	6d00 6773 2f73 6176 756c 2f65 756f 7074     .msgs/value/outp
c0de9c34:	7475 2f73 6461 7264 7365 0073 736d 7367     uts/address.msgs
c0de9c44:	762f 6c61 6575 742f 5f6f 6461 7264 7365     /value/to_addres
c0de9c54:	0073 736d 7367 762f 6c61 6575 762f 6c61     s.msgs/value/val
c0de9c64:	6469 7461 726f 615f 6464 6572 7373 6d00     idator_address.m
c0de9c74:	6773 2f73 6176 756c 2f65 6564 6373 6972     sgs/value/descri
c0de9c84:	7470 6f69 006e 4853 5052 4f00 7475 7570     ption.SHRP.Outpu
c0de9c94:	2074 6544 6f6e 696d 616e 6974 6e6f 6d00     t Denomination.m
c0de9ca4:	6773 2f73 7874 7645 6e65 7374 742f 4878     sgs/txEvents/txH
c0de9cb4:	7361 0068 6e49 7473 6e61 6974 7461 2065     ash.Instantiate 
c0de9cc4:	6550 6d72 7369 6973 6e6f 5200 7665 6b6f     Permission.Revok
c0de9cd4:	2065 6f44 7563 656d 746e 4500 726e 6c6f     e Document.Enrol
c0de9ce4:	206c 6156 696c 6164 6f74 0072 6552 6f76     l Validator.Revo
c0de9cf4:	656b 5320 5248 2050 6f4c 6461 7265 0073     ke SHRP Loaders.
c0de9d04:	6c65 6365 6f74 6172 2f6c 6e45 6f72 6c6c     electoral/Enroll
c0de9d14:	6f44 4963 7373 6575 7372 6800 615f 7070     DocIssuers.h_app
c0de9d24:	6f72 6576 6800 705f 6761 6e69 5f67 6e69     rove.h_paging_in
c0de9d34:	7263 6165 6573 6800 705f 6761 6e69 5f67     crease.h_paging_
c0de9d44:	6163 5f6e 6564 7263 6165 6573 4e20 004f     can_decrease NO.
c0de9d54:	6544 6576 6f6c 6570 2064 7962 003a 6b53     Developed by:.Sk
c0de9d64:	7069 6620 6569 646c 0073 7325 2820 6425     ip fields.%s (%d
c0de9d74:	252f 2964 6d00 6773 2f73 6176 756c 2f65     /%d).msgs/value/
c0de9d84:	6d61 756f 746e 5500 656e 7078 6365 6574     amount.Unexpecte
c0de9d94:	2064 6863 7261 6361 6574 7372 5500 656e     d characters.Une
c0de9da4:	7078 6365 6574 2064 6966 6c65 0064 7254     xpected field.Tr
c0de9db4:	6e61 6173 7463 6f69 206e 7369 7420 6f6f     ansaction is too
c0de9dc4:	6220 6769 5300 7165 6575 636e 0065 6566      big.Sequence.fe
c0de9dd4:	2f65 7267 6e61 6574 0072 774f 656e 0072     e/granter.Owner.
c0de9de4:	736d 7367 552f 4955 0044 4449 0073 7546     msgs/UUID.IDs.Fu
c0de9df4:	646e 2073 6544 6f6e 696d 616e 6974 6e6f     nds Denomination
c0de9e04:	6100 7373 7465 552f 6470 7461 4165 7373     .asset/UpdateAss
c0de9e14:	7465 6400 636f 6d75 6e65 2f74 7243 6165     et.document/Crea
c0de9e24:	6574 6f44 7563 656d 746e 4500 726e 6c6f     teDocument.Enrol
c0de9e34:	206c 6341 6f63 6e75 2074 704f 7265 7461     l Account Operat
c0de9e44:	726f 0073 6c65 6365 6f74 6172 2f6c 6552     ors.electoral/Re
c0de9e54:	6f76 656b 7041 7270 766f 7265 6900 2f64     vokeApprover.id/
c0de9e64:	7243 6165 6574 6449 2f00 6500 6d76 736f     CreateId./.evmos
c0de9e74:	4a00 4f53 2e4e 5420 6f6f 6d20 6e61 2079     .JSON. Too many 
c0de9e84:	6f74 656b 736e 7500 656e 7078 6365 6574     tokens.unexpecte
c0de9e94:	2064 4243 524f 6520 7272 726f 6300 6e6f     d CBOR error.con
c0de9ea4:	6574 7478 6920 766e 6c61 6469 6320 6168     text invalid cha
c0de9eb4:	7372 6d00 6773 2f73 7369 7573 7265 6d00     rs.msgs/issuer.m
c0de9ec4:	6773 2f73 6162 6374 4968 0064 6157 6d73     sgs/batchId.Wasm
c0de9ed4:	4220 7479 2065 6f43 6564 4600 6e75 7364      Byte Code.Funds
c0de9ee4:	4120 6f6d 6e75 0074 736d 7367 732f 6c61      Amount.msgs/sal
c0de9ef4:	0074 6f56 6574 4300 6572 7461 2065 6f44     t.Vote.Create Do
c0de9f04:	7563 656d 746e 4400 6c65 7465 2065 6341     cument.Delete Ac
c0de9f14:	6974 6e6f 4620 6565 6700 6e65 6c74 6d65     tion Fee.gentlem
c0de9f24:	6e69 2f74 6f4c 6461 6900 2f64 6552 6c70     int/Load.id/Repl
c0de9f34:	6361 4965 4f64 6e77 7265 2500 2a2e 0073     aceIdOwner.%.*s.
c0de9f44:	534a 4e4f 4d20 7369 6973 676e 6d20 6773     JSON Missing msg
c0de9f54:	0073 534a 4e4f 5520 656e 7078 6365 6574     s.JSON Unexpecte
c0de9f64:	2064 7265 6f72 0072 6863 6961 5f6e 6469     d error.chain_id
c0de9f74:	4100 7463 6f69 006e 6148 6873 6d00 6773     .Action.Hash.msg
c0de9f84:	2f73 7564 6172 6974 6e6f 4200 6f6f 496b     s/duration.BookI
c0de9f94:	0044 736d 7367 612f 6f6d 6e75 2f74 6564     D.msgs/amount/de
c0de9fa4:	6f6e 006d 736d 7367 662f 6565 612f 6f6d     nom.msgs/fee/amo
c0de9fb4:	6e75 0074 7753 7061 4920 206e 6546 0065     unt.Swap In Fee.
c0de9fc4:	7854 6553 646e 7265 4300 6572 7461 726f     TxSender.Creator
c0de9fd4:	5300 6e65 0064 6f63 6d73 736f 732d 6b64     .Send.cosmos-sdk
c0de9fe4:	4d2f 6773 6544 656c 6167 6574 4400 6c65     /MsgDelegate.Del
c0de9ff4:	7465 2065 6546 2065 654c 6576 006c 6552     ete Fee Level.Re
c0dea004:	656a 7463 4300 6168 6e69 6920 0064 2520     ject.Chain id. %
c0dea014:	0073 4853 0052 736d 7367 762f 6c61 6575     s.SHR.msgs/value
c0dea024:	702f 6f72 6f70 6173 5f6c 7974 6570 6d00     /proposal_type.m
c0dea034:	6773 2f73 7473 7461 7375 4900 7373 6575     sgs/status.Issue
c0dea044:	0072 6544 656c 6167 6574 5700 7469 6468     r.Delegate.Withd
c0dea054:	6172 2077 6553 2074 6441 7264 7365 0073     raw Set Address.
c0dea064:	6c65 6365 6f74 6172 2f6c 6552 6f76 656b     electoral/Revoke
c0dea074:	6449 6953 6e67 7265 0073 6552 6f76 656b     IdSigners.Revoke
c0dea084:	4120 6363 756f 746e 4f20 6570 6172 6f74      Account Operato
c0dea094:	7372 6700 6e65 6c74 6d65 6e69 2f74 6553     rs.gentlemint/Se
c0dea0a4:	4c74 7665 6c65 6546 0065 7243 6165 6574     tLevelFee.Create
c0dea0b4:	4d20 6c75 6974 6c70 2065 4449 6800 705f      Multiple ID.h_p
c0dea0c4:	6761 6e69 5f67 6e69 7469 5200 7165 6975     aging_init.Requi
c0dea0d4:	6572 0064 0020 7325 6400 7369 6c70 7961     red. .%s.display
c0dea0e4:	6920 646e 7865 6f20 7475 6f20 2066 6172      index out of ra
c0dea0f4:	676e 0065 6f63 746e 7865 2074 6e75 7865     nge.context unex
c0dea104:	6570 7463 6465 7320 7a69 0065 785c 2e25     pected size.\x%.
c0dea114:	3230 0058 4544 4146 4c55 2054 6843 6961     02X.DEFAULT Chai
c0dea124:	206e 4700 7361 4c20 6d69 7469 5300 756f     n .Gas Limit.Sou
c0dea134:	6372 2065 6441 7264 7365 0073 6d41 756f     rce Address.Amou
c0dea144:	746e 5600 6c61 6469 7461 726f 4200 6f6f     nt.Validator.Boo
c0dea154:	656b 0072 6546 2065 6d41 756f 746e 6d00     ker.Fee Amount.m
c0dea164:	6773 2f73 6572 6563 7669 7265 6d00 6773     sgs/receiver.msg
c0dea174:	2f73 616c 6562 006c 7773 7061 522f 7165     s/label.swap/Req
c0dea184:	6575 7473 754f 0074 7773 7061 432f 6e61     uestOut.swap/Can
c0dea194:	6563 426c 7461 6863 7365 4900 736e 6174     celBatches.Insta
c0dea1a4:	746e 6169 6574 4320 6e6f 7274 6361 0074     ntiate Contract.
c0dea1b4:	6556 7372 6f69 3a6e 5500 656e 7078 6365     Version:.Unexpec
c0dea1c4:	6574 2064 4243 524f 4520 464f 6300 6e6f     ted CBOR EOF.con
c0dea1d4:	6574 7478 7020 6572 6966 2078 7369 6920     text prefix is i
c0dea1e4:	766e 6c61 6469 4300 6168 6e69 6920 2073     nvalid.Chain is 
c0dea1f4:	4f4e 2054 4544 4146 4c55 0054 6150 6579     NOT DEFAULT.Paye
c0dea204:	0072 7246 6d6f 5400 006f 6544 6373 6972     r.From.To.Descri
c0dea214:	7470 6f69 006e 736d 7367 682f 7361 0068     ption.msgs/hash.
c0dea224:	736d 7367 692f 7373 6575 4172 6464 6572     msgs/issuerAddre
c0dea234:	7373 6d00 6773 2f73 6e69 642f 6e65 6d6f     ss.msgs/in/denom
c0dea244:	4300 6e6f 7274 6361 2074 7845 6f70 656e     .Contract Expone
c0dea254:	746e 6d00 6773 2f73 6e69 7473 6e61 6974     nt.msgs/instanti
c0dea264:	7461 5f65 6570 6d72 7369 6973 6e6f 612f     ate_permission/a
c0dea274:	6464 6572 7373 7365 6500 656c 7463 726f     ddresses.elector
c0dea284:	6c61 522f 7665 6b6f 4c65 616f 6564 7372     al/RevokeLoaders
c0dea294:	4200 7975 5320 5248 7300 6177 2f70 7055     .Buy SHR.swap/Up
c0dea2a4:	6164 6574 6353 6568 616d 7300 6177 2f70     dateSchema.swap/
c0dea2b4:	6552 656a 7463 5500 6470 7461 2065 7753     Reject.Update Sw
c0dea2c4:	7061 4620 6565 7800 6c70 0061 736d 7367     ap Fee.xpla.msgs
c0dea2d4:	762f 6c61 6575 762f 6c61 6469 7461 726f     /value/validator
c0dea2e4:	735f 6372 615f 6464 6572 7373 6d00 6773     _src_address.msg
c0dea2f4:	2f73 6176 756c 2f65 6f76 6574 0072 736d     s/value/voter.ms
c0dea304:	7367 732f 6863 6d65 0061 6353 6568 616d     gs/schema.Schema
c0dea314:	6d00 6773 2f73 6573 646e 7265 4300 646f     .msgs/sender.Cod
c0dea324:	2065 4449 5300 6c61 0074 6f63 6d73 736f     e ID.Salt.cosmos
c0dea334:	732d 6b64 4d2f 6773 7553 6d62 7469 7250     -sdk/MsgSubmitPr
c0dea344:	706f 736f 6c61 5500 6470 7461 2065 6353     oposal.Update Sc
c0dea354:	6568 616d 7300 6177 2f70 6552 7571 7365     hema.swap/Reques
c0dea364:	4974 006e 5f68 6572 656a 7463 2000 255b     tIn.h_reject. [%
c0dea374:	2f64 6425 005d 6f44 6275 656c 702d 6572     d/%d].Double-pre
c0dea384:	7373 7420 206f 6b73 7069 7a00 7465 0061     ss to skip.zeta.
c0dea394:	6d61 756f 746e 4f00 7470 6f69 006e 5555     amount.Option.UU
c0dea3a4:	4449 4500 7478 6172 4420 7461 0061 736d     ID.Extra Data.ms
c0dea3b4:	7367 762f 6c61 6575 6d2f 6d65 006f 754d     gs/value/memo.Mu
c0dea3c4:	746c 0069 6c65 6365 6f74 6172 2f6c 6e45     lti.electoral/En
c0dea3d4:	6f72 6c6c 6341 6f63 6e75 4f74 6570 6172     rollAccountOpera
c0dea3e4:	6f74 7372 6700 6e65 6c74 6d65 6e69 2f74     tors.gentlemint/
c0dea3f4:	6553 646e 7300 6177 2f70 6544 656c 6574     Send.swap/Delete
c0dea404:	6353 6568 616d 7200 7665 6569 0077 6156     Schema.review.Va
c0dea414:	756c 2065 756f 2074 666f 7220 6e61 6567     lue out of range
c0dea424:	6d00 7369 6973 676e 6620 6569 646c 6d00     .missing field.m
c0dea434:	6773 0073 6566 2f65 6170 6579 0072 6954     sgs.fee/payer.Ti
c0dea444:	6c74 0065 736d 7367 762f 6c61 6575 642f     tle.msgs/value/d
c0dea454:	7065 736f 7469 726f 5000 6f72 6f70 6173     epositor.Proposa
c0dea464:	206c 4449 6d00 6773 2f73 7263 6165 6f74     l ID.msgs/creato
c0dea474:	0072 7544 6172 6974 6e6f 4900 736e 6174     r.Duration.Insta
c0dea484:	746e 6169 6574 5020 7265 696d 7373 6f69     ntiate Permissio
c0dea494:	206e 6441 7264 7365 6573 0073 6e55 6564     n Addresses.Unde
c0dea4a4:	656c 6167 6574 6800 705f 6761 6e69 5f67     legate.h_paging_
c0dea4b4:	6163 5f6e 6564 7263 6165 6573 4400 7065     can_decrease.Dep
c0dea4c4:	736f 7469 4120 6f6d 6e75 0074 7453 7461     osit Amount.Stat
c0dea4d4:	7375 6d00 6773 2f73 6461 696d 006e 6f63     us.msgs/admin.co
c0dea4e4:	6d73 736f 732d 6b64 4d2f 6773 6957 6874     smos-sdk/MsgWith
c0dea4f4:	7264 7761 6156 696c 6164 6f74 4372 6d6f     drawValidatorCom
c0dea504:	696d 7373 6f69 006e 6553 2074 6341 6974     mission.Set Acti
c0dea514:	6e6f 4620 6565 4300 6572 7461 2065 6353     on Fee.Create Sc
c0dea524:	6568 616d 7700 7361 2f6d 7055 6164 6574     hema.wasm/Update
c0dea534:	6441 696d 006e 6e55 7865 6570 7463 6465     Admin.Unexpected
c0dea544:	6320 6168 6e69 4a00 4f53 204e 7473 6972      chain.JSON stri
c0dea554:	676e 6920 2073 6f6e 2074 6f63 706d 656c     ng is not comple
c0dea564:	6574 3f00 4600 6565 6d00 6773 2f73 6176     te.?.Fee.msgs/va
c0dea574:	756c 2f65 7266 6d6f 615f 6464 6572 7373     lue/from_address
c0dea584:	4400 7365 6974 616e 6974 6e6f 4120 6464     .Destination Add
c0dea594:	6572 7373 6d00 6773 2f73 7874 7645 6e65     ress.msgs/txEven
c0dea5a4:	7374 732f 6e65 6564 0072 7361 6573 2f74     ts/sender.asset/
c0dea5b4:	7243 6165 6574 7341 6573 0074 6170 6567     CreateAsset.page
c0dea5c4:	2d2d 4100 6170 6863 2065 2e32 0030 6552     --.Apache 2.0.Re
c0dea5d4:	6461 0079 0027 6974 0070 6341 6f63 6e75     ady.'.tip.Accoun
c0dea5e4:	0074 7954 6570 6d00 6773 2f73 6176 756c     t.Type.msgs/valu
c0dea5f4:	2f65 6176 696c 6164 6f74 5f72 7364 5f74     e/validator_dst_
c0dea604:	6461 7264 7365 0073 6f43 6e69 4420 6e65     address.Coin Den
c0dea614:	6d6f 6e69 7461 6f69 006e 6f43 746e 6172     omination.Contra
c0dea624:	7463 6200 6f6f 696b 676e 432f 6d6f 6c70     ct.booking/Compl
c0dea634:	7465 4265 6f6f 696b 676e 5500 6470 7461     eteBooking.Updat
c0dea644:	2065 6f44 7563 656d 746e 5200 7665 6b6f     e Document.Revok
c0dea654:	2065 4449 5320 6769 656e 0072 6e45 6f72     e ID Signer.Enro
c0dea664:	6c6c 4420 636f 6d75 6e65 2074 7349 7573     ll Document Issu
c0dea674:	7265 0073 6e45 6f72 6c6c 4120 7070 6f72     ers.Enroll Appro
c0dea684:	6576 0072 6567 746e 656c 696d 746e 442f     ver.gentlemint/D
c0dea694:	6c65 7465 4165 7463 6f69 4c6e 7665 6c65     eleteActionLevel
c0dea6a4:	6546 0065 6567 746e 656c 696d 746e 422f     Fee.gentlemint/B
c0dea6b4:	7275 006e 7469 6d65 2d2d 3000 7400 7069     urn.item--.0.tip
c0dea6c4:	612f 6f6d 6e75 0074 534a 4e4f 4d20 7369     /amount.JSON Mis
c0dea6d4:	6973 676e 6320 6168 6e69 695f 0064 6573     sing chain_id.se
c0dea6e4:	7571 6e65 6563 6600 6565 672f 7361 4700     quence.fee/gas.G
c0dea6f4:	7361 5400 7069 5000 6f72 6f70 6573 0072     as.Tip.Proposer.
c0dea704:	7854 4320 6572 7461 726f 6d00 6773 2f73     Tx Creator.msgs/
c0dea714:	776f 656e 0072 654e 7774 726f 006b 654e     owner.Network.Ne
c0dea724:	2077 6441 696d 006e 6957 6874 7264 7761     w Admin.Withdraw
c0dea734:	5620 6c61 202e 6f43 6d6d 7369 6973 6e6f      Val. Commission
c0dea744:	6500 656c 7463 726f 6c61 522f 7665 6b6f     .electoral/Revok
c0dea754:	4465 636f 7349 7573 7265 0073 6143 636e     eDocIssuers.Canc
c0dea764:	6c65 4500 7078 7265 2074 6f6d 6564 003a     el.Expert mode:.
c0dea774:	7071 727a 3979 3878 6667 7432 6476 3077     qpzry9x8gf2tvdw0
c0dea784:	3373 6e6a 3435 686b 6563 6d36 6175 6c37     s3jn54khce6mua7l
c0dea794:	3e00 4500 706d 7974 4a00 4f53 204e 694d     .>.Empty.JSON Mi
c0dea7a4:	7373 6e69 2067 656d 6f6d 6d00 6773 2f73     ssing memo.msgs/
c0dea7b4:	7974 6570 4300 6168 6e69 4920 0044 6974     type.Chain ID.ti
c0dea7c4:	2f70 6974 7070 7265 4100 6464 6572 7373     p/tipper.Address
c0dea7d4:	7365 4900 7373 6575 2072 6441 7264 7365     es.Issuer Addres
c0dea7e4:	0073 4449 6d00 6773 2f73 6f63 6564 695f     s.ID.msgs/code_i
c0dea7f4:	0064 7243 6165 6574 4120 7373 7465 4500     d.Create Asset.E
c0dea804:	726e 6c6f 206c 4853 5052 4c20 616f 6564     nroll SHRP Loade
c0dea814:	7372 5500 6470 7461 2065 6441 696d 006e     rs.Update Admin.
c0dea824:	736d 7367 632f 696f 736e 612f 6f6d 6e75     msgs/coins/amoun
c0dea834:	0074 736d 7367 662f 6e75 7364 612f 6f6d     t.msgs/funds/amo
c0dea844:	6e75 0074 6946 2078 654d 7373 6761 0065     unt.Fix Message.
c0dea854:	7361 6573 2f74 6544 656c 6574 7341 6573     asset/DeleteAsse
c0dea864:	0074 6544 656c 6574 4120 7373 7465 7300     t.Delete Asset.s
c0dea874:	6177 2f70 7243 6165 6574 6353 6568 616d     wap/CreateSchema
c0dea884:	7300 6177 2f70 6143 636e 6c65 4d00 6769     .swap/Cancel.Mig
c0dea894:	6172 6574 4320 6e6f 7274 6361 0074 534a     rate Contract.JS
c0dea8a4:	4e4f 4420 6369 6974 6e6f 7261 6569 2073     ON Dictionaries 
c0dea8b4:	7261 2065 6f6e 2074 6f73 7472 6465 4300     are not sorted.C
c0dea8c4:	696f 206e 6d41 756f 746e 6d00 6773 2f73     oin Amount.msgs/
c0dea8d4:	6f62 6b6f 7265 6d00 6773 2f73 7270 6f6f     booker.msgs/proo
c0dea8e4:	0066 736d 7367 692f 736e 6174 746e 6169     f.msgs/instantia
c0dea8f4:	6574 705f 7265 696d 7373 6f69 2f6e 6461     te_permission/ad
c0dea904:	7264 7365 0073 6f63 6d73 736f 732d 6b64     dress.cosmos-sdk
c0dea914:	4d2f 6773 6553 646e 6300 736f 6f6d 2d73     /MsgSend.cosmos-
c0dea924:	6473 2f6b 734d 4d67 6c75 6974 6553 646e     sdk/MsgMultiSend
c0dea934:	6400 636f 6d75 6e65 2f74 6552 6f76 656b     .document/Revoke
c0dea944:	6f44 7563 656d 746e 5200 7665 6b6f 2065     Document.Revoke 
c0dea954:	6156 696c 6164 6f74 0072 6567 746e 656c     Validator.gentle
c0dea964:	696d 746e 532f 7465 7845 6863 6e61 6567     mint/SetExchange
c0dea974:	4200 7275 206e 6f54 656b 006e 6177 6d73     .Burn Token.wasm
c0dea984:	452f 6578 7563 6574 6f43 746e 6172 7463     /ExecuteContract
c0dea994:	6300 6e6f 6966 7567 6172 6974 6e6f 6800     .configuration.h
c0dea9a4:	6d75 6e61 6d00 6773 2f73 656e 7774 726f     uman.msgs/networ
c0dea9b4:	006b 7753 7061 4420 6e65 6d6f 6e69 7461     k.Swap Denominat
c0dea9c4:	6f69 006e 6552 6563 7669 7265 6300 736f     ion.Receiver.cos
c0dea9d4:	6f6d 2d73 6473 2f6b 734d 5667 746f 0065     mos-sdk/MsgVote.
c0dea9e4:	6567 746e 656c 696d 746e 4c2f 616f 4664     gentlemint/LoadF
c0dea9f4:	6565 4c00 616f 2064 6f54 656b 006e 7773     ee.Load Token.sw
c0deaa04:	7061 432f 6d6f 6c70 7465 4265 7461 6863     ap/CompleteBatch
c0deaa14:	7500 656e 7078 6365 6574 2064 7974 6570     .unexpected type
c0deaa24:	6d00 6773 2f73 756f 7074 7475 2f73 6461     .msgs/outputs/ad
c0deaa34:	7264 7365 0073 736d 7367 762f 6c61 6575     dress.msgs/value
c0deaa44:	702f 6f72 6f70 6573 0072 736d 7367 762f     /proposer.msgs/v
c0deaa54:	6c61 6575 6f2f 7470 6f69 006e 654c 6576     alue/option.Leve
c0deaa64:	006c 6f48 646c 7265 6d00 6773 2f73 7865     l.Holder.msgs/ex
c0deaa74:	7274 4461 7461 0061 736d 7367 6f2f 6e77     traData.msgs/own
c0deaa84:	7265 6441 7264 7365 0073 736d 7367 692f     erAddress.msgs/i
c0deaa94:	2f6e 6d61 756f 746e 6d00 6773 2f73 736d     n/amount.msgs/ms
c0deaaa4:	0067 3130 3332 3534 3736 3938 6261 6463     g.0123456789abcd
c0deaab4:	6665 4500 6578 7563 6574 4320 6e6f 7274     ef.Execute Contr
c0deaac4:	6361 0074 5245 4f52 0052 736d 7367 762f     act.ERROR.msgs/v
c0deaad4:	6c61 6575 692f 706e 7475 2f73 6f63 6e69     alue/inputs/coin
c0deaae4:	0073 534a 4e4f 4d20 7369 6973 676e 7320     s.JSON Missing s
c0deaaf4:	7165 6575 636e 0065 656d 6f6d 6d00 6773     equence.memo.msg
c0deab04:	2f73 656c 6576 006c 736d 7367 732f 7268     s/level.msgs/shr
c0deab14:	0070 736d 7367 612f 6f6d 6e75 2f74 6d61     p.msgs/amount/am
c0deab24:	756f 746e 6d00 6773 2f73 6176 756c 2f65     ount.msgs/value/
c0deab34:	7263 6165 6f74 0072 6f63 6d73 736f 732d     creator.cosmos-s
c0deab44:	6b64 4d2f 6773 6553 5774 7469 6468 6172     dk/MsgSetWithdra
c0deab54:	4177 6464 6572 7373 6500 656c 7463 726f     wAddress.elector
c0deab64:	6c61 452f 726e 6c6f 566c 746f 7265 6500     al/EnrollVoter.e
c0deab74:	656c 7463 726f 6c61 452f 726e 6c6f 4c6c     lectoral/EnrollL
c0deab84:	616f 6564 7372 4100 5050 4f52 4556 4a00     oaders.APPROVE.J
c0deab94:	4f53 204e 694d 7373 6e69 2067 6361 6f63     SON Missing acco
c0deaba4:	6e75 2074 756e 626d 7265 5000 6f72 6f70     unt number.Propo
c0deabb4:	6173 006c 736d 7367 662f 6565 5300 6177     sal.msgs/fee.Swa
c0deabc4:	2070 754f 2074 6546 0065 6469 552f 6470     p Out Fee.id/Upd
c0deabd4:	7461 4965 0064 6552 7571 7365 2074 7753     ateId.Request Sw
c0deabe4:	7061 4f20 7475 6800 725f 7665 6569 5f77     ap Out.h_review_
c0deabf4:	7075 6164 6574 645f 7461 2061 202d 6547     update_data - Ge
c0deac04:	4e74 6d75 7449 6d65 3d73 4e3d 4c55 004c     tNumItems==NULL.
c0deac14:	6c50 6165 6573 2e00 2e2e 3100 6d00 6773     Please.....1.msg
c0deac24:	2f73 6176 756c 2f65 756f 7074 7475 2f73     s/value/outputs/
c0deac34:	6f63 6e69 0073 6957 6874 7264 7761 4120     coins.Withdraw A
c0deac44:	6464 6572 7373 6d00 6773 2f73 6176 756c     ddress.msgs/valu
c0deac54:	2f65 6974 6c74 0065 736d 7367 612f 6f6d     e/title.msgs/amo
c0deac64:	6e75 0074 6144 6174 4600 6565 4420 6e65     unt.Data.Fee Den
c0deac74:	6d6f 6e69 7461 6f69 006e 736d 7367 662f     omination.msgs/f
c0deac84:	7869 6d5f 6773 5200 6465 6c65 6765 7461     ix_msg.Redelegat
c0deac94:	0065 6957 6874 7264 7761 5220 7765 7261     e.Withdraw Rewar
c0deaca4:	0064 7041 7270 766f 2065 7753 7061 4f20     d.Approve Swap O
c0deacb4:	7475 4400 6c65 7465 2065 6353 6568 616d     ut.Delete Schema
c0deacc4:	4300 6d6f 6c70 7465 2065 6142 6374 0068     .Complete Batch.
c0deacd4:	6177 6d73 492f 736e 6174 746e 6169 6574     wasm/Instantiate
c0deace4:	6f43 746e 6172 7463 4f00 006b 4552 454a     Contract.Ok.REJE
c0deacf4:	5443 5600 6c61 6469 7461 726f 5320 756f     CT.Validator Sou
c0dead04:	6372 0065 736d 7367 762f 6c61 6575 692f     rce.msgs/value/i
c0dead14:	696e 6974 6c61 645f 7065 736f 7469 612f     nitial_deposit/a
c0dead24:	6f6d 6e75 0074 6544 6f70 6973 2074 6544     mount.Deposit De
c0dead34:	6f6e 006d 6553 646e 7265 6d00 6773 2f73     nom.Sender.msgs/
c0dead44:	6f63 6e69 2f73 6564 6f6e 006d 7250 6f6f     coins/denom.Proo
c0dead54:	0066 6e49 7473 6e61 6974 7461 2065 6550     f.Instantiate Pe
c0dead64:	6d72 7369 6973 6e6f 4120 6464 6572 7373     rmission Address
c0dead74:	6300 736f 6f6d 2d73 6473 2f6b 734d 4467     .cosmos-sdk/MsgD
c0dead84:	7065 736f 7469 6500 656c 7463 726f 6c61     eposit.electoral
c0dead94:	452f 726e 6c6f 416c 7070 6f72 6576 0072     /EnrollApprover.
c0deada4:	7453 726f 2065 6f43 6564 4100 6464 6572     Store Code.Addre
c0deadb4:	7373 4a00 4f53 204e 694d 7373 6e69 2067     ss.JSON Missing 
c0deadc4:	6566 0065 6f53 7275 6563 4320 696f 736e     fee.Source Coins
c0deadd4:	5600 6c61 6469 7461 726f 4420 7365 0074     .Validator Dest.
c0deade4:	736d 7367 722f 7461 0065 736d 7367 622f     msgs/rate.msgs/b
c0deadf4:	6f6f 496b 0044 736d 7367 732f 6372 6441     ookID.msgs/srcAd
c0deae04:	7264 7365 0073 6441 696d 006e 6f63 6d73     dress.Admin.cosm
c0deae14:	736f 732d 6b64 4d2f 6773 6e55 6564 656c     os-sdk/MsgUndele
c0deae24:	6167 6574 6300 736f 6f6d 2d73 6473 2f6b     gate.cosmos-sdk/
c0deae34:	734d 5767 7469 6468 6172 4477 6c65 6765     MsgWithdrawDeleg
c0deae44:	7461 6f69 526e 7765 7261 0064 6f62 6b6f     ationReward.book
c0deae54:	6e69 2f67 7243 6165 6574 6f42 6b6f 6e69     ing/CreateBookin
c0deae64:	0067 6c65 6365 6f74 6172 2f6c 6552 6f76     g.electoral/Revo
c0deae74:	656b 6341 6f63 6e75 4f74 6570 6172 6f74     keAccountOperato
c0deae84:	7372 6900 2f64 7243 6165 6574 6449 0073     rs.id/CreateIds.
c0deae94:	7055 6164 6574 4920 0044 6552 7571 7365     Update ID.Reques
c0deaea4:	2074 7753 7061 4920 006e 7551 7469 4900     t Swap In.Quit.I
c0deaeb4:	696e 6974 6c61 7a69 6465 6520 706d 7974     nitialized empty
c0deaec4:	6320 6e6f 6574 7478 6d00 6773 2f73 6176      context.msgs/va
c0deaed4:	756c 2f65 6e69 7570 7374 612f 6464 6572     lue/inputs/addre
c0deaee4:	7373 6d00 6773 2f73 6164 6174 6d00 6773     ss.msgs/data.msg
c0deaef4:	2f73 6f68 646c 7265 4d00 7365 6173 6567     s/holder.Message
c0deaf04:	6d00 6773 2f73 7566 646e 2f73 6564 6f6e     .msgs/funds/deno
c0deaf14:	006d 7964 006d 6562 6172 6600 6565 612f     m.dym.bera.fee/a
c0deaf24:	6f6d 6e75 0074 6f4e 6d20 726f 2065 6164     mount.No more da
c0deaf34:	6174 4300 4f42 2052 6177 2073 6f6e 2074     ta.CBOR was not 
c0deaf44:	6e69 6320 6e61 6e6f 6369 6c61 6f20 6472     in canonical ord
c0deaf54:	7265 5500 726e 6365 676f 696e 657a 2064     er.Unrecognized 
c0deaf64:	7265 6f72 2072 6f63 6564 4700 6172 746e     error code.Grant
c0deaf74:	7265 5400 7069 6570 0072 6152 6574 6d00     er.Tipper.Rate.m
c0deaf84:	6773 2f73 6361 6974 6e6f 4200 6361 756b     sgs/action.Backu
c0deaf94:	2070 6441 7264 7365 0073 736d 7367 692f     p Address.msgs/i
c0deafa4:	0064 736d 7367 742f 4578 6576 746e 2f73     d.msgs/txEvents/
c0deafb4:	6f6c 4967 646e 7865 5400 4878 7361 0068     logIndex.TxHash.
c0deafc4:	6f64 7563 656d 746e 432f 6572 7461 4465     document/CreateD
c0deafd4:	636f 6d75 6e65 7374 6400 636f 6d75 6e65     ocuments.documen
c0deafe4:	2f74 7055 6164 6574 6f44 7563 656d 746e     t/UpdateDocument
c0deaff4:	6500 656c 7463 726f 6c61 452f 726e 6c6f     .electoral/Enrol
c0deb004:	496c 5364 6769 656e 7372 4c00 616f 2064     lIdSigners.Load 
c0deb014:	6546 0065 7243 6165 6574 4920 0044 6957     Fee.Create ID.Wi
c0deb024:	6874 7264 7761 4300 6e61 6563 206c 6142     thdraw.Cancel Ba
c0deb034:	6374 6568 0073 6177 6d73 492f 736e 6174     tches.wasm/Insta
c0deb044:	746e 6169 6574 6f43 746e 6172 7463 0032     ntiateContract2.
c0deb054:	7250 7365 2073 6972 6867 2074 6f74 7220     Press right to r
c0deb064:	6165 0064 6f5a 646e 7861 632e 0068 6552     ead.Zondax.ch.Re
c0deb074:	6976 7765 6100 6464 5f72 6567 4e74 6d75     view.addr_getNum
c0deb084:	7449 6d65 0073 534a 4e4f 4320 6e6f 6174     Items.JSON Conta
c0deb094:	6e69 2073 6877 7469 7365 6170 6563 6920     ins whitespace i
c0deb0a4:	206e 6874 2065 6f63 7072 7375 6d00 6773     n the corpus.msg
c0deb0b4:	2f73 6f63 746e 6172 7463 7845 6f70 656e     s/contractExpone
c0deb0c4:	746e 4c00 6261 6c65 4d00 6c75 6974 5320     nt.Label.Multi S
c0deb0d4:	6e65 0064 6553 2074 7845 6863 6e61 6567     end.Set Exchange
c0deb0e4:	5220 7461 0065 7041 7270 766f 2065 7753      Rate.Approve Sw
c0deb0f4:	7061 4920 006e 694c 6563 736e 3a65 7000     ap In.License:.p
c0deb104:	7261 6573 707c 7261 6573 0064 5500 656e     arse|parsed..Une
c0deb114:	7078 6365 6574 2064 7564 6c70 6369 7461     xpected duplicat
c0deb124:	6465 6620 6569 646c 6900 6574 206d 7571     ed field.item qu
c0deb134:	7265 2079 6572 7574 6e72 6465 6e20 206f     ery returned no 
c0deb144:	6572 7573 746c 0073 534a 4e4f 202e 655a     results.JSON. Ze
c0deb154:	6f72 7420 6b6f 6e65 0073 736d 7367 762f     ro tokens.msgs/v
c0deb164:	6c61 6575 642f 6c65 6765 7461 726f 615f     alue/delegator_a
c0deb174:	6464 6572 7373 4400 6c65 6765 7461 726f     ddress.Delegator
c0deb184:	6d00 6773 2f73 6176 756c 2f65 7270 706f     .msgs/value/prop
c0deb194:	736f 6c61 695f 0064 736d 7367 622f 6361     osal_id.msgs/bac
c0deb1a4:	756b 4170 6464 6572 7373 6d00 6773 2f73     kupAddress.msgs/
c0deb1b4:	6566 2f65 6564 6f6e 006d 736d 7367 6f2f     fee/denom.msgs/o
c0deb1c4:	7475 642f 6e65 6d6f 4900 646e 7865 4500     ut/denom.Index.E
c0deb1d4:	726e 6c6f 206c 4449 5320 6769 656e 0072     nroll ID Signer.
c0deb1e4:	6553 2074 6546 2065 654c 6576 006c 7773     Set Fee Level.sw
c0deb1f4:	7061 442f 7065 736f 7469 4300 656c 7261     ap/Deposit.Clear
c0deb204:	4120 6d64 6e69 6400 6e65 6d6f 5500 656e      Admin.denom.Une
c0deb214:	7078 6365 6574 2064 7562 6666 7265 6520     xpected buffer e
c0deb224:	646e 5500 656e 7078 6365 6574 2064 6576     nd.Unexpected ve
c0deb234:	7372 6f69 006e 6853 7261 5265 6e69 2d67     rsion.ShareRing-
c0deb244:	694c 6566 7453 6c79 0065 736d 7367 732f     LifeStyle.msgs/s
c0deb254:	6769 616e 7574 6572 6d00 6773 2f73 6177     ignature.msgs/wa
c0deb264:	6d73 625f 7479 5f65 6f63 6564 4400 7065     sm_byte_code.Dep
c0deb274:	736f 7469 5500 6470 7461 2065 7341 6573     osit.Update Asse
c0deb284:	0074 7243 6165 6574 4220 6f6f 696b 676e     t.Create Booking
c0deb294:	6700 6e65 6c74 6d65 6e69 2f74 6553 4174     .gentlemint/SetA
c0deb2a4:	7463 6f69 4c6e 7665 6c65 6546 0065 6177     ctionLevelFee.wa
c0deb2b4:	6d73 4d2f 6769 6172 6574 6f43 746e 6172     sm/MigrateContra
c0deb2c4:	7463 5300 6168 6572 656c 6764 7265 4500     ct.Shareledger.E
c0deb2d4:	7078 7265 2074 6f4d 6564 6d00 6773 2f73     xpert Mode.msgs/
c0deb2e4:	756f 7074 7475 2f73 6f63 6e69 0073 6f4e     outputs/coins.No
c0deb2f4:	2074 6c41 6f6c 6577 2064 6863 6961 006e     t Allowed chain.
c0deb304:	6566 2f65 6167 5f73 696c 696d 0074 736d     fee/gas_limit.ms
c0deb314:	7367 692f 706e 7475 2f73 6461 7264 7365     gs/inputs/addres
c0deb324:	0073 6e49 7570 2074 6544 6f6e 696d 616e     s.Input Denomina
c0deb334:	6974 6e6f 6d00 6773 2f73 756f 2f74 6d61     tion.msgs/out/am
c0deb344:	756f 746e 6d00 6773 2f73 6f63 746e 6172     ount.msgs/contra
c0deb354:	7463 5200 7665 6b6f 2065 6f44 7563 656d     ct.Revoke Docume
c0deb364:	746e 4920 7373 6575 7372 6700 6e65 6c74     nt Issuers.gentl
c0deb374:	6d65 6e69 2f74 6544 656c 6574 654c 6576     emint/DeleteLeve
c0deb384:	466c 6565 5300 6e65 2064 6f54 656b 006e     lFee.Send Token.
c0deb394:	7773 7061 412f 7070 6f72 6576 754f 0074     swap/ApproveOut.
c0deb3a4:	7773 7061 412f 7070 6f72 6576 6e49 7300     swap/ApproveIn.s
c0deb3b4:	6177 2f70 7055 6164 6574 7753 7061 6546     wap/UpdateSwapFe
c0deb3c4:	0065 6150 6874 6100 6363 756f 746e 6e5f     e.Path.account_n
c0deb3d4:	6d75 6562 0072 654d 6f6d 6d00 6773 2f73     umber.Memo.msgs/
c0deb3e4:	6176 756c 2f65 6977 6874 7264 7761 615f     value/withdraw_a
c0deb3f4:	6464 6572 7373 6d00 6773 2f73 6564 7473     ddress.msgs/dest
c0deb404:	6441 7264 7365 0073 7753 7061 4120 6f6d     Address.Swap Amo
c0deb414:	6e75 0074 6953 6e67 7461 7275 0065 736d     unt.Signature.ms
c0deb424:	7367 692f 7364 6d00 6773 2f73 6e69 7473     gs/ids.msgs/inst
c0deb434:	6e61 6974 7461 5f65 6570 6d72 7369 6973     antiate_permissi
c0deb444:	6e6f 702f 7265 696d 7373 6f69 006e 736d     on/permission.ms
c0deb454:	7367 6e2f 7765 615f 6d64 6e69 6300 736f     gs/new_admin.cos
c0deb464:	6f6d 2d73 6473 2f6b 734d 4267 6765 6e69     mos-sdk/MsgBegin
c0deb474:	6552 6564 656c 6167 6574 4300 6572 7461     Redelegate.Creat
c0deb484:	2065 754d 746c 7069 656c 4420 636f 6d75     e Multiple Docum
c0deb494:	6e65 7374 7700 7361 2f6d 7453 726f 4365     ents.wasm/StoreC
c0deb4a4:	646f 0065 6177 6d73 432f 656c 7261 6441     ode.wasm/ClearAd
c0deb4b4:	696d 006e 5f68 6572 6976 7765 755f 6470     min.h_review_upd
c0deb4c4:	7461 5f65 6164 6174 2d20 4720 7465 7449     ate_data - GetIt
c0deb4d4:	6d65 3d3d 554e 4c4c 2500 2f64 6425 2500     em==NULL.%d/%d.%
c0deb4e4:	2073 4400 7365 2074 6f43 6e69 0073 736d     s .Dest Coins.ms
c0deb4f4:	7367 762f 6c61 6575 692f 696e 6974 6c61     gs/value/initial
c0deb504:	645f 7065 736f 7469 642f 6e65 6d6f 6d00     _deposit/denom.m
c0deb514:	6773 2f73 6461 7264 7365 0073 736d 7367     sgs/address.msgs
c0deb524:	612f 6464 6572 7373 7365 4f00 6e77 7265     /addresses.Owner
c0deb534:	4120 6464 6572 7373 4200 7461 6863 4449      Address.BatchID
c0deb544:	5000 6f72 6f70 6573 4300 6d6f 6c70 7465     .Propose.Complet
c0deb554:	2065 6f42 6b6f 6e69 0067 6c65 6365 6f74     e Booking.electo
c0deb564:	6172 2f6c 6552 6f76 656b 6f56 6574 0072     ral/RevokeVoter.
c0deb574:	6552 6f76 656b 4120 7070 6f72 6576 0072     Revoke Approver.
c0deb584:	6567 746e 656c 696d 746e 422f 7975 6853     gentlemint/BuySh
c0deb594:	0072 6552 6c70 6361 2065 4449 4f20 6e77     r.Replace ID Own
c0deb5a4:	7265 7300 6177 2f70 6957 6874 7264 7761     er.swap/Withdraw
c0deb5b4:	4900 736e 6174 746e 6169 6574 4320 6e6f     .Instantiate Con
c0deb5c4:	7274 6361 2074 0032 3276 332e 2e35 3732     tract 2.v2.35.27
c0deb5d4:	4500 5252 3f3f 003f                         .ERR???.

c0deb5dc <chainConfig>:
c0deb5dc:	003c 0000 9bdb c0de 0001 0000 003c 0000     <...........<...
c0deb5ec:	9e6f c0de 0001 0000 003c 0000 a2cb c0de     o.......<.......
c0deb5fc:	0001 0000 003c 0000 af16 c0de 0001 0000     ....<...........
c0deb60c:	003c 0000 a38f c0de 0001 0000 003c 0000     <...........<...
c0deb61c:	af1a c0de 0001 0000 003c 0000 a9a3 c0de     ........<.......
c0deb62c:	0001 0000                                   ....

c0deb630 <key_substitutions>:
c0deb630:	9f6c c0de a7b9 c0de b3cb c0de a5de c0de     l...............
c0deb640:	a6e2 c0de 9dc9 c0de aafc c0de b3da c0de     ................
c0deb650:	af1f c0de a569 c0de a6eb c0de a6f3 c0de     ....i...........
c0deb660:	b304 c0de a127 c0de 9dd2 c0de af6f c0de     ....'.......o...
c0deb670:	a438 c0de a200 c0de a7af c0de a5e6 c0de     8...............
c0deb680:	a6c1 c0de a6f7 c0de a7c2 c0de af77 c0de     ............w...
c0deb690:	b312 c0de a131 c0de 9bdf c0de adc8 c0de     ....1...........
c0deb6a0:	aa25 c0de 9c18 c0de b2df c0de b4e7 c0de     %...............
c0deb6b0:	aecd c0de a131 c0de aace c0de adc8 c0de     ....1...........
c0deb6c0:	9c25 c0de 9c18 c0de ac21 c0de b4e7 c0de     %.......!.......
c0deb6d0:	a56d c0de a206 c0de 9c40 c0de a20b c0de     m.......@.......
c0deb6e0:	9d79 c0de a140 c0de b15e c0de b17b c0de     y...@...^...{...
c0deb6f0:	9c56 c0de a147 c0de b3df c0de ac3a c0de     V...G.......:...
c0deb700:	a2d0 c0de acf7 c0de a5eb c0de add5 c0de     ................
c0deb710:	9c73 c0de a20e c0de ad08 c0de a4c1 c0de     s...............
c0deb720:	b4f2 c0de ad2a c0de a01a c0de abaf c0de     ....*...........
c0deb730:	aa3a c0de a6fb c0de ac4b c0de a442 c0de     :.......K...B...
c0deb740:	a448 c0de ad38 c0de b185 c0de a45d c0de     H...8.......]...
c0deb750:	a2f1 c0de a20e c0de aa4e c0de a39b c0de     ........N.......
c0deb760:	a469 c0de a704 c0de b513 c0de adaf c0de     i...............
c0deb770:	ade4 c0de af7e c0de ac5c c0de a140 c0de     ....~...\...@...
c0deb780:	af83 c0de 9f75 c0de ade4 c0de af7e c0de     ....u.......~...
c0deb790:	ab01 c0de aa60 c0de abb8 c0de a569 c0de     ....`.......i...
c0deb7a0:	ab0c c0de 9c8a c0de a824 c0de a8c3 c0de     ........$.......
c0deb7b0:	ad3f c0de a60c c0de a21a c0de 9f7c c0de     ?...........|...
c0deb7c0:	a033 c0de a4d0 c0de a70f c0de 9dde c0de     3...............
c0deb7d0:	9de4 c0de a3a2 c0de a8cf c0de a151 c0de     ............Q...
c0deb7e0:	9f81 c0de a476 c0de adee c0de 9f8f c0de     ....v...........
c0deb7f0:	aee7 c0de ac68 c0de aef1 c0de aa66 c0de     ....h.......f...
c0deb800:	9eb7 c0de a03f c0de a8db c0de ad50 c0de     ....?.......P...
c0deb810:	b520 c0de a7cd c0de a224 c0de a7d7 c0de      .......$.......
c0deb820:	b19c c0de af8f c0de aa6d c0de a3a7 c0de     ........m.......
c0deb830:	af9e c0de a7e6 c0de aa7c c0de b52f c0de     ........|.../...
c0deb840:	b3fb c0de a585 c0de a9a9 c0de a71a c0de     ................
c0deb850:	ab16 c0de b40c c0de 9f96 c0de a9b6 c0de     ................
c0deb860:	9fa8 c0de a158 c0de b1af c0de ac6d c0de     ....X.......m...
c0deb870:	adfa c0de a131 c0de b24e c0de b418 c0de     ....1...N.......
c0deb880:	b422 c0de 9dee c0de 9ec3 c0de b53d c0de     "...........=...
c0deb890:	a302 c0de a30e c0de a237 c0de b326 c0de     ........7...&...
c0deb8a0:	aa8e c0de 9fb8 c0de b1be c0de 9c8f c0de     ................
c0deb8b0:	b339 c0de abc1 c0de b0b1 c0de a245 c0de     9...........E...
c0deb8c0:	a163 c0de a9c8 c0de afa6 c0de b1cd c0de     c...............
c0deb8d0:	a599 c0de 9fc4 c0de 9ca3 c0de afbd c0de     ................
c0deb8e0:	ab29 c0de 9fcd c0de a3b2 c0de b3da c0de     )...............
c0deb8f0:	a315 c0de ad38 c0de b25d c0de 9ed0 c0de     ....8...].......
c0deb900:	b42b c0de 9cb8 c0de a8e6 c0de ad56 c0de     +...........V...
c0deb910:	a257 c0de a47f c0de a4d7 c0de ae0a c0de     W...............
c0deb920:	a7e9 c0de a321 c0de a171 c0de b0c7 c0de     ....!...q.......
c0deb930:	aa9d c0de aefd c0de af05 c0de 9df2 c0de     ................
c0deb940:	a836 c0de 9edf c0de a171 c0de b0c7 c0de     6.......q.......
c0deb950:	9eec c0de a329 c0de ac7e c0de a848 c0de     ....)...~...H...
c0deb960:	b349 c0de a61e c0de b452 c0de a722 c0de     I.......R..."...

c0deb970 <g_pcHex>:
c0deb970:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0deb980 <ascii_substitutions>:
c0deb980:	6107 6208 660c 6e0a 720d 7409 760b 5c5c     .a.b.f.n.r.t.v\\

c0deb990 <g_pcHex_cap>:
c0deb990:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0deb9a0 <value_substitutions>:
c0deb9a0:	a90a c0de 9fd5 c0de 9fda c0de a046 c0de     ............F...
c0deb9b0:	ae10 c0de a4a0 c0de b461 c0de ac8b c0de     ........a.......
c0deb9c0:	a32e c0de b545 c0de ad75 c0de b271 c0de     ....E...u...q...
c0deb9d0:	a9d1 c0de 9ef6 c0de ae29 c0de ac96 c0de     ........).......
c0deb9e0:	a4e2 c0de a72c c0de ab3c c0de a04f c0de     ....,...<...O...
c0deb9f0:	a91d c0de b0cd c0de a5ae c0de a7f6 c0de     ................
c0deba00:	9e05 c0de b279 c0de a854 c0de a866 c0de     ....y...T...f...
c0deba10:	ae50 c0de b286 c0de a627 c0de b54d c0de     P.......'...M...
c0deba20:	9e17 c0de 9efb c0de afc4 c0de b47f c0de     ................
c0deba30:	a935 c0de 9ccf c0de afdd c0de a63f c0de     5...........?...
c0deba40:	ab5d c0de 9cdf c0de b55e c0de a94d c0de     ].......^...M...
c0deba50:	ab73 c0de a803 c0de a27d c0de 9cf0 c0de     s.......}.......
c0deba60:	aff5 c0de b1d3 c0de a064 c0de a64f c0de     ........d...O...
c0deba70:	9d04 c0de a660 c0de a745 c0de b357 c0de     ....`...E...W...
c0deba80:	a3c8 c0de 9e2f c0de ae66 c0de a07e c0de     ..../...f...~...
c0deba90:	ad8b c0de a678 c0de 9e48 c0de b574 c0de     ....x...H...t...
c0debaa0:	b584 c0de a295 c0de a95e c0de b0d8 c0de     ........^.......
c0debab0:	a097 c0de b1e4 c0de b36f c0de 9ff1 c0de     ........o.......
c0debac0:	b295 c0de a50c c0de a688 c0de 9f0b c0de     ................
c0debad0:	a9e4 c0de b00f c0de 9f1d c0de a9f7 c0de     ................
c0debae0:	a3e9 c0de b389 c0de a6a8 c0de a975 c0de     ............u...
c0debaf0:	9e61 c0de b018 c0de ae87 c0de a0ae c0de     a...............
c0debb00:	abce c0de ae94 c0de 9f2d c0de b596 c0de     ........-.......
c0debb10:	a17c c0de abda c0de b394 c0de aca6 c0de     |...............
c0debb20:	b1f2 c0de b271 c0de b5a7 c0de b022 c0de     ....q......."...
c0debb30:	a873 c0de a51b c0de a29d c0de a34b c0de     s...........K...
c0debb40:	a3f9 c0de acb7 c0de a885 c0de a760 c0de     ............`...
c0debb50:	a2af c0de a002 c0de a359 c0de ae9e c0de     ........Y.......
c0debb60:	b3a4 c0de b0ea c0de aa02 c0de acc5 c0de     ................
c0debb70:	b3b3 c0de a2bb c0de a18c c0de b02b c0de     ............+...
c0debb80:	b499 c0de ada4 c0de acd4 c0de a19f c0de     ................
c0debb90:	b03a c0de b5b5 c0de a980 c0de aab7 c0de     :...............
c0debba0:	b2b2 c0de a891 c0de a529 c0de a817 c0de     ........).......
c0debbb0:	b4a8 c0de b1ff c0de                         ........

c0debbb8 <whitespaces>:
c0debbb8:	0c20 0d0a 0b09 0000 6964 6173 6c62 6465      .......disabled
c0debbc8:	0000 0000 4853 574f 4e49 2047 4144 4154     ....SHOWING DATA
c0debbd8:	0000 0000                                   ....

c0debbdc <ux_idle_flow_1_step_val>:
c0debbdc:	9aa4 c0de b2c7 c0de 525c da7a               ........\Rz.

c0debbe8 <ux_idle_flow_1_step>:
c0debbe8:	8589 c0de bbdc c0de 0000 0000 0000 0000     ................

c0debbf8 <ux_idle_flow_2_step_validate_step>:
c0debbf8:	4ecd c0de 0000 0000 0000 0000 0000 0000     .N..............

c0debc08 <ux_idle_flow_2_step_validate>:
c0debc08:	bbf8 c0de ffff ffff                         ........

c0debc10 <ux_idle_flow_2_step_val>:
c0debc10:	a767 c0de 529c da7a                         g....Rz.

c0debc18 <ux_idle_flow_2_step>:
c0debc18:	4ef5 c0de bc10 c0de bc08 c0de 0000 0000     .N..............

c0debc28 <ux_idle_flow_3_step_val>:
c0debc28:	a1b4 c0de b5cc c0de                         ........

c0debc30 <ux_idle_flow_3_step>:
c0debc30:	7f05 c0de bc28 c0de 0000 0000 0000 0000     ....(...........

c0debc40 <ux_review_skip_step_val>:
c0debc40:	b054 c0de a37a c0de                         T...z...

c0debc48 <ux_review_skip_step>:
c0debc48:	4f39 c0de bc40 c0de 0000 0000 0000 0000     9O..@...........

c0debc58 <ux_idle_flow_4_step_val>:
c0debc58:	9d54 c0de b068 c0de                         T...h...

c0debc60 <ux_idle_flow_4_step>:
c0debc60:	7f05 c0de bc58 c0de 0000 0000 0000 0000     ....X...........

c0debc70 <ux_idle_flow_5_step_val>:
c0debc70:	b0fa c0de a5c7 c0de                         ........

c0debc78 <ux_idle_flow_5_step>:
c0debc78:	7f05 c0de bc70 c0de 0000 0000 0000 0000     ....p...........

c0debc88 <ux_idle_flow_6_step_validate_step>:
c0debc88:	4f75 c0de 0000 0000 0000 0000 0000 0000     uO..............

c0debc98 <ux_idle_flow_6_step_validate>:
c0debc98:	bc88 c0de ffff ffff                         ........

c0debca0 <ux_idle_flow_6_step_val>:
c0debca0:	9b04 c0de aeae c0de                         ........

c0debca8 <ux_idle_flow_6_step>:
c0debca8:	8489 c0de bca0 c0de bc98 c0de 0000 0000     ................

c0debcb8 <ux_idle_flow>:
c0debcb8:	bbe8 c0de bc18 c0de bc30 c0de bc60 c0de     ........0...`...
c0debcc8:	bc78 c0de bca8 c0de ffff ffff               x...........

c0debcd4 <ux_error_flow_1_step_val>:
c0debcd4:	525c da7a 529c da7a                         \Rz..Rz.

c0debcdc <ux_error_flow_1_step>:
c0debcdc:	82d5 c0de bcd4 c0de 0000 0000 0000 0000     ................

c0debcec <ux_error_flow_2_step_validate_step>:
c0debcec:	4f7b c0de 0000 0000 0000 0000 0000 0000     {O..............

c0debcfc <ux_error_flow_2_step_validate>:
c0debcfc:	bcec c0de ffff ffff                         ........

c0debd04 <ux_error_flow_2_step_val>:
c0debd04:	9b94 c0de aced c0de                         ........

c0debd0c <ux_error_flow_2_step>:
c0debd0c:	8489 c0de bd04 c0de bcfc c0de 0000 0000     ................

c0debd1c <ux_error_flow>:
c0debd1c:	bcdc c0de bd0c c0de ffff ffff               ............

c0debd28 <ux_custom_error_flow_1_step_val>:
c0debd28:	9bc4 c0de 525c da7a 529c da7a               ....\Rz..Rz.

c0debd34 <ux_custom_error_flow_1_step>:
c0debd34:	8589 c0de bd28 c0de 0000 0000 0000 0000     ....(...........

c0debd44 <ux_custom_error_flow_2_step_validate_step>:
c0debd44:	4f81 c0de 0000 0000 0000 0000 0000 0000     .O..............

c0debd54 <ux_custom_error_flow_2_step_validate>:
c0debd54:	bd44 c0de ffff ffff                         D.......

c0debd5c <ux_custom_error_flow_2_step_val>:
c0debd5c:	9b94 c0de aced c0de                         ........

c0debd64 <ux_custom_error_flow_2_step>:
c0debd64:	8489 c0de bd5c c0de bd54 c0de 0000 0000     ....\...T.......

c0debd74 <ux_custom_error_flow>:
c0debd74:	bd34 c0de bd64 c0de ffff ffff               4...d.......

c0debd80 <ux_review_flow_1_review_title_val>:
c0debd80:	9aa4 c0de ac14 c0de a40b c0de               ............

c0debd8c <ux_review_flow_1_review_title>:
c0debd8c:	8589 c0de bd80 c0de 0000 0000 0000 0000     ................

c0debd9c <ux_review_flow_2_review_title_val>:
c0debd9c:	9aa4 c0de ac14 c0de a40b c0de               ............

c0debda8 <ux_review_flow_2_review_title>:
c0debda8:	8589 c0de bd9c c0de 0000 0000 0000 0000     ................

c0debdb8 <ux_review_flow_3_review_title_val>:
c0debdb8:	9aa4 c0de b072 c0de a995 c0de               ....r.......

c0debdc4 <ux_review_flow_3_review_title>:
c0debdc4:	8589 c0de bdb8 c0de 0000 0000 0000 0000     ................

c0debdd4 <ux_review_flow_4_review_title_val>:
c0debdd4:	9aa4 c0de ac14 c0de a40b c0de               ............

c0debde0 <ux_review_flow_4_review_title>:
c0debde0:	8589 c0de bdd4 c0de 0000 0000 0000 0000     ................

c0debdf0 <ux_review_flow_2_start_step>:
c0debdf0:	4f89 c0de 0000 0000 0000 0000 0000 0000     .O..............

c0debe00 <ux_review_flow_2_step_val>:
c0debe00:	525c da7a 529c da7a                         \Rz..Rz.

c0debe08 <ux_review_flow_2_step>:
c0debe08:	4fc1 c0de be00 c0de 0000 0000 0000 0000     .O..............

c0debe18 <ux_review_flow_2_end_step>:
c0debe18:	4fd1 c0de 0000 0000 0000 0000 0000 0000     .O..............

c0debe28 <ux_review_flow_3_step_validate_step>:
c0debe28:	50e1 c0de 0000 0000 0000 0000 0000 0000     .P..............

c0debe38 <ux_review_flow_3_step_validate>:
c0debe38:	be28 c0de ffff ffff                         (.......

c0debe40 <ux_review_flow_3_step_val>:
c0debe40:	9b94 c0de ab8b c0de                         ........

c0debe48 <ux_review_flow_3_step>:
c0debe48:	8489 c0de be40 c0de be38 c0de 0000 0000     ....@...8.......

c0debe58 <ux_review_flow_4_step_validate_step>:
c0debe58:	50e9 c0de 0000 0000 0000 0000 0000 0000     .P..............

c0debe68 <ux_review_flow_4_step_validate>:
c0debe68:	be58 c0de ffff ffff                         X.......

c0debe70 <ux_review_flow_4_step_val>:
c0debe70:	9ad4 c0de acf0 c0de                         ........

c0debe78 <ux_review_flow_4_step>:
c0debe78:	8489 c0de be70 c0de be68 c0de 0000 0000     ....p...h.......

c0debe88 <ux_review_flow_6_step_validate_step>:
c0debe88:	50f9 c0de 0000 0000 0000 0000 0000 0000     .P..............

c0debe98 <ux_review_flow_6_step_validate>:
c0debe98:	be88 c0de ffff ffff                         ........

c0debea0 <ux_review_flow_6_step_val>:
c0debea0:	9b94 c0de aced c0de                         ........

c0debea8 <ux_review_flow_6_step>:
c0debea8:	8489 c0de bea0 c0de be98 c0de 0000 0000     ................

c0debeb8 <ux_review_flow_5_step_validate_step>:
c0debeb8:	5101 c0de 0000 0000 0000 0000 0000 0000     .Q..............

c0debec8 <ux_review_flow_5_step_validate>:
c0debec8:	beb8 c0de ffff ffff                         ........

c0debed0 <ux_review_flow_5_step_val>:
c0debed0:	9b34 c0de 9d62 c0de                         4...b...

c0debed8 <ux_review_flow_5_step>:
c0debed8:	5111 c0de bed0 c0de bec8 c0de 0000 0000     .Q..............

c0debee8 <bitmapOPEN_SANS_EXTRABOLD_11PX>:
c0debee8:	f3ff 253b 9224 f29f 4897 8824 2cb7 870e     ..;%$....H$..,..
c0debef8:	1fa6 4e02 b1ac 7ec2 637e 358d 3c72 d86c     ...N...~~c.5r<l.
c0debf08:	e0e0 9eed df3d b417 cdb7 d926 7b6c 4c0b     ....=.....&.l{.L
c0debf18:	7bfb 0c1e 33f3 d60c 0fff 3118 8c66 de18     .{...3.....1f...
c0debf28:	cf3c 3cf3 ec7b cccf 6ecc cc63 f99c 630f     <..<{....nc....c
c0debf38:	3187 187e 69c7 8fda 3f61 ccf3 9cfc 7c21     .1~..i..a?....!|
c0debf48:	3cf3 1f7b cc63 3318 3cde f37b 7b3c 3cde     .<{.c..3.<{.<{.<
c0debf58:	3ecf 398c 0f0f 6036 980d 6199 0618 f03f     .>.9..6`...a..?.
c0debf68:	c303 cc30 0fcc 6763 3180 30f8 f766 4bd6     ..0...cg.1.0f..K
c0debf78:	bdaf 019f 01f8 3c18 7e3c 7e66 c3e7 ef7f     .......<<~f~....
c0debf88:	f7b7 7efe 318c f0c6 3cdf f3cf 7f3c f33f     ...~.1...<..<.?.
c0debf98:	f333 8c7f c637 fe18 ec30 3cf3 f3fb ff3c     3...7...0..<..<.
c0debfa8:	3cf3 ffcf ccff cccc cccc f307 e6d9 d9f1     .<..............
c0debfb8:	e6cc 8c63 c631 c7f8 bf8f ff7f f57e ddee     ..c.1.......~...
c0debfc8:	f3e7 bdfb cfdf bee7 78f1 1e3c 7d8f ef7f     .........x<..}..
c0debfd8:	c7fd be18 78f1 1e3c 7d8f 3030 b6cf cf6d     .....x<..}00..m.
c0debfe8:	cdb6 8c7e 38e3 3f7f 30c3 c30c f330 cf3c     ..~..8.?.0..0.<.
c0debff8:	3cf3 f37b cf3c e79e 7331 9bb6 acdd 3566     .<{.<...1s....f5
c0dec008:	70ee 1b07 66c3 3c3c 3c3c c366 9b63 838d     .p...f<<<<f.c...
c0dec018:	60c1 7f30 0e18 70c3 fe18 333f 3333 43f3     .`0....p..?333.C
c0dec028:	c318 c218 cccf cccc 0cfc 49e3 3f33 1e33     ...........I3?3.
c0dec038:	cfec 0fb3 f0c3 fb6d 7dbe 71bc 061c 300f     ......m..}.q...0
c0dec048:	dbcc 6df7 3cf3 fff3 e060 dc01 637c 318c     ...m.<..`...|c.1
c0dec058:	9b7e 63cd 8df0 3ec7 fc63 f7bd f3de 0cff     ~..c...>c.......
c0dec068:	cccc cccc c307 7db0 b3cf ffed edff dbdb     .......}........
c0dec078:	dbdb 7ddb bdef 1c37 fddb e36e b6df dbef     ...}..7...n.....
c0dec088:	0c37 be03 df7d 0fb6 30c3 33fd 6f33 8f3c     7...}....0.33o<.
c0dec098:	e61f 631b 070c ef7b 2fbd 9b63 c6cd 33e1     ...c..{../c....3
c0dec0a8:	e6db 7f9f 30cc 7703 871b bb63 6303 8d9b     .....0.w..c..c..
c0dec0b8:	e1c6 1870 3f0e 30c6 0fc6 319c 0e76 8c63     ..p..?.0...1v.c.
c0dec0c8:	ff03 3fff 18c7 b9c3 e631 0f6f               ...?....1.o.

c0dec0d4 <charactersOPEN_SANS_EXTRABOLD_11PX>:
c0dec0d4:	c000 0000 c000 0088 8008 0089 c010 0081     ................
c0dec0e4:	802c 0001 c04c 1082 4074 0082 c098 0088     ,...L...t@......
c0dec0f4:	009c 1081 00ac 0089 80bc 0081 80cc 0101     ................
c0dec104:	c0dc 0380 00e0 0281 c0e4 0388 40e8 0081     .............@..
c0dec114:	00fc 108a 8114 1089 c124 1089 c138 1089     ........$...8...
c0dec124:	014c 108a 8164 1089 0174 108a c18c 1089     L...d...t.......
c0dec134:	01a0 108a 01b8 108a c1d0 0188 c1d8 0180     ................
c0dec144:	41e4 0101 81f8 0201 4204 0101 8214 1081     .A.......B......
c0dec154:	8228 0082 0258 0082 c278 1089 c28c 1089     (...X...x.......
c0dec164:	02a0 108a 82b8 1089 82c8 0089 02dc 108a     ................
c0dec174:	02f4 108a 030c 1089 4314 1081 032c 008a     .........C..,...
c0dec184:	8348 0089 c35c 108a 4380 108a 439c 108a     H...\....C...C..
c0dec194:	c3b8 1089 43cc 108a 03f0 108a 8408 0089     .....C..........
c0dec1a4:	841c 0081 0434 108a 844c 0081 c464 0082     ....4...L...d...
c0dec1b4:	0490 0082 c4b0 0081 c4cc 0081 44e8 0089     .............D..
c0dec1c4:	44fc 0081 4510 1081 c524 1081 c534 1501     .D...E..$...4...
c0dec1d4:	c538 2011 c53c 1181 c550 0089 8568 0181     8.. <...P...h...
c0dec1e4:	c57c 1081 c594 0181 85ac 1081 c5c0 0181     |...............
c0dec1f4:	c5e0 1089 05f4 1089 45fc 1081 c614 0089     .........E......
c0dec204:	062c 1089 8634 118a c64c 1189 c65c 0181     ,...4...L...\...
c0dec214:	c670 0189 c68c 1181 46a8 0189 86b4 0189     p........F......
c0dec224:	46c4 0101 c6d8 1189 c6e8 0181 86fc 0182     .F..............
c0dec234:	c71c 0181 0734 1182 8754 0181 4768 0081     ....4...T...hG..
c0dec244:	8784 2091 4790 0081 87a8 0201               ... .G......

c0dec250 <fontOPEN_SANS_EXTRABOLD_11PX>:
c0dec250:	01ec 0108 090c 7e20 c0d4 c0de bee8 c0de     ...... ~........

c0dec260 <bitmapOPEN_SANS_LIGHT_16PX>:
c0dec260:	0cff 9999 4090 0882 fe22 8123 7fc4 1044     .....@..".#...D.
c0dec270:	0241 0809 229e 5091 7070 6448 83ca 4906     A....".PppHd...I
c0dec280:	2244 9092 9484 1299 9092 2444 0922 1c06     D"........D$"...
c0dec290:	8844 4110 8181 90c4 0341 f30d 0f09 555a     D..A....A.....ZU
c0dec2a0:	2955 aaa5 16aa 0408 4fe2 88a1 0408 8fe2     U).......O......
c0dec2b0:	2040 076a 100f 4421 2108 8842 511c 1830     @ j...!D.!B..Q0.
c0dec2c0:	060c c183 88a0 7403 9249 0924 109e 0408     .......tI.$.....
c0dec2d0:	4102 0410 e041 9e0f 1010 f304 8080 2040     .A..A.........@ 
c0dec2e0:	03e8 c040 4140 8482 1088 ff21 0081 0201     ..@.@A....!.....
c0dec2f0:	813e 1040 80f8 4081 c860 3803 2083 e810     >.@....@`..8. ..
c0dec300:	830d a0c1 0790 207f 0408 4082 0810 8104     ....... ...@....
c0dec310:	511c 2830 88e2 c182 d060 9e07 3050 0c18     .Q0(....`...P0..
c0dec320:	817b 1040 01cc c00f 0f03 0540 1840 c063     {.@.......@.@.c.
c0dec330:	0180 7f01 e000 010f 0603 318c 0f04 0842     ...........1..B.
c0dec340:	1111 0802 f001 20c1 2402 119e 9099 9909     ....... .$......
c0dec350:	8990 7719 2001 0400 0f80 c030 0300 4812     ...w. ....0....H
c0dec360:	4120 3f08 0902 5024 9f80 3050 fa18 8284      A.?..$P..P0....
c0dec370:	60c1 03e8 04f8 0102 0101 0101 0201 f804     .`..............
c0dec380:	211f 8141 8181 8181 4181 1f21 107f c104     .!A......A!.....
c0dec390:	041f 1041 7ffc 0410 f041 4107 0410 11f8     ..A.....A..A....
c0dec3a0:	4020 0100 1004 807e 0a01 2048 817e 8181      @....~...H ~...
c0dec3b0:	8181 81ff 8181 8181 ff81 240f 9249 4924     ...........$I.$I
c0dec3c0:	c10e 2450 1851 1214 4891 0828 1041 4104     ..P$Q....H(.A..A
c0dec3d0:	0410 1041 01fc 3c06 c0f0 1685 685a 4992     ..A....<....Zh.I
c0dec3e0:	18c6 8063 8381 8583 8985 9191 c1a1 81c1     ..c.............
c0dec3f0:	1078 5022 0180 1806 8060 0a01 0844 5f1e     x."P....`...D.._
c0dec400:	8618 f861 4105 0410 1078 5022 0180 1806     ..a..A..x."P....
c0dec410:	8060 0a01 0844 401e 0200 9f18 3050 0c18     `...D..@....P0..
c0dec420:	227d 5091 0830 60be 1020 c070 4080 f020     }".P0..` .p..@ .
c0dec430:	7f07 0204 4081 1020 0408 0102 8181 8181     .....@ .........
c0dec440:	8181 8181 8181 3c42 0301 120a 8824 1108     ......B<....$...
c0dec450:	2822 4050 c180 30a0 0c24 4489 1122 4249     "(P@...0$..D".IB
c0dec460:	5092 1428 860a 6181 1020 0482 4111 0282     .P(....a ....A..
c0dec470:	0a02 4414 0888 080a 4281 2442 1824 1018     ...D.....BB$$...
c0dec480:	1010 1010 207f 0408 2041 0208 e041 1f0f     ..... ..A ..A...
c0dec490:	1111 1111 1111 410f 4108 2108 2108 8f08     .......A.A.!.!..
c0dec4a0:	8888 8888 8888 080f 450a 0a24 0106 117f     .........E$.....
c0dec4b0:	1e01 8208 187e 2ec6 0101 0101 433d 8181     ....~.......=C..
c0dec4c0:	8181 4381 bc3d 0410 1041 3c08 8080 8080     ...C=...A..<....
c0dec4d0:	c2bc 8181 8181 c281 1cbc 3051 0ff8 8404     ..........Q0....
c0dec4e0:	383c 1041 411f 0410 1041 fc04 4222 2242     <8A..A..A..."BB"
c0dec4f0:	043c 7c02 8142 3e43 4081 d020 0519 c183     <..|B.C>.@ .....
c0dec500:	3060 0418 07f9 4804 2492 1e49 4081 1020     `0.....H.$I..@ .
c0dec510:	248a 850a 2445 0414 1fff 339d 4146 8418     .$..E$.....3FA..
c0dec520:	1841 4184 8418 0841 519d 1830 060c 4183     A..A..A..Q0....A
c0dec530:	511c 1830 060c 1c45 433d 8181 8181 4381     .Q0...E.=C.....C
c0dec540:	013d 0101 bc01 81c2 8181 8181 bcc2 8080     =...............
c0dec550:	8080 847d 4210 0108 843e 20c1 0f84 09e2     ..}..B..>.. ....
c0dec560:	8421 8210 c103 3060 0c18 c506 c15e 48a0     !.....`0....^..H
c0dec570:	a224 2850 6108 4628 2462 9249 2944 830c     $.P(.a(Fb$I.D)..
c0dec580:	0810 6101 3128 230c 2185 a0c1 2448 50a2     ...a(1.#.!..H$.P
c0dec590:	0828 8104 1f30 4422 0884 981f 4210 1908     (...0."D.....B..
c0dec5a0:	1084 0842 ff06 01ff 1043 0842 84c1 4210     ..B.....C.B....B
c0dec5b0:	07c4 003c                                   ..<.

c0dec5b4 <charactersOPEN_SANS_LIGHT_16PX>:
c0dec5b4:	0000 0001 c000 1088 8008 1089 8010 0082     ................
c0dec5c4:	404c 108a 4078 108b c0bc 108a c0f4 1088     L@..x@..........
c0dec5d4:	00f8 1089 0108 1089 4118 100a 4130 110a     .........A..0A..
c0dec5e4:	c148 1580 414c 1409 0150 1589 8154 1081     H...LA..P...T...
c0dec5f4:	4170 108a 419c 4092 41b0 108a 41dc 108a     pA...A.@.A...A..
c0dec604:	4208 0082 4240 108a 426c 108a 4298 108a     .B..@B..lB...B..
c0dec614:	42c0 108a 42ec 108a 0318 1209 0324 1209     .B...B......$...
c0dec624:	4330 118a 434c 128a 435c 118a c374 1089     0C..LC..\C..t...
c0dec634:	8394 108b 83e8 0082 8424 1092 8450 108a     ........$...P...
c0dec644:	c480 1092 44b0 1092 04d4 0092 04f8 108b     .....D..........
c0dec654:	0534 2093 0564 1091 856c 3081 4584 0092     4.. d...l..0.E..
c0dec664:	05b0 0092 85d4 2093 0610 2093 0640 108b     ....... ... @...
c0dec674:	467c 1092 06a0 108b 86ec 1092 4718 108a     |F...........G..
c0dec684:	c744 0081 0770 2093 87a0 1082 87d4 0083     D...p.. ........
c0dec694:	4828 0082 4860 1082 4890 108a 48bc 0089     (H..`H...H...H..
c0dec6a4:	88dc 1081 48fc 1081 491c 108a 0938 1702     .....H...I..8...
c0dec6b4:	493c 301a 0944 120a 8960 100a 0994 120a     <I.0D...`.......
c0dec6c4:	89b0 100a 49e4 120a 8a04 0001 0a2c 0202     .....I......,...
c0dec6d4:	4a60 100a 0a90 2109 4a98 2101 0ab0 000a     `J.....!.J.!....
c0dec6e4:	0ae0 2009 8ae8 120b 4b20 120a 4b40 120a     ... .... K..@K..
c0dec6f4:	8b60 120a 8b94 120a 8bc8 0209 cbe0 1209     `...............
c0dec704:	4bf8 0181 4c14 120a 0c34 1202 0c54 0203     .K...L..4...T...
c0dec714:	0c8c 120a 0ca8 1202 ccd4 1209 8cec 1081     ................
c0dec724:	8d14 4009 8d20 0089 4d44 130a               ...@ ...DM..

c0dec730 <fontOPEN_SANS_LIGHT_16PX>:
c0dec730:	0353 0109 0d11 7e20 c5b4 c0de c260 c0de     S..... ~....`...

c0dec740 <bitmapOPEN_SANS_REGULAR_11PX>:
c0dec740:	0fbf 9220 429f 49f9 5f04 cc65 a30f a54a     .. ..B.I._e...J.
c0dec750:	a5bd c552 924e 6518 bd1a 6a03 0a95 6a95     ..R.N..e...j...j
c0dec760:	0405 33f1 c812 1a8f 0103 4448 1222 9996     ...3......HD"...
c0dec770:	6999 492e 8792 2488 87f1 8868 1078 4946     .i.I...$..h.x.FI
c0dec780:	0fd2 1f41 88f1 1e78 99f1 8f69 2448 9622     ..A...x...i.H$".
c0dec790:	9969 9669 8f99 2178 6802 3348 0f84 210f     i.i...x!.hH3...!
c0dec7a0:	12cc 4887 2022 827c a5b9 a5a5 01fd 083e     ...H" |.......>.
c0dec7b0:	850a f222 8289 c63f 6317 7efc 1084 f0c2     .."...?..c.~....
c0dec7c0:	185f 6186 7e18 f11f f111 843f 43f0 7e08     _..a.~....?..C.~
c0dec7d0:	0410 1871 61fa fe18 1861 ff86 4924 1c92     ..q..a..a...$I..
c0dec7e0:	5251 450c 8512 8421 4210 c3f8 c3c3 a5a5     QR.E..!..B......
c0dec7f0:	9999 e199 9658 1a69 be87 3060 0c18 7d06     ....X.i...`0...}
c0dec800:	c62f 42f8 be08 3060 0c18 7d06 1010 c62f     /..B..`0...}../.
c0dec810:	52f8 1e8c 8c31 9f78 4210 2108 1861 6186     .R..1.x..B.!a..a
c0dec820:	7a18 9141 4448 50a1 3110 24ca 5293 294a     .zA.HD.P.1.$.RJ)
c0dec830:	0845 a121 30c4 248c a185 3124 8208 8f20     E.!..0.$..$1.. .
c0dec840:	1244 4ff1 2492 2139 4422 2784 9249 0c3c     D..O.$9!"D.'I.<.
c0dec850:	4923 1f21 8f09 f99f bc21 6318 1e7c e111     #I!.....!..c|...
c0dec860:	fa10 6318 9ef4 e11f 2f2c 2222 24be 8239     ...c....,/"".$9.
c0dec870:	8617 211e 18bc 8c63 04fd 9249 01e4 5911     ...!..c...I....Y
c0dec880:	9953 efff 9191 9191 2f91 18c6 2e23 18c6     S......../..#...
c0dec890:	2f1d 18c6 085f 3e01 18c6 843d 4f10 1792     ./.._..>..=..O..
c0dec8a0:	7843 22f2 0e22 c631 3f18 24a1 0c49 1103     Cx."".1..?.$I...
c0dec8b0:	a955 4552 0884 6699 a199 4924 430c 0310     U.RE...f..$I.C..
c0dec8c0:	111f 3e22 9496 3248 07ff 4493 1a4a 00c3     ..">..H2...DJ...

c0dec8d0 <charactersOPEN_SANS_REGULAR_11PX>:
c0dec8d0:	c000 0000 c000 1088 0004 1089 c008 0081     ................
c0dec8e0:	8024 1109 4034 108a 4050 208a 8068 0088     $...4@..P@. h...
c0dec8f0:	c06c 1080 c078 0088 8084 0081 8094 0201     l...x...........
c0dec900:	c09c 1400 00a0 1309 c0a4 1408 00a8 0081     ................
c0dec910:	80b8 1089 80c8 2089 80d4 1089 80e4 1089     ....... ........
c0dec920:	00f4 108a 810c 1089 811c 1089 812c 1089     ............,...
c0dec930:	813c 1089 814c 1089 c15c 1188 c160 1180     <...L...\...`...
c0dec940:	8168 1109 8174 1209 817c 1109 4188 0089     h...t...|....A..
c0dec950:	8198 108a c1bc 0081 c1d8 1089 c1ec 1089     ................
c0dec960:	0200 108a 8218 1089 8228 0089 023c 108a     ........(...<...
c0dec970:	0254 108a c26c 1088 0270 1081 c280 0089     T...l...p.......
c0dec980:	8298 0089 82ac 108a 02cc 108a 42e4 108a     .............B..
c0dec990:	c300 1089 4314 108a c338 1089 834c 1089     .....C..8...L...
c0dec9a0:	c35c 1089 0370 108a c388 0081 83a4 0082     \...p...........
c0dec9b0:	c3cc 1081 83e4 0081 83fc 1089 040c 0089     ................
c0dec9c0:	041c 0081 042c 1081 843c 0081 844c 1501     ....,...<...L...
c0dec9d0:	8450 2011 8454 1189 c460 1089 4474 0189     P.. T...`...tD..
c0dec9e0:	c480 1089 8494 1189 44a0 1081 84b0 0181     .........D......
c0dec9f0:	c4cc 1089 c4e0 1088 04e4 1081 84f8 1089     ................
c0deca00:	c508 1088 850c 118a c524 1189 c534 1189     ........$...4...
c0deca10:	c544 1189 c55c 1189 0574 0189 457c 0189     D...\...t...|E..
c0deca20:	0588 0101 c598 1189 85a8 0181 45bc 0182     .............E..
c0deca30:	85d8 1189 85e4 0181 4600 0181 0610 0089     .........F......
c0deca40:	8620 2099 0628 1081 8638 1209                .. (...8...

c0deca4c <fontOPEN_SANS_REGULAR_11PX>:
c0deca4c:	018f 010a 090c 7e20 c8d0 c0de c740 c0de     ...... ~....@...

c0deca5c <C_bagl_fonts>:
c0deca5c:	c250 c0de c730 c0de ca4c c0de               P...0...L...

c0deca68 <C_bagl_fonts_count>:
c0deca68:	0003 0000                                   ....

c0deca6c <USBD_HID_Desc>:
c0deca6c:	2109 0111 0100 2222                          .!...."".

c0deca75 <HID_ReportDesc>:
c0deca75:	a006 09ff a101 0901 1503 2600 00ff 0875     ...........&..u.
c0deca85:	4095 0881 0409 0015 ff26 7500 9508 9140     .@......&..u..@.
c0deca95:	c008                                        ..

c0deca97 <C_usb_bos>:
c0deca97:	0f05 0039 1802 0510 3800 08b6 a934 a009     ..9......8..4...
c0decaa7:	8b47 a0fd 8876 b615 0065 1e01 1c00 0510     G...v...e.......
c0decab7:	df00 dd60 89d8 c745 9c4c 65d2 9e9d 8a64     ..`...E.L..e..d.
c0decac7:	009f 0300 b206 7700                          .......w.

c0decad0 <HID_Desc>:
c0decad0:	7821 c0de 7831 c0de 7841 c0de 7851 c0de     !x..1x..Ax..Qx..
c0decae0:	7861 c0de 7871 c0de 7881 c0de 7891 c0de     ax..qx...x...x..

c0decaf0 <C_winusb_string_descriptor>:
c0decaf0:	0312 004d 0053 0046 0054 0031 0030 0030     ..M.S.F.T.1.0.0.
c0decb00:	0077                                        w.

c0decb02 <C_winusb_guid>:
c0decb02:	0092 0000 0100 0005 0001 0088 0000 0007     ................
c0decb12:	0000 002a 0044 0065 0076 0069 0063 0065     ..*.D.e.v.i.c.e.
c0decb22:	0049 006e 0074 0065 0072 0066 0061 0063     I.n.t.e.r.f.a.c.
c0decb32:	0065 0047 0055 0049 0044 0073 0000 0050     e.G.U.I.D.s...P.
c0decb42:	0000 007b 0031 0033 0064 0036 0033 0034     ..{.1.3.d.6.3.4.
c0decb52:	0030 0030 002d 0032 0043 0039 0037 002d     0.0.-.2.C.9.7.-.
c0decb62:	0030 0030 0030 0034 002d 0030 0030 0030     0.0.0.4.-.0.0.0.
c0decb72:	0030 002d 0034 0063 0036 0035 0036 0034     0.-.4.c.6.5.6.4.
c0decb82:	0036 0037 0036 0035 0037 0032 007d 0000     6.7.6.5.7.2.}...
	...

c0decb94 <C_winusb_request_descriptor>:
c0decb94:	000a 0000 0000 0603 00b2 0008 0001 0000     ................
c0decba4:	00a8 0008 0002 0001 00a0 0014 0003 4957     ..............WI
c0decbb4:	554e 4253 0000 0000 0000 0000 0000 0084     NUSB............
c0decbc4:	0004 0007 002a 0044 0065 0076 0069 0063     ....*.D.e.v.i.c.
c0decbd4:	0065 0049 006e 0074 0065 0072 0066 0061     e.I.n.t.e.r.f.a.
c0decbe4:	0063 0065 0047 0055 0049 0044 0073 0000     c.e.G.U.I.D.s...
c0decbf4:	0050 007b 0043 0045 0038 0030 0039 0032     P.{.C.E.8.0.9.2.
c0decc04:	0036 0034 002d 0034 0042 0032 0034 002d     6.4.-.4.B.2.4.-.
c0decc14:	0034 0045 0038 0031 002d 0041 0038 0042     4.E.8.1.-.A.8.B.
c0decc24:	0032 002d 0035 0037 0045 0044 0030 0031     2.-.5.7.E.D.0.1.
c0decc34:	0044 0035 0038 0030 0045 0031 007d 0000     D.5.8.0.E.1.}...
c0decc44:	0000 0000                                   ....

c0decc48 <USBD_HID>:
c0decc48:	6be5 c0de 6c0d c0de 6b4d c0de 0000 0000     .k...l..Mk......
c0decc58:	0000 0000 7701 c0de 771d c0de 0000 0000     .....w...w......
	...
c0decc70:	79ad c0de 79ad c0de 79ad c0de 79bd c0de     .y...y...y...y..

c0decc80 <USBD_WEBUSB>:
c0decc80:	7779 c0de 77a1 c0de 77a5 c0de 0000 0000     yw...w...w......
c0decc90:	0000 0000 77a9 c0de 77c5 c0de 0000 0000     .....w...w......
	...
c0decca8:	79ad c0de 79ad c0de 79ad c0de 79bd c0de     .y...y...y...y..

c0deccb8 <USBD_DeviceDesc>:
c0deccb8:	0112 0210 0000 4000 2c97 5000 0201 0201     .......@.,.P....
c0deccc8:	0103                                        ..

c0deccca <USBD_LangIDDesc>:
c0deccca:	0304 0409                                   ....

c0deccce <USBD_MANUFACTURER_STRING>:
c0deccce:	030e 004c 0065 0064 0067 0065 0072          ..L.e.d.g.e.r.

c0deccdc <USBD_PRODUCT_FS_STRING>:
c0deccdc:	0318 004e 0061 006e 006f 0020 0053 0020     ..N.a.n.o. .S. .
c0deccec:	0050 006c 0075 0073                         P.l.u.s.

c0deccf4 <USB_SERIAL_STRING>:
c0deccf4:	030a 0030 0030 0030 0031                    ..0.0.0.1.

c0deccfe <C_winusb_wcid>:
c0deccfe:	0028 0000 0100 0004 0001 0000 0000 0000     (...............
c0decd0e:	0101 4957 554e 4253 0000 0000 0000 0000     ..WINUSB........
	...

c0decd28 <USBD_CfgDesc>:
c0decd28:	0209 0040 0102 c002 0932 0004 0200 0003     ..@.....2.......
c0decd38:	0200 2109 0111 0100 2222 0700 8205 4003     ...!...."".....@
c0decd48:	0100 0507 0302 0040 0901 0104 0200 ffff     ......@.........
c0decd58:	02ff 0507 0383 0040 0701 0305 4003 0100     ......@......@..

c0decd68 <USBD_DeviceQualifierDesc>:
c0decd68:	060a 0200 0000 4000 0001 0000               .......@....

c0decd74 <ux_layout_bb_elements>:
c0decd74:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0decd84:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0decd94:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0decda4:	ffff 00ff 0000 0000 0000 0000 9b4c c0de     ............L...
c0decdb4:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0decdc4:	ffff 00ff 0000 0000 0000 0000 9b64 c0de     ............d...
c0decdd4:	1007 0006 001d 0074 0020 0000 0000 0000     ......t. .......
c0decde4:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0decdf4:	1107 0006 002b 0074 0020 0000 0000 0000     ....+.t. .......
c0dece04:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0dece14 <ux_layout_paging_elements>:
c0dece14:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0dece24:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0dece34:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0dece44:	ffff 00ff 0000 0000 0000 0000 9b4c c0de     ............L...
c0dece54:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0dece64:	ffff 00ff 0000 0000 0000 0000 9b64 c0de     ............d...
c0dece74:	1007 0000 000f 0080 000c 0000 0000 0000     ................
c0dece84:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0dece94:	1107 0007 001d 0072 000c 0000 0000 0000     ......r.........
c0decea4:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0deceb4:	1207 0007 002b 0072 000c 0000 0000 0000     ....+.r.........
c0decec4:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0deced4:	1307 0007 0039 0072 000c 0000 0000 0000     ....9.r.........
c0decee4:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................

c0decef4 <ux_layout_pb_elements>:
c0decef4:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0decf04:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0decf14:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0decf24:	ffff 00ff 0000 0000 0000 0000 9b4c c0de     ............L...
c0decf34:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0decf44:	ffff 00ff 0000 0000 0000 0000 9b64 c0de     ............d...
c0decf54:	1005 0039 0011 000e 000e 0000 0000 0000     ..9.............
c0decf64:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0decf74:	1107 0000 002c 0080 0020 0000 0000 0000     ....,... .......
c0decf84:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0decf94 <ux_layout_pbb_elements>:
c0decf94:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0decfa4:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0decfb4:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0decfc4:	ffff 00ff 0000 0000 0000 0000 9b4c c0de     ............L...
c0decfd4:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0decfe4:	ffff 00ff 0000 0000 0000 0000 9b64 c0de     ............d...
c0decff4:	0f05 0039 000a 000e 000e 0000 0000 0000     ..9.............
c0ded004:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0ded014:	1007 0006 0025 0074 0020 0000 0000 0000     ....%.t. .......
c0ded024:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0ded034:	1107 0006 0033 0074 0020 0000 0000 0000     ....3.t. .......
c0ded044:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0ded054 <seph_io_general_status>:
c0ded054:	0060 0002                                    `....

c0ded059 <seph_io_se_reset>:
c0ded059:	0046                                         F..

c0ded05c <_etext>:
	...

c0ded200 <N_appdata_impl>:
	...

c0df1200 <N_appmode_impl>:
	...

c0df1400 <install_parameters>:
c0df1400:	0b01 6853 7261 6c65 6465 6567 0272 3207     ..Shareledger..2
c0df1410:	332e 2e35 3732 2103 000e 000e 1900 0000     .35.27.!........
c0df1420:	0000 0300 0f78 1cf0 f9e0 73c3 ec0c f039     ....x......s..9.
c0df1430:	8073 01ff 00ec 0000 0400 0113 8002 0000     s...............
c0df1440:	802c 0000 0276 0080 2c00 0080 3c00          ,...v....,...<
