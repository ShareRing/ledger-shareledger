
build/nanos/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0d00000 <main>:
c0d00000:	b510      	push	{r4, lr}
c0d00002:	b08c      	sub	sp, #48	; 0x30
c0d00004:	b662      	cpsie	i
c0d00006:	f003 fcb9 	bl	c0d0397c <view_init>
c0d0000a:	f006 f84f 	bl	c0d060ac <os_boot>
c0d0000e:	466c      	mov	r4, sp
c0d00010:	4620      	mov	r0, r4
c0d00012:	f007 f959 	bl	c0d072c8 <setjmp>
c0d00016:	85a0      	strh	r0, [r4, #44]	; 0x2c
c0d00018:	0400      	lsls	r0, r0, #16
c0d0001a:	d006      	beq.n	c0d0002a <main+0x2a>
c0d0001c:	4668      	mov	r0, sp
c0d0001e:	2100      	movs	r1, #0
c0d00020:	8581      	strh	r1, [r0, #44]	; 0x2c
c0d00022:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00024:	f006 ff90 	bl	c0d06f48 <try_context_set>
c0d00028:	e007      	b.n	c0d0003a <main+0x3a>
c0d0002a:	4668      	mov	r0, sp
c0d0002c:	f006 ff8c 	bl	c0d06f48 <try_context_set>
c0d00030:	900a      	str	r0, [sp, #40]	; 0x28
c0d00032:	f003 fc03 	bl	c0d0383c <app_init>
c0d00036:	f003 fc15 	bl	c0d03864 <app_main>
c0d0003a:	f006 ff7b 	bl	c0d06f34 <try_context_get>
c0d0003e:	4669      	mov	r1, sp
c0d00040:	4288      	cmp	r0, r1
c0d00042:	d102      	bne.n	c0d0004a <main+0x4a>
c0d00044:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00046:	f006 ff7f 	bl	c0d06f48 <try_context_set>
c0d0004a:	4668      	mov	r0, sp
c0d0004c:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d0004e:	2800      	cmp	r0, #0
c0d00050:	d102      	bne.n	c0d00058 <main+0x58>
c0d00052:	2000      	movs	r0, #0
c0d00054:	b00c      	add	sp, #48	; 0x30
c0d00056:	bd10      	pop	{r4, pc}
c0d00058:	f006 f82d 	bl	c0d060b6 <os_longjmp>

c0d0005c <addr_getNumItems>:
c0d0005c:	b510      	push	{r4, lr}
c0d0005e:	4604      	mov	r4, r0
c0d00060:	4809      	ldr	r0, [pc, #36]	; (c0d00088 <addr_getNumItems+0x2c>)
c0d00062:	4478      	add	r0, pc
c0d00064:	f004 fe30 	bl	c0d04cc8 <zemu_log_stack>
c0d00068:	2001      	movs	r0, #1
c0d0006a:	7020      	strb	r0, [r4, #0]
c0d0006c:	f004 fbd6 	bl	c0d0481c <app_mode_expert>
c0d00070:	2800      	cmp	r0, #0
c0d00072:	d103      	bne.n	c0d0007c <addr_getNumItems+0x20>
c0d00074:	4803      	ldr	r0, [pc, #12]	; (c0d00084 <addr_getNumItems+0x28>)
c0d00076:	7800      	ldrb	r0, [r0, #0]
c0d00078:	2800      	cmp	r0, #0
c0d0007a:	d001      	beq.n	c0d00080 <addr_getNumItems+0x24>
c0d0007c:	2002      	movs	r0, #2
c0d0007e:	7020      	strb	r0, [r4, #0]
c0d00080:	2003      	movs	r0, #3
c0d00082:	bd10      	pop	{r4, pc}
c0d00084:	20000554 	.word	0x20000554
c0d00088:	00007a2a 	.word	0x00007a2a

c0d0008c <addr_getItem>:
c0d0008c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0008e:	b0d1      	sub	sp, #324	; 0x144
c0d00090:	9302      	str	r3, [sp, #8]
c0d00092:	4617      	mov	r7, r2
c0d00094:	460c      	mov	r4, r1
c0d00096:	2605      	movs	r6, #5
c0d00098:	9958      	ldr	r1, [sp, #352]	; 0x160
c0d0009a:	9103      	str	r1, [sp, #12]
c0d0009c:	9957      	ldr	r1, [sp, #348]	; 0x15c
c0d0009e:	9100      	str	r1, [sp, #0]
c0d000a0:	9956      	ldr	r1, [sp, #344]	; 0x158
c0d000a2:	9101      	str	r1, [sp, #4]
c0d000a4:	2801      	cmp	r0, #1
c0d000a6:	d03d      	beq.n	c0d00124 <addr_getItem+0x98>
c0d000a8:	2800      	cmp	r0, #0
c0d000aa:	d000      	beq.n	c0d000ae <addr_getItem+0x22>
c0d000ac:	e0df      	b.n	c0d0026e <addr_getItem+0x1e2>
c0d000ae:	4a75      	ldr	r2, [pc, #468]	; (c0d00284 <addr_getItem+0x1f8>)
c0d000b0:	447a      	add	r2, pc
c0d000b2:	4620      	mov	r0, r4
c0d000b4:	4639      	mov	r1, r7
c0d000b6:	f006 fcab 	bl	c0d06a10 <snprintf>
c0d000ba:	4871      	ldr	r0, [pc, #452]	; (c0d00280 <addr_getItem+0x1f4>)
c0d000bc:	3021      	adds	r0, #33	; 0x21
c0d000be:	f007 f961 	bl	c0d07384 <strlen>
c0d000c2:	4604      	mov	r4, r0
c0d000c4:	9802      	ldr	r0, [sp, #8]
c0d000c6:	9d01      	ldr	r5, [sp, #4]
c0d000c8:	4629      	mov	r1, r5
c0d000ca:	f006 ffd9 	bl	c0d07080 <explicit_bzero>
c0d000ce:	2000      	movs	r0, #0
c0d000d0:	9903      	ldr	r1, [sp, #12]
c0d000d2:	7008      	strb	r0, [r1, #0]
c0d000d4:	1e6f      	subs	r7, r5, #1
c0d000d6:	b2bd      	uxth	r5, r7
c0d000d8:	2603      	movs	r6, #3
c0d000da:	2d00      	cmp	r5, #0
c0d000dc:	d100      	bne.n	c0d000e0 <addr_getItem+0x54>
c0d000de:	e0c6      	b.n	c0d0026e <addr_getItem+0x1e2>
c0d000e0:	0420      	lsls	r0, r4, #16
c0d000e2:	d100      	bne.n	c0d000e6 <addr_getItem+0x5a>
c0d000e4:	e0c3      	b.n	c0d0026e <addr_getItem+0x1e2>
c0d000e6:	b2a0      	uxth	r0, r4
c0d000e8:	4629      	mov	r1, r5
c0d000ea:	f006 ff47 	bl	c0d06f7c <__udivsi3>
c0d000ee:	4347      	muls	r7, r0
c0d000f0:	1be1      	subs	r1, r4, r7
c0d000f2:	b28a      	uxth	r2, r1
c0d000f4:	1e53      	subs	r3, r2, #1
c0d000f6:	4614      	mov	r4, r2
c0d000f8:	419c      	sbcs	r4, r3
c0d000fa:	1820      	adds	r0, r4, r0
c0d000fc:	9b03      	ldr	r3, [sp, #12]
c0d000fe:	7018      	strb	r0, [r3, #0]
c0d00100:	b2c0      	uxtb	r0, r0
c0d00102:	9b00      	ldr	r3, [sp, #0]
c0d00104:	4298      	cmp	r0, r3
c0d00106:	d800      	bhi.n	c0d0010a <addr_getItem+0x7e>
c0d00108:	e0b1      	b.n	c0d0026e <addr_getItem+0x1e2>
c0d0010a:	0409      	lsls	r1, r1, #16
c0d0010c:	d100      	bne.n	c0d00110 <addr_getItem+0x84>
c0d0010e:	e09d      	b.n	c0d0024c <addr_getItem+0x1c0>
c0d00110:	1e40      	subs	r0, r0, #1
c0d00112:	4298      	cmp	r0, r3
c0d00114:	d000      	beq.n	c0d00118 <addr_getItem+0x8c>
c0d00116:	e099      	b.n	c0d0024c <addr_getItem+0x1c0>
c0d00118:	435d      	muls	r5, r3
c0d0011a:	4859      	ldr	r0, [pc, #356]	; (c0d00280 <addr_getItem+0x1f4>)
c0d0011c:	1941      	adds	r1, r0, r5
c0d0011e:	3121      	adds	r1, #33	; 0x21
c0d00120:	9802      	ldr	r0, [sp, #8]
c0d00122:	e099      	b.n	c0d00258 <addr_getItem+0x1cc>
c0d00124:	f004 fb7a 	bl	c0d0481c <app_mode_expert>
c0d00128:	2800      	cmp	r0, #0
c0d0012a:	d104      	bne.n	c0d00136 <addr_getItem+0xaa>
c0d0012c:	4851      	ldr	r0, [pc, #324]	; (c0d00274 <addr_getItem+0x1e8>)
c0d0012e:	7800      	ldrb	r0, [r0, #0]
c0d00130:	2800      	cmp	r0, #0
c0d00132:	d100      	bne.n	c0d00136 <addr_getItem+0xaa>
c0d00134:	e09b      	b.n	c0d0026e <addr_getItem+0x1e2>
c0d00136:	4a54      	ldr	r2, [pc, #336]	; (c0d00288 <addr_getItem+0x1fc>)
c0d00138:	447a      	add	r2, pc
c0d0013a:	4620      	mov	r0, r4
c0d0013c:	4639      	mov	r1, r7
c0d0013e:	f006 fc67 	bl	c0d06a10 <snprintf>
c0d00142:	204b      	movs	r0, #75	; 0x4b
c0d00144:	0081      	lsls	r1, r0, #2
c0d00146:	a806      	add	r0, sp, #24
c0d00148:	9105      	str	r1, [sp, #20]
c0d0014a:	f006 ff99 	bl	c0d07080 <explicit_bzero>
c0d0014e:	2600      	movs	r6, #0
c0d00150:	484e      	ldr	r0, [pc, #312]	; (c0d0028c <addr_getItem+0x200>)
c0d00152:	4478      	add	r0, pc
c0d00154:	9004      	str	r0, [sp, #16]
c0d00156:	4637      	mov	r7, r6
c0d00158:	2e14      	cmp	r6, #20
c0d0015a:	d049      	beq.n	c0d001f0 <addr_getItem+0x164>
c0d0015c:	a806      	add	r0, sp, #24
c0d0015e:	19c5      	adds	r5, r0, r7
c0d00160:	9805      	ldr	r0, [sp, #20]
c0d00162:	1bc4      	subs	r4, r0, r7
c0d00164:	4844      	ldr	r0, [pc, #272]	; (c0d00278 <addr_getItem+0x1ec>)
c0d00166:	5983      	ldr	r3, [r0, r6]
c0d00168:	2001      	movs	r0, #1
c0d0016a:	07c0      	lsls	r0, r0, #31
c0d0016c:	4383      	bics	r3, r0
c0d0016e:	4628      	mov	r0, r5
c0d00170:	4621      	mov	r1, r4
c0d00172:	9a04      	ldr	r2, [sp, #16]
c0d00174:	f006 fc4c 	bl	c0d06a10 <snprintf>
c0d00178:	4628      	mov	r0, r5
c0d0017a:	4621      	mov	r1, r4
c0d0017c:	f007 f9a0 	bl	c0d074c0 <strnlen>
c0d00180:	2800      	cmp	r0, #0
c0d00182:	d030      	beq.n	c0d001e6 <addr_getItem+0x15a>
c0d00184:	42a0      	cmp	r0, r4
c0d00186:	d22e      	bcs.n	c0d001e6 <addr_getItem+0x15a>
c0d00188:	19c7      	adds	r7, r0, r7
c0d0018a:	483b      	ldr	r0, [pc, #236]	; (c0d00278 <addr_getItem+0x1ec>)
c0d0018c:	5980      	ldr	r0, [r0, r6]
c0d0018e:	2800      	cmp	r0, #0
c0d00190:	d512      	bpl.n	c0d001b8 <addr_getItem+0x12c>
c0d00192:	a806      	add	r0, sp, #24
c0d00194:	19c5      	adds	r5, r0, r7
c0d00196:	9805      	ldr	r0, [sp, #20]
c0d00198:	1bc4      	subs	r4, r0, r7
c0d0019a:	4a3d      	ldr	r2, [pc, #244]	; (c0d00290 <addr_getItem+0x204>)
c0d0019c:	447a      	add	r2, pc
c0d0019e:	4628      	mov	r0, r5
c0d001a0:	4621      	mov	r1, r4
c0d001a2:	f006 fc35 	bl	c0d06a10 <snprintf>
c0d001a6:	4628      	mov	r0, r5
c0d001a8:	4621      	mov	r1, r4
c0d001aa:	f007 f989 	bl	c0d074c0 <strnlen>
c0d001ae:	2800      	cmp	r0, #0
c0d001b0:	d019      	beq.n	c0d001e6 <addr_getItem+0x15a>
c0d001b2:	42a0      	cmp	r0, r4
c0d001b4:	d217      	bcs.n	c0d001e6 <addr_getItem+0x15a>
c0d001b6:	19c7      	adds	r7, r0, r7
c0d001b8:	2e10      	cmp	r6, #16
c0d001ba:	d012      	beq.n	c0d001e2 <addr_getItem+0x156>
c0d001bc:	a806      	add	r0, sp, #24
c0d001be:	19c5      	adds	r5, r0, r7
c0d001c0:	9805      	ldr	r0, [sp, #20]
c0d001c2:	1bc4      	subs	r4, r0, r7
c0d001c4:	4a33      	ldr	r2, [pc, #204]	; (c0d00294 <addr_getItem+0x208>)
c0d001c6:	447a      	add	r2, pc
c0d001c8:	4628      	mov	r0, r5
c0d001ca:	4621      	mov	r1, r4
c0d001cc:	f006 fc20 	bl	c0d06a10 <snprintf>
c0d001d0:	4628      	mov	r0, r5
c0d001d2:	4621      	mov	r1, r4
c0d001d4:	f007 f974 	bl	c0d074c0 <strnlen>
c0d001d8:	2800      	cmp	r0, #0
c0d001da:	d004      	beq.n	c0d001e6 <addr_getItem+0x15a>
c0d001dc:	42a0      	cmp	r0, r4
c0d001de:	d202      	bcs.n	c0d001e6 <addr_getItem+0x15a>
c0d001e0:	19c7      	adds	r7, r0, r7
c0d001e2:	1d36      	adds	r6, r6, #4
c0d001e4:	e7b8      	b.n	c0d00158 <addr_getItem+0xcc>
c0d001e6:	a806      	add	r0, sp, #24
c0d001e8:	2152      	movs	r1, #82	; 0x52
c0d001ea:	8081      	strh	r1, [r0, #4]
c0d001ec:	4823      	ldr	r0, [pc, #140]	; (c0d0027c <addr_getItem+0x1f0>)
c0d001ee:	9006      	str	r0, [sp, #24]
c0d001f0:	a806      	add	r0, sp, #24
c0d001f2:	f007 f8c7 	bl	c0d07384 <strlen>
c0d001f6:	4604      	mov	r4, r0
c0d001f8:	9802      	ldr	r0, [sp, #8]
c0d001fa:	9d01      	ldr	r5, [sp, #4]
c0d001fc:	4629      	mov	r1, r5
c0d001fe:	f006 ff3f 	bl	c0d07080 <explicit_bzero>
c0d00202:	2000      	movs	r0, #0
c0d00204:	9903      	ldr	r1, [sp, #12]
c0d00206:	7008      	strb	r0, [r1, #0]
c0d00208:	1e6e      	subs	r6, r5, #1
c0d0020a:	b2b5      	uxth	r5, r6
c0d0020c:	2d00      	cmp	r5, #0
c0d0020e:	d02d      	beq.n	c0d0026c <addr_getItem+0x1e0>
c0d00210:	0420      	lsls	r0, r4, #16
c0d00212:	d02b      	beq.n	c0d0026c <addr_getItem+0x1e0>
c0d00214:	b2a0      	uxth	r0, r4
c0d00216:	4629      	mov	r1, r5
c0d00218:	f006 feb0 	bl	c0d06f7c <__udivsi3>
c0d0021c:	4346      	muls	r6, r0
c0d0021e:	1ba1      	subs	r1, r4, r6
c0d00220:	b28a      	uxth	r2, r1
c0d00222:	1e53      	subs	r3, r2, #1
c0d00224:	4614      	mov	r4, r2
c0d00226:	419c      	sbcs	r4, r3
c0d00228:	1820      	adds	r0, r4, r0
c0d0022a:	9b03      	ldr	r3, [sp, #12]
c0d0022c:	7018      	strb	r0, [r3, #0]
c0d0022e:	b2c0      	uxtb	r0, r0
c0d00230:	9b00      	ldr	r3, [sp, #0]
c0d00232:	4298      	cmp	r0, r3
c0d00234:	d91a      	bls.n	c0d0026c <addr_getItem+0x1e0>
c0d00236:	0409      	lsls	r1, r1, #16
c0d00238:	9900      	ldr	r1, [sp, #0]
c0d0023a:	d010      	beq.n	c0d0025e <addr_getItem+0x1d2>
c0d0023c:	1e40      	subs	r0, r0, #1
c0d0023e:	4288      	cmp	r0, r1
c0d00240:	d10d      	bne.n	c0d0025e <addr_getItem+0x1d2>
c0d00242:	434d      	muls	r5, r1
c0d00244:	a806      	add	r0, sp, #24
c0d00246:	1941      	adds	r1, r0, r5
c0d00248:	9802      	ldr	r0, [sp, #8]
c0d0024a:	e00d      	b.n	c0d00268 <addr_getItem+0x1dc>
c0d0024c:	436b      	muls	r3, r5
c0d0024e:	480c      	ldr	r0, [pc, #48]	; (c0d00280 <addr_getItem+0x1f4>)
c0d00250:	18c1      	adds	r1, r0, r3
c0d00252:	3121      	adds	r1, #33	; 0x21
c0d00254:	9802      	ldr	r0, [sp, #8]
c0d00256:	462a      	mov	r2, r5
c0d00258:	f006 ff06 	bl	c0d07068 <__aeabi_memmove>
c0d0025c:	e007      	b.n	c0d0026e <addr_getItem+0x1e2>
c0d0025e:	4369      	muls	r1, r5
c0d00260:	a806      	add	r0, sp, #24
c0d00262:	1841      	adds	r1, r0, r1
c0d00264:	9802      	ldr	r0, [sp, #8]
c0d00266:	462a      	mov	r2, r5
c0d00268:	f006 fefa 	bl	c0d07060 <__aeabi_memcpy>
c0d0026c:	2603      	movs	r6, #3
c0d0026e:	4630      	mov	r0, r6
c0d00270:	b051      	add	sp, #324	; 0x144
c0d00272:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d00274:	20000554 	.word	0x20000554
c0d00278:	20000558 	.word	0x20000558
c0d0027c:	4f525245 	.word	0x4f525245
c0d00280:	20000bf8 	.word	0x20000bf8
c0d00284:	00007f54 	.word	0x00007f54
c0d00288:	00007965 	.word	0x00007965
c0d0028c:	00007956 	.word	0x00007956
c0d00290:	0000790f 	.word	0x0000790f
c0d00294:	000078e7 	.word	0x000078e7

c0d00298 <handleApdu>:
c0d00298:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0029a:	b093      	sub	sp, #76	; 0x4c
c0d0029c:	4617      	mov	r7, r2
c0d0029e:	9105      	str	r1, [sp, #20]
c0d002a0:	9004      	str	r0, [sp, #16]
c0d002a2:	a812      	add	r0, sp, #72	; 0x48
c0d002a4:	2400      	movs	r4, #0
c0d002a6:	8004      	strh	r4, [r0, #0]
c0d002a8:	ae06      	add	r6, sp, #24
c0d002aa:	4630      	mov	r0, r6
c0d002ac:	f007 f80c 	bl	c0d072c8 <setjmp>
c0d002b0:	4605      	mov	r5, r0
c0d002b2:	85b0      	strh	r0, [r6, #44]	; 0x2c
c0d002b4:	b280      	uxth	r0, r0
c0d002b6:	2800      	cmp	r0, #0
c0d002b8:	d016      	beq.n	c0d002e8 <handleApdu+0x50>
c0d002ba:	2805      	cmp	r0, #5
c0d002bc:	d100      	bne.n	c0d002c0 <handleApdu+0x28>
c0d002be:	e116      	b.n	c0d004ee <handleApdu+0x256>
c0d002c0:	a806      	add	r0, sp, #24
c0d002c2:	8584      	strh	r4, [r0, #44]	; 0x2c
c0d002c4:	9810      	ldr	r0, [sp, #64]	; 0x40
c0d002c6:	f006 fe3f 	bl	c0d06f48 <try_context_set>
c0d002ca:	200f      	movs	r0, #15
c0d002cc:	0300      	lsls	r0, r0, #12
c0d002ce:	4028      	ands	r0, r5
c0d002d0:	2109      	movs	r1, #9
c0d002d2:	0309      	lsls	r1, r1, #12
c0d002d4:	4288      	cmp	r0, r1
c0d002d6:	d004      	beq.n	c0d002e2 <handleApdu+0x4a>
c0d002d8:	2103      	movs	r1, #3
c0d002da:	0349      	lsls	r1, r1, #13
c0d002dc:	4288      	cmp	r0, r1
c0d002de:	d000      	beq.n	c0d002e2 <handleApdu+0x4a>
c0d002e0:	e0c3      	b.n	c0d0046a <handleApdu+0x1d2>
c0d002e2:	a812      	add	r0, sp, #72	; 0x48
c0d002e4:	8005      	strh	r5, [r0, #0]
c0d002e6:	e0c7      	b.n	c0d00478 <handleApdu+0x1e0>
c0d002e8:	a806      	add	r0, sp, #24
c0d002ea:	f006 fe2d 	bl	c0d06f48 <try_context_set>
c0d002ee:	9010      	str	r0, [sp, #64]	; 0x40
c0d002f0:	4edb      	ldr	r6, [pc, #876]	; (c0d00660 <handleApdu+0x3c8>)
c0d002f2:	7830      	ldrb	r0, [r6, #0]
c0d002f4:	2855      	cmp	r0, #85	; 0x55
c0d002f6:	d000      	beq.n	c0d002fa <handleApdu+0x62>
c0d002f8:	e101      	b.n	c0d004fe <handleApdu+0x266>
c0d002fa:	2f04      	cmp	r7, #4
c0d002fc:	d800      	bhi.n	c0d00300 <handleApdu+0x68>
c0d002fe:	e0f4      	b.n	c0d004ea <handleApdu+0x252>
c0d00300:	7870      	ldrb	r0, [r6, #1]
c0d00302:	2802      	cmp	r0, #2
c0d00304:	d076      	beq.n	c0d003f4 <handleApdu+0x15c>
c0d00306:	2804      	cmp	r0, #4
c0d00308:	d000      	beq.n	c0d0030c <handleApdu+0x74>
c0d0030a:	e0fc      	b.n	c0d00506 <handleApdu+0x26e>
c0d0030c:	f006 fda0 	bl	c0d06e50 <os_global_pin_is_validated>
c0d00310:	28aa      	cmp	r0, #170	; 0xaa
c0d00312:	d000      	beq.n	c0d00316 <handleApdu+0x7e>
c0d00314:	e19f      	b.n	c0d00656 <handleApdu+0x3be>
c0d00316:	2f05      	cmp	r7, #5
c0d00318:	d800      	bhi.n	c0d0031c <handleApdu+0x84>
c0d0031a:	e147      	b.n	c0d005ac <handleApdu+0x314>
c0d0031c:	4ed8      	ldr	r6, [pc, #864]	; (c0d00680 <handleApdu+0x3e8>)
c0d0031e:	2153      	movs	r1, #83	; 0x53
c0d00320:	4630      	mov	r0, r6
c0d00322:	f006 fead 	bl	c0d07080 <explicit_bzero>
c0d00326:	48ce      	ldr	r0, [pc, #824]	; (c0d00660 <handleApdu+0x3c8>)
c0d00328:	7945      	ldrb	r5, [r0, #5]
c0d0032a:	48d6      	ldr	r0, [pc, #856]	; (c0d00684 <handleApdu+0x3ec>)
c0d0032c:	7005      	strb	r5, [r0, #0]
c0d0032e:	2d00      	cmp	r5, #0
c0d00330:	d100      	bne.n	c0d00334 <handleApdu+0x9c>
c0d00332:	e13b      	b.n	c0d005ac <handleApdu+0x314>
c0d00334:	2d54      	cmp	r5, #84	; 0x54
c0d00336:	d300      	bcc.n	c0d0033a <handleApdu+0xa2>
c0d00338:	e138      	b.n	c0d005ac <handleApdu+0x314>
c0d0033a:	48c9      	ldr	r0, [pc, #804]	; (c0d00660 <handleApdu+0x3c8>)
c0d0033c:	1d81      	adds	r1, r0, #6
c0d0033e:	4630      	mov	r0, r6
c0d00340:	462a      	mov	r2, r5
c0d00342:	f006 fe8d 	bl	c0d07060 <__aeabi_memcpy>
c0d00346:	5574      	strb	r4, [r6, r5]
c0d00348:	1de8      	adds	r0, r5, #7
c0d0034a:	42b8      	cmp	r0, r7
c0d0034c:	d900      	bls.n	c0d00350 <handleApdu+0xb8>
c0d0034e:	e12d      	b.n	c0d005ac <handleApdu+0x314>
c0d00350:	1da8      	adds	r0, r5, #6
c0d00352:	1a39      	subs	r1, r7, r0
c0d00354:	2913      	cmp	r1, #19
c0d00356:	d800      	bhi.n	c0d0035a <handleApdu+0xc2>
c0d00358:	e0c7      	b.n	c0d004ea <handleApdu+0x252>
c0d0035a:	4ec1      	ldr	r6, [pc, #772]	; (c0d00660 <handleApdu+0x3c8>)
c0d0035c:	1831      	adds	r1, r6, r0
c0d0035e:	4fc3      	ldr	r7, [pc, #780]	; (c0d0066c <handleApdu+0x3d4>)
c0d00360:	2214      	movs	r2, #20
c0d00362:	4638      	mov	r0, r7
c0d00364:	f006 fe7c 	bl	c0d07060 <__aeabi_memcpy>
c0d00368:	4dbf      	ldr	r5, [pc, #764]	; (c0d00668 <handleApdu+0x3d0>)
c0d0036a:	4628      	mov	r0, r5
c0d0036c:	302d      	adds	r0, #45	; 0x2d
c0d0036e:	6839      	ldr	r1, [r7, #0]
c0d00370:	4281      	cmp	r1, r0
c0d00372:	d000      	beq.n	c0d00376 <handleApdu+0xde>
c0d00374:	e11a      	b.n	c0d005ac <handleApdu+0x314>
c0d00376:	6878      	ldr	r0, [r7, #4]
c0d00378:	49be      	ldr	r1, [pc, #760]	; (c0d00674 <handleApdu+0x3dc>)
c0d0037a:	4288      	cmp	r0, r1
c0d0037c:	d003      	beq.n	c0d00386 <handleApdu+0xee>
c0d0037e:	49be      	ldr	r1, [pc, #760]	; (c0d00678 <handleApdu+0x3e0>)
c0d00380:	4288      	cmp	r0, r1
c0d00382:	d000      	beq.n	c0d00386 <handleApdu+0xee>
c0d00384:	e112      	b.n	c0d005ac <handleApdu+0x314>
c0d00386:	68f8      	ldr	r0, [r7, #12]
c0d00388:	2800      	cmp	r0, #0
c0d0038a:	d000      	beq.n	c0d0038e <handleApdu+0xf6>
c0d0038c:	e10e      	b.n	c0d005ac <handleApdu+0x314>
c0d0038e:	f004 fa45 	bl	c0d0481c <app_mode_expert>
c0d00392:	2800      	cmp	r0, #0
c0d00394:	d100      	bne.n	c0d00398 <handleApdu+0x100>
c0d00396:	e08a      	b.n	c0d004ae <handleApdu+0x216>
c0d00398:	48ba      	ldr	r0, [pc, #744]	; (c0d00684 <handleApdu+0x3ec>)
c0d0039a:	7802      	ldrb	r2, [r0, #0]
c0d0039c:	6878      	ldr	r0, [r7, #4]
c0d0039e:	49b8      	ldr	r1, [pc, #736]	; (c0d00680 <handleApdu+0x3e8>)
c0d003a0:	f000 f9c4 	bl	c0d0072c <checkChainConfig>
c0d003a4:	49b5      	ldr	r1, [pc, #724]	; (c0d0067c <handleApdu+0x3e4>)
c0d003a6:	7008      	strb	r0, [r1, #0]
c0d003a8:	28ff      	cmp	r0, #255	; 0xff
c0d003aa:	d100      	bne.n	c0d003ae <handleApdu+0x116>
c0d003ac:	e153      	b.n	c0d00656 <handleApdu+0x3be>
c0d003ae:	78b4      	ldrb	r4, [r6, #2]
c0d003b0:	2041      	movs	r0, #65	; 0x41
c0d003b2:	0081      	lsls	r1, r0, #2
c0d003b4:	4630      	mov	r0, r6
c0d003b6:	f006 fe63 	bl	c0d07080 <explicit_bzero>
c0d003ba:	4db3      	ldr	r5, [pc, #716]	; (c0d00688 <handleApdu+0x3f0>)
c0d003bc:	2000      	movs	r0, #0
c0d003be:	8028      	strh	r0, [r5, #0]
c0d003c0:	2081      	movs	r0, #129	; 0x81
c0d003c2:	0041      	lsls	r1, r0, #1
c0d003c4:	4630      	mov	r0, r6
c0d003c6:	462a      	mov	r2, r5
c0d003c8:	f000 fb26 	bl	c0d00a18 <crypto_fillAddress>
c0d003cc:	2803      	cmp	r0, #3
c0d003ce:	d000      	beq.n	c0d003d2 <handleApdu+0x13a>
c0d003d0:	e0ae      	b.n	c0d00530 <handleApdu+0x298>
c0d003d2:	8828      	ldrh	r0, [r5, #0]
c0d003d4:	2800      	cmp	r0, #0
c0d003d6:	d100      	bne.n	c0d003da <handleApdu+0x142>
c0d003d8:	e0aa      	b.n	c0d00530 <handleApdu+0x298>
c0d003da:	2c00      	cmp	r4, #0
c0d003dc:	d100      	bne.n	c0d003e0 <handleApdu+0x148>
c0d003de:	e0ad      	b.n	c0d0053c <handleApdu+0x2a4>
c0d003e0:	48ab      	ldr	r0, [pc, #684]	; (c0d00690 <handleApdu+0x3f8>)
c0d003e2:	4478      	add	r0, pc
c0d003e4:	49ab      	ldr	r1, [pc, #684]	; (c0d00694 <handleApdu+0x3fc>)
c0d003e6:	4479      	add	r1, pc
c0d003e8:	4aab      	ldr	r2, [pc, #684]	; (c0d00698 <handleApdu+0x400>)
c0d003ea:	447a      	add	r2, pc
c0d003ec:	f003 fad4 	bl	c0d03998 <view_review_init>
c0d003f0:	2001      	movs	r0, #1
c0d003f2:	e032      	b.n	c0d0045a <handleApdu+0x1c2>
c0d003f4:	f006 fd2c 	bl	c0d06e50 <os_global_pin_is_validated>
c0d003f8:	28aa      	cmp	r0, #170	; 0xaa
c0d003fa:	d000      	beq.n	c0d003fe <handleApdu+0x166>
c0d003fc:	e12b      	b.n	c0d00656 <handleApdu+0x3be>
c0d003fe:	78b0      	ldrb	r0, [r6, #2]
c0d00400:	2802      	cmp	r0, #2
c0d00402:	d163      	bne.n	c0d004cc <handleApdu+0x234>
c0d00404:	1d70      	adds	r0, r6, #5
c0d00406:	1f7d      	subs	r5, r7, #5
c0d00408:	4629      	mov	r1, r5
c0d0040a:	f000 f9d7 	bl	c0d007bc <tx_append>
c0d0040e:	42a8      	cmp	r0, r5
c0d00410:	d000      	beq.n	c0d00414 <handleApdu+0x17c>
c0d00412:	e0b1      	b.n	c0d00578 <handleApdu+0x2e0>
c0d00414:	78f7      	ldrb	r7, [r6, #3]
c0d00416:	4894      	ldr	r0, [pc, #592]	; (c0d00668 <handleApdu+0x3d0>)
c0d00418:	303d      	adds	r0, #61	; 0x3d
c0d0041a:	4994      	ldr	r1, [pc, #592]	; (c0d0066c <handleApdu+0x3d4>)
c0d0041c:	6849      	ldr	r1, [r1, #4]
c0d0041e:	4281      	cmp	r1, r0
c0d00420:	d104      	bne.n	c0d0042c <handleApdu+0x194>
c0d00422:	f004 f9fb 	bl	c0d0481c <app_mode_expert>
c0d00426:	2800      	cmp	r0, #0
c0d00428:	d100      	bne.n	c0d0042c <handleApdu+0x194>
c0d0042a:	e0ad      	b.n	c0d00588 <handleApdu+0x2f0>
c0d0042c:	2065      	movs	r0, #101	; 0x65
c0d0042e:	00c0      	lsls	r0, r0, #3
c0d00430:	4631      	mov	r1, r6
c0d00432:	3121      	adds	r1, #33	; 0x21
c0d00434:	4a8e      	ldr	r2, [pc, #568]	; (c0d00670 <handleApdu+0x3d8>)
c0d00436:	5011      	str	r1, [r2, r0]
c0d00438:	4638      	mov	r0, r7
c0d0043a:	f000 f9cd 	bl	c0d007d8 <tx_parse>
c0d0043e:	2800      	cmp	r0, #0
c0d00440:	d000      	beq.n	c0d00444 <handleApdu+0x1ac>
c0d00442:	e081      	b.n	c0d00548 <handleApdu+0x2b0>
c0d00444:	f004 fc30 	bl	c0d04ca8 <check_app_canary>
c0d00448:	4896      	ldr	r0, [pc, #600]	; (c0d006a4 <handleApdu+0x40c>)
c0d0044a:	4478      	add	r0, pc
c0d0044c:	4996      	ldr	r1, [pc, #600]	; (c0d006a8 <handleApdu+0x410>)
c0d0044e:	4479      	add	r1, pc
c0d00450:	4a96      	ldr	r2, [pc, #600]	; (c0d006ac <handleApdu+0x414>)
c0d00452:	447a      	add	r2, pc
c0d00454:	f003 faa0 	bl	c0d03998 <view_review_init>
c0d00458:	2003      	movs	r0, #3
c0d0045a:	f003 faa9 	bl	c0d039b0 <view_review_show>
c0d0045e:	9a04      	ldr	r2, [sp, #16]
c0d00460:	6810      	ldr	r0, [r2, #0]
c0d00462:	2110      	movs	r1, #16
c0d00464:	4301      	orrs	r1, r0
c0d00466:	6011      	str	r1, [r2, #0]
c0d00468:	e013      	b.n	c0d00492 <handleApdu+0x1fa>
c0d0046a:	4888      	ldr	r0, [pc, #544]	; (c0d0068c <handleApdu+0x3f4>)
c0d0046c:	4005      	ands	r5, r0
c0d0046e:	200d      	movs	r0, #13
c0d00470:	02c0      	lsls	r0, r0, #11
c0d00472:	1828      	adds	r0, r5, r0
c0d00474:	a912      	add	r1, sp, #72	; 0x48
c0d00476:	8008      	strh	r0, [r1, #0]
c0d00478:	9b05      	ldr	r3, [sp, #20]
c0d0047a:	9812      	ldr	r0, [sp, #72]	; 0x48
c0d0047c:	6819      	ldr	r1, [r3, #0]
c0d0047e:	0a00      	lsrs	r0, r0, #8
c0d00480:	4a77      	ldr	r2, [pc, #476]	; (c0d00660 <handleApdu+0x3c8>)
c0d00482:	5450      	strb	r0, [r2, r1]
c0d00484:	9812      	ldr	r0, [sp, #72]	; 0x48
c0d00486:	6819      	ldr	r1, [r3, #0]
c0d00488:	1889      	adds	r1, r1, r2
c0d0048a:	7048      	strb	r0, [r1, #1]
c0d0048c:	6818      	ldr	r0, [r3, #0]
c0d0048e:	1c80      	adds	r0, r0, #2
c0d00490:	6018      	str	r0, [r3, #0]
c0d00492:	f006 fd4f 	bl	c0d06f34 <try_context_get>
c0d00496:	a906      	add	r1, sp, #24
c0d00498:	4288      	cmp	r0, r1
c0d0049a:	d102      	bne.n	c0d004a2 <handleApdu+0x20a>
c0d0049c:	9810      	ldr	r0, [sp, #64]	; 0x40
c0d0049e:	f006 fd53 	bl	c0d06f48 <try_context_set>
c0d004a2:	a806      	add	r0, sp, #24
c0d004a4:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d004a6:	2800      	cmp	r0, #0
c0d004a8:	d144      	bne.n	c0d00534 <handleApdu+0x29c>
c0d004aa:	b013      	add	sp, #76	; 0x4c
c0d004ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d004ae:	4620      	mov	r0, r4
c0d004b0:	4601      	mov	r1, r0
c0d004b2:	1d00      	adds	r0, r0, #4
c0d004b4:	2810      	cmp	r0, #16
c0d004b6:	d100      	bne.n	c0d004ba <handleApdu+0x222>
c0d004b8:	e76e      	b.n	c0d00398 <handleApdu+0x100>
c0d004ba:	1879      	adds	r1, r7, r1
c0d004bc:	6889      	ldr	r1, [r1, #8]
c0d004be:	4029      	ands	r1, r5
c0d004c0:	2965      	cmp	r1, #101	; 0x65
c0d004c2:	d3f5      	bcc.n	c0d004b0 <handleApdu+0x218>
c0d004c4:	4867      	ldr	r0, [pc, #412]	; (c0d00664 <handleApdu+0x3cc>)
c0d004c6:	1c40      	adds	r0, r0, #1
c0d004c8:	f005 fdf5 	bl	c0d060b6 <os_longjmp>
c0d004cc:	4635      	mov	r5, r6
c0d004ce:	2801      	cmp	r0, #1
c0d004d0:	d04b      	beq.n	c0d0056a <handleApdu+0x2d2>
c0d004d2:	2800      	cmp	r0, #0
c0d004d4:	d154      	bne.n	c0d00580 <handleApdu+0x2e8>
c0d004d6:	f000 f95d 	bl	c0d00794 <tx_initialize>
c0d004da:	f000 f96b 	bl	c0d007b4 <tx_reset>
c0d004de:	2f05      	cmp	r7, #5
c0d004e0:	d964      	bls.n	c0d005ac <handleApdu+0x314>
c0d004e2:	1f78      	subs	r0, r7, #5
c0d004e4:	9003      	str	r0, [sp, #12]
c0d004e6:	2813      	cmp	r0, #19
c0d004e8:	d863      	bhi.n	c0d005b2 <handleApdu+0x31a>
c0d004ea:	2067      	movs	r0, #103	; 0x67
c0d004ec:	e049      	b.n	c0d00582 <handleApdu+0x2ea>
c0d004ee:	a806      	add	r0, sp, #24
c0d004f0:	8584      	strh	r4, [r0, #44]	; 0x2c
c0d004f2:	9810      	ldr	r0, [sp, #64]	; 0x40
c0d004f4:	f006 fd28 	bl	c0d06f48 <try_context_set>
c0d004f8:	2005      	movs	r0, #5
c0d004fa:	f005 fddc 	bl	c0d060b6 <os_longjmp>
c0d004fe:	2037      	movs	r0, #55	; 0x37
c0d00500:	0240      	lsls	r0, r0, #9
c0d00502:	f005 fdd8 	bl	c0d060b6 <os_longjmp>
c0d00506:	2800      	cmp	r0, #0
c0d00508:	d116      	bne.n	c0d00538 <handleApdu+0x2a0>
c0d0050a:	2004      	movs	r0, #4
c0d0050c:	7230      	strb	r0, [r6, #8]
c0d0050e:	71f4      	strb	r4, [r6, #7]
c0d00510:	2010      	movs	r0, #16
c0d00512:	71b0      	strb	r0, [r6, #6]
c0d00514:	2031      	movs	r0, #49	; 0x31
c0d00516:	7170      	strb	r0, [r6, #5]
c0d00518:	7134      	strb	r4, [r6, #4]
c0d0051a:	201b      	movs	r0, #27
c0d0051c:	70f0      	strb	r0, [r6, #3]
c0d0051e:	2023      	movs	r0, #35	; 0x23
c0d00520:	70b0      	strb	r0, [r6, #2]
c0d00522:	2002      	movs	r0, #2
c0d00524:	7070      	strb	r0, [r6, #1]
c0d00526:	7034      	strb	r4, [r6, #0]
c0d00528:	9905      	ldr	r1, [sp, #20]
c0d0052a:	6808      	ldr	r0, [r1, #0]
c0d0052c:	3009      	adds	r0, #9
c0d0052e:	e006      	b.n	c0d0053e <handleApdu+0x2a6>
c0d00530:	2019      	movs	r0, #25
c0d00532:	0280      	lsls	r0, r0, #10
c0d00534:	f005 fdbf 	bl	c0d060b6 <os_longjmp>
c0d00538:	206d      	movs	r0, #109	; 0x6d
c0d0053a:	e022      	b.n	c0d00582 <handleApdu+0x2ea>
c0d0053c:	9905      	ldr	r1, [sp, #20]
c0d0053e:	6008      	str	r0, [r1, #0]
c0d00540:	2009      	movs	r0, #9
c0d00542:	0300      	lsls	r0, r0, #12
c0d00544:	f005 fdb7 	bl	c0d060b6 <os_longjmp>
c0d00548:	4605      	mov	r5, r0
c0d0054a:	2041      	movs	r0, #65	; 0x41
c0d0054c:	0081      	lsls	r1, r0, #2
c0d0054e:	4628      	mov	r0, r5
c0d00550:	f006 ffb6 	bl	c0d074c0 <strnlen>
c0d00554:	4606      	mov	r6, r0
c0d00556:	4842      	ldr	r0, [pc, #264]	; (c0d00660 <handleApdu+0x3c8>)
c0d00558:	4629      	mov	r1, r5
c0d0055a:	4632      	mov	r2, r6
c0d0055c:	f006 fd84 	bl	c0d07068 <__aeabi_memmove>
c0d00560:	9905      	ldr	r1, [sp, #20]
c0d00562:	6808      	ldr	r0, [r1, #0]
c0d00564:	1980      	adds	r0, r0, r6
c0d00566:	6008      	str	r0, [r1, #0]
c0d00568:	e020      	b.n	c0d005ac <handleApdu+0x314>
c0d0056a:	1d68      	adds	r0, r5, #5
c0d0056c:	1f7c      	subs	r4, r7, #5
c0d0056e:	4621      	mov	r1, r4
c0d00570:	f000 f924 	bl	c0d007bc <tx_append>
c0d00574:	42a0      	cmp	r0, r4
c0d00576:	d0e3      	beq.n	c0d00540 <handleApdu+0x2a8>
c0d00578:	483a      	ldr	r0, [pc, #232]	; (c0d00664 <handleApdu+0x3cc>)
c0d0057a:	1e40      	subs	r0, r0, #1
c0d0057c:	f005 fd9b 	bl	c0d060b6 <os_longjmp>
c0d00580:	206b      	movs	r0, #107	; 0x6b
c0d00582:	0200      	lsls	r0, r0, #8
c0d00584:	f005 fd97 	bl	c0d060b6 <os_longjmp>
c0d00588:	9a04      	ldr	r2, [sp, #16]
c0d0058a:	6810      	ldr	r0, [r2, #0]
c0d0058c:	2110      	movs	r1, #16
c0d0058e:	4301      	orrs	r1, r0
c0d00590:	6011      	str	r1, [r2, #0]
c0d00592:	4842      	ldr	r0, [pc, #264]	; (c0d0069c <handleApdu+0x404>)
c0d00594:	4478      	add	r0, pc
c0d00596:	f006 fbff 	bl	c0d06d98 <pic>
c0d0059a:	4604      	mov	r4, r0
c0d0059c:	4840      	ldr	r0, [pc, #256]	; (c0d006a0 <handleApdu+0x408>)
c0d0059e:	4478      	add	r0, pc
c0d005a0:	f006 fbfa 	bl	c0d06d98 <pic>
c0d005a4:	4601      	mov	r1, r0
c0d005a6:	4620      	mov	r0, r4
c0d005a8:	f003 fb2c 	bl	c0d03c04 <view_custom_error_show>
c0d005ac:	482d      	ldr	r0, [pc, #180]	; (c0d00664 <handleApdu+0x3cc>)
c0d005ae:	f005 fd82 	bl	c0d060b6 <os_longjmp>
c0d005b2:	1d69      	adds	r1, r5, #5
c0d005b4:	4c2d      	ldr	r4, [pc, #180]	; (c0d0066c <handleApdu+0x3d4>)
c0d005b6:	2214      	movs	r2, #20
c0d005b8:	4620      	mov	r0, r4
c0d005ba:	f006 fd51 	bl	c0d07060 <__aeabi_memcpy>
c0d005be:	4e2a      	ldr	r6, [pc, #168]	; (c0d00668 <handleApdu+0x3d0>)
c0d005c0:	4630      	mov	r0, r6
c0d005c2:	302d      	adds	r0, #45	; 0x2d
c0d005c4:	6821      	ldr	r1, [r4, #0]
c0d005c6:	4281      	cmp	r1, r0
c0d005c8:	d1f0      	bne.n	c0d005ac <handleApdu+0x314>
c0d005ca:	6860      	ldr	r0, [r4, #4]
c0d005cc:	4929      	ldr	r1, [pc, #164]	; (c0d00674 <handleApdu+0x3dc>)
c0d005ce:	4288      	cmp	r0, r1
c0d005d0:	d002      	beq.n	c0d005d8 <handleApdu+0x340>
c0d005d2:	4929      	ldr	r1, [pc, #164]	; (c0d00678 <handleApdu+0x3e0>)
c0d005d4:	4288      	cmp	r0, r1
c0d005d6:	d1e9      	bne.n	c0d005ac <handleApdu+0x314>
c0d005d8:	68e0      	ldr	r0, [r4, #12]
c0d005da:	2800      	cmp	r0, #0
c0d005dc:	d1e6      	bne.n	c0d005ac <handleApdu+0x314>
c0d005de:	f004 f91d 	bl	c0d0481c <app_mode_expert>
c0d005e2:	2800      	cmp	r0, #0
c0d005e4:	d027      	beq.n	c0d00636 <handleApdu+0x39e>
c0d005e6:	4825      	ldr	r0, [pc, #148]	; (c0d0067c <handleApdu+0x3e4>)
c0d005e8:	2100      	movs	r1, #0
c0d005ea:	9102      	str	r1, [sp, #8]
c0d005ec:	7001      	strb	r1, [r0, #0]
c0d005ee:	9803      	ldr	r0, [sp, #12]
c0d005f0:	2815      	cmp	r0, #21
c0d005f2:	d32b      	bcc.n	c0d0064c <handleApdu+0x3b4>
c0d005f4:	2f19      	cmp	r7, #25
c0d005f6:	d9d9      	bls.n	c0d005ac <handleApdu+0x314>
c0d005f8:	4e21      	ldr	r6, [pc, #132]	; (c0d00680 <handleApdu+0x3e8>)
c0d005fa:	2153      	movs	r1, #83	; 0x53
c0d005fc:	4630      	mov	r0, r6
c0d005fe:	f006 fd3f 	bl	c0d07080 <explicit_bzero>
c0d00602:	7e6f      	ldrb	r7, [r5, #25]
c0d00604:	481f      	ldr	r0, [pc, #124]	; (c0d00684 <handleApdu+0x3ec>)
c0d00606:	7007      	strb	r7, [r0, #0]
c0d00608:	2f00      	cmp	r7, #0
c0d0060a:	d0cf      	beq.n	c0d005ac <handleApdu+0x314>
c0d0060c:	2f54      	cmp	r7, #84	; 0x54
c0d0060e:	d2cd      	bcs.n	c0d005ac <handleApdu+0x314>
c0d00610:	9701      	str	r7, [sp, #4]
c0d00612:	351a      	adds	r5, #26
c0d00614:	4630      	mov	r0, r6
c0d00616:	4629      	mov	r1, r5
c0d00618:	463a      	mov	r2, r7
c0d0061a:	f006 fd21 	bl	c0d07060 <__aeabi_memcpy>
c0d0061e:	9802      	ldr	r0, [sp, #8]
c0d00620:	55f0      	strb	r0, [r6, r7]
c0d00622:	6860      	ldr	r0, [r4, #4]
c0d00624:	4631      	mov	r1, r6
c0d00626:	9a01      	ldr	r2, [sp, #4]
c0d00628:	f000 f880 	bl	c0d0072c <checkChainConfig>
c0d0062c:	4913      	ldr	r1, [pc, #76]	; (c0d0067c <handleApdu+0x3e4>)
c0d0062e:	7008      	strb	r0, [r1, #0]
c0d00630:	28ff      	cmp	r0, #255	; 0xff
c0d00632:	d185      	bne.n	c0d00540 <handleApdu+0x2a8>
c0d00634:	e00f      	b.n	c0d00656 <handleApdu+0x3be>
c0d00636:	2000      	movs	r0, #0
c0d00638:	4601      	mov	r1, r0
c0d0063a:	1d00      	adds	r0, r0, #4
c0d0063c:	2810      	cmp	r0, #16
c0d0063e:	d0d2      	beq.n	c0d005e6 <handleApdu+0x34e>
c0d00640:	1861      	adds	r1, r4, r1
c0d00642:	6889      	ldr	r1, [r1, #8]
c0d00644:	4031      	ands	r1, r6
c0d00646:	2965      	cmp	r1, #101	; 0x65
c0d00648:	d3f6      	bcc.n	c0d00638 <handleApdu+0x3a0>
c0d0064a:	e73b      	b.n	c0d004c4 <handleApdu+0x22c>
c0d0064c:	363d      	adds	r6, #61	; 0x3d
c0d0064e:	6860      	ldr	r0, [r4, #4]
c0d00650:	42b0      	cmp	r0, r6
c0d00652:	d000      	beq.n	c0d00656 <handleApdu+0x3be>
c0d00654:	e774      	b.n	c0d00540 <handleApdu+0x2a8>
c0d00656:	4803      	ldr	r0, [pc, #12]	; (c0d00664 <handleApdu+0x3cc>)
c0d00658:	1c80      	adds	r0, r0, #2
c0d0065a:	f005 fd2c 	bl	c0d060b6 <os_longjmp>
c0d0065e:	46c0      	nop			; (mov r8, r8)
c0d00660:	20000bf8 	.word	0x20000bf8
c0d00664:	00006984 	.word	0x00006984
c0d00668:	7fffffff 	.word	0x7fffffff
c0d0066c:	20000558 	.word	0x20000558
c0d00670:	200005c4 	.word	0x200005c4
c0d00674:	80000076 	.word	0x80000076
c0d00678:	8000003c 	.word	0x8000003c
c0d0067c:	20000554 	.word	0x20000554
c0d00680:	2000056c 	.word	0x2000056c
c0d00684:	200005c0 	.word	0x200005c0
c0d00688:	20000200 	.word	0x20000200
c0d0068c:	000007ff 	.word	0x000007ff
c0d00690:	fffffca7 	.word	0xfffffca7
c0d00694:	fffffc73 	.word	0xfffffc73
c0d00698:	000002c3 	.word	0x000002c3
c0d0069c:	0000751b 	.word	0x0000751b
c0d006a0:	0000938a 	.word	0x0000938a
c0d006a4:	0000040f 	.word	0x0000040f
c0d006a8:	000003ef 	.word	0x000003ef
c0d006ac:	00000283 	.word	0x00000283

c0d006b0 <app_reply_address>:
c0d006b0:	b580      	push	{r7, lr}
c0d006b2:	4807      	ldr	r0, [pc, #28]	; (c0d006d0 <app_reply_address+0x20>)
c0d006b4:	8800      	ldrh	r0, [r0, #0]
c0d006b6:	b2c1      	uxtb	r1, r0
c0d006b8:	4a06      	ldr	r2, [pc, #24]	; (c0d006d4 <app_reply_address+0x24>)
c0d006ba:	2390      	movs	r3, #144	; 0x90
c0d006bc:	5453      	strb	r3, [r2, r1]
c0d006be:	1851      	adds	r1, r2, r1
c0d006c0:	2200      	movs	r2, #0
c0d006c2:	704a      	strb	r2, [r1, #1]
c0d006c4:	1c80      	adds	r0, r0, #2
c0d006c6:	b281      	uxth	r1, r0
c0d006c8:	2020      	movs	r0, #32
c0d006ca:	f005 ff15 	bl	c0d064f8 <io_exchange>
c0d006ce:	bd80      	pop	{r7, pc}
c0d006d0:	20000200 	.word	0x20000200
c0d006d4:	20000bf8 	.word	0x20000bf8

c0d006d8 <app_sign>:
c0d006d8:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0d006da:	ad01      	add	r5, sp, #4
c0d006dc:	2600      	movs	r6, #0
c0d006de:	802e      	strh	r6, [r5, #0]
c0d006e0:	2041      	movs	r0, #65	; 0x41
c0d006e2:	0081      	lsls	r1, r0, #2
c0d006e4:	4c10      	ldr	r4, [pc, #64]	; (c0d00728 <app_sign+0x50>)
c0d006e6:	4620      	mov	r0, r4
c0d006e8:	f006 fcca 	bl	c0d07080 <explicit_bzero>
c0d006ec:	21ff      	movs	r1, #255	; 0xff
c0d006ee:	3102      	adds	r1, #2
c0d006f0:	4620      	mov	r0, r4
c0d006f2:	462a      	mov	r2, r5
c0d006f4:	f000 f8e4 	bl	c0d008c0 <crypto_sign>
c0d006f8:	2803      	cmp	r0, #3
c0d006fa:	d10a      	bne.n	c0d00712 <app_sign+0x3a>
c0d006fc:	a801      	add	r0, sp, #4
c0d006fe:	8800      	ldrh	r0, [r0, #0]
c0d00700:	2800      	cmp	r0, #0
c0d00702:	d006      	beq.n	c0d00712 <app_sign+0x3a>
c0d00704:	b2c1      	uxtb	r1, r0
c0d00706:	2290      	movs	r2, #144	; 0x90
c0d00708:	5462      	strb	r2, [r4, r1]
c0d0070a:	1861      	adds	r1, r4, r1
c0d0070c:	704e      	strb	r6, [r1, #1]
c0d0070e:	1c80      	adds	r0, r0, #2
c0d00710:	e004      	b.n	c0d0071c <app_sign+0x44>
c0d00712:	2001      	movs	r0, #1
c0d00714:	7060      	strb	r0, [r4, #1]
c0d00716:	206f      	movs	r0, #111	; 0x6f
c0d00718:	7020      	strb	r0, [r4, #0]
c0d0071a:	2002      	movs	r0, #2
c0d0071c:	b281      	uxth	r1, r0
c0d0071e:	2020      	movs	r0, #32
c0d00720:	f005 feea 	bl	c0d064f8 <io_exchange>
c0d00724:	bd7c      	pop	{r2, r3, r4, r5, r6, pc}
c0d00726:	46c0      	nop			; (mov r8, r8)
c0d00728:	20000bf8 	.word	0x20000bf8

c0d0072c <checkChainConfig>:
c0d0072c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0072e:	b085      	sub	sp, #20
c0d00730:	9202      	str	r2, [sp, #8]
c0d00732:	9101      	str	r1, [sp, #4]
c0d00734:	2101      	movs	r1, #1
c0d00736:	07c9      	lsls	r1, r1, #31
c0d00738:	9103      	str	r1, [sp, #12]
c0d0073a:	3176      	adds	r1, #118	; 0x76
c0d0073c:	9004      	str	r0, [sp, #16]
c0d0073e:	4288      	cmp	r0, r1
c0d00740:	d101      	bne.n	c0d00746 <checkChainConfig+0x1a>
c0d00742:	2000      	movs	r0, #0
c0d00744:	e01f      	b.n	c0d00786 <checkChainConfig+0x5a>
c0d00746:	2400      	movs	r4, #0
c0d00748:	4e11      	ldr	r6, [pc, #68]	; (c0d00790 <checkChainConfig+0x64>)
c0d0074a:	447e      	add	r6, pc
c0d0074c:	2c54      	cmp	r4, #84	; 0x54
c0d0074e:	d019      	beq.n	c0d00784 <checkChainConfig+0x58>
c0d00750:	5930      	ldr	r0, [r6, r4]
c0d00752:	9903      	ldr	r1, [sp, #12]
c0d00754:	4308      	orrs	r0, r1
c0d00756:	9904      	ldr	r1, [sp, #16]
c0d00758:	4288      	cmp	r0, r1
c0d0075a:	d111      	bne.n	c0d00780 <checkChainConfig+0x54>
c0d0075c:	1935      	adds	r5, r6, r4
c0d0075e:	6868      	ldr	r0, [r5, #4]
c0d00760:	f006 fb1a 	bl	c0d06d98 <pic>
c0d00764:	4607      	mov	r7, r0
c0d00766:	f006 fe0d 	bl	c0d07384 <strlen>
c0d0076a:	b280      	uxth	r0, r0
c0d0076c:	9902      	ldr	r1, [sp, #8]
c0d0076e:	4288      	cmp	r0, r1
c0d00770:	d106      	bne.n	c0d00780 <checkChainConfig+0x54>
c0d00772:	4638      	mov	r0, r7
c0d00774:	9901      	ldr	r1, [sp, #4]
c0d00776:	9a02      	ldr	r2, [sp, #8]
c0d00778:	f006 fc86 	bl	c0d07088 <memcmp>
c0d0077c:	2800      	cmp	r0, #0
c0d0077e:	d004      	beq.n	c0d0078a <checkChainConfig+0x5e>
c0d00780:	340c      	adds	r4, #12
c0d00782:	e7e3      	b.n	c0d0074c <checkChainConfig+0x20>
c0d00784:	20ff      	movs	r0, #255	; 0xff
c0d00786:	b005      	add	sp, #20
c0d00788:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0078a:	7a28      	ldrb	r0, [r5, #8]
c0d0078c:	e7fb      	b.n	c0d00786 <checkChainConfig+0x5a>
c0d0078e:	46c0      	nop			; (mov r8, r8)
c0d00790:	00007372 	.word	0x00007372

c0d00794 <tx_initialize>:
c0d00794:	b580      	push	{r7, lr}
c0d00796:	4805      	ldr	r0, [pc, #20]	; (c0d007ac <tx_initialize+0x18>)
c0d00798:	f006 fafe 	bl	c0d06d98 <pic>
c0d0079c:	4602      	mov	r2, r0
c0d0079e:	2001      	movs	r0, #1
c0d007a0:	0343      	lsls	r3, r0, #13
c0d007a2:	4803      	ldr	r0, [pc, #12]	; (c0d007b0 <tx_initialize+0x1c>)
c0d007a4:	2100      	movs	r1, #0
c0d007a6:	f004 f8a3 	bl	c0d048f0 <buffering_init>
c0d007aa:	bd80      	pop	{r7, pc}
c0d007ac:	c0d0a240 	.word	0xc0d0a240
c0d007b0:	20000202 	.word	0x20000202

c0d007b4 <tx_reset>:
c0d007b4:	b580      	push	{r7, lr}
c0d007b6:	f004 f8af 	bl	c0d04918 <buffering_reset>
c0d007ba:	bd80      	pop	{r7, pc}

c0d007bc <tx_append>:
c0d007bc:	b580      	push	{r7, lr}
c0d007be:	f004 f8bd 	bl	c0d0493c <buffering_append>
c0d007c2:	bd80      	pop	{r7, pc}

c0d007c4 <tx_get_buffer_length>:
c0d007c4:	b580      	push	{r7, lr}
c0d007c6:	f004 f8f9 	bl	c0d049bc <buffering_get_buffer>
c0d007ca:	6880      	ldr	r0, [r0, #8]
c0d007cc:	bd80      	pop	{r7, pc}

c0d007ce <tx_get_buffer>:
c0d007ce:	b580      	push	{r7, lr}
c0d007d0:	f004 f8f4 	bl	c0d049bc <buffering_get_buffer>
c0d007d4:	6800      	ldr	r0, [r0, #0]
c0d007d6:	bd80      	pop	{r7, pc}

c0d007d8 <tx_parse>:
c0d007d8:	b570      	push	{r4, r5, r6, lr}
c0d007da:	2800      	cmp	r0, #0
c0d007dc:	d001      	beq.n	c0d007e2 <tx_parse+0xa>
c0d007de:	250f      	movs	r5, #15
c0d007e0:	e021      	b.n	c0d00826 <tx_parse+0x4e>
c0d007e2:	20d1      	movs	r0, #209	; 0xd1
c0d007e4:	0081      	lsls	r1, r0, #2
c0d007e6:	4d13      	ldr	r5, [pc, #76]	; (c0d00834 <tx_parse+0x5c>)
c0d007e8:	4628      	mov	r0, r5
c0d007ea:	f006 fc49 	bl	c0d07080 <explicit_bzero>
c0d007ee:	2400      	movs	r4, #0
c0d007f0:	702c      	strb	r4, [r5, #0]
c0d007f2:	f004 f8e3 	bl	c0d049bc <buffering_get_buffer>
c0d007f6:	6806      	ldr	r6, [r0, #0]
c0d007f8:	f004 f8e0 	bl	c0d049bc <buffering_get_buffer>
c0d007fc:	6882      	ldr	r2, [r0, #8]
c0d007fe:	480e      	ldr	r0, [pc, #56]	; (c0d00838 <tx_parse+0x60>)
c0d00800:	4631      	mov	r1, r6
c0d00802:	462b      	mov	r3, r5
c0d00804:	f000 fb2e 	bl	c0d00e64 <parser_parse>
c0d00808:	4605      	mov	r5, r0
c0d0080a:	480c      	ldr	r0, [pc, #48]	; (c0d0083c <tx_parse+0x64>)
c0d0080c:	4478      	add	r0, pc
c0d0080e:	f004 fa5b 	bl	c0d04cc8 <zemu_log_stack>
c0d00812:	2d00      	cmp	r5, #0
c0d00814:	d107      	bne.n	c0d00826 <tx_parse+0x4e>
c0d00816:	4808      	ldr	r0, [pc, #32]	; (c0d00838 <tx_parse+0x60>)
c0d00818:	f000 fb56 	bl	c0d00ec8 <parser_validate>
c0d0081c:	4605      	mov	r5, r0
c0d0081e:	f004 fa43 	bl	c0d04ca8 <check_app_canary>
c0d00822:	2d00      	cmp	r5, #0
c0d00824:	d003      	beq.n	c0d0082e <tx_parse+0x56>
c0d00826:	4628      	mov	r0, r5
c0d00828:	f001 f9dc 	bl	c0d01be4 <parser_getErrorDescription>
c0d0082c:	4604      	mov	r4, r0
c0d0082e:	4620      	mov	r0, r4
c0d00830:	bd70      	pop	{r4, r5, r6, pc}
c0d00832:	46c0      	nop			; (mov r8, r8)
c0d00834:	20000204 	.word	0x20000204
c0d00838:	20000548 	.word	0x20000548
c0d0083c:	00007327 	.word	0x00007327

c0d00840 <tx_getNumItems>:
c0d00840:	b580      	push	{r7, lr}
c0d00842:	4601      	mov	r1, r0
c0d00844:	4804      	ldr	r0, [pc, #16]	; (c0d00858 <tx_getNumItems+0x18>)
c0d00846:	f000 fb7d 	bl	c0d00f44 <parser_getNumItems>
c0d0084a:	2800      	cmp	r0, #0
c0d0084c:	d001      	beq.n	c0d00852 <tx_getNumItems+0x12>
c0d0084e:	2005      	movs	r0, #5
c0d00850:	bd80      	pop	{r7, pc}
c0d00852:	2003      	movs	r0, #3
c0d00854:	bd80      	pop	{r7, pc}
c0d00856:	46c0      	nop			; (mov r8, r8)
c0d00858:	20000548 	.word	0x20000548

c0d0085c <tx_getItem>:
c0d0085c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0085e:	b087      	sub	sp, #28
c0d00860:	461f      	mov	r7, r3
c0d00862:	9205      	str	r2, [sp, #20]
c0d00864:	9104      	str	r1, [sp, #16]
c0d00866:	4605      	mov	r5, r0
c0d00868:	a806      	add	r0, sp, #24
c0d0086a:	2600      	movs	r6, #0
c0d0086c:	7006      	strb	r6, [r0, #0]
c0d0086e:	f7ff ffe7 	bl	c0d00840 <tx_getNumItems>
c0d00872:	4604      	mov	r4, r0
c0d00874:	2803      	cmp	r0, #3
c0d00876:	d11e      	bne.n	c0d008b6 <tx_getItem+0x5a>
c0d00878:	b2e9      	uxtb	r1, r5
c0d0087a:	b248      	sxtb	r0, r1
c0d0087c:	2405      	movs	r4, #5
c0d0087e:	2800      	cmp	r0, #0
c0d00880:	d419      	bmi.n	c0d008b6 <tx_getItem+0x5a>
c0d00882:	a806      	add	r0, sp, #24
c0d00884:	7800      	ldrb	r0, [r0, #0]
c0d00886:	4288      	cmp	r0, r1
c0d00888:	d315      	bcc.n	c0d008b6 <tx_getItem+0x5a>
c0d0088a:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d0088c:	9a0d      	ldr	r2, [sp, #52]	; 0x34
c0d0088e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0d00890:	9700      	str	r7, [sp, #0]
c0d00892:	9301      	str	r3, [sp, #4]
c0d00894:	9202      	str	r2, [sp, #8]
c0d00896:	9003      	str	r0, [sp, #12]
c0d00898:	4808      	ldr	r0, [pc, #32]	; (c0d008bc <tx_getItem+0x60>)
c0d0089a:	9a04      	ldr	r2, [sp, #16]
c0d0089c:	9b05      	ldr	r3, [sp, #20]
c0d0089e:	f000 fb6b 	bl	c0d00f78 <parser_getItem>
c0d008a2:	1ec1      	subs	r1, r0, #3
c0d008a4:	2902      	cmp	r1, #2
c0d008a6:	d306      	bcc.n	c0d008b6 <tx_getItem+0x5a>
c0d008a8:	2800      	cmp	r0, #0
c0d008aa:	d003      	beq.n	c0d008b4 <tx_getItem+0x58>
c0d008ac:	2801      	cmp	r0, #1
c0d008ae:	d002      	beq.n	c0d008b6 <tx_getItem+0x5a>
c0d008b0:	4634      	mov	r4, r6
c0d008b2:	e000      	b.n	c0d008b6 <tx_getItem+0x5a>
c0d008b4:	2403      	movs	r4, #3
c0d008b6:	4620      	mov	r0, r4
c0d008b8:	b007      	add	sp, #28
c0d008ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d008bc:	20000548 	.word	0x20000548

c0d008c0 <crypto_sign>:
c0d008c0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d008c2:	b0ab      	sub	sp, #172	; 0xac
c0d008c4:	270c      	movs	r7, #12
c0d008c6:	2800      	cmp	r0, #0
c0d008c8:	d066      	beq.n	c0d00998 <crypto_sign+0xd8>
c0d008ca:	4616      	mov	r6, r2
c0d008cc:	2a00      	cmp	r2, #0
c0d008ce:	d063      	beq.n	c0d00998 <crypto_sign+0xd8>
c0d008d0:	460c      	mov	r4, r1
c0d008d2:	2949      	cmp	r1, #73	; 0x49
c0d008d4:	d360      	bcc.n	c0d00998 <crypto_sign+0xd8>
c0d008d6:	4605      	mov	r5, r0
c0d008d8:	a823      	add	r0, sp, #140	; 0x8c
c0d008da:	2120      	movs	r1, #32
c0d008dc:	f006 fbba 	bl	c0d07054 <__aeabi_memclr>
c0d008e0:	f7ff ff75 	bl	c0d007ce <tx_get_buffer>
c0d008e4:	9006      	str	r0, [sp, #24]
c0d008e6:	f7ff ff6d 	bl	c0d007c4 <tx_get_buffer_length>
c0d008ea:	492d      	ldr	r1, [pc, #180]	; (c0d009a0 <crypto_sign+0xe0>)
c0d008ec:	7809      	ldrb	r1, [r1, #0]
c0d008ee:	2700      	movs	r7, #0
c0d008f0:	2901      	cmp	r1, #1
c0d008f2:	d008      	beq.n	c0d00906 <crypto_sign+0x46>
c0d008f4:	2900      	cmp	r1, #0
c0d008f6:	d14f      	bne.n	c0d00998 <crypto_sign+0xd8>
c0d008f8:	b281      	uxth	r1, r0
c0d008fa:	aa23      	add	r2, sp, #140	; 0x8c
c0d008fc:	2320      	movs	r3, #32
c0d008fe:	9806      	ldr	r0, [sp, #24]
c0d00900:	f005 fbb8 	bl	c0d06074 <cx_hash_sha256>
c0d00904:	e006      	b.n	c0d00914 <crypto_sign+0x54>
c0d00906:	b281      	uxth	r1, r0
c0d00908:	aa23      	add	r2, sp, #140	; 0x8c
c0d0090a:	9806      	ldr	r0, [sp, #24]
c0d0090c:	f000 f946 	bl	c0d00b9c <cx_keccak_256_hash>
c0d00910:	2800      	cmp	r0, #0
c0d00912:	d141      	bne.n	c0d00998 <crypto_sign+0xd8>
c0d00914:	9406      	str	r4, [sp, #24]
c0d00916:	f004 f9c7 	bl	c0d04ca8 <check_app_canary>
c0d0091a:	af09      	add	r7, sp, #36	; 0x24
c0d0091c:	2140      	movs	r1, #64	; 0x40
c0d0091e:	4638      	mov	r0, r7
c0d00920:	f006 fb98 	bl	c0d07054 <__aeabi_memclr>
c0d00924:	2049      	movs	r0, #73	; 0x49
c0d00926:	9008      	str	r0, [sp, #32]
c0d00928:	2400      	movs	r4, #0
c0d0092a:	8034      	strh	r4, [r6, #0]
c0d0092c:	9407      	str	r4, [sp, #28]
c0d0092e:	4638      	mov	r0, r7
c0d00930:	f000 f83a 	bl	c0d009a8 <os_derive_bip32_with_seed_no_throw>
c0d00934:	2800      	cmp	r0, #0
c0d00936:	4627      	mov	r7, r4
c0d00938:	d120      	bne.n	c0d0097c <crypto_sign+0xbc>
c0d0093a:	2021      	movs	r0, #33	; 0x21
c0d0093c:	a909      	add	r1, sp, #36	; 0x24
c0d0093e:	2220      	movs	r2, #32
c0d00940:	ab19      	add	r3, sp, #100	; 0x64
c0d00942:	9205      	str	r2, [sp, #20]
c0d00944:	f005 fb78 	bl	c0d06038 <cx_ecfp_init_private_key_no_throw>
c0d00948:	2400      	movs	r4, #0
c0d0094a:	2800      	cmp	r0, #0
c0d0094c:	4627      	mov	r7, r4
c0d0094e:	d115      	bne.n	c0d0097c <crypto_sign+0xbc>
c0d00950:	a807      	add	r0, sp, #28
c0d00952:	9003      	str	r0, [sp, #12]
c0d00954:	a808      	add	r0, sp, #32
c0d00956:	9002      	str	r0, [sp, #8]
c0d00958:	9501      	str	r5, [sp, #4]
c0d0095a:	9805      	ldr	r0, [sp, #20]
c0d0095c:	9000      	str	r0, [sp, #0]
c0d0095e:	a819      	add	r0, sp, #100	; 0x64
c0d00960:	4910      	ldr	r1, [pc, #64]	; (c0d009a4 <crypto_sign+0xe4>)
c0d00962:	2203      	movs	r2, #3
c0d00964:	ab23      	add	r3, sp, #140	; 0x8c
c0d00966:	9205      	str	r2, [sp, #20]
c0d00968:	f005 fb5a 	bl	c0d06020 <cx_ecdsa_sign_no_throw>
c0d0096c:	2400      	movs	r4, #0
c0d0096e:	2800      	cmp	r0, #0
c0d00970:	4627      	mov	r7, r4
c0d00972:	d103      	bne.n	c0d0097c <crypto_sign+0xbc>
c0d00974:	9808      	ldr	r0, [sp, #32]
c0d00976:	8030      	strh	r0, [r6, #0]
c0d00978:	2401      	movs	r4, #1
c0d0097a:	9f05      	ldr	r7, [sp, #20]
c0d0097c:	a819      	add	r0, sp, #100	; 0x64
c0d0097e:	2128      	movs	r1, #40	; 0x28
c0d00980:	f006 fb7e 	bl	c0d07080 <explicit_bzero>
c0d00984:	a809      	add	r0, sp, #36	; 0x24
c0d00986:	2140      	movs	r1, #64	; 0x40
c0d00988:	f006 fb7a 	bl	c0d07080 <explicit_bzero>
c0d0098c:	2c00      	cmp	r4, #0
c0d0098e:	d103      	bne.n	c0d00998 <crypto_sign+0xd8>
c0d00990:	4628      	mov	r0, r5
c0d00992:	9906      	ldr	r1, [sp, #24]
c0d00994:	f006 fb74 	bl	c0d07080 <explicit_bzero>
c0d00998:	4638      	mov	r0, r7
c0d0099a:	b02b      	add	sp, #172	; 0xac
c0d0099c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0099e:	46c0      	nop			; (mov r8, r8)
c0d009a0:	20000554 	.word	0x20000554
c0d009a4:	00000601 	.word	0x00000601

c0d009a8 <os_derive_bip32_with_seed_no_throw>:
c0d009a8:	b5b0      	push	{r4, r5, r7, lr}
c0d009aa:	b090      	sub	sp, #64	; 0x40
c0d009ac:	4605      	mov	r5, r0
c0d009ae:	ac04      	add	r4, sp, #16
c0d009b0:	4620      	mov	r0, r4
c0d009b2:	f006 fc89 	bl	c0d072c8 <setjmp>
c0d009b6:	85a0      	strh	r0, [r4, #44]	; 0x2c
c0d009b8:	b284      	uxth	r4, r0
c0d009ba:	2c00      	cmp	r4, #0
c0d009bc:	d00a      	beq.n	c0d009d4 <os_derive_bip32_with_seed_no_throw+0x2c>
c0d009be:	a804      	add	r0, sp, #16
c0d009c0:	2100      	movs	r1, #0
c0d009c2:	8581      	strh	r1, [r0, #44]	; 0x2c
c0d009c4:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d009c6:	f006 fabf 	bl	c0d06f48 <try_context_set>
c0d009ca:	2140      	movs	r1, #64	; 0x40
c0d009cc:	4628      	mov	r0, r5
c0d009ce:	f006 fb57 	bl	c0d07080 <explicit_bzero>
c0d009d2:	e00d      	b.n	c0d009f0 <os_derive_bip32_with_seed_no_throw+0x48>
c0d009d4:	a804      	add	r0, sp, #16
c0d009d6:	f006 fab7 	bl	c0d06f48 <try_context_set>
c0d009da:	900e      	str	r0, [sp, #56]	; 0x38
c0d009dc:	2000      	movs	r0, #0
c0d009de:	9500      	str	r5, [sp, #0]
c0d009e0:	9001      	str	r0, [sp, #4]
c0d009e2:	9002      	str	r0, [sp, #8]
c0d009e4:	9003      	str	r0, [sp, #12]
c0d009e6:	2121      	movs	r1, #33	; 0x21
c0d009e8:	4a0a      	ldr	r2, [pc, #40]	; (c0d00a14 <os_derive_bip32_with_seed_no_throw+0x6c>)
c0d009ea:	2305      	movs	r3, #5
c0d009ec:	f006 fa1a 	bl	c0d06e24 <os_perso_derive_node_with_seed_key>
c0d009f0:	f006 faa0 	bl	c0d06f34 <try_context_get>
c0d009f4:	a904      	add	r1, sp, #16
c0d009f6:	4288      	cmp	r0, r1
c0d009f8:	d102      	bne.n	c0d00a00 <os_derive_bip32_with_seed_no_throw+0x58>
c0d009fa:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d009fc:	f006 faa4 	bl	c0d06f48 <try_context_set>
c0d00a00:	a804      	add	r0, sp, #16
c0d00a02:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d00a04:	2800      	cmp	r0, #0
c0d00a06:	d102      	bne.n	c0d00a0e <os_derive_bip32_with_seed_no_throw+0x66>
c0d00a08:	4620      	mov	r0, r4
c0d00a0a:	b010      	add	sp, #64	; 0x40
c0d00a0c:	bdb0      	pop	{r4, r5, r7, pc}
c0d00a0e:	f005 fb52 	bl	c0d060b6 <os_longjmp>
c0d00a12:	46c0      	nop			; (mov r8, r8)
c0d00a14:	20000558 	.word	0x20000558

c0d00a18 <crypto_fillAddress>:
c0d00a18:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00a1a:	b0c5      	sub	sp, #276	; 0x114
c0d00a1c:	2953      	cmp	r1, #83	; 0x53
c0d00a1e:	d201      	bcs.n	c0d00a24 <crypto_fillAddress+0xc>
c0d00a20:	2406      	movs	r4, #6
c0d00a22:	e0b4      	b.n	c0d00b8e <crypto_fillAddress+0x176>
c0d00a24:	4606      	mov	r6, r0
c0d00a26:	9105      	str	r1, [sp, #20]
c0d00a28:	9206      	str	r2, [sp, #24]
c0d00a2a:	a807      	add	r0, sp, #28
c0d00a2c:	2141      	movs	r1, #65	; 0x41
c0d00a2e:	f006 fb11 	bl	c0d07054 <__aeabi_memclr>
c0d00a32:	a832      	add	r0, sp, #200	; 0xc8
c0d00a34:	214c      	movs	r1, #76	; 0x4c
c0d00a36:	f006 fb0d 	bl	c0d07054 <__aeabi_memclr>
c0d00a3a:	a828      	add	r0, sp, #160	; 0xa0
c0d00a3c:	2128      	movs	r1, #40	; 0x28
c0d00a3e:	f006 fb09 	bl	c0d07054 <__aeabi_memclr>
c0d00a42:	ac18      	add	r4, sp, #96	; 0x60
c0d00a44:	2140      	movs	r1, #64	; 0x40
c0d00a46:	4620      	mov	r0, r4
c0d00a48:	f006 fb04 	bl	c0d07054 <__aeabi_memclr>
c0d00a4c:	4620      	mov	r0, r4
c0d00a4e:	f7ff ffab 	bl	c0d009a8 <os_derive_bip32_with_seed_no_throw>
c0d00a52:	2700      	movs	r7, #0
c0d00a54:	2800      	cmp	r0, #0
c0d00a56:	463c      	mov	r4, r7
c0d00a58:	d126      	bne.n	c0d00aa8 <crypto_fillAddress+0x90>
c0d00a5a:	2021      	movs	r0, #33	; 0x21
c0d00a5c:	a918      	add	r1, sp, #96	; 0x60
c0d00a5e:	2220      	movs	r2, #32
c0d00a60:	ab28      	add	r3, sp, #160	; 0xa0
c0d00a62:	f005 fae9 	bl	c0d06038 <cx_ecfp_init_private_key_no_throw>
c0d00a66:	2700      	movs	r7, #0
c0d00a68:	2800      	cmp	r0, #0
c0d00a6a:	463c      	mov	r4, r7
c0d00a6c:	d11c      	bne.n	c0d00aa8 <crypto_fillAddress+0x90>
c0d00a6e:	2021      	movs	r0, #33	; 0x21
c0d00a70:	2700      	movs	r7, #0
c0d00a72:	ab32      	add	r3, sp, #200	; 0xc8
c0d00a74:	4639      	mov	r1, r7
c0d00a76:	463a      	mov	r2, r7
c0d00a78:	f005 fae4 	bl	c0d06044 <cx_ecfp_init_public_key_no_throw>
c0d00a7c:	2800      	cmp	r0, #0
c0d00a7e:	463c      	mov	r4, r7
c0d00a80:	d112      	bne.n	c0d00aa8 <crypto_fillAddress+0x90>
c0d00a82:	2021      	movs	r0, #33	; 0x21
c0d00a84:	a932      	add	r1, sp, #200	; 0xc8
c0d00a86:	aa28      	add	r2, sp, #160	; 0xa0
c0d00a88:	2501      	movs	r5, #1
c0d00a8a:	462b      	mov	r3, r5
c0d00a8c:	f005 face 	bl	c0d0602c <cx_ecfp_generate_pair_no_throw>
c0d00a90:	2700      	movs	r7, #0
c0d00a92:	2800      	cmp	r0, #0
c0d00a94:	463c      	mov	r4, r7
c0d00a96:	d107      	bne.n	c0d00aa8 <crypto_fillAddress+0x90>
c0d00a98:	a932      	add	r1, sp, #200	; 0xc8
c0d00a9a:	3108      	adds	r1, #8
c0d00a9c:	a807      	add	r0, sp, #28
c0d00a9e:	2241      	movs	r2, #65	; 0x41
c0d00aa0:	f006 fade 	bl	c0d07060 <__aeabi_memcpy>
c0d00aa4:	2403      	movs	r4, #3
c0d00aa6:	462f      	mov	r7, r5
c0d00aa8:	a828      	add	r0, sp, #160	; 0xa0
c0d00aaa:	2128      	movs	r1, #40	; 0x28
c0d00aac:	f006 fae8 	bl	c0d07080 <explicit_bzero>
c0d00ab0:	a818      	add	r0, sp, #96	; 0x60
c0d00ab2:	2540      	movs	r5, #64	; 0x40
c0d00ab4:	4629      	mov	r1, r5
c0d00ab6:	f006 fae3 	bl	c0d07080 <explicit_bzero>
c0d00aba:	2f00      	cmp	r7, #0
c0d00abc:	d039      	beq.n	c0d00b32 <crypto_fillAddress+0x11a>
c0d00abe:	2e00      	cmp	r6, #0
c0d00ac0:	d03c      	beq.n	c0d00b3c <crypto_fillAddress+0x124>
c0d00ac2:	ac07      	add	r4, sp, #28
c0d00ac4:	2221      	movs	r2, #33	; 0x21
c0d00ac6:	4630      	mov	r0, r6
c0d00ac8:	4621      	mov	r1, r4
c0d00aca:	f006 fac9 	bl	c0d07060 <__aeabi_memcpy>
c0d00ace:	5d60      	ldrb	r0, [r4, r5]
c0d00ad0:	2501      	movs	r5, #1
c0d00ad2:	4028      	ands	r0, r5
c0d00ad4:	1c80      	adds	r0, r0, #2
c0d00ad6:	7030      	strb	r0, [r6, #0]
c0d00ad8:	a832      	add	r0, sp, #200	; 0xc8
c0d00ada:	2420      	movs	r4, #32
c0d00adc:	4621      	mov	r1, r4
c0d00ade:	f006 fab9 	bl	c0d07054 <__aeabi_memclr>
c0d00ae2:	4637      	mov	r7, r6
c0d00ae4:	3721      	adds	r7, #33	; 0x21
c0d00ae6:	482b      	ldr	r0, [pc, #172]	; (c0d00b94 <crypto_fillAddress+0x17c>)
c0d00ae8:	7800      	ldrb	r0, [r0, #0]
c0d00aea:	2801      	cmp	r0, #1
c0d00aec:	d028      	beq.n	c0d00b40 <crypto_fillAddress+0x128>
c0d00aee:	2800      	cmp	r0, #0
c0d00af0:	d130      	bne.n	c0d00b54 <crypto_fillAddress+0x13c>
c0d00af2:	2121      	movs	r1, #33	; 0x21
c0d00af4:	ad32      	add	r5, sp, #200	; 0xc8
c0d00af6:	4630      	mov	r0, r6
c0d00af8:	462a      	mov	r2, r5
c0d00afa:	4623      	mov	r3, r4
c0d00afc:	f005 faba 	bl	c0d06074 <cx_hash_sha256>
c0d00b00:	ae18      	add	r6, sp, #96	; 0x60
c0d00b02:	2114      	movs	r1, #20
c0d00b04:	4630      	mov	r0, r6
c0d00b06:	9104      	str	r1, [sp, #16]
c0d00b08:	f006 faa4 	bl	c0d07054 <__aeabi_memclr>
c0d00b0c:	9429      	str	r4, [sp, #164]	; 0xa4
c0d00b0e:	9528      	str	r5, [sp, #160]	; 0xa0
c0d00b10:	a828      	add	r0, sp, #160	; 0xa0
c0d00b12:	2401      	movs	r4, #1
c0d00b14:	4621      	mov	r1, r4
c0d00b16:	4632      	mov	r2, r6
c0d00b18:	f005 fa1c 	bl	c0d05f54 <cx_ripemd160_hash_iovec>
c0d00b1c:	2800      	cmp	r0, #0
c0d00b1e:	d117      	bne.n	c0d00b50 <crypto_fillAddress+0x138>
c0d00b20:	9804      	ldr	r0, [sp, #16]
c0d00b22:	9000      	str	r0, [sp, #0]
c0d00b24:	9401      	str	r4, [sp, #4]
c0d00b26:	9402      	str	r4, [sp, #8]
c0d00b28:	9d05      	ldr	r5, [sp, #20]
c0d00b2a:	3d21      	subs	r5, #33	; 0x21
c0d00b2c:	4a1a      	ldr	r2, [pc, #104]	; (c0d00b98 <crypto_fillAddress+0x180>)
c0d00b2e:	ab18      	add	r3, sp, #96	; 0x60
c0d00b30:	e01e      	b.n	c0d00b70 <crypto_fillAddress+0x158>
c0d00b32:	a807      	add	r0, sp, #28
c0d00b34:	2141      	movs	r1, #65	; 0x41
c0d00b36:	f006 faa3 	bl	c0d07080 <explicit_bzero>
c0d00b3a:	e028      	b.n	c0d00b8e <crypto_fillAddress+0x176>
c0d00b3c:	240c      	movs	r4, #12
c0d00b3e:	e026      	b.n	c0d00b8e <crypto_fillAddress+0x176>
c0d00b40:	a807      	add	r0, sp, #28
c0d00b42:	1c40      	adds	r0, r0, #1
c0d00b44:	2140      	movs	r1, #64	; 0x40
c0d00b46:	aa32      	add	r2, sp, #200	; 0xc8
c0d00b48:	f000 f828 	bl	c0d00b9c <cx_keccak_256_hash>
c0d00b4c:	2800      	cmp	r0, #0
c0d00b4e:	d006      	beq.n	c0d00b5e <crypto_fillAddress+0x146>
c0d00b50:	2400      	movs	r4, #0
c0d00b52:	e01c      	b.n	c0d00b8e <crypto_fillAddress+0x176>
c0d00b54:	2000      	movs	r0, #0
c0d00b56:	9906      	ldr	r1, [sp, #24]
c0d00b58:	8008      	strh	r0, [r1, #0]
c0d00b5a:	240a      	movs	r4, #10
c0d00b5c:	e017      	b.n	c0d00b8e <crypto_fillAddress+0x176>
c0d00b5e:	2014      	movs	r0, #20
c0d00b60:	9000      	str	r0, [sp, #0]
c0d00b62:	9501      	str	r5, [sp, #4]
c0d00b64:	9502      	str	r5, [sp, #8]
c0d00b66:	9d05      	ldr	r5, [sp, #20]
c0d00b68:	3d21      	subs	r5, #33	; 0x21
c0d00b6a:	ab32      	add	r3, sp, #200	; 0xc8
c0d00b6c:	330c      	adds	r3, #12
c0d00b6e:	4a0a      	ldr	r2, [pc, #40]	; (c0d00b98 <crypto_fillAddress+0x180>)
c0d00b70:	4638      	mov	r0, r7
c0d00b72:	4629      	mov	r1, r5
c0d00b74:	f003 fe7e 	bl	c0d04874 <bech32EncodeFromBytes>
c0d00b78:	4604      	mov	r4, r0
c0d00b7a:	2803      	cmp	r0, #3
c0d00b7c:	d107      	bne.n	c0d00b8e <crypto_fillAddress+0x176>
c0d00b7e:	4638      	mov	r0, r7
c0d00b80:	4629      	mov	r1, r5
c0d00b82:	f006 fc9d 	bl	c0d074c0 <strnlen>
c0d00b86:	3021      	adds	r0, #33	; 0x21
c0d00b88:	9906      	ldr	r1, [sp, #24]
c0d00b8a:	8008      	strh	r0, [r1, #0]
c0d00b8c:	2403      	movs	r4, #3
c0d00b8e:	4620      	mov	r0, r4
c0d00b90:	b045      	add	sp, #276	; 0x114
c0d00b92:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d00b94:	20000554 	.word	0x20000554
c0d00b98:	2000056c 	.word	0x2000056c

c0d00b9c <cx_keccak_256_hash>:
c0d00b9c:	b5e0      	push	{r5, r6, r7, lr}
c0d00b9e:	9101      	str	r1, [sp, #4]
c0d00ba0:	9000      	str	r0, [sp, #0]
c0d00ba2:	4668      	mov	r0, sp
c0d00ba4:	2101      	movs	r1, #1
c0d00ba6:	f005 fa2f 	bl	c0d06008 <cx_keccak_256_hash_iovec>
c0d00baa:	bd8c      	pop	{r2, r3, r7, pc}

c0d00bac <json_parse>:
c0d00bac:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00bae:	b085      	sub	sp, #20
c0d00bb0:	460e      	mov	r6, r1
c0d00bb2:	4604      	mov	r4, r0
c0d00bb4:	2101      	movs	r1, #1
c0d00bb6:	0348      	lsls	r0, r1, #13
c0d00bb8:	4282      	cmp	r2, r0
c0d00bba:	d901      	bls.n	c0d00bc0 <json_parse+0x14>
c0d00bbc:	2025      	movs	r0, #37	; 0x25
c0d00bbe:	e035      	b.n	c0d00c2c <json_parse+0x80>
c0d00bc0:	4615      	mov	r5, r2
c0d00bc2:	9101      	str	r1, [sp, #4]
c0d00bc4:	2061      	movs	r0, #97	; 0x61
c0d00bc6:	00c0      	lsls	r0, r0, #3
c0d00bc8:	1827      	adds	r7, r4, r0
c0d00bca:	a803      	add	r0, sp, #12
c0d00bcc:	9002      	str	r0, [sp, #8]
c0d00bce:	f002 fb91 	bl	c0d032f4 <jsmn_init>
c0d00bd2:	2031      	movs	r0, #49	; 0x31
c0d00bd4:	0101      	lsls	r1, r0, #4
c0d00bd6:	4620      	mov	r0, r4
c0d00bd8:	f006 fa52 	bl	c0d07080 <explicit_bzero>
c0d00bdc:	80bd      	strh	r5, [r7, #4]
c0d00bde:	603e      	str	r6, [r7, #0]
c0d00be0:	2060      	movs	r0, #96	; 0x60
c0d00be2:	9000      	str	r0, [sp, #0]
c0d00be4:	4623      	mov	r3, r4
c0d00be6:	3308      	adds	r3, #8
c0d00be8:	9802      	ldr	r0, [sp, #8]
c0d00bea:	4631      	mov	r1, r6
c0d00bec:	462a      	mov	r2, r5
c0d00bee:	f002 f9b5 	bl	c0d02f5c <jsmn_parse>
c0d00bf2:	4601      	mov	r1, r0
c0d00bf4:	2800      	cmp	r0, #0
c0d00bf6:	d40a      	bmi.n	c0d00c0e <json_parse+0x62>
c0d00bf8:	2000      	movs	r0, #0
c0d00bfa:	7020      	strb	r0, [r4, #0]
c0d00bfc:	6060      	str	r0, [r4, #4]
c0d00bfe:	2900      	cmp	r1, #0
c0d00c00:	d00f      	beq.n	c0d00c22 <json_parse+0x76>
c0d00c02:	2960      	cmp	r1, #96	; 0x60
c0d00c04:	dc0b      	bgt.n	c0d00c1e <json_parse+0x72>
c0d00c06:	9a01      	ldr	r2, [sp, #4]
c0d00c08:	7022      	strb	r2, [r4, #0]
c0d00c0a:	6061      	str	r1, [r4, #4]
c0d00c0c:	e00e      	b.n	c0d00c2c <json_parse+0x80>
c0d00c0e:	1cc8      	adds	r0, r1, #3
c0d00c10:	d009      	beq.n	c0d00c26 <json_parse+0x7a>
c0d00c12:	1c48      	adds	r0, r1, #1
c0d00c14:	d003      	beq.n	c0d00c1e <json_parse+0x72>
c0d00c16:	1c88      	adds	r0, r1, #2
c0d00c18:	d107      	bne.n	c0d00c2a <json_parse+0x7e>
c0d00c1a:	200c      	movs	r0, #12
c0d00c1c:	e006      	b.n	c0d00c2c <json_parse+0x80>
c0d00c1e:	2016      	movs	r0, #22
c0d00c20:	e004      	b.n	c0d00c2c <json_parse+0x80>
c0d00c22:	2015      	movs	r0, #21
c0d00c24:	e002      	b.n	c0d00c2c <json_parse+0x80>
c0d00c26:	2017      	movs	r0, #23
c0d00c28:	e000      	b.n	c0d00c2c <json_parse+0x80>
c0d00c2a:	2020      	movs	r0, #32
c0d00c2c:	b005      	add	sp, #20
c0d00c2e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d00c30 <array_get_element_count>:
c0d00c30:	b5fc      	push	{r2, r3, r4, r5, r6, r7, lr}
c0d00c32:	2300      	movs	r3, #0
c0d00c34:	8013      	strh	r3, [r2, #0]
c0d00c36:	6845      	ldr	r5, [r0, #4]
c0d00c38:	428d      	cmp	r5, r1
c0d00c3a:	d202      	bcs.n	c0d00c42 <array_get_element_count+0x12>
c0d00c3c:	2301      	movs	r3, #1
c0d00c3e:	4618      	mov	r0, r3
c0d00c40:	bdfc      	pop	{r2, r3, r4, r5, r6, r7, pc}
c0d00c42:	9301      	str	r3, [sp, #4]
c0d00c44:	9200      	str	r2, [sp, #0]
c0d00c46:	00ca      	lsls	r2, r1, #3
c0d00c48:	1882      	adds	r2, r0, r2
c0d00c4a:	230c      	movs	r3, #12
c0d00c4c:	5ed6      	ldrsh	r6, [r2, r3]
c0d00c4e:	8953      	ldrh	r3, [r2, #10]
c0d00c50:	b29f      	uxth	r7, r3
c0d00c52:	1c49      	adds	r1, r1, #1
c0d00c54:	b28a      	uxth	r2, r1
c0d00c56:	2300      	movs	r3, #0
c0d00c58:	4295      	cmp	r5, r2
c0d00c5a:	d9f0      	bls.n	c0d00c3e <array_get_element_count+0xe>
c0d00c5c:	00d2      	lsls	r2, r2, #3
c0d00c5e:	1884      	adds	r4, r0, r2
c0d00c60:	220a      	movs	r2, #10
c0d00c62:	5ea2      	ldrsh	r2, [r4, r2]
c0d00c64:	42b2      	cmp	r2, r6
c0d00c66:	dcea      	bgt.n	c0d00c3e <array_get_element_count+0xe>
c0d00c68:	42ba      	cmp	r2, r7
c0d00c6a:	ddf2      	ble.n	c0d00c52 <array_get_element_count+0x22>
c0d00c6c:	89a3      	ldrh	r3, [r4, #12]
c0d00c6e:	9c01      	ldr	r4, [sp, #4]
c0d00c70:	1c64      	adds	r4, r4, #1
c0d00c72:	9a00      	ldr	r2, [sp, #0]
c0d00c74:	9401      	str	r4, [sp, #4]
c0d00c76:	8014      	strh	r4, [r2, #0]
c0d00c78:	e7ea      	b.n	c0d00c50 <array_get_element_count+0x20>

c0d00c7a <array_get_nth_element>:
c0d00c7a:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0d00c7c:	9302      	str	r3, [sp, #8]
c0d00c7e:	4604      	mov	r4, r0
c0d00c80:	6845      	ldr	r5, [r0, #4]
c0d00c82:	2001      	movs	r0, #1
c0d00c84:	428d      	cmp	r5, r1
c0d00c86:	d200      	bcs.n	c0d00c8a <array_get_nth_element+0x10>
c0d00c88:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0d00c8a:	9200      	str	r2, [sp, #0]
c0d00c8c:	9001      	str	r0, [sp, #4]
c0d00c8e:	00c8      	lsls	r0, r1, #3
c0d00c90:	1822      	adds	r2, r4, r0
c0d00c92:	200c      	movs	r0, #12
c0d00c94:	5e13      	ldrsh	r3, [r2, r0]
c0d00c96:	8952      	ldrh	r2, [r2, #10]
c0d00c98:	2600      	movs	r6, #0
c0d00c9a:	b297      	uxth	r7, r2
c0d00c9c:	1c49      	adds	r1, r1, #1
c0d00c9e:	9802      	ldr	r0, [sp, #8]
c0d00ca0:	8001      	strh	r1, [r0, #0]
c0d00ca2:	b28a      	uxth	r2, r1
c0d00ca4:	4295      	cmp	r5, r2
c0d00ca6:	d911      	bls.n	c0d00ccc <array_get_nth_element+0x52>
c0d00ca8:	4630      	mov	r0, r6
c0d00caa:	00d2      	lsls	r2, r2, #3
c0d00cac:	18a2      	adds	r2, r4, r2
c0d00cae:	260a      	movs	r6, #10
c0d00cb0:	5f96      	ldrsh	r6, [r2, r6]
c0d00cb2:	429e      	cmp	r6, r3
c0d00cb4:	dc0a      	bgt.n	c0d00ccc <array_get_nth_element+0x52>
c0d00cb6:	42be      	cmp	r6, r7
c0d00cb8:	4606      	mov	r6, r0
c0d00cba:	ddef      	ble.n	c0d00c9c <array_get_nth_element+0x22>
c0d00cbc:	4630      	mov	r0, r6
c0d00cbe:	b2b6      	uxth	r6, r6
c0d00cc0:	9f00      	ldr	r7, [sp, #0]
c0d00cc2:	42be      	cmp	r6, r7
c0d00cc4:	d004      	beq.n	c0d00cd0 <array_get_nth_element+0x56>
c0d00cc6:	8992      	ldrh	r2, [r2, #12]
c0d00cc8:	1c46      	adds	r6, r0, #1
c0d00cca:	e7e6      	b.n	c0d00c9a <array_get_nth_element+0x20>
c0d00ccc:	9801      	ldr	r0, [sp, #4]
c0d00cce:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0d00cd0:	2000      	movs	r0, #0
c0d00cd2:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0d00cd4 <object_get_element_count>:
c0d00cd4:	b5fc      	push	{r2, r3, r4, r5, r6, r7, lr}
c0d00cd6:	2300      	movs	r3, #0
c0d00cd8:	8013      	strh	r3, [r2, #0]
c0d00cda:	6844      	ldr	r4, [r0, #4]
c0d00cdc:	428c      	cmp	r4, r1
c0d00cde:	d202      	bcs.n	c0d00ce6 <object_get_element_count+0x12>
c0d00ce0:	2101      	movs	r1, #1
c0d00ce2:	4608      	mov	r0, r1
c0d00ce4:	bdfc      	pop	{r2, r3, r4, r5, r6, r7, pc}
c0d00ce6:	9301      	str	r3, [sp, #4]
c0d00ce8:	9200      	str	r2, [sp, #0]
c0d00cea:	00cb      	lsls	r3, r1, #3
c0d00cec:	18c3      	adds	r3, r0, r3
c0d00cee:	250c      	movs	r5, #12
c0d00cf0:	5f5d      	ldrsh	r5, [r3, r5]
c0d00cf2:	895f      	ldrh	r7, [r3, #10]
c0d00cf4:	1c4e      	adds	r6, r1, #1
c0d00cf6:	b2bf      	uxth	r7, r7
c0d00cf8:	b2b3      	uxth	r3, r6
c0d00cfa:	2100      	movs	r1, #0
c0d00cfc:	429c      	cmp	r4, r3
c0d00cfe:	d9f0      	bls.n	c0d00ce2 <object_get_element_count+0xe>
c0d00d00:	00db      	lsls	r3, r3, #3
c0d00d02:	18c3      	adds	r3, r0, r3
c0d00d04:	220a      	movs	r2, #10
c0d00d06:	5e9b      	ldrsh	r3, [r3, r2]
c0d00d08:	42ab      	cmp	r3, r5
c0d00d0a:	dcea      	bgt.n	c0d00ce2 <object_get_element_count+0xe>
c0d00d0c:	1c76      	adds	r6, r6, #1
c0d00d0e:	42bb      	cmp	r3, r7
c0d00d10:	ddf2      	ble.n	c0d00cf8 <object_get_element_count+0x24>
c0d00d12:	b2b1      	uxth	r1, r6
c0d00d14:	00c9      	lsls	r1, r1, #3
c0d00d16:	1841      	adds	r1, r0, r1
c0d00d18:	898f      	ldrh	r7, [r1, #12]
c0d00d1a:	9a01      	ldr	r2, [sp, #4]
c0d00d1c:	1c52      	adds	r2, r2, #1
c0d00d1e:	9900      	ldr	r1, [sp, #0]
c0d00d20:	9201      	str	r2, [sp, #4]
c0d00d22:	800a      	strh	r2, [r1, #0]
c0d00d24:	e7e7      	b.n	c0d00cf6 <object_get_element_count+0x22>

c0d00d26 <object_get_nth_key>:
c0d00d26:	b5ff      	push	{r0, r1, r2, r3, r4, r5, r6, r7, lr}
c0d00d28:	4604      	mov	r4, r0
c0d00d2a:	8019      	strh	r1, [r3, #0]
c0d00d2c:	6845      	ldr	r5, [r0, #4]
c0d00d2e:	2001      	movs	r0, #1
c0d00d30:	428d      	cmp	r5, r1
c0d00d32:	d328      	bcc.n	c0d00d86 <object_get_nth_key+0x60>
c0d00d34:	9200      	str	r2, [sp, #0]
c0d00d36:	9002      	str	r0, [sp, #8]
c0d00d38:	00c8      	lsls	r0, r1, #3
c0d00d3a:	1822      	adds	r2, r4, r0
c0d00d3c:	200c      	movs	r0, #12
c0d00d3e:	5e10      	ldrsh	r0, [r2, r0]
c0d00d40:	9003      	str	r0, [sp, #12]
c0d00d42:	8952      	ldrh	r2, [r2, #10]
c0d00d44:	1c49      	adds	r1, r1, #1
c0d00d46:	8019      	strh	r1, [r3, #0]
c0d00d48:	2000      	movs	r0, #0
c0d00d4a:	9001      	str	r0, [sp, #4]
c0d00d4c:	b292      	uxth	r2, r2
c0d00d4e:	b28e      	uxth	r6, r1
c0d00d50:	42b5      	cmp	r5, r6
c0d00d52:	d917      	bls.n	c0d00d84 <object_get_nth_key+0x5e>
c0d00d54:	460f      	mov	r7, r1
c0d00d56:	1c49      	adds	r1, r1, #1
c0d00d58:	8019      	strh	r1, [r3, #0]
c0d00d5a:	00f6      	lsls	r6, r6, #3
c0d00d5c:	19a6      	adds	r6, r4, r6
c0d00d5e:	200a      	movs	r0, #10
c0d00d60:	5e36      	ldrsh	r6, [r6, r0]
c0d00d62:	9803      	ldr	r0, [sp, #12]
c0d00d64:	4286      	cmp	r6, r0
c0d00d66:	dc0d      	bgt.n	c0d00d84 <object_get_nth_key+0x5e>
c0d00d68:	4296      	cmp	r6, r2
c0d00d6a:	ddf0      	ble.n	c0d00d4e <object_get_nth_key+0x28>
c0d00d6c:	9e01      	ldr	r6, [sp, #4]
c0d00d6e:	b2b0      	uxth	r0, r6
c0d00d70:	9a00      	ldr	r2, [sp, #0]
c0d00d72:	4290      	cmp	r0, r2
c0d00d74:	d009      	beq.n	c0d00d8a <object_get_nth_key+0x64>
c0d00d76:	b288      	uxth	r0, r1
c0d00d78:	00c0      	lsls	r0, r0, #3
c0d00d7a:	1820      	adds	r0, r4, r0
c0d00d7c:	8982      	ldrh	r2, [r0, #12]
c0d00d7e:	1c76      	adds	r6, r6, #1
c0d00d80:	9601      	str	r6, [sp, #4]
c0d00d82:	e7e3      	b.n	c0d00d4c <object_get_nth_key+0x26>
c0d00d84:	9802      	ldr	r0, [sp, #8]
c0d00d86:	b004      	add	sp, #16
c0d00d88:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d00d8a:	801f      	strh	r7, [r3, #0]
c0d00d8c:	2000      	movs	r0, #0
c0d00d8e:	e7fa      	b.n	c0d00d86 <object_get_nth_key+0x60>

c0d00d90 <object_get_nth_value>:
c0d00d90:	b5b0      	push	{r4, r5, r7, lr}
c0d00d92:	461c      	mov	r4, r3
c0d00d94:	6843      	ldr	r3, [r0, #4]
c0d00d96:	428b      	cmp	r3, r1
c0d00d98:	d201      	bcs.n	c0d00d9e <object_get_nth_value+0xe>
c0d00d9a:	2501      	movs	r5, #1
c0d00d9c:	e00b      	b.n	c0d00db6 <object_get_nth_value+0x26>
c0d00d9e:	4623      	mov	r3, r4
c0d00da0:	f7ff ffc1 	bl	c0d00d26 <object_get_nth_key>
c0d00da4:	4605      	mov	r5, r0
c0d00da6:	f003 ff7f 	bl	c0d04ca8 <check_app_canary>
c0d00daa:	2d00      	cmp	r5, #0
c0d00dac:	d103      	bne.n	c0d00db6 <object_get_nth_value+0x26>
c0d00dae:	8820      	ldrh	r0, [r4, #0]
c0d00db0:	1c40      	adds	r0, r0, #1
c0d00db2:	8020      	strh	r0, [r4, #0]
c0d00db4:	2500      	movs	r5, #0
c0d00db6:	4628      	mov	r0, r5
c0d00db8:	bdb0      	pop	{r4, r5, r7, pc}

c0d00dba <object_get_value>:
c0d00dba:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00dbc:	b089      	sub	sp, #36	; 0x24
c0d00dbe:	4607      	mov	r7, r0
c0d00dc0:	6846      	ldr	r6, [r0, #4]
c0d00dc2:	2001      	movs	r0, #1
c0d00dc4:	428e      	cmp	r6, r1
c0d00dc6:	d349      	bcc.n	c0d00e5c <object_get_value+0xa2>
c0d00dc8:	9005      	str	r0, [sp, #20]
c0d00dca:	9204      	str	r2, [sp, #16]
c0d00dcc:	00c8      	lsls	r0, r1, #3
c0d00dce:	1838      	adds	r0, r7, r0
c0d00dd0:	220c      	movs	r2, #12
c0d00dd2:	5e84      	ldrsh	r4, [r0, r2]
c0d00dd4:	9408      	str	r4, [sp, #32]
c0d00dd6:	240a      	movs	r4, #10
c0d00dd8:	9407      	str	r4, [sp, #28]
c0d00dda:	5f00      	ldrsh	r0, [r0, r4]
c0d00ddc:	9006      	str	r0, [sp, #24]
c0d00dde:	1c4c      	adds	r4, r1, #1
c0d00de0:	801c      	strh	r4, [r3, #0]
c0d00de2:	2061      	movs	r0, #97	; 0x61
c0d00de4:	00c0      	lsls	r0, r0, #3
c0d00de6:	1838      	adds	r0, r7, r0
c0d00de8:	9003      	str	r0, [sp, #12]
c0d00dea:	b2a0      	uxth	r0, r4
c0d00dec:	4286      	cmp	r6, r0
c0d00dee:	d934      	bls.n	c0d00e5a <object_get_value+0xa0>
c0d00df0:	00c0      	lsls	r0, r0, #3
c0d00df2:	1839      	adds	r1, r7, r0
c0d00df4:	5e88      	ldrsh	r0, [r1, r2]
c0d00df6:	9d07      	ldr	r5, [sp, #28]
c0d00df8:	5f4d      	ldrsh	r5, [r1, r5]
c0d00dfa:	1c64      	adds	r4, r4, #1
c0d00dfc:	801c      	strh	r4, [r3, #0]
c0d00dfe:	9908      	ldr	r1, [sp, #32]
c0d00e00:	428d      	cmp	r5, r1
c0d00e02:	dc2a      	bgt.n	c0d00e5a <object_get_value+0xa0>
c0d00e04:	9906      	ldr	r1, [sp, #24]
c0d00e06:	42a9      	cmp	r1, r5
c0d00e08:	daef      	bge.n	c0d00dea <object_get_value+0x30>
c0d00e0a:	b2a1      	uxth	r1, r4
c0d00e0c:	00c9      	lsls	r1, r1, #3
c0d00e0e:	1879      	adds	r1, r7, r1
c0d00e10:	5e89      	ldrsh	r1, [r1, r2]
c0d00e12:	9106      	str	r1, [sp, #24]
c0d00e14:	1b40      	subs	r0, r0, r5
c0d00e16:	9000      	str	r0, [sp, #0]
c0d00e18:	9804      	ldr	r0, [sp, #16]
c0d00e1a:	9302      	str	r3, [sp, #8]
c0d00e1c:	9201      	str	r2, [sp, #4]
c0d00e1e:	f006 fab1 	bl	c0d07384 <strlen>
c0d00e22:	9a01      	ldr	r2, [sp, #4]
c0d00e24:	9b02      	ldr	r3, [sp, #8]
c0d00e26:	b280      	uxth	r0, r0
c0d00e28:	9900      	ldr	r1, [sp, #0]
c0d00e2a:	4288      	cmp	r0, r1
c0d00e2c:	d1dd      	bne.n	c0d00dea <object_get_value+0x30>
c0d00e2e:	4604      	mov	r4, r0
c0d00e30:	9804      	ldr	r0, [sp, #16]
c0d00e32:	f005 ffb1 	bl	c0d06d98 <pic>
c0d00e36:	4606      	mov	r6, r0
c0d00e38:	9803      	ldr	r0, [sp, #12]
c0d00e3a:	6800      	ldr	r0, [r0, #0]
c0d00e3c:	1940      	adds	r0, r0, r5
c0d00e3e:	f005 ffab 	bl	c0d06d98 <pic>
c0d00e42:	4601      	mov	r1, r0
c0d00e44:	4630      	mov	r0, r6
c0d00e46:	4622      	mov	r2, r4
c0d00e48:	f006 f91e 	bl	c0d07088 <memcmp>
c0d00e4c:	2800      	cmp	r0, #0
c0d00e4e:	d007      	beq.n	c0d00e60 <object_get_value+0xa6>
c0d00e50:	687e      	ldr	r6, [r7, #4]
c0d00e52:	9b02      	ldr	r3, [sp, #8]
c0d00e54:	881c      	ldrh	r4, [r3, #0]
c0d00e56:	9a01      	ldr	r2, [sp, #4]
c0d00e58:	e7c7      	b.n	c0d00dea <object_get_value+0x30>
c0d00e5a:	9805      	ldr	r0, [sp, #20]
c0d00e5c:	b009      	add	sp, #36	; 0x24
c0d00e5e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d00e60:	2000      	movs	r0, #0
c0d00e62:	e7fb      	b.n	c0d00e5c <object_get_value+0xa2>

c0d00e64 <parser_parse>:
c0d00e64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d00e66:	461d      	mov	r5, r3
c0d00e68:	4606      	mov	r6, r0
c0d00e6a:	2000      	movs	r0, #0
c0d00e6c:	80f0      	strh	r0, [r6, #6]
c0d00e6e:	b292      	uxth	r2, r2
c0d00e70:	2402      	movs	r4, #2
c0d00e72:	2a00      	cmp	r2, #0
c0d00e74:	d006      	beq.n	c0d00e84 <parser_parse+0x20>
c0d00e76:	2900      	cmp	r1, #0
c0d00e78:	d003      	beq.n	c0d00e82 <parser_parse+0x1e>
c0d00e7a:	2400      	movs	r4, #0
c0d00e7c:	2701      	movs	r7, #1
c0d00e7e:	4608      	mov	r0, r1
c0d00e80:	e002      	b.n	c0d00e88 <parser_parse+0x24>
c0d00e82:	2000      	movs	r0, #0
c0d00e84:	4602      	mov	r2, r0
c0d00e86:	4607      	mov	r7, r0
c0d00e88:	80b2      	strh	r2, [r6, #4]
c0d00e8a:	6030      	str	r0, [r6, #0]
c0d00e8c:	f003 ff0c 	bl	c0d04ca8 <check_app_canary>
c0d00e90:	2f00      	cmp	r7, #0
c0d00e92:	d014      	beq.n	c0d00ebe <parser_parse+0x5a>
c0d00e94:	60b5      	str	r5, [r6, #8]
c0d00e96:	7828      	ldrb	r0, [r5, #0]
c0d00e98:	2801      	cmp	r0, #1
c0d00e9a:	d104      	bne.n	c0d00ea6 <parser_parse+0x42>
c0d00e9c:	4630      	mov	r0, r6
c0d00e9e:	4629      	mov	r1, r5
c0d00ea0:	f000 ffb4 	bl	c0d01e0c <_read_text_tx>
c0d00ea4:	e003      	b.n	c0d00eae <parser_parse+0x4a>
c0d00ea6:	4630      	mov	r0, r6
c0d00ea8:	4629      	mov	r1, r5
c0d00eaa:	f000 ff8f 	bl	c0d01dcc <_read_json_tx>
c0d00eae:	4604      	mov	r4, r0
c0d00eb0:	f003 fefa 	bl	c0d04ca8 <check_app_canary>
c0d00eb4:	2c00      	cmp	r4, #0
c0d00eb6:	d102      	bne.n	c0d00ebe <parser_parse+0x5a>
c0d00eb8:	4802      	ldr	r0, [pc, #8]	; (c0d00ec4 <parser_parse+0x60>)
c0d00eba:	2400      	movs	r4, #0
c0d00ebc:	7004      	strb	r4, [r0, #0]
c0d00ebe:	4620      	mov	r0, r4
c0d00ec0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d00ec2:	46c0      	nop			; (mov r8, r8)
c0d00ec4:	2000092a 	.word	0x2000092a

c0d00ec8 <parser_validate>:
c0d00ec8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00eca:	b09b      	sub	sp, #108	; 0x6c
c0d00ecc:	4604      	mov	r4, r0
c0d00ece:	6880      	ldr	r0, [r0, #8]
c0d00ed0:	7800      	ldrb	r0, [r0, #0]
c0d00ed2:	2800      	cmp	r0, #0
c0d00ed4:	d025      	beq.n	c0d00f22 <parser_validate+0x5a>
c0d00ed6:	a91a      	add	r1, sp, #104	; 0x68
c0d00ed8:	2600      	movs	r6, #0
c0d00eda:	700e      	strb	r6, [r1, #0]
c0d00edc:	4620      	mov	r0, r4
c0d00ede:	f000 f831 	bl	c0d00f44 <parser_getNumItems>
c0d00ee2:	4605      	mov	r5, r0
c0d00ee4:	f003 fee0 	bl	c0d04ca8 <check_app_canary>
c0d00ee8:	2d00      	cmp	r5, #0
c0d00eea:	d125      	bne.n	c0d00f38 <parser_validate+0x70>
c0d00eec:	a805      	add	r0, sp, #20
c0d00eee:	7006      	strb	r6, [r0, #0]
c0d00ef0:	4637      	mov	r7, r6
c0d00ef2:	a81a      	add	r0, sp, #104	; 0x68
c0d00ef4:	7800      	ldrb	r0, [r0, #0]
c0d00ef6:	4287      	cmp	r7, r0
c0d00ef8:	d21d      	bcs.n	c0d00f36 <parser_validate+0x6e>
c0d00efa:	a805      	add	r0, sp, #20
c0d00efc:	9003      	str	r0, [sp, #12]
c0d00efe:	2000      	movs	r0, #0
c0d00f00:	9002      	str	r0, [sp, #8]
c0d00f02:	2328      	movs	r3, #40	; 0x28
c0d00f04:	9301      	str	r3, [sp, #4]
c0d00f06:	a806      	add	r0, sp, #24
c0d00f08:	9000      	str	r0, [sp, #0]
c0d00f0a:	b2f9      	uxtb	r1, r7
c0d00f0c:	aa10      	add	r2, sp, #64	; 0x40
c0d00f0e:	4620      	mov	r0, r4
c0d00f10:	f000 f832 	bl	c0d00f78 <parser_getItem>
c0d00f14:	4605      	mov	r5, r0
c0d00f16:	f003 fec7 	bl	c0d04ca8 <check_app_canary>
c0d00f1a:	1c7f      	adds	r7, r7, #1
c0d00f1c:	2d00      	cmp	r5, #0
c0d00f1e:	d0e8      	beq.n	c0d00ef2 <parser_validate+0x2a>
c0d00f20:	e00a      	b.n	c0d00f38 <parser_validate+0x70>
c0d00f22:	4807      	ldr	r0, [pc, #28]	; (c0d00f40 <parser_validate+0x78>)
c0d00f24:	3008      	adds	r0, #8
c0d00f26:	f001 ffbd 	bl	c0d02ea4 <tx_validate>
c0d00f2a:	4605      	mov	r5, r0
c0d00f2c:	f003 febc 	bl	c0d04ca8 <check_app_canary>
c0d00f30:	2d00      	cmp	r5, #0
c0d00f32:	d101      	bne.n	c0d00f38 <parser_validate+0x70>
c0d00f34:	e7cf      	b.n	c0d00ed6 <parser_validate+0xe>
c0d00f36:	4635      	mov	r5, r6
c0d00f38:	4628      	mov	r0, r5
c0d00f3a:	b01b      	add	sp, #108	; 0x6c
c0d00f3c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d00f3e:	46c0      	nop			; (mov r8, r8)
c0d00f40:	200005c4 	.word	0x200005c4

c0d00f44 <parser_getNumItems>:
c0d00f44:	b570      	push	{r4, r5, r6, lr}
c0d00f46:	460d      	mov	r5, r1
c0d00f48:	4606      	mov	r6, r0
c0d00f4a:	2400      	movs	r4, #0
c0d00f4c:	700c      	strb	r4, [r1, #0]
c0d00f4e:	6880      	ldr	r0, [r0, #8]
c0d00f50:	7800      	ldrb	r0, [r0, #0]
c0d00f52:	2801      	cmp	r0, #1
c0d00f54:	d109      	bne.n	c0d00f6a <parser_getNumItems+0x26>
c0d00f56:	f003 fc61 	bl	c0d0481c <app_mode_expert>
c0d00f5a:	68b2      	ldr	r2, [r6, #8]
c0d00f5c:	6851      	ldr	r1, [r2, #4]
c0d00f5e:	2800      	cmp	r0, #0
c0d00f60:	d101      	bne.n	c0d00f66 <parser_getNumItems+0x22>
c0d00f62:	7a10      	ldrb	r0, [r2, #8]
c0d00f64:	1a09      	subs	r1, r1, r0
c0d00f66:	7029      	strb	r1, [r5, #0]
c0d00f68:	e003      	b.n	c0d00f72 <parser_getNumItems+0x2e>
c0d00f6a:	4628      	mov	r0, r5
c0d00f6c:	f001 f99a 	bl	c0d022a4 <tx_display_numItems>
c0d00f70:	4604      	mov	r4, r0
c0d00f72:	4620      	mov	r0, r4
c0d00f74:	bd70      	pop	{r4, r5, r6, pc}
	...

c0d00f78 <parser_getItem>:
c0d00f78:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00f7a:	b0fd      	sub	sp, #500	; 0x1f4
c0d00f7c:	4607      	mov	r7, r0
c0d00f7e:	6880      	ldr	r0, [r0, #8]
c0d00f80:	7800      	ldrb	r0, [r0, #0]
c0d00f82:	2801      	cmp	r0, #1
c0d00f84:	d103      	bne.n	c0d00f8e <parser_getItem+0x16>
c0d00f86:	f003 fe8f 	bl	c0d04ca8 <check_app_canary>
c0d00f8a:	200f      	movs	r0, #15
c0d00f8c:	e025      	b.n	c0d00fda <parser_getItem+0x62>
c0d00f8e:	9116      	str	r1, [sp, #88]	; 0x58
c0d00f90:	9885      	ldr	r0, [sp, #532]	; 0x214
c0d00f92:	9983      	ldr	r1, [sp, #524]	; 0x20c
c0d00f94:	9117      	str	r1, [sp, #92]	; 0x5c
c0d00f96:	9d82      	ldr	r5, [sp, #520]	; 0x208
c0d00f98:	2100      	movs	r1, #0
c0d00f9a:	9012      	str	r0, [sp, #72]	; 0x48
c0d00f9c:	9115      	str	r1, [sp, #84]	; 0x54
c0d00f9e:	7001      	strb	r1, [r0, #0]
c0d00fa0:	a81a      	add	r0, sp, #104	; 0x68
c0d00fa2:	2123      	movs	r1, #35	; 0x23
c0d00fa4:	461c      	mov	r4, r3
c0d00fa6:	4616      	mov	r6, r2
c0d00fa8:	f006 f854 	bl	c0d07054 <__aeabi_memclr>
c0d00fac:	9613      	str	r6, [sp, #76]	; 0x4c
c0d00fae:	4630      	mov	r0, r6
c0d00fb0:	9414      	str	r4, [sp, #80]	; 0x50
c0d00fb2:	4621      	mov	r1, r4
c0d00fb4:	f006 f864 	bl	c0d07080 <explicit_bzero>
c0d00fb8:	9511      	str	r5, [sp, #68]	; 0x44
c0d00fba:	4628      	mov	r0, r5
c0d00fbc:	9917      	ldr	r1, [sp, #92]	; 0x5c
c0d00fbe:	f006 f85f 	bl	c0d07080 <explicit_bzero>
c0d00fc2:	a919      	add	r1, sp, #100	; 0x64
c0d00fc4:	4638      	mov	r0, r7
c0d00fc6:	f7ff ffbd 	bl	c0d00f44 <parser_getNumItems>
c0d00fca:	4606      	mov	r6, r0
c0d00fcc:	f003 fe6c 	bl	c0d04ca8 <check_app_canary>
c0d00fd0:	2e00      	cmp	r6, #0
c0d00fd2:	d004      	beq.n	c0d00fde <parser_getItem+0x66>
c0d00fd4:	f003 fe68 	bl	c0d04ca8 <check_app_canary>
c0d00fd8:	4630      	mov	r0, r6
c0d00fda:	b07d      	add	sp, #500	; 0x1f4
c0d00fdc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d00fde:	f003 fe63 	bl	c0d04ca8 <check_app_canary>
c0d00fe2:	a819      	add	r0, sp, #100	; 0x64
c0d00fe4:	7801      	ldrb	r1, [r0, #0]
c0d00fe6:	2900      	cmp	r1, #0
c0d00fe8:	d05d      	beq.n	c0d010a6 <parser_getItem+0x12e>
c0d00fea:	9816      	ldr	r0, [sp, #88]	; 0x58
c0d00fec:	4281      	cmp	r1, r0
c0d00fee:	d95c      	bls.n	c0d010aa <parser_getItem+0x132>
c0d00ff0:	ab18      	add	r3, sp, #96	; 0x60
c0d00ff2:	9c15      	ldr	r4, [sp, #84]	; 0x54
c0d00ff4:	801c      	strh	r4, [r3, #0]
c0d00ff6:	a91a      	add	r1, sp, #104	; 0x68
c0d00ff8:	2223      	movs	r2, #35	; 0x23
c0d00ffa:	f001 f9d9 	bl	c0d023b0 <tx_display_query>
c0d00ffe:	4606      	mov	r6, r0
c0d01000:	f003 fe52 	bl	c0d04ca8 <check_app_canary>
c0d01004:	2e00      	cmp	r6, #0
c0d01006:	d1e5      	bne.n	c0d00fd4 <parser_getItem+0x5c>
c0d01008:	9884      	ldr	r0, [sp, #528]	; 0x210
c0d0100a:	900b      	str	r0, [sp, #44]	; 0x2c
c0d0100c:	f003 fe4c 	bl	c0d04ca8 <check_app_canary>
c0d01010:	4af1      	ldr	r2, [pc, #964]	; (c0d013d8 <parser_getItem+0x460>)
c0d01012:	447a      	add	r2, pc
c0d01014:	ae1a      	add	r6, sp, #104	; 0x68
c0d01016:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0d01018:	9914      	ldr	r1, [sp, #80]	; 0x50
c0d0101a:	4633      	mov	r3, r6
c0d0101c:	f005 fcf8 	bl	c0d06a10 <snprintf>
c0d01020:	49ee      	ldr	r1, [pc, #952]	; (c0d013dc <parser_getItem+0x464>)
c0d01022:	4479      	add	r1, pc
c0d01024:	220b      	movs	r2, #11
c0d01026:	4630      	mov	r0, r6
c0d01028:	f006 f82e 	bl	c0d07088 <memcmp>
c0d0102c:	2800      	cmp	r0, #0
c0d0102e:	d03e      	beq.n	c0d010ae <parser_getItem+0x136>
c0d01030:	a81a      	add	r0, sp, #104	; 0x68
c0d01032:	49eb      	ldr	r1, [pc, #940]	; (c0d013e0 <parser_getItem+0x468>)
c0d01034:	4479      	add	r1, pc
c0d01036:	2212      	movs	r2, #18
c0d01038:	f006 f826 	bl	c0d07088 <memcmp>
c0d0103c:	2800      	cmp	r0, #0
c0d0103e:	d036      	beq.n	c0d010ae <parser_getItem+0x136>
c0d01040:	a81a      	add	r0, sp, #104	; 0x68
c0d01042:	49e8      	ldr	r1, [pc, #928]	; (c0d013e4 <parser_getItem+0x46c>)
c0d01044:	4479      	add	r1, pc
c0d01046:	2213      	movs	r2, #19
c0d01048:	f006 f81e 	bl	c0d07088 <memcmp>
c0d0104c:	2800      	cmp	r0, #0
c0d0104e:	d02e      	beq.n	c0d010ae <parser_getItem+0x136>
c0d01050:	a81a      	add	r0, sp, #104	; 0x68
c0d01052:	49e5      	ldr	r1, [pc, #916]	; (c0d013e8 <parser_getItem+0x470>)
c0d01054:	4479      	add	r1, pc
c0d01056:	2218      	movs	r2, #24
c0d01058:	f006 f816 	bl	c0d07088 <memcmp>
c0d0105c:	2800      	cmp	r0, #0
c0d0105e:	d026      	beq.n	c0d010ae <parser_getItem+0x136>
c0d01060:	a81a      	add	r0, sp, #104	; 0x68
c0d01062:	49e2      	ldr	r1, [pc, #904]	; (c0d013ec <parser_getItem+0x474>)
c0d01064:	4479      	add	r1, pc
c0d01066:	2219      	movs	r2, #25
c0d01068:	f006 f80e 	bl	c0d07088 <memcmp>
c0d0106c:	2800      	cmp	r0, #0
c0d0106e:	d01e      	beq.n	c0d010ae <parser_getItem+0x136>
c0d01070:	a81a      	add	r0, sp, #104	; 0x68
c0d01072:	49df      	ldr	r1, [pc, #892]	; (c0d013f0 <parser_getItem+0x478>)
c0d01074:	4479      	add	r1, pc
c0d01076:	2212      	movs	r2, #18
c0d01078:	f006 f806 	bl	c0d07088 <memcmp>
c0d0107c:	2800      	cmp	r0, #0
c0d0107e:	d016      	beq.n	c0d010ae <parser_getItem+0x136>
c0d01080:	a81a      	add	r0, sp, #104	; 0x68
c0d01082:	49dc      	ldr	r1, [pc, #880]	; (c0d013f4 <parser_getItem+0x47c>)
c0d01084:	4479      	add	r1, pc
c0d01086:	220b      	movs	r2, #11
c0d01088:	f005 fffe 	bl	c0d07088 <memcmp>
c0d0108c:	2800      	cmp	r0, #0
c0d0108e:	d00e      	beq.n	c0d010ae <parser_getItem+0x136>
c0d01090:	a818      	add	r0, sp, #96	; 0x60
c0d01092:	8800      	ldrh	r0, [r0, #0]
c0d01094:	9912      	ldr	r1, [sp, #72]	; 0x48
c0d01096:	9100      	str	r1, [sp, #0]
c0d01098:	9911      	ldr	r1, [sp, #68]	; 0x44
c0d0109a:	9a17      	ldr	r2, [sp, #92]	; 0x5c
c0d0109c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
c0d0109e:	f001 fc0f 	bl	c0d028c0 <tx_getToken>
c0d010a2:	4606      	mov	r6, r0
c0d010a4:	e033      	b.n	c0d0110e <parser_getItem+0x196>
c0d010a6:	260a      	movs	r6, #10
c0d010a8:	e794      	b.n	c0d00fd4 <parser_getItem+0x5c>
c0d010aa:	2603      	movs	r6, #3
c0d010ac:	e792      	b.n	c0d00fd4 <parser_getItem+0x5c>
c0d010ae:	2600      	movs	r6, #0
c0d010b0:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0d010b2:	701e      	strb	r6, [r3, #0]
c0d010b4:	a818      	add	r0, sp, #96	; 0x60
c0d010b6:	8801      	ldrh	r1, [r0, #0]
c0d010b8:	00c8      	lsls	r0, r1, #3
c0d010ba:	4acf      	ldr	r2, [pc, #828]	; (c0d013f8 <parser_getItem+0x480>)
c0d010bc:	1817      	adds	r7, r2, r0
c0d010be:	7c38      	ldrb	r0, [r7, #16]
c0d010c0:	2802      	cmp	r0, #2
c0d010c2:	48ce      	ldr	r0, [pc, #824]	; (c0d013fc <parser_getItem+0x484>)
c0d010c4:	4478      	add	r0, pc
c0d010c6:	900c      	str	r0, [sp, #48]	; 0x30
c0d010c8:	48cd      	ldr	r0, [pc, #820]	; (c0d01400 <parser_getItem+0x488>)
c0d010ca:	4478      	add	r0, pc
c0d010cc:	900a      	str	r0, [sp, #40]	; 0x28
c0d010ce:	4dcd      	ldr	r5, [pc, #820]	; (c0d01404 <parser_getItem+0x48c>)
c0d010d0:	447d      	add	r5, pc
c0d010d2:	d10d      	bne.n	c0d010f0 <parser_getItem+0x178>
c0d010d4:	4614      	mov	r4, r2
c0d010d6:	3408      	adds	r4, #8
c0d010d8:	aa24      	add	r2, sp, #144	; 0x90
c0d010da:	4620      	mov	r0, r4
c0d010dc:	460f      	mov	r7, r1
c0d010de:	f7ff fda7 	bl	c0d00c30 <array_get_element_count>
c0d010e2:	4606      	mov	r6, r0
c0d010e4:	f003 fde0 	bl	c0d04ca8 <check_app_canary>
c0d010e8:	2e00      	cmp	r6, #0
c0d010ea:	d02c      	beq.n	c0d01146 <parser_getItem+0x1ce>
c0d010ec:	9c15      	ldr	r4, [sp, #84]	; 0x54
c0d010ee:	e00e      	b.n	c0d0110e <parser_getItem+0x196>
c0d010f0:	9509      	str	r5, [sp, #36]	; 0x24
c0d010f2:	9616      	str	r6, [sp, #88]	; 0x58
c0d010f4:	701e      	strb	r6, [r3, #0]
c0d010f6:	4610      	mov	r0, r2
c0d010f8:	3008      	adds	r0, #8
c0d010fa:	aa7c      	add	r2, sp, #496	; 0x1f0
c0d010fc:	460d      	mov	r5, r1
c0d010fe:	f7ff fd97 	bl	c0d00c30 <array_get_element_count>
c0d01102:	4606      	mov	r6, r0
c0d01104:	f003 fdd0 	bl	c0d04ca8 <check_app_canary>
c0d01108:	2e00      	cmp	r6, #0
c0d0110a:	d100      	bne.n	c0d0110e <parser_getItem+0x196>
c0d0110c:	e20c      	b.n	c0d01528 <parser_getItem+0x5b0>
c0d0110e:	f003 fdcb 	bl	c0d04ca8 <check_app_canary>
c0d01112:	2e00      	cmp	r6, #0
c0d01114:	d000      	beq.n	c0d01118 <parser_getItem+0x1a0>
c0d01116:	e75d      	b.n	c0d00fd4 <parser_getItem+0x5c>
c0d01118:	f003 fdc6 	bl	c0d04ca8 <check_app_canary>
c0d0111c:	f001 fb78 	bl	c0d02810 <tx_display_make_friendly>
c0d01120:	4606      	mov	r6, r0
c0d01122:	f003 fdc1 	bl	c0d04ca8 <check_app_canary>
c0d01126:	2e00      	cmp	r6, #0
c0d01128:	d000      	beq.n	c0d0112c <parser_getItem+0x1b4>
c0d0112a:	e753      	b.n	c0d00fd4 <parser_getItem+0x5c>
c0d0112c:	f003 fdbc 	bl	c0d04ca8 <check_app_canary>
c0d01130:	4ab5      	ldr	r2, [pc, #724]	; (c0d01408 <parser_getItem+0x490>)
c0d01132:	447a      	add	r2, pc
c0d01134:	ab1a      	add	r3, sp, #104	; 0x68
c0d01136:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0d01138:	9914      	ldr	r1, [sp, #80]	; 0x50
c0d0113a:	f005 fc69 	bl	c0d06a10 <snprintf>
c0d0113e:	f003 fdb3 	bl	c0d04ca8 <check_app_canary>
c0d01142:	4626      	mov	r6, r4
c0d01144:	e746      	b.n	c0d00fd4 <parser_getItem+0x5c>
c0d01146:	940d      	str	r4, [sp, #52]	; 0x34
c0d01148:	970e      	str	r7, [sp, #56]	; 0x38
c0d0114a:	9509      	str	r5, [sp, #36]	; 0x24
c0d0114c:	a853      	add	r0, sp, #332	; 0x14c
c0d0114e:	1c80      	adds	r0, r0, #2
c0d01150:	9005      	str	r0, [sp, #20]
c0d01152:	9f17      	ldr	r7, [sp, #92]	; 0x5c
c0d01154:	1e78      	subs	r0, r7, #1
c0d01156:	9007      	str	r0, [sp, #28]
c0d01158:	b280      	uxth	r0, r0
c0d0115a:	9006      	str	r0, [sp, #24]
c0d0115c:	2000      	movs	r0, #0
c0d0115e:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
c0d01160:	4604      	mov	r4, r0
c0d01162:	4601      	mov	r1, r0
c0d01164:	9008      	str	r0, [sp, #32]
c0d01166:	4603      	mov	r3, r0
c0d01168:	a824      	add	r0, sp, #144	; 0x90
c0d0116a:	8800      	ldrh	r0, [r0, #0]
c0d0116c:	b28a      	uxth	r2, r1
c0d0116e:	4282      	cmp	r2, r0
c0d01170:	d300      	bcc.n	c0d01174 <parser_getItem+0x1fc>
c0d01172:	e1ed      	b.n	c0d01550 <parser_getItem+0x5d8>
c0d01174:	940f      	str	r4, [sp, #60]	; 0x3c
c0d01176:	9110      	str	r1, [sp, #64]	; 0x40
c0d01178:	9316      	str	r3, [sp, #88]	; 0x58
c0d0117a:	ab23      	add	r3, sp, #140	; 0x8c
c0d0117c:	9c0d      	ldr	r4, [sp, #52]	; 0x34
c0d0117e:	4620      	mov	r0, r4
c0d01180:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d01182:	f7ff fd7a 	bl	c0d00c7a <array_get_nth_element>
c0d01186:	4606      	mov	r6, r0
c0d01188:	f003 fd8e 	bl	c0d04ca8 <check_app_canary>
c0d0118c:	2e00      	cmp	r6, #0
c0d0118e:	d1ad      	bne.n	c0d010ec <parser_getItem+0x174>
c0d01190:	a823      	add	r0, sp, #140	; 0x8c
c0d01192:	8807      	ldrh	r7, [r0, #0]
c0d01194:	aa7c      	add	r2, sp, #496	; 0x1f0
c0d01196:	4620      	mov	r0, r4
c0d01198:	4639      	mov	r1, r7
c0d0119a:	f7ff fd49 	bl	c0d00c30 <array_get_element_count>
c0d0119e:	4606      	mov	r6, r0
c0d011a0:	f003 fd82 	bl	c0d04ca8 <check_app_canary>
c0d011a4:	2400      	movs	r4, #0
c0d011a6:	2e00      	cmp	r6, #0
c0d011a8:	d00c      	beq.n	c0d011c4 <parser_getItem+0x24c>
c0d011aa:	9f17      	ldr	r7, [sp, #92]	; 0x5c
c0d011ac:	f003 fd7c 	bl	c0d04ca8 <check_app_canary>
c0d011b0:	2e00      	cmp	r6, #0
c0d011b2:	d19b      	bne.n	c0d010ec <parser_getItem+0x174>
c0d011b4:	2001      	movs	r0, #1
c0d011b6:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0d011b8:	2900      	cmp	r1, #0
c0d011ba:	d014      	beq.n	c0d011e6 <parser_getItem+0x26e>
c0d011bc:	4622      	mov	r2, r4
c0d011be:	4604      	mov	r4, r0
c0d011c0:	9b16      	ldr	r3, [sp, #88]	; 0x58
c0d011c2:	e01e      	b.n	c0d01202 <parser_getItem+0x28a>
c0d011c4:	a87c      	add	r0, sp, #496	; 0x1f0
c0d011c6:	8800      	ldrh	r0, [r0, #0]
c0d011c8:	260d      	movs	r6, #13
c0d011ca:	2804      	cmp	r0, #4
c0d011cc:	d01d      	beq.n	c0d0120a <parser_getItem+0x292>
c0d011ce:	2800      	cmp	r0, #0
c0d011d0:	9f17      	ldr	r7, [sp, #92]	; 0x5c
c0d011d2:	d1eb      	bne.n	c0d011ac <parser_getItem+0x234>
c0d011d4:	4a8d      	ldr	r2, [pc, #564]	; (c0d0140c <parser_getItem+0x494>)
c0d011d6:	447a      	add	r2, pc
c0d011d8:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d011da:	4639      	mov	r1, r7
c0d011dc:	f005 fc18 	bl	c0d06a10 <snprintf>
c0d011e0:	2600      	movs	r6, #0
c0d011e2:	2401      	movs	r4, #1
c0d011e4:	e7e2      	b.n	c0d011ac <parser_getItem+0x234>
c0d011e6:	b2e1      	uxtb	r1, r4
c0d011e8:	b2ea      	uxtb	r2, r5
c0d011ea:	428a      	cmp	r2, r1
c0d011ec:	9b16      	ldr	r3, [sp, #88]	; 0x58
c0d011ee:	d205      	bcs.n	c0d011fc <parser_getItem+0x284>
c0d011f0:	4622      	mov	r2, r4
c0d011f2:	a923      	add	r1, sp, #140	; 0x8c
c0d011f4:	8809      	ldrh	r1, [r1, #0]
c0d011f6:	9108      	str	r1, [sp, #32]
c0d011f8:	4604      	mov	r4, r0
c0d011fa:	e002      	b.n	c0d01202 <parser_getItem+0x28a>
c0d011fc:	4622      	mov	r2, r4
c0d011fe:	1b2d      	subs	r5, r5, r4
c0d01200:	2400      	movs	r4, #0
c0d01202:	18d3      	adds	r3, r2, r3
c0d01204:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d01206:	1c49      	adds	r1, r1, #1
c0d01208:	e7ae      	b.n	c0d01168 <parser_getItem+0x1f0>
c0d0120a:	00f8      	lsls	r0, r7, #3
c0d0120c:	497a      	ldr	r1, [pc, #488]	; (c0d013f8 <parser_getItem+0x480>)
c0d0120e:	1808      	adds	r0, r1, r0
c0d01210:	7c00      	ldrb	r0, [r0, #16]
c0d01212:	2801      	cmp	r0, #1
c0d01214:	d1c9      	bne.n	c0d011aa <parser_getItem+0x232>
c0d01216:	1c78      	adds	r0, r7, #1
c0d01218:	b280      	uxth	r0, r0
c0d0121a:	00c0      	lsls	r0, r0, #3
c0d0121c:	1809      	adds	r1, r1, r0
c0d0121e:	7c08      	ldrb	r0, [r1, #16]
c0d01220:	2803      	cmp	r0, #3
c0d01222:	d1c2      	bne.n	c0d011aa <parser_getItem+0x232>
c0d01224:	2012      	movs	r0, #18
c0d01226:	5e0a      	ldrsh	r2, [r1, r0]
c0d01228:	2314      	movs	r3, #20
c0d0122a:	5ec9      	ldrsh	r1, [r1, r3]
c0d0122c:	1a89      	subs	r1, r1, r2
c0d0122e:	2906      	cmp	r1, #6
c0d01230:	d1bb      	bne.n	c0d011aa <parser_getItem+0x232>
c0d01232:	9303      	str	r3, [sp, #12]
c0d01234:	9004      	str	r0, [sp, #16]
c0d01236:	4870      	ldr	r0, [pc, #448]	; (c0d013f8 <parser_getItem+0x480>)
c0d01238:	6844      	ldr	r4, [r0, #4]
c0d0123a:	18a3      	adds	r3, r4, r2
c0d0123c:	2200      	movs	r2, #0
c0d0123e:	2a06      	cmp	r2, #6
c0d01240:	d00a      	beq.n	c0d01258 <parser_getItem+0x2e0>
c0d01242:	5c99      	ldrb	r1, [r3, r2]
c0d01244:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d01246:	5c80      	ldrb	r0, [r0, r2]
c0d01248:	1c52      	adds	r2, r2, #1
c0d0124a:	4288      	cmp	r0, r1
c0d0124c:	d0f7      	beq.n	c0d0123e <parser_getItem+0x2c6>
c0d0124e:	1e50      	subs	r0, r2, #1
c0d01250:	2806      	cmp	r0, #6
c0d01252:	d201      	bcs.n	c0d01258 <parser_getItem+0x2e0>
c0d01254:	2400      	movs	r4, #0
c0d01256:	e7a8      	b.n	c0d011aa <parser_getItem+0x232>
c0d01258:	9402      	str	r4, [sp, #8]
c0d0125a:	1cf8      	adds	r0, r7, #3
c0d0125c:	b280      	uxth	r0, r0
c0d0125e:	00c0      	lsls	r0, r0, #3
c0d01260:	4965      	ldr	r1, [pc, #404]	; (c0d013f8 <parser_getItem+0x480>)
c0d01262:	180a      	adds	r2, r1, r0
c0d01264:	7c10      	ldrb	r0, [r2, #16]
c0d01266:	2400      	movs	r4, #0
c0d01268:	2803      	cmp	r0, #3
c0d0126a:	d19e      	bne.n	c0d011aa <parser_getItem+0x232>
c0d0126c:	9804      	ldr	r0, [sp, #16]
c0d0126e:	5e13      	ldrsh	r3, [r2, r0]
c0d01270:	9803      	ldr	r0, [sp, #12]
c0d01272:	5e10      	ldrsh	r0, [r2, r0]
c0d01274:	1ac0      	subs	r0, r0, r3
c0d01276:	2805      	cmp	r0, #5
c0d01278:	d197      	bne.n	c0d011aa <parser_getItem+0x232>
c0d0127a:	9802      	ldr	r0, [sp, #8]
c0d0127c:	18c1      	adds	r1, r0, r3
c0d0127e:	2000      	movs	r0, #0
c0d01280:	9c0a      	ldr	r4, [sp, #40]	; 0x28
c0d01282:	2805      	cmp	r0, #5
c0d01284:	d007      	beq.n	c0d01296 <parser_getItem+0x31e>
c0d01286:	5c0a      	ldrb	r2, [r1, r0]
c0d01288:	5c23      	ldrb	r3, [r4, r0]
c0d0128a:	1c40      	adds	r0, r0, #1
c0d0128c:	4293      	cmp	r3, r2
c0d0128e:	d0f8      	beq.n	c0d01282 <parser_getItem+0x30a>
c0d01290:	1e40      	subs	r0, r0, #1
c0d01292:	2805      	cmp	r0, #5
c0d01294:	d3de      	bcc.n	c0d01254 <parser_getItem+0x2dc>
c0d01296:	a832      	add	r0, sp, #200	; 0xc8
c0d01298:	2181      	movs	r1, #129	; 0x81
c0d0129a:	9c09      	ldr	r4, [sp, #36]	; 0x24
c0d0129c:	47a0      	blx	r4
c0d0129e:	a825      	add	r0, sp, #148	; 0x94
c0d012a0:	2132      	movs	r1, #50	; 0x32
c0d012a2:	47a0      	blx	r4
c0d012a4:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d012a6:	9917      	ldr	r1, [sp, #92]	; 0x5c
c0d012a8:	47a0      	blx	r4
c0d012aa:	a853      	add	r0, sp, #332	; 0x14c
c0d012ac:	21a0      	movs	r1, #160	; 0xa0
c0d012ae:	47a0      	blx	r4
c0d012b0:	1cb8      	adds	r0, r7, #2
c0d012b2:	00c2      	lsls	r2, r0, #3
c0d012b4:	4850      	ldr	r0, [pc, #320]	; (c0d013f8 <parser_getItem+0x480>)
c0d012b6:	1880      	adds	r0, r0, r2
c0d012b8:	9b04      	ldr	r3, [sp, #16]
c0d012ba:	5ec0      	ldrsh	r0, [r0, r3]
c0d012bc:	2608      	movs	r6, #8
c0d012be:	2100      	movs	r1, #0
c0d012c0:	9103      	str	r1, [sp, #12]
c0d012c2:	2800      	cmp	r0, #0
c0d012c4:	d41f      	bmi.n	c0d01306 <parser_getItem+0x38e>
c0d012c6:	1d39      	adds	r1, r7, #4
c0d012c8:	00cf      	lsls	r7, r1, #3
c0d012ca:	494b      	ldr	r1, [pc, #300]	; (c0d013f8 <parser_getItem+0x480>)
c0d012cc:	19c9      	adds	r1, r1, r7
c0d012ce:	5ecc      	ldrsh	r4, [r1, r3]
c0d012d0:	2c00      	cmp	r4, #0
c0d012d2:	d418      	bmi.n	c0d01306 <parser_getItem+0x38e>
c0d012d4:	4b48      	ldr	r3, [pc, #288]	; (c0d013f8 <parser_getItem+0x480>)
c0d012d6:	3310      	adds	r3, #16
c0d012d8:	19df      	adds	r7, r3, r7
c0d012da:	2104      	movs	r1, #4
c0d012dc:	9102      	str	r1, [sp, #8]
c0d012de:	5e7f      	ldrsh	r7, [r7, r1]
c0d012e0:	1b39      	subs	r1, r7, r4
c0d012e2:	2705      	movs	r7, #5
c0d012e4:	9704      	str	r7, [sp, #16]
c0d012e6:	2901      	cmp	r1, #1
c0d012e8:	db0c      	blt.n	c0d01304 <parser_getItem+0x38c>
c0d012ea:	460f      	mov	r7, r1
c0d012ec:	2980      	cmp	r1, #128	; 0x80
c0d012ee:	dc09      	bgt.n	c0d01304 <parser_getItem+0x38c>
c0d012f0:	189a      	adds	r2, r3, r2
c0d012f2:	9902      	ldr	r1, [sp, #8]
c0d012f4:	5e52      	ldrsh	r2, [r2, r1]
c0d012f6:	1a11      	subs	r1, r2, r0
c0d012f8:	9102      	str	r1, [sp, #8]
c0d012fa:	2901      	cmp	r1, #1
c0d012fc:	db02      	blt.n	c0d01304 <parser_getItem+0x38c>
c0d012fe:	9902      	ldr	r1, [sp, #8]
c0d01300:	2931      	cmp	r1, #49	; 0x31
c0d01302:	dd03      	ble.n	c0d0130c <parser_getItem+0x394>
c0d01304:	9e04      	ldr	r6, [sp, #16]
c0d01306:	9f17      	ldr	r7, [sp, #92]	; 0x5c
c0d01308:	9c03      	ldr	r4, [sp, #12]
c0d0130a:	e74f      	b.n	c0d011ac <parser_getItem+0x234>
c0d0130c:	9902      	ldr	r1, [sp, #8]
c0d0130e:	187a      	adds	r2, r7, r1
c0d01310:	2a9e      	cmp	r2, #158	; 0x9e
c0d01312:	d8f8      	bhi.n	c0d01306 <parser_getItem+0x38e>
c0d01314:	4a38      	ldr	r2, [pc, #224]	; (c0d013f8 <parser_getItem+0x480>)
c0d01316:	6852      	ldr	r2, [r2, #4]
c0d01318:	1911      	adds	r1, r2, r4
c0d0131a:	1810      	adds	r0, r2, r0
c0d0131c:	9003      	str	r0, [sp, #12]
c0d0131e:	a832      	add	r0, sp, #200	; 0xc8
c0d01320:	9101      	str	r1, [sp, #4]
c0d01322:	463c      	mov	r4, r7
c0d01324:	463a      	mov	r2, r7
c0d01326:	f005 fe9f 	bl	c0d07068 <__aeabi_memmove>
c0d0132a:	ae25      	add	r6, sp, #148	; 0x94
c0d0132c:	4630      	mov	r0, r6
c0d0132e:	9903      	ldr	r1, [sp, #12]
c0d01330:	9a02      	ldr	r2, [sp, #8]
c0d01332:	f005 fe99 	bl	c0d07068 <__aeabi_memmove>
c0d01336:	a853      	add	r0, sp, #332	; 0x14c
c0d01338:	21a0      	movs	r1, #160	; 0xa0
c0d0133a:	4a35      	ldr	r2, [pc, #212]	; (c0d01410 <parser_getItem+0x498>)
c0d0133c:	447a      	add	r2, pc
c0d0133e:	4633      	mov	r3, r6
c0d01340:	f005 fb66 	bl	c0d06a10 <snprintf>
c0d01344:	a87b      	add	r0, sp, #492	; 0x1ec
c0d01346:	2700      	movs	r7, #0
c0d01348:	7007      	strb	r7, [r0, #0]
c0d0134a:	f000 ff8f 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d0134e:	4606      	mov	r6, r0
c0d01350:	f003 fcaa 	bl	c0d04ca8 <check_app_canary>
c0d01354:	b2e0      	uxtb	r0, r4
c0d01356:	2804      	cmp	r0, #4
c0d01358:	9703      	str	r7, [sp, #12]
c0d0135a:	d114      	bne.n	c0d01386 <parser_getItem+0x40e>
c0d0135c:	987b      	ldr	r0, [sp, #492]	; 0x1ec
c0d0135e:	4330      	orrs	r0, r6
c0d01360:	b2c0      	uxtb	r0, r0
c0d01362:	2800      	cmp	r0, #0
c0d01364:	9f03      	ldr	r7, [sp, #12]
c0d01366:	d10e      	bne.n	c0d01386 <parser_getItem+0x40e>
c0d01368:	9a01      	ldr	r2, [sp, #4]
c0d0136a:	7810      	ldrb	r0, [r2, #0]
c0d0136c:	7851      	ldrb	r1, [r2, #1]
c0d0136e:	0209      	lsls	r1, r1, #8
c0d01370:	1808      	adds	r0, r1, r0
c0d01372:	7891      	ldrb	r1, [r2, #2]
c0d01374:	78d2      	ldrb	r2, [r2, #3]
c0d01376:	0212      	lsls	r2, r2, #8
c0d01378:	1851      	adds	r1, r2, r1
c0d0137a:	0409      	lsls	r1, r1, #16
c0d0137c:	1808      	adds	r0, r1, r0
c0d0137e:	4925      	ldr	r1, [pc, #148]	; (c0d01414 <parser_getItem+0x49c>)
c0d01380:	1840      	adds	r0, r0, r1
c0d01382:	4247      	negs	r7, r0
c0d01384:	4147      	adcs	r7, r0
c0d01386:	f003 fc8f 	bl	c0d04ca8 <check_app_canary>
c0d0138a:	2e00      	cmp	r6, #0
c0d0138c:	d1bb      	bne.n	c0d01306 <parser_getItem+0x38e>
c0d0138e:	2f00      	cmp	r7, #0
c0d01390:	d100      	bne.n	c0d01394 <parser_getItem+0x41c>
c0d01392:	e08e      	b.n	c0d014b2 <parser_getItem+0x53a>
c0d01394:	a853      	add	r0, sp, #332	; 0x14c
c0d01396:	21a0      	movs	r1, #160	; 0xa0
c0d01398:	f005 fe72 	bl	c0d07080 <explicit_bzero>
c0d0139c:	a825      	add	r0, sp, #148	; 0x94
c0d0139e:	f005 fff1 	bl	c0d07384 <strlen>
c0d013a2:	4607      	mov	r7, r0
c0d013a4:	1c80      	adds	r0, r0, #2
c0d013a6:	28a0      	cmp	r0, #160	; 0xa0
c0d013a8:	9e04      	ldr	r6, [sp, #16]
c0d013aa:	d8ac      	bhi.n	c0d01306 <parser_getItem+0x38e>
c0d013ac:	2f09      	cmp	r7, #9
c0d013ae:	d837      	bhi.n	c0d01420 <parser_getItem+0x4a8>
c0d013b0:	a853      	add	r0, sp, #332	; 0x14c
c0d013b2:	2100      	movs	r1, #0
c0d013b4:	7081      	strb	r1, [r0, #2]
c0d013b6:	4918      	ldr	r1, [pc, #96]	; (c0d01418 <parser_getItem+0x4a0>)
c0d013b8:	8001      	strh	r1, [r0, #0]
c0d013ba:	2009      	movs	r0, #9
c0d013bc:	1bc6      	subs	r6, r0, r7
c0d013be:	2230      	movs	r2, #48	; 0x30
c0d013c0:	9c05      	ldr	r4, [sp, #20]
c0d013c2:	4620      	mov	r0, r4
c0d013c4:	4631      	mov	r1, r6
c0d013c6:	f005 fe53 	bl	c0d07070 <__aeabi_memset>
c0d013ca:	19a0      	adds	r0, r4, r6
c0d013cc:	3795      	adds	r7, #149	; 0x95
c0d013ce:	4a13      	ldr	r2, [pc, #76]	; (c0d0141c <parser_getItem+0x4a4>)
c0d013d0:	447a      	add	r2, pc
c0d013d2:	ab25      	add	r3, sp, #148	; 0x94
c0d013d4:	4639      	mov	r1, r7
c0d013d6:	e038      	b.n	c0d0144a <parser_getItem+0x4d2>
c0d013d8:	00006bac 	.word	0x00006bac
c0d013dc:	000074f0 	.word	0x000074f0
c0d013e0:	00006b0c 	.word	0x00006b0c
c0d013e4:	00006b0e 	.word	0x00006b0e
c0d013e8:	00006b11 	.word	0x00006b11
c0d013ec:	00006b19 	.word	0x00006b19
c0d013f0:	00006b22 	.word	0x00006b22
c0d013f4:	00006b24 	.word	0x00006b24
c0d013f8:	200005c4 	.word	0x200005c4
c0d013fc:	00007452 	.word	0x00007452
c0d01400:	00007467 	.word	0x00007467
c0d01404:	00005fad 	.word	0x00005fad
c0d01408:	00006a8c 	.word	0x00006a8c
c0d0140c:	000069dd 	.word	0x000069dd
c0d01410:	0000687d 	.word	0x0000687d
c0d01414:	8d978c92 	.word	0x8d978c92
c0d01418:	00002e30 	.word	0x00002e30
c0d0141c:	000067ee 	.word	0x000067ee
c0d01420:	ae53      	add	r6, sp, #332	; 0x14c
c0d01422:	21a0      	movs	r1, #160	; 0xa0
c0d01424:	4ce3      	ldr	r4, [pc, #908]	; (c0d017b4 <parser_getItem+0x83c>)
c0d01426:	447c      	add	r4, pc
c0d01428:	ab25      	add	r3, sp, #148	; 0x94
c0d0142a:	9304      	str	r3, [sp, #16]
c0d0142c:	4630      	mov	r0, r6
c0d0142e:	4622      	mov	r2, r4
c0d01430:	f005 faee 	bl	c0d06a10 <snprintf>
c0d01434:	4638      	mov	r0, r7
c0d01436:	3809      	subs	r0, #9
c0d01438:	212e      	movs	r1, #46	; 0x2e
c0d0143a:	5431      	strb	r1, [r6, r0]
c0d0143c:	21a8      	movs	r1, #168	; 0xa8
c0d0143e:	1bc9      	subs	r1, r1, r7
c0d01440:	9a04      	ldr	r2, [sp, #16]
c0d01442:	1813      	adds	r3, r2, r0
c0d01444:	1830      	adds	r0, r6, r0
c0d01446:	1c40      	adds	r0, r0, #1
c0d01448:	4622      	mov	r2, r4
c0d0144a:	f005 fae1 	bl	c0d06a10 <snprintf>
c0d0144e:	a853      	add	r0, sp, #332	; 0x14c
c0d01450:	f005 ff98 	bl	c0d07384 <strlen>
c0d01454:	2802      	cmp	r0, #2
c0d01456:	d324      	bcc.n	c0d014a2 <parser_getItem+0x52a>
c0d01458:	2101      	movs	r1, #1
c0d0145a:	0289      	lsls	r1, r1, #10
c0d0145c:	4288      	cmp	r0, r1
c0d0145e:	d820      	bhi.n	c0d014a2 <parser_getItem+0x52a>
c0d01460:	2200      	movs	r2, #0
c0d01462:	49d5      	ldr	r1, [pc, #852]	; (c0d017b8 <parser_getItem+0x840>)
c0d01464:	b20b      	sxth	r3, r1
c0d01466:	2b00      	cmp	r3, #0
c0d01468:	d50b      	bpl.n	c0d01482 <parser_getItem+0x50a>
c0d0146a:	b216      	sxth	r6, r2
c0d0146c:	42b0      	cmp	r0, r6
c0d0146e:	dd08      	ble.n	c0d01482 <parser_getItem+0x50a>
c0d01470:	ab53      	add	r3, sp, #332	; 0x14c
c0d01472:	5d9b      	ldrb	r3, [r3, r6]
c0d01474:	2b2e      	cmp	r3, #46	; 0x2e
c0d01476:	4613      	mov	r3, r2
c0d01478:	d000      	beq.n	c0d0147c <parser_getItem+0x504>
c0d0147a:	460b      	mov	r3, r1
c0d0147c:	1c52      	adds	r2, r2, #1
c0d0147e:	4619      	mov	r1, r3
c0d01480:	e7f0      	b.n	c0d01464 <parser_getItem+0x4ec>
c0d01482:	2b00      	cmp	r3, #0
c0d01484:	d40d      	bmi.n	c0d014a2 <parser_getItem+0x52a>
c0d01486:	1e40      	subs	r0, r0, #1
c0d01488:	b289      	uxth	r1, r1
c0d0148a:	1d89      	adds	r1, r1, #6
c0d0148c:	4288      	cmp	r0, r1
c0d0148e:	d908      	bls.n	c0d014a2 <parser_getItem+0x52a>
c0d01490:	aa53      	add	r2, sp, #332	; 0x14c
c0d01492:	5c12      	ldrb	r2, [r2, r0]
c0d01494:	2a30      	cmp	r2, #48	; 0x30
c0d01496:	d104      	bne.n	c0d014a2 <parser_getItem+0x52a>
c0d01498:	aa53      	add	r2, sp, #332	; 0x14c
c0d0149a:	2300      	movs	r3, #0
c0d0149c:	5413      	strb	r3, [r2, r0]
c0d0149e:	1e40      	subs	r0, r0, #1
c0d014a0:	e7f4      	b.n	c0d0148c <parser_getItem+0x514>
c0d014a2:	a832      	add	r0, sp, #200	; 0xc8
c0d014a4:	2181      	movs	r1, #129	; 0x81
c0d014a6:	4ac5      	ldr	r2, [pc, #788]	; (c0d017bc <parser_getItem+0x844>)
c0d014a8:	447a      	add	r2, pc
c0d014aa:	4bc5      	ldr	r3, [pc, #788]	; (c0d017c0 <parser_getItem+0x848>)
c0d014ac:	447b      	add	r3, pc
c0d014ae:	f005 faaf 	bl	c0d06a10 <snprintf>
c0d014b2:	ae53      	add	r6, sp, #332	; 0x14c
c0d014b4:	21a0      	movs	r1, #160	; 0xa0
c0d014b6:	4ac3      	ldr	r2, [pc, #780]	; (c0d017c4 <parser_getItem+0x84c>)
c0d014b8:	447a      	add	r2, pc
c0d014ba:	ab32      	add	r3, sp, #200	; 0xc8
c0d014bc:	4630      	mov	r0, r6
c0d014be:	f003 fbad 	bl	c0d04c1c <z_str3join>
c0d014c2:	4630      	mov	r0, r6
c0d014c4:	f005 ff5e 	bl	c0d07384 <strlen>
c0d014c8:	4606      	mov	r6, r0
c0d014ca:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d014cc:	9917      	ldr	r1, [sp, #92]	; 0x5c
c0d014ce:	f005 fdd7 	bl	c0d07080 <explicit_bzero>
c0d014d2:	9807      	ldr	r0, [sp, #28]
c0d014d4:	0400      	lsls	r0, r0, #16
c0d014d6:	d01e      	beq.n	c0d01516 <parser_getItem+0x59e>
c0d014d8:	0430      	lsls	r0, r6, #16
c0d014da:	d01c      	beq.n	c0d01516 <parser_getItem+0x59e>
c0d014dc:	b2b0      	uxth	r0, r6
c0d014de:	9906      	ldr	r1, [sp, #24]
c0d014e0:	f005 fd4c 	bl	c0d06f7c <__udivsi3>
c0d014e4:	9907      	ldr	r1, [sp, #28]
c0d014e6:	4341      	muls	r1, r0
c0d014e8:	1a71      	subs	r1, r6, r1
c0d014ea:	b28a      	uxth	r2, r1
c0d014ec:	1e53      	subs	r3, r2, #1
c0d014ee:	4616      	mov	r6, r2
c0d014f0:	419e      	sbcs	r6, r3
c0d014f2:	1830      	adds	r0, r6, r0
c0d014f4:	2600      	movs	r6, #0
c0d014f6:	9003      	str	r0, [sp, #12]
c0d014f8:	0600      	lsls	r0, r0, #24
c0d014fa:	d00d      	beq.n	c0d01518 <parser_getItem+0x5a0>
c0d014fc:	0408      	lsls	r0, r1, #16
c0d014fe:	d00d      	beq.n	c0d0151c <parser_getItem+0x5a4>
c0d01500:	9803      	ldr	r0, [sp, #12]
c0d01502:	b2c0      	uxtb	r0, r0
c0d01504:	2801      	cmp	r0, #1
c0d01506:	d109      	bne.n	c0d0151c <parser_getItem+0x5a4>
c0d01508:	a953      	add	r1, sp, #332	; 0x14c
c0d0150a:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d0150c:	f005 fda8 	bl	c0d07060 <__aeabi_memcpy>
c0d01510:	2001      	movs	r0, #1
c0d01512:	9003      	str	r0, [sp, #12]
c0d01514:	e6f7      	b.n	c0d01306 <parser_getItem+0x38e>
c0d01516:	2600      	movs	r6, #0
c0d01518:	9603      	str	r6, [sp, #12]
c0d0151a:	e6f4      	b.n	c0d01306 <parser_getItem+0x38e>
c0d0151c:	a953      	add	r1, sp, #332	; 0x14c
c0d0151e:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d01520:	9a06      	ldr	r2, [sp, #24]
c0d01522:	f005 fd9d 	bl	c0d07060 <__aeabi_memcpy>
c0d01526:	e6ee      	b.n	c0d01306 <parser_getItem+0x38e>
c0d01528:	950e      	str	r5, [sp, #56]	; 0x38
c0d0152a:	a87c      	add	r0, sp, #496	; 0x1f0
c0d0152c:	8800      	ldrh	r0, [r0, #0]
c0d0152e:	260d      	movs	r6, #13
c0d01530:	2804      	cmp	r0, #4
c0d01532:	d016      	beq.n	c0d01562 <parser_getItem+0x5ea>
c0d01534:	2800      	cmp	r0, #0
c0d01536:	d000      	beq.n	c0d0153a <parser_getItem+0x5c2>
c0d01538:	e5e9      	b.n	c0d0110e <parser_getItem+0x196>
c0d0153a:	2001      	movs	r0, #1
c0d0153c:	9912      	ldr	r1, [sp, #72]	; 0x48
c0d0153e:	7008      	strb	r0, [r1, #0]
c0d01540:	4aa1      	ldr	r2, [pc, #644]	; (c0d017c8 <parser_getItem+0x850>)
c0d01542:	447a      	add	r2, pc
c0d01544:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d01546:	9917      	ldr	r1, [sp, #92]	; 0x5c
c0d01548:	f005 fa62 	bl	c0d06a10 <snprintf>
c0d0154c:	9e16      	ldr	r6, [sp, #88]	; 0x58
c0d0154e:	e5de      	b.n	c0d0110e <parser_getItem+0x196>
c0d01550:	9912      	ldr	r1, [sp, #72]	; 0x48
c0d01552:	700b      	strb	r3, [r1, #0]
c0d01554:	b2d8      	uxtb	r0, r3
c0d01556:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
c0d01558:	4290      	cmp	r0, r2
c0d0155a:	d300      	bcc.n	c0d0155e <parser_getItem+0x5e6>
c0d0155c:	e083      	b.n	c0d01666 <parser_getItem+0x6ee>
c0d0155e:	2609      	movs	r6, #9
c0d01560:	e5c4      	b.n	c0d010ec <parser_getItem+0x174>
c0d01562:	3710      	adds	r7, #16
c0d01564:	7838      	ldrb	r0, [r7, #0]
c0d01566:	2801      	cmp	r0, #1
c0d01568:	d000      	beq.n	c0d0156c <parser_getItem+0x5f4>
c0d0156a:	e5d0      	b.n	c0d0110e <parser_getItem+0x196>
c0d0156c:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d0156e:	1c40      	adds	r0, r0, #1
c0d01570:	b280      	uxth	r0, r0
c0d01572:	00c0      	lsls	r0, r0, #3
c0d01574:	4b95      	ldr	r3, [pc, #596]	; (c0d017cc <parser_getItem+0x854>)
c0d01576:	1819      	adds	r1, r3, r0
c0d01578:	7c08      	ldrb	r0, [r1, #16]
c0d0157a:	2803      	cmp	r0, #3
c0d0157c:	d000      	beq.n	c0d01580 <parser_getItem+0x608>
c0d0157e:	e5c6      	b.n	c0d0110e <parser_getItem+0x196>
c0d01580:	2512      	movs	r5, #18
c0d01582:	5f4a      	ldrsh	r2, [r1, r5]
c0d01584:	2014      	movs	r0, #20
c0d01586:	5e09      	ldrsh	r1, [r1, r0]
c0d01588:	1a89      	subs	r1, r1, r2
c0d0158a:	2906      	cmp	r1, #6
c0d0158c:	d000      	beq.n	c0d01590 <parser_getItem+0x618>
c0d0158e:	e5be      	b.n	c0d0110e <parser_getItem+0x196>
c0d01590:	6859      	ldr	r1, [r3, #4]
c0d01592:	9116      	str	r1, [sp, #88]	; 0x58
c0d01594:	188b      	adds	r3, r1, r2
c0d01596:	2200      	movs	r2, #0
c0d01598:	2a06      	cmp	r2, #6
c0d0159a:	d009      	beq.n	c0d015b0 <parser_getItem+0x638>
c0d0159c:	5c9f      	ldrb	r7, [r3, r2]
c0d0159e:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d015a0:	5c89      	ldrb	r1, [r1, r2]
c0d015a2:	1c52      	adds	r2, r2, #1
c0d015a4:	42b9      	cmp	r1, r7
c0d015a6:	d0f7      	beq.n	c0d01598 <parser_getItem+0x620>
c0d015a8:	1e51      	subs	r1, r2, #1
c0d015aa:	2906      	cmp	r1, #6
c0d015ac:	d200      	bcs.n	c0d015b0 <parser_getItem+0x638>
c0d015ae:	e5ae      	b.n	c0d0110e <parser_getItem+0x196>
c0d015b0:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d015b2:	1cc9      	adds	r1, r1, #3
c0d015b4:	b289      	uxth	r1, r1
c0d015b6:	00c9      	lsls	r1, r1, #3
c0d015b8:	4a84      	ldr	r2, [pc, #528]	; (c0d017cc <parser_getItem+0x854>)
c0d015ba:	1853      	adds	r3, r2, r1
c0d015bc:	7c19      	ldrb	r1, [r3, #16]
c0d015be:	2903      	cmp	r1, #3
c0d015c0:	d000      	beq.n	c0d015c4 <parser_getItem+0x64c>
c0d015c2:	e5a4      	b.n	c0d0110e <parser_getItem+0x196>
c0d015c4:	9510      	str	r5, [sp, #64]	; 0x40
c0d015c6:	5f5a      	ldrsh	r2, [r3, r5]
c0d015c8:	5e18      	ldrsh	r0, [r3, r0]
c0d015ca:	1a80      	subs	r0, r0, r2
c0d015cc:	2805      	cmp	r0, #5
c0d015ce:	d000      	beq.n	c0d015d2 <parser_getItem+0x65a>
c0d015d0:	e59d      	b.n	c0d0110e <parser_getItem+0x196>
c0d015d2:	9816      	ldr	r0, [sp, #88]	; 0x58
c0d015d4:	1881      	adds	r1, r0, r2
c0d015d6:	2000      	movs	r0, #0
c0d015d8:	4d7c      	ldr	r5, [pc, #496]	; (c0d017cc <parser_getItem+0x854>)
c0d015da:	9f0e      	ldr	r7, [sp, #56]	; 0x38
c0d015dc:	2805      	cmp	r0, #5
c0d015de:	d00b      	beq.n	c0d015f8 <parser_getItem+0x680>
c0d015e0:	5c0a      	ldrb	r2, [r1, r0]
c0d015e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
c0d015e4:	5c1b      	ldrb	r3, [r3, r0]
c0d015e6:	1c40      	adds	r0, r0, #1
c0d015e8:	4293      	cmp	r3, r2
c0d015ea:	d0f7      	beq.n	c0d015dc <parser_getItem+0x664>
c0d015ec:	1e40      	subs	r0, r0, #1
c0d015ee:	2805      	cmp	r0, #5
c0d015f0:	4d76      	ldr	r5, [pc, #472]	; (c0d017cc <parser_getItem+0x854>)
c0d015f2:	9f0e      	ldr	r7, [sp, #56]	; 0x38
c0d015f4:	d200      	bcs.n	c0d015f8 <parser_getItem+0x680>
c0d015f6:	e58a      	b.n	c0d0110e <parser_getItem+0x196>
c0d015f8:	a832      	add	r0, sp, #200	; 0xc8
c0d015fa:	2181      	movs	r1, #129	; 0x81
c0d015fc:	9c09      	ldr	r4, [sp, #36]	; 0x24
c0d015fe:	47a0      	blx	r4
c0d01600:	a825      	add	r0, sp, #148	; 0x94
c0d01602:	2132      	movs	r1, #50	; 0x32
c0d01604:	47a0      	blx	r4
c0d01606:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d01608:	9917      	ldr	r1, [sp, #92]	; 0x5c
c0d0160a:	47a0      	blx	r4
c0d0160c:	a853      	add	r0, sp, #332	; 0x14c
c0d0160e:	21a0      	movs	r1, #160	; 0xa0
c0d01610:	47a0      	blx	r4
c0d01612:	1cb8      	adds	r0, r7, #2
c0d01614:	00c2      	lsls	r2, r0, #3
c0d01616:	18a8      	adds	r0, r5, r2
c0d01618:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d0161a:	5e40      	ldrsh	r0, [r0, r1]
c0d0161c:	2608      	movs	r6, #8
c0d0161e:	2800      	cmp	r0, #0
c0d01620:	d500      	bpl.n	c0d01624 <parser_getItem+0x6ac>
c0d01622:	e563      	b.n	c0d010ec <parser_getItem+0x174>
c0d01624:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d01626:	1d09      	adds	r1, r1, #4
c0d01628:	00c9      	lsls	r1, r1, #3
c0d0162a:	4b68      	ldr	r3, [pc, #416]	; (c0d017cc <parser_getItem+0x854>)
c0d0162c:	185b      	adds	r3, r3, r1
c0d0162e:	9c10      	ldr	r4, [sp, #64]	; 0x40
c0d01630:	5f1f      	ldrsh	r7, [r3, r4]
c0d01632:	2f00      	cmp	r7, #0
c0d01634:	d500      	bpl.n	c0d01638 <parser_getItem+0x6c0>
c0d01636:	e559      	b.n	c0d010ec <parser_getItem+0x174>
c0d01638:	4b64      	ldr	r3, [pc, #400]	; (c0d017cc <parser_getItem+0x854>)
c0d0163a:	3310      	adds	r3, #16
c0d0163c:	1859      	adds	r1, r3, r1
c0d0163e:	2404      	movs	r4, #4
c0d01640:	5f09      	ldrsh	r1, [r1, r4]
c0d01642:	1bcd      	subs	r5, r1, r7
c0d01644:	2105      	movs	r1, #5
c0d01646:	9116      	str	r1, [sp, #88]	; 0x58
c0d01648:	2d01      	cmp	r5, #1
c0d0164a:	db0a      	blt.n	c0d01662 <parser_getItem+0x6ea>
c0d0164c:	2d80      	cmp	r5, #128	; 0x80
c0d0164e:	dc08      	bgt.n	c0d01662 <parser_getItem+0x6ea>
c0d01650:	1899      	adds	r1, r3, r2
c0d01652:	5f09      	ldrsh	r1, [r1, r4]
c0d01654:	1a09      	subs	r1, r1, r0
c0d01656:	2901      	cmp	r1, #1
c0d01658:	db03      	blt.n	c0d01662 <parser_getItem+0x6ea>
c0d0165a:	460c      	mov	r4, r1
c0d0165c:	2931      	cmp	r1, #49	; 0x31
c0d0165e:	dc00      	bgt.n	c0d01662 <parser_getItem+0x6ea>
c0d01660:	e0ba      	b.n	c0d017d8 <parser_getItem+0x860>
c0d01662:	9e16      	ldr	r6, [sp, #88]	; 0x58
c0d01664:	e542      	b.n	c0d010ec <parser_getItem+0x174>
c0d01666:	0618      	lsls	r0, r3, #24
c0d01668:	d01a      	beq.n	c0d016a0 <parser_getItem+0x728>
c0d0166a:	9516      	str	r5, [sp, #88]	; 0x58
c0d0166c:	9808      	ldr	r0, [sp, #32]
c0d0166e:	b287      	uxth	r7, r0
c0d01670:	aa7c      	add	r2, sp, #496	; 0x1f0
c0d01672:	980d      	ldr	r0, [sp, #52]	; 0x34
c0d01674:	4639      	mov	r1, r7
c0d01676:	f7ff fadb 	bl	c0d00c30 <array_get_element_count>
c0d0167a:	4606      	mov	r6, r0
c0d0167c:	f003 fb14 	bl	c0d04ca8 <check_app_canary>
c0d01680:	2e00      	cmp	r6, #0
c0d01682:	d000      	beq.n	c0d01686 <parser_getItem+0x70e>
c0d01684:	e532      	b.n	c0d010ec <parser_getItem+0x174>
c0d01686:	a87c      	add	r0, sp, #496	; 0x1f0
c0d01688:	8800      	ldrh	r0, [r0, #0]
c0d0168a:	260d      	movs	r6, #13
c0d0168c:	2804      	cmp	r0, #4
c0d0168e:	d011      	beq.n	c0d016b4 <parser_getItem+0x73c>
c0d01690:	2800      	cmp	r0, #0
c0d01692:	d000      	beq.n	c0d01696 <parser_getItem+0x71e>
c0d01694:	e52a      	b.n	c0d010ec <parser_getItem+0x174>
c0d01696:	4a4e      	ldr	r2, [pc, #312]	; (c0d017d0 <parser_getItem+0x858>)
c0d01698:	447a      	add	r2, pc
c0d0169a:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d0169c:	9917      	ldr	r1, [sp, #92]	; 0x5c
c0d0169e:	e005      	b.n	c0d016ac <parser_getItem+0x734>
c0d016a0:	2001      	movs	r0, #1
c0d016a2:	7008      	strb	r0, [r1, #0]
c0d016a4:	4a4b      	ldr	r2, [pc, #300]	; (c0d017d4 <parser_getItem+0x85c>)
c0d016a6:	447a      	add	r2, pc
c0d016a8:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d016aa:	4639      	mov	r1, r7
c0d016ac:	f005 f9b0 	bl	c0d06a10 <snprintf>
c0d016b0:	2600      	movs	r6, #0
c0d016b2:	e51b      	b.n	c0d010ec <parser_getItem+0x174>
c0d016b4:	00f8      	lsls	r0, r7, #3
c0d016b6:	4945      	ldr	r1, [pc, #276]	; (c0d017cc <parser_getItem+0x854>)
c0d016b8:	1808      	adds	r0, r1, r0
c0d016ba:	7c00      	ldrb	r0, [r0, #16]
c0d016bc:	2801      	cmp	r0, #1
c0d016be:	d000      	beq.n	c0d016c2 <parser_getItem+0x74a>
c0d016c0:	e514      	b.n	c0d010ec <parser_getItem+0x174>
c0d016c2:	9808      	ldr	r0, [sp, #32]
c0d016c4:	1c40      	adds	r0, r0, #1
c0d016c6:	b280      	uxth	r0, r0
c0d016c8:	00c0      	lsls	r0, r0, #3
c0d016ca:	4940      	ldr	r1, [pc, #256]	; (c0d017cc <parser_getItem+0x854>)
c0d016cc:	1809      	adds	r1, r1, r0
c0d016ce:	7c08      	ldrb	r0, [r1, #16]
c0d016d0:	2803      	cmp	r0, #3
c0d016d2:	d000      	beq.n	c0d016d6 <parser_getItem+0x75e>
c0d016d4:	e50a      	b.n	c0d010ec <parser_getItem+0x174>
c0d016d6:	2012      	movs	r0, #18
c0d016d8:	9012      	str	r0, [sp, #72]	; 0x48
c0d016da:	5e0a      	ldrsh	r2, [r1, r0]
c0d016dc:	2014      	movs	r0, #20
c0d016de:	5e09      	ldrsh	r1, [r1, r0]
c0d016e0:	1a89      	subs	r1, r1, r2
c0d016e2:	2906      	cmp	r1, #6
c0d016e4:	d000      	beq.n	c0d016e8 <parser_getItem+0x770>
c0d016e6:	e501      	b.n	c0d010ec <parser_getItem+0x174>
c0d016e8:	4938      	ldr	r1, [pc, #224]	; (c0d017cc <parser_getItem+0x854>)
c0d016ea:	684d      	ldr	r5, [r1, #4]
c0d016ec:	18ab      	adds	r3, r5, r2
c0d016ee:	2200      	movs	r2, #0
c0d016f0:	2a06      	cmp	r2, #6
c0d016f2:	d009      	beq.n	c0d01708 <parser_getItem+0x790>
c0d016f4:	5c9c      	ldrb	r4, [r3, r2]
c0d016f6:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d016f8:	5c89      	ldrb	r1, [r1, r2]
c0d016fa:	1c52      	adds	r2, r2, #1
c0d016fc:	42a1      	cmp	r1, r4
c0d016fe:	d0f7      	beq.n	c0d016f0 <parser_getItem+0x778>
c0d01700:	1e51      	subs	r1, r2, #1
c0d01702:	2906      	cmp	r1, #6
c0d01704:	d200      	bcs.n	c0d01708 <parser_getItem+0x790>
c0d01706:	e4f1      	b.n	c0d010ec <parser_getItem+0x174>
c0d01708:	9908      	ldr	r1, [sp, #32]
c0d0170a:	1cc9      	adds	r1, r1, #3
c0d0170c:	b289      	uxth	r1, r1
c0d0170e:	00c9      	lsls	r1, r1, #3
c0d01710:	4a2e      	ldr	r2, [pc, #184]	; (c0d017cc <parser_getItem+0x854>)
c0d01712:	1853      	adds	r3, r2, r1
c0d01714:	7c19      	ldrb	r1, [r3, #16]
c0d01716:	2903      	cmp	r1, #3
c0d01718:	d000      	beq.n	c0d0171c <parser_getItem+0x7a4>
c0d0171a:	e4e7      	b.n	c0d010ec <parser_getItem+0x174>
c0d0171c:	9912      	ldr	r1, [sp, #72]	; 0x48
c0d0171e:	5e5a      	ldrsh	r2, [r3, r1]
c0d01720:	5e18      	ldrsh	r0, [r3, r0]
c0d01722:	1a80      	subs	r0, r0, r2
c0d01724:	2805      	cmp	r0, #5
c0d01726:	d000      	beq.n	c0d0172a <parser_getItem+0x7b2>
c0d01728:	e4e0      	b.n	c0d010ec <parser_getItem+0x174>
c0d0172a:	18a9      	adds	r1, r5, r2
c0d0172c:	2000      	movs	r0, #0
c0d0172e:	9d11      	ldr	r5, [sp, #68]	; 0x44
c0d01730:	2805      	cmp	r0, #5
c0d01732:	d00a      	beq.n	c0d0174a <parser_getItem+0x7d2>
c0d01734:	5c0a      	ldrb	r2, [r1, r0]
c0d01736:	9b0a      	ldr	r3, [sp, #40]	; 0x28
c0d01738:	5c1b      	ldrb	r3, [r3, r0]
c0d0173a:	1c40      	adds	r0, r0, #1
c0d0173c:	4293      	cmp	r3, r2
c0d0173e:	d0f7      	beq.n	c0d01730 <parser_getItem+0x7b8>
c0d01740:	1e40      	subs	r0, r0, #1
c0d01742:	2805      	cmp	r0, #5
c0d01744:	9d11      	ldr	r5, [sp, #68]	; 0x44
c0d01746:	d200      	bcs.n	c0d0174a <parser_getItem+0x7d2>
c0d01748:	e4d0      	b.n	c0d010ec <parser_getItem+0x174>
c0d0174a:	a832      	add	r0, sp, #200	; 0xc8
c0d0174c:	2181      	movs	r1, #129	; 0x81
c0d0174e:	9c09      	ldr	r4, [sp, #36]	; 0x24
c0d01750:	47a0      	blx	r4
c0d01752:	a825      	add	r0, sp, #148	; 0x94
c0d01754:	2132      	movs	r1, #50	; 0x32
c0d01756:	47a0      	blx	r4
c0d01758:	4628      	mov	r0, r5
c0d0175a:	9917      	ldr	r1, [sp, #92]	; 0x5c
c0d0175c:	47a0      	blx	r4
c0d0175e:	a853      	add	r0, sp, #332	; 0x14c
c0d01760:	21a0      	movs	r1, #160	; 0xa0
c0d01762:	47a0      	blx	r4
c0d01764:	1cb8      	adds	r0, r7, #2
c0d01766:	00c2      	lsls	r2, r0, #3
c0d01768:	4818      	ldr	r0, [pc, #96]	; (c0d017cc <parser_getItem+0x854>)
c0d0176a:	1880      	adds	r0, r0, r2
c0d0176c:	9912      	ldr	r1, [sp, #72]	; 0x48
c0d0176e:	5e40      	ldrsh	r0, [r0, r1]
c0d01770:	2608      	movs	r6, #8
c0d01772:	2800      	cmp	r0, #0
c0d01774:	d500      	bpl.n	c0d01778 <parser_getItem+0x800>
c0d01776:	e4b9      	b.n	c0d010ec <parser_getItem+0x174>
c0d01778:	1d39      	adds	r1, r7, #4
c0d0177a:	00cf      	lsls	r7, r1, #3
c0d0177c:	4913      	ldr	r1, [pc, #76]	; (c0d017cc <parser_getItem+0x854>)
c0d0177e:	19c9      	adds	r1, r1, r7
c0d01780:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0d01782:	5ec9      	ldrsh	r1, [r1, r3]
c0d01784:	2900      	cmp	r1, #0
c0d01786:	d500      	bpl.n	c0d0178a <parser_getItem+0x812>
c0d01788:	e4b0      	b.n	c0d010ec <parser_getItem+0x174>
c0d0178a:	4b10      	ldr	r3, [pc, #64]	; (c0d017cc <parser_getItem+0x854>)
c0d0178c:	3310      	adds	r3, #16
c0d0178e:	19df      	adds	r7, r3, r7
c0d01790:	2404      	movs	r4, #4
c0d01792:	5f3f      	ldrsh	r7, [r7, r4]
c0d01794:	1a7f      	subs	r7, r7, r1
c0d01796:	2505      	movs	r5, #5
c0d01798:	2f01      	cmp	r7, #1
c0d0179a:	db09      	blt.n	c0d017b0 <parser_getItem+0x838>
c0d0179c:	2f80      	cmp	r7, #128	; 0x80
c0d0179e:	dc07      	bgt.n	c0d017b0 <parser_getItem+0x838>
c0d017a0:	189a      	adds	r2, r3, r2
c0d017a2:	5f12      	ldrsh	r2, [r2, r4]
c0d017a4:	1a12      	subs	r2, r2, r0
c0d017a6:	2a01      	cmp	r2, #1
c0d017a8:	db02      	blt.n	c0d017b0 <parser_getItem+0x838>
c0d017aa:	4614      	mov	r4, r2
c0d017ac:	2a31      	cmp	r2, #49	; 0x31
c0d017ae:	dd7a      	ble.n	c0d018a6 <parser_getItem+0x92e>
c0d017b0:	462e      	mov	r6, r5
c0d017b2:	e49b      	b.n	c0d010ec <parser_getItem+0x174>
c0d017b4:	00006798 	.word	0x00006798
c0d017b8:	0000ffff 	.word	0x0000ffff
c0d017bc:	00006715 	.word	0x00006715
c0d017c0:	00007e6c 	.word	0x00007e6c
c0d017c4:	00008431 	.word	0x00008431
c0d017c8:	00006671 	.word	0x00006671
c0d017cc:	200005c4 	.word	0x200005c4
c0d017d0:	0000651b 	.word	0x0000651b
c0d017d4:	0000650d 	.word	0x0000650d
c0d017d8:	1929      	adds	r1, r5, r4
c0d017da:	299e      	cmp	r1, #158	; 0x9e
c0d017dc:	d900      	bls.n	c0d017e0 <parser_getItem+0x868>
c0d017de:	e485      	b.n	c0d010ec <parser_getItem+0x174>
c0d017e0:	49f0      	ldr	r1, [pc, #960]	; (c0d01ba4 <parser_getItem+0xc2c>)
c0d017e2:	6849      	ldr	r1, [r1, #4]
c0d017e4:	19cf      	adds	r7, r1, r7
c0d017e6:	1808      	adds	r0, r1, r0
c0d017e8:	9010      	str	r0, [sp, #64]	; 0x40
c0d017ea:	a832      	add	r0, sp, #200	; 0xc8
c0d017ec:	4639      	mov	r1, r7
c0d017ee:	462a      	mov	r2, r5
c0d017f0:	f005 fc3a 	bl	c0d07068 <__aeabi_memmove>
c0d017f4:	ae25      	add	r6, sp, #148	; 0x94
c0d017f6:	4630      	mov	r0, r6
c0d017f8:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d017fa:	4622      	mov	r2, r4
c0d017fc:	f005 fc34 	bl	c0d07068 <__aeabi_memmove>
c0d01800:	a853      	add	r0, sp, #332	; 0x14c
c0d01802:	21a0      	movs	r1, #160	; 0xa0
c0d01804:	4aeb      	ldr	r2, [pc, #940]	; (c0d01bb4 <parser_getItem+0xc3c>)
c0d01806:	447a      	add	r2, pc
c0d01808:	4633      	mov	r3, r6
c0d0180a:	f005 f901 	bl	c0d06a10 <snprintf>
c0d0180e:	a824      	add	r0, sp, #144	; 0x90
c0d01810:	2100      	movs	r1, #0
c0d01812:	9110      	str	r1, [sp, #64]	; 0x40
c0d01814:	7001      	strb	r1, [r0, #0]
c0d01816:	f000 fd29 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d0181a:	4606      	mov	r6, r0
c0d0181c:	f003 fa44 	bl	c0d04ca8 <check_app_canary>
c0d01820:	b2e8      	uxtb	r0, r5
c0d01822:	2804      	cmp	r0, #4
c0d01824:	d113      	bne.n	c0d0184e <parser_getItem+0x8d6>
c0d01826:	9824      	ldr	r0, [sp, #144]	; 0x90
c0d01828:	4330      	orrs	r0, r6
c0d0182a:	b2c0      	uxtb	r0, r0
c0d0182c:	2800      	cmp	r0, #0
c0d0182e:	d10e      	bne.n	c0d0184e <parser_getItem+0x8d6>
c0d01830:	7838      	ldrb	r0, [r7, #0]
c0d01832:	7879      	ldrb	r1, [r7, #1]
c0d01834:	0209      	lsls	r1, r1, #8
c0d01836:	1808      	adds	r0, r1, r0
c0d01838:	78b9      	ldrb	r1, [r7, #2]
c0d0183a:	78fa      	ldrb	r2, [r7, #3]
c0d0183c:	0212      	lsls	r2, r2, #8
c0d0183e:	1851      	adds	r1, r2, r1
c0d01840:	0409      	lsls	r1, r1, #16
c0d01842:	1808      	adds	r0, r1, r0
c0d01844:	49d8      	ldr	r1, [pc, #864]	; (c0d01ba8 <parser_getItem+0xc30>)
c0d01846:	1840      	adds	r0, r0, r1
c0d01848:	4241      	negs	r1, r0
c0d0184a:	4141      	adcs	r1, r0
c0d0184c:	9110      	str	r1, [sp, #64]	; 0x40
c0d0184e:	f003 fa2b 	bl	c0d04ca8 <check_app_canary>
c0d01852:	2e00      	cmp	r6, #0
c0d01854:	d000      	beq.n	c0d01858 <parser_getItem+0x8e0>
c0d01856:	e449      	b.n	c0d010ec <parser_getItem+0x174>
c0d01858:	9810      	ldr	r0, [sp, #64]	; 0x40
c0d0185a:	2800      	cmp	r0, #0
c0d0185c:	d100      	bne.n	c0d01860 <parser_getItem+0x8e8>
c0d0185e:	e0d5      	b.n	c0d01a0c <parser_getItem+0xa94>
c0d01860:	a853      	add	r0, sp, #332	; 0x14c
c0d01862:	21a0      	movs	r1, #160	; 0xa0
c0d01864:	f005 fc0c 	bl	c0d07080 <explicit_bzero>
c0d01868:	a825      	add	r0, sp, #148	; 0x94
c0d0186a:	f005 fd8b 	bl	c0d07384 <strlen>
c0d0186e:	4607      	mov	r7, r0
c0d01870:	1c80      	adds	r0, r0, #2
c0d01872:	28a0      	cmp	r0, #160	; 0xa0
c0d01874:	9e16      	ldr	r6, [sp, #88]	; 0x58
c0d01876:	d900      	bls.n	c0d0187a <parser_getItem+0x902>
c0d01878:	e438      	b.n	c0d010ec <parser_getItem+0x174>
c0d0187a:	2f09      	cmp	r7, #9
c0d0187c:	d87e      	bhi.n	c0d0197c <parser_getItem+0xa04>
c0d0187e:	a853      	add	r0, sp, #332	; 0x14c
c0d01880:	2100      	movs	r1, #0
c0d01882:	7081      	strb	r1, [r0, #2]
c0d01884:	49c9      	ldr	r1, [pc, #804]	; (c0d01bac <parser_getItem+0xc34>)
c0d01886:	8001      	strh	r1, [r0, #0]
c0d01888:	2109      	movs	r1, #9
c0d0188a:	1bcc      	subs	r4, r1, r7
c0d0188c:	1c86      	adds	r6, r0, #2
c0d0188e:	2230      	movs	r2, #48	; 0x30
c0d01890:	4630      	mov	r0, r6
c0d01892:	4621      	mov	r1, r4
c0d01894:	f005 fbec 	bl	c0d07070 <__aeabi_memset>
c0d01898:	1930      	adds	r0, r6, r4
c0d0189a:	3795      	adds	r7, #149	; 0x95
c0d0189c:	4ac6      	ldr	r2, [pc, #792]	; (c0d01bb8 <parser_getItem+0xc40>)
c0d0189e:	447a      	add	r2, pc
c0d018a0:	ab25      	add	r3, sp, #148	; 0x94
c0d018a2:	4639      	mov	r1, r7
c0d018a4:	e07e      	b.n	c0d019a4 <parser_getItem+0xa2c>
c0d018a6:	193a      	adds	r2, r7, r4
c0d018a8:	2a9e      	cmp	r2, #158	; 0x9e
c0d018aa:	d900      	bls.n	c0d018ae <parser_getItem+0x936>
c0d018ac:	e41e      	b.n	c0d010ec <parser_getItem+0x174>
c0d018ae:	4abd      	ldr	r2, [pc, #756]	; (c0d01ba4 <parser_getItem+0xc2c>)
c0d018b0:	6852      	ldr	r2, [r2, #4]
c0d018b2:	1851      	adds	r1, r2, r1
c0d018b4:	1810      	adds	r0, r2, r0
c0d018b6:	9012      	str	r0, [sp, #72]	; 0x48
c0d018b8:	a832      	add	r0, sp, #200	; 0xc8
c0d018ba:	9110      	str	r1, [sp, #64]	; 0x40
c0d018bc:	463a      	mov	r2, r7
c0d018be:	f005 fbd3 	bl	c0d07068 <__aeabi_memmove>
c0d018c2:	ae25      	add	r6, sp, #148	; 0x94
c0d018c4:	4630      	mov	r0, r6
c0d018c6:	9912      	ldr	r1, [sp, #72]	; 0x48
c0d018c8:	4622      	mov	r2, r4
c0d018ca:	f005 fbcd 	bl	c0d07068 <__aeabi_memmove>
c0d018ce:	a853      	add	r0, sp, #332	; 0x14c
c0d018d0:	21a0      	movs	r1, #160	; 0xa0
c0d018d2:	4abe      	ldr	r2, [pc, #760]	; (c0d01bcc <parser_getItem+0xc54>)
c0d018d4:	447a      	add	r2, pc
c0d018d6:	4633      	mov	r3, r6
c0d018d8:	f005 f89a 	bl	c0d06a10 <snprintf>
c0d018dc:	a823      	add	r0, sp, #140	; 0x8c
c0d018de:	2100      	movs	r1, #0
c0d018e0:	9112      	str	r1, [sp, #72]	; 0x48
c0d018e2:	7001      	strb	r1, [r0, #0]
c0d018e4:	f000 fcc2 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d018e8:	4606      	mov	r6, r0
c0d018ea:	f003 f9dd 	bl	c0d04ca8 <check_app_canary>
c0d018ee:	b2f8      	uxtb	r0, r7
c0d018f0:	2804      	cmp	r0, #4
c0d018f2:	d114      	bne.n	c0d0191e <parser_getItem+0x9a6>
c0d018f4:	9823      	ldr	r0, [sp, #140]	; 0x8c
c0d018f6:	4330      	orrs	r0, r6
c0d018f8:	b2c0      	uxtb	r0, r0
c0d018fa:	2800      	cmp	r0, #0
c0d018fc:	d10f      	bne.n	c0d0191e <parser_getItem+0x9a6>
c0d018fe:	9a10      	ldr	r2, [sp, #64]	; 0x40
c0d01900:	7810      	ldrb	r0, [r2, #0]
c0d01902:	7851      	ldrb	r1, [r2, #1]
c0d01904:	0209      	lsls	r1, r1, #8
c0d01906:	1808      	adds	r0, r1, r0
c0d01908:	7891      	ldrb	r1, [r2, #2]
c0d0190a:	78d2      	ldrb	r2, [r2, #3]
c0d0190c:	0212      	lsls	r2, r2, #8
c0d0190e:	1851      	adds	r1, r2, r1
c0d01910:	0409      	lsls	r1, r1, #16
c0d01912:	1808      	adds	r0, r1, r0
c0d01914:	49a4      	ldr	r1, [pc, #656]	; (c0d01ba8 <parser_getItem+0xc30>)
c0d01916:	1840      	adds	r0, r0, r1
c0d01918:	4241      	negs	r1, r0
c0d0191a:	4141      	adcs	r1, r0
c0d0191c:	9112      	str	r1, [sp, #72]	; 0x48
c0d0191e:	f003 f9c3 	bl	c0d04ca8 <check_app_canary>
c0d01922:	2e00      	cmp	r6, #0
c0d01924:	d001      	beq.n	c0d0192a <parser_getItem+0x9b2>
c0d01926:	f7ff fbe1 	bl	c0d010ec <parser_getItem+0x174>
c0d0192a:	9812      	ldr	r0, [sp, #72]	; 0x48
c0d0192c:	2800      	cmp	r0, #0
c0d0192e:	d100      	bne.n	c0d01932 <parser_getItem+0x9ba>
c0d01930:	e0fb      	b.n	c0d01b2a <parser_getItem+0xbb2>
c0d01932:	a853      	add	r0, sp, #332	; 0x14c
c0d01934:	21a0      	movs	r1, #160	; 0xa0
c0d01936:	f005 fba3 	bl	c0d07080 <explicit_bzero>
c0d0193a:	a825      	add	r0, sp, #148	; 0x94
c0d0193c:	f005 fd22 	bl	c0d07384 <strlen>
c0d01940:	4607      	mov	r7, r0
c0d01942:	1c80      	adds	r0, r0, #2
c0d01944:	28a0      	cmp	r0, #160	; 0xa0
c0d01946:	462e      	mov	r6, r5
c0d01948:	d901      	bls.n	c0d0194e <parser_getItem+0x9d6>
c0d0194a:	f7ff fbcf 	bl	c0d010ec <parser_getItem+0x174>
c0d0194e:	2f09      	cmp	r7, #9
c0d01950:	d900      	bls.n	c0d01954 <parser_getItem+0x9dc>
c0d01952:	e0a2      	b.n	c0d01a9a <parser_getItem+0xb22>
c0d01954:	a853      	add	r0, sp, #332	; 0x14c
c0d01956:	2100      	movs	r1, #0
c0d01958:	7081      	strb	r1, [r0, #2]
c0d0195a:	4994      	ldr	r1, [pc, #592]	; (c0d01bac <parser_getItem+0xc34>)
c0d0195c:	8001      	strh	r1, [r0, #0]
c0d0195e:	2009      	movs	r0, #9
c0d01960:	1bc6      	subs	r6, r0, r7
c0d01962:	2230      	movs	r2, #48	; 0x30
c0d01964:	9c05      	ldr	r4, [sp, #20]
c0d01966:	4620      	mov	r0, r4
c0d01968:	4631      	mov	r1, r6
c0d0196a:	f005 fb81 	bl	c0d07070 <__aeabi_memset>
c0d0196e:	19a0      	adds	r0, r4, r6
c0d01970:	3795      	adds	r7, #149	; 0x95
c0d01972:	4a97      	ldr	r2, [pc, #604]	; (c0d01bd0 <parser_getItem+0xc58>)
c0d01974:	447a      	add	r2, pc
c0d01976:	ab25      	add	r3, sp, #148	; 0x94
c0d01978:	4639      	mov	r1, r7
c0d0197a:	e0a2      	b.n	c0d01ac2 <parser_getItem+0xb4a>
c0d0197c:	ae53      	add	r6, sp, #332	; 0x14c
c0d0197e:	21a0      	movs	r1, #160	; 0xa0
c0d01980:	4c8e      	ldr	r4, [pc, #568]	; (c0d01bbc <parser_getItem+0xc44>)
c0d01982:	447c      	add	r4, pc
c0d01984:	ad25      	add	r5, sp, #148	; 0x94
c0d01986:	4630      	mov	r0, r6
c0d01988:	4622      	mov	r2, r4
c0d0198a:	462b      	mov	r3, r5
c0d0198c:	f005 f840 	bl	c0d06a10 <snprintf>
c0d01990:	4638      	mov	r0, r7
c0d01992:	3809      	subs	r0, #9
c0d01994:	212e      	movs	r1, #46	; 0x2e
c0d01996:	5431      	strb	r1, [r6, r0]
c0d01998:	21a8      	movs	r1, #168	; 0xa8
c0d0199a:	1bc9      	subs	r1, r1, r7
c0d0199c:	182b      	adds	r3, r5, r0
c0d0199e:	1830      	adds	r0, r6, r0
c0d019a0:	1c40      	adds	r0, r0, #1
c0d019a2:	4622      	mov	r2, r4
c0d019a4:	f005 f834 	bl	c0d06a10 <snprintf>
c0d019a8:	a853      	add	r0, sp, #332	; 0x14c
c0d019aa:	f005 fceb 	bl	c0d07384 <strlen>
c0d019ae:	2802      	cmp	r0, #2
c0d019b0:	d324      	bcc.n	c0d019fc <parser_getItem+0xa84>
c0d019b2:	2101      	movs	r1, #1
c0d019b4:	0289      	lsls	r1, r1, #10
c0d019b6:	4288      	cmp	r0, r1
c0d019b8:	d820      	bhi.n	c0d019fc <parser_getItem+0xa84>
c0d019ba:	2200      	movs	r2, #0
c0d019bc:	497c      	ldr	r1, [pc, #496]	; (c0d01bb0 <parser_getItem+0xc38>)
c0d019be:	b20b      	sxth	r3, r1
c0d019c0:	2b00      	cmp	r3, #0
c0d019c2:	d50b      	bpl.n	c0d019dc <parser_getItem+0xa64>
c0d019c4:	b216      	sxth	r6, r2
c0d019c6:	42b0      	cmp	r0, r6
c0d019c8:	dd08      	ble.n	c0d019dc <parser_getItem+0xa64>
c0d019ca:	ab53      	add	r3, sp, #332	; 0x14c
c0d019cc:	5d9b      	ldrb	r3, [r3, r6]
c0d019ce:	2b2e      	cmp	r3, #46	; 0x2e
c0d019d0:	4613      	mov	r3, r2
c0d019d2:	d000      	beq.n	c0d019d6 <parser_getItem+0xa5e>
c0d019d4:	460b      	mov	r3, r1
c0d019d6:	1c52      	adds	r2, r2, #1
c0d019d8:	4619      	mov	r1, r3
c0d019da:	e7f0      	b.n	c0d019be <parser_getItem+0xa46>
c0d019dc:	2b00      	cmp	r3, #0
c0d019de:	d40d      	bmi.n	c0d019fc <parser_getItem+0xa84>
c0d019e0:	1e40      	subs	r0, r0, #1
c0d019e2:	b289      	uxth	r1, r1
c0d019e4:	1d89      	adds	r1, r1, #6
c0d019e6:	4288      	cmp	r0, r1
c0d019e8:	d908      	bls.n	c0d019fc <parser_getItem+0xa84>
c0d019ea:	aa53      	add	r2, sp, #332	; 0x14c
c0d019ec:	5c12      	ldrb	r2, [r2, r0]
c0d019ee:	2a30      	cmp	r2, #48	; 0x30
c0d019f0:	d104      	bne.n	c0d019fc <parser_getItem+0xa84>
c0d019f2:	aa53      	add	r2, sp, #332	; 0x14c
c0d019f4:	2300      	movs	r3, #0
c0d019f6:	5413      	strb	r3, [r2, r0]
c0d019f8:	1e40      	subs	r0, r0, #1
c0d019fa:	e7f4      	b.n	c0d019e6 <parser_getItem+0xa6e>
c0d019fc:	a832      	add	r0, sp, #200	; 0xc8
c0d019fe:	2181      	movs	r1, #129	; 0x81
c0d01a00:	4a6f      	ldr	r2, [pc, #444]	; (c0d01bc0 <parser_getItem+0xc48>)
c0d01a02:	447a      	add	r2, pc
c0d01a04:	4b6f      	ldr	r3, [pc, #444]	; (c0d01bc4 <parser_getItem+0xc4c>)
c0d01a06:	447b      	add	r3, pc
c0d01a08:	f005 f802 	bl	c0d06a10 <snprintf>
c0d01a0c:	ae53      	add	r6, sp, #332	; 0x14c
c0d01a0e:	21a0      	movs	r1, #160	; 0xa0
c0d01a10:	4a6d      	ldr	r2, [pc, #436]	; (c0d01bc8 <parser_getItem+0xc50>)
c0d01a12:	447a      	add	r2, pc
c0d01a14:	ab32      	add	r3, sp, #200	; 0xc8
c0d01a16:	4630      	mov	r0, r6
c0d01a18:	f003 f900 	bl	c0d04c1c <z_str3join>
c0d01a1c:	4630      	mov	r0, r6
c0d01a1e:	f005 fcb1 	bl	c0d07384 <strlen>
c0d01a22:	4605      	mov	r5, r0
c0d01a24:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d01a26:	9c17      	ldr	r4, [sp, #92]	; 0x5c
c0d01a28:	4621      	mov	r1, r4
c0d01a2a:	f005 fb29 	bl	c0d07080 <explicit_bzero>
c0d01a2e:	2600      	movs	r6, #0
c0d01a30:	9812      	ldr	r0, [sp, #72]	; 0x48
c0d01a32:	7006      	strb	r6, [r0, #0]
c0d01a34:	1e67      	subs	r7, r4, #1
c0d01a36:	b2bc      	uxth	r4, r7
c0d01a38:	2c00      	cmp	r4, #0
c0d01a3a:	d101      	bne.n	c0d01a40 <parser_getItem+0xac8>
c0d01a3c:	f7ff fb56 	bl	c0d010ec <parser_getItem+0x174>
c0d01a40:	0428      	lsls	r0, r5, #16
c0d01a42:	d101      	bne.n	c0d01a48 <parser_getItem+0xad0>
c0d01a44:	f7ff fb52 	bl	c0d010ec <parser_getItem+0x174>
c0d01a48:	b2a8      	uxth	r0, r5
c0d01a4a:	4621      	mov	r1, r4
c0d01a4c:	f005 fa96 	bl	c0d06f7c <__udivsi3>
c0d01a50:	4347      	muls	r7, r0
c0d01a52:	1be9      	subs	r1, r5, r7
c0d01a54:	b28a      	uxth	r2, r1
c0d01a56:	1e53      	subs	r3, r2, #1
c0d01a58:	4617      	mov	r7, r2
c0d01a5a:	419f      	sbcs	r7, r3
c0d01a5c:	1838      	adds	r0, r7, r0
c0d01a5e:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0d01a60:	7018      	strb	r0, [r3, #0]
c0d01a62:	b2c0      	uxtb	r0, r0
c0d01a64:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
c0d01a66:	4298      	cmp	r0, r3
c0d01a68:	d801      	bhi.n	c0d01a6e <parser_getItem+0xaf6>
c0d01a6a:	f7ff fb3f 	bl	c0d010ec <parser_getItem+0x174>
c0d01a6e:	0409      	lsls	r1, r1, #16
c0d01a70:	d009      	beq.n	c0d01a86 <parser_getItem+0xb0e>
c0d01a72:	1e40      	subs	r0, r0, #1
c0d01a74:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d01a76:	4288      	cmp	r0, r1
c0d01a78:	d105      	bne.n	c0d01a86 <parser_getItem+0xb0e>
c0d01a7a:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d01a7c:	4344      	muls	r4, r0
c0d01a7e:	a853      	add	r0, sp, #332	; 0x14c
c0d01a80:	1901      	adds	r1, r0, r4
c0d01a82:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d01a84:	e005      	b.n	c0d01a92 <parser_getItem+0xb1a>
c0d01a86:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d01a88:	4361      	muls	r1, r4
c0d01a8a:	a853      	add	r0, sp, #332	; 0x14c
c0d01a8c:	1841      	adds	r1, r0, r1
c0d01a8e:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d01a90:	4622      	mov	r2, r4
c0d01a92:	f005 fae5 	bl	c0d07060 <__aeabi_memcpy>
c0d01a96:	f7ff fb29 	bl	c0d010ec <parser_getItem+0x174>
c0d01a9a:	ae53      	add	r6, sp, #332	; 0x14c
c0d01a9c:	21a0      	movs	r1, #160	; 0xa0
c0d01a9e:	4c4d      	ldr	r4, [pc, #308]	; (c0d01bd4 <parser_getItem+0xc5c>)
c0d01aa0:	447c      	add	r4, pc
c0d01aa2:	ad25      	add	r5, sp, #148	; 0x94
c0d01aa4:	4630      	mov	r0, r6
c0d01aa6:	4622      	mov	r2, r4
c0d01aa8:	462b      	mov	r3, r5
c0d01aaa:	f004 ffb1 	bl	c0d06a10 <snprintf>
c0d01aae:	4638      	mov	r0, r7
c0d01ab0:	3809      	subs	r0, #9
c0d01ab2:	212e      	movs	r1, #46	; 0x2e
c0d01ab4:	5431      	strb	r1, [r6, r0]
c0d01ab6:	21a8      	movs	r1, #168	; 0xa8
c0d01ab8:	1bc9      	subs	r1, r1, r7
c0d01aba:	182b      	adds	r3, r5, r0
c0d01abc:	1830      	adds	r0, r6, r0
c0d01abe:	1c40      	adds	r0, r0, #1
c0d01ac0:	4622      	mov	r2, r4
c0d01ac2:	f004 ffa5 	bl	c0d06a10 <snprintf>
c0d01ac6:	a853      	add	r0, sp, #332	; 0x14c
c0d01ac8:	f005 fc5c 	bl	c0d07384 <strlen>
c0d01acc:	2802      	cmp	r0, #2
c0d01ace:	d324      	bcc.n	c0d01b1a <parser_getItem+0xba2>
c0d01ad0:	2101      	movs	r1, #1
c0d01ad2:	0289      	lsls	r1, r1, #10
c0d01ad4:	4288      	cmp	r0, r1
c0d01ad6:	d820      	bhi.n	c0d01b1a <parser_getItem+0xba2>
c0d01ad8:	2200      	movs	r2, #0
c0d01ada:	4935      	ldr	r1, [pc, #212]	; (c0d01bb0 <parser_getItem+0xc38>)
c0d01adc:	b20b      	sxth	r3, r1
c0d01ade:	2b00      	cmp	r3, #0
c0d01ae0:	d50b      	bpl.n	c0d01afa <parser_getItem+0xb82>
c0d01ae2:	b214      	sxth	r4, r2
c0d01ae4:	42a0      	cmp	r0, r4
c0d01ae6:	dd08      	ble.n	c0d01afa <parser_getItem+0xb82>
c0d01ae8:	ab53      	add	r3, sp, #332	; 0x14c
c0d01aea:	5d1b      	ldrb	r3, [r3, r4]
c0d01aec:	2b2e      	cmp	r3, #46	; 0x2e
c0d01aee:	4613      	mov	r3, r2
c0d01af0:	d000      	beq.n	c0d01af4 <parser_getItem+0xb7c>
c0d01af2:	460b      	mov	r3, r1
c0d01af4:	1c52      	adds	r2, r2, #1
c0d01af6:	4619      	mov	r1, r3
c0d01af8:	e7f0      	b.n	c0d01adc <parser_getItem+0xb64>
c0d01afa:	2b00      	cmp	r3, #0
c0d01afc:	d40d      	bmi.n	c0d01b1a <parser_getItem+0xba2>
c0d01afe:	1e40      	subs	r0, r0, #1
c0d01b00:	b289      	uxth	r1, r1
c0d01b02:	1d89      	adds	r1, r1, #6
c0d01b04:	4288      	cmp	r0, r1
c0d01b06:	d908      	bls.n	c0d01b1a <parser_getItem+0xba2>
c0d01b08:	aa53      	add	r2, sp, #332	; 0x14c
c0d01b0a:	5c12      	ldrb	r2, [r2, r0]
c0d01b0c:	2a30      	cmp	r2, #48	; 0x30
c0d01b0e:	d104      	bne.n	c0d01b1a <parser_getItem+0xba2>
c0d01b10:	aa53      	add	r2, sp, #332	; 0x14c
c0d01b12:	2300      	movs	r3, #0
c0d01b14:	5413      	strb	r3, [r2, r0]
c0d01b16:	1e40      	subs	r0, r0, #1
c0d01b18:	e7f4      	b.n	c0d01b04 <parser_getItem+0xb8c>
c0d01b1a:	a832      	add	r0, sp, #200	; 0xc8
c0d01b1c:	2181      	movs	r1, #129	; 0x81
c0d01b1e:	4a2e      	ldr	r2, [pc, #184]	; (c0d01bd8 <parser_getItem+0xc60>)
c0d01b20:	447a      	add	r2, pc
c0d01b22:	4b2e      	ldr	r3, [pc, #184]	; (c0d01bdc <parser_getItem+0xc64>)
c0d01b24:	447b      	add	r3, pc
c0d01b26:	f004 ff73 	bl	c0d06a10 <snprintf>
c0d01b2a:	ae53      	add	r6, sp, #332	; 0x14c
c0d01b2c:	21a0      	movs	r1, #160	; 0xa0
c0d01b2e:	4a2c      	ldr	r2, [pc, #176]	; (c0d01be0 <parser_getItem+0xc68>)
c0d01b30:	447a      	add	r2, pc
c0d01b32:	ab32      	add	r3, sp, #200	; 0xc8
c0d01b34:	4630      	mov	r0, r6
c0d01b36:	f003 f871 	bl	c0d04c1c <z_str3join>
c0d01b3a:	4630      	mov	r0, r6
c0d01b3c:	f005 fc22 	bl	c0d07384 <strlen>
c0d01b40:	4607      	mov	r7, r0
c0d01b42:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d01b44:	9917      	ldr	r1, [sp, #92]	; 0x5c
c0d01b46:	f005 fa9b 	bl	c0d07080 <explicit_bzero>
c0d01b4a:	2600      	movs	r6, #0
c0d01b4c:	9807      	ldr	r0, [sp, #28]
c0d01b4e:	0400      	lsls	r0, r0, #16
c0d01b50:	d101      	bne.n	c0d01b56 <parser_getItem+0xbde>
c0d01b52:	f7ff facb 	bl	c0d010ec <parser_getItem+0x174>
c0d01b56:	0438      	lsls	r0, r7, #16
c0d01b58:	d101      	bne.n	c0d01b5e <parser_getItem+0xbe6>
c0d01b5a:	f7ff fac7 	bl	c0d010ec <parser_getItem+0x174>
c0d01b5e:	b2b8      	uxth	r0, r7
c0d01b60:	9906      	ldr	r1, [sp, #24]
c0d01b62:	f005 fa0b 	bl	c0d06f7c <__udivsi3>
c0d01b66:	9907      	ldr	r1, [sp, #28]
c0d01b68:	4341      	muls	r1, r0
c0d01b6a:	1a79      	subs	r1, r7, r1
c0d01b6c:	b28a      	uxth	r2, r1
c0d01b6e:	1e53      	subs	r3, r2, #1
c0d01b70:	4614      	mov	r4, r2
c0d01b72:	419c      	sbcs	r4, r3
c0d01b74:	1820      	adds	r0, r4, r0
c0d01b76:	b2c3      	uxtb	r3, r0
c0d01b78:	9816      	ldr	r0, [sp, #88]	; 0x58
c0d01b7a:	b2c0      	uxtb	r0, r0
c0d01b7c:	4283      	cmp	r3, r0
c0d01b7e:	d801      	bhi.n	c0d01b84 <parser_getItem+0xc0c>
c0d01b80:	f7ff fab4 	bl	c0d010ec <parser_getItem+0x174>
c0d01b84:	0409      	lsls	r1, r1, #16
c0d01b86:	d007      	beq.n	c0d01b98 <parser_getItem+0xc20>
c0d01b88:	1e59      	subs	r1, r3, #1
c0d01b8a:	4281      	cmp	r1, r0
c0d01b8c:	d104      	bne.n	c0d01b98 <parser_getItem+0xc20>
c0d01b8e:	9906      	ldr	r1, [sp, #24]
c0d01b90:	4341      	muls	r1, r0
c0d01b92:	a853      	add	r0, sp, #332	; 0x14c
c0d01b94:	1841      	adds	r1, r0, r1
c0d01b96:	e774      	b.n	c0d01a82 <parser_getItem+0xb0a>
c0d01b98:	9a06      	ldr	r2, [sp, #24]
c0d01b9a:	4350      	muls	r0, r2
c0d01b9c:	a953      	add	r1, sp, #332	; 0x14c
c0d01b9e:	1809      	adds	r1, r1, r0
c0d01ba0:	e76f      	b.n	c0d01a82 <parser_getItem+0xb0a>
c0d01ba2:	46c0      	nop			; (mov r8, r8)
c0d01ba4:	200005c4 	.word	0x200005c4
c0d01ba8:	8d978c92 	.word	0x8d978c92
c0d01bac:	00002e30 	.word	0x00002e30
c0d01bb0:	0000ffff 	.word	0x0000ffff
c0d01bb4:	000063b3 	.word	0x000063b3
c0d01bb8:	00006320 	.word	0x00006320
c0d01bbc:	0000623c 	.word	0x0000623c
c0d01bc0:	000061bb 	.word	0x000061bb
c0d01bc4:	00007912 	.word	0x00007912
c0d01bc8:	00007ed7 	.word	0x00007ed7
c0d01bcc:	000062e5 	.word	0x000062e5
c0d01bd0:	0000624a 	.word	0x0000624a
c0d01bd4:	0000611e 	.word	0x0000611e
c0d01bd8:	0000609d 	.word	0x0000609d
c0d01bdc:	000077f4 	.word	0x000077f4
c0d01be0:	00007db9 	.word	0x00007db9

c0d01be4 <parser_getErrorDescription>:
c0d01be4:	2800      	cmp	r0, #0
c0d01be6:	d044      	beq.n	c0d01c72 <parser_getErrorDescription+0x8e>
c0d01be8:	2826      	cmp	r0, #38	; 0x26
c0d01bea:	d045      	beq.n	c0d01c78 <parser_getErrorDescription+0x94>
c0d01bec:	2802      	cmp	r0, #2
c0d01bee:	d046      	beq.n	c0d01c7e <parser_getErrorDescription+0x9a>
c0d01bf0:	2803      	cmp	r0, #3
c0d01bf2:	d047      	beq.n	c0d01c84 <parser_getErrorDescription+0xa0>
c0d01bf4:	2804      	cmp	r0, #4
c0d01bf6:	d048      	beq.n	c0d01c8a <parser_getErrorDescription+0xa6>
c0d01bf8:	2806      	cmp	r0, #6
c0d01bfa:	d049      	beq.n	c0d01c90 <parser_getErrorDescription+0xac>
c0d01bfc:	2808      	cmp	r0, #8
c0d01bfe:	d04a      	beq.n	c0d01c96 <parser_getErrorDescription+0xb2>
c0d01c00:	280b      	cmp	r0, #11
c0d01c02:	d04b      	beq.n	c0d01c9c <parser_getErrorDescription+0xb8>
c0d01c04:	280c      	cmp	r0, #12
c0d01c06:	d04c      	beq.n	c0d01ca2 <parser_getErrorDescription+0xbe>
c0d01c08:	280d      	cmp	r0, #13
c0d01c0a:	d04d      	beq.n	c0d01ca8 <parser_getErrorDescription+0xc4>
c0d01c0c:	280e      	cmp	r0, #14
c0d01c0e:	d04e      	beq.n	c0d01cae <parser_getErrorDescription+0xca>
c0d01c10:	280f      	cmp	r0, #15
c0d01c12:	d04f      	beq.n	c0d01cb4 <parser_getErrorDescription+0xd0>
c0d01c14:	2811      	cmp	r0, #17
c0d01c16:	d050      	beq.n	c0d01cba <parser_getErrorDescription+0xd6>
c0d01c18:	2812      	cmp	r0, #18
c0d01c1a:	d051      	beq.n	c0d01cc0 <parser_getErrorDescription+0xdc>
c0d01c1c:	2813      	cmp	r0, #19
c0d01c1e:	d052      	beq.n	c0d01cc6 <parser_getErrorDescription+0xe2>
c0d01c20:	2814      	cmp	r0, #20
c0d01c22:	d053      	beq.n	c0d01ccc <parser_getErrorDescription+0xe8>
c0d01c24:	2815      	cmp	r0, #21
c0d01c26:	d054      	beq.n	c0d01cd2 <parser_getErrorDescription+0xee>
c0d01c28:	2816      	cmp	r0, #22
c0d01c2a:	d055      	beq.n	c0d01cd8 <parser_getErrorDescription+0xf4>
c0d01c2c:	2817      	cmp	r0, #23
c0d01c2e:	d056      	beq.n	c0d01cde <parser_getErrorDescription+0xfa>
c0d01c30:	2818      	cmp	r0, #24
c0d01c32:	d057      	beq.n	c0d01ce4 <parser_getErrorDescription+0x100>
c0d01c34:	2819      	cmp	r0, #25
c0d01c36:	d058      	beq.n	c0d01cea <parser_getErrorDescription+0x106>
c0d01c38:	281a      	cmp	r0, #26
c0d01c3a:	d059      	beq.n	c0d01cf0 <parser_getErrorDescription+0x10c>
c0d01c3c:	281b      	cmp	r0, #27
c0d01c3e:	d05a      	beq.n	c0d01cf6 <parser_getErrorDescription+0x112>
c0d01c40:	281c      	cmp	r0, #28
c0d01c42:	d05b      	beq.n	c0d01cfc <parser_getErrorDescription+0x118>
c0d01c44:	281d      	cmp	r0, #29
c0d01c46:	d05c      	beq.n	c0d01d02 <parser_getErrorDescription+0x11e>
c0d01c48:	281e      	cmp	r0, #30
c0d01c4a:	d05d      	beq.n	c0d01d08 <parser_getErrorDescription+0x124>
c0d01c4c:	281f      	cmp	r0, #31
c0d01c4e:	d05e      	beq.n	c0d01d0e <parser_getErrorDescription+0x12a>
c0d01c50:	2820      	cmp	r0, #32
c0d01c52:	d05f      	beq.n	c0d01d14 <parser_getErrorDescription+0x130>
c0d01c54:	2821      	cmp	r0, #33	; 0x21
c0d01c56:	d060      	beq.n	c0d01d1a <parser_getErrorDescription+0x136>
c0d01c58:	2822      	cmp	r0, #34	; 0x22
c0d01c5a:	d061      	beq.n	c0d01d20 <parser_getErrorDescription+0x13c>
c0d01c5c:	2823      	cmp	r0, #35	; 0x23
c0d01c5e:	d062      	beq.n	c0d01d26 <parser_getErrorDescription+0x142>
c0d01c60:	2824      	cmp	r0, #36	; 0x24
c0d01c62:	d063      	beq.n	c0d01d2c <parser_getErrorDescription+0x148>
c0d01c64:	2825      	cmp	r0, #37	; 0x25
c0d01c66:	d064      	beq.n	c0d01d32 <parser_getErrorDescription+0x14e>
c0d01c68:	2801      	cmp	r0, #1
c0d01c6a:	d165      	bne.n	c0d01d38 <parser_getErrorDescription+0x154>
c0d01c6c:	4835      	ldr	r0, [pc, #212]	; (c0d01d44 <parser_getErrorDescription+0x160>)
c0d01c6e:	4478      	add	r0, pc
c0d01c70:	4770      	bx	lr
c0d01c72:	4833      	ldr	r0, [pc, #204]	; (c0d01d40 <parser_getErrorDescription+0x15c>)
c0d01c74:	4478      	add	r0, pc
c0d01c76:	4770      	bx	lr
c0d01c78:	4851      	ldr	r0, [pc, #324]	; (c0d01dc0 <parser_getErrorDescription+0x1dc>)
c0d01c7a:	4478      	add	r0, pc
c0d01c7c:	4770      	bx	lr
c0d01c7e:	4832      	ldr	r0, [pc, #200]	; (c0d01d48 <parser_getErrorDescription+0x164>)
c0d01c80:	4478      	add	r0, pc
c0d01c82:	4770      	bx	lr
c0d01c84:	483b      	ldr	r0, [pc, #236]	; (c0d01d74 <parser_getErrorDescription+0x190>)
c0d01c86:	4478      	add	r0, pc
c0d01c88:	4770      	bx	lr
c0d01c8a:	483b      	ldr	r0, [pc, #236]	; (c0d01d78 <parser_getErrorDescription+0x194>)
c0d01c8c:	4478      	add	r0, pc
c0d01c8e:	4770      	bx	lr
c0d01c90:	4837      	ldr	r0, [pc, #220]	; (c0d01d70 <parser_getErrorDescription+0x18c>)
c0d01c92:	4478      	add	r0, pc
c0d01c94:	4770      	bx	lr
c0d01c96:	482d      	ldr	r0, [pc, #180]	; (c0d01d4c <parser_getErrorDescription+0x168>)
c0d01c98:	4478      	add	r0, pc
c0d01c9a:	4770      	bx	lr
c0d01c9c:	482c      	ldr	r0, [pc, #176]	; (c0d01d50 <parser_getErrorDescription+0x16c>)
c0d01c9e:	4478      	add	r0, pc
c0d01ca0:	4770      	bx	lr
c0d01ca2:	482c      	ldr	r0, [pc, #176]	; (c0d01d54 <parser_getErrorDescription+0x170>)
c0d01ca4:	4478      	add	r0, pc
c0d01ca6:	4770      	bx	lr
c0d01ca8:	482b      	ldr	r0, [pc, #172]	; (c0d01d58 <parser_getErrorDescription+0x174>)
c0d01caa:	4478      	add	r0, pc
c0d01cac:	4770      	bx	lr
c0d01cae:	482b      	ldr	r0, [pc, #172]	; (c0d01d5c <parser_getErrorDescription+0x178>)
c0d01cb0:	4478      	add	r0, pc
c0d01cb2:	4770      	bx	lr
c0d01cb4:	482a      	ldr	r0, [pc, #168]	; (c0d01d60 <parser_getErrorDescription+0x17c>)
c0d01cb6:	4478      	add	r0, pc
c0d01cb8:	4770      	bx	lr
c0d01cba:	482a      	ldr	r0, [pc, #168]	; (c0d01d64 <parser_getErrorDescription+0x180>)
c0d01cbc:	4478      	add	r0, pc
c0d01cbe:	4770      	bx	lr
c0d01cc0:	482a      	ldr	r0, [pc, #168]	; (c0d01d6c <parser_getErrorDescription+0x188>)
c0d01cc2:	4478      	add	r0, pc
c0d01cc4:	4770      	bx	lr
c0d01cc6:	4828      	ldr	r0, [pc, #160]	; (c0d01d68 <parser_getErrorDescription+0x184>)
c0d01cc8:	4478      	add	r0, pc
c0d01cca:	4770      	bx	lr
c0d01ccc:	483d      	ldr	r0, [pc, #244]	; (c0d01dc4 <parser_getErrorDescription+0x1e0>)
c0d01cce:	4478      	add	r0, pc
c0d01cd0:	4770      	bx	lr
c0d01cd2:	482a      	ldr	r0, [pc, #168]	; (c0d01d7c <parser_getErrorDescription+0x198>)
c0d01cd4:	4478      	add	r0, pc
c0d01cd6:	4770      	bx	lr
c0d01cd8:	4829      	ldr	r0, [pc, #164]	; (c0d01d80 <parser_getErrorDescription+0x19c>)
c0d01cda:	4478      	add	r0, pc
c0d01cdc:	4770      	bx	lr
c0d01cde:	4829      	ldr	r0, [pc, #164]	; (c0d01d84 <parser_getErrorDescription+0x1a0>)
c0d01ce0:	4478      	add	r0, pc
c0d01ce2:	4770      	bx	lr
c0d01ce4:	4828      	ldr	r0, [pc, #160]	; (c0d01d88 <parser_getErrorDescription+0x1a4>)
c0d01ce6:	4478      	add	r0, pc
c0d01ce8:	4770      	bx	lr
c0d01cea:	4828      	ldr	r0, [pc, #160]	; (c0d01d8c <parser_getErrorDescription+0x1a8>)
c0d01cec:	4478      	add	r0, pc
c0d01cee:	4770      	bx	lr
c0d01cf0:	4827      	ldr	r0, [pc, #156]	; (c0d01d90 <parser_getErrorDescription+0x1ac>)
c0d01cf2:	4478      	add	r0, pc
c0d01cf4:	4770      	bx	lr
c0d01cf6:	4827      	ldr	r0, [pc, #156]	; (c0d01d94 <parser_getErrorDescription+0x1b0>)
c0d01cf8:	4478      	add	r0, pc
c0d01cfa:	4770      	bx	lr
c0d01cfc:	4826      	ldr	r0, [pc, #152]	; (c0d01d98 <parser_getErrorDescription+0x1b4>)
c0d01cfe:	4478      	add	r0, pc
c0d01d00:	4770      	bx	lr
c0d01d02:	4826      	ldr	r0, [pc, #152]	; (c0d01d9c <parser_getErrorDescription+0x1b8>)
c0d01d04:	4478      	add	r0, pc
c0d01d06:	4770      	bx	lr
c0d01d08:	4825      	ldr	r0, [pc, #148]	; (c0d01da0 <parser_getErrorDescription+0x1bc>)
c0d01d0a:	4478      	add	r0, pc
c0d01d0c:	4770      	bx	lr
c0d01d0e:	4825      	ldr	r0, [pc, #148]	; (c0d01da4 <parser_getErrorDescription+0x1c0>)
c0d01d10:	4478      	add	r0, pc
c0d01d12:	4770      	bx	lr
c0d01d14:	4824      	ldr	r0, [pc, #144]	; (c0d01da8 <parser_getErrorDescription+0x1c4>)
c0d01d16:	4478      	add	r0, pc
c0d01d18:	4770      	bx	lr
c0d01d1a:	4824      	ldr	r0, [pc, #144]	; (c0d01dac <parser_getErrorDescription+0x1c8>)
c0d01d1c:	4478      	add	r0, pc
c0d01d1e:	4770      	bx	lr
c0d01d20:	4824      	ldr	r0, [pc, #144]	; (c0d01db4 <parser_getErrorDescription+0x1d0>)
c0d01d22:	4478      	add	r0, pc
c0d01d24:	4770      	bx	lr
c0d01d26:	4822      	ldr	r0, [pc, #136]	; (c0d01db0 <parser_getErrorDescription+0x1cc>)
c0d01d28:	4478      	add	r0, pc
c0d01d2a:	4770      	bx	lr
c0d01d2c:	4822      	ldr	r0, [pc, #136]	; (c0d01db8 <parser_getErrorDescription+0x1d4>)
c0d01d2e:	4478      	add	r0, pc
c0d01d30:	4770      	bx	lr
c0d01d32:	4822      	ldr	r0, [pc, #136]	; (c0d01dbc <parser_getErrorDescription+0x1d8>)
c0d01d34:	4478      	add	r0, pc
c0d01d36:	4770      	bx	lr
c0d01d38:	4823      	ldr	r0, [pc, #140]	; (c0d01dc8 <parser_getErrorDescription+0x1e4>)
c0d01d3a:	4478      	add	r0, pc
c0d01d3c:	4770      	bx	lr
c0d01d3e:	46c0      	nop			; (mov r8, r8)
c0d01d40:	00005f55 	.word	0x00005f55
c0d01d44:	00005f64 	.word	0x00005f64
c0d01d48:	00005f5f 	.word	0x00005f5f
c0d01d4c:	00005f61 	.word	0x00005f61
c0d01d50:	00005f71 	.word	0x00005f71
c0d01d54:	00005f7e 	.word	0x00005f7e
c0d01d58:	00005f8e 	.word	0x00005f8e
c0d01d5c:	00005f99 	.word	0x00005f99
c0d01d60:	00005faf 	.word	0x00005faf
c0d01d64:	00005fbc 	.word	0x00005fbc
c0d01d68:	00005fc1 	.word	0x00005fc1
c0d01d6c:	00005fe6 	.word	0x00005fe6
c0d01d70:	00006024 	.word	0x00006024
c0d01d74:	00006040 	.word	0x00006040
c0d01d78:	00006055 	.word	0x00006055
c0d01d7c:	00006027 	.word	0x00006027
c0d01d80:	00006033 	.word	0x00006033
c0d01d84:	00006043 	.word	0x00006043
c0d01d88:	00006059 	.word	0x00006059
c0d01d8c:	0000607a 	.word	0x0000607a
c0d01d90:	00006095 	.word	0x00006095
c0d01d94:	000060a5 	.word	0x000060a5
c0d01d98:	000060b5 	.word	0x000060b5
c0d01d9c:	000060c0 	.word	0x000060c0
c0d01da0:	000060cc 	.word	0x000060cc
c0d01da4:	000060e2 	.word	0x000060e2
c0d01da8:	000060ee 	.word	0x000060ee
c0d01dac:	000060fe 	.word	0x000060fe
c0d01db0:	00006108 	.word	0x00006108
c0d01db4:	0000612e 	.word	0x0000612e
c0d01db8:	00006136 	.word	0x00006136
c0d01dbc:	0000614a 	.word	0x0000614a
c0d01dc0:	0000621c 	.word	0x0000621c
c0d01dc4:	000061de 	.word	0x000061de
c0d01dc8:	00006189 	.word	0x00006189

c0d01dcc <_read_json_tx>:
c0d01dcc:	b5b0      	push	{r4, r5, r7, lr}
c0d01dce:	4604      	mov	r4, r0
c0d01dd0:	8882      	ldrh	r2, [r0, #4]
c0d01dd2:	6801      	ldr	r1, [r0, #0]
c0d01dd4:	4d0b      	ldr	r5, [pc, #44]	; (c0d01e04 <_read_json_tx+0x38>)
c0d01dd6:	4628      	mov	r0, r5
c0d01dd8:	3008      	adds	r0, #8
c0d01dda:	f7fe fee7 	bl	c0d00bac <json_parse>
c0d01dde:	2800      	cmp	r0, #0
c0d01de0:	d000      	beq.n	c0d01de4 <_read_json_tx+0x18>
c0d01de2:	bdb0      	pop	{r4, r5, r7, pc}
c0d01de4:	6821      	ldr	r1, [r4, #0]
c0d01de6:	2219      	movs	r2, #25
c0d01de8:	0152      	lsls	r2, r2, #5
c0d01dea:	2300      	movs	r3, #0
c0d01dec:	54ab      	strb	r3, [r5, r2]
c0d01dee:	4a06      	ldr	r2, [pc, #24]	; (c0d01e08 <_read_json_tx+0x3c>)
c0d01df0:	54ab      	strb	r3, [r5, r2]
c0d01df2:	2263      	movs	r2, #99	; 0x63
c0d01df4:	00d2      	lsls	r2, r2, #3
c0d01df6:	5cab      	ldrb	r3, [r5, r2]
c0d01df8:	24fe      	movs	r4, #254	; 0xfe
c0d01dfa:	401c      	ands	r4, r3
c0d01dfc:	54ac      	strb	r4, [r5, r2]
c0d01dfe:	6069      	str	r1, [r5, #4]
c0d01e00:	bdb0      	pop	{r4, r5, r7, pc}
c0d01e02:	46c0      	nop			; (mov r8, r8)
c0d01e04:	200005c4 	.word	0x200005c4
c0d01e08:	00000319 	.word	0x00000319

c0d01e0c <_read_text_tx>:
c0d01e0c:	200f      	movs	r0, #15
c0d01e0e:	4770      	bx	lr

c0d01e10 <get_required_root_item>:
c0d01e10:	2800      	cmp	r0, #0
c0d01e12:	d00e      	beq.n	c0d01e32 <get_required_root_item+0x22>
c0d01e14:	2806      	cmp	r0, #6
c0d01e16:	d00f      	beq.n	c0d01e38 <get_required_root_item+0x28>
c0d01e18:	2802      	cmp	r0, #2
c0d01e1a:	d010      	beq.n	c0d01e3e <get_required_root_item+0x2e>
c0d01e1c:	2803      	cmp	r0, #3
c0d01e1e:	d011      	beq.n	c0d01e44 <get_required_root_item+0x34>
c0d01e20:	2804      	cmp	r0, #4
c0d01e22:	d012      	beq.n	c0d01e4a <get_required_root_item+0x3a>
c0d01e24:	2805      	cmp	r0, #5
c0d01e26:	d013      	beq.n	c0d01e50 <get_required_root_item+0x40>
c0d01e28:	2801      	cmp	r0, #1
c0d01e2a:	d114      	bne.n	c0d01e56 <get_required_root_item+0x46>
c0d01e2c:	480c      	ldr	r0, [pc, #48]	; (c0d01e60 <get_required_root_item+0x50>)
c0d01e2e:	4478      	add	r0, pc
c0d01e30:	4770      	bx	lr
c0d01e32:	480a      	ldr	r0, [pc, #40]	; (c0d01e5c <get_required_root_item+0x4c>)
c0d01e34:	4478      	add	r0, pc
c0d01e36:	4770      	bx	lr
c0d01e38:	480e      	ldr	r0, [pc, #56]	; (c0d01e74 <get_required_root_item+0x64>)
c0d01e3a:	4478      	add	r0, pc
c0d01e3c:	4770      	bx	lr
c0d01e3e:	4809      	ldr	r0, [pc, #36]	; (c0d01e64 <get_required_root_item+0x54>)
c0d01e40:	4478      	add	r0, pc
c0d01e42:	4770      	bx	lr
c0d01e44:	480a      	ldr	r0, [pc, #40]	; (c0d01e70 <get_required_root_item+0x60>)
c0d01e46:	4478      	add	r0, pc
c0d01e48:	4770      	bx	lr
c0d01e4a:	4808      	ldr	r0, [pc, #32]	; (c0d01e6c <get_required_root_item+0x5c>)
c0d01e4c:	4478      	add	r0, pc
c0d01e4e:	4770      	bx	lr
c0d01e50:	4805      	ldr	r0, [pc, #20]	; (c0d01e68 <get_required_root_item+0x58>)
c0d01e52:	4478      	add	r0, pc
c0d01e54:	4770      	bx	lr
c0d01e56:	4808      	ldr	r0, [pc, #32]	; (c0d01e78 <get_required_root_item+0x68>)
c0d01e58:	4478      	add	r0, pc
c0d01e5a:	4770      	bx	lr
c0d01e5c:	00005f60 	.word	0x00005f60
c0d01e60:	000060ad 	.word	0x000060ad
c0d01e64:	00005f6a 	.word	0x00005f6a
c0d01e68:	00005f6e 	.word	0x00005f6e
c0d01e6c:	00005fb3 	.word	0x00005fb3
c0d01e70:	00005f8b 	.word	0x00005f8b
c0d01e74:	000060b0 	.word	0x000060b0
c0d01e78:	00007f13 	.word	0x00007f13

c0d01e7c <tx_indexRootFields>:
c0d01e7c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01e7e:	b0e1      	sub	sp, #388	; 0x184
c0d01e80:	2063      	movs	r0, #99	; 0x63
c0d01e82:	00c4      	lsls	r4, r0, #3
c0d01e84:	4de9      	ldr	r5, [pc, #932]	; (c0d0222c <tx_indexRootFields+0x3b0>)
c0d01e86:	5d28      	ldrb	r0, [r5, r4]
c0d01e88:	07c0      	lsls	r0, r0, #31
c0d01e8a:	d000      	beq.n	c0d01e8e <tx_indexRootFields+0x12>
c0d01e8c:	e130      	b.n	c0d020f0 <tx_indexRootFields+0x274>
c0d01e8e:	48e8      	ldr	r0, [pc, #928]	; (c0d02230 <tx_indexRootFields+0x3b4>)
c0d01e90:	2120      	movs	r1, #32
c0d01e92:	4eed      	ldr	r6, [pc, #948]	; (c0d02248 <tx_indexRootFields+0x3cc>)
c0d01e94:	447e      	add	r6, pc
c0d01e96:	47b0      	blx	r6
c0d01e98:	a847      	add	r0, sp, #284	; 0x11c
c0d01e9a:	2746      	movs	r7, #70	; 0x46
c0d01e9c:	4639      	mov	r1, r7
c0d01e9e:	47b0      	blx	r6
c0d01ea0:	a835      	add	r0, sp, #212	; 0xd4
c0d01ea2:	4639      	mov	r1, r7
c0d01ea4:	47b0      	blx	r6
c0d01ea6:	a823      	add	r0, sp, #140	; 0x8c
c0d01ea8:	4639      	mov	r1, r7
c0d01eaa:	47b0      	blx	r6
c0d01eac:	a811      	add	r0, sp, #68	; 0x44
c0d01eae:	9707      	str	r7, [sp, #28]
c0d01eb0:	4639      	mov	r1, r7
c0d01eb2:	9608      	str	r6, [sp, #32]
c0d01eb4:	47b0      	blx	r6
c0d01eb6:	2019      	movs	r0, #25
c0d01eb8:	0140      	lsls	r0, r0, #5
c0d01eba:	9002      	str	r0, [sp, #8]
c0d01ebc:	2600      	movs	r6, #0
c0d01ebe:	542e      	strb	r6, [r5, r0]
c0d01ec0:	48dc      	ldr	r0, [pc, #880]	; (c0d02234 <tx_indexRootFields+0x3b8>)
c0d01ec2:	542e      	strb	r6, [r5, r0]
c0d01ec4:	5d28      	ldrb	r0, [r5, r4]
c0d01ec6:	2106      	movs	r1, #6
c0d01ec8:	9109      	str	r1, [sp, #36]	; 0x24
c0d01eca:	4308      	orrs	r0, r1
c0d01ecc:	5528      	strb	r0, [r5, r4]
c0d01ece:	9404      	str	r4, [sp, #16]
c0d01ed0:	2e07      	cmp	r6, #7
c0d01ed2:	d100      	bne.n	c0d01ed6 <tx_indexRootFields+0x5a>
c0d01ed4:	e112      	b.n	c0d020fc <tx_indexRootFields+0x280>
c0d01ed6:	af5b      	add	r7, sp, #364	; 0x16c
c0d01ed8:	2400      	movs	r4, #0
c0d01eda:	803c      	strh	r4, [r7, #0]
c0d01edc:	b2f0      	uxtb	r0, r6
c0d01ede:	900e      	str	r0, [sp, #56]	; 0x38
c0d01ee0:	f7ff ff96 	bl	c0d01e10 <get_required_root_item>
c0d01ee4:	4602      	mov	r2, r0
c0d01ee6:	4628      	mov	r0, r5
c0d01ee8:	3008      	adds	r0, #8
c0d01eea:	4621      	mov	r1, r4
c0d01eec:	920d      	str	r2, [sp, #52]	; 0x34
c0d01eee:	463b      	mov	r3, r7
c0d01ef0:	f7fe ff63 	bl	c0d00dba <object_get_value>
c0d01ef4:	2801      	cmp	r0, #1
c0d01ef6:	d100      	bne.n	c0d01efa <tx_indexRootFields+0x7e>
c0d01ef8:	e0f7      	b.n	c0d020ea <tx_indexRootFields+0x26e>
c0d01efa:	4607      	mov	r7, r0
c0d01efc:	f002 fed4 	bl	c0d04ca8 <check_app_canary>
c0d01f00:	2f00      	cmp	r7, #0
c0d01f02:	d000      	beq.n	c0d01f06 <tx_indexRootFields+0x8a>
c0d01f04:	e0f7      	b.n	c0d020f6 <tx_indexRootFields+0x27a>
c0d01f06:	2201      	movs	r2, #1
c0d01f08:	49c9      	ldr	r1, [pc, #804]	; (c0d02230 <tx_indexRootFields+0x3b4>)
c0d01f0a:	9205      	str	r2, [sp, #20]
c0d01f0c:	558a      	strb	r2, [r1, r6]
c0d01f0e:	0070      	lsls	r0, r6, #1
c0d01f10:	180a      	adds	r2, r1, r0
c0d01f12:	985b      	ldr	r0, [sp, #364]	; 0x16c
c0d01f14:	8110      	strh	r0, [r2, #8]
c0d01f16:	1988      	adds	r0, r1, r6
c0d01f18:	3018      	adds	r0, #24
c0d01f1a:	9003      	str	r0, [sp, #12]
c0d01f1c:	3208      	adds	r2, #8
c0d01f1e:	920b      	str	r2, [sp, #44]	; 0x2c
c0d01f20:	940c      	str	r4, [sp, #48]	; 0x30
c0d01f22:	960a      	str	r6, [sp, #40]	; 0x28
c0d01f24:	2c00      	cmp	r4, #0
c0d01f26:	d000      	beq.n	c0d01f2a <tx_indexRootFields+0xae>
c0d01f28:	e0d5      	b.n	c0d020d6 <tx_indexRootFields+0x25a>
c0d01f2a:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d01f2c:	49c2      	ldr	r1, [pc, #776]	; (c0d02238 <tx_indexRootFields+0x3bc>)
c0d01f2e:	5468      	strb	r0, [r5, r1]
c0d01f30:	20cb      	movs	r0, #203	; 0xcb
c0d01f32:	0081      	lsls	r1, r0, #2
c0d01f34:	2000      	movs	r0, #0
c0d01f36:	5268      	strh	r0, [r5, r1]
c0d01f38:	2102      	movs	r1, #2
c0d01f3a:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0d01f3c:	2a03      	cmp	r2, #3
c0d01f3e:	d311      	bcc.n	c0d01f64 <tx_indexRootFields+0xe8>
c0d01f40:	d007      	beq.n	c0d01f52 <tx_indexRootFields+0xd6>
c0d01f42:	2a04      	cmp	r2, #4
c0d01f44:	d00e      	beq.n	c0d01f64 <tx_indexRootFields+0xe8>
c0d01f46:	2a06      	cmp	r2, #6
c0d01f48:	d001      	beq.n	c0d01f4e <tx_indexRootFields+0xd2>
c0d01f4a:	2a05      	cmp	r2, #5
c0d01f4c:	d107      	bne.n	c0d01f5e <tx_indexRootFields+0xe2>
c0d01f4e:	9905      	ldr	r1, [sp, #20]
c0d01f50:	e008      	b.n	c0d01f64 <tx_indexRootFields+0xe8>
c0d01f52:	49ba      	ldr	r1, [pc, #744]	; (c0d0223c <tx_indexRootFields+0x3c0>)
c0d01f54:	7809      	ldrb	r1, [r1, #0]
c0d01f56:	2900      	cmp	r1, #0
c0d01f58:	d003      	beq.n	c0d01f62 <tx_indexRootFields+0xe6>
c0d01f5a:	2103      	movs	r1, #3
c0d01f5c:	e002      	b.n	c0d01f64 <tx_indexRootFields+0xe8>
c0d01f5e:	4601      	mov	r1, r0
c0d01f60:	e000      	b.n	c0d01f64 <tx_indexRootFields+0xe8>
c0d01f62:	2102      	movs	r1, #2
c0d01f64:	4ab6      	ldr	r2, [pc, #728]	; (c0d02240 <tx_indexRootFields+0x3c4>)
c0d01f66:	54a9      	strb	r1, [r5, r2]
c0d01f68:	2133      	movs	r1, #51	; 0x33
c0d01f6a:	0109      	lsls	r1, r1, #4
c0d01f6c:	9110      	str	r1, [sp, #64]	; 0x40
c0d01f6e:	5068      	str	r0, [r5, r1]
c0d01f70:	a847      	add	r0, sp, #284	; 0x11c
c0d01f72:	900f      	str	r0, [sp, #60]	; 0x3c
c0d01f74:	9e07      	ldr	r6, [sp, #28]
c0d01f76:	4631      	mov	r1, r6
c0d01f78:	9f08      	ldr	r7, [sp, #32]
c0d01f7a:	47b8      	blx	r7
c0d01f7c:	ac35      	add	r4, sp, #212	; 0xd4
c0d01f7e:	4620      	mov	r0, r4
c0d01f80:	4631      	mov	r1, r6
c0d01f82:	47b8      	blx	r7
c0d01f84:	463a      	mov	r2, r7
c0d01f86:	20cf      	movs	r0, #207	; 0xcf
c0d01f88:	0080      	lsls	r0, r0, #2
c0d01f8a:	9006      	str	r0, [sp, #24]
c0d01f8c:	502c      	str	r4, [r5, r0]
c0d01f8e:	20cd      	movs	r0, #205	; 0xcd
c0d01f90:	0080      	lsls	r0, r0, #2
c0d01f92:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
c0d01f94:	502c      	str	r4, [r5, r0]
c0d01f96:	200d      	movs	r0, #13
c0d01f98:	0187      	lsls	r7, r0, #6
c0d01f9a:	53ee      	strh	r6, [r5, r7]
c0d01f9c:	2067      	movs	r0, #103	; 0x67
c0d01f9e:	00c0      	lsls	r0, r0, #3
c0d01fa0:	522e      	strh	r6, [r5, r0]
c0d01fa2:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d01fa4:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d01fa6:	5268      	strh	r0, [r5, r1]
c0d01fa8:	4620      	mov	r0, r4
c0d01faa:	4631      	mov	r1, r6
c0d01fac:	4790      	blx	r2
c0d01fae:	2245      	movs	r2, #69	; 0x45
c0d01fb0:	4620      	mov	r0, r4
c0d01fb2:	990d      	ldr	r1, [sp, #52]	; 0x34
c0d01fb4:	f005 fa4e 	bl	c0d07454 <strncpy>
c0d01fb8:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d01fba:	8800      	ldrh	r0, [r0, #0]
c0d01fbc:	a960      	add	r1, sp, #384	; 0x180
c0d01fbe:	f000 fd1b 	bl	c0d029f8 <tx_traverse_find>
c0d01fc2:	2800      	cmp	r0, #0
c0d01fc4:	d002      	beq.n	c0d01fcc <tx_indexRootFields+0x150>
c0d01fc6:	4604      	mov	r4, r0
c0d01fc8:	9e0a      	ldr	r6, [sp, #40]	; 0x28
c0d01fca:	e7ab      	b.n	c0d01f24 <tx_indexRootFields+0xa8>
c0d01fcc:	9e06      	ldr	r6, [sp, #24]
c0d01fce:	59a9      	ldr	r1, [r5, r6]
c0d01fd0:	5bea      	ldrh	r2, [r5, r7]
c0d01fd2:	a860      	add	r0, sp, #384	; 0x180
c0d01fd4:	8800      	ldrh	r0, [r0, #0]
c0d01fd6:	ab59      	add	r3, sp, #356	; 0x164
c0d01fd8:	9300      	str	r3, [sp, #0]
c0d01fda:	2400      	movs	r4, #0
c0d01fdc:	4623      	mov	r3, r4
c0d01fde:	f000 fc6f 	bl	c0d028c0 <tx_getToken>
c0d01fe2:	4607      	mov	r7, r0
c0d01fe4:	f002 fe60 	bl	c0d04ca8 <check_app_canary>
c0d01fe8:	2f00      	cmp	r7, #0
c0d01fea:	d000      	beq.n	c0d01fee <tx_indexRootFields+0x172>
c0d01fec:	e083      	b.n	c0d020f6 <tx_indexRootFields+0x27a>
c0d01fee:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d01ff0:	2803      	cmp	r0, #3
c0d01ff2:	d008      	beq.n	c0d02006 <tx_indexRootFields+0x18a>
c0d01ff4:	2804      	cmp	r0, #4
c0d01ff6:	d166      	bne.n	c0d020c6 <tx_indexRootFields+0x24a>
c0d01ff8:	4631      	mov	r1, r6
c0d01ffa:	59a8      	ldr	r0, [r5, r6]
c0d01ffc:	7800      	ldrb	r0, [r0, #0]
c0d01ffe:	2800      	cmp	r0, #0
c0d02000:	d161      	bne.n	c0d020c6 <tx_indexRootFields+0x24a>
c0d02002:	2413      	movs	r4, #19
c0d02004:	e7e0      	b.n	c0d01fc8 <tx_indexRootFields+0x14c>
c0d02006:	9804      	ldr	r0, [sp, #16]
c0d02008:	5c2e      	ldrb	r6, [r5, r0]
c0d0200a:	07b0      	lsls	r0, r6, #30
c0d0200c:	d531      	bpl.n	c0d02072 <tx_indexRootFields+0x1f6>
c0d0200e:	a847      	add	r0, sp, #284	; 0x11c
c0d02010:	498e      	ldr	r1, [pc, #568]	; (c0d0224c <tx_indexRootFields+0x3d0>)
c0d02012:	4479      	add	r1, pc
c0d02014:	220a      	movs	r2, #10
c0d02016:	f005 f837 	bl	c0d07088 <memcmp>
c0d0201a:	2800      	cmp	r0, #0
c0d0201c:	d129      	bne.n	c0d02072 <tx_indexRootFields+0x1f6>
c0d0201e:	4e85      	ldr	r6, [pc, #532]	; (c0d02234 <tx_indexRootFields+0x3b8>)
c0d02020:	5da8      	ldrb	r0, [r5, r6]
c0d02022:	2800      	cmp	r0, #0
c0d02024:	d111      	bne.n	c0d0204a <tx_indexRootFields+0x1ce>
c0d02026:	a835      	add	r0, sp, #212	; 0xd4
c0d02028:	f005 f9ac 	bl	c0d07384 <strlen>
c0d0202c:	2845      	cmp	r0, #69	; 0x45
c0d0202e:	d900      	bls.n	c0d02032 <tx_indexRootFields+0x1b6>
c0d02030:	e0fa      	b.n	c0d02228 <tx_indexRootFields+0x3ac>
c0d02032:	a823      	add	r0, sp, #140	; 0x8c
c0d02034:	2146      	movs	r1, #70	; 0x46
c0d02036:	4a86      	ldr	r2, [pc, #536]	; (c0d02250 <tx_indexRootFields+0x3d4>)
c0d02038:	447a      	add	r2, pc
c0d0203a:	ab35      	add	r3, sp, #212	; 0xd4
c0d0203c:	f004 fce8 	bl	c0d06a10 <snprintf>
c0d02040:	20c7      	movs	r0, #199	; 0xc7
c0d02042:	0080      	lsls	r0, r0, #2
c0d02044:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d02046:	b209      	sxth	r1, r1
c0d02048:	5029      	str	r1, [r5, r0]
c0d0204a:	a823      	add	r0, sp, #140	; 0x8c
c0d0204c:	a935      	add	r1, sp, #212	; 0xd4
c0d0204e:	f005 f955 	bl	c0d072fc <strcmp>
c0d02052:	2800      	cmp	r0, #0
c0d02054:	d007      	beq.n	c0d02066 <tx_indexRootFields+0x1ea>
c0d02056:	9904      	ldr	r1, [sp, #16]
c0d02058:	5c68      	ldrb	r0, [r5, r1]
c0d0205a:	4632      	mov	r2, r6
c0d0205c:	26fd      	movs	r6, #253	; 0xfd
c0d0205e:	4006      	ands	r6, r0
c0d02060:	546e      	strb	r6, [r5, r1]
c0d02062:	2000      	movs	r0, #0
c0d02064:	e003      	b.n	c0d0206e <tx_indexRootFields+0x1f2>
c0d02066:	5da8      	ldrb	r0, [r5, r6]
c0d02068:	9904      	ldr	r1, [sp, #16]
c0d0206a:	4632      	mov	r2, r6
c0d0206c:	5c6e      	ldrb	r6, [r5, r1]
c0d0206e:	1c40      	adds	r0, r0, #1
c0d02070:	54a8      	strb	r0, [r5, r2]
c0d02072:	0770      	lsls	r0, r6, #29
c0d02074:	9e02      	ldr	r6, [sp, #8]
c0d02076:	d526      	bpl.n	c0d020c6 <tx_indexRootFields+0x24a>
c0d02078:	a847      	add	r0, sp, #284	; 0x11c
c0d0207a:	4976      	ldr	r1, [pc, #472]	; (c0d02254 <tx_indexRootFields+0x3d8>)
c0d0207c:	4479      	add	r1, pc
c0d0207e:	221d      	movs	r2, #29
c0d02080:	f005 f802 	bl	c0d07088 <memcmp>
c0d02084:	2800      	cmp	r0, #0
c0d02086:	d11e      	bne.n	c0d020c6 <tx_indexRootFields+0x24a>
c0d02088:	5da8      	ldrb	r0, [r5, r6]
c0d0208a:	2800      	cmp	r0, #0
c0d0208c:	d10b      	bne.n	c0d020a6 <tx_indexRootFields+0x22a>
c0d0208e:	a811      	add	r0, sp, #68	; 0x44
c0d02090:	2146      	movs	r1, #70	; 0x46
c0d02092:	4a71      	ldr	r2, [pc, #452]	; (c0d02258 <tx_indexRootFields+0x3dc>)
c0d02094:	447a      	add	r2, pc
c0d02096:	ab35      	add	r3, sp, #212	; 0xd4
c0d02098:	f004 fcba 	bl	c0d06a10 <snprintf>
c0d0209c:	20c9      	movs	r0, #201	; 0xc9
c0d0209e:	0080      	lsls	r0, r0, #2
c0d020a0:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d020a2:	b209      	sxth	r1, r1
c0d020a4:	5029      	str	r1, [r5, r0]
c0d020a6:	a811      	add	r0, sp, #68	; 0x44
c0d020a8:	a935      	add	r1, sp, #212	; 0xd4
c0d020aa:	f005 f927 	bl	c0d072fc <strcmp>
c0d020ae:	2800      	cmp	r0, #0
c0d020b0:	d006      	beq.n	c0d020c0 <tx_indexRootFields+0x244>
c0d020b2:	9a04      	ldr	r2, [sp, #16]
c0d020b4:	5ca8      	ldrb	r0, [r5, r2]
c0d020b6:	21fb      	movs	r1, #251	; 0xfb
c0d020b8:	4001      	ands	r1, r0
c0d020ba:	54a9      	strb	r1, [r5, r2]
c0d020bc:	2000      	movs	r0, #0
c0d020be:	e000      	b.n	c0d020c2 <tx_indexRootFields+0x246>
c0d020c0:	5da8      	ldrb	r0, [r5, r6]
c0d020c2:	1c40      	adds	r0, r0, #1
c0d020c4:	55a8      	strb	r0, [r5, r6]
c0d020c6:	9903      	ldr	r1, [sp, #12]
c0d020c8:	7808      	ldrb	r0, [r1, #0]
c0d020ca:	1c40      	adds	r0, r0, #1
c0d020cc:	7008      	strb	r0, [r1, #0]
c0d020ce:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d020d0:	1c40      	adds	r0, r0, #1
c0d020d2:	900c      	str	r0, [sp, #48]	; 0x30
c0d020d4:	e778      	b.n	c0d01fc8 <tx_indexRootFields+0x14c>
c0d020d6:	2c01      	cmp	r4, #1
c0d020d8:	d001      	beq.n	c0d020de <tx_indexRootFields+0x262>
c0d020da:	2c13      	cmp	r4, #19
c0d020dc:	d10a      	bne.n	c0d020f4 <tx_indexRootFields+0x278>
c0d020de:	9803      	ldr	r0, [sp, #12]
c0d020e0:	7800      	ldrb	r0, [r0, #0]
c0d020e2:	4a53      	ldr	r2, [pc, #332]	; (c0d02230 <tx_indexRootFields+0x3b4>)
c0d020e4:	8ad1      	ldrh	r1, [r2, #22]
c0d020e6:	1808      	adds	r0, r1, r0
c0d020e8:	82d0      	strh	r0, [r2, #22]
c0d020ea:	1c76      	adds	r6, r6, #1
c0d020ec:	9c04      	ldr	r4, [sp, #16]
c0d020ee:	e6ef      	b.n	c0d01ed0 <tx_indexRootFields+0x54>
c0d020f0:	2700      	movs	r7, #0
c0d020f2:	e000      	b.n	c0d020f6 <tx_indexRootFields+0x27a>
c0d020f4:	4627      	mov	r7, r4
c0d020f6:	b2f8      	uxtb	r0, r7
c0d020f8:	b061      	add	sp, #388	; 0x184
c0d020fa:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d020fc:	5d28      	ldrb	r0, [r5, r4]
c0d020fe:	2101      	movs	r1, #1
c0d02100:	910c      	str	r1, [sp, #48]	; 0x30
c0d02102:	4308      	orrs	r0, r1
c0d02104:	5528      	strb	r0, [r5, r4]
c0d02106:	20cb      	movs	r0, #203	; 0xcb
c0d02108:	0081      	lsls	r1, r0, #2
c0d0210a:	9110      	str	r1, [sp, #64]	; 0x40
c0d0210c:	484d      	ldr	r0, [pc, #308]	; (c0d02244 <tx_indexRootFields+0x3c8>)
c0d0210e:	5068      	str	r0, [r5, r1]
c0d02110:	2600      	movs	r6, #0
c0d02112:	4847      	ldr	r0, [pc, #284]	; (c0d02230 <tx_indexRootFields+0x3b4>)
c0d02114:	77c6      	strb	r6, [r0, #31]
c0d02116:	186c      	adds	r4, r5, r1
c0d02118:	6066      	str	r6, [r4, #4]
c0d0211a:	a860      	add	r0, sp, #384	; 0x180
c0d0211c:	900e      	str	r0, [sp, #56]	; 0x38
c0d0211e:	2102      	movs	r1, #2
c0d02120:	910f      	str	r1, [sp, #60]	; 0x3c
c0d02122:	f004 ffad 	bl	c0d07080 <explicit_bzero>
c0d02126:	af5b      	add	r7, sp, #364	; 0x16c
c0d02128:	2114      	movs	r1, #20
c0d0212a:	910d      	str	r1, [sp, #52]	; 0x34
c0d0212c:	4638      	mov	r0, r7
c0d0212e:	f004 ffa7 	bl	c0d07080 <explicit_bzero>
c0d02132:	9810      	ldr	r0, [sp, #64]	; 0x40
c0d02134:	522e      	strh	r6, [r5, r0]
c0d02136:	6127      	str	r7, [r4, #16]
c0d02138:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d0213a:	60a0      	str	r0, [r4, #8]
c0d0213c:	980d      	ldr	r0, [sp, #52]	; 0x34
c0d0213e:	82a0      	strh	r0, [r4, #20]
c0d02140:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0d02142:	81a0      	strh	r0, [r4, #12]
c0d02144:	80a6      	strh	r6, [r4, #4]
c0d02146:	483a      	ldr	r0, [pc, #232]	; (c0d02230 <tx_indexRootFields+0x3b4>)
c0d02148:	8900      	ldrh	r0, [r0, #8]
c0d0214a:	a959      	add	r1, sp, #356	; 0x164
c0d0214c:	f000 fc54 	bl	c0d029f8 <tx_traverse_find>
c0d02150:	4607      	mov	r7, r0
c0d02152:	f002 fda9 	bl	c0d04ca8 <check_app_canary>
c0d02156:	2f00      	cmp	r7, #0
c0d02158:	d13a      	bne.n	c0d021d0 <tx_indexRootFields+0x354>
c0d0215a:	a859      	add	r0, sp, #356	; 0x164
c0d0215c:	8800      	ldrh	r0, [r0, #0]
c0d0215e:	a95a      	add	r1, sp, #360	; 0x168
c0d02160:	9100      	str	r1, [sp, #0]
c0d02162:	a95b      	add	r1, sp, #364	; 0x16c
c0d02164:	2214      	movs	r2, #20
c0d02166:	2400      	movs	r4, #0
c0d02168:	4623      	mov	r3, r4
c0d0216a:	f000 fba9 	bl	c0d028c0 <tx_getToken>
c0d0216e:	4607      	mov	r7, r0
c0d02170:	f002 fd9a 	bl	c0d04ca8 <check_app_canary>
c0d02174:	2f00      	cmp	r7, #0
c0d02176:	d12b      	bne.n	c0d021d0 <tx_indexRootFields+0x354>
c0d02178:	ad5b      	add	r5, sp, #364	; 0x16c
c0d0217a:	4628      	mov	r0, r5
c0d0217c:	f002 fda4 	bl	c0d04cc8 <zemu_log_stack>
c0d02180:	4f36      	ldr	r7, [pc, #216]	; (c0d0225c <tx_indexRootFields+0x3e0>)
c0d02182:	447f      	add	r7, pc
c0d02184:	4638      	mov	r0, r7
c0d02186:	f002 fd9f 	bl	c0d04cc8 <zemu_log_stack>
c0d0218a:	2214      	movs	r2, #20
c0d0218c:	4628      	mov	r0, r5
c0d0218e:	4639      	mov	r1, r7
c0d02190:	f004 ff7a 	bl	c0d07088 <memcmp>
c0d02194:	2800      	cmp	r0, #0
c0d02196:	d013      	beq.n	c0d021c0 <tx_indexRootFields+0x344>
c0d02198:	a85b      	add	r0, sp, #364	; 0x16c
c0d0219a:	7800      	ldrb	r0, [r0, #0]
c0d0219c:	21fe      	movs	r1, #254	; 0xfe
c0d0219e:	4001      	ands	r1, r0
c0d021a0:	2930      	cmp	r1, #48	; 0x30
c0d021a2:	d10a      	bne.n	c0d021ba <tx_indexRootFields+0x33e>
c0d021a4:	a85b      	add	r0, sp, #364	; 0x16c
c0d021a6:	f005 f8ed 	bl	c0d07384 <strlen>
c0d021aa:	2801      	cmp	r0, #1
c0d021ac:	d105      	bne.n	c0d021ba <tx_indexRootFields+0x33e>
c0d021ae:	482d      	ldr	r0, [pc, #180]	; (c0d02264 <tx_indexRootFields+0x3e8>)
c0d021b0:	4478      	add	r0, pc
c0d021b2:	f002 fd89 	bl	c0d04cc8 <zemu_log_stack>
c0d021b6:	2711      	movs	r7, #17
c0d021b8:	e00a      	b.n	c0d021d0 <tx_indexRootFields+0x354>
c0d021ba:	482b      	ldr	r0, [pc, #172]	; (c0d02268 <tx_indexRootFields+0x3ec>)
c0d021bc:	4478      	add	r0, pc
c0d021be:	e004      	b.n	c0d021ca <tx_indexRootFields+0x34e>
c0d021c0:	481b      	ldr	r0, [pc, #108]	; (c0d02230 <tx_indexRootFields+0x3b4>)
c0d021c2:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d021c4:	77c1      	strb	r1, [r0, #31]
c0d021c6:	4826      	ldr	r0, [pc, #152]	; (c0d02260 <tx_indexRootFields+0x3e4>)
c0d021c8:	4478      	add	r0, pc
c0d021ca:	f002 fd7d 	bl	c0d04cc8 <zemu_log_stack>
c0d021ce:	4627      	mov	r7, r4
c0d021d0:	f002 fd6a 	bl	c0d04ca8 <check_app_canary>
c0d021d4:	2f00      	cmp	r7, #0
c0d021d6:	d18e      	bne.n	c0d020f6 <tx_indexRootFields+0x27a>
c0d021d8:	a85b      	add	r0, sp, #364	; 0x16c
c0d021da:	7006      	strb	r6, [r0, #0]
c0d021dc:	f000 f846 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d021e0:	4607      	mov	r7, r0
c0d021e2:	f002 fd61 	bl	c0d04ca8 <check_app_canary>
c0d021e6:	2f00      	cmp	r7, #0
c0d021e8:	d185      	bne.n	c0d020f6 <tx_indexRootFields+0x27a>
c0d021ea:	9804      	ldr	r0, [sp, #16]
c0d021ec:	4a0f      	ldr	r2, [pc, #60]	; (c0d0222c <tx_indexRootFields+0x3b0>)
c0d021ee:	5c14      	ldrb	r4, [r2, r0]
c0d021f0:	a85b      	add	r0, sp, #364	; 0x16c
c0d021f2:	7800      	ldrb	r0, [r0, #0]
c0d021f4:	2800      	cmp	r0, #0
c0d021f6:	d001      	beq.n	c0d021fc <tx_indexRootFields+0x380>
c0d021f8:	2004      	movs	r0, #4
c0d021fa:	4384      	bics	r4, r0
c0d021fc:	20f7      	movs	r0, #247	; 0xf7
c0d021fe:	4020      	ands	r0, r4
c0d02200:	9904      	ldr	r1, [sp, #16]
c0d02202:	5450      	strb	r0, [r2, r1]
c0d02204:	2065      	movs	r0, #101	; 0x65
c0d02206:	00c0      	lsls	r0, r0, #3
c0d02208:	5810      	ldr	r0, [r2, r0]
c0d0220a:	2800      	cmp	r0, #0
c0d0220c:	d100      	bne.n	c0d02210 <tx_indexRootFields+0x394>
c0d0220e:	e772      	b.n	c0d020f6 <tx_indexRootFields+0x27a>
c0d02210:	a911      	add	r1, sp, #68	; 0x44
c0d02212:	f005 f873 	bl	c0d072fc <strcmp>
c0d02216:	2800      	cmp	r0, #0
c0d02218:	d000      	beq.n	c0d0221c <tx_indexRootFields+0x3a0>
c0d0221a:	e76c      	b.n	c0d020f6 <tx_indexRootFields+0x27a>
c0d0221c:	2008      	movs	r0, #8
c0d0221e:	4304      	orrs	r4, r0
c0d02220:	9804      	ldr	r0, [sp, #16]
c0d02222:	4902      	ldr	r1, [pc, #8]	; (c0d0222c <tx_indexRootFields+0x3b0>)
c0d02224:	540c      	strb	r4, [r1, r0]
c0d02226:	e766      	b.n	c0d020f6 <tx_indexRootFields+0x27a>
c0d02228:	9f09      	ldr	r7, [sp, #36]	; 0x24
c0d0222a:	e764      	b.n	c0d020f6 <tx_indexRootFields+0x27a>
c0d0222c:	200005c4 	.word	0x200005c4
c0d02230:	20000908 	.word	0x20000908
c0d02234:	00000319 	.word	0x00000319
c0d02238:	0000032f 	.word	0x0000032f
c0d0223c:	2000092a 	.word	0x2000092a
c0d02240:	0000032e 	.word	0x0000032e
c0d02244:	06020000 	.word	0x06020000
c0d02248:	000051e9 	.word	0x000051e9
c0d0224c:	00005ee4 	.word	0x00005ee4
c0d02250:	00005b86 	.word	0x00005b86
c0d02254:	00005e84 	.word	0x00005e84
c0d02258:	00005b2a 	.word	0x00005b2a
c0d0225c:	00005d9b 	.word	0x00005d9b
c0d02260:	00005d69 	.word	0x00005d69
c0d02264:	00005d90 	.word	0x00005d90
c0d02268:	00005d96 	.word	0x00005d96

c0d0226c <tx_is_expert_mode_or_not_default_chainid>:
c0d0226c:	b570      	push	{r4, r5, r6, lr}
c0d0226e:	2800      	cmp	r0, #0
c0d02270:	d013      	beq.n	c0d0229a <tx_is_expert_mode_or_not_default_chainid+0x2e>
c0d02272:	4604      	mov	r4, r0
c0d02274:	f7ff fe02 	bl	c0d01e7c <tx_indexRootFields>
c0d02278:	4605      	mov	r5, r0
c0d0227a:	f002 fd15 	bl	c0d04ca8 <check_app_canary>
c0d0227e:	4808      	ldr	r0, [pc, #32]	; (c0d022a0 <tx_is_expert_mode_or_not_default_chainid+0x34>)
c0d02280:	7fc6      	ldrb	r6, [r0, #31]
c0d02282:	f002 fd11 	bl	c0d04ca8 <check_app_canary>
c0d02286:	2d00      	cmp	r5, #0
c0d02288:	d108      	bne.n	c0d0229c <tx_is_expert_mode_or_not_default_chainid+0x30>
c0d0228a:	4275      	negs	r5, r6
c0d0228c:	4175      	adcs	r5, r6
c0d0228e:	f002 fac5 	bl	c0d0481c <app_mode_expert>
c0d02292:	4328      	orrs	r0, r5
c0d02294:	7020      	strb	r0, [r4, #0]
c0d02296:	2500      	movs	r5, #0
c0d02298:	e000      	b.n	c0d0229c <tx_is_expert_mode_or_not_default_chainid+0x30>
c0d0229a:	2509      	movs	r5, #9
c0d0229c:	4628      	mov	r0, r5
c0d0229e:	bd70      	pop	{r4, r5, r6, pc}
c0d022a0:	20000908 	.word	0x20000908

c0d022a4 <tx_display_numItems>:
c0d022a4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d022a6:	b087      	sub	sp, #28
c0d022a8:	2100      	movs	r1, #0
c0d022aa:	9103      	str	r1, [sp, #12]
c0d022ac:	9004      	str	r0, [sp, #16]
c0d022ae:	7001      	strb	r1, [r0, #0]
c0d022b0:	f7ff fde4 	bl	c0d01e7c <tx_indexRootFields>
c0d022b4:	4605      	mov	r5, r0
c0d022b6:	f002 fcf7 	bl	c0d04ca8 <check_app_canary>
c0d022ba:	2d00      	cmp	r5, #0
c0d022bc:	d16f      	bne.n	c0d0239e <tx_display_numItems+0xfa>
c0d022be:	9e03      	ldr	r6, [sp, #12]
c0d022c0:	9804      	ldr	r0, [sp, #16]
c0d022c2:	7006      	strb	r6, [r0, #0]
c0d022c4:	2718      	movs	r7, #24
c0d022c6:	4c37      	ldr	r4, [pc, #220]	; (c0d023a4 <tx_display_numItems+0x100>)
c0d022c8:	9605      	str	r6, [sp, #20]
c0d022ca:	2f1f      	cmp	r7, #31
c0d022cc:	d066      	beq.n	c0d0239c <tx_display_numItems+0xf8>
c0d022ce:	f7ff fdd5 	bl	c0d01e7c <tx_indexRootFields>
c0d022d2:	4605      	mov	r5, r0
c0d022d4:	f002 fce8 	bl	c0d04ca8 <check_app_canary>
c0d022d8:	2d00      	cmp	r5, #0
c0d022da:	d00b      	beq.n	c0d022f4 <tx_display_numItems+0x50>
c0d022dc:	f002 fce4 	bl	c0d04ca8 <check_app_canary>
c0d022e0:	2d00      	cmp	r5, #0
c0d022e2:	d15c      	bne.n	c0d0239e <tx_display_numItems+0xfa>
c0d022e4:	9904      	ldr	r1, [sp, #16]
c0d022e6:	7808      	ldrb	r0, [r1, #0]
c0d022e8:	9a05      	ldr	r2, [sp, #20]
c0d022ea:	1880      	adds	r0, r0, r2
c0d022ec:	7008      	strb	r0, [r1, #0]
c0d022ee:	1c7f      	adds	r7, r7, #1
c0d022f0:	1c76      	adds	r6, r6, #1
c0d022f2:	e7ea      	b.n	c0d022ca <tx_display_numItems+0x26>
c0d022f4:	8ae0      	ldrh	r0, [r4, #22]
c0d022f6:	2800      	cmp	r0, #0
c0d022f8:	d01b      	beq.n	c0d02332 <tx_display_numItems+0x8e>
c0d022fa:	4621      	mov	r1, r4
c0d022fc:	5de3      	ldrb	r3, [r4, r7]
c0d022fe:	a806      	add	r0, sp, #24
c0d02300:	2500      	movs	r5, #0
c0d02302:	7005      	strb	r5, [r0, #0]
c0d02304:	207f      	movs	r0, #127	; 0x7f
c0d02306:	4030      	ands	r0, r6
c0d02308:	2803      	cmp	r0, #3
c0d0230a:	d215      	bcs.n	c0d02338 <tx_display_numItems+0x94>
c0d0230c:	9301      	str	r3, [sp, #4]
c0d0230e:	9502      	str	r5, [sp, #8]
c0d02310:	a806      	add	r0, sp, #24
c0d02312:	f7ff ffab 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d02316:	4605      	mov	r5, r0
c0d02318:	f002 fcc6 	bl	c0d04ca8 <check_app_canary>
c0d0231c:	2d00      	cmp	r5, #0
c0d0231e:	d1dd      	bne.n	c0d022dc <tx_display_numItems+0x38>
c0d02320:	a806      	add	r0, sp, #24
c0d02322:	7800      	ldrb	r0, [r0, #0]
c0d02324:	2800      	cmp	r0, #0
c0d02326:	9901      	ldr	r1, [sp, #4]
c0d02328:	d100      	bne.n	c0d0232c <tx_display_numItems+0x88>
c0d0232a:	4601      	mov	r1, r0
c0d0232c:	9105      	str	r1, [sp, #20]
c0d0232e:	9d02      	ldr	r5, [sp, #8]
c0d02330:	e7d4      	b.n	c0d022dc <tx_display_numItems+0x38>
c0d02332:	2500      	movs	r5, #0
c0d02334:	9505      	str	r5, [sp, #20]
c0d02336:	e7d1      	b.n	c0d022dc <tx_display_numItems+0x38>
c0d02338:	d012      	beq.n	c0d02360 <tx_display_numItems+0xbc>
c0d0233a:	2805      	cmp	r0, #5
c0d0233c:	d129      	bne.n	c0d02392 <tx_display_numItems+0xee>
c0d0233e:	9301      	str	r3, [sp, #4]
c0d02340:	9502      	str	r5, [sp, #8]
c0d02342:	a806      	add	r0, sp, #24
c0d02344:	f7ff ff92 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d02348:	4605      	mov	r5, r0
c0d0234a:	f002 fcad 	bl	c0d04ca8 <check_app_canary>
c0d0234e:	2d00      	cmp	r5, #0
c0d02350:	d1c4      	bne.n	c0d022dc <tx_display_numItems+0x38>
c0d02352:	a806      	add	r0, sp, #24
c0d02354:	7800      	ldrb	r0, [r0, #0]
c0d02356:	2800      	cmp	r0, #0
c0d02358:	9d02      	ldr	r5, [sp, #8]
c0d0235a:	d01c      	beq.n	c0d02396 <tx_display_numItems+0xf2>
c0d0235c:	9801      	ldr	r0, [sp, #4]
c0d0235e:	e01b      	b.n	c0d02398 <tx_display_numItems+0xf4>
c0d02360:	2063      	movs	r0, #99	; 0x63
c0d02362:	00c0      	lsls	r0, r0, #3
c0d02364:	4a10      	ldr	r2, [pc, #64]	; (c0d023a8 <tx_display_numItems+0x104>)
c0d02366:	5c10      	ldrb	r0, [r2, r0]
c0d02368:	0781      	lsls	r1, r0, #30
c0d0236a:	d505      	bpl.n	c0d02378 <tx_display_numItems+0xd4>
c0d0236c:	490f      	ldr	r1, [pc, #60]	; (c0d023ac <tx_display_numItems+0x108>)
c0d0236e:	5c51      	ldrb	r1, [r2, r1]
c0d02370:	2900      	cmp	r1, #0
c0d02372:	d001      	beq.n	c0d02378 <tx_display_numItems+0xd4>
c0d02374:	1a59      	subs	r1, r3, r1
c0d02376:	1c4b      	adds	r3, r1, #1
c0d02378:	0741      	lsls	r1, r0, #29
c0d0237a:	d50a      	bpl.n	c0d02392 <tx_display_numItems+0xee>
c0d0237c:	2119      	movs	r1, #25
c0d0237e:	0149      	lsls	r1, r1, #5
c0d02380:	5c51      	ldrb	r1, [r2, r1]
c0d02382:	2900      	cmp	r1, #0
c0d02384:	d005      	beq.n	c0d02392 <tx_display_numItems+0xee>
c0d02386:	08c0      	lsrs	r0, r0, #3
c0d02388:	2201      	movs	r2, #1
c0d0238a:	4382      	bics	r2, r0
c0d0238c:	1898      	adds	r0, r3, r2
c0d0238e:	1a40      	subs	r0, r0, r1
c0d02390:	e002      	b.n	c0d02398 <tx_display_numItems+0xf4>
c0d02392:	9305      	str	r3, [sp, #20]
c0d02394:	e7a2      	b.n	c0d022dc <tx_display_numItems+0x38>
c0d02396:	2001      	movs	r0, #1
c0d02398:	9005      	str	r0, [sp, #20]
c0d0239a:	e79f      	b.n	c0d022dc <tx_display_numItems+0x38>
c0d0239c:	9d03      	ldr	r5, [sp, #12]
c0d0239e:	4628      	mov	r0, r5
c0d023a0:	b007      	add	sp, #28
c0d023a2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d023a4:	20000908 	.word	0x20000908
c0d023a8:	200005c4 	.word	0x200005c4
c0d023ac:	00000319 	.word	0x00000319

c0d023b0 <tx_display_query>:
c0d023b0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d023b2:	b08f      	sub	sp, #60	; 0x3c
c0d023b4:	9307      	str	r3, [sp, #28]
c0d023b6:	4616      	mov	r6, r2
c0d023b8:	460f      	mov	r7, r1
c0d023ba:	4605      	mov	r5, r0
c0d023bc:	f7ff fd5e 	bl	c0d01e7c <tx_indexRootFields>
c0d023c0:	4604      	mov	r4, r0
c0d023c2:	f002 fc71 	bl	c0d04ca8 <check_app_canary>
c0d023c6:	2c00      	cmp	r4, #0
c0d023c8:	d142      	bne.n	c0d02450 <tx_display_query+0xa0>
c0d023ca:	9704      	str	r7, [sp, #16]
c0d023cc:	9505      	str	r5, [sp, #20]
c0d023ce:	9603      	str	r6, [sp, #12]
c0d023d0:	a809      	add	r0, sp, #36	; 0x24
c0d023d2:	f7ff ff67 	bl	c0d022a4 <tx_display_numItems>
c0d023d6:	4605      	mov	r5, r0
c0d023d8:	f002 fc66 	bl	c0d04ca8 <check_app_canary>
c0d023dc:	462c      	mov	r4, r5
c0d023de:	2d00      	cmp	r5, #0
c0d023e0:	d136      	bne.n	c0d02450 <tx_display_query+0xa0>
c0d023e2:	a809      	add	r0, sp, #36	; 0x24
c0d023e4:	7800      	ldrb	r0, [r0, #0]
c0d023e6:	9905      	ldr	r1, [sp, #20]
c0d023e8:	4288      	cmp	r0, r1
c0d023ea:	d930      	bls.n	c0d0244e <tx_display_query+0x9e>
c0d023ec:	f7ff fd46 	bl	c0d01e7c <tx_indexRootFields>
c0d023f0:	4604      	mov	r4, r0
c0d023f2:	f002 fc59 	bl	c0d04ca8 <check_app_canary>
c0d023f6:	2c00      	cmp	r4, #0
c0d023f8:	d02d      	beq.n	c0d02456 <tx_display_query+0xa6>
c0d023fa:	4627      	mov	r7, r4
c0d023fc:	f002 fc54 	bl	c0d04ca8 <check_app_canary>
c0d02400:	2000      	movs	r0, #0
c0d02402:	2f00      	cmp	r7, #0
c0d02404:	9008      	str	r0, [sp, #32]
c0d02406:	9006      	str	r0, [sp, #24]
c0d02408:	d039      	beq.n	c0d0247e <tx_display_query+0xce>
c0d0240a:	f002 fc4d 	bl	c0d04ca8 <check_app_canary>
c0d0240e:	463c      	mov	r4, r7
c0d02410:	2f00      	cmp	r7, #0
c0d02412:	9f04      	ldr	r7, [sp, #16]
c0d02414:	d11c      	bne.n	c0d02450 <tx_display_query+0xa0>
c0d02416:	48fa      	ldr	r0, [pc, #1000]	; (c0d02800 <tx_display_query+0x450>)
c0d02418:	4af7      	ldr	r2, [pc, #988]	; (c0d027f8 <tx_display_query+0x448>)
c0d0241a:	2106      	movs	r1, #6
c0d0241c:	5411      	strb	r1, [r2, r0]
c0d0241e:	20cb      	movs	r0, #203	; 0xcb
c0d02420:	0083      	lsls	r3, r0, #2
c0d02422:	2500      	movs	r5, #0
c0d02424:	52d5      	strh	r5, [r2, r3]
c0d02426:	9808      	ldr	r0, [sp, #32]
c0d02428:	b2c1      	uxtb	r1, r0
c0d0242a:	2602      	movs	r6, #2
c0d0242c:	2903      	cmp	r1, #3
c0d0242e:	4630      	mov	r0, r6
c0d02430:	d200      	bcs.n	c0d02434 <tx_display_query+0x84>
c0d02432:	e197      	b.n	c0d02764 <tx_display_query+0x3b4>
c0d02434:	d100      	bne.n	c0d02438 <tx_display_query+0x88>
c0d02436:	e18c      	b.n	c0d02752 <tx_display_query+0x3a2>
c0d02438:	2904      	cmp	r1, #4
c0d0243a:	4630      	mov	r0, r6
c0d0243c:	d100      	bne.n	c0d02440 <tx_display_query+0x90>
c0d0243e:	e191      	b.n	c0d02764 <tx_display_query+0x3b4>
c0d02440:	2906      	cmp	r1, #6
c0d02442:	d002      	beq.n	c0d0244a <tx_display_query+0x9a>
c0d02444:	2905      	cmp	r1, #5
c0d02446:	d000      	beq.n	c0d0244a <tx_display_query+0x9a>
c0d02448:	e189      	b.n	c0d0275e <tx_display_query+0x3ae>
c0d0244a:	2001      	movs	r0, #1
c0d0244c:	e18a      	b.n	c0d02764 <tx_display_query+0x3b4>
c0d0244e:	2403      	movs	r4, #3
c0d02450:	4620      	mov	r0, r4
c0d02452:	b00f      	add	sp, #60	; 0x3c
c0d02454:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d02456:	48e7      	ldr	r0, [pc, #924]	; (c0d027f4 <tx_display_query+0x444>)
c0d02458:	8ac1      	ldrh	r1, [r0, #22]
c0d0245a:	2900      	cmp	r1, #0
c0d0245c:	d100      	bne.n	c0d02460 <tx_display_query+0xb0>
c0d0245e:	e175      	b.n	c0d0274c <tx_display_query+0x39c>
c0d02460:	7e05      	ldrb	r5, [r0, #24]
c0d02462:	ae0a      	add	r6, sp, #40	; 0x28
c0d02464:	2000      	movs	r0, #0
c0d02466:	7030      	strb	r0, [r6, #0]
c0d02468:	4630      	mov	r0, r6
c0d0246a:	f7ff feff 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d0246e:	4607      	mov	r7, r0
c0d02470:	f002 fc1a 	bl	c0d04ca8 <check_app_canary>
c0d02474:	7830      	ldrb	r0, [r6, #0]
c0d02476:	2800      	cmp	r0, #0
c0d02478:	d1c0      	bne.n	c0d023fc <tx_display_query+0x4c>
c0d0247a:	4605      	mov	r5, r0
c0d0247c:	e7be      	b.n	c0d023fc <tx_display_query+0x4c>
c0d0247e:	2000      	movs	r0, #0
c0d02480:	9008      	str	r0, [sp, #32]
c0d02482:	9e08      	ldr	r6, [sp, #32]
c0d02484:	0628      	lsls	r0, r5, #24
c0d02486:	d163      	bne.n	c0d02550 <tx_display_query+0x1a0>
c0d02488:	f7ff fcf8 	bl	c0d01e7c <tx_indexRootFields>
c0d0248c:	4607      	mov	r7, r0
c0d0248e:	1c70      	adds	r0, r6, #1
c0d02490:	9008      	str	r0, [sp, #32]
c0d02492:	f002 fc09 	bl	c0d04ca8 <check_app_canary>
c0d02496:	2400      	movs	r4, #0
c0d02498:	2f00      	cmp	r7, #0
c0d0249a:	4625      	mov	r5, r4
c0d0249c:	d005      	beq.n	c0d024aa <tx_display_query+0xfa>
c0d0249e:	9406      	str	r4, [sp, #24]
c0d024a0:	f002 fc02 	bl	c0d04ca8 <check_app_canary>
c0d024a4:	2f00      	cmp	r7, #0
c0d024a6:	d0ec      	beq.n	c0d02482 <tx_display_query+0xd2>
c0d024a8:	e7af      	b.n	c0d0240a <tx_display_query+0x5a>
c0d024aa:	49d2      	ldr	r1, [pc, #840]	; (c0d027f4 <tx_display_query+0x444>)
c0d024ac:	8ac8      	ldrh	r0, [r1, #22]
c0d024ae:	2800      	cmp	r0, #0
c0d024b0:	d01e      	beq.n	c0d024f0 <tx_display_query+0x140>
c0d024b2:	9808      	ldr	r0, [sp, #32]
c0d024b4:	b2c0      	uxtb	r0, r0
c0d024b6:	1808      	adds	r0, r1, r0
c0d024b8:	7e03      	ldrb	r3, [r0, #24]
c0d024ba:	a80b      	add	r0, sp, #44	; 0x2c
c0d024bc:	2500      	movs	r5, #0
c0d024be:	7005      	strb	r5, [r0, #0]
c0d024c0:	b2f0      	uxtb	r0, r6
c0d024c2:	2802      	cmp	r0, #2
c0d024c4:	d304      	bcc.n	c0d024d0 <tx_display_query+0x120>
c0d024c6:	d016      	beq.n	c0d024f6 <tx_display_query+0x146>
c0d024c8:	2804      	cmp	r0, #4
c0d024ca:	d030      	beq.n	c0d0252e <tx_display_query+0x17e>
c0d024cc:	28ff      	cmp	r0, #255	; 0xff
c0d024ce:	d12b      	bne.n	c0d02528 <tx_display_query+0x178>
c0d024d0:	461e      	mov	r6, r3
c0d024d2:	a80b      	add	r0, sp, #44	; 0x2c
c0d024d4:	f7ff feca 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d024d8:	4607      	mov	r7, r0
c0d024da:	f002 fbe5 	bl	c0d04ca8 <check_app_canary>
c0d024de:	2f00      	cmp	r7, #0
c0d024e0:	d1dd      	bne.n	c0d0249e <tx_display_query+0xee>
c0d024e2:	a80b      	add	r0, sp, #44	; 0x2c
c0d024e4:	7800      	ldrb	r0, [r0, #0]
c0d024e6:	2800      	cmp	r0, #0
c0d024e8:	4635      	mov	r5, r6
c0d024ea:	d11e      	bne.n	c0d0252a <tx_display_query+0x17a>
c0d024ec:	4605      	mov	r5, r0
c0d024ee:	e01c      	b.n	c0d0252a <tx_display_query+0x17a>
c0d024f0:	2500      	movs	r5, #0
c0d024f2:	462f      	mov	r7, r5
c0d024f4:	e7d3      	b.n	c0d0249e <tx_display_query+0xee>
c0d024f6:	2063      	movs	r0, #99	; 0x63
c0d024f8:	00c0      	lsls	r0, r0, #3
c0d024fa:	4abf      	ldr	r2, [pc, #764]	; (c0d027f8 <tx_display_query+0x448>)
c0d024fc:	5c10      	ldrb	r0, [r2, r0]
c0d024fe:	0781      	lsls	r1, r0, #30
c0d02500:	d505      	bpl.n	c0d0250e <tx_display_query+0x15e>
c0d02502:	49be      	ldr	r1, [pc, #760]	; (c0d027fc <tx_display_query+0x44c>)
c0d02504:	5c51      	ldrb	r1, [r2, r1]
c0d02506:	2900      	cmp	r1, #0
c0d02508:	d001      	beq.n	c0d0250e <tx_display_query+0x15e>
c0d0250a:	1a59      	subs	r1, r3, r1
c0d0250c:	1c4b      	adds	r3, r1, #1
c0d0250e:	0741      	lsls	r1, r0, #29
c0d02510:	d50a      	bpl.n	c0d02528 <tx_display_query+0x178>
c0d02512:	2119      	movs	r1, #25
c0d02514:	0149      	lsls	r1, r1, #5
c0d02516:	5c51      	ldrb	r1, [r2, r1]
c0d02518:	2900      	cmp	r1, #0
c0d0251a:	d005      	beq.n	c0d02528 <tx_display_query+0x178>
c0d0251c:	08c0      	lsrs	r0, r0, #3
c0d0251e:	2201      	movs	r2, #1
c0d02520:	4382      	bics	r2, r0
c0d02522:	1898      	adds	r0, r3, r2
c0d02524:	1a45      	subs	r5, r0, r1
c0d02526:	e000      	b.n	c0d0252a <tx_display_query+0x17a>
c0d02528:	461d      	mov	r5, r3
c0d0252a:	2700      	movs	r7, #0
c0d0252c:	e7b7      	b.n	c0d0249e <tx_display_query+0xee>
c0d0252e:	461e      	mov	r6, r3
c0d02530:	a80b      	add	r0, sp, #44	; 0x2c
c0d02532:	f7ff fe9b 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d02536:	4607      	mov	r7, r0
c0d02538:	f002 fbb6 	bl	c0d04ca8 <check_app_canary>
c0d0253c:	2f00      	cmp	r7, #0
c0d0253e:	d1ae      	bne.n	c0d0249e <tx_display_query+0xee>
c0d02540:	a80b      	add	r0, sp, #44	; 0x2c
c0d02542:	7800      	ldrb	r0, [r0, #0]
c0d02544:	2800      	cmp	r0, #0
c0d02546:	d001      	beq.n	c0d0254c <tx_display_query+0x19c>
c0d02548:	4635      	mov	r5, r6
c0d0254a:	e7ee      	b.n	c0d0252a <tx_display_query+0x17a>
c0d0254c:	2501      	movs	r5, #1
c0d0254e:	e7ec      	b.n	c0d0252a <tx_display_query+0x17a>
c0d02550:	9805      	ldr	r0, [sp, #20]
c0d02552:	b2c0      	uxtb	r0, r0
c0d02554:	9002      	str	r0, [sp, #8]
c0d02556:	2400      	movs	r4, #0
c0d02558:	4621      	mov	r1, r4
c0d0255a:	9802      	ldr	r0, [sp, #8]
c0d0255c:	4281      	cmp	r1, r0
c0d0255e:	d300      	bcc.n	c0d02562 <tx_display_query+0x1b2>
c0d02560:	e13c      	b.n	c0d027dc <tx_display_query+0x42c>
c0d02562:	9105      	str	r1, [sp, #20]
c0d02564:	f7ff fc8a 	bl	c0d01e7c <tx_indexRootFields>
c0d02568:	4607      	mov	r7, r0
c0d0256a:	f002 fb9d 	bl	c0d04ca8 <check_app_canary>
c0d0256e:	2f00      	cmp	r7, #0
c0d02570:	d001      	beq.n	c0d02576 <tx_display_query+0x1c6>
c0d02572:	2500      	movs	r5, #0
c0d02574:	e049      	b.n	c0d0260a <tx_display_query+0x25a>
c0d02576:	499f      	ldr	r1, [pc, #636]	; (c0d027f4 <tx_display_query+0x444>)
c0d02578:	8ac8      	ldrh	r0, [r1, #22]
c0d0257a:	2800      	cmp	r0, #0
c0d0257c:	d016      	beq.n	c0d025ac <tx_display_query+0x1fc>
c0d0257e:	9406      	str	r4, [sp, #24]
c0d02580:	b2f0      	uxtb	r0, r6
c0d02582:	1809      	adds	r1, r1, r0
c0d02584:	7e0c      	ldrb	r4, [r1, #24]
c0d02586:	a90c      	add	r1, sp, #48	; 0x30
c0d02588:	2500      	movs	r5, #0
c0d0258a:	700d      	strb	r5, [r1, #0]
c0d0258c:	2803      	cmp	r0, #3
c0d0258e:	d210      	bcs.n	c0d025b2 <tx_display_query+0x202>
c0d02590:	a80c      	add	r0, sp, #48	; 0x30
c0d02592:	f7ff fe6b 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d02596:	4607      	mov	r7, r0
c0d02598:	f002 fb86 	bl	c0d04ca8 <check_app_canary>
c0d0259c:	2f00      	cmp	r7, #0
c0d0259e:	d133      	bne.n	c0d02608 <tx_display_query+0x258>
c0d025a0:	a80c      	add	r0, sp, #48	; 0x30
c0d025a2:	7800      	ldrb	r0, [r0, #0]
c0d025a4:	2800      	cmp	r0, #0
c0d025a6:	d12d      	bne.n	c0d02604 <tx_display_query+0x254>
c0d025a8:	4604      	mov	r4, r0
c0d025aa:	e02b      	b.n	c0d02604 <tx_display_query+0x254>
c0d025ac:	2500      	movs	r5, #0
c0d025ae:	462f      	mov	r7, r5
c0d025b0:	e02b      	b.n	c0d0260a <tx_display_query+0x25a>
c0d025b2:	4a91      	ldr	r2, [pc, #580]	; (c0d027f8 <tx_display_query+0x448>)
c0d025b4:	d00f      	beq.n	c0d025d6 <tx_display_query+0x226>
c0d025b6:	2805      	cmp	r0, #5
c0d025b8:	d124      	bne.n	c0d02604 <tx_display_query+0x254>
c0d025ba:	a80c      	add	r0, sp, #48	; 0x30
c0d025bc:	f7ff fe56 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d025c0:	4607      	mov	r7, r0
c0d025c2:	f002 fb71 	bl	c0d04ca8 <check_app_canary>
c0d025c6:	2f00      	cmp	r7, #0
c0d025c8:	d11e      	bne.n	c0d02608 <tx_display_query+0x258>
c0d025ca:	a80c      	add	r0, sp, #48	; 0x30
c0d025cc:	7800      	ldrb	r0, [r0, #0]
c0d025ce:	2800      	cmp	r0, #0
c0d025d0:	d118      	bne.n	c0d02604 <tx_display_query+0x254>
c0d025d2:	2401      	movs	r4, #1
c0d025d4:	e016      	b.n	c0d02604 <tx_display_query+0x254>
c0d025d6:	2063      	movs	r0, #99	; 0x63
c0d025d8:	00c0      	lsls	r0, r0, #3
c0d025da:	5c10      	ldrb	r0, [r2, r0]
c0d025dc:	0781      	lsls	r1, r0, #30
c0d025de:	d505      	bpl.n	c0d025ec <tx_display_query+0x23c>
c0d025e0:	4986      	ldr	r1, [pc, #536]	; (c0d027fc <tx_display_query+0x44c>)
c0d025e2:	5c51      	ldrb	r1, [r2, r1]
c0d025e4:	2900      	cmp	r1, #0
c0d025e6:	d001      	beq.n	c0d025ec <tx_display_query+0x23c>
c0d025e8:	1a61      	subs	r1, r4, r1
c0d025ea:	1c4c      	adds	r4, r1, #1
c0d025ec:	0741      	lsls	r1, r0, #29
c0d025ee:	d509      	bpl.n	c0d02604 <tx_display_query+0x254>
c0d025f0:	2119      	movs	r1, #25
c0d025f2:	0149      	lsls	r1, r1, #5
c0d025f4:	5c51      	ldrb	r1, [r2, r1]
c0d025f6:	2900      	cmp	r1, #0
c0d025f8:	d004      	beq.n	c0d02604 <tx_display_query+0x254>
c0d025fa:	08c0      	lsrs	r0, r0, #3
c0d025fc:	2201      	movs	r2, #1
c0d025fe:	4382      	bics	r2, r0
c0d02600:	18a0      	adds	r0, r4, r2
c0d02602:	1a44      	subs	r4, r0, r1
c0d02604:	b2e5      	uxtb	r5, r4
c0d02606:	2700      	movs	r7, #0
c0d02608:	9c06      	ldr	r4, [sp, #24]
c0d0260a:	1c64      	adds	r4, r4, #1
c0d0260c:	f002 fb4c 	bl	c0d04ca8 <check_app_canary>
c0d02610:	2f00      	cmp	r7, #0
c0d02612:	d000      	beq.n	c0d02616 <tx_display_query+0x266>
c0d02614:	e0e8      	b.n	c0d027e8 <tx_display_query+0x438>
c0d02616:	42ac      	cmp	r4, r5
c0d02618:	d200      	bcs.n	c0d0261c <tx_display_query+0x26c>
c0d0261a:	e094      	b.n	c0d02746 <tx_display_query+0x396>
c0d0261c:	f7ff fc2e 	bl	c0d01e7c <tx_indexRootFields>
c0d02620:	4607      	mov	r7, r0
c0d02622:	1c70      	adds	r0, r6, #1
c0d02624:	9008      	str	r0, [sp, #32]
c0d02626:	f002 fb3f 	bl	c0d04ca8 <check_app_canary>
c0d0262a:	2400      	movs	r4, #0
c0d0262c:	2f00      	cmp	r7, #0
c0d0262e:	9406      	str	r4, [sp, #24]
c0d02630:	d14d      	bne.n	c0d026ce <tx_display_query+0x31e>
c0d02632:	4970      	ldr	r1, [pc, #448]	; (c0d027f4 <tx_display_query+0x444>)
c0d02634:	8ac8      	ldrh	r0, [r1, #22]
c0d02636:	2800      	cmp	r0, #0
c0d02638:	d022      	beq.n	c0d02680 <tx_display_query+0x2d0>
c0d0263a:	9808      	ldr	r0, [sp, #32]
c0d0263c:	b2c0      	uxtb	r0, r0
c0d0263e:	1808      	adds	r0, r1, r0
c0d02640:	7e05      	ldrb	r5, [r0, #24]
c0d02642:	a80d      	add	r0, sp, #52	; 0x34
c0d02644:	2400      	movs	r4, #0
c0d02646:	7004      	strb	r4, [r0, #0]
c0d02648:	b2f0      	uxtb	r0, r6
c0d0264a:	2802      	cmp	r0, #2
c0d0264c:	d304      	bcc.n	c0d02658 <tx_display_query+0x2a8>
c0d0264e:	d01f      	beq.n	c0d02690 <tx_display_query+0x2e0>
c0d02650:	2804      	cmp	r0, #4
c0d02652:	d00b      	beq.n	c0d0266c <tx_display_query+0x2bc>
c0d02654:	28ff      	cmp	r0, #255	; 0xff
c0d02656:	d138      	bne.n	c0d026ca <tx_display_query+0x31a>
c0d02658:	a80d      	add	r0, sp, #52	; 0x34
c0d0265a:	f7ff fe07 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d0265e:	4607      	mov	r7, r0
c0d02660:	f002 fb22 	bl	c0d04ca8 <check_app_canary>
c0d02664:	2f00      	cmp	r7, #0
c0d02666:	d132      	bne.n	c0d026ce <tx_display_query+0x31e>
c0d02668:	a80d      	add	r0, sp, #52	; 0x34
c0d0266a:	e00c      	b.n	c0d02686 <tx_display_query+0x2d6>
c0d0266c:	a80d      	add	r0, sp, #52	; 0x34
c0d0266e:	f7ff fdfd 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d02672:	4607      	mov	r7, r0
c0d02674:	f002 fb18 	bl	c0d04ca8 <check_app_canary>
c0d02678:	2f00      	cmp	r7, #0
c0d0267a:	d128      	bne.n	c0d026ce <tx_display_query+0x31e>
c0d0267c:	a80d      	add	r0, sp, #52	; 0x34
c0d0267e:	e020      	b.n	c0d026c2 <tx_display_query+0x312>
c0d02680:	2400      	movs	r4, #0
c0d02682:	4627      	mov	r7, r4
c0d02684:	e023      	b.n	c0d026ce <tx_display_query+0x31e>
c0d02686:	7800      	ldrb	r0, [r0, #0]
c0d02688:	2800      	cmp	r0, #0
c0d0268a:	d11e      	bne.n	c0d026ca <tx_display_query+0x31a>
c0d0268c:	4605      	mov	r5, r0
c0d0268e:	e01c      	b.n	c0d026ca <tx_display_query+0x31a>
c0d02690:	2063      	movs	r0, #99	; 0x63
c0d02692:	00c0      	lsls	r0, r0, #3
c0d02694:	4a58      	ldr	r2, [pc, #352]	; (c0d027f8 <tx_display_query+0x448>)
c0d02696:	5c10      	ldrb	r0, [r2, r0]
c0d02698:	0781      	lsls	r1, r0, #30
c0d0269a:	d505      	bpl.n	c0d026a8 <tx_display_query+0x2f8>
c0d0269c:	4957      	ldr	r1, [pc, #348]	; (c0d027fc <tx_display_query+0x44c>)
c0d0269e:	5c51      	ldrb	r1, [r2, r1]
c0d026a0:	2900      	cmp	r1, #0
c0d026a2:	d001      	beq.n	c0d026a8 <tx_display_query+0x2f8>
c0d026a4:	1a69      	subs	r1, r5, r1
c0d026a6:	1c4d      	adds	r5, r1, #1
c0d026a8:	0741      	lsls	r1, r0, #29
c0d026aa:	d50e      	bpl.n	c0d026ca <tx_display_query+0x31a>
c0d026ac:	2119      	movs	r1, #25
c0d026ae:	0149      	lsls	r1, r1, #5
c0d026b0:	5c51      	ldrb	r1, [r2, r1]
c0d026b2:	2900      	cmp	r1, #0
c0d026b4:	d009      	beq.n	c0d026ca <tx_display_query+0x31a>
c0d026b6:	08c0      	lsrs	r0, r0, #3
c0d026b8:	2201      	movs	r2, #1
c0d026ba:	4382      	bics	r2, r0
c0d026bc:	18a8      	adds	r0, r5, r2
c0d026be:	1a45      	subs	r5, r0, r1
c0d026c0:	e003      	b.n	c0d026ca <tx_display_query+0x31a>
c0d026c2:	7800      	ldrb	r0, [r0, #0]
c0d026c4:	2800      	cmp	r0, #0
c0d026c6:	d100      	bne.n	c0d026ca <tx_display_query+0x31a>
c0d026c8:	2501      	movs	r5, #1
c0d026ca:	b2ec      	uxtb	r4, r5
c0d026cc:	2700      	movs	r7, #0
c0d026ce:	f002 faeb 	bl	c0d04ca8 <check_app_canary>
c0d026d2:	2f00      	cmp	r7, #0
c0d026d4:	d000      	beq.n	c0d026d8 <tx_display_query+0x328>
c0d026d6:	e698      	b.n	c0d0240a <tx_display_query+0x5a>
c0d026d8:	9e08      	ldr	r6, [sp, #32]
c0d026da:	2c00      	cmp	r4, #0
c0d026dc:	d132      	bne.n	c0d02744 <tx_display_query+0x394>
c0d026de:	f7ff fbcd 	bl	c0d01e7c <tx_indexRootFields>
c0d026e2:	4607      	mov	r7, r0
c0d026e4:	1c70      	adds	r0, r6, #1
c0d026e6:	9008      	str	r0, [sp, #32]
c0d026e8:	f002 fade 	bl	c0d04ca8 <check_app_canary>
c0d026ec:	2400      	movs	r4, #0
c0d026ee:	2f00      	cmp	r7, #0
c0d026f0:	9406      	str	r4, [sp, #24]
c0d026f2:	d1ec      	bne.n	c0d026ce <tx_display_query+0x31e>
c0d026f4:	493f      	ldr	r1, [pc, #252]	; (c0d027f4 <tx_display_query+0x444>)
c0d026f6:	8ac8      	ldrh	r0, [r1, #22]
c0d026f8:	2800      	cmp	r0, #0
c0d026fa:	d0c1      	beq.n	c0d02680 <tx_display_query+0x2d0>
c0d026fc:	9808      	ldr	r0, [sp, #32]
c0d026fe:	b2c0      	uxtb	r0, r0
c0d02700:	1808      	adds	r0, r1, r0
c0d02702:	7e05      	ldrb	r5, [r0, #24]
c0d02704:	a80e      	add	r0, sp, #56	; 0x38
c0d02706:	2400      	movs	r4, #0
c0d02708:	7004      	strb	r4, [r0, #0]
c0d0270a:	b2f0      	uxtb	r0, r6
c0d0270c:	2802      	cmp	r0, #2
c0d0270e:	d304      	bcc.n	c0d0271a <tx_display_query+0x36a>
c0d02710:	d0be      	beq.n	c0d02690 <tx_display_query+0x2e0>
c0d02712:	2804      	cmp	r0, #4
c0d02714:	d00a      	beq.n	c0d0272c <tx_display_query+0x37c>
c0d02716:	28ff      	cmp	r0, #255	; 0xff
c0d02718:	d1d7      	bne.n	c0d026ca <tx_display_query+0x31a>
c0d0271a:	a80e      	add	r0, sp, #56	; 0x38
c0d0271c:	f7ff fda6 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d02720:	4607      	mov	r7, r0
c0d02722:	f002 fac1 	bl	c0d04ca8 <check_app_canary>
c0d02726:	2f00      	cmp	r7, #0
c0d02728:	d1d1      	bne.n	c0d026ce <tx_display_query+0x31e>
c0d0272a:	e009      	b.n	c0d02740 <tx_display_query+0x390>
c0d0272c:	a80e      	add	r0, sp, #56	; 0x38
c0d0272e:	f7ff fd9d 	bl	c0d0226c <tx_is_expert_mode_or_not_default_chainid>
c0d02732:	4607      	mov	r7, r0
c0d02734:	f002 fab8 	bl	c0d04ca8 <check_app_canary>
c0d02738:	2f00      	cmp	r7, #0
c0d0273a:	d1c8      	bne.n	c0d026ce <tx_display_query+0x31e>
c0d0273c:	a80e      	add	r0, sp, #56	; 0x38
c0d0273e:	e7c0      	b.n	c0d026c2 <tx_display_query+0x312>
c0d02740:	a80e      	add	r0, sp, #56	; 0x38
c0d02742:	e7a0      	b.n	c0d02686 <tx_display_query+0x2d6>
c0d02744:	2400      	movs	r4, #0
c0d02746:	9905      	ldr	r1, [sp, #20]
c0d02748:	1c49      	adds	r1, r1, #1
c0d0274a:	e706      	b.n	c0d0255a <tx_display_query+0x1aa>
c0d0274c:	2500      	movs	r5, #0
c0d0274e:	462f      	mov	r7, r5
c0d02750:	e654      	b.n	c0d023fc <tx_display_query+0x4c>
c0d02752:	482c      	ldr	r0, [pc, #176]	; (c0d02804 <tx_display_query+0x454>)
c0d02754:	7800      	ldrb	r0, [r0, #0]
c0d02756:	2800      	cmp	r0, #0
c0d02758:	d003      	beq.n	c0d02762 <tx_display_query+0x3b2>
c0d0275a:	2003      	movs	r0, #3
c0d0275c:	e002      	b.n	c0d02764 <tx_display_query+0x3b4>
c0d0275e:	4628      	mov	r0, r5
c0d02760:	e000      	b.n	c0d02764 <tx_display_query+0x3b4>
c0d02762:	2002      	movs	r0, #2
c0d02764:	9601      	str	r6, [sp, #4]
c0d02766:	18d4      	adds	r4, r2, r3
c0d02768:	6065      	str	r5, [r4, #4]
c0d0276a:	70a0      	strb	r0, [r4, #2]
c0d0276c:	9108      	str	r1, [sp, #32]
c0d0276e:	9505      	str	r5, [sp, #20]
c0d02770:	4d26      	ldr	r5, [pc, #152]	; (c0d0280c <tx_display_query+0x45c>)
c0d02772:	447d      	add	r5, pc
c0d02774:	4638      	mov	r0, r7
c0d02776:	9f03      	ldr	r7, [sp, #12]
c0d02778:	4639      	mov	r1, r7
c0d0277a:	9302      	str	r3, [sp, #8]
c0d0277c:	47a8      	blx	r5
c0d0277e:	4822      	ldr	r0, [pc, #136]	; (c0d02808 <tx_display_query+0x458>)
c0d02780:	4631      	mov	r1, r6
c0d02782:	47a8      	blx	r5
c0d02784:	9805      	ldr	r0, [sp, #20]
c0d02786:	491c      	ldr	r1, [pc, #112]	; (c0d027f8 <tx_display_query+0x448>)
c0d02788:	9a02      	ldr	r2, [sp, #8]
c0d0278a:	5288      	strh	r0, [r1, r2]
c0d0278c:	481e      	ldr	r0, [pc, #120]	; (c0d02808 <tx_display_query+0x458>)
c0d0278e:	6120      	str	r0, [r4, #16]
c0d02790:	9e04      	ldr	r6, [sp, #16]
c0d02792:	60a6      	str	r6, [r4, #8]
c0d02794:	9801      	ldr	r0, [sp, #4]
c0d02796:	82a0      	strh	r0, [r4, #20]
c0d02798:	81a7      	strh	r7, [r4, #12]
c0d0279a:	9806      	ldr	r0, [sp, #24]
c0d0279c:	b2c0      	uxtb	r0, r0
c0d0279e:	80a0      	strh	r0, [r4, #4]
c0d027a0:	4630      	mov	r0, r6
c0d027a2:	4639      	mov	r1, r7
c0d027a4:	47a8      	blx	r5
c0d027a6:	9d08      	ldr	r5, [sp, #32]
c0d027a8:	2f00      	cmp	r7, #0
c0d027aa:	d007      	beq.n	c0d027bc <tx_display_query+0x40c>
c0d027ac:	4628      	mov	r0, r5
c0d027ae:	f7ff fb2f 	bl	c0d01e10 <get_required_root_item>
c0d027b2:	4601      	mov	r1, r0
c0d027b4:	1e7a      	subs	r2, r7, #1
c0d027b6:	4630      	mov	r0, r6
c0d027b8:	f004 fe4c 	bl	c0d07454 <strncpy>
c0d027bc:	480d      	ldr	r0, [pc, #52]	; (c0d027f4 <tx_display_query+0x444>)
c0d027be:	5d41      	ldrb	r1, [r0, r5]
c0d027c0:	2900      	cmp	r1, #0
c0d027c2:	9907      	ldr	r1, [sp, #28]
c0d027c4:	d008      	beq.n	c0d027d8 <tx_display_query+0x428>
c0d027c6:	006a      	lsls	r2, r5, #1
c0d027c8:	1880      	adds	r0, r0, r2
c0d027ca:	8900      	ldrh	r0, [r0, #8]
c0d027cc:	f000 f914 	bl	c0d029f8 <tx_traverse_find>
c0d027d0:	4604      	mov	r4, r0
c0d027d2:	f002 fa69 	bl	c0d04ca8 <check_app_canary>
c0d027d6:	e63b      	b.n	c0d02450 <tx_display_query+0xa0>
c0d027d8:	2401      	movs	r4, #1
c0d027da:	e639      	b.n	c0d02450 <tx_display_query+0xa0>
c0d027dc:	9406      	str	r4, [sp, #24]
c0d027de:	b2f0      	uxtb	r0, r6
c0d027e0:	2807      	cmp	r0, #7
c0d027e2:	d803      	bhi.n	c0d027ec <tx_display_query+0x43c>
c0d027e4:	2700      	movs	r7, #0
c0d027e6:	e002      	b.n	c0d027ee <tx_display_query+0x43e>
c0d027e8:	9406      	str	r4, [sp, #24]
c0d027ea:	e000      	b.n	c0d027ee <tx_display_query+0x43e>
c0d027ec:	2701      	movs	r7, #1
c0d027ee:	9608      	str	r6, [sp, #32]
c0d027f0:	e60b      	b.n	c0d0240a <tx_display_query+0x5a>
c0d027f2:	46c0      	nop			; (mov r8, r8)
c0d027f4:	20000908 	.word	0x20000908
c0d027f8:	200005c4 	.word	0x200005c4
c0d027fc:	00000319 	.word	0x00000319
c0d02800:	0000032f 	.word	0x0000032f
c0d02804:	2000092a 	.word	0x2000092a
c0d02808:	20000928 	.word	0x20000928
c0d0280c:	0000490b 	.word	0x0000490b

c0d02810 <tx_display_make_friendly>:
c0d02810:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02812:	b087      	sub	sp, #28
c0d02814:	f7ff fb32 	bl	c0d01e7c <tx_indexRootFields>
c0d02818:	4605      	mov	r5, r0
c0d0281a:	f002 fa45 	bl	c0d04ca8 <check_app_canary>
c0d0281e:	2d00      	cmp	r5, #0
c0d02820:	d002      	beq.n	c0d02828 <tx_display_make_friendly+0x18>
c0d02822:	4628      	mov	r0, r5
c0d02824:	b007      	add	sp, #28
c0d02826:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d02828:	2168      	movs	r1, #104	; 0x68
c0d0282a:	4c24      	ldr	r4, [pc, #144]	; (c0d028bc <tx_display_make_friendly+0xac>)
c0d0282c:	447c      	add	r4, pc
c0d0282e:	4822      	ldr	r0, [pc, #136]	; (c0d028b8 <tx_display_make_friendly+0xa8>)
c0d02830:	2500      	movs	r5, #0
c0d02832:	2900      	cmp	r1, #0
c0d02834:	d0f5      	beq.n	c0d02822 <tx_display_make_friendly+0x12>
c0d02836:	9106      	str	r1, [sp, #24]
c0d02838:	9502      	str	r5, [sp, #8]
c0d0283a:	4606      	mov	r6, r0
c0d0283c:	6820      	ldr	r0, [r4, #0]
c0d0283e:	f004 faab 	bl	c0d06d98 <pic>
c0d02842:	4607      	mov	r7, r0
c0d02844:	6860      	ldr	r0, [r4, #4]
c0d02846:	f004 faa7 	bl	c0d06d98 <pic>
c0d0284a:	4605      	mov	r5, r0
c0d0284c:	9704      	str	r7, [sp, #16]
c0d0284e:	4638      	mov	r0, r7
c0d02850:	f004 fd98 	bl	c0d07384 <strlen>
c0d02854:	4607      	mov	r7, r0
c0d02856:	9501      	str	r5, [sp, #4]
c0d02858:	4628      	mov	r0, r5
c0d0285a:	f004 fd93 	bl	c0d07384 <strlen>
c0d0285e:	9003      	str	r0, [sp, #12]
c0d02860:	20cd      	movs	r0, #205	; 0xcd
c0d02862:	0080      	lsls	r0, r0, #2
c0d02864:	9005      	str	r0, [sp, #20]
c0d02866:	5830      	ldr	r0, [r6, r0]
c0d02868:	2167      	movs	r1, #103	; 0x67
c0d0286a:	00cd      	lsls	r5, r1, #3
c0d0286c:	5b71      	ldrh	r1, [r6, r5]
c0d0286e:	f004 fe27 	bl	c0d074c0 <strnlen>
c0d02872:	b282      	uxth	r2, r0
c0d02874:	b2b8      	uxth	r0, r7
c0d02876:	4282      	cmp	r2, r0
c0d02878:	4630      	mov	r0, r6
c0d0287a:	d10d      	bne.n	c0d02898 <tx_display_make_friendly+0x88>
c0d0287c:	9905      	ldr	r1, [sp, #20]
c0d0287e:	5847      	ldr	r7, [r0, r1]
c0d02880:	4638      	mov	r0, r7
c0d02882:	9904      	ldr	r1, [sp, #16]
c0d02884:	f004 fdac 	bl	c0d073e0 <strncmp>
c0d02888:	2800      	cmp	r0, #0
c0d0288a:	4630      	mov	r0, r6
c0d0288c:	d104      	bne.n	c0d02898 <tx_display_make_friendly+0x88>
c0d0288e:	5b41      	ldrh	r1, [r0, r5]
c0d02890:	9a03      	ldr	r2, [sp, #12]
c0d02892:	b296      	uxth	r6, r2
c0d02894:	428e      	cmp	r6, r1
c0d02896:	d903      	bls.n	c0d028a0 <tx_display_make_friendly+0x90>
c0d02898:	3408      	adds	r4, #8
c0d0289a:	9906      	ldr	r1, [sp, #24]
c0d0289c:	1e49      	subs	r1, r1, #1
c0d0289e:	e7c7      	b.n	c0d02830 <tx_display_make_friendly+0x20>
c0d028a0:	4604      	mov	r4, r0
c0d028a2:	4638      	mov	r0, r7
c0d028a4:	f004 fbec 	bl	c0d07080 <explicit_bzero>
c0d028a8:	9805      	ldr	r0, [sp, #20]
c0d028aa:	5820      	ldr	r0, [r4, r0]
c0d028ac:	9901      	ldr	r1, [sp, #4]
c0d028ae:	4632      	mov	r2, r6
c0d028b0:	f004 fbda 	bl	c0d07068 <__aeabi_memmove>
c0d028b4:	9d02      	ldr	r5, [sp, #8]
c0d028b6:	e7b4      	b.n	c0d02822 <tx_display_make_friendly+0x12>
c0d028b8:	200005c4 	.word	0x200005c4
c0d028bc:	00006078 	.word	0x00006078

c0d028c0 <tx_getToken>:
c0d028c0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d028c2:	b089      	sub	sp, #36	; 0x24
c0d028c4:	9305      	str	r3, [sp, #20]
c0d028c6:	4615      	mov	r5, r2
c0d028c8:	460e      	mov	r6, r1
c0d028ca:	4604      	mov	r4, r0
c0d028cc:	9f0e      	ldr	r7, [sp, #56]	; 0x38
c0d028ce:	2000      	movs	r0, #0
c0d028d0:	9006      	str	r0, [sp, #24]
c0d028d2:	7038      	strb	r0, [r7, #0]
c0d028d4:	4608      	mov	r0, r1
c0d028d6:	4611      	mov	r1, r2
c0d028d8:	f004 fbd2 	bl	c0d07080 <explicit_bzero>
c0d028dc:	00e0      	lsls	r0, r4, #3
c0d028de:	4942      	ldr	r1, [pc, #264]	; (c0d029e8 <tx_getToken+0x128>)
c0d028e0:	180a      	adds	r2, r1, r0
c0d028e2:	2012      	movs	r0, #18
c0d028e4:	5e10      	ldrsh	r0, [r2, r0]
c0d028e6:	2314      	movs	r3, #20
c0d028e8:	5ed2      	ldrsh	r2, [r2, r3]
c0d028ea:	4282      	cmp	r2, r0
c0d028ec:	da01      	bge.n	c0d028f2 <tx_getToken+0x32>
c0d028ee:	2008      	movs	r0, #8
c0d028f0:	e078      	b.n	c0d029e4 <tx_getToken+0x124>
c0d028f2:	9502      	str	r5, [sp, #8]
c0d028f4:	9603      	str	r6, [sp, #12]
c0d028f6:	6849      	ldr	r1, [r1, #4]
c0d028f8:	2301      	movs	r3, #1
c0d028fa:	9704      	str	r7, [sp, #16]
c0d028fc:	703b      	strb	r3, [r7, #0]
c0d028fe:	1a17      	subs	r7, r2, r0
c0d02900:	043a      	lsls	r2, r7, #16
c0d02902:	9e06      	ldr	r6, [sp, #24]
c0d02904:	d067      	beq.n	c0d029d6 <tx_getToken+0x116>
c0d02906:	9301      	str	r3, [sp, #4]
c0d02908:	1808      	adds	r0, r1, r0
c0d0290a:	9007      	str	r0, [sp, #28]
c0d0290c:	2543      	movs	r5, #67	; 0x43
c0d0290e:	4c38      	ldr	r4, [pc, #224]	; (c0d029f0 <tx_getToken+0x130>)
c0d02910:	447c      	add	r4, pc
c0d02912:	2d00      	cmp	r5, #0
c0d02914:	d017      	beq.n	c0d02946 <tx_getToken+0x86>
c0d02916:	6820      	ldr	r0, [r4, #0]
c0d02918:	f004 fa3e 	bl	c0d06d98 <pic>
c0d0291c:	4606      	mov	r6, r0
c0d0291e:	6860      	ldr	r0, [r4, #4]
c0d02920:	f004 fa3a 	bl	c0d06d98 <pic>
c0d02924:	9008      	str	r0, [sp, #32]
c0d02926:	4630      	mov	r0, r6
c0d02928:	f004 fd2c 	bl	c0d07384 <strlen>
c0d0292c:	b2b9      	uxth	r1, r7
c0d0292e:	b282      	uxth	r2, r0
c0d02930:	4291      	cmp	r1, r2
c0d02932:	d105      	bne.n	c0d02940 <tx_getToken+0x80>
c0d02934:	9807      	ldr	r0, [sp, #28]
c0d02936:	4631      	mov	r1, r6
c0d02938:	f004 fd52 	bl	c0d073e0 <strncmp>
c0d0293c:	2800      	cmp	r0, #0
c0d0293e:	d006      	beq.n	c0d0294e <tx_getToken+0x8e>
c0d02940:	3408      	adds	r4, #8
c0d02942:	1e6d      	subs	r5, r5, #1
c0d02944:	e7e5      	b.n	c0d02912 <tx_getToken+0x52>
c0d02946:	9807      	ldr	r0, [sp, #28]
c0d02948:	9008      	str	r0, [sp, #32]
c0d0294a:	9e06      	ldr	r6, [sp, #24]
c0d0294c:	e00f      	b.n	c0d0296e <tx_getToken+0xae>
c0d0294e:	9d08      	ldr	r5, [sp, #32]
c0d02950:	4628      	mov	r0, r5
c0d02952:	f004 fd17 	bl	c0d07384 <strlen>
c0d02956:	4607      	mov	r7, r0
c0d02958:	4c24      	ldr	r4, [pc, #144]	; (c0d029ec <tx_getToken+0x12c>)
c0d0295a:	9e06      	ldr	r6, [sp, #24]
c0d0295c:	7026      	strb	r6, [r4, #0]
c0d0295e:	4925      	ldr	r1, [pc, #148]	; (c0d029f4 <tx_getToken+0x134>)
c0d02960:	4479      	add	r1, pc
c0d02962:	4628      	mov	r0, r5
c0d02964:	f004 ff00 	bl	c0d07768 <strstr>
c0d02968:	1e41      	subs	r1, r0, #1
c0d0296a:	4188      	sbcs	r0, r1
c0d0296c:	7020      	strb	r0, [r4, #0]
c0d0296e:	9803      	ldr	r0, [sp, #12]
c0d02970:	9c02      	ldr	r4, [sp, #8]
c0d02972:	4621      	mov	r1, r4
c0d02974:	f004 fb84 	bl	c0d07080 <explicit_bzero>
c0d02978:	9804      	ldr	r0, [sp, #16]
c0d0297a:	7006      	strb	r6, [r0, #0]
c0d0297c:	1e64      	subs	r4, r4, #1
c0d0297e:	b2a5      	uxth	r5, r4
c0d02980:	2d00      	cmp	r5, #0
c0d02982:	9b01      	ldr	r3, [sp, #4]
c0d02984:	d027      	beq.n	c0d029d6 <tx_getToken+0x116>
c0d02986:	0438      	lsls	r0, r7, #16
c0d02988:	d025      	beq.n	c0d029d6 <tx_getToken+0x116>
c0d0298a:	b2b8      	uxth	r0, r7
c0d0298c:	4629      	mov	r1, r5
c0d0298e:	f004 faf5 	bl	c0d06f7c <__udivsi3>
c0d02992:	4344      	muls	r4, r0
c0d02994:	1b39      	subs	r1, r7, r4
c0d02996:	b28a      	uxth	r2, r1
c0d02998:	1e53      	subs	r3, r2, #1
c0d0299a:	4614      	mov	r4, r2
c0d0299c:	419c      	sbcs	r4, r3
c0d0299e:	1820      	adds	r0, r4, r0
c0d029a0:	9b04      	ldr	r3, [sp, #16]
c0d029a2:	7018      	strb	r0, [r3, #0]
c0d029a4:	b2c0      	uxtb	r0, r0
c0d029a6:	9b05      	ldr	r3, [sp, #20]
c0d029a8:	4298      	cmp	r0, r3
c0d029aa:	9b01      	ldr	r3, [sp, #4]
c0d029ac:	d913      	bls.n	c0d029d6 <tx_getToken+0x116>
c0d029ae:	0409      	lsls	r1, r1, #16
c0d029b0:	9905      	ldr	r1, [sp, #20]
c0d029b2:	d007      	beq.n	c0d029c4 <tx_getToken+0x104>
c0d029b4:	1e40      	subs	r0, r0, #1
c0d029b6:	4288      	cmp	r0, r1
c0d029b8:	d104      	bne.n	c0d029c4 <tx_getToken+0x104>
c0d029ba:	434d      	muls	r5, r1
c0d029bc:	9808      	ldr	r0, [sp, #32]
c0d029be:	1941      	adds	r1, r0, r5
c0d029c0:	9803      	ldr	r0, [sp, #12]
c0d029c2:	e005      	b.n	c0d029d0 <tx_getToken+0x110>
c0d029c4:	4628      	mov	r0, r5
c0d029c6:	4348      	muls	r0, r1
c0d029c8:	9908      	ldr	r1, [sp, #32]
c0d029ca:	1809      	adds	r1, r1, r0
c0d029cc:	9803      	ldr	r0, [sp, #12]
c0d029ce:	462a      	mov	r2, r5
c0d029d0:	f004 fb4a 	bl	c0d07068 <__aeabi_memmove>
c0d029d4:	9b01      	ldr	r3, [sp, #4]
c0d029d6:	9804      	ldr	r0, [sp, #16]
c0d029d8:	7800      	ldrb	r0, [r0, #0]
c0d029da:	9905      	ldr	r1, [sp, #20]
c0d029dc:	4288      	cmp	r0, r1
c0d029de:	d900      	bls.n	c0d029e2 <tx_getToken+0x122>
c0d029e0:	4633      	mov	r3, r6
c0d029e2:	0098      	lsls	r0, r3, #2
c0d029e4:	b009      	add	sp, #36	; 0x24
c0d029e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d029e8:	200005c4 	.word	0x200005c4
c0d029ec:	2000092a 	.word	0x2000092a
c0d029f0:	000062d4 	.word	0x000062d4
c0d029f4:	0000649c 	.word	0x0000649c

c0d029f8 <tx_traverse_find>:
c0d029f8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d029fa:	b091      	sub	sp, #68	; 0x44
c0d029fc:	460d      	mov	r5, r1
c0d029fe:	4607      	mov	r7, r0
c0d02a00:	00c0      	lsls	r0, r0, #3
c0d02a02:	4eb1      	ldr	r6, [pc, #708]	; (c0d02cc8 <tx_traverse_find+0x2d0>)
c0d02a04:	1d31      	adds	r1, r6, #4
c0d02a06:	910b      	str	r1, [sp, #44]	; 0x2c
c0d02a08:	1808      	adds	r0, r1, r0
c0d02a0a:	7b04      	ldrb	r4, [r0, #12]
c0d02a0c:	f002 f94c 	bl	c0d04ca8 <check_app_canary>
c0d02a10:	6870      	ldr	r0, [r6, #4]
c0d02a12:	2800      	cmp	r0, #0
c0d02a14:	d057      	beq.n	c0d02ac6 <tx_traverse_find+0xce>
c0d02a16:	48ad      	ldr	r0, [pc, #692]	; (c0d02ccc <tx_traverse_find+0x2d4>)
c0d02a18:	5c30      	ldrb	r0, [r6, r0]
c0d02a1a:	2800      	cmp	r0, #0
c0d02a1c:	970c      	str	r7, [sp, #48]	; 0x30
c0d02a1e:	950a      	str	r5, [sp, #40]	; 0x28
c0d02a20:	d006      	beq.n	c0d02a30 <tx_traverse_find+0x38>
c0d02a22:	48ab      	ldr	r0, [pc, #684]	; (c0d02cd0 <tx_traverse_find+0x2d8>)
c0d02a24:	5c30      	ldrb	r0, [r6, r0]
c0d02a26:	2800      	cmp	r0, #0
c0d02a28:	d002      	beq.n	c0d02a30 <tx_traverse_find+0x38>
c0d02a2a:	1ee0      	subs	r0, r4, #3
c0d02a2c:	2801      	cmp	r0, #1
c0d02a2e:	d861      	bhi.n	c0d02af4 <tx_traverse_find+0xfc>
c0d02a30:	2063      	movs	r0, #99	; 0x63
c0d02a32:	00c0      	lsls	r0, r0, #3
c0d02a34:	5c33      	ldrb	r3, [r6, r0]
c0d02a36:	2401      	movs	r4, #1
c0d02a38:	2200      	movs	r2, #0
c0d02a3a:	401c      	ands	r4, r3
c0d02a3c:	4617      	mov	r7, r2
c0d02a3e:	d019      	beq.n	c0d02a74 <tx_traverse_find+0x7c>
c0d02a40:	0798      	lsls	r0, r3, #30
c0d02a42:	4617      	mov	r7, r2
c0d02a44:	d516      	bpl.n	c0d02a74 <tx_traverse_find+0x7c>
c0d02a46:	20cd      	movs	r0, #205	; 0xcd
c0d02a48:	0080      	lsls	r0, r0, #2
c0d02a4a:	5830      	ldr	r0, [r6, r0]
c0d02a4c:	49a1      	ldr	r1, [pc, #644]	; (c0d02cd4 <tx_traverse_find+0x2dc>)
c0d02a4e:	4479      	add	r1, pc
c0d02a50:	4615      	mov	r5, r2
c0d02a52:	461f      	mov	r7, r3
c0d02a54:	f004 fc52 	bl	c0d072fc <strcmp>
c0d02a58:	463b      	mov	r3, r7
c0d02a5a:	462a      	mov	r2, r5
c0d02a5c:	2800      	cmp	r0, #0
c0d02a5e:	462f      	mov	r7, r5
c0d02a60:	d108      	bne.n	c0d02a74 <tx_traverse_find+0x7c>
c0d02a62:	20cb      	movs	r0, #203	; 0xcb
c0d02a64:	0080      	lsls	r0, r0, #2
c0d02a66:	5a30      	ldrh	r0, [r6, r0]
c0d02a68:	21c7      	movs	r1, #199	; 0xc7
c0d02a6a:	0089      	lsls	r1, r1, #2
c0d02a6c:	5871      	ldr	r1, [r6, r1]
c0d02a6e:	1a0f      	subs	r7, r1, r0
c0d02a70:	1e78      	subs	r0, r7, #1
c0d02a72:	4187      	sbcs	r7, r0
c0d02a74:	20cb      	movs	r0, #203	; 0xcb
c0d02a76:	0085      	lsls	r5, r0, #2
c0d02a78:	5b70      	ldrh	r0, [r6, r5]
c0d02a7a:	21c9      	movs	r1, #201	; 0xc9
c0d02a7c:	0089      	lsls	r1, r1, #2
c0d02a7e:	5871      	ldr	r1, [r6, r1]
c0d02a80:	4041      	eors	r1, r0
c0d02a82:	2608      	movs	r6, #8
c0d02a84:	401e      	ands	r6, r3
c0d02a86:	430e      	orrs	r6, r1
c0d02a88:	1e70      	subs	r0, r6, #1
c0d02a8a:	4186      	sbcs	r6, r0
c0d02a8c:	2c00      	cmp	r4, #0
c0d02a8e:	d00e      	beq.n	c0d02aae <tx_traverse_find+0xb6>
c0d02a90:	0758      	lsls	r0, r3, #29
c0d02a92:	d50c      	bpl.n	c0d02aae <tx_traverse_find+0xb6>
c0d02a94:	20cd      	movs	r0, #205	; 0xcd
c0d02a96:	0080      	lsls	r0, r0, #2
c0d02a98:	498b      	ldr	r1, [pc, #556]	; (c0d02cc8 <tx_traverse_find+0x2d0>)
c0d02a9a:	5808      	ldr	r0, [r1, r0]
c0d02a9c:	498e      	ldr	r1, [pc, #568]	; (c0d02cd8 <tx_traverse_find+0x2e0>)
c0d02a9e:	4479      	add	r1, pc
c0d02aa0:	4614      	mov	r4, r2
c0d02aa2:	f004 fc2b 	bl	c0d072fc <strcmp>
c0d02aa6:	4622      	mov	r2, r4
c0d02aa8:	2800      	cmp	r0, #0
c0d02aaa:	d100      	bne.n	c0d02aae <tx_traverse_find+0xb6>
c0d02aac:	4632      	mov	r2, r6
c0d02aae:	4317      	orrs	r7, r2
c0d02ab0:	f002 f8fa 	bl	c0d04ca8 <check_app_canary>
c0d02ab4:	4b84      	ldr	r3, [pc, #528]	; (c0d02cc8 <tx_traverse_find+0x2d0>)
c0d02ab6:	2f00      	cmp	r7, #0
c0d02ab8:	d007      	beq.n	c0d02aca <tx_traverse_find+0xd2>
c0d02aba:	1958      	adds	r0, r3, r5
c0d02abc:	8881      	ldrh	r1, [r0, #4]
c0d02abe:	1c49      	adds	r1, r1, #1
c0d02ac0:	8081      	strh	r1, [r0, #4]
c0d02ac2:	5b58      	ldrh	r0, [r3, r5]
c0d02ac4:	e00e      	b.n	c0d02ae4 <tx_traverse_find+0xec>
c0d02ac6:	2701      	movs	r7, #1
c0d02ac8:	e011      	b.n	c0d02aee <tx_traverse_find+0xf6>
c0d02aca:	5b58      	ldrh	r0, [r3, r5]
c0d02acc:	1959      	adds	r1, r3, r5
c0d02ace:	2204      	movs	r2, #4
c0d02ad0:	5e89      	ldrsh	r1, [r1, r2]
c0d02ad2:	4288      	cmp	r0, r1
c0d02ad4:	d106      	bne.n	c0d02ae4 <tx_traverse_find+0xec>
c0d02ad6:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d02ad8:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d02ada:	8001      	strh	r1, [r0, #0]
c0d02adc:	f002 f8e4 	bl	c0d04ca8 <check_app_canary>
c0d02ae0:	2700      	movs	r7, #0
c0d02ae2:	e004      	b.n	c0d02aee <tx_traverse_find+0xf6>
c0d02ae4:	1c40      	adds	r0, r0, #1
c0d02ae6:	5358      	strh	r0, [r3, r5]
c0d02ae8:	f002 f8de 	bl	c0d04ca8 <check_app_canary>
c0d02aec:	2713      	movs	r7, #19
c0d02aee:	b2f8      	uxtb	r0, r7
c0d02af0:	b011      	add	sp, #68	; 0x44
c0d02af2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d02af4:	4635      	mov	r5, r6
c0d02af6:	3508      	adds	r5, #8
c0d02af8:	aa10      	add	r2, sp, #64	; 0x40
c0d02afa:	4628      	mov	r0, r5
c0d02afc:	4639      	mov	r1, r7
c0d02afe:	f7fe f8e9 	bl	c0d00cd4 <object_get_element_count>
c0d02b02:	4607      	mov	r7, r0
c0d02b04:	f002 f8d0 	bl	c0d04ca8 <check_app_canary>
c0d02b08:	2f00      	cmp	r7, #0
c0d02b0a:	d1f0      	bne.n	c0d02aee <tx_traverse_find+0xf6>
c0d02b0c:	2713      	movs	r7, #19
c0d02b0e:	2c01      	cmp	r4, #1
c0d02b10:	d02c      	beq.n	c0d02b6c <tx_traverse_find+0x174>
c0d02b12:	2c02      	cmp	r4, #2
c0d02b14:	d1eb      	bne.n	c0d02aee <tx_traverse_find+0xf6>
c0d02b16:	9702      	str	r7, [sp, #8]
c0d02b18:	2400      	movs	r4, #0
c0d02b1a:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d02b1c:	9509      	str	r5, [sp, #36]	; 0x24
c0d02b1e:	a810      	add	r0, sp, #64	; 0x40
c0d02b20:	8800      	ldrh	r0, [r0, #0]
c0d02b22:	b2a2      	uxth	r2, r4
c0d02b24:	4282      	cmp	r2, r0
c0d02b26:	d300      	bcc.n	c0d02b2a <tx_traverse_find+0x132>
c0d02b28:	e0cb      	b.n	c0d02cc2 <tx_traverse_find+0x2ca>
c0d02b2a:	ab0d      	add	r3, sp, #52	; 0x34
c0d02b2c:	4628      	mov	r0, r5
c0d02b2e:	f7fe f8a4 	bl	c0d00c7a <array_get_nth_element>
c0d02b32:	4607      	mov	r7, r0
c0d02b34:	f002 f8b8 	bl	c0d04ca8 <check_app_canary>
c0d02b38:	2f00      	cmp	r7, #0
c0d02b3a:	d1d8      	bne.n	c0d02aee <tx_traverse_find+0xf6>
c0d02b3c:	f002 f8b4 	bl	c0d04ca8 <check_app_canary>
c0d02b40:	4d63      	ldr	r5, [pc, #396]	; (c0d02cd0 <tx_traverse_find+0x2d8>)
c0d02b42:	5d70      	ldrb	r0, [r6, r5]
c0d02b44:	1e40      	subs	r0, r0, #1
c0d02b46:	5570      	strb	r0, [r6, r5]
c0d02b48:	a80d      	add	r0, sp, #52	; 0x34
c0d02b4a:	8800      	ldrh	r0, [r0, #0]
c0d02b4c:	990a      	ldr	r1, [sp, #40]	; 0x28
c0d02b4e:	f7ff ff53 	bl	c0d029f8 <tx_traverse_find>
c0d02b52:	900b      	str	r0, [sp, #44]	; 0x2c
c0d02b54:	5d70      	ldrb	r0, [r6, r5]
c0d02b56:	1c40      	adds	r0, r0, #1
c0d02b58:	5570      	strb	r0, [r6, r5]
c0d02b5a:	f002 f8a5 	bl	c0d04ca8 <check_app_canary>
c0d02b5e:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d02b60:	2800      	cmp	r0, #0
c0d02b62:	d0c4      	beq.n	c0d02aee <tx_traverse_find+0xf6>
c0d02b64:	1c64      	adds	r4, r4, #1
c0d02b66:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d02b68:	9d09      	ldr	r5, [sp, #36]	; 0x24
c0d02b6a:	e7d8      	b.n	c0d02b1e <tx_traverse_find+0x126>
c0d02b6c:	9702      	str	r7, [sp, #8]
c0d02b6e:	20cd      	movs	r0, #205	; 0xcd
c0d02b70:	0080      	lsls	r0, r0, #2
c0d02b72:	9005      	str	r0, [sp, #20]
c0d02b74:	5830      	ldr	r0, [r6, r0]
c0d02b76:	f004 fc05 	bl	c0d07384 <strlen>
c0d02b7a:	9001      	str	r0, [sp, #4]
c0d02b7c:	2100      	movs	r1, #0
c0d02b7e:	43c8      	mvns	r0, r1
c0d02b80:	9004      	str	r0, [sp, #16]
c0d02b82:	460f      	mov	r7, r1
c0d02b84:	9509      	str	r5, [sp, #36]	; 0x24
c0d02b86:	a810      	add	r0, sp, #64	; 0x40
c0d02b88:	8800      	ldrh	r0, [r0, #0]
c0d02b8a:	b28c      	uxth	r4, r1
c0d02b8c:	4284      	cmp	r4, r0
c0d02b8e:	d300      	bcc.n	c0d02b92 <tx_traverse_find+0x19a>
c0d02b90:	e097      	b.n	c0d02cc2 <tx_traverse_find+0x2ca>
c0d02b92:	9707      	str	r7, [sp, #28]
c0d02b94:	9108      	str	r1, [sp, #32]
c0d02b96:	ab0f      	add	r3, sp, #60	; 0x3c
c0d02b98:	4628      	mov	r0, r5
c0d02b9a:	9d0c      	ldr	r5, [sp, #48]	; 0x30
c0d02b9c:	4629      	mov	r1, r5
c0d02b9e:	4622      	mov	r2, r4
c0d02ba0:	f7fe f8c1 	bl	c0d00d26 <object_get_nth_key>
c0d02ba4:	4607      	mov	r7, r0
c0d02ba6:	f002 f87f 	bl	c0d04ca8 <check_app_canary>
c0d02baa:	2000      	movs	r0, #0
c0d02bac:	2f00      	cmp	r7, #0
c0d02bae:	d001      	beq.n	c0d02bb4 <tx_traverse_find+0x1bc>
c0d02bb0:	9d09      	ldr	r5, [sp, #36]	; 0x24
c0d02bb2:	e00d      	b.n	c0d02bd0 <tx_traverse_find+0x1d8>
c0d02bb4:	ab0e      	add	r3, sp, #56	; 0x38
c0d02bb6:	9006      	str	r0, [sp, #24]
c0d02bb8:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d02bba:	4629      	mov	r1, r5
c0d02bbc:	4622      	mov	r2, r4
c0d02bbe:	f7fe f8e7 	bl	c0d00d90 <object_get_nth_value>
c0d02bc2:	4607      	mov	r7, r0
c0d02bc4:	f002 f870 	bl	c0d04ca8 <check_app_canary>
c0d02bc8:	9806      	ldr	r0, [sp, #24]
c0d02bca:	2f00      	cmp	r7, #0
c0d02bcc:	9d09      	ldr	r5, [sp, #36]	; 0x24
c0d02bce:	d004      	beq.n	c0d02bda <tx_traverse_find+0x1e2>
c0d02bd0:	9908      	ldr	r1, [sp, #32]
c0d02bd2:	1c49      	adds	r1, r1, #1
c0d02bd4:	2800      	cmp	r0, #0
c0d02bd6:	d1d6      	bne.n	c0d02b86 <tx_traverse_find+0x18e>
c0d02bd8:	e789      	b.n	c0d02aee <tx_traverse_find+0xf6>
c0d02bda:	9805      	ldr	r0, [sp, #20]
c0d02bdc:	5837      	ldr	r7, [r6, r0]
c0d02bde:	7838      	ldrb	r0, [r7, #0]
c0d02be0:	a90f      	add	r1, sp, #60	; 0x3c
c0d02be2:	8809      	ldrh	r1, [r1, #0]
c0d02be4:	2800      	cmp	r0, #0
c0d02be6:	d01d      	beq.n	c0d02c24 <tx_traverse_find+0x22c>
c0d02be8:	9804      	ldr	r0, [sp, #16]
c0d02bea:	1838      	adds	r0, r7, r0
c0d02bec:	9106      	str	r1, [sp, #24]
c0d02bee:	2167      	movs	r1, #103	; 0x67
c0d02bf0:	00c9      	lsls	r1, r1, #3
c0d02bf2:	4a35      	ldr	r2, [pc, #212]	; (c0d02cc8 <tx_traverse_find+0x2d0>)
c0d02bf4:	5a56      	ldrh	r6, [r2, r1]
c0d02bf6:	2500      	movs	r5, #0
c0d02bf8:	5585      	strb	r5, [r0, r6]
c0d02bfa:	4274      	negs	r4, r6
c0d02bfc:	4638      	mov	r0, r7
c0d02bfe:	f004 fbc1 	bl	c0d07384 <strlen>
c0d02c02:	43c1      	mvns	r1, r0
c0d02c04:	1b0c      	subs	r4, r1, r4
c0d02c06:	1e62      	subs	r2, r4, #1
c0d02c08:	4194      	sbcs	r4, r2
c0d02c0a:	42f1      	cmn	r1, r6
c0d02c0c:	9906      	ldr	r1, [sp, #24]
c0d02c0e:	4e2e      	ldr	r6, [pc, #184]	; (c0d02cc8 <tx_traverse_find+0x2d0>)
c0d02c10:	d008      	beq.n	c0d02c24 <tx_traverse_find+0x22c>
c0d02c12:	183f      	adds	r7, r7, r0
c0d02c14:	4931      	ldr	r1, [pc, #196]	; (c0d02cdc <tx_traverse_find+0x2e4>)
c0d02c16:	4479      	add	r1, pc
c0d02c18:	4638      	mov	r0, r7
c0d02c1a:	4622      	mov	r2, r4
c0d02c1c:	f004 fa20 	bl	c0d07060 <__aeabi_memcpy>
c0d02c20:	9906      	ldr	r1, [sp, #24]
c0d02c22:	553d      	strb	r5, [r7, r4]
c0d02c24:	00c8      	lsls	r0, r1, #3
c0d02c26:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d02c28:	1808      	adds	r0, r1, r0
c0d02c2a:	2110      	movs	r1, #16
c0d02c2c:	5e41      	ldrsh	r1, [r0, r1]
c0d02c2e:	220e      	movs	r2, #14
c0d02c30:	5e85      	ldrsh	r5, [r0, r2]
c0d02c32:	2067      	movs	r0, #103	; 0x67
c0d02c34:	00c0      	lsls	r0, r0, #3
c0d02c36:	5a37      	ldrh	r7, [r6, r0]
c0d02c38:	9805      	ldr	r0, [sp, #20]
c0d02c3a:	5834      	ldr	r4, [r6, r0]
c0d02c3c:	9804      	ldr	r0, [sp, #16]
c0d02c3e:	1820      	adds	r0, r4, r0
c0d02c40:	6872      	ldr	r2, [r6, #4]
c0d02c42:	9203      	str	r2, [sp, #12]
c0d02c44:	2200      	movs	r2, #0
c0d02c46:	9206      	str	r2, [sp, #24]
c0d02c48:	55c2      	strb	r2, [r0, r7]
c0d02c4a:	1b4e      	subs	r6, r1, r5
c0d02c4c:	4620      	mov	r0, r4
c0d02c4e:	f004 fb99 	bl	c0d07384 <strlen>
c0d02c52:	43c1      	mvns	r1, r0
c0d02c54:	19cf      	adds	r7, r1, r7
c0d02c56:	42b7      	cmp	r7, r6
c0d02c58:	d300      	bcc.n	c0d02c5c <tx_traverse_find+0x264>
c0d02c5a:	4637      	mov	r7, r6
c0d02c5c:	2f00      	cmp	r7, #0
c0d02c5e:	d008      	beq.n	c0d02c72 <tx_traverse_find+0x27a>
c0d02c60:	1824      	adds	r4, r4, r0
c0d02c62:	9803      	ldr	r0, [sp, #12]
c0d02c64:	1941      	adds	r1, r0, r5
c0d02c66:	4620      	mov	r0, r4
c0d02c68:	463a      	mov	r2, r7
c0d02c6a:	f004 f9fd 	bl	c0d07068 <__aeabi_memmove>
c0d02c6e:	9806      	ldr	r0, [sp, #24]
c0d02c70:	55e0      	strb	r0, [r4, r7]
c0d02c72:	f002 f819 	bl	c0d04ca8 <check_app_canary>
c0d02c76:	4e14      	ldr	r6, [pc, #80]	; (c0d02cc8 <tx_traverse_find+0x2d0>)
c0d02c78:	4f14      	ldr	r7, [pc, #80]	; (c0d02ccc <tx_traverse_find+0x2d4>)
c0d02c7a:	5df0      	ldrb	r0, [r6, r7]
c0d02c7c:	1e40      	subs	r0, r0, #1
c0d02c7e:	55f0      	strb	r0, [r6, r7]
c0d02c80:	4d13      	ldr	r5, [pc, #76]	; (c0d02cd0 <tx_traverse_find+0x2d8>)
c0d02c82:	5d70      	ldrb	r0, [r6, r5]
c0d02c84:	1e40      	subs	r0, r0, #1
c0d02c86:	5570      	strb	r0, [r6, r5]
c0d02c88:	a80e      	add	r0, sp, #56	; 0x38
c0d02c8a:	8800      	ldrh	r0, [r0, #0]
c0d02c8c:	990a      	ldr	r1, [sp, #40]	; 0x28
c0d02c8e:	f7ff feb3 	bl	c0d029f8 <tx_traverse_find>
c0d02c92:	4604      	mov	r4, r0
c0d02c94:	f002 f808 	bl	c0d04ca8 <check_app_canary>
c0d02c98:	5df0      	ldrb	r0, [r6, r7]
c0d02c9a:	1c40      	adds	r0, r0, #1
c0d02c9c:	55f0      	strb	r0, [r6, r7]
c0d02c9e:	5d70      	ldrb	r0, [r6, r5]
c0d02ca0:	1c40      	adds	r0, r0, #1
c0d02ca2:	5570      	strb	r0, [r6, r5]
c0d02ca4:	2c00      	cmp	r4, #0
c0d02ca6:	d009      	beq.n	c0d02cbc <tx_traverse_find+0x2c4>
c0d02ca8:	9805      	ldr	r0, [sp, #20]
c0d02caa:	5830      	ldr	r0, [r6, r0]
c0d02cac:	2100      	movs	r1, #0
c0d02cae:	9a01      	ldr	r2, [sp, #4]
c0d02cb0:	5481      	strb	r1, [r0, r2]
c0d02cb2:	f001 fff9 	bl	c0d04ca8 <check_app_canary>
c0d02cb6:	2001      	movs	r0, #1
c0d02cb8:	9f07      	ldr	r7, [sp, #28]
c0d02cba:	e779      	b.n	c0d02bb0 <tx_traverse_find+0x1b8>
c0d02cbc:	9806      	ldr	r0, [sp, #24]
c0d02cbe:	4607      	mov	r7, r0
c0d02cc0:	e776      	b.n	c0d02bb0 <tx_traverse_find+0x1b8>
c0d02cc2:	9f02      	ldr	r7, [sp, #8]
c0d02cc4:	e713      	b.n	c0d02aee <tx_traverse_find+0xf6>
c0d02cc6:	46c0      	nop			; (mov r8, r8)
c0d02cc8:	200005c4 	.word	0x200005c4
c0d02ccc:	0000032e 	.word	0x0000032e
c0d02cd0:	0000032f 	.word	0x0000032f
c0d02cd4:	000054a8 	.word	0x000054a8
c0d02cd8:	00005462 	.word	0x00005462
c0d02cdc:	00004e97 	.word	0x00004e97

c0d02ce0 <is_space>:
c0d02ce0:	b510      	push	{r4, lr}
c0d02ce2:	2300      	movs	r3, #0
c0d02ce4:	4907      	ldr	r1, [pc, #28]	; (c0d02d04 <is_space+0x24>)
c0d02ce6:	4479      	add	r1, pc
c0d02ce8:	461a      	mov	r2, r3
c0d02cea:	2b06      	cmp	r3, #6
c0d02cec:	d003      	beq.n	c0d02cf6 <is_space+0x16>
c0d02cee:	5c8c      	ldrb	r4, [r1, r2]
c0d02cf0:	1c53      	adds	r3, r2, #1
c0d02cf2:	4284      	cmp	r4, r0
c0d02cf4:	d1f8      	bne.n	c0d02ce8 <is_space+0x8>
c0d02cf6:	2a06      	cmp	r2, #6
c0d02cf8:	d301      	bcc.n	c0d02cfe <is_space+0x1e>
c0d02cfa:	2000      	movs	r0, #0
c0d02cfc:	bd10      	pop	{r4, pc}
c0d02cfe:	2001      	movs	r0, #1
c0d02d00:	bd10      	pop	{r4, pc}
c0d02d02:	46c0      	nop			; (mov r8, r8)
c0d02d04:	00006a62 	.word	0x00006a62

c0d02d08 <contains_whitespace>:
c0d02d08:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02d0a:	b085      	sub	sp, #20
c0d02d0c:	4601      	mov	r1, r0
c0d02d0e:	200c      	movs	r0, #12
c0d02d10:	9003      	str	r0, [sp, #12]
c0d02d12:	5e08      	ldrsh	r0, [r1, r0]
c0d02d14:	9000      	str	r0, [sp, #0]
c0d02d16:	2061      	movs	r0, #97	; 0x61
c0d02d18:	00c0      	lsls	r0, r0, #3
c0d02d1a:	180e      	adds	r6, r1, r0
c0d02d1c:	684a      	ldr	r2, [r1, #4]
c0d02d1e:	2301      	movs	r3, #1
c0d02d20:	2700      	movs	r7, #0
c0d02d22:	9102      	str	r1, [sp, #8]
c0d02d24:	9201      	str	r2, [sp, #4]
c0d02d26:	4293      	cmp	r3, r2
c0d02d28:	d220      	bcs.n	c0d02d6c <contains_whitespace+0x64>
c0d02d2a:	00d8      	lsls	r0, r3, #3
c0d02d2c:	180c      	adds	r4, r1, r0
c0d02d2e:	7a20      	ldrb	r0, [r4, #8]
c0d02d30:	2800      	cmp	r0, #0
c0d02d32:	d02c      	beq.n	c0d02d8e <contains_whitespace+0x86>
c0d02d34:	9304      	str	r3, [sp, #16]
c0d02d36:	200a      	movs	r0, #10
c0d02d38:	5e25      	ldrsh	r5, [r4, r0]
c0d02d3a:	42af      	cmp	r7, r5
c0d02d3c:	da07      	bge.n	c0d02d4e <contains_whitespace+0x46>
c0d02d3e:	6830      	ldr	r0, [r6, #0]
c0d02d40:	5dc0      	ldrb	r0, [r0, r7]
c0d02d42:	f7ff ffcd 	bl	c0d02ce0 <is_space>
c0d02d46:	1c7f      	adds	r7, r7, #1
c0d02d48:	2801      	cmp	r0, #1
c0d02d4a:	d1f6      	bne.n	c0d02d3a <contains_whitespace+0x32>
c0d02d4c:	e00b      	b.n	c0d02d66 <contains_whitespace+0x5e>
c0d02d4e:	9803      	ldr	r0, [sp, #12]
c0d02d50:	5e20      	ldrsh	r0, [r4, r0]
c0d02d52:	2100      	movs	r1, #0
c0d02d54:	43c9      	mvns	r1, r1
c0d02d56:	4288      	cmp	r0, r1
c0d02d58:	db1b      	blt.n	c0d02d92 <contains_whitespace+0x8a>
c0d02d5a:	9b04      	ldr	r3, [sp, #16]
c0d02d5c:	1c5b      	adds	r3, r3, #1
c0d02d5e:	1c47      	adds	r7, r0, #1
c0d02d60:	9902      	ldr	r1, [sp, #8]
c0d02d62:	9a01      	ldr	r2, [sp, #4]
c0d02d64:	e7df      	b.n	c0d02d26 <contains_whitespace+0x1e>
c0d02d66:	2018      	movs	r0, #24
c0d02d68:	b005      	add	sp, #20
c0d02d6a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d02d6c:	2000      	movs	r0, #0
c0d02d6e:	9900      	ldr	r1, [sp, #0]
c0d02d70:	428f      	cmp	r7, r1
c0d02d72:	daf9      	bge.n	c0d02d68 <contains_whitespace+0x60>
c0d02d74:	6831      	ldr	r1, [r6, #0]
c0d02d76:	5dc9      	ldrb	r1, [r1, r7]
c0d02d78:	2900      	cmp	r1, #0
c0d02d7a:	d0f5      	beq.n	c0d02d68 <contains_whitespace+0x60>
c0d02d7c:	4608      	mov	r0, r1
c0d02d7e:	f7ff ffaf 	bl	c0d02ce0 <is_space>
c0d02d82:	4601      	mov	r1, r0
c0d02d84:	1c7f      	adds	r7, r7, #1
c0d02d86:	2018      	movs	r0, #24
c0d02d88:	2900      	cmp	r1, #0
c0d02d8a:	d0ef      	beq.n	c0d02d6c <contains_whitespace+0x64>
c0d02d8c:	e7ec      	b.n	c0d02d68 <contains_whitespace+0x60>
c0d02d8e:	2000      	movs	r0, #0
c0d02d90:	e7ea      	b.n	c0d02d68 <contains_whitespace+0x60>
c0d02d92:	2020      	movs	r0, #32
c0d02d94:	e7e8      	b.n	c0d02d68 <contains_whitespace+0x60>

c0d02d96 <is_sorted>:
c0d02d96:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02d98:	b0ff      	sub	sp, #508	; 0x1fc
c0d02d9a:	b086      	sub	sp, #24
c0d02d9c:	4614      	mov	r4, r2
c0d02d9e:	9104      	str	r1, [sp, #16]
c0d02da0:	4606      	mov	r6, r0
c0d02da2:	2001      	movs	r0, #1
c0d02da4:	9003      	str	r0, [sp, #12]
c0d02da6:	0207      	lsls	r7, r0, #8
c0d02da8:	a845      	add	r0, sp, #276	; 0x114
c0d02daa:	4639      	mov	r1, r7
c0d02dac:	f004 f968 	bl	c0d07080 <explicit_bzero>
c0d02db0:	a805      	add	r0, sp, #20
c0d02db2:	4639      	mov	r1, r7
c0d02db4:	f004 f964 	bl	c0d07080 <explicit_bzero>
c0d02db8:	00f0      	lsls	r0, r6, #3
c0d02dba:	4622      	mov	r2, r4
c0d02dbc:	1821      	adds	r1, r4, r0
c0d02dbe:	250a      	movs	r5, #10
c0d02dc0:	5f48      	ldrsh	r0, [r1, r5]
c0d02dc2:	240c      	movs	r4, #12
c0d02dc4:	5f09      	ldrsh	r1, [r1, r4]
c0d02dc6:	1a0e      	subs	r6, r1, r0
c0d02dc8:	2eff      	cmp	r6, #255	; 0xff
c0d02dca:	d901      	bls.n	c0d02dd0 <is_sorted+0x3a>
c0d02dcc:	2000      	movs	r0, #0
c0d02dce:	e026      	b.n	c0d02e1e <is_sorted+0x88>
c0d02dd0:	2161      	movs	r1, #97	; 0x61
c0d02dd2:	00c9      	lsls	r1, r1, #3
c0d02dd4:	9202      	str	r2, [sp, #8]
c0d02dd6:	5851      	ldr	r1, [r2, r1]
c0d02dd8:	9101      	str	r1, [sp, #4]
c0d02dda:	1809      	adds	r1, r1, r0
c0d02ddc:	af45      	add	r7, sp, #276	; 0x114
c0d02dde:	4638      	mov	r0, r7
c0d02de0:	4632      	mov	r2, r6
c0d02de2:	f004 fb37 	bl	c0d07454 <strncpy>
c0d02de6:	2000      	movs	r0, #0
c0d02de8:	55b8      	strb	r0, [r7, r6]
c0d02dea:	9904      	ldr	r1, [sp, #16]
c0d02dec:	00c9      	lsls	r1, r1, #3
c0d02dee:	9a02      	ldr	r2, [sp, #8]
c0d02df0:	1852      	adds	r2, r2, r1
c0d02df2:	5f51      	ldrsh	r1, [r2, r5]
c0d02df4:	5f12      	ldrsh	r2, [r2, r4]
c0d02df6:	1a54      	subs	r4, r2, r1
c0d02df8:	2cff      	cmp	r4, #255	; 0xff
c0d02dfa:	d810      	bhi.n	c0d02e1e <is_sorted+0x88>
c0d02dfc:	9801      	ldr	r0, [sp, #4]
c0d02dfe:	1841      	adds	r1, r0, r1
c0d02e00:	ad05      	add	r5, sp, #20
c0d02e02:	4628      	mov	r0, r5
c0d02e04:	4622      	mov	r2, r4
c0d02e06:	f004 fb25 	bl	c0d07454 <strncpy>
c0d02e0a:	2600      	movs	r6, #0
c0d02e0c:	552e      	strb	r6, [r5, r4]
c0d02e0e:	a845      	add	r0, sp, #276	; 0x114
c0d02e10:	4629      	mov	r1, r5
c0d02e12:	f004 fa73 	bl	c0d072fc <strcmp>
c0d02e16:	2801      	cmp	r0, #1
c0d02e18:	9803      	ldr	r0, [sp, #12]
c0d02e1a:	db00      	blt.n	c0d02e1e <is_sorted+0x88>
c0d02e1c:	4630      	mov	r0, r6
c0d02e1e:	b07f      	add	sp, #508	; 0x1fc
c0d02e20:	b006      	add	sp, #24
c0d02e22:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d02e24 <dictionaries_sorted>:
c0d02e24:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0d02e26:	4604      	mov	r4, r0
c0d02e28:	2600      	movs	r6, #0
c0d02e2a:	6860      	ldr	r0, [r4, #4]
c0d02e2c:	4286      	cmp	r6, r0
c0d02e2e:	d237      	bcs.n	c0d02ea0 <dictionaries_sorted+0x7c>
c0d02e30:	00f0      	lsls	r0, r6, #3
c0d02e32:	1820      	adds	r0, r4, r0
c0d02e34:	7a00      	ldrb	r0, [r0, #8]
c0d02e36:	2801      	cmp	r0, #1
c0d02e38:	d12e      	bne.n	c0d02e98 <dictionaries_sorted+0x74>
c0d02e3a:	b2b5      	uxth	r5, r6
c0d02e3c:	aa02      	add	r2, sp, #8
c0d02e3e:	4620      	mov	r0, r4
c0d02e40:	4629      	mov	r1, r5
c0d02e42:	f7fd ff47 	bl	c0d00cd4 <object_get_element_count>
c0d02e46:	2800      	cmp	r0, #0
c0d02e48:	d128      	bne.n	c0d02e9c <dictionaries_sorted+0x78>
c0d02e4a:	a802      	add	r0, sp, #8
c0d02e4c:	8800      	ldrh	r0, [r0, #0]
c0d02e4e:	2802      	cmp	r0, #2
c0d02e50:	d322      	bcc.n	c0d02e98 <dictionaries_sorted+0x74>
c0d02e52:	2200      	movs	r2, #0
c0d02e54:	ab01      	add	r3, sp, #4
c0d02e56:	4620      	mov	r0, r4
c0d02e58:	4629      	mov	r1, r5
c0d02e5a:	f7fd ff64 	bl	c0d00d26 <object_get_nth_key>
c0d02e5e:	2800      	cmp	r0, #0
c0d02e60:	d11c      	bne.n	c0d02e9c <dictionaries_sorted+0x78>
c0d02e62:	2701      	movs	r7, #1
c0d02e64:	a802      	add	r0, sp, #8
c0d02e66:	8800      	ldrh	r0, [r0, #0]
c0d02e68:	4287      	cmp	r7, r0
c0d02e6a:	d215      	bcs.n	c0d02e98 <dictionaries_sorted+0x74>
c0d02e6c:	b2ba      	uxth	r2, r7
c0d02e6e:	466b      	mov	r3, sp
c0d02e70:	4620      	mov	r0, r4
c0d02e72:	4629      	mov	r1, r5
c0d02e74:	f7fd ff57 	bl	c0d00d26 <object_get_nth_key>
c0d02e78:	2800      	cmp	r0, #0
c0d02e7a:	d10f      	bne.n	c0d02e9c <dictionaries_sorted+0x78>
c0d02e7c:	4668      	mov	r0, sp
c0d02e7e:	8801      	ldrh	r1, [r0, #0]
c0d02e80:	a801      	add	r0, sp, #4
c0d02e82:	8800      	ldrh	r0, [r0, #0]
c0d02e84:	4622      	mov	r2, r4
c0d02e86:	f7ff ff86 	bl	c0d02d96 <is_sorted>
c0d02e8a:	2800      	cmp	r0, #0
c0d02e8c:	d006      	beq.n	c0d02e9c <dictionaries_sorted+0x78>
c0d02e8e:	a801      	add	r0, sp, #4
c0d02e90:	9900      	ldr	r1, [sp, #0]
c0d02e92:	8001      	strh	r1, [r0, #0]
c0d02e94:	1c7f      	adds	r7, r7, #1
c0d02e96:	e7e5      	b.n	c0d02e64 <dictionaries_sorted+0x40>
c0d02e98:	1c76      	adds	r6, r6, #1
c0d02e9a:	e7c6      	b.n	c0d02e2a <dictionaries_sorted+0x6>
c0d02e9c:	2000      	movs	r0, #0
c0d02e9e:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0d02ea0:	2001      	movs	r0, #1
c0d02ea2:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0d02ea4 <tx_validate>:
c0d02ea4:	b51c      	push	{r2, r3, r4, lr}
c0d02ea6:	4604      	mov	r4, r0
c0d02ea8:	f7ff ff2e 	bl	c0d02d08 <contains_whitespace>
c0d02eac:	2800      	cmp	r0, #0
c0d02eae:	d000      	beq.n	c0d02eb2 <tx_validate+0xe>
c0d02eb0:	bd1c      	pop	{r2, r3, r4, pc}
c0d02eb2:	4620      	mov	r0, r4
c0d02eb4:	f7ff ffb6 	bl	c0d02e24 <dictionaries_sorted>
c0d02eb8:	2801      	cmp	r0, #1
c0d02eba:	d10a      	bne.n	c0d02ed2 <tx_validate+0x2e>
c0d02ebc:	2100      	movs	r1, #0
c0d02ebe:	4a21      	ldr	r2, [pc, #132]	; (c0d02f44 <tx_validate+0xa0>)
c0d02ec0:	447a      	add	r2, pc
c0d02ec2:	ab01      	add	r3, sp, #4
c0d02ec4:	4620      	mov	r0, r4
c0d02ec6:	f7fd ff78 	bl	c0d00dba <object_get_value>
c0d02eca:	2800      	cmp	r0, #0
c0d02ecc:	d003      	beq.n	c0d02ed6 <tx_validate+0x32>
c0d02ece:	201a      	movs	r0, #26
c0d02ed0:	bd1c      	pop	{r2, r3, r4, pc}
c0d02ed2:	2019      	movs	r0, #25
c0d02ed4:	bd1c      	pop	{r2, r3, r4, pc}
c0d02ed6:	2100      	movs	r1, #0
c0d02ed8:	4a1b      	ldr	r2, [pc, #108]	; (c0d02f48 <tx_validate+0xa4>)
c0d02eda:	447a      	add	r2, pc
c0d02edc:	ab01      	add	r3, sp, #4
c0d02ede:	4620      	mov	r0, r4
c0d02ee0:	f7fd ff6b 	bl	c0d00dba <object_get_value>
c0d02ee4:	2800      	cmp	r0, #0
c0d02ee6:	d001      	beq.n	c0d02eec <tx_validate+0x48>
c0d02ee8:	201b      	movs	r0, #27
c0d02eea:	bd1c      	pop	{r2, r3, r4, pc}
c0d02eec:	2100      	movs	r1, #0
c0d02eee:	4a17      	ldr	r2, [pc, #92]	; (c0d02f4c <tx_validate+0xa8>)
c0d02ef0:	447a      	add	r2, pc
c0d02ef2:	ab01      	add	r3, sp, #4
c0d02ef4:	4620      	mov	r0, r4
c0d02ef6:	f7fd ff60 	bl	c0d00dba <object_get_value>
c0d02efa:	2800      	cmp	r0, #0
c0d02efc:	d001      	beq.n	c0d02f02 <tx_validate+0x5e>
c0d02efe:	201c      	movs	r0, #28
c0d02f00:	bd1c      	pop	{r2, r3, r4, pc}
c0d02f02:	2100      	movs	r1, #0
c0d02f04:	4a12      	ldr	r2, [pc, #72]	; (c0d02f50 <tx_validate+0xac>)
c0d02f06:	447a      	add	r2, pc
c0d02f08:	ab01      	add	r3, sp, #4
c0d02f0a:	4620      	mov	r0, r4
c0d02f0c:	f7fd ff55 	bl	c0d00dba <object_get_value>
c0d02f10:	2800      	cmp	r0, #0
c0d02f12:	d001      	beq.n	c0d02f18 <tx_validate+0x74>
c0d02f14:	201d      	movs	r0, #29
c0d02f16:	bd1c      	pop	{r2, r3, r4, pc}
c0d02f18:	2100      	movs	r1, #0
c0d02f1a:	4a0e      	ldr	r2, [pc, #56]	; (c0d02f54 <tx_validate+0xb0>)
c0d02f1c:	447a      	add	r2, pc
c0d02f1e:	ab01      	add	r3, sp, #4
c0d02f20:	4620      	mov	r0, r4
c0d02f22:	f7fd ff4a 	bl	c0d00dba <object_get_value>
c0d02f26:	2800      	cmp	r0, #0
c0d02f28:	d001      	beq.n	c0d02f2e <tx_validate+0x8a>
c0d02f2a:	201e      	movs	r0, #30
c0d02f2c:	bd1c      	pop	{r2, r3, r4, pc}
c0d02f2e:	2100      	movs	r1, #0
c0d02f30:	4a09      	ldr	r2, [pc, #36]	; (c0d02f58 <tx_validate+0xb4>)
c0d02f32:	447a      	add	r2, pc
c0d02f34:	ab01      	add	r3, sp, #4
c0d02f36:	4620      	mov	r0, r4
c0d02f38:	f7fd ff3f 	bl	c0d00dba <object_get_value>
c0d02f3c:	2800      	cmp	r0, #0
c0d02f3e:	d0b7      	beq.n	c0d02eb0 <tx_validate+0xc>
c0d02f40:	201f      	movs	r0, #31
c0d02f42:	bd1c      	pop	{r2, r3, r4, pc}
c0d02f44:	00004ed4 	.word	0x00004ed4
c0d02f48:	00004ed0 	.word	0x00004ed0
c0d02f4c:	00004ed0 	.word	0x00004ed0
c0d02f50:	00004ecb 	.word	0x00004ecb
c0d02f54:	00004fbf 	.word	0x00004fbf
c0d02f58:	00004ecd 	.word	0x00004ecd

c0d02f5c <jsmn_parse>:
c0d02f5c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02f5e:	b089      	sub	sp, #36	; 0x24
c0d02f60:	461d      	mov	r5, r3
c0d02f62:	9208      	str	r2, [sp, #32]
c0d02f64:	9106      	str	r1, [sp, #24]
c0d02f66:	4606      	mov	r6, r0
c0d02f68:	8807      	ldrh	r7, [r0, #0]
c0d02f6a:	8840      	ldrh	r0, [r0, #2]
c0d02f6c:	9003      	str	r0, [sp, #12]
c0d02f6e:	2000      	movs	r0, #0
c0d02f70:	9000      	str	r0, [sp, #0]
c0d02f72:	43c4      	mvns	r4, r0
c0d02f74:	2001      	movs	r0, #1
c0d02f76:	9004      	str	r0, [sp, #16]
c0d02f78:	43c0      	mvns	r0, r0
c0d02f7a:	9001      	str	r0, [sp, #4]
c0d02f7c:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d02f7e:	9002      	str	r0, [sp, #8]
c0d02f80:	9605      	str	r6, [sp, #20]
c0d02f82:	9307      	str	r3, [sp, #28]
c0d02f84:	b2b8      	uxth	r0, r7
c0d02f86:	9908      	ldr	r1, [sp, #32]
c0d02f88:	4288      	cmp	r0, r1
c0d02f8a:	d300      	bcc.n	c0d02f8e <jsmn_parse+0x32>
c0d02f8c:	e174      	b.n	c0d03278 <jsmn_parse+0x31c>
c0d02f8e:	9906      	ldr	r1, [sp, #24]
c0d02f90:	5c0e      	ldrb	r6, [r1, r0]
c0d02f92:	4630      	mov	r0, r6
c0d02f94:	3809      	subs	r0, #9
c0d02f96:	2819      	cmp	r0, #25
c0d02f98:	d93b      	bls.n	c0d03012 <jsmn_parse+0xb6>
c0d02f9a:	2e2c      	cmp	r6, #44	; 0x2c
c0d02f9c:	d100      	bne.n	c0d02fa0 <jsmn_parse+0x44>
c0d02f9e:	e0d8      	b.n	c0d03152 <jsmn_parse+0x1f6>
c0d02fa0:	2e3a      	cmp	r6, #58	; 0x3a
c0d02fa2:	d100      	bne.n	c0d02fa6 <jsmn_parse+0x4a>
c0d02fa4:	e0f9      	b.n	c0d0319a <jsmn_parse+0x23e>
c0d02fa6:	2e5b      	cmp	r6, #91	; 0x5b
c0d02fa8:	d03a      	beq.n	c0d03020 <jsmn_parse+0xc4>
c0d02faa:	2e5d      	cmp	r6, #93	; 0x5d
c0d02fac:	d057      	beq.n	c0d0305e <jsmn_parse+0x102>
c0d02fae:	2e7b      	cmp	r6, #123	; 0x7b
c0d02fb0:	d036      	beq.n	c0d03020 <jsmn_parse+0xc4>
c0d02fb2:	2e7d      	cmp	r6, #125	; 0x7d
c0d02fb4:	d053      	beq.n	c0d0305e <jsmn_parse+0x102>
c0d02fb6:	2e00      	cmp	r6, #0
c0d02fb8:	4639      	mov	r1, r7
c0d02fba:	9e05      	ldr	r6, [sp, #20]
c0d02fbc:	9d07      	ldr	r5, [sp, #28]
c0d02fbe:	d100      	bne.n	c0d02fc2 <jsmn_parse+0x66>
c0d02fc0:	e15a      	b.n	c0d03278 <jsmn_parse+0x31c>
c0d02fc2:	b288      	uxth	r0, r1
c0d02fc4:	9a08      	ldr	r2, [sp, #32]
c0d02fc6:	4290      	cmp	r0, r2
c0d02fc8:	d300      	bcc.n	c0d02fcc <jsmn_parse+0x70>
c0d02fca:	e0e8      	b.n	c0d0319e <jsmn_parse+0x242>
c0d02fcc:	9a06      	ldr	r2, [sp, #24]
c0d02fce:	5c10      	ldrb	r0, [r2, r0]
c0d02fd0:	280d      	cmp	r0, #13
c0d02fd2:	d805      	bhi.n	c0d02fe0 <jsmn_parse+0x84>
c0d02fd4:	9a04      	ldr	r2, [sp, #16]
c0d02fd6:	4082      	lsls	r2, r0
c0d02fd8:	4bbc      	ldr	r3, [pc, #752]	; (c0d032cc <jsmn_parse+0x370>)
c0d02fda:	421a      	tst	r2, r3
c0d02fdc:	d000      	beq.n	c0d02fe0 <jsmn_parse+0x84>
c0d02fde:	e0de      	b.n	c0d0319e <jsmn_parse+0x242>
c0d02fe0:	4602      	mov	r2, r0
c0d02fe2:	3a20      	subs	r2, #32
c0d02fe4:	2a1a      	cmp	r2, #26
c0d02fe6:	d805      	bhi.n	c0d02ff4 <jsmn_parse+0x98>
c0d02fe8:	9b04      	ldr	r3, [sp, #16]
c0d02fea:	4093      	lsls	r3, r2
c0d02fec:	4ab8      	ldr	r2, [pc, #736]	; (c0d032d0 <jsmn_parse+0x374>)
c0d02fee:	4213      	tst	r3, r2
c0d02ff0:	d000      	beq.n	c0d02ff4 <jsmn_parse+0x98>
c0d02ff2:	e0d4      	b.n	c0d0319e <jsmn_parse+0x242>
c0d02ff4:	285d      	cmp	r0, #93	; 0x5d
c0d02ff6:	d100      	bne.n	c0d02ffa <jsmn_parse+0x9e>
c0d02ff8:	e0d1      	b.n	c0d0319e <jsmn_parse+0x242>
c0d02ffa:	287d      	cmp	r0, #125	; 0x7d
c0d02ffc:	d100      	bne.n	c0d03000 <jsmn_parse+0xa4>
c0d02ffe:	e0ce      	b.n	c0d0319e <jsmn_parse+0x242>
c0d03000:	2820      	cmp	r0, #32
c0d03002:	d200      	bcs.n	c0d03006 <jsmn_parse+0xaa>
c0d03004:	e14d      	b.n	c0d032a2 <jsmn_parse+0x346>
c0d03006:	287e      	cmp	r0, #126	; 0x7e
c0d03008:	d900      	bls.n	c0d0300c <jsmn_parse+0xb0>
c0d0300a:	e14a      	b.n	c0d032a2 <jsmn_parse+0x346>
c0d0300c:	1c49      	adds	r1, r1, #1
c0d0300e:	8031      	strh	r1, [r6, #0]
c0d03010:	e7d7      	b.n	c0d02fc2 <jsmn_parse+0x66>
c0d03012:	9904      	ldr	r1, [sp, #16]
c0d03014:	4081      	lsls	r1, r0
c0d03016:	4aab      	ldr	r2, [pc, #684]	; (c0d032c4 <jsmn_parse+0x368>)
c0d03018:	4211      	tst	r1, r2
c0d0301a:	d046      	beq.n	c0d030aa <jsmn_parse+0x14e>
c0d0301c:	9e05      	ldr	r6, [sp, #20]
c0d0301e:	e0fd      	b.n	c0d0321c <jsmn_parse+0x2c0>
c0d03020:	9803      	ldr	r0, [sp, #12]
c0d03022:	1c40      	adds	r0, r0, #1
c0d03024:	9003      	str	r0, [sp, #12]
c0d03026:	9907      	ldr	r1, [sp, #28]
c0d03028:	2900      	cmp	r1, #0
c0d0302a:	d100      	bne.n	c0d0302e <jsmn_parse+0xd2>
c0d0302c:	e0eb      	b.n	c0d03206 <jsmn_parse+0x2aa>
c0d0302e:	9f05      	ldr	r7, [sp, #20]
c0d03030:	4638      	mov	r0, r7
c0d03032:	9a02      	ldr	r2, [sp, #8]
c0d03034:	f000 f94e 	bl	c0d032d4 <jsmn_alloc_token>
c0d03038:	2800      	cmp	r0, #0
c0d0303a:	d100      	bne.n	c0d0303e <jsmn_parse+0xe2>
c0d0303c:	e13e      	b.n	c0d032bc <jsmn_parse+0x360>
c0d0303e:	88b9      	ldrh	r1, [r7, #4]
c0d03040:	b2a2      	uxth	r2, r4
c0d03042:	4291      	cmp	r1, r2
c0d03044:	d006      	beq.n	c0d03054 <jsmn_parse+0xf8>
c0d03046:	b209      	sxth	r1, r1
c0d03048:	00c9      	lsls	r1, r1, #3
c0d0304a:	9a07      	ldr	r2, [sp, #28]
c0d0304c:	1851      	adds	r1, r2, r1
c0d0304e:	88ca      	ldrh	r2, [r1, #6]
c0d03050:	1c52      	adds	r2, r2, #1
c0d03052:	80ca      	strh	r2, [r1, #6]
c0d03054:	2e7b      	cmp	r6, #123	; 0x7b
c0d03056:	d100      	bne.n	c0d0305a <jsmn_parse+0xfe>
c0d03058:	e0d8      	b.n	c0d0320c <jsmn_parse+0x2b0>
c0d0305a:	2102      	movs	r1, #2
c0d0305c:	e0d7      	b.n	c0d0320e <jsmn_parse+0x2b2>
c0d0305e:	9807      	ldr	r0, [sp, #28]
c0d03060:	2800      	cmp	r0, #0
c0d03062:	d0db      	beq.n	c0d0301c <jsmn_parse+0xc0>
c0d03064:	2e7d      	cmp	r6, #125	; 0x7d
c0d03066:	9d04      	ldr	r5, [sp, #16]
c0d03068:	d000      	beq.n	c0d0306c <jsmn_parse+0x110>
c0d0306a:	2502      	movs	r5, #2
c0d0306c:	9805      	ldr	r0, [sp, #20]
c0d0306e:	8843      	ldrh	r3, [r0, #2]
c0d03070:	1e58      	subs	r0, r3, #1
c0d03072:	b200      	sxth	r0, r0
c0d03074:	42a0      	cmp	r0, r4
c0d03076:	dc00      	bgt.n	c0d0307a <jsmn_parse+0x11e>
c0d03078:	e0b2      	b.n	c0d031e0 <jsmn_parse+0x284>
c0d0307a:	b281      	uxth	r1, r0
c0d0307c:	00ce      	lsls	r6, r1, #3
c0d0307e:	9907      	ldr	r1, [sp, #28]
c0d03080:	198a      	adds	r2, r1, r6
c0d03082:	8853      	ldrh	r3, [r2, #2]
c0d03084:	b2a1      	uxth	r1, r4
c0d03086:	428b      	cmp	r3, r1
c0d03088:	4603      	mov	r3, r0
c0d0308a:	d0f1      	beq.n	c0d03070 <jsmn_parse+0x114>
c0d0308c:	8893      	ldrh	r3, [r2, #4]
c0d0308e:	428b      	cmp	r3, r1
c0d03090:	4603      	mov	r3, r0
c0d03092:	d1ed      	bne.n	c0d03070 <jsmn_parse+0x114>
c0d03094:	9907      	ldr	r1, [sp, #28]
c0d03096:	5d89      	ldrb	r1, [r1, r6]
c0d03098:	428d      	cmp	r5, r1
c0d0309a:	d000      	beq.n	c0d0309e <jsmn_parse+0x142>
c0d0309c:	e10b      	b.n	c0d032b6 <jsmn_parse+0x35a>
c0d0309e:	1d11      	adds	r1, r2, #4
c0d030a0:	9e05      	ldr	r6, [sp, #20]
c0d030a2:	80b4      	strh	r4, [r6, #4]
c0d030a4:	1c7a      	adds	r2, r7, #1
c0d030a6:	800a      	strh	r2, [r1, #0]
c0d030a8:	e09d      	b.n	c0d031e6 <jsmn_parse+0x28a>
c0d030aa:	2819      	cmp	r0, #25
c0d030ac:	4639      	mov	r1, r7
c0d030ae:	d000      	beq.n	c0d030b2 <jsmn_parse+0x156>
c0d030b0:	e773      	b.n	c0d02f9a <jsmn_parse+0x3e>
c0d030b2:	4608      	mov	r0, r1
c0d030b4:	1c49      	adds	r1, r1, #1
c0d030b6:	9e05      	ldr	r6, [sp, #20]
c0d030b8:	8031      	strh	r1, [r6, #0]
c0d030ba:	b28a      	uxth	r2, r1
c0d030bc:	9b08      	ldr	r3, [sp, #32]
c0d030be:	429a      	cmp	r2, r3
c0d030c0:	d300      	bcc.n	c0d030c4 <jsmn_parse+0x168>
c0d030c2:	e0d5      	b.n	c0d03270 <jsmn_parse+0x314>
c0d030c4:	9b06      	ldr	r3, [sp, #24]
c0d030c6:	5c9b      	ldrb	r3, [r3, r2]
c0d030c8:	2b5c      	cmp	r3, #92	; 0x5c
c0d030ca:	d005      	beq.n	c0d030d8 <jsmn_parse+0x17c>
c0d030cc:	2b00      	cmp	r3, #0
c0d030ce:	d100      	bne.n	c0d030d2 <jsmn_parse+0x176>
c0d030d0:	e0ce      	b.n	c0d03270 <jsmn_parse+0x314>
c0d030d2:	2b22      	cmp	r3, #34	; 0x22
c0d030d4:	d1ed      	bne.n	c0d030b2 <jsmn_parse+0x156>
c0d030d6:	e0a7      	b.n	c0d03228 <jsmn_parse+0x2cc>
c0d030d8:	1c52      	adds	r2, r2, #1
c0d030da:	9b08      	ldr	r3, [sp, #32]
c0d030dc:	429a      	cmp	r2, r3
c0d030de:	d2e8      	bcs.n	c0d030b2 <jsmn_parse+0x156>
c0d030e0:	1c81      	adds	r1, r0, #2
c0d030e2:	9a05      	ldr	r2, [sp, #20]
c0d030e4:	8011      	strh	r1, [r2, #0]
c0d030e6:	b28a      	uxth	r2, r1
c0d030e8:	9b06      	ldr	r3, [sp, #24]
c0d030ea:	5c9d      	ldrb	r5, [r3, r2]
c0d030ec:	462b      	mov	r3, r5
c0d030ee:	3b5c      	subs	r3, #92	; 0x5c
c0d030f0:	2b19      	cmp	r3, #25
c0d030f2:	d826      	bhi.n	c0d03142 <jsmn_parse+0x1e6>
c0d030f4:	9e04      	ldr	r6, [sp, #16]
c0d030f6:	409e      	lsls	r6, r3
c0d030f8:	463a      	mov	r2, r7
c0d030fa:	4f73      	ldr	r7, [pc, #460]	; (c0d032c8 <jsmn_parse+0x36c>)
c0d030fc:	423e      	tst	r6, r7
c0d030fe:	4617      	mov	r7, r2
c0d03100:	d1d7      	bne.n	c0d030b2 <jsmn_parse+0x156>
c0d03102:	2b19      	cmp	r3, #25
c0d03104:	d11d      	bne.n	c0d03142 <jsmn_parse+0x1e6>
c0d03106:	1cc0      	adds	r0, r0, #3
c0d03108:	9e05      	ldr	r6, [sp, #20]
c0d0310a:	8030      	strh	r0, [r6, #0]
c0d0310c:	9900      	ldr	r1, [sp, #0]
c0d0310e:	2903      	cmp	r1, #3
c0d03110:	d81c      	bhi.n	c0d0314c <jsmn_parse+0x1f0>
c0d03112:	b282      	uxth	r2, r0
c0d03114:	9b08      	ldr	r3, [sp, #32]
c0d03116:	429a      	cmp	r2, r3
c0d03118:	d218      	bcs.n	c0d0314c <jsmn_parse+0x1f0>
c0d0311a:	9b06      	ldr	r3, [sp, #24]
c0d0311c:	5c9a      	ldrb	r2, [r3, r2]
c0d0311e:	2a00      	cmp	r2, #0
c0d03120:	d014      	beq.n	c0d0314c <jsmn_parse+0x1f0>
c0d03122:	4613      	mov	r3, r2
c0d03124:	3b30      	subs	r3, #48	; 0x30
c0d03126:	2b0a      	cmp	r3, #10
c0d03128:	d307      	bcc.n	c0d0313a <jsmn_parse+0x1de>
c0d0312a:	4613      	mov	r3, r2
c0d0312c:	3b41      	subs	r3, #65	; 0x41
c0d0312e:	2b06      	cmp	r3, #6
c0d03130:	d303      	bcc.n	c0d0313a <jsmn_parse+0x1de>
c0d03132:	3a61      	subs	r2, #97	; 0x61
c0d03134:	2a06      	cmp	r2, #6
c0d03136:	d300      	bcc.n	c0d0313a <jsmn_parse+0x1de>
c0d03138:	e0b6      	b.n	c0d032a8 <jsmn_parse+0x34c>
c0d0313a:	1c40      	adds	r0, r0, #1
c0d0313c:	8030      	strh	r0, [r6, #0]
c0d0313e:	1c49      	adds	r1, r1, #1
c0d03140:	e7e5      	b.n	c0d0310e <jsmn_parse+0x1b2>
c0d03142:	2d22      	cmp	r5, #34	; 0x22
c0d03144:	d0b5      	beq.n	c0d030b2 <jsmn_parse+0x156>
c0d03146:	2d2f      	cmp	r5, #47	; 0x2f
c0d03148:	d0b3      	beq.n	c0d030b2 <jsmn_parse+0x156>
c0d0314a:	e0b2      	b.n	c0d032b2 <jsmn_parse+0x356>
c0d0314c:	1e41      	subs	r1, r0, #1
c0d0314e:	8031      	strh	r1, [r6, #0]
c0d03150:	e7af      	b.n	c0d030b2 <jsmn_parse+0x156>
c0d03152:	9807      	ldr	r0, [sp, #28]
c0d03154:	2800      	cmp	r0, #0
c0d03156:	d100      	bne.n	c0d0315a <jsmn_parse+0x1fe>
c0d03158:	e760      	b.n	c0d0301c <jsmn_parse+0xc0>
c0d0315a:	9e05      	ldr	r6, [sp, #20]
c0d0315c:	88b1      	ldrh	r1, [r6, #4]
c0d0315e:	b2a0      	uxth	r0, r4
c0d03160:	4281      	cmp	r1, r0
c0d03162:	d05b      	beq.n	c0d0321c <jsmn_parse+0x2c0>
c0d03164:	b209      	sxth	r1, r1
c0d03166:	00c9      	lsls	r1, r1, #3
c0d03168:	9d07      	ldr	r5, [sp, #28]
c0d0316a:	5c69      	ldrb	r1, [r5, r1]
c0d0316c:	1e49      	subs	r1, r1, #1
c0d0316e:	2902      	cmp	r1, #2
c0d03170:	d355      	bcc.n	c0d0321e <jsmn_parse+0x2c2>
c0d03172:	8871      	ldrh	r1, [r6, #2]
c0d03174:	1e49      	subs	r1, r1, #1
c0d03176:	b209      	sxth	r1, r1
c0d03178:	42a1      	cmp	r1, r4
c0d0317a:	dd50      	ble.n	c0d0321e <jsmn_parse+0x2c2>
c0d0317c:	b28a      	uxth	r2, r1
c0d0317e:	00d2      	lsls	r2, r2, #3
c0d03180:	5cab      	ldrb	r3, [r5, r2]
c0d03182:	1e5b      	subs	r3, r3, #1
c0d03184:	2b01      	cmp	r3, #1
c0d03186:	d8f5      	bhi.n	c0d03174 <jsmn_parse+0x218>
c0d03188:	18aa      	adds	r2, r5, r2
c0d0318a:	8853      	ldrh	r3, [r2, #2]
c0d0318c:	4283      	cmp	r3, r0
c0d0318e:	d0f1      	beq.n	c0d03174 <jsmn_parse+0x218>
c0d03190:	8892      	ldrh	r2, [r2, #4]
c0d03192:	4282      	cmp	r2, r0
c0d03194:	d1ee      	bne.n	c0d03174 <jsmn_parse+0x218>
c0d03196:	80b1      	strh	r1, [r6, #4]
c0d03198:	e041      	b.n	c0d0321e <jsmn_parse+0x2c2>
c0d0319a:	9e05      	ldr	r6, [sp, #20]
c0d0319c:	e03b      	b.n	c0d03216 <jsmn_parse+0x2ba>
c0d0319e:	2d00      	cmp	r5, #0
c0d031a0:	d00d      	beq.n	c0d031be <jsmn_parse+0x262>
c0d031a2:	4630      	mov	r0, r6
c0d031a4:	4629      	mov	r1, r5
c0d031a6:	9a02      	ldr	r2, [sp, #8]
c0d031a8:	f000 f894 	bl	c0d032d4 <jsmn_alloc_token>
c0d031ac:	2800      	cmp	r0, #0
c0d031ae:	d07d      	beq.n	c0d032ac <jsmn_parse+0x350>
c0d031b0:	2100      	movs	r1, #0
c0d031b2:	80c1      	strh	r1, [r0, #6]
c0d031b4:	8047      	strh	r7, [r0, #2]
c0d031b6:	2104      	movs	r1, #4
c0d031b8:	7001      	strb	r1, [r0, #0]
c0d031ba:	8831      	ldrh	r1, [r6, #0]
c0d031bc:	8081      	strh	r1, [r0, #4]
c0d031be:	9803      	ldr	r0, [sp, #12]
c0d031c0:	1c40      	adds	r0, r0, #1
c0d031c2:	9003      	str	r0, [sp, #12]
c0d031c4:	1e4f      	subs	r7, r1, #1
c0d031c6:	2d00      	cmp	r5, #0
c0d031c8:	d029      	beq.n	c0d0321e <jsmn_parse+0x2c2>
c0d031ca:	88b0      	ldrh	r0, [r6, #4]
c0d031cc:	b2a1      	uxth	r1, r4
c0d031ce:	4288      	cmp	r0, r1
c0d031d0:	d025      	beq.n	c0d0321e <jsmn_parse+0x2c2>
c0d031d2:	b200      	sxth	r0, r0
c0d031d4:	00c0      	lsls	r0, r0, #3
c0d031d6:	1828      	adds	r0, r5, r0
c0d031d8:	88c1      	ldrh	r1, [r0, #6]
c0d031da:	1c49      	adds	r1, r1, #1
c0d031dc:	80c1      	strh	r1, [r0, #6]
c0d031de:	e01e      	b.n	c0d0321e <jsmn_parse+0x2c2>
c0d031e0:	0419      	lsls	r1, r3, #16
c0d031e2:	9e05      	ldr	r6, [sp, #20]
c0d031e4:	d067      	beq.n	c0d032b6 <jsmn_parse+0x35a>
c0d031e6:	9d07      	ldr	r5, [sp, #28]
c0d031e8:	b201      	sxth	r1, r0
c0d031ea:	42a1      	cmp	r1, r4
c0d031ec:	dd17      	ble.n	c0d0321e <jsmn_parse+0x2c2>
c0d031ee:	b281      	uxth	r1, r0
c0d031f0:	00c9      	lsls	r1, r1, #3
c0d031f2:	1869      	adds	r1, r5, r1
c0d031f4:	884b      	ldrh	r3, [r1, #2]
c0d031f6:	b2a2      	uxth	r2, r4
c0d031f8:	4293      	cmp	r3, r2
c0d031fa:	d002      	beq.n	c0d03202 <jsmn_parse+0x2a6>
c0d031fc:	8889      	ldrh	r1, [r1, #4]
c0d031fe:	4291      	cmp	r1, r2
c0d03200:	d010      	beq.n	c0d03224 <jsmn_parse+0x2c8>
c0d03202:	1e40      	subs	r0, r0, #1
c0d03204:	e7f0      	b.n	c0d031e8 <jsmn_parse+0x28c>
c0d03206:	9e05      	ldr	r6, [sp, #20]
c0d03208:	460d      	mov	r5, r1
c0d0320a:	e008      	b.n	c0d0321e <jsmn_parse+0x2c2>
c0d0320c:	2101      	movs	r1, #1
c0d0320e:	9e05      	ldr	r6, [sp, #20]
c0d03210:	7001      	strb	r1, [r0, #0]
c0d03212:	8837      	ldrh	r7, [r6, #0]
c0d03214:	8047      	strh	r7, [r0, #2]
c0d03216:	8870      	ldrh	r0, [r6, #2]
c0d03218:	1e40      	subs	r0, r0, #1
c0d0321a:	80b0      	strh	r0, [r6, #4]
c0d0321c:	9d07      	ldr	r5, [sp, #28]
c0d0321e:	1c7f      	adds	r7, r7, #1
c0d03220:	8037      	strh	r7, [r6, #0]
c0d03222:	e6af      	b.n	c0d02f84 <jsmn_parse+0x28>
c0d03224:	80b0      	strh	r0, [r6, #4]
c0d03226:	e7fa      	b.n	c0d0321e <jsmn_parse+0x2c2>
c0d03228:	9d07      	ldr	r5, [sp, #28]
c0d0322a:	2d00      	cmp	r5, #0
c0d0322c:	9e05      	ldr	r6, [sp, #20]
c0d0322e:	d00e      	beq.n	c0d0324e <jsmn_parse+0x2f2>
c0d03230:	4630      	mov	r0, r6
c0d03232:	4629      	mov	r1, r5
c0d03234:	9a02      	ldr	r2, [sp, #8]
c0d03236:	f000 f84d 	bl	c0d032d4 <jsmn_alloc_token>
c0d0323a:	2800      	cmp	r0, #0
c0d0323c:	d03d      	beq.n	c0d032ba <jsmn_parse+0x35e>
c0d0323e:	9900      	ldr	r1, [sp, #0]
c0d03240:	80c1      	strh	r1, [r0, #6]
c0d03242:	2103      	movs	r1, #3
c0d03244:	7001      	strb	r1, [r0, #0]
c0d03246:	8831      	ldrh	r1, [r6, #0]
c0d03248:	8081      	strh	r1, [r0, #4]
c0d0324a:	1c7a      	adds	r2, r7, #1
c0d0324c:	8042      	strh	r2, [r0, #2]
c0d0324e:	9803      	ldr	r0, [sp, #12]
c0d03250:	1c40      	adds	r0, r0, #1
c0d03252:	9003      	str	r0, [sp, #12]
c0d03254:	2d00      	cmp	r5, #0
c0d03256:	d009      	beq.n	c0d0326c <jsmn_parse+0x310>
c0d03258:	88b0      	ldrh	r0, [r6, #4]
c0d0325a:	b2a2      	uxth	r2, r4
c0d0325c:	4290      	cmp	r0, r2
c0d0325e:	d005      	beq.n	c0d0326c <jsmn_parse+0x310>
c0d03260:	b200      	sxth	r0, r0
c0d03262:	00c0      	lsls	r0, r0, #3
c0d03264:	1828      	adds	r0, r5, r0
c0d03266:	88c2      	ldrh	r2, [r0, #6]
c0d03268:	1c52      	adds	r2, r2, #1
c0d0326a:	80c2      	strh	r2, [r0, #6]
c0d0326c:	460f      	mov	r7, r1
c0d0326e:	e7d6      	b.n	c0d0321e <jsmn_parse+0x2c2>
c0d03270:	8037      	strh	r7, [r6, #0]
c0d03272:	9801      	ldr	r0, [sp, #4]
c0d03274:	1e40      	subs	r0, r0, #1
c0d03276:	e023      	b.n	c0d032c0 <jsmn_parse+0x364>
c0d03278:	2d00      	cmp	r5, #0
c0d0327a:	d00f      	beq.n	c0d0329c <jsmn_parse+0x340>
c0d0327c:	8870      	ldrh	r0, [r6, #2]
c0d0327e:	1e40      	subs	r0, r0, #1
c0d03280:	b200      	sxth	r0, r0
c0d03282:	42a0      	cmp	r0, r4
c0d03284:	dd0a      	ble.n	c0d0329c <jsmn_parse+0x340>
c0d03286:	b281      	uxth	r1, r0
c0d03288:	00c9      	lsls	r1, r1, #3
c0d0328a:	1869      	adds	r1, r5, r1
c0d0328c:	884b      	ldrh	r3, [r1, #2]
c0d0328e:	b2a2      	uxth	r2, r4
c0d03290:	4293      	cmp	r3, r2
c0d03292:	d0f4      	beq.n	c0d0327e <jsmn_parse+0x322>
c0d03294:	8889      	ldrh	r1, [r1, #4]
c0d03296:	4291      	cmp	r1, r2
c0d03298:	d1f1      	bne.n	c0d0327e <jsmn_parse+0x322>
c0d0329a:	e7ea      	b.n	c0d03272 <jsmn_parse+0x316>
c0d0329c:	9803      	ldr	r0, [sp, #12]
c0d0329e:	b200      	sxth	r0, r0
c0d032a0:	e00e      	b.n	c0d032c0 <jsmn_parse+0x364>
c0d032a2:	9801      	ldr	r0, [sp, #4]
c0d032a4:	8037      	strh	r7, [r6, #0]
c0d032a6:	e00b      	b.n	c0d032c0 <jsmn_parse+0x364>
c0d032a8:	8037      	strh	r7, [r6, #0]
c0d032aa:	e004      	b.n	c0d032b6 <jsmn_parse+0x35a>
c0d032ac:	9801      	ldr	r0, [sp, #4]
c0d032ae:	1c40      	adds	r0, r0, #1
c0d032b0:	e7f8      	b.n	c0d032a4 <jsmn_parse+0x348>
c0d032b2:	9805      	ldr	r0, [sp, #20]
c0d032b4:	8007      	strh	r7, [r0, #0]
c0d032b6:	9801      	ldr	r0, [sp, #4]
c0d032b8:	e002      	b.n	c0d032c0 <jsmn_parse+0x364>
c0d032ba:	8037      	strh	r7, [r6, #0]
c0d032bc:	9801      	ldr	r0, [sp, #4]
c0d032be:	1c40      	adds	r0, r0, #1
c0d032c0:	b009      	add	sp, #36	; 0x24
c0d032c2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d032c4:	00800013 	.word	0x00800013
c0d032c8:	01440441 	.word	0x01440441
c0d032cc:	00002601 	.word	0x00002601
c0d032d0:	04001001 	.word	0x04001001

c0d032d4 <jsmn_alloc_token>:
c0d032d4:	8843      	ldrh	r3, [r0, #2]
c0d032d6:	4293      	cmp	r3, r2
c0d032d8:	d209      	bcs.n	c0d032ee <jsmn_alloc_token+0x1a>
c0d032da:	1c5a      	adds	r2, r3, #1
c0d032dc:	8042      	strh	r2, [r0, #2]
c0d032de:	00d8      	lsls	r0, r3, #3
c0d032e0:	1808      	adds	r0, r1, r0
c0d032e2:	2100      	movs	r1, #0
c0d032e4:	43ca      	mvns	r2, r1
c0d032e6:	8082      	strh	r2, [r0, #4]
c0d032e8:	80c1      	strh	r1, [r0, #6]
c0d032ea:	8042      	strh	r2, [r0, #2]
c0d032ec:	4770      	bx	lr
c0d032ee:	2000      	movs	r0, #0
c0d032f0:	4770      	bx	lr
	...

c0d032f4 <jsmn_init>:
c0d032f4:	4902      	ldr	r1, [pc, #8]	; (c0d03300 <jsmn_init+0xc>)
c0d032f6:	8081      	strh	r1, [r0, #4]
c0d032f8:	2100      	movs	r1, #0
c0d032fa:	8041      	strh	r1, [r0, #2]
c0d032fc:	8001      	strh	r1, [r0, #0]
c0d032fe:	4770      	bx	lr
c0d03300:	0000ffff 	.word	0x0000ffff

c0d03304 <io_event>:
c0d03304:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d03306:	4efb      	ldr	r6, [pc, #1004]	; (c0d036f4 <io_event+0x3f0>)
c0d03308:	7830      	ldrb	r0, [r6, #0]
c0d0330a:	2815      	cmp	r0, #21
c0d0330c:	d07e      	beq.n	c0d0340c <io_event+0x108>
c0d0330e:	280d      	cmp	r0, #13
c0d03310:	d100      	bne.n	c0d03314 <io_event+0x10>
c0d03312:	e083      	b.n	c0d0341c <io_event+0x118>
c0d03314:	280e      	cmp	r0, #14
c0d03316:	d02a      	beq.n	c0d0336e <io_event+0x6a>
c0d03318:	2805      	cmp	r0, #5
c0d0331a:	d000      	beq.n	c0d0331e <io_event+0x1a>
c0d0331c:	e0c4      	b.n	c0d034a8 <io_event+0x1a4>
c0d0331e:	2044      	movs	r0, #68	; 0x44
c0d03320:	4df5      	ldr	r5, [pc, #980]	; (c0d036f8 <io_event+0x3f4>)
c0d03322:	2101      	movs	r1, #1
c0d03324:	5429      	strb	r1, [r5, r0]
c0d03326:	462c      	mov	r4, r5
c0d03328:	3444      	adds	r4, #68	; 0x44
c0d0332a:	2700      	movs	r7, #0
c0d0332c:	6067      	str	r7, [r4, #4]
c0d0332e:	4620      	mov	r0, r4
c0d03330:	f003 fd9a 	bl	c0d06e68 <os_ux>
c0d03334:	2004      	movs	r0, #4
c0d03336:	f003 fe13 	bl	c0d06f60 <os_sched_last_status>
c0d0333a:	6060      	str	r0, [r4, #4]
c0d0333c:	2800      	cmp	r0, #0
c0d0333e:	d100      	bne.n	c0d03342 <io_event+0x3e>
c0d03340:	e214      	b.n	c0d0376c <io_event+0x468>
c0d03342:	2897      	cmp	r0, #151	; 0x97
c0d03344:	d100      	bne.n	c0d03348 <io_event+0x44>
c0d03346:	e211      	b.n	c0d0376c <io_event+0x468>
c0d03348:	2869      	cmp	r0, #105	; 0x69
c0d0334a:	d000      	beq.n	c0d0334e <io_event+0x4a>
c0d0334c:	e1d6      	b.n	c0d036fc <io_event+0x3f8>
c0d0334e:	f002 ffa9 	bl	c0d062a4 <io_seproxyhal_init_ux>
c0d03352:	f002 ffa9 	bl	c0d062a8 <io_seproxyhal_init_button>
c0d03356:	84ef      	strh	r7, [r5, #38]	; 0x26
c0d03358:	2004      	movs	r0, #4
c0d0335a:	f003 fe01 	bl	c0d06f60 <os_sched_last_status>
c0d0335e:	64a8      	str	r0, [r5, #72]	; 0x48
c0d03360:	2800      	cmp	r0, #0
c0d03362:	d100      	bne.n	c0d03366 <io_event+0x62>
c0d03364:	e202      	b.n	c0d0376c <io_event+0x468>
c0d03366:	2897      	cmp	r0, #151	; 0x97
c0d03368:	d100      	bne.n	c0d0336c <io_event+0x68>
c0d0336a:	e1ff      	b.n	c0d0376c <io_event+0x468>
c0d0336c:	e140      	b.n	c0d035f0 <io_event+0x2ec>
c0d0336e:	2044      	movs	r0, #68	; 0x44
c0d03370:	4ee1      	ldr	r6, [pc, #900]	; (c0d036f8 <io_event+0x3f4>)
c0d03372:	2101      	movs	r1, #1
c0d03374:	5431      	strb	r1, [r6, r0]
c0d03376:	4635      	mov	r5, r6
c0d03378:	3544      	adds	r5, #68	; 0x44
c0d0337a:	2700      	movs	r7, #0
c0d0337c:	606f      	str	r7, [r5, #4]
c0d0337e:	4628      	mov	r0, r5
c0d03380:	f003 fd72 	bl	c0d06e68 <os_ux>
c0d03384:	2004      	movs	r0, #4
c0d03386:	f003 fdeb 	bl	c0d06f60 <os_sched_last_status>
c0d0338a:	6068      	str	r0, [r5, #4]
c0d0338c:	2869      	cmp	r0, #105	; 0x69
c0d0338e:	d000      	beq.n	c0d03392 <io_event+0x8e>
c0d03390:	e132      	b.n	c0d035f8 <io_event+0x2f4>
c0d03392:	f002 ff87 	bl	c0d062a4 <io_seproxyhal_init_ux>
c0d03396:	f002 ff87 	bl	c0d062a8 <io_seproxyhal_init_button>
c0d0339a:	2000      	movs	r0, #0
c0d0339c:	84f0      	strh	r0, [r6, #38]	; 0x26
c0d0339e:	2004      	movs	r0, #4
c0d033a0:	f003 fdde 	bl	c0d06f60 <os_sched_last_status>
c0d033a4:	64b0      	str	r0, [r6, #72]	; 0x48
c0d033a6:	2800      	cmp	r0, #0
c0d033a8:	d100      	bne.n	c0d033ac <io_event+0xa8>
c0d033aa:	e1df      	b.n	c0d0376c <io_event+0x468>
c0d033ac:	2897      	cmp	r0, #151	; 0x97
c0d033ae:	d129      	bne.n	c0d03404 <io_event+0x100>
c0d033b0:	e1dc      	b.n	c0d0376c <io_event+0x468>
c0d033b2:	202c      	movs	r0, #44	; 0x2c
c0d033b4:	5c30      	ldrb	r0, [r6, r0]
c0d033b6:	8cf1      	ldrh	r1, [r6, #38]	; 0x26
c0d033b8:	4281      	cmp	r1, r0
c0d033ba:	d300      	bcc.n	c0d033be <io_event+0xba>
c0d033bc:	e1d6      	b.n	c0d0376c <io_event+0x468>
c0d033be:	f003 fda3 	bl	c0d06f08 <io_seph_is_status_sent>
c0d033c2:	2800      	cmp	r0, #0
c0d033c4:	d000      	beq.n	c0d033c8 <io_event+0xc4>
c0d033c6:	e1d1      	b.n	c0d0376c <io_event+0x468>
c0d033c8:	f003 fd20 	bl	c0d06e0c <os_perso_isonboarded>
c0d033cc:	28aa      	cmp	r0, #170	; 0xaa
c0d033ce:	d104      	bne.n	c0d033da <io_event+0xd6>
c0d033d0:	f003 fd3e 	bl	c0d06e50 <os_global_pin_is_validated>
c0d033d4:	28aa      	cmp	r0, #170	; 0xaa
c0d033d6:	d000      	beq.n	c0d033da <io_event+0xd6>
c0d033d8:	e1c8      	b.n	c0d0376c <io_event+0x468>
c0d033da:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d033dc:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d033de:	0150      	lsls	r0, r2, #5
c0d033e0:	1808      	adds	r0, r1, r0
c0d033e2:	6b33      	ldr	r3, [r6, #48]	; 0x30
c0d033e4:	2b00      	cmp	r3, #0
c0d033e6:	d004      	beq.n	c0d033f2 <io_event+0xee>
c0d033e8:	4798      	blx	r3
c0d033ea:	2800      	cmp	r0, #0
c0d033ec:	d007      	beq.n	c0d033fe <io_event+0xfa>
c0d033ee:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d033f0:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d033f2:	2801      	cmp	r0, #1
c0d033f4:	d101      	bne.n	c0d033fa <io_event+0xf6>
c0d033f6:	0150      	lsls	r0, r2, #5
c0d033f8:	1808      	adds	r0, r1, r0
c0d033fa:	f000 fbe6 	bl	c0d03bca <io_seproxyhal_display>
c0d033fe:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d03400:	1c40      	adds	r0, r0, #1
c0d03402:	84f0      	strh	r0, [r6, #38]	; 0x26
c0d03404:	6ab0      	ldr	r0, [r6, #40]	; 0x28
c0d03406:	2800      	cmp	r0, #0
c0d03408:	d1d3      	bne.n	c0d033b2 <io_event+0xae>
c0d0340a:	e1af      	b.n	c0d0376c <io_event+0x468>
c0d0340c:	48de      	ldr	r0, [pc, #888]	; (c0d03788 <io_event+0x484>)
c0d0340e:	7980      	ldrb	r0, [r0, #6]
c0d03410:	2801      	cmp	r0, #1
c0d03412:	d103      	bne.n	c0d0341c <io_event+0x118>
c0d03414:	79b0      	ldrb	r0, [r6, #6]
c0d03416:	0700      	lsls	r0, r0, #28
c0d03418:	d400      	bmi.n	c0d0341c <io_event+0x118>
c0d0341a:	e1af      	b.n	c0d0377c <io_event+0x478>
c0d0341c:	2044      	movs	r0, #68	; 0x44
c0d0341e:	4dd9      	ldr	r5, [pc, #868]	; (c0d03784 <io_event+0x480>)
c0d03420:	2101      	movs	r1, #1
c0d03422:	5429      	strb	r1, [r5, r0]
c0d03424:	462c      	mov	r4, r5
c0d03426:	3444      	adds	r4, #68	; 0x44
c0d03428:	2600      	movs	r6, #0
c0d0342a:	6066      	str	r6, [r4, #4]
c0d0342c:	4620      	mov	r0, r4
c0d0342e:	f003 fd1b 	bl	c0d06e68 <os_ux>
c0d03432:	2004      	movs	r0, #4
c0d03434:	f003 fd94 	bl	c0d06f60 <os_sched_last_status>
c0d03438:	6060      	str	r0, [r4, #4]
c0d0343a:	2800      	cmp	r0, #0
c0d0343c:	d100      	bne.n	c0d03440 <io_event+0x13c>
c0d0343e:	e195      	b.n	c0d0376c <io_event+0x468>
c0d03440:	2869      	cmp	r0, #105	; 0x69
c0d03442:	d100      	bne.n	c0d03446 <io_event+0x142>
c0d03444:	e11d      	b.n	c0d03682 <io_event+0x37e>
c0d03446:	2897      	cmp	r0, #151	; 0x97
c0d03448:	d100      	bne.n	c0d0344c <io_event+0x148>
c0d0344a:	e18f      	b.n	c0d0376c <io_event+0x468>
c0d0344c:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d0344e:	2800      	cmp	r0, #0
c0d03450:	d100      	bne.n	c0d03454 <io_event+0x150>
c0d03452:	e184      	b.n	c0d0375e <io_event+0x45a>
c0d03454:	202c      	movs	r0, #44	; 0x2c
c0d03456:	5c28      	ldrb	r0, [r5, r0]
c0d03458:	8ce9      	ldrh	r1, [r5, #38]	; 0x26
c0d0345a:	4281      	cmp	r1, r0
c0d0345c:	d300      	bcc.n	c0d03460 <io_event+0x15c>
c0d0345e:	e17e      	b.n	c0d0375e <io_event+0x45a>
c0d03460:	f003 fd52 	bl	c0d06f08 <io_seph_is_status_sent>
c0d03464:	2800      	cmp	r0, #0
c0d03466:	d000      	beq.n	c0d0346a <io_event+0x166>
c0d03468:	e179      	b.n	c0d0375e <io_event+0x45a>
c0d0346a:	f003 fccf 	bl	c0d06e0c <os_perso_isonboarded>
c0d0346e:	28aa      	cmp	r0, #170	; 0xaa
c0d03470:	d104      	bne.n	c0d0347c <io_event+0x178>
c0d03472:	f003 fced 	bl	c0d06e50 <os_global_pin_is_validated>
c0d03476:	28aa      	cmp	r0, #170	; 0xaa
c0d03478:	d000      	beq.n	c0d0347c <io_event+0x178>
c0d0347a:	e170      	b.n	c0d0375e <io_event+0x45a>
c0d0347c:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d0347e:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d03480:	0150      	lsls	r0, r2, #5
c0d03482:	1808      	adds	r0, r1, r0
c0d03484:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d03486:	2b00      	cmp	r3, #0
c0d03488:	d004      	beq.n	c0d03494 <io_event+0x190>
c0d0348a:	4798      	blx	r3
c0d0348c:	2800      	cmp	r0, #0
c0d0348e:	d007      	beq.n	c0d034a0 <io_event+0x19c>
c0d03490:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d03492:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d03494:	2801      	cmp	r0, #1
c0d03496:	d101      	bne.n	c0d0349c <io_event+0x198>
c0d03498:	0150      	lsls	r0, r2, #5
c0d0349a:	1808      	adds	r0, r1, r0
c0d0349c:	f000 fb95 	bl	c0d03bca <io_seproxyhal_display>
c0d034a0:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d034a2:	1c40      	adds	r0, r0, #1
c0d034a4:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d034a6:	e7d1      	b.n	c0d0344c <io_event+0x148>
c0d034a8:	2044      	movs	r0, #68	; 0x44
c0d034aa:	4db6      	ldr	r5, [pc, #728]	; (c0d03784 <io_event+0x480>)
c0d034ac:	2101      	movs	r1, #1
c0d034ae:	5429      	strb	r1, [r5, r0]
c0d034b0:	462c      	mov	r4, r5
c0d034b2:	3444      	adds	r4, #68	; 0x44
c0d034b4:	2600      	movs	r6, #0
c0d034b6:	6066      	str	r6, [r4, #4]
c0d034b8:	4620      	mov	r0, r4
c0d034ba:	f003 fcd5 	bl	c0d06e68 <os_ux>
c0d034be:	2004      	movs	r0, #4
c0d034c0:	f003 fd4e 	bl	c0d06f60 <os_sched_last_status>
c0d034c4:	6060      	str	r0, [r4, #4]
c0d034c6:	2869      	cmp	r0, #105	; 0x69
c0d034c8:	d10e      	bne.n	c0d034e8 <io_event+0x1e4>
c0d034ca:	f002 feeb 	bl	c0d062a4 <io_seproxyhal_init_ux>
c0d034ce:	f002 feeb 	bl	c0d062a8 <io_seproxyhal_init_button>
c0d034d2:	84ee      	strh	r6, [r5, #38]	; 0x26
c0d034d4:	2004      	movs	r0, #4
c0d034d6:	f003 fd43 	bl	c0d06f60 <os_sched_last_status>
c0d034da:	64a8      	str	r0, [r5, #72]	; 0x48
c0d034dc:	2800      	cmp	r0, #0
c0d034de:	d100      	bne.n	c0d034e2 <io_event+0x1de>
c0d034e0:	e144      	b.n	c0d0376c <io_event+0x468>
c0d034e2:	2897      	cmp	r0, #151	; 0x97
c0d034e4:	d157      	bne.n	c0d03596 <io_event+0x292>
c0d034e6:	e141      	b.n	c0d0376c <io_event+0x468>
c0d034e8:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d034ea:	2800      	cmp	r0, #0
c0d034ec:	d100      	bne.n	c0d034f0 <io_event+0x1ec>
c0d034ee:	e136      	b.n	c0d0375e <io_event+0x45a>
c0d034f0:	202c      	movs	r0, #44	; 0x2c
c0d034f2:	5c28      	ldrb	r0, [r5, r0]
c0d034f4:	8ce9      	ldrh	r1, [r5, #38]	; 0x26
c0d034f6:	4281      	cmp	r1, r0
c0d034f8:	d300      	bcc.n	c0d034fc <io_event+0x1f8>
c0d034fa:	e130      	b.n	c0d0375e <io_event+0x45a>
c0d034fc:	f003 fd04 	bl	c0d06f08 <io_seph_is_status_sent>
c0d03500:	2800      	cmp	r0, #0
c0d03502:	d000      	beq.n	c0d03506 <io_event+0x202>
c0d03504:	e12b      	b.n	c0d0375e <io_event+0x45a>
c0d03506:	f003 fc81 	bl	c0d06e0c <os_perso_isonboarded>
c0d0350a:	28aa      	cmp	r0, #170	; 0xaa
c0d0350c:	d104      	bne.n	c0d03518 <io_event+0x214>
c0d0350e:	f003 fc9f 	bl	c0d06e50 <os_global_pin_is_validated>
c0d03512:	28aa      	cmp	r0, #170	; 0xaa
c0d03514:	d000      	beq.n	c0d03518 <io_event+0x214>
c0d03516:	e122      	b.n	c0d0375e <io_event+0x45a>
c0d03518:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d0351a:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d0351c:	0150      	lsls	r0, r2, #5
c0d0351e:	1808      	adds	r0, r1, r0
c0d03520:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d03522:	2b00      	cmp	r3, #0
c0d03524:	d004      	beq.n	c0d03530 <io_event+0x22c>
c0d03526:	4798      	blx	r3
c0d03528:	2800      	cmp	r0, #0
c0d0352a:	d007      	beq.n	c0d0353c <io_event+0x238>
c0d0352c:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d0352e:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d03530:	2801      	cmp	r0, #1
c0d03532:	d101      	bne.n	c0d03538 <io_event+0x234>
c0d03534:	0150      	lsls	r0, r2, #5
c0d03536:	1808      	adds	r0, r1, r0
c0d03538:	f000 fb47 	bl	c0d03bca <io_seproxyhal_display>
c0d0353c:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d0353e:	1c40      	adds	r0, r0, #1
c0d03540:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d03542:	e7d1      	b.n	c0d034e8 <io_event+0x1e4>
c0d03544:	202c      	movs	r0, #44	; 0x2c
c0d03546:	5c28      	ldrb	r0, [r5, r0]
c0d03548:	8ce9      	ldrh	r1, [r5, #38]	; 0x26
c0d0354a:	4281      	cmp	r1, r0
c0d0354c:	d300      	bcc.n	c0d03550 <io_event+0x24c>
c0d0354e:	e10d      	b.n	c0d0376c <io_event+0x468>
c0d03550:	f003 fcda 	bl	c0d06f08 <io_seph_is_status_sent>
c0d03554:	2800      	cmp	r0, #0
c0d03556:	d000      	beq.n	c0d0355a <io_event+0x256>
c0d03558:	e108      	b.n	c0d0376c <io_event+0x468>
c0d0355a:	f003 fc57 	bl	c0d06e0c <os_perso_isonboarded>
c0d0355e:	28aa      	cmp	r0, #170	; 0xaa
c0d03560:	d104      	bne.n	c0d0356c <io_event+0x268>
c0d03562:	f003 fc75 	bl	c0d06e50 <os_global_pin_is_validated>
c0d03566:	28aa      	cmp	r0, #170	; 0xaa
c0d03568:	d000      	beq.n	c0d0356c <io_event+0x268>
c0d0356a:	e0ff      	b.n	c0d0376c <io_event+0x468>
c0d0356c:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d0356e:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d03570:	0150      	lsls	r0, r2, #5
c0d03572:	1808      	adds	r0, r1, r0
c0d03574:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d03576:	2b00      	cmp	r3, #0
c0d03578:	d004      	beq.n	c0d03584 <io_event+0x280>
c0d0357a:	4798      	blx	r3
c0d0357c:	2800      	cmp	r0, #0
c0d0357e:	d007      	beq.n	c0d03590 <io_event+0x28c>
c0d03580:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d03582:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d03584:	2801      	cmp	r0, #1
c0d03586:	d101      	bne.n	c0d0358c <io_event+0x288>
c0d03588:	0150      	lsls	r0, r2, #5
c0d0358a:	1808      	adds	r0, r1, r0
c0d0358c:	f000 fb1d 	bl	c0d03bca <io_seproxyhal_display>
c0d03590:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d03592:	1c40      	adds	r0, r0, #1
c0d03594:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d03596:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d03598:	2800      	cmp	r0, #0
c0d0359a:	d1d3      	bne.n	c0d03544 <io_event+0x240>
c0d0359c:	e0e6      	b.n	c0d0376c <io_event+0x468>
c0d0359e:	202c      	movs	r0, #44	; 0x2c
c0d035a0:	5c28      	ldrb	r0, [r5, r0]
c0d035a2:	8ce9      	ldrh	r1, [r5, #38]	; 0x26
c0d035a4:	4281      	cmp	r1, r0
c0d035a6:	d300      	bcc.n	c0d035aa <io_event+0x2a6>
c0d035a8:	e0e0      	b.n	c0d0376c <io_event+0x468>
c0d035aa:	f003 fcad 	bl	c0d06f08 <io_seph_is_status_sent>
c0d035ae:	2800      	cmp	r0, #0
c0d035b0:	d000      	beq.n	c0d035b4 <io_event+0x2b0>
c0d035b2:	e0db      	b.n	c0d0376c <io_event+0x468>
c0d035b4:	f003 fc2a 	bl	c0d06e0c <os_perso_isonboarded>
c0d035b8:	28aa      	cmp	r0, #170	; 0xaa
c0d035ba:	d104      	bne.n	c0d035c6 <io_event+0x2c2>
c0d035bc:	f003 fc48 	bl	c0d06e50 <os_global_pin_is_validated>
c0d035c0:	28aa      	cmp	r0, #170	; 0xaa
c0d035c2:	d000      	beq.n	c0d035c6 <io_event+0x2c2>
c0d035c4:	e0d2      	b.n	c0d0376c <io_event+0x468>
c0d035c6:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d035c8:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d035ca:	0150      	lsls	r0, r2, #5
c0d035cc:	1808      	adds	r0, r1, r0
c0d035ce:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d035d0:	2b00      	cmp	r3, #0
c0d035d2:	d004      	beq.n	c0d035de <io_event+0x2da>
c0d035d4:	4798      	blx	r3
c0d035d6:	2800      	cmp	r0, #0
c0d035d8:	d007      	beq.n	c0d035ea <io_event+0x2e6>
c0d035da:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d035dc:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d035de:	2801      	cmp	r0, #1
c0d035e0:	d101      	bne.n	c0d035e6 <io_event+0x2e2>
c0d035e2:	0150      	lsls	r0, r2, #5
c0d035e4:	1808      	adds	r0, r1, r0
c0d035e6:	f000 faf0 	bl	c0d03bca <io_seproxyhal_display>
c0d035ea:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d035ec:	1c40      	adds	r0, r0, #1
c0d035ee:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d035f0:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d035f2:	2800      	cmp	r0, #0
c0d035f4:	d1d3      	bne.n	c0d0359e <io_event+0x29a>
c0d035f6:	e0b9      	b.n	c0d0376c <io_event+0x468>
c0d035f8:	4604      	mov	r4, r0
c0d035fa:	6bf0      	ldr	r0, [r6, #60]	; 0x3c
c0d035fc:	2800      	cmp	r0, #0
c0d035fe:	d00d      	beq.n	c0d0361c <io_event+0x318>
c0d03600:	4601      	mov	r1, r0
c0d03602:	3964      	subs	r1, #100	; 0x64
c0d03604:	d200      	bcs.n	c0d03608 <io_event+0x304>
c0d03606:	4639      	mov	r1, r7
c0d03608:	63f1      	str	r1, [r6, #60]	; 0x3c
c0d0360a:	2864      	cmp	r0, #100	; 0x64
c0d0360c:	d806      	bhi.n	c0d0361c <io_event+0x318>
c0d0360e:	6bb1      	ldr	r1, [r6, #56]	; 0x38
c0d03610:	2900      	cmp	r1, #0
c0d03612:	d003      	beq.n	c0d0361c <io_event+0x318>
c0d03614:	6c30      	ldr	r0, [r6, #64]	; 0x40
c0d03616:	63f0      	str	r0, [r6, #60]	; 0x3c
c0d03618:	2000      	movs	r0, #0
c0d0361a:	4788      	blx	r1
c0d0361c:	2c00      	cmp	r4, #0
c0d0361e:	d100      	bne.n	c0d03622 <io_event+0x31e>
c0d03620:	e0a4      	b.n	c0d0376c <io_event+0x468>
c0d03622:	2c97      	cmp	r4, #151	; 0x97
c0d03624:	d126      	bne.n	c0d03674 <io_event+0x370>
c0d03626:	e0a1      	b.n	c0d0376c <io_event+0x468>
c0d03628:	202c      	movs	r0, #44	; 0x2c
c0d0362a:	5c30      	ldrb	r0, [r6, r0]
c0d0362c:	8cf1      	ldrh	r1, [r6, #38]	; 0x26
c0d0362e:	4281      	cmp	r1, r0
c0d03630:	d223      	bcs.n	c0d0367a <io_event+0x376>
c0d03632:	f003 fc69 	bl	c0d06f08 <io_seph_is_status_sent>
c0d03636:	2800      	cmp	r0, #0
c0d03638:	d11f      	bne.n	c0d0367a <io_event+0x376>
c0d0363a:	f003 fbe7 	bl	c0d06e0c <os_perso_isonboarded>
c0d0363e:	28aa      	cmp	r0, #170	; 0xaa
c0d03640:	d103      	bne.n	c0d0364a <io_event+0x346>
c0d03642:	f003 fc05 	bl	c0d06e50 <os_global_pin_is_validated>
c0d03646:	28aa      	cmp	r0, #170	; 0xaa
c0d03648:	d117      	bne.n	c0d0367a <io_event+0x376>
c0d0364a:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d0364c:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d0364e:	0150      	lsls	r0, r2, #5
c0d03650:	1808      	adds	r0, r1, r0
c0d03652:	6b33      	ldr	r3, [r6, #48]	; 0x30
c0d03654:	2b00      	cmp	r3, #0
c0d03656:	d004      	beq.n	c0d03662 <io_event+0x35e>
c0d03658:	4798      	blx	r3
c0d0365a:	2800      	cmp	r0, #0
c0d0365c:	d007      	beq.n	c0d0366e <io_event+0x36a>
c0d0365e:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d03660:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d03662:	2801      	cmp	r0, #1
c0d03664:	d101      	bne.n	c0d0366a <io_event+0x366>
c0d03666:	0150      	lsls	r0, r2, #5
c0d03668:	1808      	adds	r0, r1, r0
c0d0366a:	f000 faae 	bl	c0d03bca <io_seproxyhal_display>
c0d0366e:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d03670:	1c40      	adds	r0, r0, #1
c0d03672:	84f0      	strh	r0, [r6, #38]	; 0x26
c0d03674:	6ab0      	ldr	r0, [r6, #40]	; 0x28
c0d03676:	2800      	cmp	r0, #0
c0d03678:	d1d6      	bne.n	c0d03628 <io_event+0x324>
c0d0367a:	202c      	movs	r0, #44	; 0x2c
c0d0367c:	5c30      	ldrb	r0, [r6, r0]
c0d0367e:	8cf1      	ldrh	r1, [r6, #38]	; 0x26
c0d03680:	e070      	b.n	c0d03764 <io_event+0x460>
c0d03682:	f002 fe0f 	bl	c0d062a4 <io_seproxyhal_init_ux>
c0d03686:	f002 fe0f 	bl	c0d062a8 <io_seproxyhal_init_button>
c0d0368a:	84ee      	strh	r6, [r5, #38]	; 0x26
c0d0368c:	2004      	movs	r0, #4
c0d0368e:	f003 fc67 	bl	c0d06f60 <os_sched_last_status>
c0d03692:	64a8      	str	r0, [r5, #72]	; 0x48
c0d03694:	2800      	cmp	r0, #0
c0d03696:	d069      	beq.n	c0d0376c <io_event+0x468>
c0d03698:	2897      	cmp	r0, #151	; 0x97
c0d0369a:	d067      	beq.n	c0d0376c <io_event+0x468>
c0d0369c:	e025      	b.n	c0d036ea <io_event+0x3e6>
c0d0369e:	202c      	movs	r0, #44	; 0x2c
c0d036a0:	5c28      	ldrb	r0, [r5, r0]
c0d036a2:	8ce9      	ldrh	r1, [r5, #38]	; 0x26
c0d036a4:	4281      	cmp	r1, r0
c0d036a6:	d261      	bcs.n	c0d0376c <io_event+0x468>
c0d036a8:	f003 fc2e 	bl	c0d06f08 <io_seph_is_status_sent>
c0d036ac:	2800      	cmp	r0, #0
c0d036ae:	d15d      	bne.n	c0d0376c <io_event+0x468>
c0d036b0:	f003 fbac 	bl	c0d06e0c <os_perso_isonboarded>
c0d036b4:	28aa      	cmp	r0, #170	; 0xaa
c0d036b6:	d103      	bne.n	c0d036c0 <io_event+0x3bc>
c0d036b8:	f003 fbca 	bl	c0d06e50 <os_global_pin_is_validated>
c0d036bc:	28aa      	cmp	r0, #170	; 0xaa
c0d036be:	d155      	bne.n	c0d0376c <io_event+0x468>
c0d036c0:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d036c2:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d036c4:	0150      	lsls	r0, r2, #5
c0d036c6:	1808      	adds	r0, r1, r0
c0d036c8:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d036ca:	2b00      	cmp	r3, #0
c0d036cc:	d004      	beq.n	c0d036d8 <io_event+0x3d4>
c0d036ce:	4798      	blx	r3
c0d036d0:	2800      	cmp	r0, #0
c0d036d2:	d007      	beq.n	c0d036e4 <io_event+0x3e0>
c0d036d4:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d036d6:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d036d8:	2801      	cmp	r0, #1
c0d036da:	d101      	bne.n	c0d036e0 <io_event+0x3dc>
c0d036dc:	0150      	lsls	r0, r2, #5
c0d036de:	1808      	adds	r0, r1, r0
c0d036e0:	f000 fa73 	bl	c0d03bca <io_seproxyhal_display>
c0d036e4:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d036e6:	1c40      	adds	r0, r0, #1
c0d036e8:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d036ea:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d036ec:	2800      	cmp	r0, #0
c0d036ee:	d1d6      	bne.n	c0d0369e <io_event+0x39a>
c0d036f0:	e03c      	b.n	c0d0376c <io_event+0x468>
c0d036f2:	46c0      	nop			; (mov r8, r8)
c0d036f4:	2000092b 	.word	0x2000092b
c0d036f8:	20000a2c 	.word	0x20000a2c
c0d036fc:	6b68      	ldr	r0, [r5, #52]	; 0x34
c0d036fe:	2800      	cmp	r0, #0
c0d03700:	d003      	beq.n	c0d0370a <io_event+0x406>
c0d03702:	78f1      	ldrb	r1, [r6, #3]
c0d03704:	0849      	lsrs	r1, r1, #1
c0d03706:	f002 fe9d 	bl	c0d06444 <io_seproxyhal_button_push>
c0d0370a:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d0370c:	2800      	cmp	r0, #0
c0d0370e:	d026      	beq.n	c0d0375e <io_event+0x45a>
c0d03710:	202c      	movs	r0, #44	; 0x2c
c0d03712:	5c28      	ldrb	r0, [r5, r0]
c0d03714:	8ce9      	ldrh	r1, [r5, #38]	; 0x26
c0d03716:	4281      	cmp	r1, r0
c0d03718:	d221      	bcs.n	c0d0375e <io_event+0x45a>
c0d0371a:	f003 fbf5 	bl	c0d06f08 <io_seph_is_status_sent>
c0d0371e:	2800      	cmp	r0, #0
c0d03720:	d11d      	bne.n	c0d0375e <io_event+0x45a>
c0d03722:	f003 fb73 	bl	c0d06e0c <os_perso_isonboarded>
c0d03726:	28aa      	cmp	r0, #170	; 0xaa
c0d03728:	d103      	bne.n	c0d03732 <io_event+0x42e>
c0d0372a:	f003 fb91 	bl	c0d06e50 <os_global_pin_is_validated>
c0d0372e:	28aa      	cmp	r0, #170	; 0xaa
c0d03730:	d115      	bne.n	c0d0375e <io_event+0x45a>
c0d03732:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d03734:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d03736:	0150      	lsls	r0, r2, #5
c0d03738:	1808      	adds	r0, r1, r0
c0d0373a:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d0373c:	2b00      	cmp	r3, #0
c0d0373e:	d004      	beq.n	c0d0374a <io_event+0x446>
c0d03740:	4798      	blx	r3
c0d03742:	2800      	cmp	r0, #0
c0d03744:	d007      	beq.n	c0d03756 <io_event+0x452>
c0d03746:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d03748:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d0374a:	2801      	cmp	r0, #1
c0d0374c:	d101      	bne.n	c0d03752 <io_event+0x44e>
c0d0374e:	0150      	lsls	r0, r2, #5
c0d03750:	1808      	adds	r0, r1, r0
c0d03752:	f000 fa3a 	bl	c0d03bca <io_seproxyhal_display>
c0d03756:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d03758:	1c40      	adds	r0, r0, #1
c0d0375a:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d0375c:	e7d5      	b.n	c0d0370a <io_event+0x406>
c0d0375e:	202c      	movs	r0, #44	; 0x2c
c0d03760:	5c28      	ldrb	r0, [r5, r0]
c0d03762:	8ce9      	ldrh	r1, [r5, #38]	; 0x26
c0d03764:	4281      	cmp	r1, r0
c0d03766:	d301      	bcc.n	c0d0376c <io_event+0x468>
c0d03768:	f003 fbce 	bl	c0d06f08 <io_seph_is_status_sent>
c0d0376c:	f003 fbcc 	bl	c0d06f08 <io_seph_is_status_sent>
c0d03770:	2800      	cmp	r0, #0
c0d03772:	d101      	bne.n	c0d03778 <io_event+0x474>
c0d03774:	f002 fca6 	bl	c0d060c4 <io_seproxyhal_general_status>
c0d03778:	2001      	movs	r0, #1
c0d0377a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d0377c:	2005      	movs	r0, #5
c0d0377e:	f002 fc9a 	bl	c0d060b6 <os_longjmp>
c0d03782:	46c0      	nop			; (mov r8, r8)
c0d03784:	20000a2c 	.word	0x20000a2c
c0d03788:	20000cfc 	.word	0x20000cfc

c0d0378c <io_exchange_al>:
c0d0378c:	b5b0      	push	{r4, r5, r7, lr}
c0d0378e:	4605      	mov	r5, r0
c0d03790:	2003      	movs	r0, #3
c0d03792:	4028      	ands	r0, r5
c0d03794:	2400      	movs	r4, #0
c0d03796:	2801      	cmp	r0, #1
c0d03798:	d012      	beq.n	c0d037c0 <io_exchange_al+0x34>
c0d0379a:	2802      	cmp	r0, #2
c0d0379c:	d112      	bne.n	c0d037c4 <io_exchange_al+0x38>
c0d0379e:	2900      	cmp	r1, #0
c0d037a0:	d007      	beq.n	c0d037b2 <io_exchange_al+0x26>
c0d037a2:	480a      	ldr	r0, [pc, #40]	; (c0d037cc <io_exchange_al+0x40>)
c0d037a4:	f003 fba6 	bl	c0d06ef4 <io_seph_send>
c0d037a8:	0628      	lsls	r0, r5, #24
c0d037aa:	d509      	bpl.n	c0d037c0 <io_exchange_al+0x34>
c0d037ac:	f003 fb0c 	bl	c0d06dc8 <halt>
c0d037b0:	e006      	b.n	c0d037c0 <io_exchange_al+0x34>
c0d037b2:	2041      	movs	r0, #65	; 0x41
c0d037b4:	0081      	lsls	r1, r0, #2
c0d037b6:	4805      	ldr	r0, [pc, #20]	; (c0d037cc <io_exchange_al+0x40>)
c0d037b8:	2200      	movs	r2, #0
c0d037ba:	f003 fbaf 	bl	c0d06f1c <io_seph_recv>
c0d037be:	4604      	mov	r4, r0
c0d037c0:	4620      	mov	r0, r4
c0d037c2:	bdb0      	pop	{r4, r5, r7, pc}
c0d037c4:	2002      	movs	r0, #2
c0d037c6:	f002 fc76 	bl	c0d060b6 <os_longjmp>
c0d037ca:	46c0      	nop			; (mov r8, r8)
c0d037cc:	20000bf8 	.word	0x20000bf8

c0d037d0 <handle_generic_apdu>:
c0d037d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d037d2:	2a05      	cmp	r2, #5
c0d037d4:	d30f      	bcc.n	c0d037f6 <handle_generic_apdu+0x26>
c0d037d6:	460c      	mov	r4, r1
c0d037d8:	4f17      	ldr	r7, [pc, #92]	; (c0d03838 <handle_generic_apdu+0x68>)
c0d037da:	7838      	ldrb	r0, [r7, #0]
c0d037dc:	7879      	ldrb	r1, [r7, #1]
c0d037de:	0209      	lsls	r1, r1, #8
c0d037e0:	1808      	adds	r0, r1, r0
c0d037e2:	78b9      	ldrb	r1, [r7, #2]
c0d037e4:	78fa      	ldrb	r2, [r7, #3]
c0d037e6:	0212      	lsls	r2, r2, #8
c0d037e8:	1851      	adds	r1, r2, r1
c0d037ea:	0409      	lsls	r1, r1, #16
c0d037ec:	1808      	adds	r0, r1, r0
c0d037ee:	210f      	movs	r1, #15
c0d037f0:	0149      	lsls	r1, r1, #5
c0d037f2:	4288      	cmp	r0, r1
c0d037f4:	d000      	beq.n	c0d037f8 <handle_generic_apdu+0x28>
c0d037f6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d037f8:	2004      	movs	r0, #4
c0d037fa:	70f8      	strb	r0, [r7, #3]
c0d037fc:	2600      	movs	r6, #0
c0d037fe:	70be      	strb	r6, [r7, #2]
c0d03800:	2010      	movs	r0, #16
c0d03802:	7078      	strb	r0, [r7, #1]
c0d03804:	2031      	movs	r0, #49	; 0x31
c0d03806:	7038      	strb	r0, [r7, #0]
c0d03808:	1d7d      	adds	r5, r7, #5
c0d0380a:	2140      	movs	r1, #64	; 0x40
c0d0380c:	9100      	str	r1, [sp, #0]
c0d0380e:	4628      	mov	r0, r5
c0d03810:	f003 fb40 	bl	c0d06e94 <os_version>
c0d03814:	b2c1      	uxtb	r1, r0
c0d03816:	546e      	strb	r6, [r5, r1]
c0d03818:	7138      	strb	r0, [r7, #4]
c0d0381a:	186e      	adds	r6, r5, r1
c0d0381c:	1cb5      	adds	r5, r6, #2
c0d0381e:	4628      	mov	r0, r5
c0d03820:	9900      	ldr	r1, [sp, #0]
c0d03822:	f003 fb43 	bl	c0d06eac <os_seph_version>
c0d03826:	7070      	strb	r0, [r6, #1]
c0d03828:	b2c0      	uxtb	r0, r0
c0d0382a:	1828      	adds	r0, r5, r0
c0d0382c:	1bc0      	subs	r0, r0, r7
c0d0382e:	6020      	str	r0, [r4, #0]
c0d03830:	2009      	movs	r0, #9
c0d03832:	0300      	lsls	r0, r0, #12
c0d03834:	f002 fc3f 	bl	c0d060b6 <os_longjmp>
c0d03838:	20000bf8 	.word	0x20000bf8

c0d0383c <app_init>:
c0d0383c:	b510      	push	{r4, lr}
c0d0383e:	f002 fd19 	bl	c0d06274 <io_seproxyhal_init>
c0d03842:	f001 f9ab 	bl	c0d04b9c <init_zondax_canary>
c0d03846:	2400      	movs	r4, #0
c0d03848:	4620      	mov	r0, r4
c0d0384a:	f002 f943 	bl	c0d05ad4 <USB_power>
c0d0384e:	2001      	movs	r0, #1
c0d03850:	f002 f940 	bl	c0d05ad4 <USB_power>
c0d03854:	f000 ffda 	bl	c0d0480c <app_mode_reset>
c0d03858:	4620      	mov	r0, r4
c0d0385a:	4621      	mov	r1, r4
c0d0385c:	f000 f898 	bl	c0d03990 <view_idle_show>
c0d03860:	bd10      	pop	{r4, pc}
	...

c0d03864 <app_main>:
c0d03864:	b090      	sub	sp, #64	; 0x40
c0d03866:	2600      	movs	r6, #0
c0d03868:	960f      	str	r6, [sp, #60]	; 0x3c
c0d0386a:	960e      	str	r6, [sp, #56]	; 0x38
c0d0386c:	960d      	str	r6, [sp, #52]	; 0x34
c0d0386e:	f7fc ff91 	bl	c0d00794 <tx_initialize>
c0d03872:	4f39      	ldr	r7, [pc, #228]	; (c0d03958 <app_main+0xf4>)
c0d03874:	a80c      	add	r0, sp, #48	; 0x30
c0d03876:	8006      	strh	r6, [r0, #0]
c0d03878:	466d      	mov	r5, sp
c0d0387a:	4628      	mov	r0, r5
c0d0387c:	f003 fd24 	bl	c0d072c8 <setjmp>
c0d03880:	4604      	mov	r4, r0
c0d03882:	85a8      	strh	r0, [r5, #44]	; 0x2c
c0d03884:	b280      	uxth	r0, r0
c0d03886:	2805      	cmp	r0, #5
c0d03888:	d024      	beq.n	c0d038d4 <app_main+0x70>
c0d0388a:	2800      	cmp	r0, #0
c0d0388c:	d12a      	bne.n	c0d038e4 <app_main+0x80>
c0d0388e:	4668      	mov	r0, sp
c0d03890:	f003 fb5a 	bl	c0d06f48 <try_context_set>
c0d03894:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d03896:	910f      	str	r1, [sp, #60]	; 0x3c
c0d03898:	960e      	str	r6, [sp, #56]	; 0x38
c0d0389a:	900a      	str	r0, [sp, #40]	; 0x28
c0d0389c:	980d      	ldr	r0, [sp, #52]	; 0x34
c0d0389e:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0d038a0:	b2c0      	uxtb	r0, r0
c0d038a2:	b289      	uxth	r1, r1
c0d038a4:	f002 fe28 	bl	c0d064f8 <io_exchange>
c0d038a8:	900f      	str	r0, [sp, #60]	; 0x3c
c0d038aa:	960d      	str	r6, [sp, #52]	; 0x34
c0d038ac:	f001 f9fc 	bl	c0d04ca8 <check_app_canary>
c0d038b0:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0d038b2:	2800      	cmp	r0, #0
c0d038b4:	d049      	beq.n	c0d0394a <app_main+0xe6>
c0d038b6:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0d038b8:	ac0e      	add	r4, sp, #56	; 0x38
c0d038ba:	4621      	mov	r1, r4
c0d038bc:	f7ff ff88 	bl	c0d037d0 <handle_generic_apdu>
c0d038c0:	f001 f9f2 	bl	c0d04ca8 <check_app_canary>
c0d038c4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0d038c6:	a80d      	add	r0, sp, #52	; 0x34
c0d038c8:	4621      	mov	r1, r4
c0d038ca:	f7fc fce5 	bl	c0d00298 <handleApdu>
c0d038ce:	f001 f9eb 	bl	c0d04ca8 <check_app_canary>
c0d038d2:	e02c      	b.n	c0d0392e <app_main+0xca>
c0d038d4:	4668      	mov	r0, sp
c0d038d6:	8586      	strh	r6, [r0, #44]	; 0x2c
c0d038d8:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d038da:	f003 fb35 	bl	c0d06f48 <try_context_set>
c0d038de:	f7ff ffad 	bl	c0d0383c <app_init>
c0d038e2:	e7c7      	b.n	c0d03874 <app_main+0x10>
c0d038e4:	4668      	mov	r0, sp
c0d038e6:	8586      	strh	r6, [r0, #44]	; 0x2c
c0d038e8:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d038ea:	f003 fb2d 	bl	c0d06f48 <try_context_set>
c0d038ee:	200f      	movs	r0, #15
c0d038f0:	0300      	lsls	r0, r0, #12
c0d038f2:	4020      	ands	r0, r4
c0d038f4:	2109      	movs	r1, #9
c0d038f6:	0309      	lsls	r1, r1, #12
c0d038f8:	4288      	cmp	r0, r1
c0d038fa:	d003      	beq.n	c0d03904 <app_main+0xa0>
c0d038fc:	2103      	movs	r1, #3
c0d038fe:	0349      	lsls	r1, r1, #13
c0d03900:	4288      	cmp	r0, r1
c0d03902:	d102      	bne.n	c0d0390a <app_main+0xa6>
c0d03904:	a80c      	add	r0, sp, #48	; 0x30
c0d03906:	8004      	strh	r4, [r0, #0]
c0d03908:	e006      	b.n	c0d03918 <app_main+0xb4>
c0d0390a:	4812      	ldr	r0, [pc, #72]	; (c0d03954 <app_main+0xf0>)
c0d0390c:	4004      	ands	r4, r0
c0d0390e:	200d      	movs	r0, #13
c0d03910:	02c0      	lsls	r0, r0, #11
c0d03912:	1820      	adds	r0, r4, r0
c0d03914:	a90c      	add	r1, sp, #48	; 0x30
c0d03916:	8008      	strh	r0, [r1, #0]
c0d03918:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d0391a:	0a00      	lsrs	r0, r0, #8
c0d0391c:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d0391e:	5478      	strb	r0, [r7, r1]
c0d03920:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d03922:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d03924:	19c9      	adds	r1, r1, r7
c0d03926:	7048      	strb	r0, [r1, #1]
c0d03928:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d0392a:	1c80      	adds	r0, r0, #2
c0d0392c:	900e      	str	r0, [sp, #56]	; 0x38
c0d0392e:	f003 fb01 	bl	c0d06f34 <try_context_get>
c0d03932:	4669      	mov	r1, sp
c0d03934:	4288      	cmp	r0, r1
c0d03936:	d102      	bne.n	c0d0393e <app_main+0xda>
c0d03938:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d0393a:	f003 fb05 	bl	c0d06f48 <try_context_set>
c0d0393e:	4668      	mov	r0, sp
c0d03940:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d03942:	2800      	cmp	r0, #0
c0d03944:	d096      	beq.n	c0d03874 <app_main+0x10>
c0d03946:	f002 fbb6 	bl	c0d060b6 <os_longjmp>
c0d0394a:	4801      	ldr	r0, [pc, #4]	; (c0d03950 <app_main+0xec>)
c0d0394c:	f002 fbb3 	bl	c0d060b6 <os_longjmp>
c0d03950:	00006982 	.word	0x00006982
c0d03954:	000007ff 	.word	0x000007ff
c0d03958:	20000bf8 	.word	0x20000bf8

c0d0395c <h_paging_init>:
c0d0395c:	b580      	push	{r7, lr}
c0d0395e:	4806      	ldr	r0, [pc, #24]	; (c0d03978 <h_paging_init+0x1c>)
c0d03960:	4478      	add	r0, pc
c0d03962:	f001 f9b1 	bl	c0d04cc8 <zemu_log_stack>
c0d03966:	4802      	ldr	r0, [pc, #8]	; (c0d03970 <h_paging_init+0x14>)
c0d03968:	4902      	ldr	r1, [pc, #8]	; (c0d03974 <h_paging_init+0x18>)
c0d0396a:	6641      	str	r1, [r0, #100]	; 0x64
c0d0396c:	bd80      	pop	{r7, pc}
c0d0396e:	46c0      	nop			; (mov r8, r8)
c0d03970:	200009b0 	.word	0x200009b0
c0d03974:	0100ff00 	.word	0x0100ff00
c0d03978:	00005dee 	.word	0x00005dee

c0d0397c <view_init>:
c0d0397c:	b580      	push	{r7, lr}
c0d0397e:	4803      	ldr	r0, [pc, #12]	; (c0d0398c <view_init+0x10>)
c0d03980:	2150      	movs	r1, #80	; 0x50
c0d03982:	f003 fb67 	bl	c0d07054 <__aeabi_memclr>
c0d03986:	f002 fad5 	bl	c0d05f34 <ux_stack_push>
c0d0398a:	bd80      	pop	{r7, pc}
c0d0398c:	20000a2c 	.word	0x20000a2c

c0d03990 <view_idle_show>:
c0d03990:	b580      	push	{r7, lr}
c0d03992:	f000 fd3d 	bl	c0d04410 <view_idle_show_impl>
c0d03996:	bd80      	pop	{r7, pc}

c0d03998 <view_review_init>:
c0d03998:	b5b0      	push	{r4, r5, r7, lr}
c0d0399a:	2377      	movs	r3, #119	; 0x77
c0d0399c:	4c03      	ldr	r4, [pc, #12]	; (c0d039ac <view_review_init+0x14>)
c0d0399e:	2500      	movs	r5, #0
c0d039a0:	54e5      	strb	r5, [r4, r3]
c0d039a2:	4623      	mov	r3, r4
c0d039a4:	3348      	adds	r3, #72	; 0x48
c0d039a6:	c307      	stmia	r3!, {r0, r1, r2}
c0d039a8:	bdb0      	pop	{r4, r5, r7, pc}
c0d039aa:	46c0      	nop			; (mov r8, r8)
c0d039ac:	200009b0 	.word	0x200009b0

c0d039b0 <view_review_show>:
c0d039b0:	b580      	push	{r7, lr}
c0d039b2:	2100      	movs	r1, #0
c0d039b4:	460a      	mov	r2, r1
c0d039b6:	f000 fdc3 	bl	c0d04540 <view_review_show_impl>
c0d039ba:	bd80      	pop	{r7, pc}

c0d039bc <h_approve>:
c0d039bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d039be:	4827      	ldr	r0, [pc, #156]	; (c0d03a5c <h_approve+0xa0>)
c0d039c0:	4478      	add	r0, pc
c0d039c2:	f001 f981 	bl	c0d04cc8 <zemu_log_stack>
c0d039c6:	2000      	movs	r0, #0
c0d039c8:	4601      	mov	r1, r0
c0d039ca:	f000 fd21 	bl	c0d04410 <view_idle_show_impl>
c0d039ce:	4d20      	ldr	r5, [pc, #128]	; (c0d03a50 <h_approve+0x94>)
c0d039d0:	262c      	movs	r6, #44	; 0x2c
c0d039d2:	5daf      	ldrb	r7, [r5, r6]
c0d039d4:	8cec      	ldrh	r4, [r5, #38]	; 0x26
c0d039d6:	2180      	movs	r1, #128	; 0x80
c0d039d8:	2200      	movs	r2, #0
c0d039da:	481e      	ldr	r0, [pc, #120]	; (c0d03a54 <h_approve+0x98>)
c0d039dc:	f003 fa9e 	bl	c0d06f1c <io_seph_recv>
c0d039e0:	42bc      	cmp	r4, r7
c0d039e2:	d228      	bcs.n	c0d03a36 <h_approve+0x7a>
c0d039e4:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d039e6:	2800      	cmp	r0, #0
c0d039e8:	d0f2      	beq.n	c0d039d0 <h_approve+0x14>
c0d039ea:	5da8      	ldrb	r0, [r5, r6]
c0d039ec:	8ce9      	ldrh	r1, [r5, #38]	; 0x26
c0d039ee:	4281      	cmp	r1, r0
c0d039f0:	d2ee      	bcs.n	c0d039d0 <h_approve+0x14>
c0d039f2:	f003 fa89 	bl	c0d06f08 <io_seph_is_status_sent>
c0d039f6:	2800      	cmp	r0, #0
c0d039f8:	d1ea      	bne.n	c0d039d0 <h_approve+0x14>
c0d039fa:	f003 fa07 	bl	c0d06e0c <os_perso_isonboarded>
c0d039fe:	28aa      	cmp	r0, #170	; 0xaa
c0d03a00:	d103      	bne.n	c0d03a0a <h_approve+0x4e>
c0d03a02:	f003 fa25 	bl	c0d06e50 <os_global_pin_is_validated>
c0d03a06:	28aa      	cmp	r0, #170	; 0xaa
c0d03a08:	d1e2      	bne.n	c0d039d0 <h_approve+0x14>
c0d03a0a:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d03a0c:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d03a0e:	0150      	lsls	r0, r2, #5
c0d03a10:	1808      	adds	r0, r1, r0
c0d03a12:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d03a14:	2b00      	cmp	r3, #0
c0d03a16:	d004      	beq.n	c0d03a22 <h_approve+0x66>
c0d03a18:	4798      	blx	r3
c0d03a1a:	2800      	cmp	r0, #0
c0d03a1c:	d007      	beq.n	c0d03a2e <h_approve+0x72>
c0d03a1e:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d03a20:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d03a22:	2801      	cmp	r0, #1
c0d03a24:	d101      	bne.n	c0d03a2a <h_approve+0x6e>
c0d03a26:	0150      	lsls	r0, r2, #5
c0d03a28:	1808      	adds	r0, r1, r0
c0d03a2a:	f000 f8ce 	bl	c0d03bca <io_seproxyhal_display>
c0d03a2e:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d03a30:	1c40      	adds	r0, r0, #1
c0d03a32:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d03a34:	e7d6      	b.n	c0d039e4 <h_approve+0x28>
c0d03a36:	f002 fb45 	bl	c0d060c4 <io_seproxyhal_general_status>
c0d03a3a:	4806      	ldr	r0, [pc, #24]	; (c0d03a54 <h_approve+0x98>)
c0d03a3c:	2180      	movs	r1, #128	; 0x80
c0d03a3e:	2200      	movs	r2, #0
c0d03a40:	f003 fa6c 	bl	c0d06f1c <io_seph_recv>
c0d03a44:	4804      	ldr	r0, [pc, #16]	; (c0d03a58 <h_approve+0x9c>)
c0d03a46:	6d00      	ldr	r0, [r0, #80]	; 0x50
c0d03a48:	2800      	cmp	r0, #0
c0d03a4a:	d000      	beq.n	c0d03a4e <h_approve+0x92>
c0d03a4c:	4780      	blx	r0
c0d03a4e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d03a50:	20000a2c 	.word	0x20000a2c
c0d03a54:	2000092b 	.word	0x2000092b
c0d03a58:	200009b0 	.word	0x200009b0
c0d03a5c:	00005d9c 	.word	0x00005d9c

c0d03a60 <h_reject>:
c0d03a60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d03a62:	9000      	str	r0, [sp, #0]
c0d03a64:	482e      	ldr	r0, [pc, #184]	; (c0d03b20 <h_reject+0xc0>)
c0d03a66:	4478      	add	r0, pc
c0d03a68:	f001 f92e 	bl	c0d04cc8 <zemu_log_stack>
c0d03a6c:	2000      	movs	r0, #0
c0d03a6e:	4601      	mov	r1, r0
c0d03a70:	f000 fcce 	bl	c0d04410 <view_idle_show_impl>
c0d03a74:	4e27      	ldr	r6, [pc, #156]	; (c0d03b14 <h_reject+0xb4>)
c0d03a76:	272c      	movs	r7, #44	; 0x2c
c0d03a78:	5df4      	ldrb	r4, [r6, r7]
c0d03a7a:	8cf5      	ldrh	r5, [r6, #38]	; 0x26
c0d03a7c:	2180      	movs	r1, #128	; 0x80
c0d03a7e:	2200      	movs	r2, #0
c0d03a80:	4825      	ldr	r0, [pc, #148]	; (c0d03b18 <h_reject+0xb8>)
c0d03a82:	f003 fa4b 	bl	c0d06f1c <io_seph_recv>
c0d03a86:	42a5      	cmp	r5, r4
c0d03a88:	d228      	bcs.n	c0d03adc <h_reject+0x7c>
c0d03a8a:	6ab0      	ldr	r0, [r6, #40]	; 0x28
c0d03a8c:	2800      	cmp	r0, #0
c0d03a8e:	d0f2      	beq.n	c0d03a76 <h_reject+0x16>
c0d03a90:	5df0      	ldrb	r0, [r6, r7]
c0d03a92:	8cf1      	ldrh	r1, [r6, #38]	; 0x26
c0d03a94:	4281      	cmp	r1, r0
c0d03a96:	d2ee      	bcs.n	c0d03a76 <h_reject+0x16>
c0d03a98:	f003 fa36 	bl	c0d06f08 <io_seph_is_status_sent>
c0d03a9c:	2800      	cmp	r0, #0
c0d03a9e:	d1ea      	bne.n	c0d03a76 <h_reject+0x16>
c0d03aa0:	f003 f9b4 	bl	c0d06e0c <os_perso_isonboarded>
c0d03aa4:	28aa      	cmp	r0, #170	; 0xaa
c0d03aa6:	d103      	bne.n	c0d03ab0 <h_reject+0x50>
c0d03aa8:	f003 f9d2 	bl	c0d06e50 <os_global_pin_is_validated>
c0d03aac:	28aa      	cmp	r0, #170	; 0xaa
c0d03aae:	d1e2      	bne.n	c0d03a76 <h_reject+0x16>
c0d03ab0:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d03ab2:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d03ab4:	0150      	lsls	r0, r2, #5
c0d03ab6:	1808      	adds	r0, r1, r0
c0d03ab8:	6b33      	ldr	r3, [r6, #48]	; 0x30
c0d03aba:	2b00      	cmp	r3, #0
c0d03abc:	d004      	beq.n	c0d03ac8 <h_reject+0x68>
c0d03abe:	4798      	blx	r3
c0d03ac0:	2800      	cmp	r0, #0
c0d03ac2:	d007      	beq.n	c0d03ad4 <h_reject+0x74>
c0d03ac4:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d03ac6:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d03ac8:	2801      	cmp	r0, #1
c0d03aca:	d101      	bne.n	c0d03ad0 <h_reject+0x70>
c0d03acc:	0150      	lsls	r0, r2, #5
c0d03ace:	1808      	adds	r0, r1, r0
c0d03ad0:	f000 f87b 	bl	c0d03bca <io_seproxyhal_display>
c0d03ad4:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d03ad6:	1c40      	adds	r0, r0, #1
c0d03ad8:	84f0      	strh	r0, [r6, #38]	; 0x26
c0d03ada:	e7d6      	b.n	c0d03a8a <h_reject+0x2a>
c0d03adc:	f002 faf2 	bl	c0d060c4 <io_seproxyhal_general_status>
c0d03ae0:	480d      	ldr	r0, [pc, #52]	; (c0d03b18 <h_reject+0xb8>)
c0d03ae2:	2180      	movs	r1, #128	; 0x80
c0d03ae4:	2200      	movs	r2, #0
c0d03ae6:	f003 fa19 	bl	c0d06f1c <io_seph_recv>
c0d03aea:	2004      	movs	r0, #4
c0d03aec:	43c0      	mvns	r0, r0
c0d03aee:	9900      	ldr	r1, [sp, #0]
c0d03af0:	4201      	tst	r1, r0
c0d03af2:	d00d      	beq.n	c0d03b10 <h_reject+0xb0>
c0d03af4:	2041      	movs	r0, #65	; 0x41
c0d03af6:	0081      	lsls	r1, r0, #2
c0d03af8:	4c08      	ldr	r4, [pc, #32]	; (c0d03b1c <h_reject+0xbc>)
c0d03afa:	4620      	mov	r0, r4
c0d03afc:	f003 fac0 	bl	c0d07080 <explicit_bzero>
c0d03b00:	2086      	movs	r0, #134	; 0x86
c0d03b02:	7060      	strb	r0, [r4, #1]
c0d03b04:	2069      	movs	r0, #105	; 0x69
c0d03b06:	7020      	strb	r0, [r4, #0]
c0d03b08:	2020      	movs	r0, #32
c0d03b0a:	2102      	movs	r1, #2
c0d03b0c:	f002 fcf4 	bl	c0d064f8 <io_exchange>
c0d03b10:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d03b12:	46c0      	nop			; (mov r8, r8)
c0d03b14:	20000a2c 	.word	0x20000a2c
c0d03b18:	2000092b 	.word	0x2000092b
c0d03b1c:	20000bf8 	.word	0x20000bf8
c0d03b20:	00005d00 	.word	0x00005d00

c0d03b24 <h_error_accept>:
c0d03b24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d03b26:	2000      	movs	r0, #0
c0d03b28:	4601      	mov	r1, r0
c0d03b2a:	f000 fc71 	bl	c0d04410 <view_idle_show_impl>
c0d03b2e:	4d22      	ldr	r5, [pc, #136]	; (c0d03bb8 <h_error_accept+0x94>)
c0d03b30:	262c      	movs	r6, #44	; 0x2c
c0d03b32:	5daf      	ldrb	r7, [r5, r6]
c0d03b34:	8cec      	ldrh	r4, [r5, #38]	; 0x26
c0d03b36:	2180      	movs	r1, #128	; 0x80
c0d03b38:	2200      	movs	r2, #0
c0d03b3a:	4820      	ldr	r0, [pc, #128]	; (c0d03bbc <h_error_accept+0x98>)
c0d03b3c:	f003 f9ee 	bl	c0d06f1c <io_seph_recv>
c0d03b40:	42bc      	cmp	r4, r7
c0d03b42:	d228      	bcs.n	c0d03b96 <h_error_accept+0x72>
c0d03b44:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d03b46:	2800      	cmp	r0, #0
c0d03b48:	d0f2      	beq.n	c0d03b30 <h_error_accept+0xc>
c0d03b4a:	5da8      	ldrb	r0, [r5, r6]
c0d03b4c:	8ce9      	ldrh	r1, [r5, #38]	; 0x26
c0d03b4e:	4281      	cmp	r1, r0
c0d03b50:	d2ee      	bcs.n	c0d03b30 <h_error_accept+0xc>
c0d03b52:	f003 f9d9 	bl	c0d06f08 <io_seph_is_status_sent>
c0d03b56:	2800      	cmp	r0, #0
c0d03b58:	d1ea      	bne.n	c0d03b30 <h_error_accept+0xc>
c0d03b5a:	f003 f957 	bl	c0d06e0c <os_perso_isonboarded>
c0d03b5e:	28aa      	cmp	r0, #170	; 0xaa
c0d03b60:	d103      	bne.n	c0d03b6a <h_error_accept+0x46>
c0d03b62:	f003 f975 	bl	c0d06e50 <os_global_pin_is_validated>
c0d03b66:	28aa      	cmp	r0, #170	; 0xaa
c0d03b68:	d1e2      	bne.n	c0d03b30 <h_error_accept+0xc>
c0d03b6a:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d03b6c:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d03b6e:	0150      	lsls	r0, r2, #5
c0d03b70:	1808      	adds	r0, r1, r0
c0d03b72:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d03b74:	2b00      	cmp	r3, #0
c0d03b76:	d004      	beq.n	c0d03b82 <h_error_accept+0x5e>
c0d03b78:	4798      	blx	r3
c0d03b7a:	2800      	cmp	r0, #0
c0d03b7c:	d007      	beq.n	c0d03b8e <h_error_accept+0x6a>
c0d03b7e:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d03b80:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d03b82:	2801      	cmp	r0, #1
c0d03b84:	d101      	bne.n	c0d03b8a <h_error_accept+0x66>
c0d03b86:	0150      	lsls	r0, r2, #5
c0d03b88:	1808      	adds	r0, r1, r0
c0d03b8a:	f000 f81e 	bl	c0d03bca <io_seproxyhal_display>
c0d03b8e:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d03b90:	1c40      	adds	r0, r0, #1
c0d03b92:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d03b94:	e7d6      	b.n	c0d03b44 <h_error_accept+0x20>
c0d03b96:	f002 fa95 	bl	c0d060c4 <io_seproxyhal_general_status>
c0d03b9a:	4808      	ldr	r0, [pc, #32]	; (c0d03bbc <h_error_accept+0x98>)
c0d03b9c:	2180      	movs	r1, #128	; 0x80
c0d03b9e:	2200      	movs	r2, #0
c0d03ba0:	f003 f9bc 	bl	c0d06f1c <io_seph_recv>
c0d03ba4:	4806      	ldr	r0, [pc, #24]	; (c0d03bc0 <h_error_accept+0x9c>)
c0d03ba6:	2184      	movs	r1, #132	; 0x84
c0d03ba8:	7041      	strb	r1, [r0, #1]
c0d03baa:	2169      	movs	r1, #105	; 0x69
c0d03bac:	7001      	strb	r1, [r0, #0]
c0d03bae:	2020      	movs	r0, #32
c0d03bb0:	2102      	movs	r1, #2
c0d03bb2:	f002 fca1 	bl	c0d064f8 <io_exchange>
c0d03bb6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d03bb8:	20000a2c 	.word	0x20000a2c
c0d03bbc:	2000092b 	.word	0x2000092b
c0d03bc0:	20000bf8 	.word	0x20000bf8

c0d03bc4 <inspect_init>:
c0d03bc4:	4770      	bx	lr

c0d03bc6 <h_paging_intro_screen>:
c0d03bc6:	2000      	movs	r0, #0
c0d03bc8:	4770      	bx	lr

c0d03bca <io_seproxyhal_display>:
c0d03bca:	b580      	push	{r7, lr}
c0d03bcc:	f002 fbc2 	bl	c0d06354 <io_seproxyhal_display_default>
c0d03bd0:	bd80      	pop	{r7, pc}
	...

c0d03bd4 <view_error_show>:
c0d03bd4:	b510      	push	{r4, lr}
c0d03bd6:	4c08      	ldr	r4, [pc, #32]	; (c0d03bf8 <view_error_show+0x24>)
c0d03bd8:	4908      	ldr	r1, [pc, #32]	; (c0d03bfc <view_error_show+0x28>)
c0d03bda:	4479      	add	r1, pc
c0d03bdc:	2206      	movs	r2, #6
c0d03bde:	4620      	mov	r0, r4
c0d03be0:	f003 fa3e 	bl	c0d07060 <__aeabi_memcpy>
c0d03be4:	3412      	adds	r4, #18
c0d03be6:	4906      	ldr	r1, [pc, #24]	; (c0d03c00 <view_error_show+0x2c>)
c0d03be8:	4479      	add	r1, pc
c0d03bea:	220d      	movs	r2, #13
c0d03bec:	4620      	mov	r0, r4
c0d03bee:	f003 fa37 	bl	c0d07060 <__aeabi_memcpy>
c0d03bf2:	f000 fc31 	bl	c0d04458 <view_error_show_impl>
c0d03bf6:	bd10      	pop	{r4, pc}
c0d03bf8:	200009b0 	.word	0x200009b0
c0d03bfc:	00003ec8 	.word	0x00003ec8
c0d03c00:	00005ca8 	.word	0x00005ca8

c0d03c04 <view_custom_error_show>:
c0d03c04:	b570      	push	{r4, r5, r6, lr}
c0d03c06:	460c      	mov	r4, r1
c0d03c08:	4603      	mov	r3, r0
c0d03c0a:	4d09      	ldr	r5, [pc, #36]	; (c0d03c30 <view_custom_error_show+0x2c>)
c0d03c0c:	2112      	movs	r1, #18
c0d03c0e:	4e09      	ldr	r6, [pc, #36]	; (c0d03c34 <view_custom_error_show+0x30>)
c0d03c10:	447e      	add	r6, pc
c0d03c12:	4628      	mov	r0, r5
c0d03c14:	4632      	mov	r2, r6
c0d03c16:	f002 fefb 	bl	c0d06a10 <snprintf>
c0d03c1a:	3512      	adds	r5, #18
c0d03c1c:	2123      	movs	r1, #35	; 0x23
c0d03c1e:	4628      	mov	r0, r5
c0d03c20:	4632      	mov	r2, r6
c0d03c22:	4623      	mov	r3, r4
c0d03c24:	f002 fef4 	bl	c0d06a10 <snprintf>
c0d03c28:	f000 fc80 	bl	c0d0452c <view_custom_error_show_impl>
c0d03c2c:	bd70      	pop	{r4, r5, r6, pc}
c0d03c2e:	46c0      	nop			; (mov r8, r8)
c0d03c30:	200009b0 	.word	0x200009b0
c0d03c34:	00003fae 	.word	0x00003fae

c0d03c38 <h_paging_can_increase>:
c0d03c38:	b510      	push	{r4, lr}
c0d03c3a:	2067      	movs	r0, #103	; 0x67
c0d03c3c:	490f      	ldr	r1, [pc, #60]	; (c0d03c7c <h_paging_can_increase+0x44>)
c0d03c3e:	5c0a      	ldrb	r2, [r1, r0]
c0d03c40:	2066      	movs	r0, #102	; 0x66
c0d03c42:	5c08      	ldrb	r0, [r1, r0]
c0d03c44:	1c43      	adds	r3, r0, #1
c0d03c46:	480f      	ldr	r0, [pc, #60]	; (c0d03c84 <h_paging_can_increase+0x4c>)
c0d03c48:	4478      	add	r0, pc
c0d03c4a:	2401      	movs	r4, #1
c0d03c4c:	4293      	cmp	r3, r2
c0d03c4e:	d310      	bcc.n	c0d03c72 <h_paging_can_increase+0x3a>
c0d03c50:	2265      	movs	r2, #101	; 0x65
c0d03c52:	5c8a      	ldrb	r2, [r1, r2]
c0d03c54:	2a00      	cmp	r2, #0
c0d03c56:	d009      	beq.n	c0d03c6c <h_paging_can_increase+0x34>
c0d03c58:	4b09      	ldr	r3, [pc, #36]	; (c0d03c80 <h_paging_can_increase+0x48>)
c0d03c5a:	681b      	ldr	r3, [r3, #0]
c0d03c5c:	2b04      	cmp	r3, #4
c0d03c5e:	d000      	beq.n	c0d03c62 <h_paging_can_increase+0x2a>
c0d03c60:	1c52      	adds	r2, r2, #1
c0d03c62:	1e52      	subs	r2, r2, #1
c0d03c64:	2364      	movs	r3, #100	; 0x64
c0d03c66:	5cc9      	ldrb	r1, [r1, r3]
c0d03c68:	428a      	cmp	r2, r1
c0d03c6a:	dc02      	bgt.n	c0d03c72 <h_paging_can_increase+0x3a>
c0d03c6c:	2400      	movs	r4, #0
c0d03c6e:	4806      	ldr	r0, [pc, #24]	; (c0d03c88 <h_paging_can_increase+0x50>)
c0d03c70:	4478      	add	r0, pc
c0d03c72:	f001 f829 	bl	c0d04cc8 <zemu_log_stack>
c0d03c76:	4620      	mov	r0, r4
c0d03c78:	bd10      	pop	{r4, pc}
c0d03c7a:	46c0      	nop			; (mov r8, r8)
c0d03c7c:	200009b0 	.word	0x200009b0
c0d03c80:	200009ac 	.word	0x200009ac
c0d03c84:	00005b27 	.word	0x00005b27
c0d03c88:	00005b15 	.word	0x00005b15

c0d03c8c <h_paging_increase>:
c0d03c8c:	b510      	push	{r4, lr}
c0d03c8e:	4812      	ldr	r0, [pc, #72]	; (c0d03cd8 <h_paging_increase+0x4c>)
c0d03c90:	4478      	add	r0, pc
c0d03c92:	f001 f819 	bl	c0d04cc8 <zemu_log_stack>
c0d03c96:	2167      	movs	r1, #103	; 0x67
c0d03c98:	480d      	ldr	r0, [pc, #52]	; (c0d03cd0 <h_paging_increase+0x44>)
c0d03c9a:	5c43      	ldrb	r3, [r0, r1]
c0d03c9c:	2166      	movs	r1, #102	; 0x66
c0d03c9e:	5c42      	ldrb	r2, [r0, r1]
c0d03ca0:	1c52      	adds	r2, r2, #1
c0d03ca2:	429a      	cmp	r2, r3
c0d03ca4:	d201      	bcs.n	c0d03caa <h_paging_increase+0x1e>
c0d03ca6:	5442      	strb	r2, [r0, r1]
c0d03ca8:	bd10      	pop	{r4, pc}
c0d03caa:	2265      	movs	r2, #101	; 0x65
c0d03cac:	5c82      	ldrb	r2, [r0, r2]
c0d03cae:	2a00      	cmp	r2, #0
c0d03cb0:	d00d      	beq.n	c0d03cce <h_paging_increase+0x42>
c0d03cb2:	4b08      	ldr	r3, [pc, #32]	; (c0d03cd4 <h_paging_increase+0x48>)
c0d03cb4:	681b      	ldr	r3, [r3, #0]
c0d03cb6:	2b04      	cmp	r3, #4
c0d03cb8:	d000      	beq.n	c0d03cbc <h_paging_increase+0x30>
c0d03cba:	1c52      	adds	r2, r2, #1
c0d03cbc:	1e54      	subs	r4, r2, #1
c0d03cbe:	2264      	movs	r2, #100	; 0x64
c0d03cc0:	5c83      	ldrb	r3, [r0, r2]
c0d03cc2:	429c      	cmp	r4, r3
c0d03cc4:	dd03      	ble.n	c0d03cce <h_paging_increase+0x42>
c0d03cc6:	2400      	movs	r4, #0
c0d03cc8:	5444      	strb	r4, [r0, r1]
c0d03cca:	1c59      	adds	r1, r3, #1
c0d03ccc:	5481      	strb	r1, [r0, r2]
c0d03cce:	bd10      	pop	{r4, pc}
c0d03cd0:	200009b0 	.word	0x200009b0
c0d03cd4:	200009ac 	.word	0x200009ac
c0d03cd8:	00005b0e 	.word	0x00005b0e

c0d03cdc <h_paging_can_decrease>:
c0d03cdc:	b510      	push	{r4, lr}
c0d03cde:	2064      	movs	r0, #100	; 0x64
c0d03ce0:	4908      	ldr	r1, [pc, #32]	; (c0d03d04 <h_paging_can_decrease+0x28>)
c0d03ce2:	5c08      	ldrb	r0, [r1, r0]
c0d03ce4:	2266      	movs	r2, #102	; 0x66
c0d03ce6:	5c8c      	ldrb	r4, [r1, r2]
c0d03ce8:	4304      	orrs	r4, r0
c0d03cea:	d002      	beq.n	c0d03cf2 <h_paging_can_decrease+0x16>
c0d03cec:	4807      	ldr	r0, [pc, #28]	; (c0d03d0c <h_paging_can_decrease+0x30>)
c0d03cee:	4478      	add	r0, pc
c0d03cf0:	e001      	b.n	c0d03cf6 <h_paging_can_decrease+0x1a>
c0d03cf2:	4805      	ldr	r0, [pc, #20]	; (c0d03d08 <h_paging_can_decrease+0x2c>)
c0d03cf4:	4478      	add	r0, pc
c0d03cf6:	f000 ffe7 	bl	c0d04cc8 <zemu_log_stack>
c0d03cfa:	1e60      	subs	r0, r4, #1
c0d03cfc:	4184      	sbcs	r4, r0
c0d03cfe:	4620      	mov	r0, r4
c0d03d00:	bd10      	pop	{r4, pc}
c0d03d02:	46c0      	nop			; (mov r8, r8)
c0d03d04:	200009b0 	.word	0x200009b0
c0d03d08:	00005ad2 	.word	0x00005ad2
c0d03d0c:	00005ac2 	.word	0x00005ac2

c0d03d10 <h_paging_decrease>:
c0d03d10:	b5b0      	push	{r4, r5, r7, lr}
c0d03d12:	2466      	movs	r4, #102	; 0x66
c0d03d14:	4d0b      	ldr	r5, [pc, #44]	; (c0d03d44 <h_paging_decrease+0x34>)
c0d03d16:	5d28      	ldrb	r0, [r5, r4]
c0d03d18:	2800      	cmp	r0, #0
c0d03d1a:	d006      	beq.n	c0d03d2a <h_paging_decrease+0x1a>
c0d03d1c:	1e40      	subs	r0, r0, #1
c0d03d1e:	5528      	strb	r0, [r5, r4]
c0d03d20:	4809      	ldr	r0, [pc, #36]	; (c0d03d48 <h_paging_decrease+0x38>)
c0d03d22:	4478      	add	r0, pc
c0d03d24:	f000 ffd0 	bl	c0d04cc8 <zemu_log_stack>
c0d03d28:	bdb0      	pop	{r4, r5, r7, pc}
c0d03d2a:	2064      	movs	r0, #100	; 0x64
c0d03d2c:	5c29      	ldrb	r1, [r5, r0]
c0d03d2e:	2900      	cmp	r1, #0
c0d03d30:	d007      	beq.n	c0d03d42 <h_paging_decrease+0x32>
c0d03d32:	1e49      	subs	r1, r1, #1
c0d03d34:	5429      	strb	r1, [r5, r0]
c0d03d36:	4805      	ldr	r0, [pc, #20]	; (c0d03d4c <h_paging_decrease+0x3c>)
c0d03d38:	4478      	add	r0, pc
c0d03d3a:	f000 ffc5 	bl	c0d04cc8 <zemu_log_stack>
c0d03d3e:	20ff      	movs	r0, #255	; 0xff
c0d03d40:	5528      	strb	r0, [r5, r4]
c0d03d42:	bdb0      	pop	{r4, r5, r7, pc}
c0d03d44:	200009b0 	.word	0x200009b0
c0d03d48:	00005abd 	.word	0x00005abd
c0d03d4c:	00005aae 	.word	0x00005aae

c0d03d50 <is_accept_item>:
c0d03d50:	2065      	movs	r0, #101	; 0x65
c0d03d52:	4904      	ldr	r1, [pc, #16]	; (c0d03d64 <is_accept_item+0x14>)
c0d03d54:	5c08      	ldrb	r0, [r1, r0]
c0d03d56:	2264      	movs	r2, #100	; 0x64
c0d03d58:	5c89      	ldrb	r1, [r1, r2]
c0d03d5a:	43c9      	mvns	r1, r1
c0d03d5c:	1809      	adds	r1, r1, r0
c0d03d5e:	4248      	negs	r0, r1
c0d03d60:	4148      	adcs	r0, r1
c0d03d62:	4770      	bx	lr
c0d03d64:	200009b0 	.word	0x200009b0

c0d03d68 <set_accept_item>:
c0d03d68:	2066      	movs	r0, #102	; 0x66
c0d03d6a:	4904      	ldr	r1, [pc, #16]	; (c0d03d7c <set_accept_item+0x14>)
c0d03d6c:	2200      	movs	r2, #0
c0d03d6e:	540a      	strb	r2, [r1, r0]
c0d03d70:	2065      	movs	r0, #101	; 0x65
c0d03d72:	5c08      	ldrb	r0, [r1, r0]
c0d03d74:	1e40      	subs	r0, r0, #1
c0d03d76:	2264      	movs	r2, #100	; 0x64
c0d03d78:	5488      	strb	r0, [r1, r2]
c0d03d7a:	4770      	bx	lr
c0d03d7c:	200009b0 	.word	0x200009b0

c0d03d80 <is_reject_item>:
c0d03d80:	2065      	movs	r0, #101	; 0x65
c0d03d82:	4904      	ldr	r1, [pc, #16]	; (c0d03d94 <is_reject_item+0x14>)
c0d03d84:	5c08      	ldrb	r0, [r1, r0]
c0d03d86:	2264      	movs	r2, #100	; 0x64
c0d03d88:	5c89      	ldrb	r1, [r1, r2]
c0d03d8a:	1a09      	subs	r1, r1, r0
c0d03d8c:	4248      	negs	r0, r1
c0d03d8e:	4148      	adcs	r0, r1
c0d03d90:	4770      	bx	lr
c0d03d92:	46c0      	nop			; (mov r8, r8)
c0d03d94:	200009b0 	.word	0x200009b0

c0d03d98 <h_review_update_data>:
c0d03d98:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d03d9a:	b08d      	sub	sp, #52	; 0x34
c0d03d9c:	4e64      	ldr	r6, [pc, #400]	; (c0d03f30 <h_review_update_data+0x198>)
c0d03d9e:	6cf1      	ldr	r1, [r6, #76]	; 0x4c
c0d03da0:	2900      	cmp	r1, #0
c0d03da2:	d01b      	beq.n	c0d03ddc <h_review_update_data+0x44>
c0d03da4:	6cb0      	ldr	r0, [r6, #72]	; 0x48
c0d03da6:	2800      	cmp	r0, #0
c0d03da8:	d01b      	beq.n	c0d03de2 <h_review_update_data+0x4a>
c0d03daa:	2467      	movs	r4, #103	; 0x67
c0d03dac:	2001      	movs	r0, #1
c0d03dae:	9007      	str	r0, [sp, #28]
c0d03db0:	5530      	strb	r0, [r6, r4]
c0d03db2:	2564      	movs	r5, #100	; 0x64
c0d03db4:	5d70      	ldrb	r0, [r6, r5]
c0d03db6:	2765      	movs	r7, #101	; 0x65
c0d03db8:	5df2      	ldrb	r2, [r6, r7]
c0d03dba:	1e53      	subs	r3, r2, #1
c0d03dbc:	4283      	cmp	r3, r0
c0d03dbe:	d116      	bne.n	c0d03dee <h_review_update_data+0x56>
c0d03dc0:	2400      	movs	r4, #0
c0d03dc2:	7034      	strb	r4, [r6, #0]
c0d03dc4:	485b      	ldr	r0, [pc, #364]	; (c0d03f34 <h_review_update_data+0x19c>)
c0d03dc6:	6800      	ldr	r0, [r0, #0]
c0d03dc8:	2804      	cmp	r0, #4
c0d03dca:	d121      	bne.n	c0d03e10 <h_review_update_data+0x78>
c0d03dcc:	4630      	mov	r0, r6
c0d03dce:	3012      	adds	r0, #18
c0d03dd0:	495e      	ldr	r1, [pc, #376]	; (c0d03f4c <h_review_update_data+0x1b4>)
c0d03dd2:	4479      	add	r1, pc
c0d03dd4:	2203      	movs	r2, #3
c0d03dd6:	f003 f943 	bl	c0d07060 <__aeabi_memcpy>
c0d03dda:	e021      	b.n	c0d03e20 <h_review_update_data+0x88>
c0d03ddc:	4859      	ldr	r0, [pc, #356]	; (c0d03f44 <h_review_update_data+0x1ac>)
c0d03dde:	4478      	add	r0, pc
c0d03de0:	e001      	b.n	c0d03de6 <h_review_update_data+0x4e>
c0d03de2:	4859      	ldr	r0, [pc, #356]	; (c0d03f48 <h_review_update_data+0x1b0>)
c0d03de4:	4478      	add	r0, pc
c0d03de6:	f000 ff6f 	bl	c0d04cc8 <zemu_log_stack>
c0d03dea:	2005      	movs	r0, #5
c0d03dec:	e021      	b.n	c0d03e32 <h_review_update_data+0x9a>
c0d03dee:	9705      	str	r7, [sp, #20]
c0d03df0:	4290      	cmp	r0, r2
c0d03df2:	d120      	bne.n	c0d03e36 <h_review_update_data+0x9e>
c0d03df4:	2400      	movs	r4, #0
c0d03df6:	7034      	strb	r4, [r6, #0]
c0d03df8:	4630      	mov	r0, r6
c0d03dfa:	3012      	adds	r0, #18
c0d03dfc:	4956      	ldr	r1, [pc, #344]	; (c0d03f58 <h_review_update_data+0x1c0>)
c0d03dfe:	4479      	add	r1, pc
c0d03e00:	2207      	movs	r2, #7
c0d03e02:	f003 f92d 	bl	c0d07060 <__aeabi_memcpy>
c0d03e06:	f000 fc0d 	bl	c0d04624 <splitValueField>
c0d03e0a:	4854      	ldr	r0, [pc, #336]	; (c0d03f5c <h_review_update_data+0x1c4>)
c0d03e0c:	4478      	add	r0, pc
c0d03e0e:	e00b      	b.n	c0d03e28 <h_review_update_data+0x90>
c0d03e10:	2045      	movs	r0, #69	; 0x45
c0d03e12:	8330      	strh	r0, [r6, #24]
c0d03e14:	4848      	ldr	r0, [pc, #288]	; (c0d03f38 <h_review_update_data+0x1a0>)
c0d03e16:	82f0      	strh	r0, [r6, #22]
c0d03e18:	4848      	ldr	r0, [pc, #288]	; (c0d03f3c <h_review_update_data+0x1a4>)
c0d03e1a:	82b0      	strh	r0, [r6, #20]
c0d03e1c:	4848      	ldr	r0, [pc, #288]	; (c0d03f40 <h_review_update_data+0x1a8>)
c0d03e1e:	8270      	strh	r0, [r6, #18]
c0d03e20:	f000 fc00 	bl	c0d04624 <splitValueField>
c0d03e24:	484a      	ldr	r0, [pc, #296]	; (c0d03f50 <h_review_update_data+0x1b8>)
c0d03e26:	4478      	add	r0, pc
c0d03e28:	f000 ff4e 	bl	c0d04cc8 <zemu_log_stack>
c0d03e2c:	2066      	movs	r0, #102	; 0x66
c0d03e2e:	5434      	strb	r4, [r6, r0]
c0d03e30:	2003      	movs	r0, #3
c0d03e32:	b00d      	add	sp, #52	; 0x34
c0d03e34:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d03e36:	462b      	mov	r3, r5
c0d03e38:	4630      	mov	r0, r6
c0d03e3a:	3065      	adds	r0, #101	; 0x65
c0d03e3c:	9004      	str	r0, [sp, #16]
c0d03e3e:	462f      	mov	r7, r5
c0d03e40:	940c      	str	r4, [sp, #48]	; 0x30
c0d03e42:	9306      	str	r3, [sp, #24]
c0d03e44:	9804      	ldr	r0, [sp, #16]
c0d03e46:	4788      	blx	r1
c0d03e48:	2803      	cmp	r0, #3
c0d03e4a:	d1f2      	bne.n	c0d03e32 <h_review_update_data+0x9a>
c0d03e4c:	463d      	mov	r5, r7
c0d03e4e:	57f3      	ldrsb	r3, [r6, r7]
c0d03e50:	6cb0      	ldr	r0, [r6, #72]	; 0x48
c0d03e52:	900b      	str	r0, [sp, #44]	; 0x2c
c0d03e54:	4634      	mov	r4, r6
c0d03e56:	3467      	adds	r4, #103	; 0x67
c0d03e58:	2100      	movs	r1, #0
c0d03e5a:	2023      	movs	r0, #35	; 0x23
c0d03e5c:	910a      	str	r1, [sp, #40]	; 0x28
c0d03e5e:	aa00      	add	r2, sp, #0
c0d03e60:	c213      	stmia	r2!, {r0, r1, r4}
c0d03e62:	4637      	mov	r7, r6
c0d03e64:	3712      	adds	r7, #18
c0d03e66:	2212      	movs	r2, #18
c0d03e68:	9309      	str	r3, [sp, #36]	; 0x24
c0d03e6a:	4618      	mov	r0, r3
c0d03e6c:	4631      	mov	r1, r6
c0d03e6e:	463b      	mov	r3, r7
c0d03e70:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
c0d03e72:	47a8      	blx	r5
c0d03e74:	2803      	cmp	r0, #3
c0d03e76:	d1dc      	bne.n	c0d03e32 <h_review_update_data+0x9a>
c0d03e78:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d03e7a:	b2c0      	uxtb	r0, r0
c0d03e7c:	900b      	str	r0, [sp, #44]	; 0x2c
c0d03e7e:	9807      	ldr	r0, [sp, #28]
c0d03e80:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d03e82:	5470      	strb	r0, [r6, r1]
c0d03e84:	f000 fc28 	bl	c0d046d8 <get_max_char_per_line>
c0d03e88:	6cb1      	ldr	r1, [r6, #72]	; 0x48
c0d03e8a:	9109      	str	r1, [sp, #36]	; 0x24
c0d03e8c:	9008      	str	r0, [sp, #32]
c0d03e8e:	9000      	str	r0, [sp, #0]
c0d03e90:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d03e92:	9001      	str	r0, [sp, #4]
c0d03e94:	9402      	str	r4, [sp, #8]
c0d03e96:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d03e98:	b240      	sxtb	r0, r0
c0d03e9a:	2212      	movs	r2, #18
c0d03e9c:	900b      	str	r0, [sp, #44]	; 0x2c
c0d03e9e:	4631      	mov	r1, r6
c0d03ea0:	463b      	mov	r3, r7
c0d03ea2:	9d09      	ldr	r5, [sp, #36]	; 0x24
c0d03ea4:	47a8      	blx	r5
c0d03ea6:	2803      	cmp	r0, #3
c0d03ea8:	d1c3      	bne.n	c0d03e32 <h_review_update_data+0x9a>
c0d03eaa:	2566      	movs	r5, #102	; 0x66
c0d03eac:	5d70      	ldrb	r0, [r6, r5]
c0d03eae:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d03eb0:	5c71      	ldrb	r1, [r6, r1]
c0d03eb2:	2900      	cmp	r1, #0
c0d03eb4:	d003      	beq.n	c0d03ebe <h_review_update_data+0x126>
c0d03eb6:	4288      	cmp	r0, r1
c0d03eb8:	d901      	bls.n	c0d03ebe <h_review_update_data+0x126>
c0d03eba:	1e48      	subs	r0, r1, #1
c0d03ebc:	5570      	strb	r0, [r6, r5]
c0d03ebe:	6cb1      	ldr	r1, [r6, #72]	; 0x48
c0d03ec0:	910a      	str	r1, [sp, #40]	; 0x28
c0d03ec2:	b2c0      	uxtb	r0, r0
c0d03ec4:	9908      	ldr	r1, [sp, #32]
c0d03ec6:	9100      	str	r1, [sp, #0]
c0d03ec8:	9001      	str	r0, [sp, #4]
c0d03eca:	9402      	str	r4, [sp, #8]
c0d03ecc:	2212      	movs	r2, #18
c0d03ece:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d03ed0:	4631      	mov	r1, r6
c0d03ed2:	463b      	mov	r3, r7
c0d03ed4:	9c0a      	ldr	r4, [sp, #40]	; 0x28
c0d03ed6:	47a0      	blx	r4
c0d03ed8:	2803      	cmp	r0, #3
c0d03eda:	d1aa      	bne.n	c0d03e32 <h_review_update_data+0x9a>
c0d03edc:	9905      	ldr	r1, [sp, #20]
c0d03ede:	5c70      	ldrb	r0, [r6, r1]
c0d03ee0:	1c40      	adds	r0, r0, #1
c0d03ee2:	5470      	strb	r0, [r6, r1]
c0d03ee4:	9c0c      	ldr	r4, [sp, #48]	; 0x30
c0d03ee6:	5d30      	ldrb	r0, [r6, r4]
c0d03ee8:	2802      	cmp	r0, #2
c0d03eea:	9f06      	ldr	r7, [sp, #24]
c0d03eec:	d313      	bcc.n	c0d03f16 <h_review_update_data+0x17e>
c0d03eee:	2712      	movs	r7, #18
c0d03ef0:	4630      	mov	r0, r6
c0d03ef2:	4639      	mov	r1, r7
c0d03ef4:	f003 fae4 	bl	c0d074c0 <strnlen>
c0d03ef8:	b2c1      	uxtb	r1, r0
c0d03efa:	2911      	cmp	r1, #17
c0d03efc:	d809      	bhi.n	c0d03f12 <h_review_update_data+0x17a>
c0d03efe:	5d72      	ldrb	r2, [r6, r5]
c0d03f00:	5d30      	ldrb	r0, [r6, r4]
c0d03f02:	9000      	str	r0, [sp, #0]
c0d03f04:	1870      	adds	r0, r6, r1
c0d03f06:	1a79      	subs	r1, r7, r1
c0d03f08:	1c53      	adds	r3, r2, #1
c0d03f0a:	4a12      	ldr	r2, [pc, #72]	; (c0d03f54 <h_review_update_data+0x1bc>)
c0d03f0c:	447a      	add	r2, pc
c0d03f0e:	f002 fd7f 	bl	c0d06a10 <snprintf>
c0d03f12:	5d30      	ldrb	r0, [r6, r4]
c0d03f14:	9f06      	ldr	r7, [sp, #24]
c0d03f16:	2800      	cmp	r0, #0
c0d03f18:	d106      	bne.n	c0d03f28 <h_review_update_data+0x190>
c0d03f1a:	f7ff feb7 	bl	c0d03c8c <h_paging_increase>
c0d03f1e:	5d30      	ldrb	r0, [r6, r4]
c0d03f20:	2800      	cmp	r0, #0
c0d03f22:	d101      	bne.n	c0d03f28 <h_review_update_data+0x190>
c0d03f24:	6cf1      	ldr	r1, [r6, #76]	; 0x4c
c0d03f26:	e78d      	b.n	c0d03e44 <h_review_update_data+0xac>
c0d03f28:	f000 fb9c 	bl	c0d04664 <splitValueAddress>
c0d03f2c:	e780      	b.n	c0d03e30 <h_review_update_data+0x98>
c0d03f2e:	46c0      	nop			; (mov r8, r8)
c0d03f30:	200009b0 	.word	0x200009b0
c0d03f34:	200009ac 	.word	0x200009ac
c0d03f38:	0000564f 	.word	0x0000564f
c0d03f3c:	00005250 	.word	0x00005250
c0d03f40:	00005041 	.word	0x00005041
c0d03f44:	00005a0f 	.word	0x00005a0f
c0d03f48:	00005a32 	.word	0x00005a32
c0d03f4c:	00005a69 	.word	0x00005a69
c0d03f50:	00005a18 	.word	0x00005a18
c0d03f54:	0000597b 	.word	0x0000597b
c0d03f58:	00005a61 	.word	0x00005a61
c0d03f5c:	00005a5a 	.word	0x00005a5a

c0d03f60 <h_paging_inspect_go_to_root_screen>:
c0d03f60:	2069      	movs	r0, #105	; 0x69
c0d03f62:	4905      	ldr	r1, [pc, #20]	; (c0d03f78 <h_paging_inspect_go_to_root_screen+0x18>)
c0d03f64:	5c0a      	ldrb	r2, [r1, r0]
c0d03f66:	1e50      	subs	r0, r2, #1
c0d03f68:	4182      	sbcs	r2, r0
c0d03f6a:	2073      	movs	r0, #115	; 0x73
c0d03f6c:	5c09      	ldrb	r1, [r1, r0]
c0d03f6e:	4248      	negs	r0, r1
c0d03f70:	4148      	adcs	r0, r1
c0d03f72:	4010      	ands	r0, r2
c0d03f74:	4770      	bx	lr
c0d03f76:	46c0      	nop			; (mov r8, r8)
c0d03f78:	200009b0 	.word	0x200009b0

c0d03f7c <h_paging_inspect_back_screen>:
c0d03f7c:	2074      	movs	r0, #116	; 0x74
c0d03f7e:	4907      	ldr	r1, [pc, #28]	; (c0d03f9c <h_paging_inspect_back_screen+0x20>)
c0d03f80:	5c08      	ldrb	r0, [r1, r0]
c0d03f82:	2273      	movs	r2, #115	; 0x73
c0d03f84:	5c8a      	ldrb	r2, [r1, r2]
c0d03f86:	43d2      	mvns	r2, r2
c0d03f88:	1810      	adds	r0, r2, r0
c0d03f8a:	4242      	negs	r2, r0
c0d03f8c:	4142      	adcs	r2, r0
c0d03f8e:	2069      	movs	r0, #105	; 0x69
c0d03f90:	5c08      	ldrb	r0, [r1, r0]
c0d03f92:	1e41      	subs	r1, r0, #1
c0d03f94:	4188      	sbcs	r0, r1
c0d03f96:	4010      	ands	r0, r2
c0d03f98:	4770      	bx	lr
c0d03f9a:	46c0      	nop			; (mov r8, r8)
c0d03f9c:	200009b0 	.word	0x200009b0

c0d03fa0 <os_exit>:
c0d03fa0:	2000      	movs	r0, #0
c0d03fa2:	f002 ff9b 	bl	c0d06edc <os_sched_exit>
	...

c0d03fa8 <should_show_skip_menu_right>:
c0d03fa8:	b510      	push	{r4, lr}
c0d03faa:	2177      	movs	r1, #119	; 0x77
c0d03fac:	4810      	ldr	r0, [pc, #64]	; (c0d03ff0 <should_show_skip_menu_right+0x48>)
c0d03fae:	5c41      	ldrb	r1, [r0, r1]
c0d03fb0:	2400      	movs	r4, #0
c0d03fb2:	2900      	cmp	r1, #0
c0d03fb4:	d019      	beq.n	c0d03fea <should_show_skip_menu_right+0x42>
c0d03fb6:	490f      	ldr	r1, [pc, #60]	; (c0d03ff4 <should_show_skip_menu_right+0x4c>)
c0d03fb8:	6809      	ldr	r1, [r1, #0]
c0d03fba:	1ec9      	subs	r1, r1, #3
c0d03fbc:	2901      	cmp	r1, #1
c0d03fbe:	d814      	bhi.n	c0d03fea <should_show_skip_menu_right+0x42>
c0d03fc0:	2166      	movs	r1, #102	; 0x66
c0d03fc2:	5c41      	ldrb	r1, [r0, r1]
c0d03fc4:	2900      	cmp	r1, #0
c0d03fc6:	d010      	beq.n	c0d03fea <should_show_skip_menu_right+0x42>
c0d03fc8:	2267      	movs	r2, #103	; 0x67
c0d03fca:	5c80      	ldrb	r0, [r0, r2]
c0d03fcc:	1e40      	subs	r0, r0, #1
c0d03fce:	4288      	cmp	r0, r1
c0d03fd0:	d10b      	bne.n	c0d03fea <should_show_skip_menu_right+0x42>
c0d03fd2:	f7ff febd 	bl	c0d03d50 <is_accept_item>
c0d03fd6:	2800      	cmp	r0, #0
c0d03fd8:	d107      	bne.n	c0d03fea <should_show_skip_menu_right+0x42>
c0d03fda:	f7ff fed1 	bl	c0d03d80 <is_reject_item>
c0d03fde:	2800      	cmp	r0, #0
c0d03fe0:	d103      	bne.n	c0d03fea <should_show_skip_menu_right+0x42>
c0d03fe2:	4805      	ldr	r0, [pc, #20]	; (c0d03ff8 <should_show_skip_menu_right+0x50>)
c0d03fe4:	7800      	ldrb	r0, [r0, #0]
c0d03fe6:	2401      	movs	r4, #1
c0d03fe8:	4044      	eors	r4, r0
c0d03fea:	2001      	movs	r0, #1
c0d03fec:	4020      	ands	r0, r4
c0d03fee:	bd10      	pop	{r4, pc}
c0d03ff0:	200009b0 	.word	0x200009b0
c0d03ff4:	200009ac 	.word	0x200009ac
c0d03ff8:	20000a28 	.word	0x20000a28

c0d03ffc <should_show_skip_menu_left>:
c0d03ffc:	b510      	push	{r4, lr}
c0d03ffe:	2177      	movs	r1, #119	; 0x77
c0d04000:	4810      	ldr	r0, [pc, #64]	; (c0d04044 <should_show_skip_menu_left+0x48>)
c0d04002:	5c41      	ldrb	r1, [r0, r1]
c0d04004:	2400      	movs	r4, #0
c0d04006:	2900      	cmp	r1, #0
c0d04008:	d018      	beq.n	c0d0403c <should_show_skip_menu_left+0x40>
c0d0400a:	490f      	ldr	r1, [pc, #60]	; (c0d04048 <should_show_skip_menu_left+0x4c>)
c0d0400c:	6809      	ldr	r1, [r1, #0]
c0d0400e:	1ec9      	subs	r1, r1, #3
c0d04010:	2901      	cmp	r1, #1
c0d04012:	d813      	bhi.n	c0d0403c <should_show_skip_menu_left+0x40>
c0d04014:	2164      	movs	r1, #100	; 0x64
c0d04016:	5c41      	ldrb	r1, [r0, r1]
c0d04018:	2900      	cmp	r1, #0
c0d0401a:	d00f      	beq.n	c0d0403c <should_show_skip_menu_left+0x40>
c0d0401c:	2166      	movs	r1, #102	; 0x66
c0d0401e:	5c40      	ldrb	r0, [r0, r1]
c0d04020:	2800      	cmp	r0, #0
c0d04022:	d10b      	bne.n	c0d0403c <should_show_skip_menu_left+0x40>
c0d04024:	f7ff fe94 	bl	c0d03d50 <is_accept_item>
c0d04028:	2800      	cmp	r0, #0
c0d0402a:	d107      	bne.n	c0d0403c <should_show_skip_menu_left+0x40>
c0d0402c:	f7ff fea8 	bl	c0d03d80 <is_reject_item>
c0d04030:	2800      	cmp	r0, #0
c0d04032:	d103      	bne.n	c0d0403c <should_show_skip_menu_left+0x40>
c0d04034:	4805      	ldr	r0, [pc, #20]	; (c0d0404c <should_show_skip_menu_left+0x50>)
c0d04036:	7800      	ldrb	r0, [r0, #0]
c0d04038:	2401      	movs	r4, #1
c0d0403a:	4044      	eors	r4, r0
c0d0403c:	2001      	movs	r0, #1
c0d0403e:	4020      	ands	r0, r4
c0d04040:	bd10      	pop	{r4, pc}
c0d04042:	46c0      	nop			; (mov r8, r8)
c0d04044:	200009b0 	.word	0x200009b0
c0d04048:	200009ac 	.word	0x200009ac
c0d0404c:	20000a28 	.word	0x20000a28

c0d04050 <idle_preprocessor>:
c0d04050:	b5b0      	push	{r4, r5, r7, lr}
c0d04052:	460c      	mov	r4, r1
c0d04054:	480c      	ldr	r0, [pc, #48]	; (c0d04088 <idle_preprocessor+0x38>)
c0d04056:	6880      	ldr	r0, [r0, #8]
c0d04058:	2801      	cmp	r0, #1
c0d0405a:	d113      	bne.n	c0d04084 <idle_preprocessor+0x34>
c0d0405c:	4d0b      	ldr	r5, [pc, #44]	; (c0d0408c <idle_preprocessor+0x3c>)
c0d0405e:	4628      	mov	r0, r5
c0d04060:	3012      	adds	r0, #18
c0d04062:	490e      	ldr	r1, [pc, #56]	; (c0d0409c <idle_preprocessor+0x4c>)
c0d04064:	4479      	add	r1, pc
c0d04066:	2209      	movs	r2, #9
c0d04068:	f002 fffa 	bl	c0d07060 <__aeabi_memcpy>
c0d0406c:	f000 fbd6 	bl	c0d0481c <app_mode_expert>
c0d04070:	2800      	cmp	r0, #0
c0d04072:	d007      	beq.n	c0d04084 <idle_preprocessor+0x34>
c0d04074:	2064      	movs	r0, #100	; 0x64
c0d04076:	8328      	strh	r0, [r5, #24]
c0d04078:	4805      	ldr	r0, [pc, #20]	; (c0d04090 <idle_preprocessor+0x40>)
c0d0407a:	82e8      	strh	r0, [r5, #22]
c0d0407c:	4805      	ldr	r0, [pc, #20]	; (c0d04094 <idle_preprocessor+0x44>)
c0d0407e:	82a8      	strh	r0, [r5, #20]
c0d04080:	4805      	ldr	r0, [pc, #20]	; (c0d04098 <idle_preprocessor+0x48>)
c0d04082:	8268      	strh	r0, [r5, #18]
c0d04084:	4620      	mov	r0, r4
c0d04086:	bdb0      	pop	{r4, r5, r7, pc}
c0d04088:	20000be4 	.word	0x20000be4
c0d0408c:	200009b0 	.word	0x200009b0
c0d04090:	0000656c 	.word	0x0000656c
c0d04094:	00006261 	.word	0x00006261
c0d04098:	00006e65 	.word	0x00006e65
c0d0409c:	00005cd4 	.word	0x00005cd4

c0d040a0 <view_prepro>:
c0d040a0:	b5b0      	push	{r4, r5, r7, lr}
c0d040a2:	4604      	mov	r4, r0
c0d040a4:	7840      	ldrb	r0, [r0, #1]
c0d040a6:	2871      	cmp	r0, #113	; 0x71
c0d040a8:	d01e      	beq.n	c0d040e8 <view_prepro+0x48>
c0d040aa:	2811      	cmp	r0, #17
c0d040ac:	d00b      	beq.n	c0d040c6 <view_prepro+0x26>
c0d040ae:	2812      	cmp	r0, #18
c0d040b0:	d013      	beq.n	c0d040da <view_prepro+0x3a>
c0d040b2:	2810      	cmp	r0, #16
c0d040b4:	d129      	bne.n	c0d0410a <view_prepro+0x6a>
c0d040b6:	2500      	movs	r5, #0
c0d040b8:	f7ff fe10 	bl	c0d03cdc <h_paging_can_decrease>
c0d040bc:	2800      	cmp	r0, #0
c0d040be:	d025      	beq.n	c0d0410c <view_prepro+0x6c>
c0d040c0:	f7ff ff4e 	bl	c0d03f60 <h_paging_inspect_go_to_root_screen>
c0d040c4:	e006      	b.n	c0d040d4 <view_prepro+0x34>
c0d040c6:	2500      	movs	r5, #0
c0d040c8:	f7ff fdb6 	bl	c0d03c38 <h_paging_can_increase>
c0d040cc:	2800      	cmp	r0, #0
c0d040ce:	d01d      	beq.n	c0d0410c <view_prepro+0x6c>
c0d040d0:	f7ff ff54 	bl	c0d03f7c <h_paging_inspect_back_screen>
c0d040d4:	2800      	cmp	r0, #0
c0d040d6:	d004      	beq.n	c0d040e2 <view_prepro+0x42>
c0d040d8:	e018      	b.n	c0d0410c <view_prepro+0x6c>
c0d040da:	f7ff fd74 	bl	c0d03bc6 <h_paging_intro_screen>
c0d040de:	2800      	cmp	r0, #0
c0d040e0:	d016      	beq.n	c0d04110 <view_prepro+0x70>
c0d040e2:	207d      	movs	r0, #125	; 0x7d
c0d040e4:	0100      	lsls	r0, r0, #4
c0d040e6:	e00e      	b.n	c0d04106 <view_prepro+0x66>
c0d040e8:	2107      	movs	r1, #7
c0d040ea:	4620      	mov	r0, r4
c0d040ec:	f002 f97e 	bl	c0d063ec <bagl_label_roundtrip_duration_ms>
c0d040f0:	217d      	movs	r1, #125	; 0x7d
c0d040f2:	00cd      	lsls	r5, r1, #3
c0d040f4:	1941      	adds	r1, r0, r5
c0d040f6:	4807      	ldr	r0, [pc, #28]	; (c0d04114 <view_prepro+0x74>)
c0d040f8:	4281      	cmp	r1, r0
c0d040fa:	d304      	bcc.n	c0d04106 <view_prepro+0x66>
c0d040fc:	2107      	movs	r1, #7
c0d040fe:	4620      	mov	r0, r4
c0d04100:	f002 f974 	bl	c0d063ec <bagl_label_roundtrip_duration_ms>
c0d04104:	1940      	adds	r0, r0, r5
c0d04106:	4904      	ldr	r1, [pc, #16]	; (c0d04118 <view_prepro+0x78>)
c0d04108:	63c8      	str	r0, [r1, #60]	; 0x3c
c0d0410a:	4625      	mov	r5, r4
c0d0410c:	4628      	mov	r0, r5
c0d0410e:	bdb0      	pop	{r4, r5, r7, pc}
c0d04110:	2500      	movs	r5, #0
c0d04112:	e7fb      	b.n	c0d0410c <view_prepro+0x6c>
c0d04114:	00000bb8 	.word	0x00000bb8
c0d04118:	20000a2c 	.word	0x20000a2c

c0d0411c <h_review_update>:
c0d0411c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d0411e:	f7ff fe3b 	bl	c0d03d98 <h_review_update_data>
c0d04122:	2803      	cmp	r0, #3
c0d04124:	d154      	bne.n	c0d041d0 <h_review_update+0xb4>
c0d04126:	212c      	movs	r1, #44	; 0x2c
c0d04128:	9100      	str	r1, [sp, #0]
c0d0412a:	4f2b      	ldr	r7, [pc, #172]	; (c0d041d8 <h_review_update+0xbc>)
c0d0412c:	2007      	movs	r0, #7
c0d0412e:	5478      	strb	r0, [r7, r1]
c0d04130:	2044      	movs	r0, #68	; 0x44
c0d04132:	2103      	movs	r1, #3
c0d04134:	5439      	strb	r1, [r7, r0]
c0d04136:	4829      	ldr	r0, [pc, #164]	; (c0d041dc <h_review_update+0xc0>)
c0d04138:	4478      	add	r0, pc
c0d0413a:	4929      	ldr	r1, [pc, #164]	; (c0d041e0 <h_review_update+0xc4>)
c0d0413c:	4479      	add	r1, pc
c0d0413e:	62b9      	str	r1, [r7, #40]	; 0x28
c0d04140:	4928      	ldr	r1, [pc, #160]	; (c0d041e4 <h_review_update+0xc8>)
c0d04142:	4479      	add	r1, pc
c0d04144:	6339      	str	r1, [r7, #48]	; 0x30
c0d04146:	6378      	str	r0, [r7, #52]	; 0x34
c0d04148:	463c      	mov	r4, r7
c0d0414a:	3444      	adds	r4, #68	; 0x44
c0d0414c:	2600      	movs	r6, #0
c0d0414e:	6066      	str	r6, [r4, #4]
c0d04150:	4620      	mov	r0, r4
c0d04152:	f002 fe89 	bl	c0d06e68 <os_ux>
c0d04156:	2504      	movs	r5, #4
c0d04158:	4628      	mov	r0, r5
c0d0415a:	f002 ff01 	bl	c0d06f60 <os_sched_last_status>
c0d0415e:	6060      	str	r0, [r4, #4]
c0d04160:	f002 f8a0 	bl	c0d062a4 <io_seproxyhal_init_ux>
c0d04164:	f002 f8a0 	bl	c0d062a8 <io_seproxyhal_init_button>
c0d04168:	84fe      	strh	r6, [r7, #38]	; 0x26
c0d0416a:	4628      	mov	r0, r5
c0d0416c:	f002 fef8 	bl	c0d06f60 <os_sched_last_status>
c0d04170:	6060      	str	r0, [r4, #4]
c0d04172:	9c00      	ldr	r4, [sp, #0]
c0d04174:	2800      	cmp	r0, #0
c0d04176:	d001      	beq.n	c0d0417c <h_review_update+0x60>
c0d04178:	2897      	cmp	r0, #151	; 0x97
c0d0417a:	d125      	bne.n	c0d041c8 <h_review_update+0xac>
c0d0417c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d0417e:	5d38      	ldrb	r0, [r7, r4]
c0d04180:	8cf9      	ldrh	r1, [r7, #38]	; 0x26
c0d04182:	4281      	cmp	r1, r0
c0d04184:	d2fa      	bcs.n	c0d0417c <h_review_update+0x60>
c0d04186:	f002 febf 	bl	c0d06f08 <io_seph_is_status_sent>
c0d0418a:	2800      	cmp	r0, #0
c0d0418c:	d1f6      	bne.n	c0d0417c <h_review_update+0x60>
c0d0418e:	f002 fe3d 	bl	c0d06e0c <os_perso_isonboarded>
c0d04192:	28aa      	cmp	r0, #170	; 0xaa
c0d04194:	d103      	bne.n	c0d0419e <h_review_update+0x82>
c0d04196:	f002 fe5b 	bl	c0d06e50 <os_global_pin_is_validated>
c0d0419a:	28aa      	cmp	r0, #170	; 0xaa
c0d0419c:	d1ee      	bne.n	c0d0417c <h_review_update+0x60>
c0d0419e:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d041a0:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d041a2:	0150      	lsls	r0, r2, #5
c0d041a4:	1808      	adds	r0, r1, r0
c0d041a6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
c0d041a8:	2b00      	cmp	r3, #0
c0d041aa:	d004      	beq.n	c0d041b6 <h_review_update+0x9a>
c0d041ac:	4798      	blx	r3
c0d041ae:	2800      	cmp	r0, #0
c0d041b0:	d007      	beq.n	c0d041c2 <h_review_update+0xa6>
c0d041b2:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d041b4:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d041b6:	2801      	cmp	r0, #1
c0d041b8:	d101      	bne.n	c0d041be <h_review_update+0xa2>
c0d041ba:	0150      	lsls	r0, r2, #5
c0d041bc:	1808      	adds	r0, r1, r0
c0d041be:	f7ff fd04 	bl	c0d03bca <io_seproxyhal_display>
c0d041c2:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d041c4:	1c40      	adds	r0, r0, #1
c0d041c6:	84f8      	strh	r0, [r7, #38]	; 0x26
c0d041c8:	6ab8      	ldr	r0, [r7, #40]	; 0x28
c0d041ca:	2800      	cmp	r0, #0
c0d041cc:	d1d7      	bne.n	c0d0417e <h_review_update+0x62>
c0d041ce:	e7d5      	b.n	c0d0417c <h_review_update+0x60>
c0d041d0:	f7ff fd00 	bl	c0d03bd4 <view_error_show>
c0d041d4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d041d6:	46c0      	nop			; (mov r8, r8)
c0d041d8:	20000a2c 	.word	0x20000a2c
c0d041dc:	000000ad 	.word	0x000000ad
c0d041e0:	000059bc 	.word	0x000059bc
c0d041e4:	ffffff5b 	.word	0xffffff5b

c0d041e8 <view_review_button>:
c0d041e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d041ea:	497c      	ldr	r1, [pc, #496]	; (c0d043dc <view_review_button+0x1f4>)
c0d041ec:	4288      	cmp	r0, r1
c0d041ee:	d02b      	beq.n	c0d04248 <view_review_button+0x60>
c0d041f0:	497b      	ldr	r1, [pc, #492]	; (c0d043e0 <view_review_button+0x1f8>)
c0d041f2:	4288      	cmp	r0, r1
c0d041f4:	d100      	bne.n	c0d041f8 <view_review_button+0x10>
c0d041f6:	e087      	b.n	c0d04308 <view_review_button+0x120>
c0d041f8:	497a      	ldr	r1, [pc, #488]	; (c0d043e4 <view_review_button+0x1fc>)
c0d041fa:	4288      	cmp	r0, r1
c0d041fc:	d000      	beq.n	c0d04200 <view_review_button+0x18>
c0d041fe:	e0ea      	b.n	c0d043d6 <view_review_button+0x1ee>
c0d04200:	4c79      	ldr	r4, [pc, #484]	; (c0d043e8 <view_review_button+0x200>)
c0d04202:	7820      	ldrb	r0, [r4, #0]
c0d04204:	2800      	cmp	r0, #0
c0d04206:	d108      	bne.n	c0d0421a <view_review_button+0x32>
c0d04208:	f7ff fda2 	bl	c0d03d50 <is_accept_item>
c0d0420c:	2800      	cmp	r0, #0
c0d0420e:	d104      	bne.n	c0d0421a <view_review_button+0x32>
c0d04210:	f7ff fdb6 	bl	c0d03d80 <is_reject_item>
c0d04214:	2800      	cmp	r0, #0
c0d04216:	d100      	bne.n	c0d0421a <view_review_button+0x32>
c0d04218:	e0dd      	b.n	c0d043d6 <view_review_button+0x1ee>
c0d0421a:	4876      	ldr	r0, [pc, #472]	; (c0d043f4 <view_review_button+0x20c>)
c0d0421c:	4478      	add	r0, pc
c0d0421e:	f000 fd53 	bl	c0d04cc8 <zemu_log_stack>
c0d04222:	7820      	ldrb	r0, [r4, #0]
c0d04224:	2800      	cmp	r0, #0
c0d04226:	d108      	bne.n	c0d0423a <view_review_button+0x52>
c0d04228:	f7ff fd92 	bl	c0d03d50 <is_accept_item>
c0d0422c:	2800      	cmp	r0, #0
c0d0422e:	d104      	bne.n	c0d0423a <view_review_button+0x52>
c0d04230:	f7ff fda6 	bl	c0d03d80 <is_reject_item>
c0d04234:	2800      	cmp	r0, #0
c0d04236:	d100      	bne.n	c0d0423a <view_review_button+0x52>
c0d04238:	e0cd      	b.n	c0d043d6 <view_review_button+0x1ee>
c0d0423a:	2000      	movs	r0, #0
c0d0423c:	7020      	strb	r0, [r4, #0]
c0d0423e:	486c      	ldr	r0, [pc, #432]	; (c0d043f0 <view_review_button+0x208>)
c0d04240:	6800      	ldr	r0, [r0, #0]
c0d04242:	f000 fa83 	bl	c0d0474c <h_review_action>
c0d04246:	e0c6      	b.n	c0d043d6 <view_review_button+0x1ee>
c0d04248:	f7ff fed8 	bl	c0d03ffc <should_show_skip_menu_left>
c0d0424c:	2800      	cmp	r0, #0
c0d0424e:	d100      	bne.n	c0d04252 <view_review_button+0x6a>
c0d04250:	e0b6      	b.n	c0d043c0 <view_review_button+0x1d8>
c0d04252:	212c      	movs	r1, #44	; 0x2c
c0d04254:	9100      	str	r1, [sp, #0]
c0d04256:	4f65      	ldr	r7, [pc, #404]	; (c0d043ec <view_review_button+0x204>)
c0d04258:	2006      	movs	r0, #6
c0d0425a:	5478      	strb	r0, [r7, r1]
c0d0425c:	2044      	movs	r0, #68	; 0x44
c0d0425e:	2103      	movs	r1, #3
c0d04260:	5439      	strb	r1, [r7, r0]
c0d04262:	4865      	ldr	r0, [pc, #404]	; (c0d043f8 <view_review_button+0x210>)
c0d04264:	4478      	add	r0, pc
c0d04266:	4965      	ldr	r1, [pc, #404]	; (c0d043fc <view_review_button+0x214>)
c0d04268:	4479      	add	r1, pc
c0d0426a:	62b9      	str	r1, [r7, #40]	; 0x28
c0d0426c:	495e      	ldr	r1, [pc, #376]	; (c0d043e8 <view_review_button+0x200>)
c0d0426e:	2201      	movs	r2, #1
c0d04270:	700a      	strb	r2, [r1, #0]
c0d04272:	4963      	ldr	r1, [pc, #396]	; (c0d04400 <view_review_button+0x218>)
c0d04274:	4479      	add	r1, pc
c0d04276:	6339      	str	r1, [r7, #48]	; 0x30
c0d04278:	6378      	str	r0, [r7, #52]	; 0x34
c0d0427a:	463c      	mov	r4, r7
c0d0427c:	3444      	adds	r4, #68	; 0x44
c0d0427e:	2600      	movs	r6, #0
c0d04280:	6066      	str	r6, [r4, #4]
c0d04282:	4620      	mov	r0, r4
c0d04284:	f002 fdf0 	bl	c0d06e68 <os_ux>
c0d04288:	2504      	movs	r5, #4
c0d0428a:	4628      	mov	r0, r5
c0d0428c:	f002 fe68 	bl	c0d06f60 <os_sched_last_status>
c0d04290:	6060      	str	r0, [r4, #4]
c0d04292:	f002 f807 	bl	c0d062a4 <io_seproxyhal_init_ux>
c0d04296:	f002 f807 	bl	c0d062a8 <io_seproxyhal_init_button>
c0d0429a:	84fe      	strh	r6, [r7, #38]	; 0x26
c0d0429c:	4628      	mov	r0, r5
c0d0429e:	f002 fe5f 	bl	c0d06f60 <os_sched_last_status>
c0d042a2:	6060      	str	r0, [r4, #4]
c0d042a4:	9c00      	ldr	r4, [sp, #0]
c0d042a6:	2800      	cmp	r0, #0
c0d042a8:	d100      	bne.n	c0d042ac <view_review_button+0xc4>
c0d042aa:	e094      	b.n	c0d043d6 <view_review_button+0x1ee>
c0d042ac:	2897      	cmp	r0, #151	; 0x97
c0d042ae:	d127      	bne.n	c0d04300 <view_review_button+0x118>
c0d042b0:	e091      	b.n	c0d043d6 <view_review_button+0x1ee>
c0d042b2:	5d38      	ldrb	r0, [r7, r4]
c0d042b4:	8cf9      	ldrh	r1, [r7, #38]	; 0x26
c0d042b6:	4281      	cmp	r1, r0
c0d042b8:	d300      	bcc.n	c0d042bc <view_review_button+0xd4>
c0d042ba:	e08c      	b.n	c0d043d6 <view_review_button+0x1ee>
c0d042bc:	f002 fe24 	bl	c0d06f08 <io_seph_is_status_sent>
c0d042c0:	2800      	cmp	r0, #0
c0d042c2:	d000      	beq.n	c0d042c6 <view_review_button+0xde>
c0d042c4:	e087      	b.n	c0d043d6 <view_review_button+0x1ee>
c0d042c6:	f002 fda1 	bl	c0d06e0c <os_perso_isonboarded>
c0d042ca:	28aa      	cmp	r0, #170	; 0xaa
c0d042cc:	d103      	bne.n	c0d042d6 <view_review_button+0xee>
c0d042ce:	f002 fdbf 	bl	c0d06e50 <os_global_pin_is_validated>
c0d042d2:	28aa      	cmp	r0, #170	; 0xaa
c0d042d4:	d17f      	bne.n	c0d043d6 <view_review_button+0x1ee>
c0d042d6:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d042d8:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d042da:	0150      	lsls	r0, r2, #5
c0d042dc:	1808      	adds	r0, r1, r0
c0d042de:	6b3b      	ldr	r3, [r7, #48]	; 0x30
c0d042e0:	2b00      	cmp	r3, #0
c0d042e2:	d004      	beq.n	c0d042ee <view_review_button+0x106>
c0d042e4:	4798      	blx	r3
c0d042e6:	2800      	cmp	r0, #0
c0d042e8:	d007      	beq.n	c0d042fa <view_review_button+0x112>
c0d042ea:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d042ec:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d042ee:	2801      	cmp	r0, #1
c0d042f0:	d101      	bne.n	c0d042f6 <view_review_button+0x10e>
c0d042f2:	0150      	lsls	r0, r2, #5
c0d042f4:	1808      	adds	r0, r1, r0
c0d042f6:	f7ff fc68 	bl	c0d03bca <io_seproxyhal_display>
c0d042fa:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d042fc:	1c40      	adds	r0, r0, #1
c0d042fe:	84f8      	strh	r0, [r7, #38]	; 0x26
c0d04300:	6ab8      	ldr	r0, [r7, #40]	; 0x28
c0d04302:	2800      	cmp	r0, #0
c0d04304:	d1d5      	bne.n	c0d042b2 <view_review_button+0xca>
c0d04306:	e066      	b.n	c0d043d6 <view_review_button+0x1ee>
c0d04308:	f7ff fe4e 	bl	c0d03fa8 <should_show_skip_menu_right>
c0d0430c:	2800      	cmp	r0, #0
c0d0430e:	d05d      	beq.n	c0d043cc <view_review_button+0x1e4>
c0d04310:	212c      	movs	r1, #44	; 0x2c
c0d04312:	9100      	str	r1, [sp, #0]
c0d04314:	4f35      	ldr	r7, [pc, #212]	; (c0d043ec <view_review_button+0x204>)
c0d04316:	2006      	movs	r0, #6
c0d04318:	5478      	strb	r0, [r7, r1]
c0d0431a:	2044      	movs	r0, #68	; 0x44
c0d0431c:	2103      	movs	r1, #3
c0d0431e:	5439      	strb	r1, [r7, r0]
c0d04320:	4838      	ldr	r0, [pc, #224]	; (c0d04404 <view_review_button+0x21c>)
c0d04322:	4478      	add	r0, pc
c0d04324:	4938      	ldr	r1, [pc, #224]	; (c0d04408 <view_review_button+0x220>)
c0d04326:	4479      	add	r1, pc
c0d04328:	62b9      	str	r1, [r7, #40]	; 0x28
c0d0432a:	492f      	ldr	r1, [pc, #188]	; (c0d043e8 <view_review_button+0x200>)
c0d0432c:	2201      	movs	r2, #1
c0d0432e:	700a      	strb	r2, [r1, #0]
c0d04330:	4936      	ldr	r1, [pc, #216]	; (c0d0440c <view_review_button+0x224>)
c0d04332:	4479      	add	r1, pc
c0d04334:	6339      	str	r1, [r7, #48]	; 0x30
c0d04336:	6378      	str	r0, [r7, #52]	; 0x34
c0d04338:	463c      	mov	r4, r7
c0d0433a:	3444      	adds	r4, #68	; 0x44
c0d0433c:	2600      	movs	r6, #0
c0d0433e:	6066      	str	r6, [r4, #4]
c0d04340:	4620      	mov	r0, r4
c0d04342:	f002 fd91 	bl	c0d06e68 <os_ux>
c0d04346:	2504      	movs	r5, #4
c0d04348:	4628      	mov	r0, r5
c0d0434a:	f002 fe09 	bl	c0d06f60 <os_sched_last_status>
c0d0434e:	6060      	str	r0, [r4, #4]
c0d04350:	f001 ffa8 	bl	c0d062a4 <io_seproxyhal_init_ux>
c0d04354:	f001 ffa8 	bl	c0d062a8 <io_seproxyhal_init_button>
c0d04358:	84fe      	strh	r6, [r7, #38]	; 0x26
c0d0435a:	4628      	mov	r0, r5
c0d0435c:	f002 fe00 	bl	c0d06f60 <os_sched_last_status>
c0d04360:	6060      	str	r0, [r4, #4]
c0d04362:	9c00      	ldr	r4, [sp, #0]
c0d04364:	2800      	cmp	r0, #0
c0d04366:	d036      	beq.n	c0d043d6 <view_review_button+0x1ee>
c0d04368:	2897      	cmp	r0, #151	; 0x97
c0d0436a:	d034      	beq.n	c0d043d6 <view_review_button+0x1ee>
c0d0436c:	e024      	b.n	c0d043b8 <view_review_button+0x1d0>
c0d0436e:	5d38      	ldrb	r0, [r7, r4]
c0d04370:	8cf9      	ldrh	r1, [r7, #38]	; 0x26
c0d04372:	4281      	cmp	r1, r0
c0d04374:	d22f      	bcs.n	c0d043d6 <view_review_button+0x1ee>
c0d04376:	f002 fdc7 	bl	c0d06f08 <io_seph_is_status_sent>
c0d0437a:	2800      	cmp	r0, #0
c0d0437c:	d12b      	bne.n	c0d043d6 <view_review_button+0x1ee>
c0d0437e:	f002 fd45 	bl	c0d06e0c <os_perso_isonboarded>
c0d04382:	28aa      	cmp	r0, #170	; 0xaa
c0d04384:	d103      	bne.n	c0d0438e <view_review_button+0x1a6>
c0d04386:	f002 fd63 	bl	c0d06e50 <os_global_pin_is_validated>
c0d0438a:	28aa      	cmp	r0, #170	; 0xaa
c0d0438c:	d123      	bne.n	c0d043d6 <view_review_button+0x1ee>
c0d0438e:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d04390:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d04392:	0150      	lsls	r0, r2, #5
c0d04394:	1808      	adds	r0, r1, r0
c0d04396:	6b3b      	ldr	r3, [r7, #48]	; 0x30
c0d04398:	2b00      	cmp	r3, #0
c0d0439a:	d004      	beq.n	c0d043a6 <view_review_button+0x1be>
c0d0439c:	4798      	blx	r3
c0d0439e:	2800      	cmp	r0, #0
c0d043a0:	d007      	beq.n	c0d043b2 <view_review_button+0x1ca>
c0d043a2:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d043a4:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d043a6:	2801      	cmp	r0, #1
c0d043a8:	d101      	bne.n	c0d043ae <view_review_button+0x1c6>
c0d043aa:	0150      	lsls	r0, r2, #5
c0d043ac:	1808      	adds	r0, r1, r0
c0d043ae:	f7ff fc0c 	bl	c0d03bca <io_seproxyhal_display>
c0d043b2:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d043b4:	1c40      	adds	r0, r0, #1
c0d043b6:	84f8      	strh	r0, [r7, #38]	; 0x26
c0d043b8:	6ab8      	ldr	r0, [r7, #40]	; 0x28
c0d043ba:	2800      	cmp	r0, #0
c0d043bc:	d1d7      	bne.n	c0d0436e <view_review_button+0x186>
c0d043be:	e00a      	b.n	c0d043d6 <view_review_button+0x1ee>
c0d043c0:	4809      	ldr	r0, [pc, #36]	; (c0d043e8 <view_review_button+0x200>)
c0d043c2:	2100      	movs	r1, #0
c0d043c4:	7001      	strb	r1, [r0, #0]
c0d043c6:	f000 f9fd 	bl	c0d047c4 <h_review_button_left>
c0d043ca:	e004      	b.n	c0d043d6 <view_review_button+0x1ee>
c0d043cc:	4806      	ldr	r0, [pc, #24]	; (c0d043e8 <view_review_button+0x200>)
c0d043ce:	2100      	movs	r1, #0
c0d043d0:	7001      	strb	r1, [r0, #0]
c0d043d2:	f000 fa03 	bl	c0d047dc <h_review_button_right>
c0d043d6:	2000      	movs	r0, #0
c0d043d8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d043da:	46c0      	nop			; (mov r8, r8)
c0d043dc:	80000001 	.word	0x80000001
c0d043e0:	80000002 	.word	0x80000002
c0d043e4:	80000003 	.word	0x80000003
c0d043e8:	20000a28 	.word	0x20000a28
c0d043ec:	20000a2c 	.word	0x20000a2c
c0d043f0:	200009ac 	.word	0x200009ac
c0d043f4:	00005730 	.word	0x00005730
c0d043f8:	00000499 	.word	0x00000499
c0d043fc:	00005a10 	.word	0x00005a10
c0d04400:	fffffe29 	.word	0xfffffe29
c0d04404:	000003db 	.word	0x000003db
c0d04408:	00005952 	.word	0x00005952
c0d0440c:	fffffd6b 	.word	0xfffffd6b

c0d04410 <view_idle_show_impl>:
c0d04410:	b510      	push	{r4, lr}
c0d04412:	4604      	mov	r4, r0
c0d04414:	2900      	cmp	r1, #0
c0d04416:	d007      	beq.n	c0d04428 <view_idle_show_impl+0x18>
c0d04418:	460b      	mov	r3, r1
c0d0441a:	480a      	ldr	r0, [pc, #40]	; (c0d04444 <view_idle_show_impl+0x34>)
c0d0441c:	2111      	movs	r1, #17
c0d0441e:	4a0b      	ldr	r2, [pc, #44]	; (c0d0444c <view_idle_show_impl+0x3c>)
c0d04420:	447a      	add	r2, pc
c0d04422:	f002 faf5 	bl	c0d06a10 <snprintf>
c0d04426:	e005      	b.n	c0d04434 <view_idle_show_impl+0x24>
c0d04428:	4806      	ldr	r0, [pc, #24]	; (c0d04444 <view_idle_show_impl+0x34>)
c0d0442a:	4907      	ldr	r1, [pc, #28]	; (c0d04448 <view_idle_show_impl+0x38>)
c0d0442c:	4479      	add	r1, pc
c0d0442e:	2206      	movs	r2, #6
c0d04430:	f002 fe16 	bl	c0d07060 <__aeabi_memcpy>
c0d04434:	4906      	ldr	r1, [pc, #24]	; (c0d04450 <view_idle_show_impl+0x40>)
c0d04436:	4479      	add	r1, pc
c0d04438:	4a06      	ldr	r2, [pc, #24]	; (c0d04454 <view_idle_show_impl+0x44>)
c0d0443a:	447a      	add	r2, pc
c0d0443c:	4620      	mov	r0, r4
c0d0443e:	f001 fcf3 	bl	c0d05e28 <ux_menu_display>
c0d04442:	bd10      	pop	{r4, pc}
c0d04444:	200009b0 	.word	0x200009b0
c0d04448:	000054d2 	.word	0x000054d2
c0d0444c:	0000379e 	.word	0x0000379e
c0d04450:	000055aa 	.word	0x000055aa
c0d04454:	fffffc13 	.word	0xfffffc13

c0d04458 <view_error_show_impl>:
c0d04458:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d0445a:	212c      	movs	r1, #44	; 0x2c
c0d0445c:	9100      	str	r1, [sp, #0]
c0d0445e:	4f29      	ldr	r7, [pc, #164]	; (c0d04504 <view_error_show_impl+0xac>)
c0d04460:	2005      	movs	r0, #5
c0d04462:	5478      	strb	r0, [r7, r1]
c0d04464:	2044      	movs	r0, #68	; 0x44
c0d04466:	2103      	movs	r1, #3
c0d04468:	5439      	strb	r1, [r7, r0]
c0d0446a:	4827      	ldr	r0, [pc, #156]	; (c0d04508 <view_error_show_impl+0xb0>)
c0d0446c:	4478      	add	r0, pc
c0d0446e:	4927      	ldr	r1, [pc, #156]	; (c0d0450c <view_error_show_impl+0xb4>)
c0d04470:	4479      	add	r1, pc
c0d04472:	62b9      	str	r1, [r7, #40]	; 0x28
c0d04474:	4926      	ldr	r1, [pc, #152]	; (c0d04510 <view_error_show_impl+0xb8>)
c0d04476:	4479      	add	r1, pc
c0d04478:	6339      	str	r1, [r7, #48]	; 0x30
c0d0447a:	6378      	str	r0, [r7, #52]	; 0x34
c0d0447c:	463c      	mov	r4, r7
c0d0447e:	3444      	adds	r4, #68	; 0x44
c0d04480:	2600      	movs	r6, #0
c0d04482:	6066      	str	r6, [r4, #4]
c0d04484:	4620      	mov	r0, r4
c0d04486:	f002 fcef 	bl	c0d06e68 <os_ux>
c0d0448a:	2504      	movs	r5, #4
c0d0448c:	4628      	mov	r0, r5
c0d0448e:	f002 fd67 	bl	c0d06f60 <os_sched_last_status>
c0d04492:	6060      	str	r0, [r4, #4]
c0d04494:	f001 ff06 	bl	c0d062a4 <io_seproxyhal_init_ux>
c0d04498:	f001 ff06 	bl	c0d062a8 <io_seproxyhal_init_button>
c0d0449c:	84fe      	strh	r6, [r7, #38]	; 0x26
c0d0449e:	4628      	mov	r0, r5
c0d044a0:	f002 fd5e 	bl	c0d06f60 <os_sched_last_status>
c0d044a4:	6060      	str	r0, [r4, #4]
c0d044a6:	9c00      	ldr	r4, [sp, #0]
c0d044a8:	2800      	cmp	r0, #0
c0d044aa:	d02a      	beq.n	c0d04502 <view_error_show_impl+0xaa>
c0d044ac:	2897      	cmp	r0, #151	; 0x97
c0d044ae:	d028      	beq.n	c0d04502 <view_error_show_impl+0xaa>
c0d044b0:	e024      	b.n	c0d044fc <view_error_show_impl+0xa4>
c0d044b2:	5d38      	ldrb	r0, [r7, r4]
c0d044b4:	8cf9      	ldrh	r1, [r7, #38]	; 0x26
c0d044b6:	4281      	cmp	r1, r0
c0d044b8:	d223      	bcs.n	c0d04502 <view_error_show_impl+0xaa>
c0d044ba:	f002 fd25 	bl	c0d06f08 <io_seph_is_status_sent>
c0d044be:	2800      	cmp	r0, #0
c0d044c0:	d11f      	bne.n	c0d04502 <view_error_show_impl+0xaa>
c0d044c2:	f002 fca3 	bl	c0d06e0c <os_perso_isonboarded>
c0d044c6:	28aa      	cmp	r0, #170	; 0xaa
c0d044c8:	d103      	bne.n	c0d044d2 <view_error_show_impl+0x7a>
c0d044ca:	f002 fcc1 	bl	c0d06e50 <os_global_pin_is_validated>
c0d044ce:	28aa      	cmp	r0, #170	; 0xaa
c0d044d0:	d117      	bne.n	c0d04502 <view_error_show_impl+0xaa>
c0d044d2:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d044d4:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d044d6:	0150      	lsls	r0, r2, #5
c0d044d8:	1808      	adds	r0, r1, r0
c0d044da:	6b3b      	ldr	r3, [r7, #48]	; 0x30
c0d044dc:	2b00      	cmp	r3, #0
c0d044de:	d004      	beq.n	c0d044ea <view_error_show_impl+0x92>
c0d044e0:	4798      	blx	r3
c0d044e2:	2800      	cmp	r0, #0
c0d044e4:	d007      	beq.n	c0d044f6 <view_error_show_impl+0x9e>
c0d044e6:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d044e8:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d044ea:	2801      	cmp	r0, #1
c0d044ec:	d101      	bne.n	c0d044f2 <view_error_show_impl+0x9a>
c0d044ee:	0150      	lsls	r0, r2, #5
c0d044f0:	1808      	adds	r0, r1, r0
c0d044f2:	f7ff fb6a 	bl	c0d03bca <io_seproxyhal_display>
c0d044f6:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d044f8:	1c40      	adds	r0, r0, #1
c0d044fa:	84f8      	strh	r0, [r7, #38]	; 0x26
c0d044fc:	6ab8      	ldr	r0, [r7, #40]	; 0x28
c0d044fe:	2800      	cmp	r0, #0
c0d04500:	d1d7      	bne.n	c0d044b2 <view_error_show_impl+0x5a>
c0d04502:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d04504:	20000a2c 	.word	0x20000a2c
c0d04508:	000000a5 	.word	0x000000a5
c0d0450c:	00005768 	.word	0x00005768
c0d04510:	fffffc27 	.word	0xfffffc27

c0d04514 <view_error_button>:
c0d04514:	b580      	push	{r7, lr}
c0d04516:	4904      	ldr	r1, [pc, #16]	; (c0d04528 <view_error_button+0x14>)
c0d04518:	4288      	cmp	r0, r1
c0d0451a:	d102      	bne.n	c0d04522 <view_error_button+0xe>
c0d0451c:	2000      	movs	r0, #0
c0d0451e:	f7ff fb01 	bl	c0d03b24 <h_error_accept>
c0d04522:	2000      	movs	r0, #0
c0d04524:	bd80      	pop	{r7, pc}
c0d04526:	46c0      	nop			; (mov r8, r8)
c0d04528:	80000002 	.word	0x80000002

c0d0452c <view_custom_error_show_impl>:
c0d0452c:	b580      	push	{r7, lr}
c0d0452e:	4903      	ldr	r1, [pc, #12]	; (c0d0453c <view_custom_error_show_impl+0x10>)
c0d04530:	4479      	add	r1, pc
c0d04532:	2000      	movs	r0, #0
c0d04534:	4602      	mov	r2, r0
c0d04536:	f001 fc77 	bl	c0d05e28 <ux_menu_display>
c0d0453a:	bd80      	pop	{r7, pc}
c0d0453c:	00005574 	.word	0x00005574

c0d04540 <view_review_show_impl>:
c0d04540:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d04542:	4604      	mov	r4, r0
c0d04544:	4833      	ldr	r0, [pc, #204]	; (c0d04614 <view_review_show_impl+0xd4>)
c0d04546:	4478      	add	r0, pc
c0d04548:	f000 fbbe 	bl	c0d04cc8 <zemu_log_stack>
c0d0454c:	482f      	ldr	r0, [pc, #188]	; (c0d0460c <view_review_show_impl+0xcc>)
c0d0454e:	6004      	str	r4, [r0, #0]
c0d04550:	f7ff fa04 	bl	c0d0395c <h_paging_init>
c0d04554:	f7ff fc20 	bl	c0d03d98 <h_review_update_data>
c0d04558:	2803      	cmp	r0, #3
c0d0455a:	d154      	bne.n	c0d04606 <view_review_show_impl+0xc6>
c0d0455c:	212c      	movs	r1, #44	; 0x2c
c0d0455e:	9100      	str	r1, [sp, #0]
c0d04560:	4f2b      	ldr	r7, [pc, #172]	; (c0d04610 <view_review_show_impl+0xd0>)
c0d04562:	2007      	movs	r0, #7
c0d04564:	5478      	strb	r0, [r7, r1]
c0d04566:	2044      	movs	r0, #68	; 0x44
c0d04568:	2103      	movs	r1, #3
c0d0456a:	5439      	strb	r1, [r7, r0]
c0d0456c:	482a      	ldr	r0, [pc, #168]	; (c0d04618 <view_review_show_impl+0xd8>)
c0d0456e:	4478      	add	r0, pc
c0d04570:	492a      	ldr	r1, [pc, #168]	; (c0d0461c <view_review_show_impl+0xdc>)
c0d04572:	4479      	add	r1, pc
c0d04574:	62b9      	str	r1, [r7, #40]	; 0x28
c0d04576:	492a      	ldr	r1, [pc, #168]	; (c0d04620 <view_review_show_impl+0xe0>)
c0d04578:	4479      	add	r1, pc
c0d0457a:	6339      	str	r1, [r7, #48]	; 0x30
c0d0457c:	6378      	str	r0, [r7, #52]	; 0x34
c0d0457e:	463c      	mov	r4, r7
c0d04580:	3444      	adds	r4, #68	; 0x44
c0d04582:	2600      	movs	r6, #0
c0d04584:	6066      	str	r6, [r4, #4]
c0d04586:	4620      	mov	r0, r4
c0d04588:	f002 fc6e 	bl	c0d06e68 <os_ux>
c0d0458c:	2504      	movs	r5, #4
c0d0458e:	4628      	mov	r0, r5
c0d04590:	f002 fce6 	bl	c0d06f60 <os_sched_last_status>
c0d04594:	6060      	str	r0, [r4, #4]
c0d04596:	f001 fe85 	bl	c0d062a4 <io_seproxyhal_init_ux>
c0d0459a:	f001 fe85 	bl	c0d062a8 <io_seproxyhal_init_button>
c0d0459e:	84fe      	strh	r6, [r7, #38]	; 0x26
c0d045a0:	4628      	mov	r0, r5
c0d045a2:	f002 fcdd 	bl	c0d06f60 <os_sched_last_status>
c0d045a6:	6060      	str	r0, [r4, #4]
c0d045a8:	9c00      	ldr	r4, [sp, #0]
c0d045aa:	2800      	cmp	r0, #0
c0d045ac:	d001      	beq.n	c0d045b2 <view_review_show_impl+0x72>
c0d045ae:	2897      	cmp	r0, #151	; 0x97
c0d045b0:	d125      	bne.n	c0d045fe <view_review_show_impl+0xbe>
c0d045b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d045b4:	5d38      	ldrb	r0, [r7, r4]
c0d045b6:	8cf9      	ldrh	r1, [r7, #38]	; 0x26
c0d045b8:	4281      	cmp	r1, r0
c0d045ba:	d2fa      	bcs.n	c0d045b2 <view_review_show_impl+0x72>
c0d045bc:	f002 fca4 	bl	c0d06f08 <io_seph_is_status_sent>
c0d045c0:	2800      	cmp	r0, #0
c0d045c2:	d1f6      	bne.n	c0d045b2 <view_review_show_impl+0x72>
c0d045c4:	f002 fc22 	bl	c0d06e0c <os_perso_isonboarded>
c0d045c8:	28aa      	cmp	r0, #170	; 0xaa
c0d045ca:	d103      	bne.n	c0d045d4 <view_review_show_impl+0x94>
c0d045cc:	f002 fc40 	bl	c0d06e50 <os_global_pin_is_validated>
c0d045d0:	28aa      	cmp	r0, #170	; 0xaa
c0d045d2:	d1ee      	bne.n	c0d045b2 <view_review_show_impl+0x72>
c0d045d4:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d045d6:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d045d8:	0150      	lsls	r0, r2, #5
c0d045da:	1808      	adds	r0, r1, r0
c0d045dc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
c0d045de:	2b00      	cmp	r3, #0
c0d045e0:	d004      	beq.n	c0d045ec <view_review_show_impl+0xac>
c0d045e2:	4798      	blx	r3
c0d045e4:	2800      	cmp	r0, #0
c0d045e6:	d007      	beq.n	c0d045f8 <view_review_show_impl+0xb8>
c0d045e8:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d045ea:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d045ec:	2801      	cmp	r0, #1
c0d045ee:	d101      	bne.n	c0d045f4 <view_review_show_impl+0xb4>
c0d045f0:	0150      	lsls	r0, r2, #5
c0d045f2:	1808      	adds	r0, r1, r0
c0d045f4:	f7ff fae9 	bl	c0d03bca <io_seproxyhal_display>
c0d045f8:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d045fa:	1c40      	adds	r0, r0, #1
c0d045fc:	84f8      	strh	r0, [r7, #38]	; 0x26
c0d045fe:	6ab8      	ldr	r0, [r7, #40]	; 0x28
c0d04600:	2800      	cmp	r0, #0
c0d04602:	d1d7      	bne.n	c0d045b4 <view_review_show_impl+0x74>
c0d04604:	e7d5      	b.n	c0d045b2 <view_review_show_impl+0x72>
c0d04606:	f7ff fae5 	bl	c0d03bd4 <view_error_show>
c0d0460a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d0460c:	200009ac 	.word	0x200009ac
c0d04610:	20000a2c 	.word	0x20000a2c
c0d04614:	000053f0 	.word	0x000053f0
c0d04618:	fffffc77 	.word	0xfffffc77
c0d0461c:	00005586 	.word	0x00005586
c0d04620:	fffffb25 	.word	0xfffffb25

c0d04624 <splitValueField>:
c0d04624:	b570      	push	{r4, r5, r6, lr}
c0d04626:	2035      	movs	r0, #53	; 0x35
c0d04628:	4d0b      	ldr	r5, [pc, #44]	; (c0d04658 <splitValueField+0x34>)
c0d0462a:	2600      	movs	r6, #0
c0d0462c:	542e      	strb	r6, [r5, r0]
c0d0462e:	4628      	mov	r0, r5
c0d04630:	3012      	adds	r0, #18
c0d04632:	2423      	movs	r4, #35	; 0x23
c0d04634:	4621      	mov	r1, r4
c0d04636:	f002 ff43 	bl	c0d074c0 <strnlen>
c0d0463a:	4908      	ldr	r1, [pc, #32]	; (c0d0465c <splitValueField+0x38>)
c0d0463c:	4001      	ands	r1, r0
c0d0463e:	2912      	cmp	r1, #18
c0d04640:	d309      	bcc.n	c0d04656 <splitValueField+0x32>
c0d04642:	4628      	mov	r0, r5
c0d04644:	3035      	adds	r0, #53	; 0x35
c0d04646:	462b      	mov	r3, r5
c0d04648:	3323      	adds	r3, #35	; 0x23
c0d0464a:	2112      	movs	r1, #18
c0d0464c:	4a04      	ldr	r2, [pc, #16]	; (c0d04660 <splitValueField+0x3c>)
c0d0464e:	447a      	add	r2, pc
c0d04650:	f002 f9de 	bl	c0d06a10 <snprintf>
c0d04654:	552e      	strb	r6, [r5, r4]
c0d04656:	bd70      	pop	{r4, r5, r6, pc}
c0d04658:	200009b0 	.word	0x200009b0
c0d0465c:	0000fffe 	.word	0x0000fffe
c0d04660:	00003570 	.word	0x00003570

c0d04664 <splitValueAddress>:
c0d04664:	b570      	push	{r4, r5, r6, lr}
c0d04666:	2511      	movs	r5, #17
c0d04668:	b2e8      	uxtb	r0, r5
c0d0466a:	f000 f827 	bl	c0d046bc <exceed_pixel_in_display>
c0d0466e:	2800      	cmp	r0, #0
c0d04670:	d004      	beq.n	c0d0467c <splitValueAddress+0x18>
c0d04672:	1e68      	subs	r0, r5, #1
c0d04674:	0629      	lsls	r1, r5, #24
c0d04676:	4605      	mov	r5, r0
c0d04678:	d1f6      	bne.n	c0d04668 <splitValueAddress+0x4>
c0d0467a:	25ff      	movs	r5, #255	; 0xff
c0d0467c:	2035      	movs	r0, #53	; 0x35
c0d0467e:	4c0d      	ldr	r4, [pc, #52]	; (c0d046b4 <splitValueAddress+0x50>)
c0d04680:	2600      	movs	r6, #0
c0d04682:	5426      	strb	r6, [r4, r0]
c0d04684:	4620      	mov	r0, r4
c0d04686:	3012      	adds	r0, #18
c0d04688:	2123      	movs	r1, #35	; 0x23
c0d0468a:	f002 ff19 	bl	c0d074c0 <strnlen>
c0d0468e:	b281      	uxth	r1, r0
c0d04690:	b2e8      	uxtb	r0, r5
c0d04692:	4281      	cmp	r1, r0
c0d04694:	d90c      	bls.n	c0d046b0 <splitValueAddress+0x4c>
c0d04696:	0629      	lsls	r1, r5, #24
c0d04698:	d00a      	beq.n	c0d046b0 <splitValueAddress+0x4c>
c0d0469a:	1825      	adds	r5, r4, r0
c0d0469c:	462b      	mov	r3, r5
c0d0469e:	3312      	adds	r3, #18
c0d046a0:	3435      	adds	r4, #53	; 0x35
c0d046a2:	2112      	movs	r1, #18
c0d046a4:	4a04      	ldr	r2, [pc, #16]	; (c0d046b8 <splitValueAddress+0x54>)
c0d046a6:	447a      	add	r2, pc
c0d046a8:	4620      	mov	r0, r4
c0d046aa:	f002 f9b1 	bl	c0d06a10 <snprintf>
c0d046ae:	74ae      	strb	r6, [r5, #18]
c0d046b0:	bd70      	pop	{r4, r5, r6, pc}
c0d046b2:	46c0      	nop			; (mov r8, r8)
c0d046b4:	200009b0 	.word	0x200009b0
c0d046b8:	00003518 	.word	0x00003518

c0d046bc <exceed_pixel_in_display>:
c0d046bc:	b580      	push	{r7, lr}
c0d046be:	4601      	mov	r1, r0
c0d046c0:	4804      	ldr	r0, [pc, #16]	; (c0d046d4 <exceed_pixel_in_display+0x18>)
c0d046c2:	3012      	adds	r0, #18
c0d046c4:	f000 fb02 	bl	c0d04ccc <zx_compute_line_width_light>
c0d046c8:	2875      	cmp	r0, #117	; 0x75
c0d046ca:	d801      	bhi.n	c0d046d0 <exceed_pixel_in_display+0x14>
c0d046cc:	2000      	movs	r0, #0
c0d046ce:	bd80      	pop	{r7, pc}
c0d046d0:	2001      	movs	r0, #1
c0d046d2:	bd80      	pop	{r7, pc}
c0d046d4:	200009b0 	.word	0x200009b0

c0d046d8 <get_max_char_per_line>:
c0d046d8:	b5b0      	push	{r4, r5, r7, lr}
c0d046da:	2511      	movs	r5, #17
c0d046dc:	b2ec      	uxtb	r4, r5
c0d046de:	4620      	mov	r0, r4
c0d046e0:	f7ff ffec 	bl	c0d046bc <exceed_pixel_in_display>
c0d046e4:	2800      	cmp	r0, #0
c0d046e6:	d005      	beq.n	c0d046f4 <get_max_char_per_line+0x1c>
c0d046e8:	1e68      	subs	r0, r5, #1
c0d046ea:	0629      	lsls	r1, r5, #24
c0d046ec:	4605      	mov	r5, r0
c0d046ee:	d1f5      	bne.n	c0d046dc <get_max_char_per_line+0x4>
c0d046f0:	20ff      	movs	r0, #255	; 0xff
c0d046f2:	bdb0      	pop	{r4, r5, r7, pc}
c0d046f4:	2c00      	cmp	r4, #0
c0d046f6:	d001      	beq.n	c0d046fc <get_max_char_per_line+0x24>
c0d046f8:	0068      	lsls	r0, r5, #1
c0d046fa:	1c44      	adds	r4, r0, #1
c0d046fc:	b2e0      	uxtb	r0, r4
c0d046fe:	bdb0      	pop	{r4, r5, r7, pc}

c0d04700 <view_skip_button>:
c0d04700:	b580      	push	{r7, lr}
c0d04702:	490d      	ldr	r1, [pc, #52]	; (c0d04738 <view_skip_button+0x38>)
c0d04704:	4288      	cmp	r0, r1
c0d04706:	d00a      	beq.n	c0d0471e <view_skip_button+0x1e>
c0d04708:	490c      	ldr	r1, [pc, #48]	; (c0d0473c <view_skip_button+0x3c>)
c0d0470a:	4288      	cmp	r0, r1
c0d0470c:	d00d      	beq.n	c0d0472a <view_skip_button+0x2a>
c0d0470e:	490c      	ldr	r1, [pc, #48]	; (c0d04740 <view_skip_button+0x40>)
c0d04710:	4288      	cmp	r0, r1
c0d04712:	d10f      	bne.n	c0d04734 <view_skip_button+0x34>
c0d04714:	480c      	ldr	r0, [pc, #48]	; (c0d04748 <view_skip_button+0x48>)
c0d04716:	6800      	ldr	r0, [r0, #0]
c0d04718:	f000 f818 	bl	c0d0474c <h_review_action>
c0d0471c:	e00a      	b.n	c0d04734 <view_skip_button+0x34>
c0d0471e:	4809      	ldr	r0, [pc, #36]	; (c0d04744 <view_skip_button+0x44>)
c0d04720:	2100      	movs	r1, #0
c0d04722:	7001      	strb	r1, [r0, #0]
c0d04724:	f000 f84e 	bl	c0d047c4 <h_review_button_left>
c0d04728:	e004      	b.n	c0d04734 <view_skip_button+0x34>
c0d0472a:	4806      	ldr	r0, [pc, #24]	; (c0d04744 <view_skip_button+0x44>)
c0d0472c:	2100      	movs	r1, #0
c0d0472e:	7001      	strb	r1, [r0, #0]
c0d04730:	f000 f854 	bl	c0d047dc <h_review_button_right>
c0d04734:	2000      	movs	r0, #0
c0d04736:	bd80      	pop	{r7, pc}
c0d04738:	80000001 	.word	0x80000001
c0d0473c:	80000002 	.word	0x80000002
c0d04740:	80000003 	.word	0x80000003
c0d04744:	20000a28 	.word	0x20000a28
c0d04748:	200009ac 	.word	0x200009ac

c0d0474c <h_review_action>:
c0d0474c:	b5b0      	push	{r4, r5, r7, lr}
c0d0474e:	4604      	mov	r4, r0
c0d04750:	4d18      	ldr	r5, [pc, #96]	; (c0d047b4 <h_review_action+0x68>)
c0d04752:	7828      	ldrb	r0, [r5, #0]
c0d04754:	2801      	cmp	r0, #1
c0d04756:	d106      	bne.n	c0d04766 <h_review_action+0x1a>
c0d04758:	f7ff fb06 	bl	c0d03d68 <set_accept_item>
c0d0475c:	2000      	movs	r0, #0
c0d0475e:	7028      	strb	r0, [r5, #0]
c0d04760:	f7ff fcdc 	bl	c0d0411c <h_review_update>
c0d04764:	bdb0      	pop	{r4, r5, r7, pc}
c0d04766:	f7ff faf3 	bl	c0d03d50 <is_accept_item>
c0d0476a:	2800      	cmp	r0, #0
c0d0476c:	d007      	beq.n	c0d0477e <h_review_action+0x32>
c0d0476e:	4812      	ldr	r0, [pc, #72]	; (c0d047b8 <h_review_action+0x6c>)
c0d04770:	4478      	add	r0, pc
c0d04772:	f000 faa9 	bl	c0d04cc8 <zemu_log_stack>
c0d04776:	2001      	movs	r0, #1
c0d04778:	f7ff f920 	bl	c0d039bc <h_approve>
c0d0477c:	bdb0      	pop	{r4, r5, r7, pc}
c0d0477e:	f7ff faff 	bl	c0d03d80 <is_reject_item>
c0d04782:	2800      	cmp	r0, #0
c0d04784:	d007      	beq.n	c0d04796 <h_review_action+0x4a>
c0d04786:	480d      	ldr	r0, [pc, #52]	; (c0d047bc <h_review_action+0x70>)
c0d04788:	4478      	add	r0, pc
c0d0478a:	f000 fa9d 	bl	c0d04cc8 <zemu_log_stack>
c0d0478e:	4620      	mov	r0, r4
c0d04790:	f7ff f966 	bl	c0d03a60 <h_reject>
c0d04794:	bdb0      	pop	{r4, r5, r7, pc}
c0d04796:	480a      	ldr	r0, [pc, #40]	; (c0d047c0 <h_review_action+0x74>)
c0d04798:	4478      	add	r0, pc
c0d0479a:	f000 fa95 	bl	c0d04cc8 <zemu_log_stack>
c0d0479e:	f000 f861 	bl	c0d04864 <app_mode_shortcut>
c0d047a2:	2800      	cmp	r0, #0
c0d047a4:	d002      	beq.n	c0d047ac <h_review_action+0x60>
c0d047a6:	f7ff fadf 	bl	c0d03d68 <set_accept_item>
c0d047aa:	e7d9      	b.n	c0d04760 <h_review_action+0x14>
c0d047ac:	f7ff fa0a 	bl	c0d03bc4 <inspect_init>
c0d047b0:	bdb0      	pop	{r4, r5, r7, pc}
c0d047b2:	46c0      	nop			; (mov r8, r8)
c0d047b4:	20000a28 	.word	0x20000a28
c0d047b8:	000051f1 	.word	0x000051f1
c0d047bc:	000051e7 	.word	0x000051e7
c0d047c0:	000051e5 	.word	0x000051e5

c0d047c4 <h_review_button_left>:
c0d047c4:	b580      	push	{r7, lr}
c0d047c6:	4804      	ldr	r0, [pc, #16]	; (c0d047d8 <h_review_button_left+0x14>)
c0d047c8:	4478      	add	r0, pc
c0d047ca:	f000 fa7d 	bl	c0d04cc8 <zemu_log_stack>
c0d047ce:	f7ff fa9f 	bl	c0d03d10 <h_paging_decrease>
c0d047d2:	f7ff fca3 	bl	c0d0411c <h_review_update>
c0d047d6:	bd80      	pop	{r7, pc}
c0d047d8:	000051eb 	.word	0x000051eb

c0d047dc <h_review_button_right>:
c0d047dc:	b580      	push	{r7, lr}
c0d047de:	4804      	ldr	r0, [pc, #16]	; (c0d047f0 <h_review_button_right+0x14>)
c0d047e0:	4478      	add	r0, pc
c0d047e2:	f000 fa71 	bl	c0d04cc8 <zemu_log_stack>
c0d047e6:	f7ff fa51 	bl	c0d03c8c <h_paging_increase>
c0d047ea:	f7ff fc97 	bl	c0d0411c <h_review_update>
c0d047ee:	bd80      	pop	{r7, pc}
c0d047f0:	000051e8 	.word	0x000051e8

c0d047f4 <h_expert_toggle>:
c0d047f4:	b510      	push	{r4, lr}
c0d047f6:	f000 f811 	bl	c0d0481c <app_mode_expert>
c0d047fa:	2401      	movs	r4, #1
c0d047fc:	4060      	eors	r0, r4
c0d047fe:	f000 f817 	bl	c0d04830 <app_mode_set_expert>
c0d04802:	2100      	movs	r1, #0
c0d04804:	4620      	mov	r0, r4
c0d04806:	f7ff f8c3 	bl	c0d03990 <view_idle_show>
c0d0480a:	bd10      	pop	{r4, pc}

c0d0480c <app_mode_reset>:
c0d0480c:	4802      	ldr	r0, [pc, #8]	; (c0d04818 <app_mode_reset+0xc>)
c0d0480e:	2100      	movs	r1, #0
c0d04810:	7041      	strb	r1, [r0, #1]
c0d04812:	7001      	strb	r1, [r0, #0]
c0d04814:	4770      	bx	lr
c0d04816:	46c0      	nop			; (mov r8, r8)
c0d04818:	20000a7c 	.word	0x20000a7c

c0d0481c <app_mode_expert>:
c0d0481c:	b580      	push	{r7, lr}
c0d0481e:	4803      	ldr	r0, [pc, #12]	; (c0d0482c <app_mode_expert+0x10>)
c0d04820:	f002 faba 	bl	c0d06d98 <pic>
c0d04824:	7800      	ldrb	r0, [r0, #0]
c0d04826:	1e41      	subs	r1, r0, #1
c0d04828:	4188      	sbcs	r0, r1
c0d0482a:	bd80      	pop	{r7, pc}
c0d0482c:	c0d0c240 	.word	0xc0d0c240

c0d04830 <app_mode_set_expert>:
c0d04830:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0d04832:	ac01      	add	r4, sp, #4
c0d04834:	7020      	strb	r0, [r4, #0]
c0d04836:	4d09      	ldr	r5, [pc, #36]	; (c0d0485c <app_mode_set_expert+0x2c>)
c0d04838:	4e09      	ldr	r6, [pc, #36]	; (c0d04860 <app_mode_set_expert+0x30>)
c0d0483a:	447e      	add	r6, pc
c0d0483c:	4628      	mov	r0, r5
c0d0483e:	47b0      	blx	r6
c0d04840:	7840      	ldrb	r0, [r0, #1]
c0d04842:	7060      	strb	r0, [r4, #1]
c0d04844:	4628      	mov	r0, r5
c0d04846:	47b0      	blx	r6
c0d04848:	7880      	ldrb	r0, [r0, #2]
c0d0484a:	70a0      	strb	r0, [r4, #2]
c0d0484c:	4628      	mov	r0, r5
c0d0484e:	47b0      	blx	r6
c0d04850:	2203      	movs	r2, #3
c0d04852:	4621      	mov	r1, r4
c0d04854:	f002 fac2 	bl	c0d06ddc <nvm_write>
c0d04858:	bd7c      	pop	{r2, r3, r4, r5, r6, pc}
c0d0485a:	46c0      	nop			; (mov r8, r8)
c0d0485c:	c0d0c240 	.word	0xc0d0c240
c0d04860:	0000255b 	.word	0x0000255b

c0d04864 <app_mode_shortcut>:
c0d04864:	4802      	ldr	r0, [pc, #8]	; (c0d04870 <app_mode_shortcut+0xc>)
c0d04866:	7840      	ldrb	r0, [r0, #1]
c0d04868:	1e41      	subs	r1, r0, #1
c0d0486a:	4188      	sbcs	r0, r1
c0d0486c:	4770      	bx	lr
c0d0486e:	46c0      	nop			; (mov r8, r8)
c0d04870:	20000a7c 	.word	0x20000a7c

c0d04874 <bech32EncodeFromBytes>:
c0d04874:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04876:	b0a9      	sub	sp, #164	; 0xa4
c0d04878:	461d      	mov	r5, r3
c0d0487a:	4614      	mov	r4, r2
c0d0487c:	4606      	mov	r6, r0
c0d0487e:	9107      	str	r1, [sp, #28]
c0d04880:	f002 fbfe 	bl	c0d07080 <explicit_bzero>
c0d04884:	9f2e      	ldr	r7, [sp, #184]	; 0xb8
c0d04886:	2f40      	cmp	r7, #64	; 0x40
c0d04888:	d82d      	bhi.n	c0d048e6 <bech32EncodeFromBytes+0x72>
c0d0488a:	9605      	str	r6, [sp, #20]
c0d0488c:	9506      	str	r5, [sp, #24]
c0d0488e:	4620      	mov	r0, r4
c0d04890:	f002 fd78 	bl	c0d07384 <strlen>
c0d04894:	0079      	lsls	r1, r7, #1
c0d04896:	1808      	adds	r0, r1, r0
c0d04898:	1dc0      	adds	r0, r0, #7
c0d0489a:	9d07      	ldr	r5, [sp, #28]
c0d0489c:	42a8      	cmp	r0, r5
c0d0489e:	d901      	bls.n	c0d048a4 <bech32EncodeFromBytes+0x30>
c0d048a0:	2006      	movs	r0, #6
c0d048a2:	e021      	b.n	c0d048e8 <bech32EncodeFromBytes+0x74>
c0d048a4:	9404      	str	r4, [sp, #16]
c0d048a6:	9e2f      	ldr	r6, [sp, #188]	; 0xbc
c0d048a8:	2000      	movs	r0, #0
c0d048aa:	9008      	str	r0, [sp, #32]
c0d048ac:	ac09      	add	r4, sp, #36	; 0x24
c0d048ae:	2180      	movs	r1, #128	; 0x80
c0d048b0:	4620      	mov	r0, r4
c0d048b2:	f002 fbe5 	bl	c0d07080 <explicit_bzero>
c0d048b6:	2008      	movs	r0, #8
c0d048b8:	9700      	str	r7, [sp, #0]
c0d048ba:	9001      	str	r0, [sp, #4]
c0d048bc:	9602      	str	r6, [sp, #8]
c0d048be:	a908      	add	r1, sp, #32
c0d048c0:	2205      	movs	r2, #5
c0d048c2:	4620      	mov	r0, r4
c0d048c4:	9b06      	ldr	r3, [sp, #24]
c0d048c6:	f000 f91f 	bl	c0d04b08 <convert_bits>
c0d048ca:	9b08      	ldr	r3, [sp, #32]
c0d048cc:	42ab      	cmp	r3, r5
c0d048ce:	d20a      	bcs.n	c0d048e6 <bech32EncodeFromBytes+0x72>
c0d048d0:	9830      	ldr	r0, [sp, #192]	; 0xc0
c0d048d2:	9000      	str	r0, [sp, #0]
c0d048d4:	aa09      	add	r2, sp, #36	; 0x24
c0d048d6:	9805      	ldr	r0, [sp, #20]
c0d048d8:	9904      	ldr	r1, [sp, #16]
c0d048da:	f000 f89f 	bl	c0d04a1c <bech32_encode>
c0d048de:	2800      	cmp	r0, #0
c0d048e0:	d004      	beq.n	c0d048ec <bech32EncodeFromBytes+0x78>
c0d048e2:	2003      	movs	r0, #3
c0d048e4:	e000      	b.n	c0d048e8 <bech32EncodeFromBytes+0x74>
c0d048e6:	2009      	movs	r0, #9
c0d048e8:	b029      	add	sp, #164	; 0xa4
c0d048ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d048ec:	200a      	movs	r0, #10
c0d048ee:	e7fb      	b.n	c0d048e8 <bech32EncodeFromBytes+0x74>

c0d048f0 <buffering_init>:
c0d048f0:	b5b0      	push	{r4, r5, r7, lr}
c0d048f2:	4c07      	ldr	r4, [pc, #28]	; (c0d04910 <buffering_init+0x20>)
c0d048f4:	2500      	movs	r5, #0
c0d048f6:	c423      	stmia	r4!, {r0, r1, r5}
c0d048f8:	4806      	ldr	r0, [pc, #24]	; (c0d04914 <buffering_init+0x24>)
c0d048fa:	c02c      	stmia	r0!, {r2, r3, r5}
c0d048fc:	7821      	ldrb	r1, [r4, #0]
c0d048fe:	2201      	movs	r2, #1
c0d04900:	430a      	orrs	r2, r1
c0d04902:	7022      	strb	r2, [r4, #0]
c0d04904:	7801      	ldrb	r1, [r0, #0]
c0d04906:	22fe      	movs	r2, #254	; 0xfe
c0d04908:	400a      	ands	r2, r1
c0d0490a:	7002      	strb	r2, [r0, #0]
c0d0490c:	bdb0      	pop	{r4, r5, r7, pc}
c0d0490e:	46c0      	nop			; (mov r8, r8)
c0d04910:	20000a80 	.word	0x20000a80
c0d04914:	20000a90 	.word	0x20000a90

c0d04918 <buffering_reset>:
c0d04918:	4806      	ldr	r0, [pc, #24]	; (c0d04934 <buffering_reset+0x1c>)
c0d0491a:	2100      	movs	r1, #0
c0d0491c:	6081      	str	r1, [r0, #8]
c0d0491e:	4a06      	ldr	r2, [pc, #24]	; (c0d04938 <buffering_reset+0x20>)
c0d04920:	6091      	str	r1, [r2, #8]
c0d04922:	7b01      	ldrb	r1, [r0, #12]
c0d04924:	2301      	movs	r3, #1
c0d04926:	430b      	orrs	r3, r1
c0d04928:	7303      	strb	r3, [r0, #12]
c0d0492a:	7b10      	ldrb	r0, [r2, #12]
c0d0492c:	21fe      	movs	r1, #254	; 0xfe
c0d0492e:	4001      	ands	r1, r0
c0d04930:	7311      	strb	r1, [r2, #12]
c0d04932:	4770      	bx	lr
c0d04934:	20000a80 	.word	0x20000a80
c0d04938:	20000a90 	.word	0x20000a90

c0d0493c <buffering_append>:
c0d0493c:	b570      	push	{r4, r5, r6, lr}
c0d0493e:	460c      	mov	r4, r1
c0d04940:	4605      	mov	r5, r0
c0d04942:	4e1c      	ldr	r6, [pc, #112]	; (c0d049b4 <buffering_append+0x78>)
c0d04944:	7b30      	ldrb	r0, [r6, #12]
c0d04946:	07c1      	lsls	r1, r0, #31
c0d04948:	d107      	bne.n	c0d0495a <buffering_append+0x1e>
c0d0494a:	4e1b      	ldr	r6, [pc, #108]	; (c0d049b8 <buffering_append+0x7c>)
c0d0494c:	6871      	ldr	r1, [r6, #4]
c0d0494e:	68b0      	ldr	r0, [r6, #8]
c0d04950:	1a09      	subs	r1, r1, r0
c0d04952:	42a1      	cmp	r1, r4
c0d04954:	d21a      	bcs.n	c0d0498c <buffering_append+0x50>
c0d04956:	2400      	movs	r4, #0
c0d04958:	e029      	b.n	c0d049ae <buffering_append+0x72>
c0d0495a:	6872      	ldr	r2, [r6, #4]
c0d0495c:	68b1      	ldr	r1, [r6, #8]
c0d0495e:	1a52      	subs	r2, r2, r1
c0d04960:	42a2      	cmp	r2, r4
c0d04962:	d21a      	bcs.n	c0d0499a <buffering_append+0x5e>
c0d04964:	22fe      	movs	r2, #254	; 0xfe
c0d04966:	4010      	ands	r0, r2
c0d04968:	7330      	strb	r0, [r6, #12]
c0d0496a:	4813      	ldr	r0, [pc, #76]	; (c0d049b8 <buffering_append+0x7c>)
c0d0496c:	7b02      	ldrb	r2, [r0, #12]
c0d0496e:	2301      	movs	r3, #1
c0d04970:	4313      	orrs	r3, r2
c0d04972:	7303      	strb	r3, [r0, #12]
c0d04974:	2900      	cmp	r1, #0
c0d04976:	d002      	beq.n	c0d0497e <buffering_append+0x42>
c0d04978:	6830      	ldr	r0, [r6, #0]
c0d0497a:	f7ff ffdf 	bl	c0d0493c <buffering_append>
c0d0497e:	4628      	mov	r0, r5
c0d04980:	4621      	mov	r1, r4
c0d04982:	f7ff ffdb 	bl	c0d0493c <buffering_append>
c0d04986:	2100      	movs	r1, #0
c0d04988:	60b1      	str	r1, [r6, #8]
c0d0498a:	bd70      	pop	{r4, r5, r6, pc}
c0d0498c:	6831      	ldr	r1, [r6, #0]
c0d0498e:	1808      	adds	r0, r1, r0
c0d04990:	4629      	mov	r1, r5
c0d04992:	4622      	mov	r2, r4
c0d04994:	f002 fa22 	bl	c0d06ddc <nvm_write>
c0d04998:	e005      	b.n	c0d049a6 <buffering_append+0x6a>
c0d0499a:	6830      	ldr	r0, [r6, #0]
c0d0499c:	1840      	adds	r0, r0, r1
c0d0499e:	4629      	mov	r1, r5
c0d049a0:	4622      	mov	r2, r4
c0d049a2:	f002 fb61 	bl	c0d07068 <__aeabi_memmove>
c0d049a6:	3608      	adds	r6, #8
c0d049a8:	6830      	ldr	r0, [r6, #0]
c0d049aa:	1900      	adds	r0, r0, r4
c0d049ac:	6030      	str	r0, [r6, #0]
c0d049ae:	4620      	mov	r0, r4
c0d049b0:	bd70      	pop	{r4, r5, r6, pc}
c0d049b2:	46c0      	nop			; (mov r8, r8)
c0d049b4:	20000a80 	.word	0x20000a80
c0d049b8:	20000a90 	.word	0x20000a90

c0d049bc <buffering_get_buffer>:
c0d049bc:	4802      	ldr	r0, [pc, #8]	; (c0d049c8 <buffering_get_buffer+0xc>)
c0d049be:	7b01      	ldrb	r1, [r0, #12]
c0d049c0:	07c9      	lsls	r1, r1, #31
c0d049c2:	d100      	bne.n	c0d049c6 <buffering_get_buffer+0xa>
c0d049c4:	4801      	ldr	r0, [pc, #4]	; (c0d049cc <buffering_get_buffer+0x10>)
c0d049c6:	4770      	bx	lr
c0d049c8:	20000a80 	.word	0x20000a80
c0d049cc:	20000a90 	.word	0x20000a90

c0d049d0 <bech32_polymod_step>:
c0d049d0:	0141      	lsls	r1, r0, #5
c0d049d2:	17c9      	asrs	r1, r1, #31
c0d049d4:	4a0c      	ldr	r2, [pc, #48]	; (c0d04a08 <bech32_polymod_step+0x38>)
c0d049d6:	400a      	ands	r2, r1
c0d049d8:	0181      	lsls	r1, r0, #6
c0d049da:	17c9      	asrs	r1, r1, #31
c0d049dc:	4b0b      	ldr	r3, [pc, #44]	; (c0d04a0c <bech32_polymod_step+0x3c>)
c0d049de:	400b      	ands	r3, r1
c0d049e0:	01c1      	lsls	r1, r0, #7
c0d049e2:	0889      	lsrs	r1, r1, #2
c0d049e4:	4059      	eors	r1, r3
c0d049e6:	4051      	eors	r1, r2
c0d049e8:	0102      	lsls	r2, r0, #4
c0d049ea:	17d2      	asrs	r2, r2, #31
c0d049ec:	4b08      	ldr	r3, [pc, #32]	; (c0d04a10 <bech32_polymod_step+0x40>)
c0d049ee:	4013      	ands	r3, r2
c0d049f0:	404b      	eors	r3, r1
c0d049f2:	00c1      	lsls	r1, r0, #3
c0d049f4:	17c9      	asrs	r1, r1, #31
c0d049f6:	4a07      	ldr	r2, [pc, #28]	; (c0d04a14 <bech32_polymod_step+0x44>)
c0d049f8:	400a      	ands	r2, r1
c0d049fa:	405a      	eors	r2, r3
c0d049fc:	0080      	lsls	r0, r0, #2
c0d049fe:	17c1      	asrs	r1, r0, #31
c0d04a00:	4805      	ldr	r0, [pc, #20]	; (c0d04a18 <bech32_polymod_step+0x48>)
c0d04a02:	4008      	ands	r0, r1
c0d04a04:	4050      	eors	r0, r2
c0d04a06:	4770      	bx	lr
c0d04a08:	26508e6d 	.word	0x26508e6d
c0d04a0c:	3b6a57b2 	.word	0x3b6a57b2
c0d04a10:	1ea119fa 	.word	0x1ea119fa
c0d04a14:	3d4233dd 	.word	0x3d4233dd
c0d04a18:	2a1462b3 	.word	0x2a1462b3

c0d04a1c <bech32_encode>:
c0d04a1c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0d04a1e:	9301      	str	r3, [sp, #4]
c0d04a20:	9202      	str	r2, [sp, #8]
c0d04a22:	460f      	mov	r7, r1
c0d04a24:	4604      	mov	r4, r0
c0d04a26:	2500      	movs	r5, #0
c0d04a28:	2001      	movs	r0, #1
c0d04a2a:	9908      	ldr	r1, [sp, #32]
c0d04a2c:	9100      	str	r1, [sp, #0]
c0d04a2e:	5d7e      	ldrb	r6, [r7, r5]
c0d04a30:	2e00      	cmp	r6, #0
c0d04a32:	d00f      	beq.n	c0d04a54 <bech32_encode+0x38>
c0d04a34:	2100      	movs	r1, #0
c0d04a36:	2e21      	cmp	r6, #33	; 0x21
c0d04a38:	d35f      	bcc.n	c0d04afa <bech32_encode+0xde>
c0d04a3a:	2e7e      	cmp	r6, #126	; 0x7e
c0d04a3c:	d85d      	bhi.n	c0d04afa <bech32_encode+0xde>
c0d04a3e:	4632      	mov	r2, r6
c0d04a40:	3a41      	subs	r2, #65	; 0x41
c0d04a42:	2a1a      	cmp	r2, #26
c0d04a44:	d359      	bcc.n	c0d04afa <bech32_encode+0xde>
c0d04a46:	f7ff ffc3 	bl	c0d049d0 <bech32_polymod_step>
c0d04a4a:	4601      	mov	r1, r0
c0d04a4c:	0970      	lsrs	r0, r6, #5
c0d04a4e:	4048      	eors	r0, r1
c0d04a50:	1c6d      	adds	r5, r5, #1
c0d04a52:	e7ec      	b.n	c0d04a2e <bech32_encode+0x12>
c0d04a54:	9e01      	ldr	r6, [sp, #4]
c0d04a56:	1971      	adds	r1, r6, r5
c0d04a58:	1dc9      	adds	r1, r1, #7
c0d04a5a:	295a      	cmp	r1, #90	; 0x5a
c0d04a5c:	d901      	bls.n	c0d04a62 <bech32_encode+0x46>
c0d04a5e:	2100      	movs	r1, #0
c0d04a60:	e04b      	b.n	c0d04afa <bech32_encode+0xde>
c0d04a62:	f7ff ffb5 	bl	c0d049d0 <bech32_polymod_step>
c0d04a66:	783d      	ldrb	r5, [r7, #0]
c0d04a68:	2d00      	cmp	r5, #0
c0d04a6a:	d009      	beq.n	c0d04a80 <bech32_encode+0x64>
c0d04a6c:	f7ff ffb0 	bl	c0d049d0 <bech32_polymod_step>
c0d04a70:	4601      	mov	r1, r0
c0d04a72:	7025      	strb	r5, [r4, #0]
c0d04a74:	201f      	movs	r0, #31
c0d04a76:	4028      	ands	r0, r5
c0d04a78:	4048      	eors	r0, r1
c0d04a7a:	1c64      	adds	r4, r4, #1
c0d04a7c:	1c7f      	adds	r7, r7, #1
c0d04a7e:	e7f2      	b.n	c0d04a66 <bech32_encode+0x4a>
c0d04a80:	2131      	movs	r1, #49	; 0x31
c0d04a82:	7021      	strb	r1, [r4, #0]
c0d04a84:	2200      	movs	r2, #0
c0d04a86:	9902      	ldr	r1, [sp, #8]
c0d04a88:	42b2      	cmp	r2, r6
c0d04a8a:	4f1e      	ldr	r7, [pc, #120]	; (c0d04b04 <bech32_encode+0xe8>)
c0d04a8c:	447f      	add	r7, pc
c0d04a8e:	d013      	beq.n	c0d04ab8 <bech32_encode+0x9c>
c0d04a90:	780e      	ldrb	r6, [r1, #0]
c0d04a92:	2e1f      	cmp	r6, #31
c0d04a94:	d8e3      	bhi.n	c0d04a5e <bech32_encode+0x42>
c0d04a96:	1c65      	adds	r5, r4, #1
c0d04a98:	5dbb      	ldrb	r3, [r7, r6]
c0d04a9a:	9302      	str	r3, [sp, #8]
c0d04a9c:	460c      	mov	r4, r1
c0d04a9e:	4617      	mov	r7, r2
c0d04aa0:	f7ff ff96 	bl	c0d049d0 <bech32_polymod_step>
c0d04aa4:	463a      	mov	r2, r7
c0d04aa6:	4621      	mov	r1, r4
c0d04aa8:	462c      	mov	r4, r5
c0d04aaa:	9b02      	ldr	r3, [sp, #8]
c0d04aac:	702b      	strb	r3, [r5, #0]
c0d04aae:	4070      	eors	r0, r6
c0d04ab0:	1c7a      	adds	r2, r7, #1
c0d04ab2:	1c49      	adds	r1, r1, #1
c0d04ab4:	9e01      	ldr	r6, [sp, #4]
c0d04ab6:	e7e7      	b.n	c0d04a88 <bech32_encode+0x6c>
c0d04ab8:	2506      	movs	r5, #6
c0d04aba:	2d00      	cmp	r5, #0
c0d04abc:	d003      	beq.n	c0d04ac6 <bech32_encode+0xaa>
c0d04abe:	f7ff ff87 	bl	c0d049d0 <bech32_polymod_step>
c0d04ac2:	1e6d      	subs	r5, r5, #1
c0d04ac4:	e7f9      	b.n	c0d04aba <bech32_encode+0x9e>
c0d04ac6:	9a00      	ldr	r2, [sp, #0]
c0d04ac8:	2a02      	cmp	r2, #2
c0d04aca:	d001      	beq.n	c0d04ad0 <bech32_encode+0xb4>
c0d04acc:	2100      	movs	r1, #0
c0d04ace:	e000      	b.n	c0d04ad2 <bech32_encode+0xb6>
c0d04ad0:	490b      	ldr	r1, [pc, #44]	; (c0d04b00 <bech32_encode+0xe4>)
c0d04ad2:	2a01      	cmp	r2, #1
c0d04ad4:	d100      	bne.n	c0d04ad8 <bech32_encode+0xbc>
c0d04ad6:	4611      	mov	r1, r2
c0d04ad8:	4048      	eors	r0, r1
c0d04ada:	2101      	movs	r1, #1
c0d04adc:	2219      	movs	r2, #25
c0d04ade:	2907      	cmp	r1, #7
c0d04ae0:	d008      	beq.n	c0d04af4 <bech32_encode+0xd8>
c0d04ae2:	4603      	mov	r3, r0
c0d04ae4:	40d3      	lsrs	r3, r2
c0d04ae6:	251f      	movs	r5, #31
c0d04ae8:	401d      	ands	r5, r3
c0d04aea:	5d7b      	ldrb	r3, [r7, r5]
c0d04aec:	5463      	strb	r3, [r4, r1]
c0d04aee:	1f52      	subs	r2, r2, #5
c0d04af0:	1c49      	adds	r1, r1, #1
c0d04af2:	e7f4      	b.n	c0d04ade <bech32_encode+0xc2>
c0d04af4:	2000      	movs	r0, #0
c0d04af6:	5460      	strb	r0, [r4, r1]
c0d04af8:	2101      	movs	r1, #1
c0d04afa:	4608      	mov	r0, r1
c0d04afc:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0d04afe:	46c0      	nop			; (mov r8, r8)
c0d04b00:	2bc830a3 	.word	0x2bc830a3
c0d04b04:	000052b5 	.word	0x000052b5

c0d04b08 <convert_bits>:
c0d04b08:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04b0a:	b086      	sub	sp, #24
c0d04b0c:	9303      	str	r3, [sp, #12]
c0d04b0e:	9004      	str	r0, [sp, #16]
c0d04b10:	2000      	movs	r0, #0
c0d04b12:	43c3      	mvns	r3, r0
c0d04b14:	4093      	lsls	r3, r2
c0d04b16:	43db      	mvns	r3, r3
c0d04b18:	9305      	str	r3, [sp, #20]
c0d04b1a:	4257      	negs	r7, r2
c0d04b1c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
c0d04b1e:	9300      	str	r3, [sp, #0]
c0d04b20:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0d04b22:	9301      	str	r3, [sp, #4]
c0d04b24:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
c0d04b26:	4606      	mov	r6, r0
c0d04b28:	2b00      	cmp	r3, #0
c0d04b2a:	d01b      	beq.n	c0d04b64 <convert_bits+0x5c>
c0d04b2c:	1e5b      	subs	r3, r3, #1
c0d04b2e:	9302      	str	r3, [sp, #8]
c0d04b30:	9c01      	ldr	r4, [sp, #4]
c0d04b32:	1936      	adds	r6, r6, r4
c0d04b34:	4603      	mov	r3, r0
c0d04b36:	40a3      	lsls	r3, r4
c0d04b38:	9803      	ldr	r0, [sp, #12]
c0d04b3a:	7800      	ldrb	r0, [r0, #0]
c0d04b3c:	4318      	orrs	r0, r3
c0d04b3e:	4296      	cmp	r6, r2
c0d04b40:	db0b      	blt.n	c0d04b5a <convert_bits+0x52>
c0d04b42:	680b      	ldr	r3, [r1, #0]
c0d04b44:	1c5d      	adds	r5, r3, #1
c0d04b46:	600d      	str	r5, [r1, #0]
c0d04b48:	19bd      	adds	r5, r7, r6
c0d04b4a:	4604      	mov	r4, r0
c0d04b4c:	40ec      	lsrs	r4, r5
c0d04b4e:	9d05      	ldr	r5, [sp, #20]
c0d04b50:	402c      	ands	r4, r5
c0d04b52:	9d04      	ldr	r5, [sp, #16]
c0d04b54:	54ec      	strb	r4, [r5, r3]
c0d04b56:	1ab6      	subs	r6, r6, r2
c0d04b58:	e7f1      	b.n	c0d04b3e <convert_bits+0x36>
c0d04b5a:	9b03      	ldr	r3, [sp, #12]
c0d04b5c:	1c5b      	adds	r3, r3, #1
c0d04b5e:	9303      	str	r3, [sp, #12]
c0d04b60:	9b02      	ldr	r3, [sp, #8]
c0d04b62:	e7e1      	b.n	c0d04b28 <convert_bits+0x20>
c0d04b64:	9b00      	ldr	r3, [sp, #0]
c0d04b66:	2b00      	cmp	r3, #0
c0d04b68:	d00b      	beq.n	c0d04b82 <convert_bits+0x7a>
c0d04b6a:	2e00      	cmp	r6, #0
c0d04b6c:	d012      	beq.n	c0d04b94 <convert_bits+0x8c>
c0d04b6e:	680b      	ldr	r3, [r1, #0]
c0d04b70:	1c5c      	adds	r4, r3, #1
c0d04b72:	600c      	str	r4, [r1, #0]
c0d04b74:	1b91      	subs	r1, r2, r6
c0d04b76:	4088      	lsls	r0, r1
c0d04b78:	9905      	ldr	r1, [sp, #20]
c0d04b7a:	4008      	ands	r0, r1
c0d04b7c:	9904      	ldr	r1, [sp, #16]
c0d04b7e:	54c8      	strb	r0, [r1, r3]
c0d04b80:	e008      	b.n	c0d04b94 <convert_bits+0x8c>
c0d04b82:	2100      	movs	r1, #0
c0d04b84:	9b01      	ldr	r3, [sp, #4]
c0d04b86:	429e      	cmp	r6, r3
c0d04b88:	da05      	bge.n	c0d04b96 <convert_bits+0x8e>
c0d04b8a:	1b92      	subs	r2, r2, r6
c0d04b8c:	4090      	lsls	r0, r2
c0d04b8e:	9a05      	ldr	r2, [sp, #20]
c0d04b90:	4010      	ands	r0, r2
c0d04b92:	d100      	bne.n	c0d04b96 <convert_bits+0x8e>
c0d04b94:	2101      	movs	r1, #1
c0d04b96:	4608      	mov	r0, r1
c0d04b98:	b006      	add	sp, #24
c0d04b9a:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d04b9c <init_zondax_canary>:
c0d04b9c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0d04b9e:	4c10      	ldr	r4, [pc, #64]	; (c0d04be0 <init_zondax_canary+0x44>)
c0d04ba0:	7820      	ldrb	r0, [r4, #0]
c0d04ba2:	2800      	cmp	r0, #0
c0d04ba4:	d11a      	bne.n	c0d04bdc <init_zondax_canary+0x40>
c0d04ba6:	a801      	add	r0, sp, #4
c0d04ba8:	2500      	movs	r5, #0
c0d04baa:	8105      	strh	r5, [r0, #8]
c0d04bac:	9502      	str	r5, [sp, #8]
c0d04bae:	9501      	str	r5, [sp, #4]
c0d04bb0:	210a      	movs	r1, #10
c0d04bb2:	f002 f91f 	bl	c0d06df4 <cx_get_random_bytes>
c0d04bb6:	2800      	cmp	r0, #0
c0d04bb8:	d001      	beq.n	c0d04bbe <init_zondax_canary+0x22>
c0d04bba:	f000 f871 	bl	c0d04ca0 <handle_stack_overflow>
c0d04bbe:	6860      	ldr	r0, [r4, #4]
c0d04bc0:	a901      	add	r1, sp, #4
c0d04bc2:	2d20      	cmp	r5, #32
c0d04bc4:	d005      	beq.n	c0d04bd2 <init_zondax_canary+0x36>
c0d04bc6:	780a      	ldrb	r2, [r1, #0]
c0d04bc8:	40aa      	lsls	r2, r5
c0d04bca:	1810      	adds	r0, r2, r0
c0d04bcc:	1c49      	adds	r1, r1, #1
c0d04bce:	3508      	adds	r5, #8
c0d04bd0:	e7f7      	b.n	c0d04bc2 <init_zondax_canary+0x26>
c0d04bd2:	4904      	ldr	r1, [pc, #16]	; (c0d04be4 <init_zondax_canary+0x48>)
c0d04bd4:	6048      	str	r0, [r1, #4]
c0d04bd6:	6060      	str	r0, [r4, #4]
c0d04bd8:	2001      	movs	r0, #1
c0d04bda:	7020      	strb	r0, [r4, #0]
c0d04bdc:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0d04bde:	46c0      	nop			; (mov r8, r8)
c0d04be0:	20000aa0 	.word	0x20000aa0
c0d04be4:	20000d7c 	.word	0x20000d7c

c0d04be8 <check_zondax_canary>:
c0d04be8:	b580      	push	{r7, lr}
c0d04bea:	4806      	ldr	r0, [pc, #24]	; (c0d04c04 <check_zondax_canary+0x1c>)
c0d04bec:	7801      	ldrb	r1, [r0, #0]
c0d04bee:	2901      	cmp	r1, #1
c0d04bf0:	d104      	bne.n	c0d04bfc <check_zondax_canary+0x14>
c0d04bf2:	6840      	ldr	r0, [r0, #4]
c0d04bf4:	4904      	ldr	r1, [pc, #16]	; (c0d04c08 <check_zondax_canary+0x20>)
c0d04bf6:	6849      	ldr	r1, [r1, #4]
c0d04bf8:	4281      	cmp	r1, r0
c0d04bfa:	d001      	beq.n	c0d04c00 <check_zondax_canary+0x18>
c0d04bfc:	f000 f850 	bl	c0d04ca0 <handle_stack_overflow>
c0d04c00:	bd80      	pop	{r7, pc}
c0d04c02:	46c0      	nop			; (mov r8, r8)
c0d04c04:	20000aa0 	.word	0x20000aa0
c0d04c08:	20000d7c 	.word	0x20000d7c

c0d04c0c <z_strlen>:
c0d04c0c:	b580      	push	{r7, lr}
c0d04c0e:	2800      	cmp	r0, #0
c0d04c10:	d002      	beq.n	c0d04c18 <z_strlen+0xc>
c0d04c12:	f002 fc55 	bl	c0d074c0 <strnlen>
c0d04c16:	bd80      	pop	{r7, pc}
c0d04c18:	2000      	movs	r0, #0
c0d04c1a:	bd80      	pop	{r7, pc}

c0d04c1c <z_str3join>:
c0d04c1c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04c1e:	b085      	sub	sp, #20
c0d04c20:	461c      	mov	r4, r3
c0d04c22:	4617      	mov	r7, r2
c0d04c24:	460d      	mov	r5, r1
c0d04c26:	4e1c      	ldr	r6, [pc, #112]	; (c0d04c98 <z_str3join+0x7c>)
c0d04c28:	447e      	add	r6, pc
c0d04c2a:	9004      	str	r0, [sp, #16]
c0d04c2c:	47b0      	blx	r6
c0d04c2e:	9003      	str	r0, [sp, #12]
c0d04c30:	9702      	str	r7, [sp, #8]
c0d04c32:	4638      	mov	r0, r7
c0d04c34:	4629      	mov	r1, r5
c0d04c36:	47b0      	blx	r6
c0d04c38:	4607      	mov	r7, r0
c0d04c3a:	9401      	str	r4, [sp, #4]
c0d04c3c:	4620      	mov	r0, r4
c0d04c3e:	4629      	mov	r1, r5
c0d04c40:	47b0      	blx	r6
c0d04c42:	9903      	ldr	r1, [sp, #12]
c0d04c44:	4602      	mov	r2, r0
c0d04c46:	1846      	adds	r6, r0, r1
c0d04c48:	1c73      	adds	r3, r6, #1
c0d04c4a:	19d8      	adds	r0, r3, r7
c0d04c4c:	42a8      	cmp	r0, r5
c0d04c4e:	d907      	bls.n	c0d04c60 <z_str3join+0x44>
c0d04c50:	4a12      	ldr	r2, [pc, #72]	; (c0d04c9c <z_str3join+0x80>)
c0d04c52:	447a      	add	r2, pc
c0d04c54:	9804      	ldr	r0, [sp, #16]
c0d04c56:	4629      	mov	r1, r5
c0d04c58:	f001 feda 	bl	c0d06a10 <snprintf>
c0d04c5c:	2506      	movs	r5, #6
c0d04c5e:	e017      	b.n	c0d04c90 <z_str3join+0x74>
c0d04c60:	2a00      	cmp	r2, #0
c0d04c62:	9c04      	ldr	r4, [sp, #16]
c0d04c64:	d007      	beq.n	c0d04c76 <z_str3join+0x5a>
c0d04c66:	1860      	adds	r0, r4, r1
c0d04c68:	9901      	ldr	r1, [sp, #4]
c0d04c6a:	461d      	mov	r5, r3
c0d04c6c:	f002 f9fc 	bl	c0d07068 <__aeabi_memmove>
c0d04c70:	462b      	mov	r3, r5
c0d04c72:	2000      	movs	r0, #0
c0d04c74:	55a0      	strb	r0, [r4, r6]
c0d04c76:	2503      	movs	r5, #3
c0d04c78:	2f00      	cmp	r7, #0
c0d04c7a:	d009      	beq.n	c0d04c90 <z_str3join+0x74>
c0d04c7c:	19e0      	adds	r0, r4, r7
c0d04c7e:	4621      	mov	r1, r4
c0d04c80:	461a      	mov	r2, r3
c0d04c82:	f002 f9f1 	bl	c0d07068 <__aeabi_memmove>
c0d04c86:	4620      	mov	r0, r4
c0d04c88:	9902      	ldr	r1, [sp, #8]
c0d04c8a:	463a      	mov	r2, r7
c0d04c8c:	f002 f9ec 	bl	c0d07068 <__aeabi_memmove>
c0d04c90:	4628      	mov	r0, r5
c0d04c92:	b005      	add	sp, #20
c0d04c94:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d04c96:	46c0      	nop			; (mov r8, r8)
c0d04c98:	ffffffe1 	.word	0xffffffe1
c0d04c9c:	00005114 	.word	0x00005114

c0d04ca0 <handle_stack_overflow>:
c0d04ca0:	b580      	push	{r7, lr}
c0d04ca2:	f001 fbff 	bl	c0d064a4 <io_seproxyhal_se_reset>
c0d04ca6:	bd80      	pop	{r7, pc}

c0d04ca8 <check_app_canary>:
c0d04ca8:	b580      	push	{r7, lr}
c0d04caa:	4805      	ldr	r0, [pc, #20]	; (c0d04cc0 <check_app_canary+0x18>)
c0d04cac:	6800      	ldr	r0, [r0, #0]
c0d04cae:	4905      	ldr	r1, [pc, #20]	; (c0d04cc4 <check_app_canary+0x1c>)
c0d04cb0:	4288      	cmp	r0, r1
c0d04cb2:	d001      	beq.n	c0d04cb8 <check_app_canary+0x10>
c0d04cb4:	f001 fbf6 	bl	c0d064a4 <io_seproxyhal_se_reset>
c0d04cb8:	f7ff ff96 	bl	c0d04be8 <check_zondax_canary>
c0d04cbc:	bd80      	pop	{r7, pc}
c0d04cbe:	46c0      	nop			; (mov r8, r8)
c0d04cc0:	20000d7c 	.word	0x20000d7c
c0d04cc4:	dead0031 	.word	0xdead0031

c0d04cc8 <zemu_log_stack>:
c0d04cc8:	4770      	bx	lr
	...

c0d04ccc <zx_compute_line_width_light>:
c0d04ccc:	b510      	push	{r4, lr}
c0d04cce:	2800      	cmp	r0, #0
c0d04cd0:	d017      	beq.n	c0d04d02 <zx_compute_line_width_light+0x36>
c0d04cd2:	2200      	movs	r2, #0
c0d04cd4:	060b      	lsls	r3, r1, #24
c0d04cd6:	d015      	beq.n	c0d04d04 <zx_compute_line_width_light+0x38>
c0d04cd8:	7803      	ldrb	r3, [r0, #0]
c0d04cda:	2b20      	cmp	r3, #32
c0d04cdc:	d30a      	bcc.n	c0d04cf4 <zx_compute_line_width_light+0x28>
c0d04cde:	b25c      	sxtb	r4, r3
c0d04ce0:	2c00      	cmp	r4, #0
c0d04ce2:	d407      	bmi.n	c0d04cf4 <zx_compute_line_width_light+0x28>
c0d04ce4:	4c09      	ldr	r4, [pc, #36]	; (c0d04d0c <zx_compute_line_width_light+0x40>)
c0d04ce6:	447c      	add	r4, pc
c0d04ce8:	191b      	adds	r3, r3, r4
c0d04cea:	3b20      	subs	r3, #32
c0d04cec:	781b      	ldrb	r3, [r3, #0]
c0d04cee:	091b      	lsrs	r3, r3, #4
c0d04cf0:	18d2      	adds	r2, r2, r3
c0d04cf2:	e003      	b.n	c0d04cfc <zx_compute_line_width_light+0x30>
c0d04cf4:	2b0a      	cmp	r3, #10
c0d04cf6:	d005      	beq.n	c0d04d04 <zx_compute_line_width_light+0x38>
c0d04cf8:	2b0d      	cmp	r3, #13
c0d04cfa:	d003      	beq.n	c0d04d04 <zx_compute_line_width_light+0x38>
c0d04cfc:	1e49      	subs	r1, r1, #1
c0d04cfe:	1c40      	adds	r0, r0, #1
c0d04d00:	e7e8      	b.n	c0d04cd4 <zx_compute_line_width_light+0x8>
c0d04d02:	4a01      	ldr	r2, [pc, #4]	; (c0d04d08 <zx_compute_line_width_light+0x3c>)
c0d04d04:	b290      	uxth	r0, r2
c0d04d06:	bd10      	pop	{r4, pc}
c0d04d08:	0000ffff 	.word	0x0000ffff
c0d04d0c:	00005087 	.word	0x00005087

c0d04d10 <USBD_HID_Setup>:
c0d04d10:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0d04d12:	460e      	mov	r6, r1
c0d04d14:	4605      	mov	r5, r0
c0d04d16:	a802      	add	r0, sp, #8
c0d04d18:	2400      	movs	r4, #0
c0d04d1a:	8004      	strh	r4, [r0, #0]
c0d04d1c:	a801      	add	r0, sp, #4
c0d04d1e:	7004      	strb	r4, [r0, #0]
c0d04d20:	7809      	ldrb	r1, [r1, #0]
c0d04d22:	2060      	movs	r0, #96	; 0x60
c0d04d24:	4008      	ands	r0, r1
c0d04d26:	d010      	beq.n	c0d04d4a <USBD_HID_Setup+0x3a>
c0d04d28:	2820      	cmp	r0, #32
c0d04d2a:	d137      	bne.n	c0d04d9c <USBD_HID_Setup+0x8c>
c0d04d2c:	7870      	ldrb	r0, [r6, #1]
c0d04d2e:	4601      	mov	r1, r0
c0d04d30:	390a      	subs	r1, #10
c0d04d32:	2902      	cmp	r1, #2
c0d04d34:	d332      	bcc.n	c0d04d9c <USBD_HID_Setup+0x8c>
c0d04d36:	2802      	cmp	r0, #2
c0d04d38:	d01b      	beq.n	c0d04d72 <USBD_HID_Setup+0x62>
c0d04d3a:	2803      	cmp	r0, #3
c0d04d3c:	d019      	beq.n	c0d04d72 <USBD_HID_Setup+0x62>
c0d04d3e:	4628      	mov	r0, r5
c0d04d40:	4631      	mov	r1, r6
c0d04d42:	f000 fe85 	bl	c0d05a50 <USBD_CtlError>
c0d04d46:	2402      	movs	r4, #2
c0d04d48:	e028      	b.n	c0d04d9c <USBD_HID_Setup+0x8c>
c0d04d4a:	7870      	ldrb	r0, [r6, #1]
c0d04d4c:	280b      	cmp	r0, #11
c0d04d4e:	d013      	beq.n	c0d04d78 <USBD_HID_Setup+0x68>
c0d04d50:	280a      	cmp	r0, #10
c0d04d52:	d00e      	beq.n	c0d04d72 <USBD_HID_Setup+0x62>
c0d04d54:	2806      	cmp	r0, #6
c0d04d56:	d121      	bne.n	c0d04d9c <USBD_HID_Setup+0x8c>
c0d04d58:	78f0      	ldrb	r0, [r6, #3]
c0d04d5a:	2400      	movs	r4, #0
c0d04d5c:	2821      	cmp	r0, #33	; 0x21
c0d04d5e:	d00f      	beq.n	c0d04d80 <USBD_HID_Setup+0x70>
c0d04d60:	2822      	cmp	r0, #34	; 0x22
c0d04d62:	4622      	mov	r2, r4
c0d04d64:	4621      	mov	r1, r4
c0d04d66:	d116      	bne.n	c0d04d96 <USBD_HID_Setup+0x86>
c0d04d68:	af02      	add	r7, sp, #8
c0d04d6a:	4638      	mov	r0, r7
c0d04d6c:	f000 fd98 	bl	c0d058a0 <USBD_HID_GetReportDescriptor_impl>
c0d04d70:	e00a      	b.n	c0d04d88 <USBD_HID_Setup+0x78>
c0d04d72:	a901      	add	r1, sp, #4
c0d04d74:	2201      	movs	r2, #1
c0d04d76:	e00e      	b.n	c0d04d96 <USBD_HID_Setup+0x86>
c0d04d78:	4628      	mov	r0, r5
c0d04d7a:	f000 fc6a 	bl	c0d05652 <USBD_CtlSendStatus>
c0d04d7e:	e00d      	b.n	c0d04d9c <USBD_HID_Setup+0x8c>
c0d04d80:	af02      	add	r7, sp, #8
c0d04d82:	4638      	mov	r0, r7
c0d04d84:	f000 fd76 	bl	c0d05874 <USBD_HID_GetHidDescriptor_impl>
c0d04d88:	4601      	mov	r1, r0
c0d04d8a:	883a      	ldrh	r2, [r7, #0]
c0d04d8c:	88f0      	ldrh	r0, [r6, #6]
c0d04d8e:	4282      	cmp	r2, r0
c0d04d90:	d300      	bcc.n	c0d04d94 <USBD_HID_Setup+0x84>
c0d04d92:	4602      	mov	r2, r0
c0d04d94:	803a      	strh	r2, [r7, #0]
c0d04d96:	4628      	mov	r0, r5
c0d04d98:	f000 fc30 	bl	c0d055fc <USBD_CtlSendData>
c0d04d9c:	4620      	mov	r0, r4
c0d04d9e:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0d04da0 <USBD_HID_Init>:
c0d04da0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d04da2:	4604      	mov	r4, r0
c0d04da4:	2182      	movs	r1, #130	; 0x82
c0d04da6:	2603      	movs	r6, #3
c0d04da8:	2540      	movs	r5, #64	; 0x40
c0d04daa:	4632      	mov	r2, r6
c0d04dac:	462b      	mov	r3, r5
c0d04dae:	f000 fca9 	bl	c0d05704 <USBD_LL_OpenEP>
c0d04db2:	2702      	movs	r7, #2
c0d04db4:	4620      	mov	r0, r4
c0d04db6:	4639      	mov	r1, r7
c0d04db8:	4632      	mov	r2, r6
c0d04dba:	462b      	mov	r3, r5
c0d04dbc:	f000 fca2 	bl	c0d05704 <USBD_LL_OpenEP>
c0d04dc0:	4620      	mov	r0, r4
c0d04dc2:	4639      	mov	r1, r7
c0d04dc4:	462a      	mov	r2, r5
c0d04dc6:	f000 fd44 	bl	c0d05852 <USBD_LL_PrepareReceive>
c0d04dca:	2000      	movs	r0, #0
c0d04dcc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0d04dce <USBD_HID_DeInit>:
c0d04dce:	2000      	movs	r0, #0
c0d04dd0:	4770      	bx	lr

c0d04dd2 <USBD_Init>:
c0d04dd2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d04dd4:	2800      	cmp	r0, #0
c0d04dd6:	d014      	beq.n	c0d04e02 <USBD_Init+0x30>
c0d04dd8:	4615      	mov	r5, r2
c0d04dda:	460e      	mov	r6, r1
c0d04ddc:	4604      	mov	r4, r0
c0d04dde:	4607      	mov	r7, r0
c0d04de0:	37fc      	adds	r7, #252	; 0xfc
c0d04de2:	204d      	movs	r0, #77	; 0x4d
c0d04de4:	0081      	lsls	r1, r0, #2
c0d04de6:	4620      	mov	r0, r4
c0d04de8:	f002 f934 	bl	c0d07054 <__aeabi_memclr>
c0d04dec:	2e00      	cmp	r6, #0
c0d04dee:	d000      	beq.n	c0d04df2 <USBD_Init+0x20>
c0d04df0:	617e      	str	r6, [r7, #20]
c0d04df2:	7025      	strb	r5, [r4, #0]
c0d04df4:	2001      	movs	r0, #1
c0d04df6:	7038      	strb	r0, [r7, #0]
c0d04df8:	4620      	mov	r0, r4
c0d04dfa:	f000 fc41 	bl	c0d05680 <USBD_LL_Init>
c0d04dfe:	2000      	movs	r0, #0
c0d04e00:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d04e02:	2002      	movs	r0, #2
c0d04e04:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0d04e06 <USBD_DeInit>:
c0d04e06:	b570      	push	{r4, r5, r6, lr}
c0d04e08:	4604      	mov	r4, r0
c0d04e0a:	20fc      	movs	r0, #252	; 0xfc
c0d04e0c:	2101      	movs	r1, #1
c0d04e0e:	5421      	strb	r1, [r4, r0]
c0d04e10:	2045      	movs	r0, #69	; 0x45
c0d04e12:	0080      	lsls	r0, r0, #2
c0d04e14:	1825      	adds	r5, r4, r0
c0d04e16:	2017      	movs	r0, #23
c0d04e18:	43c6      	mvns	r6, r0
c0d04e1a:	2e00      	cmp	r6, #0
c0d04e1c:	d00c      	beq.n	c0d04e38 <USBD_DeInit+0x32>
c0d04e1e:	19a8      	adds	r0, r5, r6
c0d04e20:	6980      	ldr	r0, [r0, #24]
c0d04e22:	2800      	cmp	r0, #0
c0d04e24:	d006      	beq.n	c0d04e34 <USBD_DeInit+0x2e>
c0d04e26:	6840      	ldr	r0, [r0, #4]
c0d04e28:	f001 ffb6 	bl	c0d06d98 <pic>
c0d04e2c:	4602      	mov	r2, r0
c0d04e2e:	7921      	ldrb	r1, [r4, #4]
c0d04e30:	4620      	mov	r0, r4
c0d04e32:	4790      	blx	r2
c0d04e34:	3608      	adds	r6, #8
c0d04e36:	e7f0      	b.n	c0d04e1a <USBD_DeInit+0x14>
c0d04e38:	4620      	mov	r0, r4
c0d04e3a:	f000 fc54 	bl	c0d056e6 <USBD_LL_Stop>
c0d04e3e:	4620      	mov	r0, r4
c0d04e40:	f000 fc28 	bl	c0d05694 <USBD_LL_DeInit>
c0d04e44:	2000      	movs	r0, #0
c0d04e46:	bd70      	pop	{r4, r5, r6, pc}

c0d04e48 <USBD_RegisterClassForInterface>:
c0d04e48:	2a00      	cmp	r2, #0
c0d04e4a:	d009      	beq.n	c0d04e60 <USBD_RegisterClassForInterface+0x18>
c0d04e4c:	4603      	mov	r3, r0
c0d04e4e:	2000      	movs	r0, #0
c0d04e50:	2b02      	cmp	r3, #2
c0d04e52:	d804      	bhi.n	c0d04e5e <USBD_RegisterClassForInterface+0x16>
c0d04e54:	00db      	lsls	r3, r3, #3
c0d04e56:	18c9      	adds	r1, r1, r3
c0d04e58:	2345      	movs	r3, #69	; 0x45
c0d04e5a:	009b      	lsls	r3, r3, #2
c0d04e5c:	50ca      	str	r2, [r1, r3]
c0d04e5e:	4770      	bx	lr
c0d04e60:	2002      	movs	r0, #2
c0d04e62:	4770      	bx	lr

c0d04e64 <USBD_Start>:
c0d04e64:	b580      	push	{r7, lr}
c0d04e66:	f000 fc24 	bl	c0d056b2 <USBD_LL_Start>
c0d04e6a:	2000      	movs	r0, #0
c0d04e6c:	bd80      	pop	{r7, pc}

c0d04e6e <USBD_SetClassConfig>:
c0d04e6e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d04e70:	460c      	mov	r4, r1
c0d04e72:	4605      	mov	r5, r0
c0d04e74:	2045      	movs	r0, #69	; 0x45
c0d04e76:	0087      	lsls	r7, r0, #2
c0d04e78:	2600      	movs	r6, #0
c0d04e7a:	2e03      	cmp	r6, #3
c0d04e7c:	d010      	beq.n	c0d04ea0 <USBD_SetClassConfig+0x32>
c0d04e7e:	4628      	mov	r0, r5
c0d04e80:	4631      	mov	r1, r6
c0d04e82:	f000 f96a 	bl	c0d0515a <usbd_is_valid_intf>
c0d04e86:	2800      	cmp	r0, #0
c0d04e88:	d007      	beq.n	c0d04e9a <USBD_SetClassConfig+0x2c>
c0d04e8a:	59e8      	ldr	r0, [r5, r7]
c0d04e8c:	6800      	ldr	r0, [r0, #0]
c0d04e8e:	f001 ff83 	bl	c0d06d98 <pic>
c0d04e92:	4602      	mov	r2, r0
c0d04e94:	4628      	mov	r0, r5
c0d04e96:	4621      	mov	r1, r4
c0d04e98:	4790      	blx	r2
c0d04e9a:	3708      	adds	r7, #8
c0d04e9c:	1c76      	adds	r6, r6, #1
c0d04e9e:	e7ec      	b.n	c0d04e7a <USBD_SetClassConfig+0xc>
c0d04ea0:	2000      	movs	r0, #0
c0d04ea2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0d04ea4 <USBD_ClrClassConfig>:
c0d04ea4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d04ea6:	460c      	mov	r4, r1
c0d04ea8:	4605      	mov	r5, r0
c0d04eaa:	2045      	movs	r0, #69	; 0x45
c0d04eac:	0087      	lsls	r7, r0, #2
c0d04eae:	2600      	movs	r6, #0
c0d04eb0:	2e03      	cmp	r6, #3
c0d04eb2:	d010      	beq.n	c0d04ed6 <USBD_ClrClassConfig+0x32>
c0d04eb4:	4628      	mov	r0, r5
c0d04eb6:	4631      	mov	r1, r6
c0d04eb8:	f000 f94f 	bl	c0d0515a <usbd_is_valid_intf>
c0d04ebc:	2800      	cmp	r0, #0
c0d04ebe:	d007      	beq.n	c0d04ed0 <USBD_ClrClassConfig+0x2c>
c0d04ec0:	59e8      	ldr	r0, [r5, r7]
c0d04ec2:	6840      	ldr	r0, [r0, #4]
c0d04ec4:	f001 ff68 	bl	c0d06d98 <pic>
c0d04ec8:	4602      	mov	r2, r0
c0d04eca:	4628      	mov	r0, r5
c0d04ecc:	4621      	mov	r1, r4
c0d04ece:	4790      	blx	r2
c0d04ed0:	3708      	adds	r7, #8
c0d04ed2:	1c76      	adds	r6, r6, #1
c0d04ed4:	e7ec      	b.n	c0d04eb0 <USBD_ClrClassConfig+0xc>
c0d04ed6:	2000      	movs	r0, #0
c0d04ed8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0d04eda <USBD_LL_SetupStage>:
c0d04eda:	b570      	push	{r4, r5, r6, lr}
c0d04edc:	4604      	mov	r4, r0
c0d04ede:	4606      	mov	r6, r0
c0d04ee0:	36f4      	adds	r6, #244	; 0xf4
c0d04ee2:	4635      	mov	r5, r6
c0d04ee4:	3514      	adds	r5, #20
c0d04ee6:	4628      	mov	r0, r5
c0d04ee8:	f000 fb6a 	bl	c0d055c0 <USBD_ParseSetupRequest>
c0d04eec:	20f4      	movs	r0, #244	; 0xf4
c0d04eee:	2101      	movs	r1, #1
c0d04ef0:	5021      	str	r1, [r4, r0]
c0d04ef2:	2087      	movs	r0, #135	; 0x87
c0d04ef4:	0040      	lsls	r0, r0, #1
c0d04ef6:	5a20      	ldrh	r0, [r4, r0]
c0d04ef8:	6070      	str	r0, [r6, #4]
c0d04efa:	7d31      	ldrb	r1, [r6, #20]
c0d04efc:	201f      	movs	r0, #31
c0d04efe:	4008      	ands	r0, r1
c0d04f00:	2802      	cmp	r0, #2
c0d04f02:	d008      	beq.n	c0d04f16 <USBD_LL_SetupStage+0x3c>
c0d04f04:	2801      	cmp	r0, #1
c0d04f06:	d00b      	beq.n	c0d04f20 <USBD_LL_SetupStage+0x46>
c0d04f08:	2800      	cmp	r0, #0
c0d04f0a:	d10e      	bne.n	c0d04f2a <USBD_LL_SetupStage+0x50>
c0d04f0c:	4620      	mov	r0, r4
c0d04f0e:	4629      	mov	r1, r5
c0d04f10:	f000 f92f 	bl	c0d05172 <USBD_StdDevReq>
c0d04f14:	e00e      	b.n	c0d04f34 <USBD_LL_SetupStage+0x5a>
c0d04f16:	4620      	mov	r0, r4
c0d04f18:	4629      	mov	r1, r5
c0d04f1a:	f000 face 	bl	c0d054ba <USBD_StdEPReq>
c0d04f1e:	e009      	b.n	c0d04f34 <USBD_LL_SetupStage+0x5a>
c0d04f20:	4620      	mov	r0, r4
c0d04f22:	4629      	mov	r1, r5
c0d04f24:	f000 faa4 	bl	c0d05470 <USBD_StdItfReq>
c0d04f28:	e004      	b.n	c0d04f34 <USBD_LL_SetupStage+0x5a>
c0d04f2a:	2080      	movs	r0, #128	; 0x80
c0d04f2c:	4001      	ands	r1, r0
c0d04f2e:	4620      	mov	r0, r4
c0d04f30:	f000 fc14 	bl	c0d0575c <USBD_LL_StallEP>
c0d04f34:	2000      	movs	r0, #0
c0d04f36:	bd70      	pop	{r4, r5, r6, pc}

c0d04f38 <USBD_LL_DataOutStage>:
c0d04f38:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04f3a:	b085      	sub	sp, #20
c0d04f3c:	9302      	str	r3, [sp, #8]
c0d04f3e:	9203      	str	r2, [sp, #12]
c0d04f40:	4604      	mov	r4, r0
c0d04f42:	30fc      	adds	r0, #252	; 0xfc
c0d04f44:	9004      	str	r0, [sp, #16]
c0d04f46:	9101      	str	r1, [sp, #4]
c0d04f48:	2900      	cmp	r1, #0
c0d04f4a:	d01d      	beq.n	c0d04f88 <USBD_LL_DataOutStage+0x50>
c0d04f4c:	2045      	movs	r0, #69	; 0x45
c0d04f4e:	0087      	lsls	r7, r0, #2
c0d04f50:	2500      	movs	r5, #0
c0d04f52:	2d03      	cmp	r5, #3
c0d04f54:	d04a      	beq.n	c0d04fec <USBD_LL_DataOutStage+0xb4>
c0d04f56:	4620      	mov	r0, r4
c0d04f58:	4629      	mov	r1, r5
c0d04f5a:	f000 f8fe 	bl	c0d0515a <usbd_is_valid_intf>
c0d04f5e:	2800      	cmp	r0, #0
c0d04f60:	d00f      	beq.n	c0d04f82 <USBD_LL_DataOutStage+0x4a>
c0d04f62:	59e0      	ldr	r0, [r4, r7]
c0d04f64:	6980      	ldr	r0, [r0, #24]
c0d04f66:	2800      	cmp	r0, #0
c0d04f68:	d00b      	beq.n	c0d04f82 <USBD_LL_DataOutStage+0x4a>
c0d04f6a:	9904      	ldr	r1, [sp, #16]
c0d04f6c:	7809      	ldrb	r1, [r1, #0]
c0d04f6e:	2903      	cmp	r1, #3
c0d04f70:	d107      	bne.n	c0d04f82 <USBD_LL_DataOutStage+0x4a>
c0d04f72:	f001 ff11 	bl	c0d06d98 <pic>
c0d04f76:	4606      	mov	r6, r0
c0d04f78:	4620      	mov	r0, r4
c0d04f7a:	9901      	ldr	r1, [sp, #4]
c0d04f7c:	9a03      	ldr	r2, [sp, #12]
c0d04f7e:	9b02      	ldr	r3, [sp, #8]
c0d04f80:	47b0      	blx	r6
c0d04f82:	3708      	adds	r7, #8
c0d04f84:	1c6d      	adds	r5, r5, #1
c0d04f86:	e7e4      	b.n	c0d04f52 <USBD_LL_DataOutStage+0x1a>
c0d04f88:	4620      	mov	r0, r4
c0d04f8a:	308c      	adds	r0, #140	; 0x8c
c0d04f8c:	6e81      	ldr	r1, [r0, #104]	; 0x68
c0d04f8e:	2903      	cmp	r1, #3
c0d04f90:	d12c      	bne.n	c0d04fec <USBD_LL_DataOutStage+0xb4>
c0d04f92:	6802      	ldr	r2, [r0, #0]
c0d04f94:	6841      	ldr	r1, [r0, #4]
c0d04f96:	428a      	cmp	r2, r1
c0d04f98:	d90a      	bls.n	c0d04fb0 <USBD_LL_DataOutStage+0x78>
c0d04f9a:	1a52      	subs	r2, r2, r1
c0d04f9c:	6002      	str	r2, [r0, #0]
c0d04f9e:	428a      	cmp	r2, r1
c0d04fa0:	d300      	bcc.n	c0d04fa4 <USBD_LL_DataOutStage+0x6c>
c0d04fa2:	460a      	mov	r2, r1
c0d04fa4:	b292      	uxth	r2, r2
c0d04fa6:	4620      	mov	r0, r4
c0d04fa8:	9903      	ldr	r1, [sp, #12]
c0d04faa:	f000 fb4b 	bl	c0d05644 <USBD_CtlContinueRx>
c0d04fae:	e01d      	b.n	c0d04fec <USBD_LL_DataOutStage+0xb4>
c0d04fb0:	2045      	movs	r0, #69	; 0x45
c0d04fb2:	0086      	lsls	r6, r0, #2
c0d04fb4:	2500      	movs	r5, #0
c0d04fb6:	2d03      	cmp	r5, #3
c0d04fb8:	d015      	beq.n	c0d04fe6 <USBD_LL_DataOutStage+0xae>
c0d04fba:	4620      	mov	r0, r4
c0d04fbc:	4629      	mov	r1, r5
c0d04fbe:	f000 f8cc 	bl	c0d0515a <usbd_is_valid_intf>
c0d04fc2:	2800      	cmp	r0, #0
c0d04fc4:	d00c      	beq.n	c0d04fe0 <USBD_LL_DataOutStage+0xa8>
c0d04fc6:	59a0      	ldr	r0, [r4, r6]
c0d04fc8:	6900      	ldr	r0, [r0, #16]
c0d04fca:	2800      	cmp	r0, #0
c0d04fcc:	d008      	beq.n	c0d04fe0 <USBD_LL_DataOutStage+0xa8>
c0d04fce:	9904      	ldr	r1, [sp, #16]
c0d04fd0:	7809      	ldrb	r1, [r1, #0]
c0d04fd2:	2903      	cmp	r1, #3
c0d04fd4:	d104      	bne.n	c0d04fe0 <USBD_LL_DataOutStage+0xa8>
c0d04fd6:	f001 fedf 	bl	c0d06d98 <pic>
c0d04fda:	4601      	mov	r1, r0
c0d04fdc:	4620      	mov	r0, r4
c0d04fde:	4788      	blx	r1
c0d04fe0:	3608      	adds	r6, #8
c0d04fe2:	1c6d      	adds	r5, r5, #1
c0d04fe4:	e7e7      	b.n	c0d04fb6 <USBD_LL_DataOutStage+0x7e>
c0d04fe6:	4620      	mov	r0, r4
c0d04fe8:	f000 fb33 	bl	c0d05652 <USBD_CtlSendStatus>
c0d04fec:	2000      	movs	r0, #0
c0d04fee:	b005      	add	sp, #20
c0d04ff0:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d04ff2 <USBD_LL_DataInStage>:
c0d04ff2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d04ff4:	4604      	mov	r4, r0
c0d04ff6:	4607      	mov	r7, r0
c0d04ff8:	37f4      	adds	r7, #244	; 0xf4
c0d04ffa:	9100      	str	r1, [sp, #0]
c0d04ffc:	2900      	cmp	r1, #0
c0d04ffe:	d01b      	beq.n	c0d05038 <USBD_LL_DataInStage+0x46>
c0d05000:	463d      	mov	r5, r7
c0d05002:	2045      	movs	r0, #69	; 0x45
c0d05004:	0087      	lsls	r7, r0, #2
c0d05006:	2600      	movs	r6, #0
c0d05008:	2e03      	cmp	r6, #3
c0d0500a:	d05d      	beq.n	c0d050c8 <USBD_LL_DataInStage+0xd6>
c0d0500c:	4620      	mov	r0, r4
c0d0500e:	4631      	mov	r1, r6
c0d05010:	f000 f8a3 	bl	c0d0515a <usbd_is_valid_intf>
c0d05014:	2800      	cmp	r0, #0
c0d05016:	d00c      	beq.n	c0d05032 <USBD_LL_DataInStage+0x40>
c0d05018:	59e0      	ldr	r0, [r4, r7]
c0d0501a:	6940      	ldr	r0, [r0, #20]
c0d0501c:	2800      	cmp	r0, #0
c0d0501e:	d008      	beq.n	c0d05032 <USBD_LL_DataInStage+0x40>
c0d05020:	7a29      	ldrb	r1, [r5, #8]
c0d05022:	2903      	cmp	r1, #3
c0d05024:	d105      	bne.n	c0d05032 <USBD_LL_DataInStage+0x40>
c0d05026:	f001 feb7 	bl	c0d06d98 <pic>
c0d0502a:	4602      	mov	r2, r0
c0d0502c:	4620      	mov	r0, r4
c0d0502e:	9900      	ldr	r1, [sp, #0]
c0d05030:	4790      	blx	r2
c0d05032:	3708      	adds	r7, #8
c0d05034:	1c76      	adds	r6, r6, #1
c0d05036:	e7e7      	b.n	c0d05008 <USBD_LL_DataInStage+0x16>
c0d05038:	6838      	ldr	r0, [r7, #0]
c0d0503a:	2802      	cmp	r0, #2
c0d0503c:	d13e      	bne.n	c0d050bc <USBD_LL_DataInStage+0xca>
c0d0503e:	69e0      	ldr	r0, [r4, #28]
c0d05040:	6a25      	ldr	r5, [r4, #32]
c0d05042:	42a8      	cmp	r0, r5
c0d05044:	d909      	bls.n	c0d0505a <USBD_LL_DataInStage+0x68>
c0d05046:	1b40      	subs	r0, r0, r5
c0d05048:	61e0      	str	r0, [r4, #28]
c0d0504a:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
c0d0504c:	1949      	adds	r1, r1, r5
c0d0504e:	63f9      	str	r1, [r7, #60]	; 0x3c
c0d05050:	b282      	uxth	r2, r0
c0d05052:	4620      	mov	r0, r4
c0d05054:	f000 fae8 	bl	c0d05628 <USBD_CtlContinueSendData>
c0d05058:	e030      	b.n	c0d050bc <USBD_LL_DataInStage+0xca>
c0d0505a:	69a6      	ldr	r6, [r4, #24]
c0d0505c:	4630      	mov	r0, r6
c0d0505e:	4629      	mov	r1, r5
c0d05060:	f001 ffc8 	bl	c0d06ff4 <__aeabi_uidivmod>
c0d05064:	2900      	cmp	r1, #0
c0d05066:	d10c      	bne.n	c0d05082 <USBD_LL_DataInStage+0x90>
c0d05068:	42ae      	cmp	r6, r5
c0d0506a:	d30a      	bcc.n	c0d05082 <USBD_LL_DataInStage+0x90>
c0d0506c:	6878      	ldr	r0, [r7, #4]
c0d0506e:	4286      	cmp	r6, r0
c0d05070:	d207      	bcs.n	c0d05082 <USBD_LL_DataInStage+0x90>
c0d05072:	2500      	movs	r5, #0
c0d05074:	4620      	mov	r0, r4
c0d05076:	4629      	mov	r1, r5
c0d05078:	462a      	mov	r2, r5
c0d0507a:	f000 fad5 	bl	c0d05628 <USBD_CtlContinueSendData>
c0d0507e:	607d      	str	r5, [r7, #4]
c0d05080:	e01c      	b.n	c0d050bc <USBD_LL_DataInStage+0xca>
c0d05082:	2045      	movs	r0, #69	; 0x45
c0d05084:	0086      	lsls	r6, r0, #2
c0d05086:	2500      	movs	r5, #0
c0d05088:	2d03      	cmp	r5, #3
c0d0508a:	d014      	beq.n	c0d050b6 <USBD_LL_DataInStage+0xc4>
c0d0508c:	4620      	mov	r0, r4
c0d0508e:	4629      	mov	r1, r5
c0d05090:	f000 f863 	bl	c0d0515a <usbd_is_valid_intf>
c0d05094:	2800      	cmp	r0, #0
c0d05096:	d00b      	beq.n	c0d050b0 <USBD_LL_DataInStage+0xbe>
c0d05098:	59a0      	ldr	r0, [r4, r6]
c0d0509a:	68c0      	ldr	r0, [r0, #12]
c0d0509c:	2800      	cmp	r0, #0
c0d0509e:	d007      	beq.n	c0d050b0 <USBD_LL_DataInStage+0xbe>
c0d050a0:	7a39      	ldrb	r1, [r7, #8]
c0d050a2:	2903      	cmp	r1, #3
c0d050a4:	d104      	bne.n	c0d050b0 <USBD_LL_DataInStage+0xbe>
c0d050a6:	f001 fe77 	bl	c0d06d98 <pic>
c0d050aa:	4601      	mov	r1, r0
c0d050ac:	4620      	mov	r0, r4
c0d050ae:	4788      	blx	r1
c0d050b0:	3608      	adds	r6, #8
c0d050b2:	1c6d      	adds	r5, r5, #1
c0d050b4:	e7e8      	b.n	c0d05088 <USBD_LL_DataInStage+0x96>
c0d050b6:	4620      	mov	r0, r4
c0d050b8:	f000 fad7 	bl	c0d0566a <USBD_CtlReceiveStatus>
c0d050bc:	7b38      	ldrb	r0, [r7, #12]
c0d050be:	2801      	cmp	r0, #1
c0d050c0:	d102      	bne.n	c0d050c8 <USBD_LL_DataInStage+0xd6>
c0d050c2:	4639      	mov	r1, r7
c0d050c4:	2000      	movs	r0, #0
c0d050c6:	7338      	strb	r0, [r7, #12]
c0d050c8:	2000      	movs	r0, #0
c0d050ca:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0d050cc <USBD_LL_Reset>:
c0d050cc:	b570      	push	{r4, r5, r6, lr}
c0d050ce:	4604      	mov	r4, r0
c0d050d0:	20fc      	movs	r0, #252	; 0xfc
c0d050d2:	2101      	movs	r1, #1
c0d050d4:	5421      	strb	r1, [r4, r0]
c0d050d6:	2090      	movs	r0, #144	; 0x90
c0d050d8:	2140      	movs	r1, #64	; 0x40
c0d050da:	5021      	str	r1, [r4, r0]
c0d050dc:	6221      	str	r1, [r4, #32]
c0d050de:	2045      	movs	r0, #69	; 0x45
c0d050e0:	0086      	lsls	r6, r0, #2
c0d050e2:	2500      	movs	r5, #0
c0d050e4:	2d03      	cmp	r5, #3
c0d050e6:	d010      	beq.n	c0d0510a <USBD_LL_Reset+0x3e>
c0d050e8:	4620      	mov	r0, r4
c0d050ea:	4629      	mov	r1, r5
c0d050ec:	f000 f835 	bl	c0d0515a <usbd_is_valid_intf>
c0d050f0:	2800      	cmp	r0, #0
c0d050f2:	d007      	beq.n	c0d05104 <USBD_LL_Reset+0x38>
c0d050f4:	59a0      	ldr	r0, [r4, r6]
c0d050f6:	6840      	ldr	r0, [r0, #4]
c0d050f8:	f001 fe4e 	bl	c0d06d98 <pic>
c0d050fc:	4602      	mov	r2, r0
c0d050fe:	7921      	ldrb	r1, [r4, #4]
c0d05100:	4620      	mov	r0, r4
c0d05102:	4790      	blx	r2
c0d05104:	3608      	adds	r6, #8
c0d05106:	1c6d      	adds	r5, r5, #1
c0d05108:	e7ec      	b.n	c0d050e4 <USBD_LL_Reset+0x18>
c0d0510a:	2000      	movs	r0, #0
c0d0510c:	bd70      	pop	{r4, r5, r6, pc}

c0d0510e <USBD_LL_SetSpeed>:
c0d0510e:	7401      	strb	r1, [r0, #16]
c0d05110:	2000      	movs	r0, #0
c0d05112:	4770      	bx	lr

c0d05114 <USBD_LL_Suspend>:
c0d05114:	2000      	movs	r0, #0
c0d05116:	4770      	bx	lr

c0d05118 <USBD_LL_Resume>:
c0d05118:	2000      	movs	r0, #0
c0d0511a:	4770      	bx	lr

c0d0511c <USBD_LL_SOF>:
c0d0511c:	b570      	push	{r4, r5, r6, lr}
c0d0511e:	4604      	mov	r4, r0
c0d05120:	20fc      	movs	r0, #252	; 0xfc
c0d05122:	5c20      	ldrb	r0, [r4, r0]
c0d05124:	2803      	cmp	r0, #3
c0d05126:	d116      	bne.n	c0d05156 <USBD_LL_SOF+0x3a>
c0d05128:	2045      	movs	r0, #69	; 0x45
c0d0512a:	0086      	lsls	r6, r0, #2
c0d0512c:	2500      	movs	r5, #0
c0d0512e:	2d03      	cmp	r5, #3
c0d05130:	d011      	beq.n	c0d05156 <USBD_LL_SOF+0x3a>
c0d05132:	4620      	mov	r0, r4
c0d05134:	4629      	mov	r1, r5
c0d05136:	f000 f810 	bl	c0d0515a <usbd_is_valid_intf>
c0d0513a:	2800      	cmp	r0, #0
c0d0513c:	d008      	beq.n	c0d05150 <USBD_LL_SOF+0x34>
c0d0513e:	59a0      	ldr	r0, [r4, r6]
c0d05140:	69c0      	ldr	r0, [r0, #28]
c0d05142:	2800      	cmp	r0, #0
c0d05144:	d004      	beq.n	c0d05150 <USBD_LL_SOF+0x34>
c0d05146:	f001 fe27 	bl	c0d06d98 <pic>
c0d0514a:	4601      	mov	r1, r0
c0d0514c:	4620      	mov	r0, r4
c0d0514e:	4788      	blx	r1
c0d05150:	3608      	adds	r6, #8
c0d05152:	1c6d      	adds	r5, r5, #1
c0d05154:	e7eb      	b.n	c0d0512e <USBD_LL_SOF+0x12>
c0d05156:	2000      	movs	r0, #0
c0d05158:	bd70      	pop	{r4, r5, r6, pc}

c0d0515a <usbd_is_valid_intf>:
c0d0515a:	2902      	cmp	r1, #2
c0d0515c:	d807      	bhi.n	c0d0516e <usbd_is_valid_intf+0x14>
c0d0515e:	00c9      	lsls	r1, r1, #3
c0d05160:	1840      	adds	r0, r0, r1
c0d05162:	2145      	movs	r1, #69	; 0x45
c0d05164:	0089      	lsls	r1, r1, #2
c0d05166:	5840      	ldr	r0, [r0, r1]
c0d05168:	1e41      	subs	r1, r0, #1
c0d0516a:	4188      	sbcs	r0, r1
c0d0516c:	4770      	bx	lr
c0d0516e:	2000      	movs	r0, #0
c0d05170:	4770      	bx	lr

c0d05172 <USBD_StdDevReq>:
c0d05172:	b580      	push	{r7, lr}
c0d05174:	784a      	ldrb	r2, [r1, #1]
c0d05176:	2a00      	cmp	r2, #0
c0d05178:	d00e      	beq.n	c0d05198 <USBD_StdDevReq+0x26>
c0d0517a:	2a01      	cmp	r2, #1
c0d0517c:	d00f      	beq.n	c0d0519e <USBD_StdDevReq+0x2c>
c0d0517e:	2a03      	cmp	r2, #3
c0d05180:	d010      	beq.n	c0d051a4 <USBD_StdDevReq+0x32>
c0d05182:	2a05      	cmp	r2, #5
c0d05184:	d011      	beq.n	c0d051aa <USBD_StdDevReq+0x38>
c0d05186:	2a09      	cmp	r2, #9
c0d05188:	d012      	beq.n	c0d051b0 <USBD_StdDevReq+0x3e>
c0d0518a:	2a08      	cmp	r2, #8
c0d0518c:	d013      	beq.n	c0d051b6 <USBD_StdDevReq+0x44>
c0d0518e:	2a06      	cmp	r2, #6
c0d05190:	d114      	bne.n	c0d051bc <USBD_StdDevReq+0x4a>
c0d05192:	f000 f817 	bl	c0d051c4 <USBD_GetDescriptor>
c0d05196:	e013      	b.n	c0d051c0 <USBD_StdDevReq+0x4e>
c0d05198:	f000 f8fd 	bl	c0d05396 <USBD_GetStatus>
c0d0519c:	e010      	b.n	c0d051c0 <USBD_StdDevReq+0x4e>
c0d0519e:	f000 f93d 	bl	c0d0541c <USBD_ClrFeature>
c0d051a2:	e00d      	b.n	c0d051c0 <USBD_StdDevReq+0x4e>
c0d051a4:	f000 f91b 	bl	c0d053de <USBD_SetFeature>
c0d051a8:	e00a      	b.n	c0d051c0 <USBD_StdDevReq+0x4e>
c0d051aa:	f000 f883 	bl	c0d052b4 <USBD_SetAddress>
c0d051ae:	e007      	b.n	c0d051c0 <USBD_StdDevReq+0x4e>
c0d051b0:	f000 f8a3 	bl	c0d052fa <USBD_SetConfig>
c0d051b4:	e004      	b.n	c0d051c0 <USBD_StdDevReq+0x4e>
c0d051b6:	f000 f8d7 	bl	c0d05368 <USBD_GetConfig>
c0d051ba:	e001      	b.n	c0d051c0 <USBD_StdDevReq+0x4e>
c0d051bc:	f000 fc48 	bl	c0d05a50 <USBD_CtlError>
c0d051c0:	2000      	movs	r0, #0
c0d051c2:	bd80      	pop	{r7, pc}

c0d051c4 <USBD_GetDescriptor>:
c0d051c4:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0d051c6:	460d      	mov	r5, r1
c0d051c8:	4604      	mov	r4, r0
c0d051ca:	a801      	add	r0, sp, #4
c0d051cc:	2100      	movs	r1, #0
c0d051ce:	8001      	strh	r1, [r0, #0]
c0d051d0:	2011      	movs	r0, #17
c0d051d2:	0100      	lsls	r0, r0, #4
c0d051d4:	1820      	adds	r0, r4, r0
c0d051d6:	886b      	ldrh	r3, [r5, #2]
c0d051d8:	0a1a      	lsrs	r2, r3, #8
c0d051da:	2a01      	cmp	r2, #1
c0d051dc:	d026      	beq.n	c0d0522c <USBD_GetDescriptor+0x68>
c0d051de:	2a02      	cmp	r2, #2
c0d051e0:	d02d      	beq.n	c0d0523e <USBD_GetDescriptor+0x7a>
c0d051e2:	2a03      	cmp	r2, #3
c0d051e4:	d00a      	beq.n	c0d051fc <USBD_GetDescriptor+0x38>
c0d051e6:	2a06      	cmp	r2, #6
c0d051e8:	d031      	beq.n	c0d0524e <USBD_GetDescriptor+0x8a>
c0d051ea:	2a07      	cmp	r2, #7
c0d051ec:	d016      	beq.n	c0d0521c <USBD_GetDescriptor+0x58>
c0d051ee:	2a0f      	cmp	r2, #15
c0d051f0:	d130      	bne.n	c0d05254 <USBD_GetDescriptor+0x90>
c0d051f2:	6800      	ldr	r0, [r0, #0]
c0d051f4:	69c0      	ldr	r0, [r0, #28]
c0d051f6:	2800      	cmp	r0, #0
c0d051f8:	d11a      	bne.n	c0d05230 <USBD_GetDescriptor+0x6c>
c0d051fa:	e02b      	b.n	c0d05254 <USBD_GetDescriptor+0x90>
c0d051fc:	b2d9      	uxtb	r1, r3
c0d051fe:	2905      	cmp	r1, #5
c0d05200:	d049      	beq.n	c0d05296 <USBD_GetDescriptor+0xd2>
c0d05202:	2901      	cmp	r1, #1
c0d05204:	d04a      	beq.n	c0d0529c <USBD_GetDescriptor+0xd8>
c0d05206:	2902      	cmp	r1, #2
c0d05208:	d04b      	beq.n	c0d052a2 <USBD_GetDescriptor+0xde>
c0d0520a:	2903      	cmp	r1, #3
c0d0520c:	d04c      	beq.n	c0d052a8 <USBD_GetDescriptor+0xe4>
c0d0520e:	2904      	cmp	r1, #4
c0d05210:	d04d      	beq.n	c0d052ae <USBD_GetDescriptor+0xea>
c0d05212:	2900      	cmp	r1, #0
c0d05214:	d11e      	bne.n	c0d05254 <USBD_GetDescriptor+0x90>
c0d05216:	6800      	ldr	r0, [r0, #0]
c0d05218:	6840      	ldr	r0, [r0, #4]
c0d0521a:	e009      	b.n	c0d05230 <USBD_GetDescriptor+0x6c>
c0d0521c:	7c21      	ldrb	r1, [r4, #16]
c0d0521e:	2900      	cmp	r1, #0
c0d05220:	d118      	bne.n	c0d05254 <USBD_GetDescriptor+0x90>
c0d05222:	6840      	ldr	r0, [r0, #4]
c0d05224:	2800      	cmp	r0, #0
c0d05226:	d015      	beq.n	c0d05254 <USBD_GetDescriptor+0x90>
c0d05228:	6b00      	ldr	r0, [r0, #48]	; 0x30
c0d0522a:	e01e      	b.n	c0d0526a <USBD_GetDescriptor+0xa6>
c0d0522c:	6800      	ldr	r0, [r0, #0]
c0d0522e:	6800      	ldr	r0, [r0, #0]
c0d05230:	f001 fdb2 	bl	c0d06d98 <pic>
c0d05234:	4602      	mov	r2, r0
c0d05236:	7c20      	ldrb	r0, [r4, #16]
c0d05238:	a901      	add	r1, sp, #4
c0d0523a:	4790      	blx	r2
c0d0523c:	e01a      	b.n	c0d05274 <USBD_GetDescriptor+0xb0>
c0d0523e:	6840      	ldr	r0, [r0, #4]
c0d05240:	2800      	cmp	r0, #0
c0d05242:	d018      	beq.n	c0d05276 <USBD_GetDescriptor+0xb2>
c0d05244:	7c21      	ldrb	r1, [r4, #16]
c0d05246:	2900      	cmp	r1, #0
c0d05248:	d00e      	beq.n	c0d05268 <USBD_GetDescriptor+0xa4>
c0d0524a:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
c0d0524c:	e00d      	b.n	c0d0526a <USBD_GetDescriptor+0xa6>
c0d0524e:	7c21      	ldrb	r1, [r4, #16]
c0d05250:	2900      	cmp	r1, #0
c0d05252:	d004      	beq.n	c0d0525e <USBD_GetDescriptor+0x9a>
c0d05254:	4620      	mov	r0, r4
c0d05256:	4629      	mov	r1, r5
c0d05258:	f000 fbfa 	bl	c0d05a50 <USBD_CtlError>
c0d0525c:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0d0525e:	6840      	ldr	r0, [r0, #4]
c0d05260:	2800      	cmp	r0, #0
c0d05262:	d0f7      	beq.n	c0d05254 <USBD_GetDescriptor+0x90>
c0d05264:	6b40      	ldr	r0, [r0, #52]	; 0x34
c0d05266:	e000      	b.n	c0d0526a <USBD_GetDescriptor+0xa6>
c0d05268:	6a80      	ldr	r0, [r0, #40]	; 0x28
c0d0526a:	f001 fd95 	bl	c0d06d98 <pic>
c0d0526e:	4601      	mov	r1, r0
c0d05270:	a801      	add	r0, sp, #4
c0d05272:	4788      	blx	r1
c0d05274:	4601      	mov	r1, r0
c0d05276:	a801      	add	r0, sp, #4
c0d05278:	8802      	ldrh	r2, [r0, #0]
c0d0527a:	2a00      	cmp	r2, #0
c0d0527c:	d0ee      	beq.n	c0d0525c <USBD_GetDescriptor+0x98>
c0d0527e:	88e8      	ldrh	r0, [r5, #6]
c0d05280:	2800      	cmp	r0, #0
c0d05282:	d0eb      	beq.n	c0d0525c <USBD_GetDescriptor+0x98>
c0d05284:	4282      	cmp	r2, r0
c0d05286:	d300      	bcc.n	c0d0528a <USBD_GetDescriptor+0xc6>
c0d05288:	4602      	mov	r2, r0
c0d0528a:	a801      	add	r0, sp, #4
c0d0528c:	8002      	strh	r2, [r0, #0]
c0d0528e:	4620      	mov	r0, r4
c0d05290:	f000 f9b4 	bl	c0d055fc <USBD_CtlSendData>
c0d05294:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0d05296:	6800      	ldr	r0, [r0, #0]
c0d05298:	6980      	ldr	r0, [r0, #24]
c0d0529a:	e7c9      	b.n	c0d05230 <USBD_GetDescriptor+0x6c>
c0d0529c:	6800      	ldr	r0, [r0, #0]
c0d0529e:	6880      	ldr	r0, [r0, #8]
c0d052a0:	e7c6      	b.n	c0d05230 <USBD_GetDescriptor+0x6c>
c0d052a2:	6800      	ldr	r0, [r0, #0]
c0d052a4:	68c0      	ldr	r0, [r0, #12]
c0d052a6:	e7c3      	b.n	c0d05230 <USBD_GetDescriptor+0x6c>
c0d052a8:	6800      	ldr	r0, [r0, #0]
c0d052aa:	6900      	ldr	r0, [r0, #16]
c0d052ac:	e7c0      	b.n	c0d05230 <USBD_GetDescriptor+0x6c>
c0d052ae:	6800      	ldr	r0, [r0, #0]
c0d052b0:	6940      	ldr	r0, [r0, #20]
c0d052b2:	e7bd      	b.n	c0d05230 <USBD_GetDescriptor+0x6c>

c0d052b4 <USBD_SetAddress>:
c0d052b4:	b570      	push	{r4, r5, r6, lr}
c0d052b6:	4604      	mov	r4, r0
c0d052b8:	8888      	ldrh	r0, [r1, #4]
c0d052ba:	2800      	cmp	r0, #0
c0d052bc:	d107      	bne.n	c0d052ce <USBD_SetAddress+0x1a>
c0d052be:	88c8      	ldrh	r0, [r1, #6]
c0d052c0:	2800      	cmp	r0, #0
c0d052c2:	d104      	bne.n	c0d052ce <USBD_SetAddress+0x1a>
c0d052c4:	4626      	mov	r6, r4
c0d052c6:	36fc      	adds	r6, #252	; 0xfc
c0d052c8:	7830      	ldrb	r0, [r6, #0]
c0d052ca:	2803      	cmp	r0, #3
c0d052cc:	d103      	bne.n	c0d052d6 <USBD_SetAddress+0x22>
c0d052ce:	4620      	mov	r0, r4
c0d052d0:	f000 fbbe 	bl	c0d05a50 <USBD_CtlError>
c0d052d4:	bd70      	pop	{r4, r5, r6, pc}
c0d052d6:	7888      	ldrb	r0, [r1, #2]
c0d052d8:	257f      	movs	r5, #127	; 0x7f
c0d052da:	4005      	ands	r5, r0
c0d052dc:	70b5      	strb	r5, [r6, #2]
c0d052de:	4620      	mov	r0, r4
c0d052e0:	4629      	mov	r1, r5
c0d052e2:	f000 fa8f 	bl	c0d05804 <USBD_LL_SetUSBAddress>
c0d052e6:	4620      	mov	r0, r4
c0d052e8:	f000 f9b3 	bl	c0d05652 <USBD_CtlSendStatus>
c0d052ec:	2d00      	cmp	r5, #0
c0d052ee:	d001      	beq.n	c0d052f4 <USBD_SetAddress+0x40>
c0d052f0:	2002      	movs	r0, #2
c0d052f2:	e000      	b.n	c0d052f6 <USBD_SetAddress+0x42>
c0d052f4:	2001      	movs	r0, #1
c0d052f6:	7030      	strb	r0, [r6, #0]
c0d052f8:	bd70      	pop	{r4, r5, r6, pc}

c0d052fa <USBD_SetConfig>:
c0d052fa:	b570      	push	{r4, r5, r6, lr}
c0d052fc:	460d      	mov	r5, r1
c0d052fe:	4604      	mov	r4, r0
c0d05300:	788e      	ldrb	r6, [r1, #2]
c0d05302:	2e02      	cmp	r6, #2
c0d05304:	d21c      	bcs.n	c0d05340 <USBD_SetConfig+0x46>
c0d05306:	20fc      	movs	r0, #252	; 0xfc
c0d05308:	5c21      	ldrb	r1, [r4, r0]
c0d0530a:	4620      	mov	r0, r4
c0d0530c:	30fc      	adds	r0, #252	; 0xfc
c0d0530e:	2903      	cmp	r1, #3
c0d05310:	d006      	beq.n	c0d05320 <USBD_SetConfig+0x26>
c0d05312:	2902      	cmp	r1, #2
c0d05314:	d114      	bne.n	c0d05340 <USBD_SetConfig+0x46>
c0d05316:	2e00      	cmp	r6, #0
c0d05318:	d022      	beq.n	c0d05360 <USBD_SetConfig+0x66>
c0d0531a:	2103      	movs	r1, #3
c0d0531c:	7001      	strb	r1, [r0, #0]
c0d0531e:	e008      	b.n	c0d05332 <USBD_SetConfig+0x38>
c0d05320:	2e00      	cmp	r6, #0
c0d05322:	d012      	beq.n	c0d0534a <USBD_SetConfig+0x50>
c0d05324:	6860      	ldr	r0, [r4, #4]
c0d05326:	42b0      	cmp	r0, r6
c0d05328:	d01a      	beq.n	c0d05360 <USBD_SetConfig+0x66>
c0d0532a:	b2c1      	uxtb	r1, r0
c0d0532c:	4620      	mov	r0, r4
c0d0532e:	f7ff fdb9 	bl	c0d04ea4 <USBD_ClrClassConfig>
c0d05332:	6066      	str	r6, [r4, #4]
c0d05334:	4620      	mov	r0, r4
c0d05336:	4631      	mov	r1, r6
c0d05338:	f7ff fd99 	bl	c0d04e6e <USBD_SetClassConfig>
c0d0533c:	2802      	cmp	r0, #2
c0d0533e:	d10f      	bne.n	c0d05360 <USBD_SetConfig+0x66>
c0d05340:	4620      	mov	r0, r4
c0d05342:	4629      	mov	r1, r5
c0d05344:	f000 fb84 	bl	c0d05a50 <USBD_CtlError>
c0d05348:	bd70      	pop	{r4, r5, r6, pc}
c0d0534a:	2100      	movs	r1, #0
c0d0534c:	6061      	str	r1, [r4, #4]
c0d0534e:	2102      	movs	r1, #2
c0d05350:	7001      	strb	r1, [r0, #0]
c0d05352:	4620      	mov	r0, r4
c0d05354:	4631      	mov	r1, r6
c0d05356:	f7ff fda5 	bl	c0d04ea4 <USBD_ClrClassConfig>
c0d0535a:	4620      	mov	r0, r4
c0d0535c:	f000 f979 	bl	c0d05652 <USBD_CtlSendStatus>
c0d05360:	4620      	mov	r0, r4
c0d05362:	f000 f976 	bl	c0d05652 <USBD_CtlSendStatus>
c0d05366:	bd70      	pop	{r4, r5, r6, pc}

c0d05368 <USBD_GetConfig>:
c0d05368:	b580      	push	{r7, lr}
c0d0536a:	88ca      	ldrh	r2, [r1, #6]
c0d0536c:	2a01      	cmp	r2, #1
c0d0536e:	d10a      	bne.n	c0d05386 <USBD_GetConfig+0x1e>
c0d05370:	22fc      	movs	r2, #252	; 0xfc
c0d05372:	5c82      	ldrb	r2, [r0, r2]
c0d05374:	2a03      	cmp	r2, #3
c0d05376:	d009      	beq.n	c0d0538c <USBD_GetConfig+0x24>
c0d05378:	2a02      	cmp	r2, #2
c0d0537a:	d104      	bne.n	c0d05386 <USBD_GetConfig+0x1e>
c0d0537c:	2100      	movs	r1, #0
c0d0537e:	6081      	str	r1, [r0, #8]
c0d05380:	4601      	mov	r1, r0
c0d05382:	3108      	adds	r1, #8
c0d05384:	e003      	b.n	c0d0538e <USBD_GetConfig+0x26>
c0d05386:	f000 fb63 	bl	c0d05a50 <USBD_CtlError>
c0d0538a:	bd80      	pop	{r7, pc}
c0d0538c:	1d01      	adds	r1, r0, #4
c0d0538e:	2201      	movs	r2, #1
c0d05390:	f000 f934 	bl	c0d055fc <USBD_CtlSendData>
c0d05394:	bd80      	pop	{r7, pc}

c0d05396 <USBD_GetStatus>:
c0d05396:	b5b0      	push	{r4, r5, r7, lr}
c0d05398:	4604      	mov	r4, r0
c0d0539a:	20fc      	movs	r0, #252	; 0xfc
c0d0539c:	5c20      	ldrb	r0, [r4, r0]
c0d0539e:	22fe      	movs	r2, #254	; 0xfe
c0d053a0:	4002      	ands	r2, r0
c0d053a2:	2a02      	cmp	r2, #2
c0d053a4:	d10f      	bne.n	c0d053c6 <USBD_GetStatus+0x30>
c0d053a6:	4620      	mov	r0, r4
c0d053a8:	30fc      	adds	r0, #252	; 0xfc
c0d053aa:	2101      	movs	r1, #1
c0d053ac:	60e1      	str	r1, [r4, #12]
c0d053ae:	4625      	mov	r5, r4
c0d053b0:	350c      	adds	r5, #12
c0d053b2:	6880      	ldr	r0, [r0, #8]
c0d053b4:	2800      	cmp	r0, #0
c0d053b6:	d00a      	beq.n	c0d053ce <USBD_GetStatus+0x38>
c0d053b8:	4620      	mov	r0, r4
c0d053ba:	f000 f956 	bl	c0d0566a <USBD_CtlReceiveStatus>
c0d053be:	68e1      	ldr	r1, [r4, #12]
c0d053c0:	2002      	movs	r0, #2
c0d053c2:	4308      	orrs	r0, r1
c0d053c4:	e004      	b.n	c0d053d0 <USBD_GetStatus+0x3a>
c0d053c6:	4620      	mov	r0, r4
c0d053c8:	f000 fb42 	bl	c0d05a50 <USBD_CtlError>
c0d053cc:	bdb0      	pop	{r4, r5, r7, pc}
c0d053ce:	2003      	movs	r0, #3
c0d053d0:	60e0      	str	r0, [r4, #12]
c0d053d2:	2202      	movs	r2, #2
c0d053d4:	4620      	mov	r0, r4
c0d053d6:	4629      	mov	r1, r5
c0d053d8:	f000 f910 	bl	c0d055fc <USBD_CtlSendData>
c0d053dc:	bdb0      	pop	{r4, r5, r7, pc}

c0d053de <USBD_SetFeature>:
c0d053de:	b5b0      	push	{r4, r5, r7, lr}
c0d053e0:	4604      	mov	r4, r0
c0d053e2:	8848      	ldrh	r0, [r1, #2]
c0d053e4:	2801      	cmp	r0, #1
c0d053e6:	d118      	bne.n	c0d0541a <USBD_SetFeature+0x3c>
c0d053e8:	460d      	mov	r5, r1
c0d053ea:	2041      	movs	r0, #65	; 0x41
c0d053ec:	0080      	lsls	r0, r0, #2
c0d053ee:	2101      	movs	r1, #1
c0d053f0:	5021      	str	r1, [r4, r0]
c0d053f2:	7928      	ldrb	r0, [r5, #4]
c0d053f4:	2802      	cmp	r0, #2
c0d053f6:	d80d      	bhi.n	c0d05414 <USBD_SetFeature+0x36>
c0d053f8:	00c0      	lsls	r0, r0, #3
c0d053fa:	1820      	adds	r0, r4, r0
c0d053fc:	2145      	movs	r1, #69	; 0x45
c0d053fe:	0089      	lsls	r1, r1, #2
c0d05400:	5840      	ldr	r0, [r0, r1]
c0d05402:	2800      	cmp	r0, #0
c0d05404:	d006      	beq.n	c0d05414 <USBD_SetFeature+0x36>
c0d05406:	6880      	ldr	r0, [r0, #8]
c0d05408:	f001 fcc6 	bl	c0d06d98 <pic>
c0d0540c:	4602      	mov	r2, r0
c0d0540e:	4620      	mov	r0, r4
c0d05410:	4629      	mov	r1, r5
c0d05412:	4790      	blx	r2
c0d05414:	4620      	mov	r0, r4
c0d05416:	f000 f91c 	bl	c0d05652 <USBD_CtlSendStatus>
c0d0541a:	bdb0      	pop	{r4, r5, r7, pc}

c0d0541c <USBD_ClrFeature>:
c0d0541c:	b5b0      	push	{r4, r5, r7, lr}
c0d0541e:	460d      	mov	r5, r1
c0d05420:	4604      	mov	r4, r0
c0d05422:	20fc      	movs	r0, #252	; 0xfc
c0d05424:	5c20      	ldrb	r0, [r4, r0]
c0d05426:	21fe      	movs	r1, #254	; 0xfe
c0d05428:	4001      	ands	r1, r0
c0d0542a:	2902      	cmp	r1, #2
c0d0542c:	d11b      	bne.n	c0d05466 <USBD_ClrFeature+0x4a>
c0d0542e:	8868      	ldrh	r0, [r5, #2]
c0d05430:	2801      	cmp	r0, #1
c0d05432:	d11c      	bne.n	c0d0546e <USBD_ClrFeature+0x52>
c0d05434:	4620      	mov	r0, r4
c0d05436:	30fc      	adds	r0, #252	; 0xfc
c0d05438:	2100      	movs	r1, #0
c0d0543a:	6081      	str	r1, [r0, #8]
c0d0543c:	7928      	ldrb	r0, [r5, #4]
c0d0543e:	2802      	cmp	r0, #2
c0d05440:	d80d      	bhi.n	c0d0545e <USBD_ClrFeature+0x42>
c0d05442:	00c0      	lsls	r0, r0, #3
c0d05444:	1820      	adds	r0, r4, r0
c0d05446:	2145      	movs	r1, #69	; 0x45
c0d05448:	0089      	lsls	r1, r1, #2
c0d0544a:	5840      	ldr	r0, [r0, r1]
c0d0544c:	2800      	cmp	r0, #0
c0d0544e:	d006      	beq.n	c0d0545e <USBD_ClrFeature+0x42>
c0d05450:	6880      	ldr	r0, [r0, #8]
c0d05452:	f001 fca1 	bl	c0d06d98 <pic>
c0d05456:	4602      	mov	r2, r0
c0d05458:	4620      	mov	r0, r4
c0d0545a:	4629      	mov	r1, r5
c0d0545c:	4790      	blx	r2
c0d0545e:	4620      	mov	r0, r4
c0d05460:	f000 f8f7 	bl	c0d05652 <USBD_CtlSendStatus>
c0d05464:	bdb0      	pop	{r4, r5, r7, pc}
c0d05466:	4620      	mov	r0, r4
c0d05468:	4629      	mov	r1, r5
c0d0546a:	f000 faf1 	bl	c0d05a50 <USBD_CtlError>
c0d0546e:	bdb0      	pop	{r4, r5, r7, pc}

c0d05470 <USBD_StdItfReq>:
c0d05470:	b5b0      	push	{r4, r5, r7, lr}
c0d05472:	460d      	mov	r5, r1
c0d05474:	4604      	mov	r4, r0
c0d05476:	20fc      	movs	r0, #252	; 0xfc
c0d05478:	5c20      	ldrb	r0, [r4, r0]
c0d0547a:	2803      	cmp	r0, #3
c0d0547c:	d117      	bne.n	c0d054ae <USBD_StdItfReq+0x3e>
c0d0547e:	7928      	ldrb	r0, [r5, #4]
c0d05480:	2802      	cmp	r0, #2
c0d05482:	d814      	bhi.n	c0d054ae <USBD_StdItfReq+0x3e>
c0d05484:	00c0      	lsls	r0, r0, #3
c0d05486:	1820      	adds	r0, r4, r0
c0d05488:	2145      	movs	r1, #69	; 0x45
c0d0548a:	0089      	lsls	r1, r1, #2
c0d0548c:	5840      	ldr	r0, [r0, r1]
c0d0548e:	2800      	cmp	r0, #0
c0d05490:	d00d      	beq.n	c0d054ae <USBD_StdItfReq+0x3e>
c0d05492:	6880      	ldr	r0, [r0, #8]
c0d05494:	f001 fc80 	bl	c0d06d98 <pic>
c0d05498:	4602      	mov	r2, r0
c0d0549a:	4620      	mov	r0, r4
c0d0549c:	4629      	mov	r1, r5
c0d0549e:	4790      	blx	r2
c0d054a0:	88e8      	ldrh	r0, [r5, #6]
c0d054a2:	2800      	cmp	r0, #0
c0d054a4:	d107      	bne.n	c0d054b6 <USBD_StdItfReq+0x46>
c0d054a6:	4620      	mov	r0, r4
c0d054a8:	f000 f8d3 	bl	c0d05652 <USBD_CtlSendStatus>
c0d054ac:	e003      	b.n	c0d054b6 <USBD_StdItfReq+0x46>
c0d054ae:	4620      	mov	r0, r4
c0d054b0:	4629      	mov	r1, r5
c0d054b2:	f000 facd 	bl	c0d05a50 <USBD_CtlError>
c0d054b6:	2000      	movs	r0, #0
c0d054b8:	bdb0      	pop	{r4, r5, r7, pc}

c0d054ba <USBD_StdEPReq>:
c0d054ba:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0d054bc:	460d      	mov	r5, r1
c0d054be:	4604      	mov	r4, r0
c0d054c0:	7909      	ldrb	r1, [r1, #4]
c0d054c2:	207f      	movs	r0, #127	; 0x7f
c0d054c4:	4008      	ands	r0, r1
c0d054c6:	2808      	cmp	r0, #8
c0d054c8:	d304      	bcc.n	c0d054d4 <USBD_StdEPReq+0x1a>
c0d054ca:	4620      	mov	r0, r4
c0d054cc:	4629      	mov	r1, r5
c0d054ce:	f000 fabf 	bl	c0d05a50 <USBD_CtlError>
c0d054d2:	e073      	b.n	c0d055bc <USBD_StdEPReq+0x102>
c0d054d4:	2902      	cmp	r1, #2
c0d054d6:	d813      	bhi.n	c0d05500 <USBD_StdEPReq+0x46>
c0d054d8:	782a      	ldrb	r2, [r5, #0]
c0d054da:	2360      	movs	r3, #96	; 0x60
c0d054dc:	4013      	ands	r3, r2
c0d054de:	2b20      	cmp	r3, #32
c0d054e0:	d10e      	bne.n	c0d05500 <USBD_StdEPReq+0x46>
c0d054e2:	00ca      	lsls	r2, r1, #3
c0d054e4:	18a2      	adds	r2, r4, r2
c0d054e6:	2345      	movs	r3, #69	; 0x45
c0d054e8:	009b      	lsls	r3, r3, #2
c0d054ea:	58d2      	ldr	r2, [r2, r3]
c0d054ec:	2a00      	cmp	r2, #0
c0d054ee:	d007      	beq.n	c0d05500 <USBD_StdEPReq+0x46>
c0d054f0:	6890      	ldr	r0, [r2, #8]
c0d054f2:	f001 fc51 	bl	c0d06d98 <pic>
c0d054f6:	4602      	mov	r2, r0
c0d054f8:	4620      	mov	r0, r4
c0d054fa:	4629      	mov	r1, r5
c0d054fc:	4790      	blx	r2
c0d054fe:	e05d      	b.n	c0d055bc <USBD_StdEPReq+0x102>
c0d05500:	786a      	ldrb	r2, [r5, #1]
c0d05502:	2a00      	cmp	r2, #0
c0d05504:	d00a      	beq.n	c0d0551c <USBD_StdEPReq+0x62>
c0d05506:	2a01      	cmp	r2, #1
c0d05508:	d011      	beq.n	c0d0552e <USBD_StdEPReq+0x74>
c0d0550a:	2a03      	cmp	r2, #3
c0d0550c:	d156      	bne.n	c0d055bc <USBD_StdEPReq+0x102>
c0d0550e:	20fc      	movs	r0, #252	; 0xfc
c0d05510:	5c20      	ldrb	r0, [r4, r0]
c0d05512:	2803      	cmp	r0, #3
c0d05514:	d01a      	beq.n	c0d0554c <USBD_StdEPReq+0x92>
c0d05516:	2802      	cmp	r0, #2
c0d05518:	d00f      	beq.n	c0d0553a <USBD_StdEPReq+0x80>
c0d0551a:	e7d6      	b.n	c0d054ca <USBD_StdEPReq+0x10>
c0d0551c:	22fc      	movs	r2, #252	; 0xfc
c0d0551e:	5ca2      	ldrb	r2, [r4, r2]
c0d05520:	2a03      	cmp	r2, #3
c0d05522:	d02f      	beq.n	c0d05584 <USBD_StdEPReq+0xca>
c0d05524:	2a02      	cmp	r2, #2
c0d05526:	d1d0      	bne.n	c0d054ca <USBD_StdEPReq+0x10>
c0d05528:	2800      	cmp	r0, #0
c0d0552a:	d10b      	bne.n	c0d05544 <USBD_StdEPReq+0x8a>
c0d0552c:	e046      	b.n	c0d055bc <USBD_StdEPReq+0x102>
c0d0552e:	22fc      	movs	r2, #252	; 0xfc
c0d05530:	5ca2      	ldrb	r2, [r4, r2]
c0d05532:	2a03      	cmp	r2, #3
c0d05534:	d032      	beq.n	c0d0559c <USBD_StdEPReq+0xe2>
c0d05536:	2a02      	cmp	r2, #2
c0d05538:	d1c7      	bne.n	c0d054ca <USBD_StdEPReq+0x10>
c0d0553a:	2080      	movs	r0, #128	; 0x80
c0d0553c:	460a      	mov	r2, r1
c0d0553e:	4302      	orrs	r2, r0
c0d05540:	2a80      	cmp	r2, #128	; 0x80
c0d05542:	d03b      	beq.n	c0d055bc <USBD_StdEPReq+0x102>
c0d05544:	4620      	mov	r0, r4
c0d05546:	f000 f909 	bl	c0d0575c <USBD_LL_StallEP>
c0d0554a:	e037      	b.n	c0d055bc <USBD_StdEPReq+0x102>
c0d0554c:	8868      	ldrh	r0, [r5, #2]
c0d0554e:	2800      	cmp	r0, #0
c0d05550:	d107      	bne.n	c0d05562 <USBD_StdEPReq+0xa8>
c0d05552:	2080      	movs	r0, #128	; 0x80
c0d05554:	4308      	orrs	r0, r1
c0d05556:	2880      	cmp	r0, #128	; 0x80
c0d05558:	d003      	beq.n	c0d05562 <USBD_StdEPReq+0xa8>
c0d0555a:	4620      	mov	r0, r4
c0d0555c:	f000 f8fe 	bl	c0d0575c <USBD_LL_StallEP>
c0d05560:	7929      	ldrb	r1, [r5, #4]
c0d05562:	2902      	cmp	r1, #2
c0d05564:	d827      	bhi.n	c0d055b6 <USBD_StdEPReq+0xfc>
c0d05566:	00c8      	lsls	r0, r1, #3
c0d05568:	1820      	adds	r0, r4, r0
c0d0556a:	2145      	movs	r1, #69	; 0x45
c0d0556c:	0089      	lsls	r1, r1, #2
c0d0556e:	5840      	ldr	r0, [r0, r1]
c0d05570:	2800      	cmp	r0, #0
c0d05572:	d020      	beq.n	c0d055b6 <USBD_StdEPReq+0xfc>
c0d05574:	6880      	ldr	r0, [r0, #8]
c0d05576:	f001 fc0f 	bl	c0d06d98 <pic>
c0d0557a:	4602      	mov	r2, r0
c0d0557c:	4620      	mov	r0, r4
c0d0557e:	4629      	mov	r1, r5
c0d05580:	4790      	blx	r2
c0d05582:	e018      	b.n	c0d055b6 <USBD_StdEPReq+0xfc>
c0d05584:	4620      	mov	r0, r4
c0d05586:	f000 f92d 	bl	c0d057e4 <USBD_LL_IsStallEP>
c0d0558a:	1e41      	subs	r1, r0, #1
c0d0558c:	4188      	sbcs	r0, r1
c0d0558e:	a901      	add	r1, sp, #4
c0d05590:	8008      	strh	r0, [r1, #0]
c0d05592:	2202      	movs	r2, #2
c0d05594:	4620      	mov	r0, r4
c0d05596:	f000 f831 	bl	c0d055fc <USBD_CtlSendData>
c0d0559a:	e00f      	b.n	c0d055bc <USBD_StdEPReq+0x102>
c0d0559c:	886a      	ldrh	r2, [r5, #2]
c0d0559e:	2a00      	cmp	r2, #0
c0d055a0:	d10c      	bne.n	c0d055bc <USBD_StdEPReq+0x102>
c0d055a2:	2800      	cmp	r0, #0
c0d055a4:	d007      	beq.n	c0d055b6 <USBD_StdEPReq+0xfc>
c0d055a6:	4620      	mov	r0, r4
c0d055a8:	f000 f8fa 	bl	c0d057a0 <USBD_LL_ClearStallEP>
c0d055ac:	7928      	ldrb	r0, [r5, #4]
c0d055ae:	2802      	cmp	r0, #2
c0d055b0:	d801      	bhi.n	c0d055b6 <USBD_StdEPReq+0xfc>
c0d055b2:	00c0      	lsls	r0, r0, #3
c0d055b4:	e7d8      	b.n	c0d05568 <USBD_StdEPReq+0xae>
c0d055b6:	4620      	mov	r0, r4
c0d055b8:	f000 f84b 	bl	c0d05652 <USBD_CtlSendStatus>
c0d055bc:	2000      	movs	r0, #0
c0d055be:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0d055c0 <USBD_ParseSetupRequest>:
c0d055c0:	780a      	ldrb	r2, [r1, #0]
c0d055c2:	7002      	strb	r2, [r0, #0]
c0d055c4:	784a      	ldrb	r2, [r1, #1]
c0d055c6:	7042      	strb	r2, [r0, #1]
c0d055c8:	788a      	ldrb	r2, [r1, #2]
c0d055ca:	78cb      	ldrb	r3, [r1, #3]
c0d055cc:	021b      	lsls	r3, r3, #8
c0d055ce:	189a      	adds	r2, r3, r2
c0d055d0:	8042      	strh	r2, [r0, #2]
c0d055d2:	790a      	ldrb	r2, [r1, #4]
c0d055d4:	794b      	ldrb	r3, [r1, #5]
c0d055d6:	021b      	lsls	r3, r3, #8
c0d055d8:	189a      	adds	r2, r3, r2
c0d055da:	8082      	strh	r2, [r0, #4]
c0d055dc:	798a      	ldrb	r2, [r1, #6]
c0d055de:	79c9      	ldrb	r1, [r1, #7]
c0d055e0:	0209      	lsls	r1, r1, #8
c0d055e2:	1889      	adds	r1, r1, r2
c0d055e4:	80c1      	strh	r1, [r0, #6]
c0d055e6:	4770      	bx	lr

c0d055e8 <USBD_CtlStall>:
c0d055e8:	b510      	push	{r4, lr}
c0d055ea:	4604      	mov	r4, r0
c0d055ec:	2180      	movs	r1, #128	; 0x80
c0d055ee:	f000 f8b5 	bl	c0d0575c <USBD_LL_StallEP>
c0d055f2:	2100      	movs	r1, #0
c0d055f4:	4620      	mov	r0, r4
c0d055f6:	f000 f8b1 	bl	c0d0575c <USBD_LL_StallEP>
c0d055fa:	bd10      	pop	{r4, pc}

c0d055fc <USBD_CtlSendData>:
c0d055fc:	b5b0      	push	{r4, r5, r7, lr}
c0d055fe:	460c      	mov	r4, r1
c0d05600:	21f4      	movs	r1, #244	; 0xf4
c0d05602:	2302      	movs	r3, #2
c0d05604:	5043      	str	r3, [r0, r1]
c0d05606:	6182      	str	r2, [r0, #24]
c0d05608:	61c2      	str	r2, [r0, #28]
c0d0560a:	4601      	mov	r1, r0
c0d0560c:	31f4      	adds	r1, #244	; 0xf4
c0d0560e:	63cc      	str	r4, [r1, #60]	; 0x3c
c0d05610:	6a01      	ldr	r1, [r0, #32]
c0d05612:	4291      	cmp	r1, r2
c0d05614:	d800      	bhi.n	c0d05618 <USBD_CtlSendData+0x1c>
c0d05616:	460a      	mov	r2, r1
c0d05618:	b293      	uxth	r3, r2
c0d0561a:	2500      	movs	r5, #0
c0d0561c:	4629      	mov	r1, r5
c0d0561e:	4622      	mov	r2, r4
c0d05620:	f000 f900 	bl	c0d05824 <USBD_LL_Transmit>
c0d05624:	4628      	mov	r0, r5
c0d05626:	bdb0      	pop	{r4, r5, r7, pc}

c0d05628 <USBD_CtlContinueSendData>:
c0d05628:	b5b0      	push	{r4, r5, r7, lr}
c0d0562a:	460c      	mov	r4, r1
c0d0562c:	6a01      	ldr	r1, [r0, #32]
c0d0562e:	4291      	cmp	r1, r2
c0d05630:	d800      	bhi.n	c0d05634 <USBD_CtlContinueSendData+0xc>
c0d05632:	460a      	mov	r2, r1
c0d05634:	b293      	uxth	r3, r2
c0d05636:	2500      	movs	r5, #0
c0d05638:	4629      	mov	r1, r5
c0d0563a:	4622      	mov	r2, r4
c0d0563c:	f000 f8f2 	bl	c0d05824 <USBD_LL_Transmit>
c0d05640:	4628      	mov	r0, r5
c0d05642:	bdb0      	pop	{r4, r5, r7, pc}

c0d05644 <USBD_CtlContinueRx>:
c0d05644:	b510      	push	{r4, lr}
c0d05646:	2400      	movs	r4, #0
c0d05648:	4621      	mov	r1, r4
c0d0564a:	f000 f902 	bl	c0d05852 <USBD_LL_PrepareReceive>
c0d0564e:	4620      	mov	r0, r4
c0d05650:	bd10      	pop	{r4, pc}

c0d05652 <USBD_CtlSendStatus>:
c0d05652:	b510      	push	{r4, lr}
c0d05654:	21f4      	movs	r1, #244	; 0xf4
c0d05656:	2204      	movs	r2, #4
c0d05658:	5042      	str	r2, [r0, r1]
c0d0565a:	2400      	movs	r4, #0
c0d0565c:	4621      	mov	r1, r4
c0d0565e:	4622      	mov	r2, r4
c0d05660:	4623      	mov	r3, r4
c0d05662:	f000 f8df 	bl	c0d05824 <USBD_LL_Transmit>
c0d05666:	4620      	mov	r0, r4
c0d05668:	bd10      	pop	{r4, pc}

c0d0566a <USBD_CtlReceiveStatus>:
c0d0566a:	b510      	push	{r4, lr}
c0d0566c:	21f4      	movs	r1, #244	; 0xf4
c0d0566e:	2205      	movs	r2, #5
c0d05670:	5042      	str	r2, [r0, r1]
c0d05672:	2400      	movs	r4, #0
c0d05674:	4621      	mov	r1, r4
c0d05676:	4622      	mov	r2, r4
c0d05678:	f000 f8eb 	bl	c0d05852 <USBD_LL_PrepareReceive>
c0d0567c:	4620      	mov	r0, r4
c0d0567e:	bd10      	pop	{r4, pc}

c0d05680 <USBD_LL_Init>:
c0d05680:	4902      	ldr	r1, [pc, #8]	; (c0d0568c <USBD_LL_Init+0xc>)
c0d05682:	2000      	movs	r0, #0
c0d05684:	6008      	str	r0, [r1, #0]
c0d05686:	4902      	ldr	r1, [pc, #8]	; (c0d05690 <USBD_LL_Init+0x10>)
c0d05688:	6008      	str	r0, [r1, #0]
c0d0568a:	4770      	bx	lr
c0d0568c:	20000be0 	.word	0x20000be0
c0d05690:	20000bdc 	.word	0x20000bdc

c0d05694 <USBD_LL_DeInit>:
c0d05694:	b51c      	push	{r2, r3, r4, lr}
c0d05696:	a801      	add	r0, sp, #4
c0d05698:	2102      	movs	r1, #2
c0d0569a:	70c1      	strb	r1, [r0, #3]
c0d0569c:	2101      	movs	r1, #1
c0d0569e:	7081      	strb	r1, [r0, #2]
c0d056a0:	2400      	movs	r4, #0
c0d056a2:	7044      	strb	r4, [r0, #1]
c0d056a4:	214f      	movs	r1, #79	; 0x4f
c0d056a6:	7001      	strb	r1, [r0, #0]
c0d056a8:	2104      	movs	r1, #4
c0d056aa:	f001 fc23 	bl	c0d06ef4 <io_seph_send>
c0d056ae:	4620      	mov	r0, r4
c0d056b0:	bd1c      	pop	{r2, r3, r4, pc}

c0d056b2 <USBD_LL_Start>:
c0d056b2:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0d056b4:	466d      	mov	r5, sp
c0d056b6:	2400      	movs	r4, #0
c0d056b8:	712c      	strb	r4, [r5, #4]
c0d056ba:	2003      	movs	r0, #3
c0d056bc:	70e8      	strb	r0, [r5, #3]
c0d056be:	2002      	movs	r0, #2
c0d056c0:	70a8      	strb	r0, [r5, #2]
c0d056c2:	706c      	strb	r4, [r5, #1]
c0d056c4:	264f      	movs	r6, #79	; 0x4f
c0d056c6:	702e      	strb	r6, [r5, #0]
c0d056c8:	2105      	movs	r1, #5
c0d056ca:	4628      	mov	r0, r5
c0d056cc:	f001 fc12 	bl	c0d06ef4 <io_seph_send>
c0d056d0:	2001      	movs	r0, #1
c0d056d2:	70e8      	strb	r0, [r5, #3]
c0d056d4:	70a8      	strb	r0, [r5, #2]
c0d056d6:	706c      	strb	r4, [r5, #1]
c0d056d8:	702e      	strb	r6, [r5, #0]
c0d056da:	2104      	movs	r1, #4
c0d056dc:	4628      	mov	r0, r5
c0d056de:	f001 fc09 	bl	c0d06ef4 <io_seph_send>
c0d056e2:	4620      	mov	r0, r4
c0d056e4:	bd7c      	pop	{r2, r3, r4, r5, r6, pc}

c0d056e6 <USBD_LL_Stop>:
c0d056e6:	b51c      	push	{r2, r3, r4, lr}
c0d056e8:	a801      	add	r0, sp, #4
c0d056ea:	2102      	movs	r1, #2
c0d056ec:	70c1      	strb	r1, [r0, #3]
c0d056ee:	2101      	movs	r1, #1
c0d056f0:	7081      	strb	r1, [r0, #2]
c0d056f2:	2400      	movs	r4, #0
c0d056f4:	7044      	strb	r4, [r0, #1]
c0d056f6:	214f      	movs	r1, #79	; 0x4f
c0d056f8:	7001      	strb	r1, [r0, #0]
c0d056fa:	2104      	movs	r1, #4
c0d056fc:	f001 fbfa 	bl	c0d06ef4 <io_seph_send>
c0d05700:	4620      	mov	r0, r4
c0d05702:	bd1c      	pop	{r2, r3, r4, pc}

c0d05704 <USBD_LL_OpenEP>:
c0d05704:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0d05706:	4813      	ldr	r0, [pc, #76]	; (c0d05754 <USBD_LL_OpenEP+0x50>)
c0d05708:	2400      	movs	r4, #0
c0d0570a:	6004      	str	r4, [r0, #0]
c0d0570c:	4812      	ldr	r0, [pc, #72]	; (c0d05758 <USBD_LL_OpenEP+0x54>)
c0d0570e:	6004      	str	r4, [r0, #0]
c0d05710:	466d      	mov	r5, sp
c0d05712:	71ac      	strb	r4, [r5, #6]
c0d05714:	7169      	strb	r1, [r5, #5]
c0d05716:	2101      	movs	r1, #1
c0d05718:	7129      	strb	r1, [r5, #4]
c0d0571a:	2004      	movs	r0, #4
c0d0571c:	70e8      	strb	r0, [r5, #3]
c0d0571e:	2605      	movs	r6, #5
c0d05720:	70ae      	strb	r6, [r5, #2]
c0d05722:	706c      	strb	r4, [r5, #1]
c0d05724:	244f      	movs	r4, #79	; 0x4f
c0d05726:	702c      	strb	r4, [r5, #0]
c0d05728:	2a00      	cmp	r2, #0
c0d0572a:	d00a      	beq.n	c0d05742 <USBD_LL_OpenEP+0x3e>
c0d0572c:	2a03      	cmp	r2, #3
c0d0572e:	d005      	beq.n	c0d0573c <USBD_LL_OpenEP+0x38>
c0d05730:	2a02      	cmp	r2, #2
c0d05732:	d005      	beq.n	c0d05740 <USBD_LL_OpenEP+0x3c>
c0d05734:	2a01      	cmp	r2, #1
c0d05736:	d106      	bne.n	c0d05746 <USBD_LL_OpenEP+0x42>
c0d05738:	4601      	mov	r1, r0
c0d0573a:	e002      	b.n	c0d05742 <USBD_LL_OpenEP+0x3e>
c0d0573c:	2102      	movs	r1, #2
c0d0573e:	e000      	b.n	c0d05742 <USBD_LL_OpenEP+0x3e>
c0d05740:	2103      	movs	r1, #3
c0d05742:	4668      	mov	r0, sp
c0d05744:	7181      	strb	r1, [r0, #6]
c0d05746:	4668      	mov	r0, sp
c0d05748:	71c3      	strb	r3, [r0, #7]
c0d0574a:	2108      	movs	r1, #8
c0d0574c:	f001 fbd2 	bl	c0d06ef4 <io_seph_send>
c0d05750:	2000      	movs	r0, #0
c0d05752:	bd7c      	pop	{r2, r3, r4, r5, r6, pc}
c0d05754:	20000bdc 	.word	0x20000bdc
c0d05758:	20000be0 	.word	0x20000be0

c0d0575c <USBD_LL_StallEP>:
c0d0575c:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0d0575e:	460d      	mov	r5, r1
c0d05760:	4668      	mov	r0, sp
c0d05762:	2400      	movs	r4, #0
c0d05764:	7144      	strb	r4, [r0, #5]
c0d05766:	2140      	movs	r1, #64	; 0x40
c0d05768:	7101      	strb	r1, [r0, #4]
c0d0576a:	70c5      	strb	r5, [r0, #3]
c0d0576c:	2103      	movs	r1, #3
c0d0576e:	7081      	strb	r1, [r0, #2]
c0d05770:	7044      	strb	r4, [r0, #1]
c0d05772:	2150      	movs	r1, #80	; 0x50
c0d05774:	7001      	strb	r1, [r0, #0]
c0d05776:	2106      	movs	r1, #6
c0d05778:	f001 fbbc 	bl	c0d06ef4 <io_seph_send>
c0d0577c:	0628      	lsls	r0, r5, #24
c0d0577e:	d501      	bpl.n	c0d05784 <USBD_LL_StallEP+0x28>
c0d05780:	4806      	ldr	r0, [pc, #24]	; (c0d0579c <USBD_LL_StallEP+0x40>)
c0d05782:	e000      	b.n	c0d05786 <USBD_LL_StallEP+0x2a>
c0d05784:	4804      	ldr	r0, [pc, #16]	; (c0d05798 <USBD_LL_StallEP+0x3c>)
c0d05786:	6801      	ldr	r1, [r0, #0]
c0d05788:	227f      	movs	r2, #127	; 0x7f
c0d0578a:	4015      	ands	r5, r2
c0d0578c:	2201      	movs	r2, #1
c0d0578e:	40aa      	lsls	r2, r5
c0d05790:	430a      	orrs	r2, r1
c0d05792:	6002      	str	r2, [r0, #0]
c0d05794:	4620      	mov	r0, r4
c0d05796:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0d05798:	20000be0 	.word	0x20000be0
c0d0579c:	20000bdc 	.word	0x20000bdc

c0d057a0 <USBD_LL_ClearStallEP>:
c0d057a0:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0d057a2:	460d      	mov	r5, r1
c0d057a4:	4668      	mov	r0, sp
c0d057a6:	2400      	movs	r4, #0
c0d057a8:	7144      	strb	r4, [r0, #5]
c0d057aa:	2180      	movs	r1, #128	; 0x80
c0d057ac:	7101      	strb	r1, [r0, #4]
c0d057ae:	70c5      	strb	r5, [r0, #3]
c0d057b0:	2103      	movs	r1, #3
c0d057b2:	7081      	strb	r1, [r0, #2]
c0d057b4:	7044      	strb	r4, [r0, #1]
c0d057b6:	2150      	movs	r1, #80	; 0x50
c0d057b8:	7001      	strb	r1, [r0, #0]
c0d057ba:	2106      	movs	r1, #6
c0d057bc:	f001 fb9a 	bl	c0d06ef4 <io_seph_send>
c0d057c0:	0628      	lsls	r0, r5, #24
c0d057c2:	d501      	bpl.n	c0d057c8 <USBD_LL_ClearStallEP+0x28>
c0d057c4:	4806      	ldr	r0, [pc, #24]	; (c0d057e0 <USBD_LL_ClearStallEP+0x40>)
c0d057c6:	e000      	b.n	c0d057ca <USBD_LL_ClearStallEP+0x2a>
c0d057c8:	4804      	ldr	r0, [pc, #16]	; (c0d057dc <USBD_LL_ClearStallEP+0x3c>)
c0d057ca:	6801      	ldr	r1, [r0, #0]
c0d057cc:	227f      	movs	r2, #127	; 0x7f
c0d057ce:	4015      	ands	r5, r2
c0d057d0:	2201      	movs	r2, #1
c0d057d2:	40aa      	lsls	r2, r5
c0d057d4:	4391      	bics	r1, r2
c0d057d6:	6001      	str	r1, [r0, #0]
c0d057d8:	4620      	mov	r0, r4
c0d057da:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0d057dc:	20000be0 	.word	0x20000be0
c0d057e0:	20000bdc 	.word	0x20000bdc

c0d057e4 <USBD_LL_IsStallEP>:
c0d057e4:	0608      	lsls	r0, r1, #24
c0d057e6:	d501      	bpl.n	c0d057ec <USBD_LL_IsStallEP+0x8>
c0d057e8:	4805      	ldr	r0, [pc, #20]	; (c0d05800 <USBD_LL_IsStallEP+0x1c>)
c0d057ea:	e000      	b.n	c0d057ee <USBD_LL_IsStallEP+0xa>
c0d057ec:	4803      	ldr	r0, [pc, #12]	; (c0d057fc <USBD_LL_IsStallEP+0x18>)
c0d057ee:	7802      	ldrb	r2, [r0, #0]
c0d057f0:	207f      	movs	r0, #127	; 0x7f
c0d057f2:	4001      	ands	r1, r0
c0d057f4:	2001      	movs	r0, #1
c0d057f6:	4088      	lsls	r0, r1
c0d057f8:	4010      	ands	r0, r2
c0d057fa:	4770      	bx	lr
c0d057fc:	20000be0 	.word	0x20000be0
c0d05800:	20000bdc 	.word	0x20000bdc

c0d05804 <USBD_LL_SetUSBAddress>:
c0d05804:	b51c      	push	{r2, r3, r4, lr}
c0d05806:	4668      	mov	r0, sp
c0d05808:	7101      	strb	r1, [r0, #4]
c0d0580a:	2103      	movs	r1, #3
c0d0580c:	70c1      	strb	r1, [r0, #3]
c0d0580e:	2102      	movs	r1, #2
c0d05810:	7081      	strb	r1, [r0, #2]
c0d05812:	2400      	movs	r4, #0
c0d05814:	7044      	strb	r4, [r0, #1]
c0d05816:	214f      	movs	r1, #79	; 0x4f
c0d05818:	7001      	strb	r1, [r0, #0]
c0d0581a:	2105      	movs	r1, #5
c0d0581c:	f001 fb6a 	bl	c0d06ef4 <io_seph_send>
c0d05820:	4620      	mov	r0, r4
c0d05822:	bd1c      	pop	{r2, r3, r4, pc}

c0d05824 <USBD_LL_Transmit>:
c0d05824:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0d05826:	461c      	mov	r4, r3
c0d05828:	4615      	mov	r5, r2
c0d0582a:	4668      	mov	r0, sp
c0d0582c:	7143      	strb	r3, [r0, #5]
c0d0582e:	2220      	movs	r2, #32
c0d05830:	7102      	strb	r2, [r0, #4]
c0d05832:	70c1      	strb	r1, [r0, #3]
c0d05834:	2150      	movs	r1, #80	; 0x50
c0d05836:	7001      	strb	r1, [r0, #0]
c0d05838:	1cd9      	adds	r1, r3, #3
c0d0583a:	7081      	strb	r1, [r0, #2]
c0d0583c:	0a09      	lsrs	r1, r1, #8
c0d0583e:	7041      	strb	r1, [r0, #1]
c0d05840:	2106      	movs	r1, #6
c0d05842:	f001 fb57 	bl	c0d06ef4 <io_seph_send>
c0d05846:	4628      	mov	r0, r5
c0d05848:	4621      	mov	r1, r4
c0d0584a:	f001 fb53 	bl	c0d06ef4 <io_seph_send>
c0d0584e:	2000      	movs	r0, #0
c0d05850:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0d05852 <USBD_LL_PrepareReceive>:
c0d05852:	b51c      	push	{r2, r3, r4, lr}
c0d05854:	4668      	mov	r0, sp
c0d05856:	7142      	strb	r2, [r0, #5]
c0d05858:	2230      	movs	r2, #48	; 0x30
c0d0585a:	7102      	strb	r2, [r0, #4]
c0d0585c:	70c1      	strb	r1, [r0, #3]
c0d0585e:	2103      	movs	r1, #3
c0d05860:	7081      	strb	r1, [r0, #2]
c0d05862:	2400      	movs	r4, #0
c0d05864:	7044      	strb	r4, [r0, #1]
c0d05866:	2150      	movs	r1, #80	; 0x50
c0d05868:	7001      	strb	r1, [r0, #0]
c0d0586a:	2106      	movs	r1, #6
c0d0586c:	f001 fb42 	bl	c0d06ef4 <io_seph_send>
c0d05870:	4620      	mov	r0, r4
c0d05872:	bd1c      	pop	{r2, r3, r4, pc}

c0d05874 <USBD_HID_GetHidDescriptor_impl>:
c0d05874:	4601      	mov	r1, r0
c0d05876:	2043      	movs	r0, #67	; 0x43
c0d05878:	0080      	lsls	r0, r0, #2
c0d0587a:	4a07      	ldr	r2, [pc, #28]	; (c0d05898 <USBD_HID_GetHidDescriptor_impl+0x24>)
c0d0587c:	5c12      	ldrb	r2, [r2, r0]
c0d0587e:	2000      	movs	r0, #0
c0d05880:	2a00      	cmp	r2, #0
c0d05882:	d001      	beq.n	c0d05888 <USBD_HID_GetHidDescriptor_impl+0x14>
c0d05884:	4603      	mov	r3, r0
c0d05886:	e000      	b.n	c0d0588a <USBD_HID_GetHidDescriptor_impl+0x16>
c0d05888:	2309      	movs	r3, #9
c0d0588a:	800b      	strh	r3, [r1, #0]
c0d0588c:	2a00      	cmp	r2, #0
c0d0588e:	d101      	bne.n	c0d05894 <USBD_HID_GetHidDescriptor_impl+0x20>
c0d05890:	4802      	ldr	r0, [pc, #8]	; (c0d0589c <USBD_HID_GetHidDescriptor_impl+0x28>)
c0d05892:	4478      	add	r0, pc
c0d05894:	4770      	bx	lr
c0d05896:	46c0      	nop			; (mov r8, r8)
c0d05898:	20000aa8 	.word	0x20000aa8
c0d0589c:	0000453e 	.word	0x0000453e

c0d058a0 <USBD_HID_GetReportDescriptor_impl>:
c0d058a0:	4601      	mov	r1, r0
c0d058a2:	2043      	movs	r0, #67	; 0x43
c0d058a4:	0080      	lsls	r0, r0, #2
c0d058a6:	4a07      	ldr	r2, [pc, #28]	; (c0d058c4 <USBD_HID_GetReportDescriptor_impl+0x24>)
c0d058a8:	5c12      	ldrb	r2, [r2, r0]
c0d058aa:	2000      	movs	r0, #0
c0d058ac:	2a00      	cmp	r2, #0
c0d058ae:	d001      	beq.n	c0d058b4 <USBD_HID_GetReportDescriptor_impl+0x14>
c0d058b0:	4603      	mov	r3, r0
c0d058b2:	e000      	b.n	c0d058b6 <USBD_HID_GetReportDescriptor_impl+0x16>
c0d058b4:	2322      	movs	r3, #34	; 0x22
c0d058b6:	800b      	strh	r3, [r1, #0]
c0d058b8:	2a00      	cmp	r2, #0
c0d058ba:	d101      	bne.n	c0d058c0 <USBD_HID_GetReportDescriptor_impl+0x20>
c0d058bc:	4802      	ldr	r0, [pc, #8]	; (c0d058c8 <USBD_HID_GetReportDescriptor_impl+0x28>)
c0d058be:	4478      	add	r0, pc
c0d058c0:	4770      	bx	lr
c0d058c2:	46c0      	nop			; (mov r8, r8)
c0d058c4:	20000aa8 	.word	0x20000aa8
c0d058c8:	0000451b 	.word	0x0000451b

c0d058cc <USBD_HID_DataIn_impl>:
c0d058cc:	b580      	push	{r7, lr}
c0d058ce:	2902      	cmp	r1, #2
c0d058d0:	d103      	bne.n	c0d058da <USBD_HID_DataIn_impl+0xe>
c0d058d2:	4803      	ldr	r0, [pc, #12]	; (c0d058e0 <USBD_HID_DataIn_impl+0x14>)
c0d058d4:	4478      	add	r0, pc
c0d058d6:	f001 f827 	bl	c0d06928 <io_usb_hid_sent>
c0d058da:	2000      	movs	r0, #0
c0d058dc:	bd80      	pop	{r7, pc}
c0d058de:	46c0      	nop			; (mov r8, r8)
c0d058e0:	00000ecd 	.word	0x00000ecd

c0d058e4 <USBD_HID_DataOut_impl>:
c0d058e4:	b570      	push	{r4, r5, r6, lr}
c0d058e6:	2902      	cmp	r1, #2
c0d058e8:	d11c      	bne.n	c0d05924 <USBD_HID_DataOut_impl+0x40>
c0d058ea:	461c      	mov	r4, r3
c0d058ec:	4615      	mov	r5, r2
c0d058ee:	2102      	movs	r1, #2
c0d058f0:	2240      	movs	r2, #64	; 0x40
c0d058f2:	f7ff ffae 	bl	c0d05852 <USBD_LL_PrepareReceive>
c0d058f6:	4e0c      	ldr	r6, [pc, #48]	; (c0d05928 <USBD_HID_DataOut_impl+0x44>)
c0d058f8:	79b0      	ldrb	r0, [r6, #6]
c0d058fa:	2800      	cmp	r0, #0
c0d058fc:	d112      	bne.n	c0d05924 <USBD_HID_DataOut_impl+0x40>
c0d058fe:	2002      	movs	r0, #2
c0d05900:	f000 ff20 	bl	c0d06744 <io_seproxyhal_get_ep_rx_size>
c0d05904:	4602      	mov	r2, r0
c0d05906:	480a      	ldr	r0, [pc, #40]	; (c0d05930 <USBD_HID_DataOut_impl+0x4c>)
c0d05908:	4478      	add	r0, pc
c0d0590a:	4629      	mov	r1, r5
c0d0590c:	4623      	mov	r3, r4
c0d0590e:	f000 ff51 	bl	c0d067b4 <io_usb_hid_receive>
c0d05912:	2802      	cmp	r0, #2
c0d05914:	d106      	bne.n	c0d05924 <USBD_HID_DataOut_impl+0x40>
c0d05916:	2007      	movs	r0, #7
c0d05918:	7030      	strb	r0, [r6, #0]
c0d0591a:	2001      	movs	r0, #1
c0d0591c:	71b0      	strb	r0, [r6, #6]
c0d0591e:	4803      	ldr	r0, [pc, #12]	; (c0d0592c <USBD_HID_DataOut_impl+0x48>)
c0d05920:	6800      	ldr	r0, [r0, #0]
c0d05922:	8070      	strh	r0, [r6, #2]
c0d05924:	2000      	movs	r0, #0
c0d05926:	bd70      	pop	{r4, r5, r6, pc}
c0d05928:	20000cfc 	.word	0x20000cfc
c0d0592c:	20000d6c 	.word	0x20000d6c
c0d05930:	00000e99 	.word	0x00000e99

c0d05934 <USBD_WEBUSB_Init>:
c0d05934:	b570      	push	{r4, r5, r6, lr}
c0d05936:	4604      	mov	r4, r0
c0d05938:	2183      	movs	r1, #131	; 0x83
c0d0593a:	2503      	movs	r5, #3
c0d0593c:	2640      	movs	r6, #64	; 0x40
c0d0593e:	462a      	mov	r2, r5
c0d05940:	4633      	mov	r3, r6
c0d05942:	f7ff fedf 	bl	c0d05704 <USBD_LL_OpenEP>
c0d05946:	4620      	mov	r0, r4
c0d05948:	4629      	mov	r1, r5
c0d0594a:	462a      	mov	r2, r5
c0d0594c:	4633      	mov	r3, r6
c0d0594e:	f7ff fed9 	bl	c0d05704 <USBD_LL_OpenEP>
c0d05952:	4620      	mov	r0, r4
c0d05954:	4629      	mov	r1, r5
c0d05956:	4632      	mov	r2, r6
c0d05958:	f7ff ff7b 	bl	c0d05852 <USBD_LL_PrepareReceive>
c0d0595c:	2000      	movs	r0, #0
c0d0595e:	bd70      	pop	{r4, r5, r6, pc}

c0d05960 <USBD_WEBUSB_DeInit>:
c0d05960:	2000      	movs	r0, #0
c0d05962:	4770      	bx	lr

c0d05964 <USBD_WEBUSB_Setup>:
c0d05964:	2000      	movs	r0, #0
c0d05966:	4770      	bx	lr

c0d05968 <USBD_WEBUSB_DataIn>:
c0d05968:	b580      	push	{r7, lr}
c0d0596a:	2903      	cmp	r1, #3
c0d0596c:	d103      	bne.n	c0d05976 <USBD_WEBUSB_DataIn+0xe>
c0d0596e:	4803      	ldr	r0, [pc, #12]	; (c0d0597c <USBD_WEBUSB_DataIn+0x14>)
c0d05970:	4478      	add	r0, pc
c0d05972:	f000 ffd9 	bl	c0d06928 <io_usb_hid_sent>
c0d05976:	2000      	movs	r0, #0
c0d05978:	bd80      	pop	{r7, pc}
c0d0597a:	46c0      	nop			; (mov r8, r8)
c0d0597c:	00000835 	.word	0x00000835

c0d05980 <USBD_WEBUSB_DataOut>:
c0d05980:	b570      	push	{r4, r5, r6, lr}
c0d05982:	2903      	cmp	r1, #3
c0d05984:	d11c      	bne.n	c0d059c0 <USBD_WEBUSB_DataOut+0x40>
c0d05986:	461c      	mov	r4, r3
c0d05988:	4615      	mov	r5, r2
c0d0598a:	2103      	movs	r1, #3
c0d0598c:	2240      	movs	r2, #64	; 0x40
c0d0598e:	f7ff ff60 	bl	c0d05852 <USBD_LL_PrepareReceive>
c0d05992:	4e0c      	ldr	r6, [pc, #48]	; (c0d059c4 <USBD_WEBUSB_DataOut+0x44>)
c0d05994:	79b0      	ldrb	r0, [r6, #6]
c0d05996:	2800      	cmp	r0, #0
c0d05998:	d112      	bne.n	c0d059c0 <USBD_WEBUSB_DataOut+0x40>
c0d0599a:	2003      	movs	r0, #3
c0d0599c:	f000 fed2 	bl	c0d06744 <io_seproxyhal_get_ep_rx_size>
c0d059a0:	4602      	mov	r2, r0
c0d059a2:	480a      	ldr	r0, [pc, #40]	; (c0d059cc <USBD_WEBUSB_DataOut+0x4c>)
c0d059a4:	4478      	add	r0, pc
c0d059a6:	4629      	mov	r1, r5
c0d059a8:	4623      	mov	r3, r4
c0d059aa:	f000 ff03 	bl	c0d067b4 <io_usb_hid_receive>
c0d059ae:	2802      	cmp	r0, #2
c0d059b0:	d106      	bne.n	c0d059c0 <USBD_WEBUSB_DataOut+0x40>
c0d059b2:	200b      	movs	r0, #11
c0d059b4:	7030      	strb	r0, [r6, #0]
c0d059b6:	2005      	movs	r0, #5
c0d059b8:	71b0      	strb	r0, [r6, #6]
c0d059ba:	4803      	ldr	r0, [pc, #12]	; (c0d059c8 <USBD_WEBUSB_DataOut+0x48>)
c0d059bc:	6800      	ldr	r0, [r0, #0]
c0d059be:	8070      	strh	r0, [r6, #2]
c0d059c0:	2000      	movs	r0, #0
c0d059c2:	bd70      	pop	{r4, r5, r6, pc}
c0d059c4:	20000cfc 	.word	0x20000cfc
c0d059c8:	20000d6c 	.word	0x20000d6c
c0d059cc:	00000801 	.word	0x00000801

c0d059d0 <USBD_DeviceDescriptor>:
c0d059d0:	2012      	movs	r0, #18
c0d059d2:	8008      	strh	r0, [r1, #0]
c0d059d4:	4801      	ldr	r0, [pc, #4]	; (c0d059dc <USBD_DeviceDescriptor+0xc>)
c0d059d6:	4478      	add	r0, pc
c0d059d8:	4770      	bx	lr
c0d059da:	46c0      	nop			; (mov r8, r8)
c0d059dc:	00004646 	.word	0x00004646

c0d059e0 <USBD_LangIDStrDescriptor>:
c0d059e0:	2004      	movs	r0, #4
c0d059e2:	8008      	strh	r0, [r1, #0]
c0d059e4:	4801      	ldr	r0, [pc, #4]	; (c0d059ec <USBD_LangIDStrDescriptor+0xc>)
c0d059e6:	4478      	add	r0, pc
c0d059e8:	4770      	bx	lr
c0d059ea:	46c0      	nop			; (mov r8, r8)
c0d059ec:	00004648 	.word	0x00004648

c0d059f0 <USBD_ManufacturerStrDescriptor>:
c0d059f0:	200e      	movs	r0, #14
c0d059f2:	8008      	strh	r0, [r1, #0]
c0d059f4:	4801      	ldr	r0, [pc, #4]	; (c0d059fc <USBD_ManufacturerStrDescriptor+0xc>)
c0d059f6:	4478      	add	r0, pc
c0d059f8:	4770      	bx	lr
c0d059fa:	46c0      	nop			; (mov r8, r8)
c0d059fc:	0000463c 	.word	0x0000463c

c0d05a00 <USBD_ProductStrDescriptor>:
c0d05a00:	200e      	movs	r0, #14
c0d05a02:	8008      	strh	r0, [r1, #0]
c0d05a04:	4801      	ldr	r0, [pc, #4]	; (c0d05a0c <USBD_ProductStrDescriptor+0xc>)
c0d05a06:	4478      	add	r0, pc
c0d05a08:	4770      	bx	lr
c0d05a0a:	46c0      	nop			; (mov r8, r8)
c0d05a0c:	0000463a 	.word	0x0000463a

c0d05a10 <USBD_SerialStrDescriptor>:
c0d05a10:	200a      	movs	r0, #10
c0d05a12:	8008      	strh	r0, [r1, #0]
c0d05a14:	4801      	ldr	r0, [pc, #4]	; (c0d05a1c <USBD_SerialStrDescriptor+0xc>)
c0d05a16:	4478      	add	r0, pc
c0d05a18:	4770      	bx	lr
c0d05a1a:	46c0      	nop			; (mov r8, r8)
c0d05a1c:	00004638 	.word	0x00004638

c0d05a20 <USBD_ConfigStrDescriptor>:
c0d05a20:	200e      	movs	r0, #14
c0d05a22:	8008      	strh	r0, [r1, #0]
c0d05a24:	4801      	ldr	r0, [pc, #4]	; (c0d05a2c <USBD_ConfigStrDescriptor+0xc>)
c0d05a26:	4478      	add	r0, pc
c0d05a28:	4770      	bx	lr
c0d05a2a:	46c0      	nop			; (mov r8, r8)
c0d05a2c:	0000461a 	.word	0x0000461a

c0d05a30 <USBD_InterfaceStrDescriptor>:
c0d05a30:	200e      	movs	r0, #14
c0d05a32:	8008      	strh	r0, [r1, #0]
c0d05a34:	4801      	ldr	r0, [pc, #4]	; (c0d05a3c <USBD_InterfaceStrDescriptor+0xc>)
c0d05a36:	4478      	add	r0, pc
c0d05a38:	4770      	bx	lr
c0d05a3a:	46c0      	nop			; (mov r8, r8)
c0d05a3c:	0000460a 	.word	0x0000460a

c0d05a40 <USBD_BOSDescriptor>:
c0d05a40:	2039      	movs	r0, #57	; 0x39
c0d05a42:	8008      	strh	r0, [r1, #0]
c0d05a44:	4801      	ldr	r0, [pc, #4]	; (c0d05a4c <USBD_BOSDescriptor+0xc>)
c0d05a46:	4478      	add	r0, pc
c0d05a48:	4770      	bx	lr
c0d05a4a:	46c0      	nop			; (mov r8, r8)
c0d05a4c:	000043b5 	.word	0x000043b5

c0d05a50 <USBD_CtlError>:
c0d05a50:	b580      	push	{r7, lr}
c0d05a52:	780a      	ldrb	r2, [r1, #0]
c0d05a54:	b252      	sxtb	r2, r2
c0d05a56:	2a00      	cmp	r2, #0
c0d05a58:	d402      	bmi.n	c0d05a60 <USBD_CtlError+0x10>
c0d05a5a:	f7ff fdc5 	bl	c0d055e8 <USBD_CtlStall>
c0d05a5e:	bd80      	pop	{r7, pc}
c0d05a60:	784a      	ldrb	r2, [r1, #1]
c0d05a62:	2a77      	cmp	r2, #119	; 0x77
c0d05a64:	d00c      	beq.n	c0d05a80 <USBD_CtlError+0x30>
c0d05a66:	2a06      	cmp	r2, #6
c0d05a68:	d1f7      	bne.n	c0d05a5a <USBD_CtlError+0xa>
c0d05a6a:	884a      	ldrh	r2, [r1, #2]
c0d05a6c:	4b14      	ldr	r3, [pc, #80]	; (c0d05ac0 <USBD_CtlError+0x70>)
c0d05a6e:	429a      	cmp	r2, r3
c0d05a70:	d1f3      	bne.n	c0d05a5a <USBD_CtlError+0xa>
c0d05a72:	88ca      	ldrh	r2, [r1, #6]
c0d05a74:	2a12      	cmp	r2, #18
c0d05a76:	d300      	bcc.n	c0d05a7a <USBD_CtlError+0x2a>
c0d05a78:	2212      	movs	r2, #18
c0d05a7a:	4912      	ldr	r1, [pc, #72]	; (c0d05ac4 <USBD_CtlError+0x74>)
c0d05a7c:	4479      	add	r1, pc
c0d05a7e:	e01c      	b.n	c0d05aba <USBD_CtlError+0x6a>
c0d05a80:	888a      	ldrh	r2, [r1, #4]
c0d05a82:	2a04      	cmp	r2, #4
c0d05a84:	d106      	bne.n	c0d05a94 <USBD_CtlError+0x44>
c0d05a86:	88ca      	ldrh	r2, [r1, #6]
c0d05a88:	2a28      	cmp	r2, #40	; 0x28
c0d05a8a:	d300      	bcc.n	c0d05a8e <USBD_CtlError+0x3e>
c0d05a8c:	2228      	movs	r2, #40	; 0x28
c0d05a8e:	490e      	ldr	r1, [pc, #56]	; (c0d05ac8 <USBD_CtlError+0x78>)
c0d05a90:	4479      	add	r1, pc
c0d05a92:	e012      	b.n	c0d05aba <USBD_CtlError+0x6a>
c0d05a94:	888a      	ldrh	r2, [r1, #4]
c0d05a96:	2a05      	cmp	r2, #5
c0d05a98:	d106      	bne.n	c0d05aa8 <USBD_CtlError+0x58>
c0d05a9a:	88ca      	ldrh	r2, [r1, #6]
c0d05a9c:	2a92      	cmp	r2, #146	; 0x92
c0d05a9e:	d300      	bcc.n	c0d05aa2 <USBD_CtlError+0x52>
c0d05aa0:	2292      	movs	r2, #146	; 0x92
c0d05aa2:	490a      	ldr	r1, [pc, #40]	; (c0d05acc <USBD_CtlError+0x7c>)
c0d05aa4:	4479      	add	r1, pc
c0d05aa6:	e008      	b.n	c0d05aba <USBD_CtlError+0x6a>
c0d05aa8:	888a      	ldrh	r2, [r1, #4]
c0d05aaa:	2a07      	cmp	r2, #7
c0d05aac:	d1d5      	bne.n	c0d05a5a <USBD_CtlError+0xa>
c0d05aae:	88ca      	ldrh	r2, [r1, #6]
c0d05ab0:	2ab2      	cmp	r2, #178	; 0xb2
c0d05ab2:	d300      	bcc.n	c0d05ab6 <USBD_CtlError+0x66>
c0d05ab4:	22b2      	movs	r2, #178	; 0xb2
c0d05ab6:	4906      	ldr	r1, [pc, #24]	; (c0d05ad0 <USBD_CtlError+0x80>)
c0d05ab8:	4479      	add	r1, pc
c0d05aba:	f7ff fd9f 	bl	c0d055fc <USBD_CtlSendData>
c0d05abe:	bd80      	pop	{r7, pc}
c0d05ac0:	000003ee 	.word	0x000003ee
c0d05ac4:	000043d8 	.word	0x000043d8
c0d05ac8:	000045c8 	.word	0x000045c8
c0d05acc:	000043c2 	.word	0x000043c2
c0d05ad0:	00004440 	.word	0x00004440

c0d05ad4 <USB_power>:
c0d05ad4:	b5b0      	push	{r4, r5, r7, lr}
c0d05ad6:	4604      	mov	r4, r0
c0d05ad8:	204d      	movs	r0, #77	; 0x4d
c0d05ada:	0085      	lsls	r5, r0, #2
c0d05adc:	4817      	ldr	r0, [pc, #92]	; (c0d05b3c <USB_power+0x68>)
c0d05ade:	4629      	mov	r1, r5
c0d05ae0:	f001 fab8 	bl	c0d07054 <__aeabi_memclr>
c0d05ae4:	4816      	ldr	r0, [pc, #88]	; (c0d05b40 <USB_power+0x6c>)
c0d05ae6:	2100      	movs	r1, #0
c0d05ae8:	7481      	strb	r1, [r0, #18]
c0d05aea:	8201      	strh	r1, [r0, #16]
c0d05aec:	60c1      	str	r1, [r0, #12]
c0d05aee:	6141      	str	r1, [r0, #20]
c0d05af0:	6181      	str	r1, [r0, #24]
c0d05af2:	61c1      	str	r1, [r0, #28]
c0d05af4:	8401      	strh	r1, [r0, #32]
c0d05af6:	2c00      	cmp	r4, #0
c0d05af8:	d01b      	beq.n	c0d05b32 <USB_power+0x5e>
c0d05afa:	4c10      	ldr	r4, [pc, #64]	; (c0d05b3c <USB_power+0x68>)
c0d05afc:	4620      	mov	r0, r4
c0d05afe:	4629      	mov	r1, r5
c0d05b00:	f001 faa8 	bl	c0d07054 <__aeabi_memclr>
c0d05b04:	490f      	ldr	r1, [pc, #60]	; (c0d05b44 <USB_power+0x70>)
c0d05b06:	4479      	add	r1, pc
c0d05b08:	2500      	movs	r5, #0
c0d05b0a:	4620      	mov	r0, r4
c0d05b0c:	462a      	mov	r2, r5
c0d05b0e:	f7ff f960 	bl	c0d04dd2 <USBD_Init>
c0d05b12:	4a0d      	ldr	r2, [pc, #52]	; (c0d05b48 <USB_power+0x74>)
c0d05b14:	447a      	add	r2, pc
c0d05b16:	4628      	mov	r0, r5
c0d05b18:	4621      	mov	r1, r4
c0d05b1a:	f7ff f995 	bl	c0d04e48 <USBD_RegisterClassForInterface>
c0d05b1e:	2001      	movs	r0, #1
c0d05b20:	4a0a      	ldr	r2, [pc, #40]	; (c0d05b4c <USB_power+0x78>)
c0d05b22:	447a      	add	r2, pc
c0d05b24:	4621      	mov	r1, r4
c0d05b26:	f7ff f98f 	bl	c0d04e48 <USBD_RegisterClassForInterface>
c0d05b2a:	4620      	mov	r0, r4
c0d05b2c:	f7ff f99a 	bl	c0d04e64 <USBD_Start>
c0d05b30:	bdb0      	pop	{r4, r5, r7, pc}
c0d05b32:	4802      	ldr	r0, [pc, #8]	; (c0d05b3c <USB_power+0x68>)
c0d05b34:	f7ff f967 	bl	c0d04e06 <USBD_DeInit>
c0d05b38:	bdb0      	pop	{r4, r5, r7, pc}
c0d05b3a:	46c0      	nop			; (mov r8, r8)
c0d05b3c:	20000aa8 	.word	0x20000aa8
c0d05b40:	20000cfc 	.word	0x20000cfc
c0d05b44:	0000432e 	.word	0x0000432e
c0d05b48:	00004498 	.word	0x00004498
c0d05b4c:	000044c2 	.word	0x000044c2

c0d05b50 <USBD_GetCfgDesc_impl>:
c0d05b50:	2140      	movs	r1, #64	; 0x40
c0d05b52:	8001      	strh	r1, [r0, #0]
c0d05b54:	4801      	ldr	r0, [pc, #4]	; (c0d05b5c <USBD_GetCfgDesc_impl+0xc>)
c0d05b56:	4478      	add	r0, pc
c0d05b58:	4770      	bx	lr
c0d05b5a:	46c0      	nop			; (mov r8, r8)
c0d05b5c:	0000452a 	.word	0x0000452a

c0d05b60 <USBD_GetDeviceQualifierDesc_impl>:
c0d05b60:	210a      	movs	r1, #10
c0d05b62:	8001      	strh	r1, [r0, #0]
c0d05b64:	4801      	ldr	r0, [pc, #4]	; (c0d05b6c <USBD_GetDeviceQualifierDesc_impl+0xc>)
c0d05b66:	4478      	add	r0, pc
c0d05b68:	4770      	bx	lr
c0d05b6a:	46c0      	nop			; (mov r8, r8)
c0d05b6c:	0000455a 	.word	0x0000455a

c0d05b70 <ux_menu_element_preprocessor>:
c0d05b70:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0d05b72:	4606      	mov	r6, r0
c0d05b74:	4863      	ldr	r0, [pc, #396]	; (c0d05d04 <ux_menu_element_preprocessor+0x194>)
c0d05b76:	1d07      	adds	r7, r0, #4
c0d05b78:	2220      	movs	r2, #32
c0d05b7a:	4638      	mov	r0, r7
c0d05b7c:	4631      	mov	r1, r6
c0d05b7e:	f001 fa73 	bl	c0d07068 <__aeabi_memmove>
c0d05b82:	4c61      	ldr	r4, [pc, #388]	; (c0d05d08 <ux_menu_element_preprocessor+0x198>)
c0d05b84:	6921      	ldr	r1, [r4, #16]
c0d05b86:	68a0      	ldr	r0, [r4, #8]
c0d05b88:	2900      	cmp	r1, #0
c0d05b8a:	d001      	beq.n	c0d05b90 <ux_menu_element_preprocessor+0x20>
c0d05b8c:	4788      	blx	r1
c0d05b8e:	e003      	b.n	c0d05b98 <ux_menu_element_preprocessor+0x28>
c0d05b90:	211c      	movs	r1, #28
c0d05b92:	4341      	muls	r1, r0
c0d05b94:	6820      	ldr	r0, [r4, #0]
c0d05b96:	1840      	adds	r0, r0, r1
c0d05b98:	f001 f8fe 	bl	c0d06d98 <pic>
c0d05b9c:	2800      	cmp	r0, #0
c0d05b9e:	d100      	bne.n	c0d05ba2 <ux_menu_element_preprocessor+0x32>
c0d05ba0:	e0a6      	b.n	c0d05cf0 <ux_menu_element_preprocessor+0x180>
c0d05ba2:	4605      	mov	r5, r0
c0d05ba4:	9702      	str	r7, [sp, #8]
c0d05ba6:	68c0      	ldr	r0, [r0, #12]
c0d05ba8:	f001 f8f6 	bl	c0d06d98 <pic>
c0d05bac:	9001      	str	r0, [sp, #4]
c0d05bae:	68a0      	ldr	r0, [r4, #8]
c0d05bb0:	2700      	movs	r7, #0
c0d05bb2:	2800      	cmp	r0, #0
c0d05bb4:	d005      	beq.n	c0d05bc2 <ux_menu_element_preprocessor+0x52>
c0d05bb6:	6921      	ldr	r1, [r4, #16]
c0d05bb8:	1e40      	subs	r0, r0, #1
c0d05bba:	2900      	cmp	r1, #0
c0d05bbc:	d004      	beq.n	c0d05bc8 <ux_menu_element_preprocessor+0x58>
c0d05bbe:	4788      	blx	r1
c0d05bc0:	e006      	b.n	c0d05bd0 <ux_menu_element_preprocessor+0x60>
c0d05bc2:	4638      	mov	r0, r7
c0d05bc4:	463a      	mov	r2, r7
c0d05bc6:	e007      	b.n	c0d05bd8 <ux_menu_element_preprocessor+0x68>
c0d05bc8:	211c      	movs	r1, #28
c0d05bca:	4341      	muls	r1, r0
c0d05bcc:	6820      	ldr	r0, [r4, #0]
c0d05bce:	1840      	adds	r0, r0, r1
c0d05bd0:	f001 f8e2 	bl	c0d06d98 <pic>
c0d05bd4:	4602      	mov	r2, r0
c0d05bd6:	68a0      	ldr	r0, [r4, #8]
c0d05bd8:	6861      	ldr	r1, [r4, #4]
c0d05bda:	1e49      	subs	r1, r1, #1
c0d05bdc:	4288      	cmp	r0, r1
c0d05bde:	d211      	bcs.n	c0d05c04 <ux_menu_element_preprocessor+0x94>
c0d05be0:	4623      	mov	r3, r4
c0d05be2:	4617      	mov	r7, r2
c0d05be4:	6921      	ldr	r1, [r4, #16]
c0d05be6:	1c40      	adds	r0, r0, #1
c0d05be8:	2900      	cmp	r1, #0
c0d05bea:	d002      	beq.n	c0d05bf2 <ux_menu_element_preprocessor+0x82>
c0d05bec:	461c      	mov	r4, r3
c0d05bee:	4788      	blx	r1
c0d05bf0:	e004      	b.n	c0d05bfc <ux_menu_element_preprocessor+0x8c>
c0d05bf2:	211c      	movs	r1, #28
c0d05bf4:	4341      	muls	r1, r0
c0d05bf6:	461c      	mov	r4, r3
c0d05bf8:	6818      	ldr	r0, [r3, #0]
c0d05bfa:	1840      	adds	r0, r0, r1
c0d05bfc:	f001 f8cc 	bl	c0d06d98 <pic>
c0d05c00:	463a      	mov	r2, r7
c0d05c02:	4607      	mov	r7, r0
c0d05c04:	7870      	ldrb	r0, [r6, #1]
c0d05c06:	2810      	cmp	r0, #16
c0d05c08:	d013      	beq.n	c0d05c32 <ux_menu_element_preprocessor+0xc2>
c0d05c0a:	2820      	cmp	r0, #32
c0d05c0c:	d01b      	beq.n	c0d05c46 <ux_menu_element_preprocessor+0xd6>
c0d05c0e:	2821      	cmp	r0, #33	; 0x21
c0d05c10:	d01d      	beq.n	c0d05c4e <ux_menu_element_preprocessor+0xde>
c0d05c12:	2822      	cmp	r0, #34	; 0x22
c0d05c14:	4e3b      	ldr	r6, [pc, #236]	; (c0d05d04 <ux_menu_element_preprocessor+0x194>)
c0d05c16:	d021      	beq.n	c0d05c5c <ux_menu_element_preprocessor+0xec>
c0d05c18:	2841      	cmp	r0, #65	; 0x41
c0d05c1a:	d035      	beq.n	c0d05c88 <ux_menu_element_preprocessor+0x118>
c0d05c1c:	2842      	cmp	r0, #66	; 0x42
c0d05c1e:	d04a      	beq.n	c0d05cb6 <ux_menu_element_preprocessor+0x146>
c0d05c20:	2882      	cmp	r0, #130	; 0x82
c0d05c22:	d05f      	beq.n	c0d05ce4 <ux_menu_element_preprocessor+0x174>
c0d05c24:	2881      	cmp	r0, #129	; 0x81
c0d05c26:	9b02      	ldr	r3, [sp, #8]
c0d05c28:	d164      	bne.n	c0d05cf4 <ux_menu_element_preprocessor+0x184>
c0d05c2a:	68a0      	ldr	r0, [r4, #8]
c0d05c2c:	2800      	cmp	r0, #0
c0d05c2e:	d161      	bne.n	c0d05cf4 <ux_menu_element_preprocessor+0x184>
c0d05c30:	e05e      	b.n	c0d05cf0 <ux_menu_element_preprocessor+0x180>
c0d05c32:	68e8      	ldr	r0, [r5, #12]
c0d05c34:	2800      	cmp	r0, #0
c0d05c36:	d05b      	beq.n	c0d05cf0 <ux_menu_element_preprocessor+0x180>
c0d05c38:	4e32      	ldr	r6, [pc, #200]	; (c0d05d04 <ux_menu_element_preprocessor+0x194>)
c0d05c3a:	6230      	str	r0, [r6, #32]
c0d05c3c:	7e68      	ldrb	r0, [r5, #25]
c0d05c3e:	2800      	cmp	r0, #0
c0d05c40:	9b02      	ldr	r3, [sp, #8]
c0d05c42:	d11f      	bne.n	c0d05c84 <ux_menu_element_preprocessor+0x114>
c0d05c44:	e056      	b.n	c0d05cf4 <ux_menu_element_preprocessor+0x184>
c0d05c46:	6968      	ldr	r0, [r5, #20]
c0d05c48:	2800      	cmp	r0, #0
c0d05c4a:	d151      	bne.n	c0d05cf0 <ux_menu_element_preprocessor+0x180>
c0d05c4c:	e002      	b.n	c0d05c54 <ux_menu_element_preprocessor+0xe4>
c0d05c4e:	6968      	ldr	r0, [r5, #20]
c0d05c50:	2800      	cmp	r0, #0
c0d05c52:	d04d      	beq.n	c0d05cf0 <ux_menu_element_preprocessor+0x180>
c0d05c54:	6928      	ldr	r0, [r5, #16]
c0d05c56:	4e2b      	ldr	r6, [pc, #172]	; (c0d05d04 <ux_menu_element_preprocessor+0x194>)
c0d05c58:	9b02      	ldr	r3, [sp, #8]
c0d05c5a:	e003      	b.n	c0d05c64 <ux_menu_element_preprocessor+0xf4>
c0d05c5c:	6968      	ldr	r0, [r5, #20]
c0d05c5e:	2800      	cmp	r0, #0
c0d05c60:	9b02      	ldr	r3, [sp, #8]
c0d05c62:	d045      	beq.n	c0d05cf0 <ux_menu_element_preprocessor+0x180>
c0d05c64:	6230      	str	r0, [r6, #32]
c0d05c66:	9801      	ldr	r0, [sp, #4]
c0d05c68:	2800      	cmp	r0, #0
c0d05c6a:	d006      	beq.n	c0d05c7a <ux_menu_element_preprocessor+0x10a>
c0d05c6c:	8800      	ldrh	r0, [r0, #0]
c0d05c6e:	88f1      	ldrh	r1, [r6, #6]
c0d05c70:	1809      	adds	r1, r1, r0
c0d05c72:	80f1      	strh	r1, [r6, #6]
c0d05c74:	8971      	ldrh	r1, [r6, #10]
c0d05c76:	1a08      	subs	r0, r1, r0
c0d05c78:	8170      	strh	r0, [r6, #10]
c0d05c7a:	7e28      	ldrb	r0, [r5, #24]
c0d05c7c:	2800      	cmp	r0, #0
c0d05c7e:	d039      	beq.n	c0d05cf4 <ux_menu_element_preprocessor+0x184>
c0d05c80:	2108      	movs	r1, #8
c0d05c82:	83b1      	strh	r1, [r6, #28]
c0d05c84:	80f0      	strh	r0, [r6, #6]
c0d05c86:	e035      	b.n	c0d05cf4 <ux_menu_element_preprocessor+0x184>
c0d05c88:	6969      	ldr	r1, [r5, #20]
c0d05c8a:	2000      	movs	r0, #0
c0d05c8c:	2900      	cmp	r1, #0
c0d05c8e:	d138      	bne.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05c90:	68e9      	ldr	r1, [r5, #12]
c0d05c92:	2900      	cmp	r1, #0
c0d05c94:	d135      	bne.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05c96:	68a1      	ldr	r1, [r4, #8]
c0d05c98:	2900      	cmp	r1, #0
c0d05c9a:	d032      	beq.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05c9c:	2a00      	cmp	r2, #0
c0d05c9e:	d030      	beq.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05ca0:	6861      	ldr	r1, [r4, #4]
c0d05ca2:	2901      	cmp	r1, #1
c0d05ca4:	d02d      	beq.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05ca6:	68d1      	ldr	r1, [r2, #12]
c0d05ca8:	2900      	cmp	r1, #0
c0d05caa:	d12a      	bne.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05cac:	6951      	ldr	r1, [r2, #20]
c0d05cae:	2900      	cmp	r1, #0
c0d05cb0:	d127      	bne.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05cb2:	6910      	ldr	r0, [r2, #16]
c0d05cb4:	e013      	b.n	c0d05cde <ux_menu_element_preprocessor+0x16e>
c0d05cb6:	6969      	ldr	r1, [r5, #20]
c0d05cb8:	2000      	movs	r0, #0
c0d05cba:	2900      	cmp	r1, #0
c0d05cbc:	d121      	bne.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05cbe:	68e9      	ldr	r1, [r5, #12]
c0d05cc0:	2900      	cmp	r1, #0
c0d05cc2:	d11e      	bne.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05cc4:	6861      	ldr	r1, [r4, #4]
c0d05cc6:	68a2      	ldr	r2, [r4, #8]
c0d05cc8:	1e4b      	subs	r3, r1, #1
c0d05cca:	429a      	cmp	r2, r3
c0d05ccc:	d019      	beq.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05cce:	2f00      	cmp	r7, #0
c0d05cd0:	d017      	beq.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05cd2:	2901      	cmp	r1, #1
c0d05cd4:	d015      	beq.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05cd6:	68f9      	ldr	r1, [r7, #12]
c0d05cd8:	2900      	cmp	r1, #0
c0d05cda:	d112      	bne.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05cdc:	6938      	ldr	r0, [r7, #16]
c0d05cde:	6230      	str	r0, [r6, #32]
c0d05ce0:	9b02      	ldr	r3, [sp, #8]
c0d05ce2:	e007      	b.n	c0d05cf4 <ux_menu_element_preprocessor+0x184>
c0d05ce4:	6860      	ldr	r0, [r4, #4]
c0d05ce6:	68a1      	ldr	r1, [r4, #8]
c0d05ce8:	1e40      	subs	r0, r0, #1
c0d05cea:	4281      	cmp	r1, r0
c0d05cec:	9b02      	ldr	r3, [sp, #8]
c0d05cee:	d101      	bne.n	c0d05cf4 <ux_menu_element_preprocessor+0x184>
c0d05cf0:	2000      	movs	r0, #0
c0d05cf2:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0d05cf4:	68e2      	ldr	r2, [r4, #12]
c0d05cf6:	2a00      	cmp	r2, #0
c0d05cf8:	4618      	mov	r0, r3
c0d05cfa:	d002      	beq.n	c0d05d02 <ux_menu_element_preprocessor+0x192>
c0d05cfc:	1d31      	adds	r1, r6, #4
c0d05cfe:	4628      	mov	r0, r5
c0d05d00:	4790      	blx	r2
c0d05d02:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0d05d04:	20000a2c 	.word	0x20000a2c
c0d05d08:	20000be4 	.word	0x20000be4

c0d05d0c <ux_menu_elements_button>:
c0d05d0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d05d0e:	4605      	mov	r5, r0
c0d05d10:	4f3e      	ldr	r7, [pc, #248]	; (c0d05e0c <ux_menu_elements_button+0x100>)
c0d05d12:	6939      	ldr	r1, [r7, #16]
c0d05d14:	68b8      	ldr	r0, [r7, #8]
c0d05d16:	2900      	cmp	r1, #0
c0d05d18:	d001      	beq.n	c0d05d1e <ux_menu_elements_button+0x12>
c0d05d1a:	4788      	blx	r1
c0d05d1c:	e003      	b.n	c0d05d26 <ux_menu_elements_button+0x1a>
c0d05d1e:	211c      	movs	r1, #28
c0d05d20:	4341      	muls	r1, r0
c0d05d22:	6838      	ldr	r0, [r7, #0]
c0d05d24:	1840      	adds	r0, r0, r1
c0d05d26:	f001 f837 	bl	c0d06d98 <pic>
c0d05d2a:	2401      	movs	r4, #1
c0d05d2c:	2800      	cmp	r0, #0
c0d05d2e:	d06a      	beq.n	c0d05e06 <ux_menu_elements_button+0xfa>
c0d05d30:	4606      	mov	r6, r0
c0d05d32:	4837      	ldr	r0, [pc, #220]	; (c0d05e10 <ux_menu_elements_button+0x104>)
c0d05d34:	4285      	cmp	r5, r0
c0d05d36:	d01e      	beq.n	c0d05d76 <ux_menu_elements_button+0x6a>
c0d05d38:	4836      	ldr	r0, [pc, #216]	; (c0d05e14 <ux_menu_elements_button+0x108>)
c0d05d3a:	4285      	cmp	r5, r0
c0d05d3c:	d014      	beq.n	c0d05d68 <ux_menu_elements_button+0x5c>
c0d05d3e:	4836      	ldr	r0, [pc, #216]	; (c0d05e18 <ux_menu_elements_button+0x10c>)
c0d05d40:	4285      	cmp	r5, r0
c0d05d42:	d011      	beq.n	c0d05d68 <ux_menu_elements_button+0x5c>
c0d05d44:	4835      	ldr	r0, [pc, #212]	; (c0d05e1c <ux_menu_elements_button+0x110>)
c0d05d46:	4285      	cmp	r5, r0
c0d05d48:	d015      	beq.n	c0d05d76 <ux_menu_elements_button+0x6a>
c0d05d4a:	4835      	ldr	r0, [pc, #212]	; (c0d05e20 <ux_menu_elements_button+0x114>)
c0d05d4c:	4285      	cmp	r5, r0
c0d05d4e:	d15a      	bne.n	c0d05e06 <ux_menu_elements_button+0xfa>
c0d05d50:	6830      	ldr	r0, [r6, #0]
c0d05d52:	2800      	cmp	r0, #0
c0d05d54:	d04e      	beq.n	c0d05df4 <ux_menu_elements_button+0xe8>
c0d05d56:	68b4      	ldr	r4, [r6, #8]
c0d05d58:	f001 f81e 	bl	c0d06d98 <pic>
c0d05d5c:	4601      	mov	r1, r0
c0d05d5e:	68fa      	ldr	r2, [r7, #12]
c0d05d60:	4620      	mov	r0, r4
c0d05d62:	f000 f861 	bl	c0d05e28 <ux_menu_display>
c0d05d66:	e04d      	b.n	c0d05e04 <ux_menu_elements_button+0xf8>
c0d05d68:	6879      	ldr	r1, [r7, #4]
c0d05d6a:	68b8      	ldr	r0, [r7, #8]
c0d05d6c:	1e49      	subs	r1, r1, #1
c0d05d6e:	4288      	cmp	r0, r1
c0d05d70:	d248      	bcs.n	c0d05e04 <ux_menu_elements_button+0xf8>
c0d05d72:	1c40      	adds	r0, r0, #1
c0d05d74:	e003      	b.n	c0d05d7e <ux_menu_elements_button+0x72>
c0d05d76:	68b8      	ldr	r0, [r7, #8]
c0d05d78:	2800      	cmp	r0, #0
c0d05d7a:	d043      	beq.n	c0d05e04 <ux_menu_elements_button+0xf8>
c0d05d7c:	1e40      	subs	r0, r0, #1
c0d05d7e:	60b8      	str	r0, [r7, #8]
c0d05d80:	f000 fa90 	bl	c0d062a4 <io_seproxyhal_init_ux>
c0d05d84:	f000 fa90 	bl	c0d062a8 <io_seproxyhal_init_button>
c0d05d88:	4d26      	ldr	r5, [pc, #152]	; (c0d05e24 <ux_menu_elements_button+0x118>)
c0d05d8a:	2400      	movs	r4, #0
c0d05d8c:	84ec      	strh	r4, [r5, #38]	; 0x26
c0d05d8e:	2004      	movs	r0, #4
c0d05d90:	f001 f8e6 	bl	c0d06f60 <os_sched_last_status>
c0d05d94:	64a8      	str	r0, [r5, #72]	; 0x48
c0d05d96:	2800      	cmp	r0, #0
c0d05d98:	d035      	beq.n	c0d05e06 <ux_menu_elements_button+0xfa>
c0d05d9a:	2897      	cmp	r0, #151	; 0x97
c0d05d9c:	d033      	beq.n	c0d05e06 <ux_menu_elements_button+0xfa>
c0d05d9e:	e025      	b.n	c0d05dec <ux_menu_elements_button+0xe0>
c0d05da0:	202c      	movs	r0, #44	; 0x2c
c0d05da2:	5c28      	ldrb	r0, [r5, r0]
c0d05da4:	8ce9      	ldrh	r1, [r5, #38]	; 0x26
c0d05da6:	4281      	cmp	r1, r0
c0d05da8:	d22d      	bcs.n	c0d05e06 <ux_menu_elements_button+0xfa>
c0d05daa:	f001 f8ad 	bl	c0d06f08 <io_seph_is_status_sent>
c0d05dae:	2800      	cmp	r0, #0
c0d05db0:	d129      	bne.n	c0d05e06 <ux_menu_elements_button+0xfa>
c0d05db2:	f001 f82b 	bl	c0d06e0c <os_perso_isonboarded>
c0d05db6:	28aa      	cmp	r0, #170	; 0xaa
c0d05db8:	d103      	bne.n	c0d05dc2 <ux_menu_elements_button+0xb6>
c0d05dba:	f001 f849 	bl	c0d06e50 <os_global_pin_is_validated>
c0d05dbe:	28aa      	cmp	r0, #170	; 0xaa
c0d05dc0:	d121      	bne.n	c0d05e06 <ux_menu_elements_button+0xfa>
c0d05dc2:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d05dc4:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d05dc6:	0150      	lsls	r0, r2, #5
c0d05dc8:	1808      	adds	r0, r1, r0
c0d05dca:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d05dcc:	2b00      	cmp	r3, #0
c0d05dce:	d004      	beq.n	c0d05dda <ux_menu_elements_button+0xce>
c0d05dd0:	4798      	blx	r3
c0d05dd2:	2800      	cmp	r0, #0
c0d05dd4:	d007      	beq.n	c0d05de6 <ux_menu_elements_button+0xda>
c0d05dd6:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d05dd8:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d05dda:	2801      	cmp	r0, #1
c0d05ddc:	d101      	bne.n	c0d05de2 <ux_menu_elements_button+0xd6>
c0d05dde:	0150      	lsls	r0, r2, #5
c0d05de0:	1808      	adds	r0, r1, r0
c0d05de2:	f7fd fef2 	bl	c0d03bca <io_seproxyhal_display>
c0d05de6:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d05de8:	1c40      	adds	r0, r0, #1
c0d05dea:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d05dec:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d05dee:	2800      	cmp	r0, #0
c0d05df0:	d1d6      	bne.n	c0d05da0 <ux_menu_elements_button+0x94>
c0d05df2:	e008      	b.n	c0d05e06 <ux_menu_elements_button+0xfa>
c0d05df4:	6870      	ldr	r0, [r6, #4]
c0d05df6:	2800      	cmp	r0, #0
c0d05df8:	d005      	beq.n	c0d05e06 <ux_menu_elements_button+0xfa>
c0d05dfa:	f000 ffcd 	bl	c0d06d98 <pic>
c0d05dfe:	4601      	mov	r1, r0
c0d05e00:	68b0      	ldr	r0, [r6, #8]
c0d05e02:	4788      	blx	r1
c0d05e04:	2400      	movs	r4, #0
c0d05e06:	4620      	mov	r0, r4
c0d05e08:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d05e0a:	46c0      	nop			; (mov r8, r8)
c0d05e0c:	20000be4 	.word	0x20000be4
c0d05e10:	80000001 	.word	0x80000001
c0d05e14:	80000002 	.word	0x80000002
c0d05e18:	40000002 	.word	0x40000002
c0d05e1c:	40000001 	.word	0x40000001
c0d05e20:	80000003 	.word	0x80000003
c0d05e24:	20000a2c 	.word	0x20000a2c

c0d05e28 <ux_menu_display>:
c0d05e28:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0d05e2a:	4d3c      	ldr	r5, [pc, #240]	; (c0d05f1c <ux_menu_display+0xf4>)
c0d05e2c:	2600      	movs	r6, #0
c0d05e2e:	606e      	str	r6, [r5, #4]
c0d05e30:	2900      	cmp	r1, #0
c0d05e32:	d014      	beq.n	c0d05e5e <ux_menu_display+0x36>
c0d05e34:	9000      	str	r0, [sp, #0]
c0d05e36:	9201      	str	r2, [sp, #4]
c0d05e38:	2600      	movs	r6, #0
c0d05e3a:	4f3a      	ldr	r7, [pc, #232]	; (c0d05f24 <ux_menu_display+0xfc>)
c0d05e3c:	447f      	add	r7, pc
c0d05e3e:	9102      	str	r1, [sp, #8]
c0d05e40:	460c      	mov	r4, r1
c0d05e42:	221c      	movs	r2, #28
c0d05e44:	4620      	mov	r0, r4
c0d05e46:	4639      	mov	r1, r7
c0d05e48:	f001 f91e 	bl	c0d07088 <memcmp>
c0d05e4c:	2800      	cmp	r0, #0
c0d05e4e:	d003      	beq.n	c0d05e58 <ux_menu_display+0x30>
c0d05e50:	1c76      	adds	r6, r6, #1
c0d05e52:	606e      	str	r6, [r5, #4]
c0d05e54:	341c      	adds	r4, #28
c0d05e56:	e7f4      	b.n	c0d05e42 <ux_menu_display+0x1a>
c0d05e58:	9902      	ldr	r1, [sp, #8]
c0d05e5a:	9a01      	ldr	r2, [sp, #4]
c0d05e5c:	9800      	ldr	r0, [sp, #0]
c0d05e5e:	1c43      	adds	r3, r0, #1
c0d05e60:	d003      	beq.n	c0d05e6a <ux_menu_display+0x42>
c0d05e62:	4286      	cmp	r6, r0
c0d05e64:	d200      	bcs.n	c0d05e68 <ux_menu_display+0x40>
c0d05e66:	2000      	movs	r0, #0
c0d05e68:	60a8      	str	r0, [r5, #8]
c0d05e6a:	232c      	movs	r3, #44	; 0x2c
c0d05e6c:	9302      	str	r3, [sp, #8]
c0d05e6e:	4f2c      	ldr	r7, [pc, #176]	; (c0d05f20 <ux_menu_display+0xf8>)
c0d05e70:	2009      	movs	r0, #9
c0d05e72:	54f8      	strb	r0, [r7, r3]
c0d05e74:	2044      	movs	r0, #68	; 0x44
c0d05e76:	2303      	movs	r3, #3
c0d05e78:	543b      	strb	r3, [r7, r0]
c0d05e7a:	2600      	movs	r6, #0
c0d05e7c:	60ea      	str	r2, [r5, #12]
c0d05e7e:	612e      	str	r6, [r5, #16]
c0d05e80:	6029      	str	r1, [r5, #0]
c0d05e82:	4829      	ldr	r0, [pc, #164]	; (c0d05f28 <ux_menu_display+0x100>)
c0d05e84:	4478      	add	r0, pc
c0d05e86:	4929      	ldr	r1, [pc, #164]	; (c0d05f2c <ux_menu_display+0x104>)
c0d05e88:	4479      	add	r1, pc
c0d05e8a:	62b9      	str	r1, [r7, #40]	; 0x28
c0d05e8c:	4928      	ldr	r1, [pc, #160]	; (c0d05f30 <ux_menu_display+0x108>)
c0d05e8e:	4479      	add	r1, pc
c0d05e90:	6339      	str	r1, [r7, #48]	; 0x30
c0d05e92:	6378      	str	r0, [r7, #52]	; 0x34
c0d05e94:	463c      	mov	r4, r7
c0d05e96:	3444      	adds	r4, #68	; 0x44
c0d05e98:	6066      	str	r6, [r4, #4]
c0d05e9a:	4620      	mov	r0, r4
c0d05e9c:	f000 ffe4 	bl	c0d06e68 <os_ux>
c0d05ea0:	2504      	movs	r5, #4
c0d05ea2:	4628      	mov	r0, r5
c0d05ea4:	f001 f85c 	bl	c0d06f60 <os_sched_last_status>
c0d05ea8:	6060      	str	r0, [r4, #4]
c0d05eaa:	f000 f9fb 	bl	c0d062a4 <io_seproxyhal_init_ux>
c0d05eae:	f000 f9fb 	bl	c0d062a8 <io_seproxyhal_init_button>
c0d05eb2:	84fe      	strh	r6, [r7, #38]	; 0x26
c0d05eb4:	4628      	mov	r0, r5
c0d05eb6:	f001 f853 	bl	c0d06f60 <os_sched_last_status>
c0d05eba:	6060      	str	r0, [r4, #4]
c0d05ebc:	9c02      	ldr	r4, [sp, #8]
c0d05ebe:	2800      	cmp	r0, #0
c0d05ec0:	d02a      	beq.n	c0d05f18 <ux_menu_display+0xf0>
c0d05ec2:	2897      	cmp	r0, #151	; 0x97
c0d05ec4:	d028      	beq.n	c0d05f18 <ux_menu_display+0xf0>
c0d05ec6:	e024      	b.n	c0d05f12 <ux_menu_display+0xea>
c0d05ec8:	5d38      	ldrb	r0, [r7, r4]
c0d05eca:	8cf9      	ldrh	r1, [r7, #38]	; 0x26
c0d05ecc:	4281      	cmp	r1, r0
c0d05ece:	d223      	bcs.n	c0d05f18 <ux_menu_display+0xf0>
c0d05ed0:	f001 f81a 	bl	c0d06f08 <io_seph_is_status_sent>
c0d05ed4:	2800      	cmp	r0, #0
c0d05ed6:	d11f      	bne.n	c0d05f18 <ux_menu_display+0xf0>
c0d05ed8:	f000 ff98 	bl	c0d06e0c <os_perso_isonboarded>
c0d05edc:	28aa      	cmp	r0, #170	; 0xaa
c0d05ede:	d103      	bne.n	c0d05ee8 <ux_menu_display+0xc0>
c0d05ee0:	f000 ffb6 	bl	c0d06e50 <os_global_pin_is_validated>
c0d05ee4:	28aa      	cmp	r0, #170	; 0xaa
c0d05ee6:	d117      	bne.n	c0d05f18 <ux_menu_display+0xf0>
c0d05ee8:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d05eea:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d05eec:	0150      	lsls	r0, r2, #5
c0d05eee:	1808      	adds	r0, r1, r0
c0d05ef0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
c0d05ef2:	2b00      	cmp	r3, #0
c0d05ef4:	d004      	beq.n	c0d05f00 <ux_menu_display+0xd8>
c0d05ef6:	4798      	blx	r3
c0d05ef8:	2800      	cmp	r0, #0
c0d05efa:	d007      	beq.n	c0d05f0c <ux_menu_display+0xe4>
c0d05efc:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d05efe:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d05f00:	2801      	cmp	r0, #1
c0d05f02:	d101      	bne.n	c0d05f08 <ux_menu_display+0xe0>
c0d05f04:	0150      	lsls	r0, r2, #5
c0d05f06:	1808      	adds	r0, r1, r0
c0d05f08:	f7fd fe5f 	bl	c0d03bca <io_seproxyhal_display>
c0d05f0c:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d05f0e:	1c40      	adds	r0, r0, #1
c0d05f10:	84f8      	strh	r0, [r7, #38]	; 0x26
c0d05f12:	6ab8      	ldr	r0, [r7, #40]	; 0x28
c0d05f14:	2800      	cmp	r0, #0
c0d05f16:	d1d7      	bne.n	c0d05ec8 <ux_menu_display+0xa0>
c0d05f18:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0d05f1a:	46c0      	nop			; (mov r8, r8)
c0d05f1c:	20000be4 	.word	0x20000be4
c0d05f20:	20000a2c 	.word	0x20000a2c
c0d05f24:	000043b0 	.word	0x000043b0
c0d05f28:	fffffe85 	.word	0xfffffe85
c0d05f2c:	00004244 	.word	0x00004244
c0d05f30:	fffffcdf 	.word	0xfffffcdf

c0d05f34 <ux_stack_push>:
c0d05f34:	b510      	push	{r4, lr}
c0d05f36:	4c06      	ldr	r4, [pc, #24]	; (c0d05f50 <ux_stack_push+0x1c>)
c0d05f38:	7820      	ldrb	r0, [r4, #0]
c0d05f3a:	2800      	cmp	r0, #0
c0d05f3c:	d106      	bne.n	c0d05f4c <ux_stack_push+0x18>
c0d05f3e:	4620      	mov	r0, r4
c0d05f40:	3024      	adds	r0, #36	; 0x24
c0d05f42:	2120      	movs	r1, #32
c0d05f44:	f001 f886 	bl	c0d07054 <__aeabi_memclr>
c0d05f48:	2001      	movs	r0, #1
c0d05f4a:	7020      	strb	r0, [r4, #0]
c0d05f4c:	1e40      	subs	r0, r0, #1
c0d05f4e:	bd10      	pop	{r4, pc}
c0d05f50:	20000a2c 	.word	0x20000a2c

c0d05f54 <cx_ripemd160_hash_iovec>:
c0d05f54:	b51c      	push	{r2, r3, r4, lr}
c0d05f56:	460b      	mov	r3, r1
c0d05f58:	4604      	mov	r4, r0
c0d05f5a:	9200      	str	r2, [sp, #0]
c0d05f5c:	2060      	movs	r0, #96	; 0x60
c0d05f5e:	2101      	movs	r1, #1
c0d05f60:	4622      	mov	r2, r4
c0d05f62:	f000 f801 	bl	c0d05f68 <hash_iovec>
c0d05f66:	bd1c      	pop	{r2, r3, r4, pc}

c0d05f68 <hash_iovec>:
c0d05f68:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0d05f6a:	461c      	mov	r4, r3
c0d05f6c:	4616      	mov	r6, r2
c0d05f6e:	4605      	mov	r5, r0
c0d05f70:	4810      	ldr	r0, [pc, #64]	; (c0d05fb4 <hash_iovec+0x4c>)
c0d05f72:	f000 f873 	bl	c0d0605c <cx_hash_init>
c0d05f76:	4607      	mov	r7, r0
c0d05f78:	2800      	cmp	r0, #0
c0d05f7a:	d115      	bne.n	c0d05fa8 <hash_iovec+0x40>
c0d05f7c:	9808      	ldr	r0, [sp, #32]
c0d05f7e:	9001      	str	r0, [sp, #4]
c0d05f80:	1c64      	adds	r4, r4, #1
c0d05f82:	9502      	str	r5, [sp, #8]
c0d05f84:	1e64      	subs	r4, r4, #1
c0d05f86:	d00a      	beq.n	c0d05f9e <hash_iovec+0x36>
c0d05f88:	4635      	mov	r5, r6
c0d05f8a:	3508      	adds	r5, #8
c0d05f8c:	ce06      	ldmia	r6!, {r1, r2}
c0d05f8e:	4809      	ldr	r0, [pc, #36]	; (c0d05fb4 <hash_iovec+0x4c>)
c0d05f90:	f000 f876 	bl	c0d06080 <cx_hash_update>
c0d05f94:	2800      	cmp	r0, #0
c0d05f96:	462e      	mov	r6, r5
c0d05f98:	9d02      	ldr	r5, [sp, #8]
c0d05f9a:	d0f3      	beq.n	c0d05f84 <hash_iovec+0x1c>
c0d05f9c:	e003      	b.n	c0d05fa6 <hash_iovec+0x3e>
c0d05f9e:	4805      	ldr	r0, [pc, #20]	; (c0d05fb4 <hash_iovec+0x4c>)
c0d05fa0:	9901      	ldr	r1, [sp, #4]
c0d05fa2:	f000 f855 	bl	c0d06050 <cx_hash_final>
c0d05fa6:	4607      	mov	r7, r0
c0d05fa8:	4802      	ldr	r0, [pc, #8]	; (c0d05fb4 <hash_iovec+0x4c>)
c0d05faa:	4629      	mov	r1, r5
c0d05fac:	f001 f868 	bl	c0d07080 <explicit_bzero>
c0d05fb0:	4638      	mov	r0, r7
c0d05fb2:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0d05fb4:	20001400 	.word	0x20001400

c0d05fb8 <hash_iovec_ex>:
c0d05fb8:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0d05fba:	461e      	mov	r6, r3
c0d05fbc:	4604      	mov	r4, r0
c0d05fbe:	4811      	ldr	r0, [pc, #68]	; (c0d06004 <hash_iovec_ex+0x4c>)
c0d05fc0:	f000 f852 	bl	c0d06068 <cx_hash_init_ex>
c0d05fc4:	4607      	mov	r7, r0
c0d05fc6:	2800      	cmp	r0, #0
c0d05fc8:	d116      	bne.n	c0d05ff8 <hash_iovec_ex+0x40>
c0d05fca:	9402      	str	r4, [sp, #8]
c0d05fcc:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d05fce:	9001      	str	r0, [sp, #4]
c0d05fd0:	9808      	ldr	r0, [sp, #32]
c0d05fd2:	1c44      	adds	r4, r0, #1
c0d05fd4:	1e64      	subs	r4, r4, #1
c0d05fd6:	d009      	beq.n	c0d05fec <hash_iovec_ex+0x34>
c0d05fd8:	4635      	mov	r5, r6
c0d05fda:	3508      	adds	r5, #8
c0d05fdc:	ce06      	ldmia	r6!, {r1, r2}
c0d05fde:	4809      	ldr	r0, [pc, #36]	; (c0d06004 <hash_iovec_ex+0x4c>)
c0d05fe0:	f000 f84e 	bl	c0d06080 <cx_hash_update>
c0d05fe4:	2800      	cmp	r0, #0
c0d05fe6:	462e      	mov	r6, r5
c0d05fe8:	d0f4      	beq.n	c0d05fd4 <hash_iovec_ex+0x1c>
c0d05fea:	e003      	b.n	c0d05ff4 <hash_iovec_ex+0x3c>
c0d05fec:	4805      	ldr	r0, [pc, #20]	; (c0d06004 <hash_iovec_ex+0x4c>)
c0d05fee:	9901      	ldr	r1, [sp, #4]
c0d05ff0:	f000 f82e 	bl	c0d06050 <cx_hash_final>
c0d05ff4:	4607      	mov	r7, r0
c0d05ff6:	9c02      	ldr	r4, [sp, #8]
c0d05ff8:	4802      	ldr	r0, [pc, #8]	; (c0d06004 <hash_iovec_ex+0x4c>)
c0d05ffa:	4621      	mov	r1, r4
c0d05ffc:	f001 f840 	bl	c0d07080 <explicit_bzero>
c0d06000:	4638      	mov	r0, r7
c0d06002:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0d06004:	20001400 	.word	0x20001400

c0d06008 <cx_keccak_256_hash_iovec>:
c0d06008:	b5e0      	push	{r5, r6, r7, lr}
c0d0600a:	4603      	mov	r3, r0
c0d0600c:	9100      	str	r1, [sp, #0]
c0d0600e:	9201      	str	r2, [sp, #4]
c0d06010:	2035      	movs	r0, #53	; 0x35
c0d06012:	00c0      	lsls	r0, r0, #3
c0d06014:	2106      	movs	r1, #6
c0d06016:	2220      	movs	r2, #32
c0d06018:	f7ff ffce 	bl	c0d05fb8 <hash_iovec_ex>
c0d0601c:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0d06020 <cx_ecdsa_sign_no_throw>:
c0d06020:	b403      	push	{r0, r1}
c0d06022:	4801      	ldr	r0, [pc, #4]	; (c0d06028 <cx_ecdsa_sign_no_throw+0x8>)
c0d06024:	e03b      	b.n	c0d0609e <cx_trampoline_helper>
c0d06026:	0000      	.short	0x0000
c0d06028:	00000015 	.word	0x00000015

c0d0602c <cx_ecfp_generate_pair_no_throw>:
c0d0602c:	b403      	push	{r0, r1}
c0d0602e:	4801      	ldr	r0, [pc, #4]	; (c0d06034 <cx_ecfp_generate_pair_no_throw+0x8>)
c0d06030:	e035      	b.n	c0d0609e <cx_trampoline_helper>
c0d06032:	0000      	.short	0x0000
c0d06034:	0000001b 	.word	0x0000001b

c0d06038 <cx_ecfp_init_private_key_no_throw>:
c0d06038:	b403      	push	{r0, r1}
c0d0603a:	4801      	ldr	r0, [pc, #4]	; (c0d06040 <cx_ecfp_init_private_key_no_throw+0x8>)
c0d0603c:	e02f      	b.n	c0d0609e <cx_trampoline_helper>
c0d0603e:	0000      	.short	0x0000
c0d06040:	0000001c 	.word	0x0000001c

c0d06044 <cx_ecfp_init_public_key_no_throw>:
c0d06044:	b403      	push	{r0, r1}
c0d06046:	4801      	ldr	r0, [pc, #4]	; (c0d0604c <cx_ecfp_init_public_key_no_throw+0x8>)
c0d06048:	e029      	b.n	c0d0609e <cx_trampoline_helper>
c0d0604a:	0000      	.short	0x0000
c0d0604c:	0000001d 	.word	0x0000001d

c0d06050 <cx_hash_final>:
c0d06050:	b403      	push	{r0, r1}
c0d06052:	4801      	ldr	r0, [pc, #4]	; (c0d06058 <cx_hash_final+0x8>)
c0d06054:	e023      	b.n	c0d0609e <cx_trampoline_helper>
c0d06056:	0000      	.short	0x0000
c0d06058:	0000002d 	.word	0x0000002d

c0d0605c <cx_hash_init>:
c0d0605c:	b403      	push	{r0, r1}
c0d0605e:	4801      	ldr	r0, [pc, #4]	; (c0d06064 <cx_hash_init+0x8>)
c0d06060:	e01d      	b.n	c0d0609e <cx_trampoline_helper>
c0d06062:	0000      	.short	0x0000
c0d06064:	00000030 	.word	0x00000030

c0d06068 <cx_hash_init_ex>:
c0d06068:	b403      	push	{r0, r1}
c0d0606a:	4801      	ldr	r0, [pc, #4]	; (c0d06070 <cx_hash_init_ex+0x8>)
c0d0606c:	e017      	b.n	c0d0609e <cx_trampoline_helper>
c0d0606e:	0000      	.short	0x0000
c0d06070:	00000031 	.word	0x00000031

c0d06074 <cx_hash_sha256>:
c0d06074:	b403      	push	{r0, r1}
c0d06076:	4801      	ldr	r0, [pc, #4]	; (c0d0607c <cx_hash_sha256+0x8>)
c0d06078:	e011      	b.n	c0d0609e <cx_trampoline_helper>
c0d0607a:	0000      	.short	0x0000
c0d0607c:	00000033 	.word	0x00000033

c0d06080 <cx_hash_update>:
c0d06080:	b403      	push	{r0, r1}
c0d06082:	4801      	ldr	r0, [pc, #4]	; (c0d06088 <cx_hash_update+0x8>)
c0d06084:	e00b      	b.n	c0d0609e <cx_trampoline_helper>
c0d06086:	0000      	.short	0x0000
c0d06088:	00000035 	.word	0x00000035

c0d0608c <cx_rng_no_throw>:
c0d0608c:	b403      	push	{r0, r1}
c0d0608e:	4801      	ldr	r0, [pc, #4]	; (c0d06094 <cx_rng_no_throw+0x8>)
c0d06090:	e005      	b.n	c0d0609e <cx_trampoline_helper>
c0d06092:	0000      	.short	0x0000
c0d06094:	00000058 	.word	0x00000058

c0d06098 <cx_x448>:
c0d06098:	b403      	push	{r0, r1}
c0d0609a:	4802      	ldr	r0, [pc, #8]	; (c0d060a4 <cx_trampoline_helper+0x6>)
c0d0609c:	e7ff      	b.n	c0d0609e <cx_trampoline_helper>

c0d0609e <cx_trampoline_helper>:
c0d0609e:	4902      	ldr	r1, [pc, #8]	; (c0d060a8 <cx_trampoline_helper+0xa>)
c0d060a0:	4708      	bx	r1
c0d060a2:	0000      	.short	0x0000
c0d060a4:	00000071 	.word	0x00000071
c0d060a8:	00120001 	.word	0x00120001

c0d060ac <os_boot>:
c0d060ac:	b580      	push	{r7, lr}
c0d060ae:	2000      	movs	r0, #0
c0d060b0:	f000 ff4a 	bl	c0d06f48 <try_context_set>
c0d060b4:	bd80      	pop	{r7, pc}

c0d060b6 <os_longjmp>:
c0d060b6:	4604      	mov	r4, r0
c0d060b8:	f000 ff3c 	bl	c0d06f34 <try_context_get>
c0d060bc:	4621      	mov	r1, r4
c0d060be:	f001 f90f 	bl	c0d072e0 <longjmp>
	...

c0d060c4 <io_seproxyhal_general_status>:
c0d060c4:	b580      	push	{r7, lr}
c0d060c6:	4803      	ldr	r0, [pc, #12]	; (c0d060d4 <io_seproxyhal_general_status+0x10>)
c0d060c8:	4478      	add	r0, pc
c0d060ca:	2105      	movs	r1, #5
c0d060cc:	f000 ff12 	bl	c0d06ef4 <io_seph_send>
c0d060d0:	bd80      	pop	{r7, pc}
c0d060d2:	46c0      	nop			; (mov r8, r8)
c0d060d4:	00004140 	.word	0x00004140

c0d060d8 <io_seproxyhal_handle_usb_event>:
c0d060d8:	b510      	push	{r4, lr}
c0d060da:	4817      	ldr	r0, [pc, #92]	; (c0d06138 <io_seproxyhal_handle_usb_event+0x60>)
c0d060dc:	78c0      	ldrb	r0, [r0, #3]
c0d060de:	2808      	cmp	r0, #8
c0d060e0:	d01e      	beq.n	c0d06120 <io_seproxyhal_handle_usb_event+0x48>
c0d060e2:	2802      	cmp	r0, #2
c0d060e4:	d018      	beq.n	c0d06118 <io_seproxyhal_handle_usb_event+0x40>
c0d060e6:	2804      	cmp	r0, #4
c0d060e8:	d01e      	beq.n	c0d06128 <io_seproxyhal_handle_usb_event+0x50>
c0d060ea:	2801      	cmp	r0, #1
c0d060ec:	d11b      	bne.n	c0d06126 <io_seproxyhal_handle_usb_event+0x4e>
c0d060ee:	4c13      	ldr	r4, [pc, #76]	; (c0d0613c <io_seproxyhal_handle_usb_event+0x64>)
c0d060f0:	2101      	movs	r1, #1
c0d060f2:	4620      	mov	r0, r4
c0d060f4:	f7ff f80b 	bl	c0d0510e <USBD_LL_SetSpeed>
c0d060f8:	4620      	mov	r0, r4
c0d060fa:	f7fe ffe7 	bl	c0d050cc <USBD_LL_Reset>
c0d060fe:	4810      	ldr	r0, [pc, #64]	; (c0d06140 <io_seproxyhal_handle_usb_event+0x68>)
c0d06100:	7981      	ldrb	r1, [r0, #6]
c0d06102:	2900      	cmp	r1, #0
c0d06104:	d114      	bne.n	c0d06130 <io_seproxyhal_handle_usb_event+0x58>
c0d06106:	2100      	movs	r1, #0
c0d06108:	7481      	strb	r1, [r0, #18]
c0d0610a:	8201      	strh	r1, [r0, #16]
c0d0610c:	60c1      	str	r1, [r0, #12]
c0d0610e:	6141      	str	r1, [r0, #20]
c0d06110:	6181      	str	r1, [r0, #24]
c0d06112:	61c1      	str	r1, [r0, #28]
c0d06114:	8401      	strh	r1, [r0, #32]
c0d06116:	bd10      	pop	{r4, pc}
c0d06118:	4808      	ldr	r0, [pc, #32]	; (c0d0613c <io_seproxyhal_handle_usb_event+0x64>)
c0d0611a:	f7fe ffff 	bl	c0d0511c <USBD_LL_SOF>
c0d0611e:	bd10      	pop	{r4, pc}
c0d06120:	4806      	ldr	r0, [pc, #24]	; (c0d0613c <io_seproxyhal_handle_usb_event+0x64>)
c0d06122:	f7fe fff9 	bl	c0d05118 <USBD_LL_Resume>
c0d06126:	bd10      	pop	{r4, pc}
c0d06128:	4804      	ldr	r0, [pc, #16]	; (c0d0613c <io_seproxyhal_handle_usb_event+0x64>)
c0d0612a:	f7fe fff3 	bl	c0d05114 <USBD_LL_Suspend>
c0d0612e:	bd10      	pop	{r4, pc}
c0d06130:	2005      	movs	r0, #5
c0d06132:	f7ff ffc0 	bl	c0d060b6 <os_longjmp>
c0d06136:	46c0      	nop			; (mov r8, r8)
c0d06138:	2000092b 	.word	0x2000092b
c0d0613c:	20000aa8 	.word	0x20000aa8
c0d06140:	20000cfc 	.word	0x20000cfc

c0d06144 <io_seproxyhal_handle_usb_ep_xfer_event>:
c0d06144:	b580      	push	{r7, lr}
c0d06146:	4815      	ldr	r0, [pc, #84]	; (c0d0619c <io_seproxyhal_handle_usb_ep_xfer_event+0x58>)
c0d06148:	78c2      	ldrb	r2, [r0, #3]
c0d0614a:	217f      	movs	r1, #127	; 0x7f
c0d0614c:	4011      	ands	r1, r2
c0d0614e:	7902      	ldrb	r2, [r0, #4]
c0d06150:	2a04      	cmp	r2, #4
c0d06152:	d014      	beq.n	c0d0617e <io_seproxyhal_handle_usb_ep_xfer_event+0x3a>
c0d06154:	2a02      	cmp	r2, #2
c0d06156:	d006      	beq.n	c0d06166 <io_seproxyhal_handle_usb_ep_xfer_event+0x22>
c0d06158:	2a01      	cmp	r2, #1
c0d0615a:	d11e      	bne.n	c0d0619a <io_seproxyhal_handle_usb_ep_xfer_event+0x56>
c0d0615c:	1d81      	adds	r1, r0, #6
c0d0615e:	4811      	ldr	r0, [pc, #68]	; (c0d061a4 <io_seproxyhal_handle_usb_ep_xfer_event+0x60>)
c0d06160:	f7fe febb 	bl	c0d04eda <USBD_LL_SetupStage>
c0d06164:	bd80      	pop	{r7, pc}
c0d06166:	2906      	cmp	r1, #6
c0d06168:	d817      	bhi.n	c0d0619a <io_seproxyhal_handle_usb_ep_xfer_event+0x56>
c0d0616a:	004a      	lsls	r2, r1, #1
c0d0616c:	4b0c      	ldr	r3, [pc, #48]	; (c0d061a0 <io_seproxyhal_handle_usb_ep_xfer_event+0x5c>)
c0d0616e:	189a      	adds	r2, r3, r2
c0d06170:	2300      	movs	r3, #0
c0d06172:	8293      	strh	r3, [r2, #20]
c0d06174:	1d82      	adds	r2, r0, #6
c0d06176:	480b      	ldr	r0, [pc, #44]	; (c0d061a4 <io_seproxyhal_handle_usb_ep_xfer_event+0x60>)
c0d06178:	f7fe ff3b 	bl	c0d04ff2 <USBD_LL_DataInStage>
c0d0617c:	bd80      	pop	{r7, pc}
c0d0617e:	2906      	cmp	r1, #6
c0d06180:	d80b      	bhi.n	c0d0619a <io_seproxyhal_handle_usb_ep_xfer_event+0x56>
c0d06182:	4a07      	ldr	r2, [pc, #28]	; (c0d061a0 <io_seproxyhal_handle_usb_ep_xfer_event+0x5c>)
c0d06184:	1852      	adds	r2, r2, r1
c0d06186:	7943      	ldrb	r3, [r0, #5]
c0d06188:	2b7a      	cmp	r3, #122	; 0x7a
c0d0618a:	d300      	bcc.n	c0d0618e <io_seproxyhal_handle_usb_ep_xfer_event+0x4a>
c0d0618c:	237a      	movs	r3, #122	; 0x7a
c0d0618e:	7313      	strb	r3, [r2, #12]
c0d06190:	1d82      	adds	r2, r0, #6
c0d06192:	4804      	ldr	r0, [pc, #16]	; (c0d061a4 <io_seproxyhal_handle_usb_ep_xfer_event+0x60>)
c0d06194:	2300      	movs	r3, #0
c0d06196:	f7fe fecf 	bl	c0d04f38 <USBD_LL_DataOutStage>
c0d0619a:	bd80      	pop	{r7, pc}
c0d0619c:	2000092b 	.word	0x2000092b
c0d061a0:	20000cfc 	.word	0x20000cfc
c0d061a4:	20000aa8 	.word	0x20000aa8

c0d061a8 <io_usb_send_apdu_data_ep0x83>:
c0d061a8:	b580      	push	{r7, lr}
c0d061aa:	460a      	mov	r2, r1
c0d061ac:	4601      	mov	r1, r0
c0d061ae:	2083      	movs	r0, #131	; 0x83
c0d061b0:	2314      	movs	r3, #20
c0d061b2:	f000 fad3 	bl	c0d0675c <io_usb_send_ep>
c0d061b6:	bd80      	pop	{r7, pc}

c0d061b8 <io_seproxyhal_handle_capdu_event>:
c0d061b8:	b580      	push	{r7, lr}
c0d061ba:	480b      	ldr	r0, [pc, #44]	; (c0d061e8 <io_seproxyhal_handle_capdu_event+0x30>)
c0d061bc:	7801      	ldrb	r1, [r0, #0]
c0d061be:	2900      	cmp	r1, #0
c0d061c0:	d000      	beq.n	c0d061c4 <io_seproxyhal_handle_capdu_event+0xc>
c0d061c2:	bd80      	pop	{r7, pc}
c0d061c4:	2106      	movs	r1, #6
c0d061c6:	7181      	strb	r1, [r0, #6]
c0d061c8:	210a      	movs	r1, #10
c0d061ca:	7001      	strb	r1, [r0, #0]
c0d061cc:	4907      	ldr	r1, [pc, #28]	; (c0d061ec <io_seproxyhal_handle_capdu_event+0x34>)
c0d061ce:	788a      	ldrb	r2, [r1, #2]
c0d061d0:	784b      	ldrb	r3, [r1, #1]
c0d061d2:	021b      	lsls	r3, r3, #8
c0d061d4:	189a      	adds	r2, r3, r2
c0d061d6:	2a7d      	cmp	r2, #125	; 0x7d
c0d061d8:	d300      	bcc.n	c0d061dc <io_seproxyhal_handle_capdu_event+0x24>
c0d061da:	227d      	movs	r2, #125	; 0x7d
c0d061dc:	8042      	strh	r2, [r0, #2]
c0d061de:	1cc9      	adds	r1, r1, #3
c0d061e0:	4803      	ldr	r0, [pc, #12]	; (c0d061f0 <io_seproxyhal_handle_capdu_event+0x38>)
c0d061e2:	f000 ff3d 	bl	c0d07060 <__aeabi_memcpy>
c0d061e6:	bd80      	pop	{r7, pc}
c0d061e8:	20000cfc 	.word	0x20000cfc
c0d061ec:	2000092b 	.word	0x2000092b
c0d061f0:	20000bf8 	.word	0x20000bf8

c0d061f4 <io_seproxyhal_handle_event>:
c0d061f4:	b580      	push	{r7, lr}
c0d061f6:	491d      	ldr	r1, [pc, #116]	; (c0d0626c <io_seproxyhal_handle_event+0x78>)
c0d061f8:	7808      	ldrb	r0, [r1, #0]
c0d061fa:	280e      	cmp	r0, #14
c0d061fc:	d00e      	beq.n	c0d0621c <io_seproxyhal_handle_event+0x28>
c0d061fe:	2816      	cmp	r0, #22
c0d06200:	d024      	beq.n	c0d0624c <io_seproxyhal_handle_event+0x58>
c0d06202:	788a      	ldrb	r2, [r1, #2]
c0d06204:	7849      	ldrb	r1, [r1, #1]
c0d06206:	0209      	lsls	r1, r1, #8
c0d06208:	1889      	adds	r1, r1, r2
c0d0620a:	2810      	cmp	r0, #16
c0d0620c:	d021      	beq.n	c0d06252 <io_seproxyhal_handle_event+0x5e>
c0d0620e:	280f      	cmp	r0, #15
c0d06210:	d118      	bne.n	c0d06244 <io_seproxyhal_handle_event+0x50>
c0d06212:	2901      	cmp	r1, #1
c0d06214:	d11f      	bne.n	c0d06256 <io_seproxyhal_handle_event+0x62>
c0d06216:	f7ff ff5f 	bl	c0d060d8 <io_seproxyhal_handle_usb_event>
c0d0621a:	e020      	b.n	c0d0625e <io_seproxyhal_handle_event+0x6a>
c0d0621c:	4814      	ldr	r0, [pc, #80]	; (c0d06270 <io_seproxyhal_handle_event+0x7c>)
c0d0621e:	6881      	ldr	r1, [r0, #8]
c0d06220:	3164      	adds	r1, #100	; 0x64
c0d06222:	6081      	str	r1, [r0, #8]
c0d06224:	2120      	movs	r1, #32
c0d06226:	2912      	cmp	r1, #18
c0d06228:	d00c      	beq.n	c0d06244 <io_seproxyhal_handle_event+0x50>
c0d0622a:	5a42      	ldrh	r2, [r0, r1]
c0d0622c:	2a00      	cmp	r2, #0
c0d0622e:	d007      	beq.n	c0d06240 <io_seproxyhal_handle_event+0x4c>
c0d06230:	2a64      	cmp	r2, #100	; 0x64
c0d06232:	4613      	mov	r3, r2
c0d06234:	d800      	bhi.n	c0d06238 <io_seproxyhal_handle_event+0x44>
c0d06236:	2364      	movs	r3, #100	; 0x64
c0d06238:	3b64      	subs	r3, #100	; 0x64
c0d0623a:	5243      	strh	r3, [r0, r1]
c0d0623c:	2a65      	cmp	r2, #101	; 0x65
c0d0623e:	d310      	bcc.n	c0d06262 <io_seproxyhal_handle_event+0x6e>
c0d06240:	1e89      	subs	r1, r1, #2
c0d06242:	e7f0      	b.n	c0d06226 <io_seproxyhal_handle_event+0x32>
c0d06244:	2002      	movs	r0, #2
c0d06246:	f7fd f85d 	bl	c0d03304 <io_event>
c0d0624a:	bd80      	pop	{r7, pc}
c0d0624c:	f7ff ffb4 	bl	c0d061b8 <io_seproxyhal_handle_capdu_event>
c0d06250:	e005      	b.n	c0d0625e <io_seproxyhal_handle_event+0x6a>
c0d06252:	2903      	cmp	r1, #3
c0d06254:	d201      	bcs.n	c0d0625a <io_seproxyhal_handle_event+0x66>
c0d06256:	2000      	movs	r0, #0
c0d06258:	bd80      	pop	{r7, pc}
c0d0625a:	f7ff ff73 	bl	c0d06144 <io_seproxyhal_handle_usb_ep_xfer_event>
c0d0625e:	2001      	movs	r0, #1
c0d06260:	bd80      	pop	{r7, pc}
c0d06262:	2100      	movs	r1, #0
c0d06264:	7001      	strb	r1, [r0, #0]
c0d06266:	2005      	movs	r0, #5
c0d06268:	f7ff ff25 	bl	c0d060b6 <os_longjmp>
c0d0626c:	2000092b 	.word	0x2000092b
c0d06270:	20000cfc 	.word	0x20000cfc

c0d06274 <io_seproxyhal_init>:
c0d06274:	b580      	push	{r7, lr}
c0d06276:	4807      	ldr	r0, [pc, #28]	; (c0d06294 <io_seproxyhal_init+0x20>)
c0d06278:	4907      	ldr	r1, [pc, #28]	; (c0d06298 <io_seproxyhal_init+0x24>)
c0d0627a:	6001      	str	r1, [r0, #0]
c0d0627c:	4807      	ldr	r0, [pc, #28]	; (c0d0629c <io_seproxyhal_init+0x28>)
c0d0627e:	2124      	movs	r1, #36	; 0x24
c0d06280:	f000 fee8 	bl	c0d07054 <__aeabi_memclr>
c0d06284:	f000 fb42 	bl	c0d0690c <io_usb_hid_init>
c0d06288:	4805      	ldr	r0, [pc, #20]	; (c0d062a0 <io_seproxyhal_init+0x2c>)
c0d0628a:	2100      	movs	r1, #0
c0d0628c:	6001      	str	r1, [r0, #0]
c0d0628e:	6041      	str	r1, [r0, #4]
c0d06290:	bd80      	pop	{r7, pc}
c0d06292:	46c0      	nop			; (mov r8, r8)
c0d06294:	20000d7c 	.word	0x20000d7c
c0d06298:	dead0031 	.word	0xdead0031
c0d0629c:	20000cfc 	.word	0x20000cfc
c0d062a0:	20000d20 	.word	0x20000d20

c0d062a4 <io_seproxyhal_init_ux>:
c0d062a4:	4770      	bx	lr
	...

c0d062a8 <io_seproxyhal_init_button>:
c0d062a8:	4802      	ldr	r0, [pc, #8]	; (c0d062b4 <io_seproxyhal_init_button+0xc>)
c0d062aa:	2100      	movs	r1, #0
c0d062ac:	6001      	str	r1, [r0, #0]
c0d062ae:	6041      	str	r1, [r0, #4]
c0d062b0:	4770      	bx	lr
c0d062b2:	46c0      	nop			; (mov r8, r8)
c0d062b4:	20000d20 	.word	0x20000d20

c0d062b8 <io_seproxyhal_display_icon>:
c0d062b8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d062ba:	b087      	sub	sp, #28
c0d062bc:	4605      	mov	r5, r0
c0d062be:	4608      	mov	r0, r1
c0d062c0:	f000 fd6a 	bl	c0d06d98 <pic>
c0d062c4:	2800      	cmp	r0, #0
c0d062c6:	d03f      	beq.n	c0d06348 <io_seproxyhal_display_icon+0x90>
c0d062c8:	4604      	mov	r4, r0
c0d062ca:	6900      	ldr	r0, [r0, #16]
c0d062cc:	2800      	cmp	r0, #0
c0d062ce:	d03b      	beq.n	c0d06348 <io_seproxyhal_display_icon+0x90>
c0d062d0:	4628      	mov	r0, r5
c0d062d2:	f000 fd61 	bl	c0d06d98 <pic>
c0d062d6:	4601      	mov	r1, r0
c0d062d8:	466d      	mov	r5, sp
c0d062da:	221c      	movs	r2, #28
c0d062dc:	4628      	mov	r0, r5
c0d062de:	f000 febf 	bl	c0d07060 <__aeabi_memcpy>
c0d062e2:	6826      	ldr	r6, [r4, #0]
c0d062e4:	80ee      	strh	r6, [r5, #6]
c0d062e6:	6867      	ldr	r7, [r4, #4]
c0d062e8:	812f      	strh	r7, [r5, #8]
c0d062ea:	f000 fe0d 	bl	c0d06f08 <io_seph_is_status_sent>
c0d062ee:	2800      	cmp	r0, #0
c0d062f0:	d12a      	bne.n	c0d06348 <io_seproxyhal_display_icon+0x90>
c0d062f2:	b2b9      	uxth	r1, r7
c0d062f4:	b2b2      	uxth	r2, r6
c0d062f6:	4815      	ldr	r0, [pc, #84]	; (c0d0634c <io_seproxyhal_display_icon+0x94>)
c0d062f8:	2365      	movs	r3, #101	; 0x65
c0d062fa:	7003      	strb	r3, [r0, #0]
c0d062fc:	68a3      	ldr	r3, [r4, #8]
c0d062fe:	435a      	muls	r2, r3
c0d06300:	434a      	muls	r2, r1
c0d06302:	0751      	lsls	r1, r2, #29
c0d06304:	08d6      	lsrs	r6, r2, #3
c0d06306:	2900      	cmp	r1, #0
c0d06308:	d000      	beq.n	c0d0630c <io_seproxyhal_display_icon+0x54>
c0d0630a:	1c76      	adds	r6, r6, #1
c0d0630c:	2504      	movs	r5, #4
c0d0630e:	409d      	lsls	r5, r3
c0d06310:	19a9      	adds	r1, r5, r6
c0d06312:	311d      	adds	r1, #29
c0d06314:	7081      	strb	r1, [r0, #2]
c0d06316:	0a09      	lsrs	r1, r1, #8
c0d06318:	7041      	strb	r1, [r0, #1]
c0d0631a:	2103      	movs	r1, #3
c0d0631c:	4f0c      	ldr	r7, [pc, #48]	; (c0d06350 <io_seproxyhal_display_icon+0x98>)
c0d0631e:	447f      	add	r7, pc
c0d06320:	47b8      	blx	r7
c0d06322:	4668      	mov	r0, sp
c0d06324:	211c      	movs	r1, #28
c0d06326:	47b8      	blx	r7
c0d06328:	68a1      	ldr	r1, [r4, #8]
c0d0632a:	4808      	ldr	r0, [pc, #32]	; (c0d0634c <io_seproxyhal_display_icon+0x94>)
c0d0632c:	7001      	strb	r1, [r0, #0]
c0d0632e:	2101      	movs	r1, #1
c0d06330:	47b8      	blx	r7
c0d06332:	68e0      	ldr	r0, [r4, #12]
c0d06334:	f000 fd30 	bl	c0d06d98 <pic>
c0d06338:	b2a9      	uxth	r1, r5
c0d0633a:	47b8      	blx	r7
c0d0633c:	b2b5      	uxth	r5, r6
c0d0633e:	6920      	ldr	r0, [r4, #16]
c0d06340:	f000 fd2a 	bl	c0d06d98 <pic>
c0d06344:	4629      	mov	r1, r5
c0d06346:	47b8      	blx	r7
c0d06348:	b007      	add	sp, #28
c0d0634a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0634c:	2000092b 	.word	0x2000092b
c0d06350:	00000bd3 	.word	0x00000bd3

c0d06354 <io_seproxyhal_display_default>:
c0d06354:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d06356:	f000 fd1f 	bl	c0d06d98 <pic>
c0d0635a:	4604      	mov	r4, r0
c0d0635c:	69c0      	ldr	r0, [r0, #28]
c0d0635e:	f000 fd1b 	bl	c0d06d98 <pic>
c0d06362:	4605      	mov	r5, r0
c0d06364:	7821      	ldrb	r1, [r4, #0]
c0d06366:	207f      	movs	r0, #127	; 0x7f
c0d06368:	4008      	ands	r0, r1
c0d0636a:	d00a      	beq.n	c0d06382 <io_seproxyhal_display_default+0x2e>
c0d0636c:	2d00      	cmp	r5, #0
c0d0636e:	d009      	beq.n	c0d06384 <io_seproxyhal_display_default+0x30>
c0d06370:	2805      	cmp	r0, #5
c0d06372:	d102      	bne.n	c0d0637a <io_seproxyhal_display_default+0x26>
c0d06374:	7ea0      	ldrb	r0, [r4, #26]
c0d06376:	2800      	cmp	r0, #0
c0d06378:	d02e      	beq.n	c0d063d8 <io_seproxyhal_display_default+0x84>
c0d0637a:	f000 fdc5 	bl	c0d06f08 <io_seph_is_status_sent>
c0d0637e:	2800      	cmp	r0, #0
c0d06380:	d013      	beq.n	c0d063aa <io_seproxyhal_display_default+0x56>
c0d06382:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d06384:	f000 fdc0 	bl	c0d06f08 <io_seph_is_status_sent>
c0d06388:	2800      	cmp	r0, #0
c0d0638a:	d1fa      	bne.n	c0d06382 <io_seproxyhal_display_default+0x2e>
c0d0638c:	4815      	ldr	r0, [pc, #84]	; (c0d063e4 <io_seproxyhal_display_default+0x90>)
c0d0638e:	251c      	movs	r5, #28
c0d06390:	7085      	strb	r5, [r0, #2]
c0d06392:	2100      	movs	r1, #0
c0d06394:	7041      	strb	r1, [r0, #1]
c0d06396:	2165      	movs	r1, #101	; 0x65
c0d06398:	7001      	strb	r1, [r0, #0]
c0d0639a:	2103      	movs	r1, #3
c0d0639c:	f000 fdaa 	bl	c0d06ef4 <io_seph_send>
c0d063a0:	4620      	mov	r0, r4
c0d063a2:	4629      	mov	r1, r5
c0d063a4:	f000 fda6 	bl	c0d06ef4 <io_seph_send>
c0d063a8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d063aa:	4628      	mov	r0, r5
c0d063ac:	f000 ffea 	bl	c0d07384 <strlen>
c0d063b0:	4606      	mov	r6, r0
c0d063b2:	480c      	ldr	r0, [pc, #48]	; (c0d063e4 <io_seproxyhal_display_default+0x90>)
c0d063b4:	2165      	movs	r1, #101	; 0x65
c0d063b6:	7001      	strb	r1, [r0, #0]
c0d063b8:	4631      	mov	r1, r6
c0d063ba:	311c      	adds	r1, #28
c0d063bc:	7081      	strb	r1, [r0, #2]
c0d063be:	0a09      	lsrs	r1, r1, #8
c0d063c0:	7041      	strb	r1, [r0, #1]
c0d063c2:	2103      	movs	r1, #3
c0d063c4:	4f08      	ldr	r7, [pc, #32]	; (c0d063e8 <io_seproxyhal_display_default+0x94>)
c0d063c6:	447f      	add	r7, pc
c0d063c8:	47b8      	blx	r7
c0d063ca:	211c      	movs	r1, #28
c0d063cc:	4620      	mov	r0, r4
c0d063ce:	47b8      	blx	r7
c0d063d0:	b2b1      	uxth	r1, r6
c0d063d2:	4628      	mov	r0, r5
c0d063d4:	47b8      	blx	r7
c0d063d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d063d8:	4620      	mov	r0, r4
c0d063da:	4629      	mov	r1, r5
c0d063dc:	f7ff ff6c 	bl	c0d062b8 <io_seproxyhal_display_icon>
c0d063e0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d063e2:	46c0      	nop			; (mov r8, r8)
c0d063e4:	2000092b 	.word	0x2000092b
c0d063e8:	00000b2b 	.word	0x00000b2b

c0d063ec <bagl_label_roundtrip_duration_ms>:
c0d063ec:	b580      	push	{r7, lr}
c0d063ee:	460a      	mov	r2, r1
c0d063f0:	69c1      	ldr	r1, [r0, #28]
c0d063f2:	f000 f801 	bl	c0d063f8 <bagl_label_roundtrip_duration_ms_buf>
c0d063f6:	bd80      	pop	{r7, pc}

c0d063f8 <bagl_label_roundtrip_duration_ms_buf>:
c0d063f8:	b570      	push	{r4, r5, r6, lr}
c0d063fa:	2500      	movs	r5, #0
c0d063fc:	2800      	cmp	r0, #0
c0d063fe:	d01e      	beq.n	c0d0643e <bagl_label_roundtrip_duration_ms_buf+0x46>
c0d06400:	4616      	mov	r6, r2
c0d06402:	4604      	mov	r4, r0
c0d06404:	7800      	ldrb	r0, [r0, #0]
c0d06406:	2807      	cmp	r0, #7
c0d06408:	d001      	beq.n	c0d0640e <bagl_label_roundtrip_duration_ms_buf+0x16>
c0d0640a:	2802      	cmp	r0, #2
c0d0640c:	d117      	bne.n	c0d0643e <bagl_label_roundtrip_duration_ms_buf+0x46>
c0d0640e:	4608      	mov	r0, r1
c0d06410:	f000 fcc2 	bl	c0d06d98 <pic>
c0d06414:	2800      	cmp	r0, #0
c0d06416:	d012      	beq.n	c0d0643e <bagl_label_roundtrip_duration_ms_buf+0x46>
c0d06418:	f000 ffb4 	bl	c0d07384 <strlen>
c0d0641c:	4346      	muls	r6, r0
c0d0641e:	88e0      	ldrh	r0, [r4, #6]
c0d06420:	4286      	cmp	r6, r0
c0d06422:	d90c      	bls.n	c0d0643e <bagl_label_roundtrip_duration_ms_buf+0x46>
c0d06424:	1a31      	subs	r1, r6, r0
c0d06426:	207d      	movs	r0, #125	; 0x7d
c0d06428:	0100      	lsls	r0, r0, #4
c0d0642a:	4348      	muls	r0, r1
c0d0642c:	7ea1      	ldrb	r1, [r4, #26]
c0d0642e:	f000 fda5 	bl	c0d06f7c <__udivsi3>
c0d06432:	7aa1      	ldrb	r1, [r4, #10]
c0d06434:	0649      	lsls	r1, r1, #25
c0d06436:	0e09      	lsrs	r1, r1, #24
c0d06438:	2264      	movs	r2, #100	; 0x64
c0d0643a:	434a      	muls	r2, r1
c0d0643c:	1815      	adds	r5, r2, r0
c0d0643e:	4628      	mov	r0, r5
c0d06440:	bd70      	pop	{r4, r5, r6, pc}
	...

c0d06444 <io_seproxyhal_button_push>:
c0d06444:	b570      	push	{r4, r5, r6, lr}
c0d06446:	2800      	cmp	r0, #0
c0d06448:	d027      	beq.n	c0d0649a <io_seproxyhal_button_push+0x56>
c0d0644a:	4604      	mov	r4, r0
c0d0644c:	4813      	ldr	r0, [pc, #76]	; (c0d0649c <io_seproxyhal_button_push+0x58>)
c0d0644e:	c860      	ldmia	r0!, {r5, r6}
c0d06450:	3808      	subs	r0, #8
c0d06452:	428d      	cmp	r5, r1
c0d06454:	d101      	bne.n	c0d0645a <io_seproxyhal_button_push+0x16>
c0d06456:	1c76      	adds	r6, r6, #1
c0d06458:	6046      	str	r6, [r0, #4]
c0d0645a:	430d      	orrs	r5, r1
c0d0645c:	2900      	cmp	r1, #0
c0d0645e:	d002      	beq.n	c0d06466 <io_seproxyhal_button_push+0x22>
c0d06460:	6005      	str	r5, [r0, #0]
c0d06462:	462a      	mov	r2, r5
c0d06464:	e005      	b.n	c0d06472 <io_seproxyhal_button_push+0x2e>
c0d06466:	2200      	movs	r2, #0
c0d06468:	6002      	str	r2, [r0, #0]
c0d0646a:	6042      	str	r2, [r0, #4]
c0d0646c:	4b0c      	ldr	r3, [pc, #48]	; (c0d064a0 <io_seproxyhal_button_push+0x5c>)
c0d0646e:	1c5b      	adds	r3, r3, #1
c0d06470:	431d      	orrs	r5, r3
c0d06472:	428a      	cmp	r2, r1
c0d06474:	d001      	beq.n	c0d0647a <io_seproxyhal_button_push+0x36>
c0d06476:	2100      	movs	r1, #0
c0d06478:	6041      	str	r1, [r0, #4]
c0d0647a:	2e08      	cmp	r6, #8
c0d0647c:	d30a      	bcc.n	c0d06494 <io_seproxyhal_button_push+0x50>
c0d0647e:	2103      	movs	r1, #3
c0d06480:	4630      	mov	r0, r6
c0d06482:	f000 fdb7 	bl	c0d06ff4 <__aeabi_uidivmod>
c0d06486:	2001      	movs	r0, #1
c0d06488:	2900      	cmp	r1, #0
c0d0648a:	d101      	bne.n	c0d06490 <io_seproxyhal_button_push+0x4c>
c0d0648c:	0781      	lsls	r1, r0, #30
c0d0648e:	430d      	orrs	r5, r1
c0d06490:	07c0      	lsls	r0, r0, #31
c0d06492:	4385      	bics	r5, r0
c0d06494:	4628      	mov	r0, r5
c0d06496:	4631      	mov	r1, r6
c0d06498:	47a0      	blx	r4
c0d0649a:	bd70      	pop	{r4, r5, r6, pc}
c0d0649c:	20000d20 	.word	0x20000d20
c0d064a0:	7fffffff 	.word	0x7fffffff

c0d064a4 <io_seproxyhal_se_reset>:
c0d064a4:	4802      	ldr	r0, [pc, #8]	; (c0d064b0 <io_seproxyhal_se_reset+0xc>)
c0d064a6:	4478      	add	r0, pc
c0d064a8:	2103      	movs	r1, #3
c0d064aa:	f000 fd23 	bl	c0d06ef4 <io_seph_send>
c0d064ae:	e7fe      	b.n	c0d064ae <io_seproxyhal_se_reset+0xa>
c0d064b0:	00003d67 	.word	0x00003d67

c0d064b4 <os_io_seproxyhal_get_app_name_and_version>:
c0d064b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d064b6:	4e0f      	ldr	r6, [pc, #60]	; (c0d064f4 <os_io_seproxyhal_get_app_name_and_version+0x40>)
c0d064b8:	2401      	movs	r4, #1
c0d064ba:	7034      	strb	r4, [r6, #0]
c0d064bc:	1cb1      	adds	r1, r6, #2
c0d064be:	27ff      	movs	r7, #255	; 0xff
c0d064c0:	3702      	adds	r7, #2
c0d064c2:	1c7a      	adds	r2, r7, #1
c0d064c4:	4620      	mov	r0, r4
c0d064c6:	f000 fcfd 	bl	c0d06ec4 <os_registry_get_current_app_tag>
c0d064ca:	4605      	mov	r5, r0
c0d064cc:	7070      	strb	r0, [r6, #1]
c0d064ce:	1a3a      	subs	r2, r7, r0
c0d064d0:	1987      	adds	r7, r0, r6
c0d064d2:	1cf9      	adds	r1, r7, #3
c0d064d4:	2002      	movs	r0, #2
c0d064d6:	f000 fcf5 	bl	c0d06ec4 <os_registry_get_current_app_tag>
c0d064da:	70b8      	strb	r0, [r7, #2]
c0d064dc:	182d      	adds	r5, r5, r0
c0d064de:	19ae      	adds	r6, r5, r6
c0d064e0:	70f4      	strb	r4, [r6, #3]
c0d064e2:	f000 fccd 	bl	c0d06e80 <os_flags>
c0d064e6:	2100      	movs	r1, #0
c0d064e8:	71b1      	strb	r1, [r6, #6]
c0d064ea:	2190      	movs	r1, #144	; 0x90
c0d064ec:	7171      	strb	r1, [r6, #5]
c0d064ee:	7130      	strb	r0, [r6, #4]
c0d064f0:	1de8      	adds	r0, r5, #7
c0d064f2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d064f4:	20000bf8 	.word	0x20000bf8

c0d064f8 <io_exchange>:
c0d064f8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d064fa:	b087      	sub	sp, #28
c0d064fc:	460a      	mov	r2, r1
c0d064fe:	4606      	mov	r6, r0
c0d06500:	4879      	ldr	r0, [pc, #484]	; (c0d066e8 <io_exchange+0x1f0>)
c0d06502:	6800      	ldr	r0, [r0, #0]
c0d06504:	4979      	ldr	r1, [pc, #484]	; (c0d066ec <io_exchange+0x1f4>)
c0d06506:	4288      	cmp	r0, r1
c0d06508:	d000      	beq.n	c0d0650c <io_exchange+0x14>
c0d0650a:	e0e8      	b.n	c0d066de <io_exchange+0x1e6>
c0d0650c:	4c79      	ldr	r4, [pc, #484]	; (c0d066f4 <io_exchange+0x1fc>)
c0d0650e:	487b      	ldr	r0, [pc, #492]	; (c0d066fc <io_exchange+0x204>)
c0d06510:	4478      	add	r0, pc
c0d06512:	9001      	str	r0, [sp, #4]
c0d06514:	4f76      	ldr	r7, [pc, #472]	; (c0d066f0 <io_exchange+0x1f8>)
c0d06516:	b2f5      	uxtb	r5, r6
c0d06518:	07b0      	lsls	r0, r6, #30
c0d0651a:	d000      	beq.n	c0d0651e <io_exchange+0x26>
c0d0651c:	e0cc      	b.n	c0d066b8 <io_exchange+0x1c0>
c0d0651e:	2110      	movs	r1, #16
c0d06520:	4029      	ands	r1, r5
c0d06522:	0410      	lsls	r0, r2, #16
c0d06524:	d06b      	beq.n	c0d065fe <io_exchange+0x106>
c0d06526:	2900      	cmp	r1, #0
c0d06528:	d169      	bne.n	c0d065fe <io_exchange+0x106>
c0d0652a:	9206      	str	r2, [sp, #24]
c0d0652c:	9103      	str	r1, [sp, #12]
c0d0652e:	f000 fceb 	bl	c0d06f08 <io_seph_is_status_sent>
c0d06532:	2800      	cmp	r0, #0
c0d06534:	d008      	beq.n	c0d06548 <io_exchange+0x50>
c0d06536:	2180      	movs	r1, #128	; 0x80
c0d06538:	2200      	movs	r2, #0
c0d0653a:	4638      	mov	r0, r7
c0d0653c:	f000 fcee 	bl	c0d06f1c <io_seph_recv>
c0d06540:	2001      	movs	r0, #1
c0d06542:	f000 f8df 	bl	c0d06704 <os_io_seph_recv_and_process>
c0d06546:	e7f2      	b.n	c0d0652e <io_exchange+0x36>
c0d06548:	68a2      	ldr	r2, [r4, #8]
c0d0654a:	7820      	ldrb	r0, [r4, #0]
c0d0654c:	2807      	cmp	r0, #7
c0d0654e:	9604      	str	r6, [sp, #16]
c0d06550:	9205      	str	r2, [sp, #20]
c0d06552:	d00e      	beq.n	c0d06572 <io_exchange+0x7a>
c0d06554:	280a      	cmp	r0, #10
c0d06556:	9906      	ldr	r1, [sp, #24]
c0d06558:	d00f      	beq.n	c0d0657a <io_exchange+0x82>
c0d0655a:	280b      	cmp	r0, #11
c0d0655c:	d024      	beq.n	c0d065a8 <io_exchange+0xb0>
c0d0655e:	2800      	cmp	r0, #0
c0d06560:	d100      	bne.n	c0d06564 <io_exchange+0x6c>
c0d06562:	e0b9      	b.n	c0d066d8 <io_exchange+0x1e0>
c0d06564:	b289      	uxth	r1, r1
c0d06566:	4628      	mov	r0, r5
c0d06568:	f7fd f910 	bl	c0d0378c <io_exchange_al>
c0d0656c:	2800      	cmp	r0, #0
c0d0656e:	d021      	beq.n	c0d065b4 <io_exchange+0xbc>
c0d06570:	e0b2      	b.n	c0d066d8 <io_exchange+0x1e0>
c0d06572:	9806      	ldr	r0, [sp, #24]
c0d06574:	b281      	uxth	r1, r0
c0d06576:	9801      	ldr	r0, [sp, #4]
c0d06578:	e019      	b.n	c0d065ae <io_exchange+0xb6>
c0d0657a:	20ff      	movs	r0, #255	; 0xff
c0d0657c:	3006      	adds	r0, #6
c0d0657e:	b28a      	uxth	r2, r1
c0d06580:	9202      	str	r2, [sp, #8]
c0d06582:	4282      	cmp	r2, r0
c0d06584:	d300      	bcc.n	c0d06588 <io_exchange+0x90>
c0d06586:	e0ac      	b.n	c0d066e2 <io_exchange+0x1ea>
c0d06588:	70b9      	strb	r1, [r7, #2]
c0d0658a:	2053      	movs	r0, #83	; 0x53
c0d0658c:	7038      	strb	r0, [r7, #0]
c0d0658e:	0a08      	lsrs	r0, r1, #8
c0d06590:	7078      	strb	r0, [r7, #1]
c0d06592:	2103      	movs	r1, #3
c0d06594:	4638      	mov	r0, r7
c0d06596:	f000 fcad 	bl	c0d06ef4 <io_seph_send>
c0d0659a:	4857      	ldr	r0, [pc, #348]	; (c0d066f8 <io_exchange+0x200>)
c0d0659c:	9902      	ldr	r1, [sp, #8]
c0d0659e:	f000 fca9 	bl	c0d06ef4 <io_seph_send>
c0d065a2:	2000      	movs	r0, #0
c0d065a4:	7020      	strb	r0, [r4, #0]
c0d065a6:	e005      	b.n	c0d065b4 <io_exchange+0xbc>
c0d065a8:	b289      	uxth	r1, r1
c0d065aa:	4855      	ldr	r0, [pc, #340]	; (c0d06700 <io_exchange+0x208>)
c0d065ac:	4478      	add	r0, pc
c0d065ae:	4a52      	ldr	r2, [pc, #328]	; (c0d066f8 <io_exchange+0x200>)
c0d065b0:	f000 fa16 	bl	c0d069e0 <io_usb_hid_send>
c0d065b4:	207d      	movs	r0, #125	; 0x7d
c0d065b6:	0100      	lsls	r0, r0, #4
c0d065b8:	9905      	ldr	r1, [sp, #20]
c0d065ba:	180e      	adds	r6, r1, r0
c0d065bc:	7820      	ldrb	r0, [r4, #0]
c0d065be:	2800      	cmp	r0, #0
c0d065c0:	d010      	beq.n	c0d065e4 <io_exchange+0xec>
c0d065c2:	f7ff fd7f 	bl	c0d060c4 <io_seproxyhal_general_status>
c0d065c6:	2180      	movs	r1, #128	; 0x80
c0d065c8:	2200      	movs	r2, #0
c0d065ca:	4638      	mov	r0, r7
c0d065cc:	f000 fca6 	bl	c0d06f1c <io_seph_recv>
c0d065d0:	68a0      	ldr	r0, [r4, #8]
c0d065d2:	42b0      	cmp	r0, r6
c0d065d4:	d27a      	bcs.n	c0d066cc <io_exchange+0x1d4>
c0d065d6:	f7ff fe0d 	bl	c0d061f4 <io_seproxyhal_handle_event>
c0d065da:	f000 fc95 	bl	c0d06f08 <io_seph_is_status_sent>
c0d065de:	2800      	cmp	r0, #0
c0d065e0:	d1f1      	bne.n	c0d065c6 <io_exchange+0xce>
c0d065e2:	e7eb      	b.n	c0d065bc <io_exchange+0xc4>
c0d065e4:	2000      	movs	r0, #0
c0d065e6:	71a0      	strb	r0, [r4, #6]
c0d065e8:	7020      	strb	r0, [r4, #0]
c0d065ea:	8060      	strh	r0, [r4, #2]
c0d065ec:	9e04      	ldr	r6, [sp, #16]
c0d065ee:	06b1      	lsls	r1, r6, #26
c0d065f0:	d466      	bmi.n	c0d066c0 <io_exchange+0x1c8>
c0d065f2:	f7ff fd67 	bl	c0d060c4 <io_seproxyhal_general_status>
c0d065f6:	b270      	sxtb	r0, r6
c0d065f8:	2800      	cmp	r0, #0
c0d065fa:	9903      	ldr	r1, [sp, #12]
c0d065fc:	d469      	bmi.n	c0d066d2 <io_exchange+0x1da>
c0d065fe:	0768      	lsls	r0, r5, #29
c0d06600:	d408      	bmi.n	c0d06614 <io_exchange+0x11c>
c0d06602:	2900      	cmp	r1, #0
c0d06604:	d104      	bne.n	c0d06610 <io_exchange+0x118>
c0d06606:	0668      	lsls	r0, r5, #25
c0d06608:	d45d      	bmi.n	c0d066c6 <io_exchange+0x1ce>
c0d0660a:	2000      	movs	r0, #0
c0d0660c:	71a0      	strb	r0, [r4, #6]
c0d0660e:	7020      	strb	r0, [r4, #0]
c0d06610:	2000      	movs	r0, #0
c0d06612:	8060      	strh	r0, [r4, #2]
c0d06614:	7825      	ldrb	r5, [r4, #0]
c0d06616:	2d00      	cmp	r5, #0
c0d06618:	d002      	beq.n	c0d06620 <io_exchange+0x128>
c0d0661a:	8860      	ldrh	r0, [r4, #2]
c0d0661c:	2800      	cmp	r0, #0
c0d0661e:	d116      	bne.n	c0d0664e <io_exchange+0x156>
c0d06620:	f7ff fd50 	bl	c0d060c4 <io_seproxyhal_general_status>
c0d06624:	2180      	movs	r1, #128	; 0x80
c0d06626:	2500      	movs	r5, #0
c0d06628:	4638      	mov	r0, r7
c0d0662a:	462a      	mov	r2, r5
c0d0662c:	f000 fc76 	bl	c0d06f1c <io_seph_recv>
c0d06630:	2803      	cmp	r0, #3
c0d06632:	d306      	bcc.n	c0d06642 <io_exchange+0x14a>
c0d06634:	78b9      	ldrb	r1, [r7, #2]
c0d06636:	787a      	ldrb	r2, [r7, #1]
c0d06638:	0212      	lsls	r2, r2, #8
c0d0663a:	1851      	adds	r1, r2, r1
c0d0663c:	1cc9      	adds	r1, r1, #3
c0d0663e:	4281      	cmp	r1, r0
c0d06640:	d002      	beq.n	c0d06648 <io_exchange+0x150>
c0d06642:	8065      	strh	r5, [r4, #2]
c0d06644:	7025      	strb	r5, [r4, #0]
c0d06646:	e7e6      	b.n	c0d06616 <io_exchange+0x11e>
c0d06648:	f7ff fdd4 	bl	c0d061f4 <io_seproxyhal_handle_event>
c0d0664c:	e7e2      	b.n	c0d06614 <io_exchange+0x11c>
c0d0664e:	f000 fbdd 	bl	c0d06e0c <os_perso_isonboarded>
c0d06652:	28aa      	cmp	r0, #170	; 0xaa
c0d06654:	d103      	bne.n	c0d0665e <io_exchange+0x166>
c0d06656:	f000 fbfb 	bl	c0d06e50 <os_global_pin_is_validated>
c0d0665a:	28aa      	cmp	r0, #170	; 0xaa
c0d0665c:	d121      	bne.n	c0d066a2 <io_exchange+0x1aa>
c0d0665e:	4a26      	ldr	r2, [pc, #152]	; (c0d066f8 <io_exchange+0x200>)
c0d06660:	7810      	ldrb	r0, [r2, #0]
c0d06662:	28b0      	cmp	r0, #176	; 0xb0
c0d06664:	d126      	bne.n	c0d066b4 <io_exchange+0x1bc>
c0d06666:	7850      	ldrb	r0, [r2, #1]
c0d06668:	28a7      	cmp	r0, #167	; 0xa7
c0d0666a:	d00b      	beq.n	c0d06684 <io_exchange+0x18c>
c0d0666c:	2801      	cmp	r0, #1
c0d0666e:	d121      	bne.n	c0d066b4 <io_exchange+0x1bc>
c0d06670:	7890      	ldrb	r0, [r2, #2]
c0d06672:	78d1      	ldrb	r1, [r2, #3]
c0d06674:	4301      	orrs	r1, r0
c0d06676:	d11d      	bne.n	c0d066b4 <io_exchange+0x1bc>
c0d06678:	2003      	movs	r0, #3
c0d0667a:	4006      	ands	r6, r0
c0d0667c:	f7ff ff1a 	bl	c0d064b4 <os_io_seproxyhal_get_app_name_and_version>
c0d06680:	4602      	mov	r2, r0
c0d06682:	e748      	b.n	c0d06516 <io_exchange+0x1e>
c0d06684:	7890      	ldrb	r0, [r2, #2]
c0d06686:	78d1      	ldrb	r1, [r2, #3]
c0d06688:	4301      	orrs	r1, r0
c0d0668a:	d113      	bne.n	c0d066b4 <io_exchange+0x1bc>
c0d0668c:	2000      	movs	r0, #0
c0d0668e:	7050      	strb	r0, [r2, #1]
c0d06690:	2090      	movs	r0, #144	; 0x90
c0d06692:	7010      	strb	r0, [r2, #0]
c0d06694:	2003      	movs	r0, #3
c0d06696:	4006      	ands	r6, r0
c0d06698:	207f      	movs	r0, #127	; 0x7f
c0d0669a:	43c0      	mvns	r0, r0
c0d0669c:	1836      	adds	r6, r6, r0
c0d0669e:	2202      	movs	r2, #2
c0d066a0:	e739      	b.n	c0d06516 <io_exchange+0x1e>
c0d066a2:	2015      	movs	r0, #21
c0d066a4:	4914      	ldr	r1, [pc, #80]	; (c0d066f8 <io_exchange+0x200>)
c0d066a6:	7048      	strb	r0, [r1, #1]
c0d066a8:	2055      	movs	r0, #85	; 0x55
c0d066aa:	7008      	strb	r0, [r1, #0]
c0d066ac:	2003      	movs	r0, #3
c0d066ae:	4006      	ands	r6, r0
c0d066b0:	2202      	movs	r2, #2
c0d066b2:	e730      	b.n	c0d06516 <io_exchange+0x1e>
c0d066b4:	8860      	ldrh	r0, [r4, #2]
c0d066b6:	e003      	b.n	c0d066c0 <io_exchange+0x1c8>
c0d066b8:	b291      	uxth	r1, r2
c0d066ba:	4628      	mov	r0, r5
c0d066bc:	f7fd f866 	bl	c0d0378c <io_exchange_al>
c0d066c0:	b280      	uxth	r0, r0
c0d066c2:	b007      	add	sp, #28
c0d066c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d066c6:	8860      	ldrh	r0, [r4, #2]
c0d066c8:	1f40      	subs	r0, r0, #5
c0d066ca:	e7f9      	b.n	c0d066c0 <io_exchange+0x1c8>
c0d066cc:	2005      	movs	r0, #5
c0d066ce:	f7ff fcf2 	bl	c0d060b6 <os_longjmp>
c0d066d2:	2005      	movs	r0, #5
c0d066d4:	f000 fc02 	bl	c0d06edc <os_sched_exit>
c0d066d8:	2004      	movs	r0, #4
c0d066da:	f7ff fcec 	bl	c0d060b6 <os_longjmp>
c0d066de:	f7ff fee1 	bl	c0d064a4 <io_seproxyhal_se_reset>
c0d066e2:	2002      	movs	r0, #2
c0d066e4:	f7ff fce7 	bl	c0d060b6 <os_longjmp>
c0d066e8:	20000d7c 	.word	0x20000d7c
c0d066ec:	dead0031 	.word	0xdead0031
c0d066f0:	2000092b 	.word	0x2000092b
c0d066f4:	20000cfc 	.word	0x20000cfc
c0d066f8:	20000bf8 	.word	0x20000bf8
c0d066fc:	00000291 	.word	0x00000291
c0d06700:	fffffbf9 	.word	0xfffffbf9

c0d06704 <os_io_seph_recv_and_process>:
c0d06704:	b5b0      	push	{r4, r5, r7, lr}
c0d06706:	4604      	mov	r4, r0
c0d06708:	f7ff fcdc 	bl	c0d060c4 <io_seproxyhal_general_status>
c0d0670c:	4d0b      	ldr	r5, [pc, #44]	; (c0d0673c <os_io_seph_recv_and_process+0x38>)
c0d0670e:	2180      	movs	r1, #128	; 0x80
c0d06710:	2200      	movs	r2, #0
c0d06712:	4628      	mov	r0, r5
c0d06714:	f000 fc02 	bl	c0d06f1c <io_seph_recv>
c0d06718:	7828      	ldrb	r0, [r5, #0]
c0d0671a:	2815      	cmp	r0, #21
c0d0671c:	d808      	bhi.n	c0d06730 <os_io_seph_recv_and_process+0x2c>
c0d0671e:	2101      	movs	r1, #1
c0d06720:	4081      	lsls	r1, r0
c0d06722:	4807      	ldr	r0, [pc, #28]	; (c0d06740 <os_io_seph_recv_and_process+0x3c>)
c0d06724:	4201      	tst	r1, r0
c0d06726:	d003      	beq.n	c0d06730 <os_io_seph_recv_and_process+0x2c>
c0d06728:	2c00      	cmp	r4, #0
c0d0672a:	d001      	beq.n	c0d06730 <os_io_seph_recv_and_process+0x2c>
c0d0672c:	2000      	movs	r0, #0
c0d0672e:	bdb0      	pop	{r4, r5, r7, pc}
c0d06730:	f7ff fd60 	bl	c0d061f4 <io_seproxyhal_handle_event>
c0d06734:	1e41      	subs	r1, r0, #1
c0d06736:	4188      	sbcs	r0, r1
c0d06738:	bdb0      	pop	{r4, r5, r7, pc}
c0d0673a:	46c0      	nop			; (mov r8, r8)
c0d0673c:	2000092b 	.word	0x2000092b
c0d06740:	00207020 	.word	0x00207020

c0d06744 <io_seproxyhal_get_ep_rx_size>:
c0d06744:	217f      	movs	r1, #127	; 0x7f
c0d06746:	4001      	ands	r1, r0
c0d06748:	2906      	cmp	r1, #6
c0d0674a:	d803      	bhi.n	c0d06754 <io_seproxyhal_get_ep_rx_size+0x10>
c0d0674c:	4802      	ldr	r0, [pc, #8]	; (c0d06758 <io_seproxyhal_get_ep_rx_size+0x14>)
c0d0674e:	1840      	adds	r0, r0, r1
c0d06750:	7b00      	ldrb	r0, [r0, #12]
c0d06752:	4770      	bx	lr
c0d06754:	2000      	movs	r0, #0
c0d06756:	4770      	bx	lr
c0d06758:	20000cfc 	.word	0x20000cfc

c0d0675c <io_usb_send_ep>:
c0d0675c:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0d0675e:	2aff      	cmp	r2, #255	; 0xff
c0d06760:	d81d      	bhi.n	c0d0679e <io_usb_send_ep+0x42>
c0d06762:	4615      	mov	r5, r2
c0d06764:	460e      	mov	r6, r1
c0d06766:	4604      	mov	r4, r0
c0d06768:	4668      	mov	r0, sp
c0d0676a:	7142      	strb	r2, [r0, #5]
c0d0676c:	2120      	movs	r1, #32
c0d0676e:	7101      	strb	r1, [r0, #4]
c0d06770:	2150      	movs	r1, #80	; 0x50
c0d06772:	7001      	strb	r1, [r0, #0]
c0d06774:	2180      	movs	r1, #128	; 0x80
c0d06776:	4321      	orrs	r1, r4
c0d06778:	70c1      	strb	r1, [r0, #3]
c0d0677a:	1cd1      	adds	r1, r2, #3
c0d0677c:	7081      	strb	r1, [r0, #2]
c0d0677e:	0a09      	lsrs	r1, r1, #8
c0d06780:	7041      	strb	r1, [r0, #1]
c0d06782:	2106      	movs	r1, #6
c0d06784:	f000 fbb6 	bl	c0d06ef4 <io_seph_send>
c0d06788:	4630      	mov	r0, r6
c0d0678a:	4629      	mov	r1, r5
c0d0678c:	f000 fbb2 	bl	c0d06ef4 <io_seph_send>
c0d06790:	0660      	lsls	r0, r4, #25
c0d06792:	0e00      	lsrs	r0, r0, #24
c0d06794:	4902      	ldr	r1, [pc, #8]	; (c0d067a0 <io_usb_send_ep+0x44>)
c0d06796:	1808      	adds	r0, r1, r0
c0d06798:	217d      	movs	r1, #125	; 0x7d
c0d0679a:	0109      	lsls	r1, r1, #4
c0d0679c:	8281      	strh	r1, [r0, #20]
c0d0679e:	bd7c      	pop	{r2, r3, r4, r5, r6, pc}
c0d067a0:	20000cfc 	.word	0x20000cfc

c0d067a4 <io_usb_send_apdu_data>:
c0d067a4:	b580      	push	{r7, lr}
c0d067a6:	460a      	mov	r2, r1
c0d067a8:	4601      	mov	r1, r0
c0d067aa:	2082      	movs	r0, #130	; 0x82
c0d067ac:	f7ff ffd6 	bl	c0d0675c <io_usb_send_ep>
c0d067b0:	bd80      	pop	{r7, pc}
	...

c0d067b4 <io_usb_hid_receive>:
c0d067b4:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0d067b6:	9202      	str	r2, [sp, #8]
c0d067b8:	460d      	mov	r5, r1
c0d067ba:	4604      	mov	r4, r0
c0d067bc:	2b00      	cmp	r3, #0
c0d067be:	d003      	beq.n	c0d067c8 <io_usb_hid_receive+0x14>
c0d067c0:	8898      	ldrh	r0, [r3, #4]
c0d067c2:	9001      	str	r0, [sp, #4]
c0d067c4:	6818      	ldr	r0, [r3, #0]
c0d067c6:	e003      	b.n	c0d067d0 <io_usb_hid_receive+0x1c>
c0d067c8:	2041      	movs	r0, #65	; 0x41
c0d067ca:	0080      	lsls	r0, r0, #2
c0d067cc:	9001      	str	r0, [sp, #4]
c0d067ce:	4848      	ldr	r0, [pc, #288]	; (c0d068f0 <io_usb_hid_receive+0x13c>)
c0d067d0:	9000      	str	r0, [sp, #0]
c0d067d2:	4f48      	ldr	r7, [pc, #288]	; (c0d068f4 <io_usb_hid_receive+0x140>)
c0d067d4:	42bd      	cmp	r5, r7
c0d067d6:	d00e      	beq.n	c0d067f6 <io_usb_hid_receive+0x42>
c0d067d8:	4e46      	ldr	r6, [pc, #280]	; (c0d068f4 <io_usb_hid_receive+0x140>)
c0d067da:	2740      	movs	r7, #64	; 0x40
c0d067dc:	4630      	mov	r0, r6
c0d067de:	4639      	mov	r1, r7
c0d067e0:	f000 fc38 	bl	c0d07054 <__aeabi_memclr>
c0d067e4:	9a02      	ldr	r2, [sp, #8]
c0d067e6:	2a40      	cmp	r2, #64	; 0x40
c0d067e8:	d300      	bcc.n	c0d067ec <io_usb_hid_receive+0x38>
c0d067ea:	463a      	mov	r2, r7
c0d067ec:	4630      	mov	r0, r6
c0d067ee:	4629      	mov	r1, r5
c0d067f0:	f000 fc3a 	bl	c0d07068 <__aeabi_memmove>
c0d067f4:	4f3f      	ldr	r7, [pc, #252]	; (c0d068f4 <io_usb_hid_receive+0x140>)
c0d067f6:	78b8      	ldrb	r0, [r7, #2]
c0d067f8:	2800      	cmp	r0, #0
c0d067fa:	d022      	beq.n	c0d06842 <io_usb_hid_receive+0x8e>
c0d067fc:	2801      	cmp	r0, #1
c0d067fe:	d029      	beq.n	c0d06854 <io_usb_hid_receive+0xa0>
c0d06800:	2802      	cmp	r0, #2
c0d06802:	d02e      	beq.n	c0d06862 <io_usb_hid_receive+0xae>
c0d06804:	2805      	cmp	r0, #5
c0d06806:	d163      	bne.n	c0d068d0 <io_usb_hid_receive+0x11c>
c0d06808:	7938      	ldrb	r0, [r7, #4]
c0d0680a:	78f9      	ldrb	r1, [r7, #3]
c0d0680c:	0209      	lsls	r1, r1, #8
c0d0680e:	1808      	adds	r0, r1, r0
c0d06810:	4c39      	ldr	r4, [pc, #228]	; (c0d068f8 <io_usb_hid_receive+0x144>)
c0d06812:	6821      	ldr	r1, [r4, #0]
c0d06814:	2500      	movs	r5, #0
c0d06816:	4281      	cmp	r1, r0
c0d06818:	d161      	bne.n	c0d068de <io_usb_hid_receive+0x12a>
c0d0681a:	6820      	ldr	r0, [r4, #0]
c0d0681c:	2800      	cmp	r0, #0
c0d0681e:	d025      	beq.n	c0d0686c <io_usb_hid_receive+0xb8>
c0d06820:	9802      	ldr	r0, [sp, #8]
c0d06822:	1f40      	subs	r0, r0, #5
c0d06824:	b282      	uxth	r2, r0
c0d06826:	4935      	ldr	r1, [pc, #212]	; (c0d068fc <io_usb_hid_receive+0x148>)
c0d06828:	680b      	ldr	r3, [r1, #0]
c0d0682a:	4293      	cmp	r3, r2
c0d0682c:	d200      	bcs.n	c0d06830 <io_usb_hid_receive+0x7c>
c0d0682e:	6808      	ldr	r0, [r1, #0]
c0d06830:	b281      	uxth	r1, r0
c0d06832:	293b      	cmp	r1, #59	; 0x3b
c0d06834:	d300      	bcc.n	c0d06838 <io_usb_hid_receive+0x84>
c0d06836:	203b      	movs	r0, #59	; 0x3b
c0d06838:	b285      	uxth	r5, r0
c0d0683a:	4831      	ldr	r0, [pc, #196]	; (c0d06900 <io_usb_hid_receive+0x14c>)
c0d0683c:	6800      	ldr	r0, [r0, #0]
c0d0683e:	1d79      	adds	r1, r7, #5
c0d06840:	e038      	b.n	c0d068b4 <io_usb_hid_receive+0x100>
c0d06842:	2500      	movs	r5, #0
c0d06844:	71bd      	strb	r5, [r7, #6]
c0d06846:	717d      	strb	r5, [r7, #5]
c0d06848:	713d      	strb	r5, [r7, #4]
c0d0684a:	70fd      	strb	r5, [r7, #3]
c0d0684c:	2140      	movs	r1, #64	; 0x40
c0d0684e:	4638      	mov	r0, r7
c0d06850:	47a0      	blx	r4
c0d06852:	e044      	b.n	c0d068de <io_usb_hid_receive+0x12a>
c0d06854:	1cf8      	adds	r0, r7, #3
c0d06856:	2104      	movs	r1, #4
c0d06858:	f7ff fc18 	bl	c0d0608c <cx_rng_no_throw>
c0d0685c:	2140      	movs	r1, #64	; 0x40
c0d0685e:	4638      	mov	r0, r7
c0d06860:	e001      	b.n	c0d06866 <io_usb_hid_receive+0xb2>
c0d06862:	4824      	ldr	r0, [pc, #144]	; (c0d068f4 <io_usb_hid_receive+0x140>)
c0d06864:	2140      	movs	r1, #64	; 0x40
c0d06866:	47a0      	blx	r4
c0d06868:	2500      	movs	r5, #0
c0d0686a:	e038      	b.n	c0d068de <io_usb_hid_receive+0x12a>
c0d0686c:	79b8      	ldrb	r0, [r7, #6]
c0d0686e:	7979      	ldrb	r1, [r7, #5]
c0d06870:	0209      	lsls	r1, r1, #8
c0d06872:	1809      	adds	r1, r1, r0
c0d06874:	4823      	ldr	r0, [pc, #140]	; (c0d06904 <io_usb_hid_receive+0x150>)
c0d06876:	6001      	str	r1, [r0, #0]
c0d06878:	6801      	ldr	r1, [r0, #0]
c0d0687a:	9a01      	ldr	r2, [sp, #4]
c0d0687c:	4291      	cmp	r1, r2
c0d0687e:	d82e      	bhi.n	c0d068de <io_usb_hid_receive+0x12a>
c0d06880:	6801      	ldr	r1, [r0, #0]
c0d06882:	481e      	ldr	r0, [pc, #120]	; (c0d068fc <io_usb_hid_receive+0x148>)
c0d06884:	6001      	str	r1, [r0, #0]
c0d06886:	7879      	ldrb	r1, [r7, #1]
c0d06888:	783a      	ldrb	r2, [r7, #0]
c0d0688a:	0212      	lsls	r2, r2, #8
c0d0688c:	1851      	adds	r1, r2, r1
c0d0688e:	4a1e      	ldr	r2, [pc, #120]	; (c0d06908 <io_usb_hid_receive+0x154>)
c0d06890:	6011      	str	r1, [r2, #0]
c0d06892:	491b      	ldr	r1, [pc, #108]	; (c0d06900 <io_usb_hid_receive+0x14c>)
c0d06894:	9a00      	ldr	r2, [sp, #0]
c0d06896:	600a      	str	r2, [r1, #0]
c0d06898:	6802      	ldr	r2, [r0, #0]
c0d0689a:	9902      	ldr	r1, [sp, #8]
c0d0689c:	1fc9      	subs	r1, r1, #7
c0d0689e:	b28b      	uxth	r3, r1
c0d068a0:	429a      	cmp	r2, r3
c0d068a2:	d200      	bcs.n	c0d068a6 <io_usb_hid_receive+0xf2>
c0d068a4:	6801      	ldr	r1, [r0, #0]
c0d068a6:	b288      	uxth	r0, r1
c0d068a8:	2839      	cmp	r0, #57	; 0x39
c0d068aa:	d300      	bcc.n	c0d068ae <io_usb_hid_receive+0xfa>
c0d068ac:	2139      	movs	r1, #57	; 0x39
c0d068ae:	b28d      	uxth	r5, r1
c0d068b0:	1df9      	adds	r1, r7, #7
c0d068b2:	9800      	ldr	r0, [sp, #0]
c0d068b4:	462a      	mov	r2, r5
c0d068b6:	f000 fbd7 	bl	c0d07068 <__aeabi_memmove>
c0d068ba:	4810      	ldr	r0, [pc, #64]	; (c0d068fc <io_usb_hid_receive+0x148>)
c0d068bc:	6801      	ldr	r1, [r0, #0]
c0d068be:	1b49      	subs	r1, r1, r5
c0d068c0:	6001      	str	r1, [r0, #0]
c0d068c2:	480f      	ldr	r0, [pc, #60]	; (c0d06900 <io_usb_hid_receive+0x14c>)
c0d068c4:	6801      	ldr	r1, [r0, #0]
c0d068c6:	1949      	adds	r1, r1, r5
c0d068c8:	6001      	str	r1, [r0, #0]
c0d068ca:	6820      	ldr	r0, [r4, #0]
c0d068cc:	1c40      	adds	r0, r0, #1
c0d068ce:	6020      	str	r0, [r4, #0]
c0d068d0:	480a      	ldr	r0, [pc, #40]	; (c0d068fc <io_usb_hid_receive+0x148>)
c0d068d2:	6800      	ldr	r0, [r0, #0]
c0d068d4:	2800      	cmp	r0, #0
c0d068d6:	d001      	beq.n	c0d068dc <io_usb_hid_receive+0x128>
c0d068d8:	2501      	movs	r5, #1
c0d068da:	e007      	b.n	c0d068ec <io_usb_hid_receive+0x138>
c0d068dc:	2502      	movs	r5, #2
c0d068de:	4806      	ldr	r0, [pc, #24]	; (c0d068f8 <io_usb_hid_receive+0x144>)
c0d068e0:	2100      	movs	r1, #0
c0d068e2:	6001      	str	r1, [r0, #0]
c0d068e4:	4806      	ldr	r0, [pc, #24]	; (c0d06900 <io_usb_hid_receive+0x14c>)
c0d068e6:	6001      	str	r1, [r0, #0]
c0d068e8:	4804      	ldr	r0, [pc, #16]	; (c0d068fc <io_usb_hid_receive+0x148>)
c0d068ea:	6001      	str	r1, [r0, #0]
c0d068ec:	4628      	mov	r0, r5
c0d068ee:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0d068f0:	20000bf8 	.word	0x20000bf8
c0d068f4:	20000d28 	.word	0x20000d28
c0d068f8:	20000d68 	.word	0x20000d68
c0d068fc:	20000d70 	.word	0x20000d70
c0d06900:	20000d74 	.word	0x20000d74
c0d06904:	20000d6c 	.word	0x20000d6c
c0d06908:	20000d78 	.word	0x20000d78

c0d0690c <io_usb_hid_init>:
c0d0690c:	4803      	ldr	r0, [pc, #12]	; (c0d0691c <io_usb_hid_init+0x10>)
c0d0690e:	2100      	movs	r1, #0
c0d06910:	6001      	str	r1, [r0, #0]
c0d06912:	4803      	ldr	r0, [pc, #12]	; (c0d06920 <io_usb_hid_init+0x14>)
c0d06914:	6001      	str	r1, [r0, #0]
c0d06916:	4803      	ldr	r0, [pc, #12]	; (c0d06924 <io_usb_hid_init+0x18>)
c0d06918:	6001      	str	r1, [r0, #0]
c0d0691a:	4770      	bx	lr
c0d0691c:	20000d68 	.word	0x20000d68
c0d06920:	20000d74 	.word	0x20000d74
c0d06924:	20000d70 	.word	0x20000d70

c0d06928 <io_usb_hid_sent>:
c0d06928:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d0692a:	4a27      	ldr	r2, [pc, #156]	; (c0d069c8 <io_usb_hid_sent+0xa0>)
c0d0692c:	6815      	ldr	r5, [r2, #0]
c0d0692e:	4b27      	ldr	r3, [pc, #156]	; (c0d069cc <io_usb_hid_sent+0xa4>)
c0d06930:	6819      	ldr	r1, [r3, #0]
c0d06932:	2900      	cmp	r1, #0
c0d06934:	d021      	beq.n	c0d0697a <io_usb_hid_sent+0x52>
c0d06936:	2d00      	cmp	r5, #0
c0d06938:	d01f      	beq.n	c0d0697a <io_usb_hid_sent+0x52>
c0d0693a:	9000      	str	r0, [sp, #0]
c0d0693c:	4c26      	ldr	r4, [pc, #152]	; (c0d069d8 <io_usb_hid_sent+0xb0>)
c0d0693e:	1d67      	adds	r7, r4, #5
c0d06940:	263b      	movs	r6, #59	; 0x3b
c0d06942:	4638      	mov	r0, r7
c0d06944:	4631      	mov	r1, r6
c0d06946:	f000 fb85 	bl	c0d07054 <__aeabi_memclr>
c0d0694a:	4a20      	ldr	r2, [pc, #128]	; (c0d069cc <io_usb_hid_sent+0xa4>)
c0d0694c:	2005      	movs	r0, #5
c0d0694e:	70a0      	strb	r0, [r4, #2]
c0d06950:	4822      	ldr	r0, [pc, #136]	; (c0d069dc <io_usb_hid_sent+0xb4>)
c0d06952:	6801      	ldr	r1, [r0, #0]
c0d06954:	0a09      	lsrs	r1, r1, #8
c0d06956:	7021      	strb	r1, [r4, #0]
c0d06958:	6800      	ldr	r0, [r0, #0]
c0d0695a:	7060      	strb	r0, [r4, #1]
c0d0695c:	491c      	ldr	r1, [pc, #112]	; (c0d069d0 <io_usb_hid_sent+0xa8>)
c0d0695e:	6808      	ldr	r0, [r1, #0]
c0d06960:	0a00      	lsrs	r0, r0, #8
c0d06962:	70e0      	strb	r0, [r4, #3]
c0d06964:	6808      	ldr	r0, [r1, #0]
c0d06966:	7120      	strb	r0, [r4, #4]
c0d06968:	6809      	ldr	r1, [r1, #0]
c0d0696a:	6810      	ldr	r0, [r2, #0]
c0d0696c:	2900      	cmp	r1, #0
c0d0696e:	d00c      	beq.n	c0d0698a <io_usb_hid_sent+0x62>
c0d06970:	283b      	cmp	r0, #59	; 0x3b
c0d06972:	d800      	bhi.n	c0d06976 <io_usb_hid_sent+0x4e>
c0d06974:	6816      	ldr	r6, [r2, #0]
c0d06976:	4638      	mov	r0, r7
c0d06978:	e012      	b.n	c0d069a0 <io_usb_hid_sent+0x78>
c0d0697a:	4815      	ldr	r0, [pc, #84]	; (c0d069d0 <io_usb_hid_sent+0xa8>)
c0d0697c:	2100      	movs	r1, #0
c0d0697e:	6001      	str	r1, [r0, #0]
c0d06980:	6011      	str	r1, [r2, #0]
c0d06982:	4814      	ldr	r0, [pc, #80]	; (c0d069d4 <io_usb_hid_sent+0xac>)
c0d06984:	7001      	strb	r1, [r0, #0]
c0d06986:	6019      	str	r1, [r3, #0]
c0d06988:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d0698a:	2839      	cmp	r0, #57	; 0x39
c0d0698c:	d901      	bls.n	c0d06992 <io_usb_hid_sent+0x6a>
c0d0698e:	2639      	movs	r6, #57	; 0x39
c0d06990:	e000      	b.n	c0d06994 <io_usb_hid_sent+0x6c>
c0d06992:	6816      	ldr	r6, [r2, #0]
c0d06994:	6810      	ldr	r0, [r2, #0]
c0d06996:	0a00      	lsrs	r0, r0, #8
c0d06998:	7160      	strb	r0, [r4, #5]
c0d0699a:	6810      	ldr	r0, [r2, #0]
c0d0699c:	71a0      	strb	r0, [r4, #6]
c0d0699e:	1de0      	adds	r0, r4, #7
c0d069a0:	4629      	mov	r1, r5
c0d069a2:	4632      	mov	r2, r6
c0d069a4:	f000 fb60 	bl	c0d07068 <__aeabi_memmove>
c0d069a8:	4b08      	ldr	r3, [pc, #32]	; (c0d069cc <io_usb_hid_sent+0xa4>)
c0d069aa:	9a00      	ldr	r2, [sp, #0]
c0d069ac:	4906      	ldr	r1, [pc, #24]	; (c0d069c8 <io_usb_hid_sent+0xa0>)
c0d069ae:	6818      	ldr	r0, [r3, #0]
c0d069b0:	1b80      	subs	r0, r0, r6
c0d069b2:	6018      	str	r0, [r3, #0]
c0d069b4:	19a8      	adds	r0, r5, r6
c0d069b6:	6008      	str	r0, [r1, #0]
c0d069b8:	4905      	ldr	r1, [pc, #20]	; (c0d069d0 <io_usb_hid_sent+0xa8>)
c0d069ba:	6808      	ldr	r0, [r1, #0]
c0d069bc:	1c40      	adds	r0, r0, #1
c0d069be:	6008      	str	r0, [r1, #0]
c0d069c0:	4805      	ldr	r0, [pc, #20]	; (c0d069d8 <io_usb_hid_sent+0xb0>)
c0d069c2:	2140      	movs	r1, #64	; 0x40
c0d069c4:	4790      	blx	r2
c0d069c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0d069c8:	20000d74 	.word	0x20000d74
c0d069cc:	20000d70 	.word	0x20000d70
c0d069d0:	20000d68 	.word	0x20000d68
c0d069d4:	20000cfc 	.word	0x20000cfc
c0d069d8:	20000d28 	.word	0x20000d28
c0d069dc:	20000d78 	.word	0x20000d78

c0d069e0 <io_usb_hid_send>:
c0d069e0:	b510      	push	{r4, lr}
c0d069e2:	2900      	cmp	r1, #0
c0d069e4:	d00a      	beq.n	c0d069fc <io_usb_hid_send+0x1c>
c0d069e6:	4b06      	ldr	r3, [pc, #24]	; (c0d06a00 <io_usb_hid_send+0x20>)
c0d069e8:	2400      	movs	r4, #0
c0d069ea:	601c      	str	r4, [r3, #0]
c0d069ec:	4b05      	ldr	r3, [pc, #20]	; (c0d06a04 <io_usb_hid_send+0x24>)
c0d069ee:	6019      	str	r1, [r3, #0]
c0d069f0:	4b05      	ldr	r3, [pc, #20]	; (c0d06a08 <io_usb_hid_send+0x28>)
c0d069f2:	601a      	str	r2, [r3, #0]
c0d069f4:	4a05      	ldr	r2, [pc, #20]	; (c0d06a0c <io_usb_hid_send+0x2c>)
c0d069f6:	6011      	str	r1, [r2, #0]
c0d069f8:	f7ff ff96 	bl	c0d06928 <io_usb_hid_sent>
c0d069fc:	bd10      	pop	{r4, pc}
c0d069fe:	46c0      	nop			; (mov r8, r8)
c0d06a00:	20000d68 	.word	0x20000d68
c0d06a04:	20000d70 	.word	0x20000d70
c0d06a08:	20000d74 	.word	0x20000d74
c0d06a0c:	20000d6c 	.word	0x20000d6c

c0d06a10 <snprintf>:
c0d06a10:	b081      	sub	sp, #4
c0d06a12:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d06a14:	b08e      	sub	sp, #56	; 0x38
c0d06a16:	9313      	str	r3, [sp, #76]	; 0x4c
c0d06a18:	2800      	cmp	r0, #0
c0d06a1a:	d100      	bne.n	c0d06a1e <snprintf+0xe>
c0d06a1c:	e1a6      	b.n	c0d06d6c <snprintf+0x35c>
c0d06a1e:	460d      	mov	r5, r1
c0d06a20:	2900      	cmp	r1, #0
c0d06a22:	d100      	bne.n	c0d06a26 <snprintf+0x16>
c0d06a24:	e1a2      	b.n	c0d06d6c <snprintf+0x35c>
c0d06a26:	4614      	mov	r4, r2
c0d06a28:	4629      	mov	r1, r5
c0d06a2a:	4606      	mov	r6, r0
c0d06a2c:	f000 fb12 	bl	c0d07054 <__aeabi_memclr>
c0d06a30:	1e68      	subs	r0, r5, #1
c0d06a32:	9004      	str	r0, [sp, #16]
c0d06a34:	d100      	bne.n	c0d06a38 <snprintf+0x28>
c0d06a36:	e199      	b.n	c0d06d6c <snprintf+0x35c>
c0d06a38:	4633      	mov	r3, r6
c0d06a3a:	a813      	add	r0, sp, #76	; 0x4c
c0d06a3c:	9009      	str	r0, [sp, #36]	; 0x24
c0d06a3e:	2001      	movs	r0, #1
c0d06a40:	9000      	str	r0, [sp, #0]
c0d06a42:	9e04      	ldr	r6, [sp, #16]
c0d06a44:	7820      	ldrb	r0, [r4, #0]
c0d06a46:	2800      	cmp	r0, #0
c0d06a48:	d100      	bne.n	c0d06a4c <snprintf+0x3c>
c0d06a4a:	e18f      	b.n	c0d06d6c <snprintf+0x35c>
c0d06a4c:	2700      	movs	r7, #0
c0d06a4e:	2800      	cmp	r0, #0
c0d06a50:	d005      	beq.n	c0d06a5e <snprintf+0x4e>
c0d06a52:	2825      	cmp	r0, #37	; 0x25
c0d06a54:	d003      	beq.n	c0d06a5e <snprintf+0x4e>
c0d06a56:	19e0      	adds	r0, r4, r7
c0d06a58:	7840      	ldrb	r0, [r0, #1]
c0d06a5a:	1c7f      	adds	r7, r7, #1
c0d06a5c:	e7f7      	b.n	c0d06a4e <snprintf+0x3e>
c0d06a5e:	42b7      	cmp	r7, r6
c0d06a60:	463d      	mov	r5, r7
c0d06a62:	d300      	bcc.n	c0d06a66 <snprintf+0x56>
c0d06a64:	4635      	mov	r5, r6
c0d06a66:	4618      	mov	r0, r3
c0d06a68:	4621      	mov	r1, r4
c0d06a6a:	9308      	str	r3, [sp, #32]
c0d06a6c:	462a      	mov	r2, r5
c0d06a6e:	f000 fafb 	bl	c0d07068 <__aeabi_memmove>
c0d06a72:	9603      	str	r6, [sp, #12]
c0d06a74:	1b70      	subs	r0, r6, r5
c0d06a76:	9004      	str	r0, [sp, #16]
c0d06a78:	d100      	bne.n	c0d06a7c <snprintf+0x6c>
c0d06a7a:	e177      	b.n	c0d06d6c <snprintf+0x35c>
c0d06a7c:	9808      	ldr	r0, [sp, #32]
c0d06a7e:	1943      	adds	r3, r0, r5
c0d06a80:	1960      	adds	r0, r4, r5
c0d06a82:	5d61      	ldrb	r1, [r4, r5]
c0d06a84:	2925      	cmp	r1, #37	; 0x25
c0d06a86:	4604      	mov	r4, r0
c0d06a88:	d1db      	bne.n	c0d06a42 <snprintf+0x32>
c0d06a8a:	1c44      	adds	r4, r0, #1
c0d06a8c:	2000      	movs	r0, #0
c0d06a8e:	2120      	movs	r1, #32
c0d06a90:	9105      	str	r1, [sp, #20]
c0d06a92:	9006      	str	r0, [sp, #24]
c0d06a94:	9007      	str	r0, [sp, #28]
c0d06a96:	9302      	str	r3, [sp, #8]
c0d06a98:	4601      	mov	r1, r0
c0d06a9a:	7822      	ldrb	r2, [r4, #0]
c0d06a9c:	1c64      	adds	r4, r4, #1
c0d06a9e:	2000      	movs	r0, #0
c0d06aa0:	2a2d      	cmp	r2, #45	; 0x2d
c0d06aa2:	d0f9      	beq.n	c0d06a98 <snprintf+0x88>
c0d06aa4:	4610      	mov	r0, r2
c0d06aa6:	3830      	subs	r0, #48	; 0x30
c0d06aa8:	280a      	cmp	r0, #10
c0d06aaa:	d312      	bcc.n	c0d06ad2 <snprintf+0xc2>
c0d06aac:	2a25      	cmp	r2, #37	; 0x25
c0d06aae:	d041      	beq.n	c0d06b34 <snprintf+0x124>
c0d06ab0:	2a2a      	cmp	r2, #42	; 0x2a
c0d06ab2:	d01f      	beq.n	c0d06af4 <snprintf+0xe4>
c0d06ab4:	2a2e      	cmp	r2, #46	; 0x2e
c0d06ab6:	d127      	bne.n	c0d06b08 <snprintf+0xf8>
c0d06ab8:	7820      	ldrb	r0, [r4, #0]
c0d06aba:	282a      	cmp	r0, #42	; 0x2a
c0d06abc:	d1c1      	bne.n	c0d06a42 <snprintf+0x32>
c0d06abe:	7860      	ldrb	r0, [r4, #1]
c0d06ac0:	2848      	cmp	r0, #72	; 0x48
c0d06ac2:	d003      	beq.n	c0d06acc <snprintf+0xbc>
c0d06ac4:	2873      	cmp	r0, #115	; 0x73
c0d06ac6:	d001      	beq.n	c0d06acc <snprintf+0xbc>
c0d06ac8:	2868      	cmp	r0, #104	; 0x68
c0d06aca:	d1ba      	bne.n	c0d06a42 <snprintf+0x32>
c0d06acc:	1c64      	adds	r4, r4, #1
c0d06ace:	2001      	movs	r0, #1
c0d06ad0:	e014      	b.n	c0d06afc <snprintf+0xec>
c0d06ad2:	2030      	movs	r0, #48	; 0x30
c0d06ad4:	4613      	mov	r3, r2
c0d06ad6:	4043      	eors	r3, r0
c0d06ad8:	9e07      	ldr	r6, [sp, #28]
c0d06ada:	4333      	orrs	r3, r6
c0d06adc:	d000      	beq.n	c0d06ae0 <snprintf+0xd0>
c0d06ade:	9805      	ldr	r0, [sp, #20]
c0d06ae0:	230a      	movs	r3, #10
c0d06ae2:	9e07      	ldr	r6, [sp, #28]
c0d06ae4:	4373      	muls	r3, r6
c0d06ae6:	189a      	adds	r2, r3, r2
c0d06ae8:	3a30      	subs	r2, #48	; 0x30
c0d06aea:	9207      	str	r2, [sp, #28]
c0d06aec:	9005      	str	r0, [sp, #20]
c0d06aee:	4608      	mov	r0, r1
c0d06af0:	9b02      	ldr	r3, [sp, #8]
c0d06af2:	e7d1      	b.n	c0d06a98 <snprintf+0x88>
c0d06af4:	7820      	ldrb	r0, [r4, #0]
c0d06af6:	2873      	cmp	r0, #115	; 0x73
c0d06af8:	d1a3      	bne.n	c0d06a42 <snprintf+0x32>
c0d06afa:	2002      	movs	r0, #2
c0d06afc:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d06afe:	1d0a      	adds	r2, r1, #4
c0d06b00:	9209      	str	r2, [sp, #36]	; 0x24
c0d06b02:	6809      	ldr	r1, [r1, #0]
c0d06b04:	9106      	str	r1, [sp, #24]
c0d06b06:	e7c7      	b.n	c0d06a98 <snprintf+0x88>
c0d06b08:	2a48      	cmp	r2, #72	; 0x48
c0d06b0a:	d015      	beq.n	c0d06b38 <snprintf+0x128>
c0d06b0c:	2a58      	cmp	r2, #88	; 0x58
c0d06b0e:	d018      	beq.n	c0d06b42 <snprintf+0x132>
c0d06b10:	2a63      	cmp	r2, #99	; 0x63
c0d06b12:	d021      	beq.n	c0d06b58 <snprintf+0x148>
c0d06b14:	2a64      	cmp	r2, #100	; 0x64
c0d06b16:	d02c      	beq.n	c0d06b72 <snprintf+0x162>
c0d06b18:	4897      	ldr	r0, [pc, #604]	; (c0d06d78 <snprintf+0x368>)
c0d06b1a:	4478      	add	r0, pc
c0d06b1c:	9001      	str	r0, [sp, #4]
c0d06b1e:	2a68      	cmp	r2, #104	; 0x68
c0d06b20:	d00d      	beq.n	c0d06b3e <snprintf+0x12e>
c0d06b22:	2a70      	cmp	r2, #112	; 0x70
c0d06b24:	d004      	beq.n	c0d06b30 <snprintf+0x120>
c0d06b26:	2a73      	cmp	r2, #115	; 0x73
c0d06b28:	d100      	bne.n	c0d06b2c <snprintf+0x11c>
c0d06b2a:	e09e      	b.n	c0d06c6a <snprintf+0x25a>
c0d06b2c:	2a78      	cmp	r2, #120	; 0x78
c0d06b2e:	d188      	bne.n	c0d06a42 <snprintf+0x32>
c0d06b30:	2000      	movs	r0, #0
c0d06b32:	e007      	b.n	c0d06b44 <snprintf+0x134>
c0d06b34:	2025      	movs	r0, #37	; 0x25
c0d06b36:	e013      	b.n	c0d06b60 <snprintf+0x150>
c0d06b38:	4890      	ldr	r0, [pc, #576]	; (c0d06d7c <snprintf+0x36c>)
c0d06b3a:	4478      	add	r0, pc
c0d06b3c:	9001      	str	r0, [sp, #4]
c0d06b3e:	9e00      	ldr	r6, [sp, #0]
c0d06b40:	e094      	b.n	c0d06c6c <snprintf+0x25c>
c0d06b42:	2001      	movs	r0, #1
c0d06b44:	9001      	str	r0, [sp, #4]
c0d06b46:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d06b48:	1d01      	adds	r1, r0, #4
c0d06b4a:	9109      	str	r1, [sp, #36]	; 0x24
c0d06b4c:	6800      	ldr	r0, [r0, #0]
c0d06b4e:	9008      	str	r0, [sp, #32]
c0d06b50:	2000      	movs	r0, #0
c0d06b52:	9003      	str	r0, [sp, #12]
c0d06b54:	2610      	movs	r6, #16
c0d06b56:	e019      	b.n	c0d06b8c <snprintf+0x17c>
c0d06b58:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d06b5a:	1d01      	adds	r1, r0, #4
c0d06b5c:	9109      	str	r1, [sp, #36]	; 0x24
c0d06b5e:	6800      	ldr	r0, [r0, #0]
c0d06b60:	7018      	strb	r0, [r3, #0]
c0d06b62:	9804      	ldr	r0, [sp, #16]
c0d06b64:	1e40      	subs	r0, r0, #1
c0d06b66:	1c5b      	adds	r3, r3, #1
c0d06b68:	9004      	str	r0, [sp, #16]
c0d06b6a:	2800      	cmp	r0, #0
c0d06b6c:	d000      	beq.n	c0d06b70 <snprintf+0x160>
c0d06b6e:	e768      	b.n	c0d06a42 <snprintf+0x32>
c0d06b70:	e0fc      	b.n	c0d06d6c <snprintf+0x35c>
c0d06b72:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d06b74:	1d01      	adds	r1, r0, #4
c0d06b76:	9109      	str	r1, [sp, #36]	; 0x24
c0d06b78:	6800      	ldr	r0, [r0, #0]
c0d06b7a:	17c1      	asrs	r1, r0, #31
c0d06b7c:	1842      	adds	r2, r0, r1
c0d06b7e:	404a      	eors	r2, r1
c0d06b80:	9208      	str	r2, [sp, #32]
c0d06b82:	0fc0      	lsrs	r0, r0, #31
c0d06b84:	9003      	str	r0, [sp, #12]
c0d06b86:	2000      	movs	r0, #0
c0d06b88:	9001      	str	r0, [sp, #4]
c0d06b8a:	260a      	movs	r6, #10
c0d06b8c:	487c      	ldr	r0, [pc, #496]	; (c0d06d80 <snprintf+0x370>)
c0d06b8e:	4478      	add	r0, pc
c0d06b90:	9006      	str	r0, [sp, #24]
c0d06b92:	2501      	movs	r5, #1
c0d06b94:	2700      	movs	r7, #0
c0d06b96:	4630      	mov	r0, r6
c0d06b98:	4639      	mov	r1, r7
c0d06b9a:	462a      	mov	r2, r5
c0d06b9c:	463b      	mov	r3, r7
c0d06b9e:	f000 fa35 	bl	c0d0700c <__aeabi_lmul>
c0d06ba2:	1e4a      	subs	r2, r1, #1
c0d06ba4:	4191      	sbcs	r1, r2
c0d06ba6:	9a08      	ldr	r2, [sp, #32]
c0d06ba8:	4290      	cmp	r0, r2
c0d06baa:	d806      	bhi.n	c0d06bba <snprintf+0x1aa>
c0d06bac:	2900      	cmp	r1, #0
c0d06bae:	d104      	bne.n	c0d06bba <snprintf+0x1aa>
c0d06bb0:	9907      	ldr	r1, [sp, #28]
c0d06bb2:	1e49      	subs	r1, r1, #1
c0d06bb4:	9107      	str	r1, [sp, #28]
c0d06bb6:	4605      	mov	r5, r0
c0d06bb8:	e7ec      	b.n	c0d06b94 <snprintf+0x184>
c0d06bba:	9803      	ldr	r0, [sp, #12]
c0d06bbc:	2800      	cmp	r0, #0
c0d06bbe:	9b07      	ldr	r3, [sp, #28]
c0d06bc0:	d101      	bne.n	c0d06bc6 <snprintf+0x1b6>
c0d06bc2:	4601      	mov	r1, r0
c0d06bc4:	e000      	b.n	c0d06bc8 <snprintf+0x1b8>
c0d06bc6:	43f9      	mvns	r1, r7
c0d06bc8:	2800      	cmp	r0, #0
c0d06bca:	9800      	ldr	r0, [sp, #0]
c0d06bcc:	9003      	str	r0, [sp, #12]
c0d06bce:	d00b      	beq.n	c0d06be8 <snprintf+0x1d8>
c0d06bd0:	9805      	ldr	r0, [sp, #20]
c0d06bd2:	b2c0      	uxtb	r0, r0
c0d06bd4:	2700      	movs	r7, #0
c0d06bd6:	2830      	cmp	r0, #48	; 0x30
c0d06bd8:	9703      	str	r7, [sp, #12]
c0d06bda:	d105      	bne.n	c0d06be8 <snprintf+0x1d8>
c0d06bdc:	a80a      	add	r0, sp, #40	; 0x28
c0d06bde:	222d      	movs	r2, #45	; 0x2d
c0d06be0:	7002      	strb	r2, [r0, #0]
c0d06be2:	2701      	movs	r7, #1
c0d06be4:	9800      	ldr	r0, [sp, #0]
c0d06be6:	9003      	str	r0, [sp, #12]
c0d06be8:	18ca      	adds	r2, r1, r3
c0d06bea:	1e92      	subs	r2, r2, #2
c0d06bec:	2a0d      	cmp	r2, #13
c0d06bee:	d809      	bhi.n	c0d06c04 <snprintf+0x1f4>
c0d06bf0:	2201      	movs	r2, #1
c0d06bf2:	1a51      	subs	r1, r2, r1
c0d06bf4:	428b      	cmp	r3, r1
c0d06bf6:	d005      	beq.n	c0d06c04 <snprintf+0x1f4>
c0d06bf8:	aa0a      	add	r2, sp, #40	; 0x28
c0d06bfa:	9805      	ldr	r0, [sp, #20]
c0d06bfc:	55d0      	strb	r0, [r2, r7]
c0d06bfe:	1c49      	adds	r1, r1, #1
c0d06c00:	1c7f      	adds	r7, r7, #1
c0d06c02:	e7f7      	b.n	c0d06bf4 <snprintf+0x1e4>
c0d06c04:	9803      	ldr	r0, [sp, #12]
c0d06c06:	2800      	cmp	r0, #0
c0d06c08:	d103      	bne.n	c0d06c12 <snprintf+0x202>
c0d06c0a:	a80a      	add	r0, sp, #40	; 0x28
c0d06c0c:	212d      	movs	r1, #45	; 0x2d
c0d06c0e:	55c1      	strb	r1, [r0, r7]
c0d06c10:	1c7f      	adds	r7, r7, #1
c0d06c12:	9801      	ldr	r0, [sp, #4]
c0d06c14:	2800      	cmp	r0, #0
c0d06c16:	d114      	bne.n	c0d06c42 <snprintf+0x232>
c0d06c18:	485a      	ldr	r0, [pc, #360]	; (c0d06d84 <snprintf+0x374>)
c0d06c1a:	4478      	add	r0, pc
c0d06c1c:	9006      	str	r0, [sp, #24]
c0d06c1e:	e010      	b.n	c0d06c42 <snprintf+0x232>
c0d06c20:	9808      	ldr	r0, [sp, #32]
c0d06c22:	4629      	mov	r1, r5
c0d06c24:	f000 f9aa 	bl	c0d06f7c <__udivsi3>
c0d06c28:	4631      	mov	r1, r6
c0d06c2a:	f000 f9e3 	bl	c0d06ff4 <__aeabi_uidivmod>
c0d06c2e:	9806      	ldr	r0, [sp, #24]
c0d06c30:	5c40      	ldrb	r0, [r0, r1]
c0d06c32:	a90a      	add	r1, sp, #40	; 0x28
c0d06c34:	55c8      	strb	r0, [r1, r7]
c0d06c36:	4628      	mov	r0, r5
c0d06c38:	4631      	mov	r1, r6
c0d06c3a:	f000 f99f 	bl	c0d06f7c <__udivsi3>
c0d06c3e:	4605      	mov	r5, r0
c0d06c40:	1c7f      	adds	r7, r7, #1
c0d06c42:	2d00      	cmp	r5, #0
c0d06c44:	d1ec      	bne.n	c0d06c20 <snprintf+0x210>
c0d06c46:	9d04      	ldr	r5, [sp, #16]
c0d06c48:	42af      	cmp	r7, r5
c0d06c4a:	d300      	bcc.n	c0d06c4e <snprintf+0x23e>
c0d06c4c:	462f      	mov	r7, r5
c0d06c4e:	a90a      	add	r1, sp, #40	; 0x28
c0d06c50:	9e02      	ldr	r6, [sp, #8]
c0d06c52:	4630      	mov	r0, r6
c0d06c54:	463a      	mov	r2, r7
c0d06c56:	f000 fa07 	bl	c0d07068 <__aeabi_memmove>
c0d06c5a:	4633      	mov	r3, r6
c0d06c5c:	1bed      	subs	r5, r5, r7
c0d06c5e:	19f3      	adds	r3, r6, r7
c0d06c60:	9504      	str	r5, [sp, #16]
c0d06c62:	2d00      	cmp	r5, #0
c0d06c64:	d100      	bne.n	c0d06c68 <snprintf+0x258>
c0d06c66:	e081      	b.n	c0d06d6c <snprintf+0x35c>
c0d06c68:	e6eb      	b.n	c0d06a42 <snprintf+0x32>
c0d06c6a:	2600      	movs	r6, #0
c0d06c6c:	9a09      	ldr	r2, [sp, #36]	; 0x24
c0d06c6e:	1d13      	adds	r3, r2, #4
c0d06c70:	9309      	str	r3, [sp, #36]	; 0x24
c0d06c72:	b2cb      	uxtb	r3, r1
c0d06c74:	6811      	ldr	r1, [r2, #0]
c0d06c76:	2b02      	cmp	r3, #2
c0d06c78:	d05e      	beq.n	c0d06d38 <snprintf+0x328>
c0d06c7a:	2b01      	cmp	r3, #1
c0d06c7c:	d009      	beq.n	c0d06c92 <snprintf+0x282>
c0d06c7e:	2b00      	cmp	r3, #0
c0d06c80:	9506      	str	r5, [sp, #24]
c0d06c82:	d106      	bne.n	c0d06c92 <snprintf+0x282>
c0d06c84:	2300      	movs	r3, #0
c0d06c86:	5cca      	ldrb	r2, [r1, r3]
c0d06c88:	1c5b      	adds	r3, r3, #1
c0d06c8a:	2a00      	cmp	r2, #0
c0d06c8c:	d1fb      	bne.n	c0d06c86 <snprintf+0x276>
c0d06c8e:	1e58      	subs	r0, r3, #1
c0d06c90:	9006      	str	r0, [sp, #24]
c0d06c92:	2e00      	cmp	r6, #0
c0d06c94:	9802      	ldr	r0, [sp, #8]
c0d06c96:	d029      	beq.n	c0d06cec <snprintf+0x2dc>
c0d06c98:	460a      	mov	r2, r1
c0d06c9a:	9803      	ldr	r0, [sp, #12]
c0d06c9c:	42b8      	cmp	r0, r7
c0d06c9e:	d300      	bcc.n	c0d06ca2 <snprintf+0x292>
c0d06ca0:	4638      	mov	r0, r7
c0d06ca2:	1c81      	adds	r1, r0, #2
c0d06ca4:	2301      	movs	r3, #1
c0d06ca6:	43d8      	mvns	r0, r3
c0d06ca8:	9005      	str	r0, [sp, #20]
c0d06caa:	9804      	ldr	r0, [sp, #16]
c0d06cac:	9e06      	ldr	r6, [sp, #24]
c0d06cae:	9b08      	ldr	r3, [sp, #32]
c0d06cb0:	185d      	adds	r5, r3, r1
c0d06cb2:	2e00      	cmp	r6, #0
c0d06cb4:	d056      	beq.n	c0d06d64 <snprintf+0x354>
c0d06cb6:	9606      	str	r6, [sp, #24]
c0d06cb8:	2801      	cmp	r0, #1
c0d06cba:	d957      	bls.n	c0d06d6c <snprintf+0x35c>
c0d06cbc:	4607      	mov	r7, r0
c0d06cbe:	7816      	ldrb	r6, [r2, #0]
c0d06cc0:	0930      	lsrs	r0, r6, #4
c0d06cc2:	9107      	str	r1, [sp, #28]
c0d06cc4:	9901      	ldr	r1, [sp, #4]
c0d06cc6:	5c08      	ldrb	r0, [r1, r0]
c0d06cc8:	9b05      	ldr	r3, [sp, #20]
c0d06cca:	54e8      	strb	r0, [r5, r3]
c0d06ccc:	1958      	adds	r0, r3, r5
c0d06cce:	250f      	movs	r5, #15
c0d06cd0:	4035      	ands	r5, r6
c0d06cd2:	5d4d      	ldrb	r5, [r1, r5]
c0d06cd4:	9907      	ldr	r1, [sp, #28]
c0d06cd6:	7045      	strb	r5, [r0, #1]
c0d06cd8:	9803      	ldr	r0, [sp, #12]
c0d06cda:	4288      	cmp	r0, r1
c0d06cdc:	d046      	beq.n	c0d06d6c <snprintf+0x35c>
c0d06cde:	4638      	mov	r0, r7
c0d06ce0:	1eb8      	subs	r0, r7, #2
c0d06ce2:	1c89      	adds	r1, r1, #2
c0d06ce4:	1c52      	adds	r2, r2, #1
c0d06ce6:	9e06      	ldr	r6, [sp, #24]
c0d06ce8:	1e76      	subs	r6, r6, #1
c0d06cea:	e7e0      	b.n	c0d06cae <snprintf+0x29e>
c0d06cec:	9e04      	ldr	r6, [sp, #16]
c0d06cee:	9f06      	ldr	r7, [sp, #24]
c0d06cf0:	42b7      	cmp	r7, r6
c0d06cf2:	463d      	mov	r5, r7
c0d06cf4:	d301      	bcc.n	c0d06cfa <snprintf+0x2ea>
c0d06cf6:	4635      	mov	r5, r6
c0d06cf8:	4637      	mov	r7, r6
c0d06cfa:	462a      	mov	r2, r5
c0d06cfc:	f000 f9b4 	bl	c0d07068 <__aeabi_memmove>
c0d06d00:	9b02      	ldr	r3, [sp, #8]
c0d06d02:	1b76      	subs	r6, r6, r5
c0d06d04:	9604      	str	r6, [sp, #16]
c0d06d06:	d031      	beq.n	c0d06d6c <snprintf+0x35c>
c0d06d08:	19db      	adds	r3, r3, r7
c0d06d0a:	9807      	ldr	r0, [sp, #28]
c0d06d0c:	42a8      	cmp	r0, r5
c0d06d0e:	d800      	bhi.n	c0d06d12 <snprintf+0x302>
c0d06d10:	e697      	b.n	c0d06a42 <snprintf+0x32>
c0d06d12:	9807      	ldr	r0, [sp, #28]
c0d06d14:	1b45      	subs	r5, r0, r5
c0d06d16:	9e04      	ldr	r6, [sp, #16]
c0d06d18:	42b5      	cmp	r5, r6
c0d06d1a:	d300      	bcc.n	c0d06d1e <snprintf+0x30e>
c0d06d1c:	4635      	mov	r5, r6
c0d06d1e:	2220      	movs	r2, #32
c0d06d20:	4618      	mov	r0, r3
c0d06d22:	4629      	mov	r1, r5
c0d06d24:	461f      	mov	r7, r3
c0d06d26:	f000 f9a3 	bl	c0d07070 <__aeabi_memset>
c0d06d2a:	463b      	mov	r3, r7
c0d06d2c:	1b76      	subs	r6, r6, r5
c0d06d2e:	197b      	adds	r3, r7, r5
c0d06d30:	9604      	str	r6, [sp, #16]
c0d06d32:	2e00      	cmp	r6, #0
c0d06d34:	d01a      	beq.n	c0d06d6c <snprintf+0x35c>
c0d06d36:	e684      	b.n	c0d06a42 <snprintf+0x32>
c0d06d38:	7808      	ldrb	r0, [r1, #0]
c0d06d3a:	2800      	cmp	r0, #0
c0d06d3c:	9b02      	ldr	r3, [sp, #8]
c0d06d3e:	d000      	beq.n	c0d06d42 <snprintf+0x332>
c0d06d40:	e67f      	b.n	c0d06a42 <snprintf+0x32>
c0d06d42:	9804      	ldr	r0, [sp, #16]
c0d06d44:	9e06      	ldr	r6, [sp, #24]
c0d06d46:	4286      	cmp	r6, r0
c0d06d48:	d300      	bcc.n	c0d06d4c <snprintf+0x33c>
c0d06d4a:	4606      	mov	r6, r0
c0d06d4c:	2220      	movs	r2, #32
c0d06d4e:	4618      	mov	r0, r3
c0d06d50:	4631      	mov	r1, r6
c0d06d52:	f000 f98d 	bl	c0d07070 <__aeabi_memset>
c0d06d56:	9b02      	ldr	r3, [sp, #8]
c0d06d58:	4637      	mov	r7, r6
c0d06d5a:	9804      	ldr	r0, [sp, #16]
c0d06d5c:	1b80      	subs	r0, r0, r6
c0d06d5e:	9004      	str	r0, [sp, #16]
c0d06d60:	d1d2      	bne.n	c0d06d08 <snprintf+0x2f8>
c0d06d62:	e003      	b.n	c0d06d6c <snprintf+0x35c>
c0d06d64:	9004      	str	r0, [sp, #16]
c0d06d66:	9805      	ldr	r0, [sp, #20]
c0d06d68:	182b      	adds	r3, r5, r0
c0d06d6a:	e66a      	b.n	c0d06a42 <snprintf+0x32>
c0d06d6c:	2000      	movs	r0, #0
c0d06d6e:	b00e      	add	sp, #56	; 0x38
c0d06d70:	bcf0      	pop	{r4, r5, r6, r7}
c0d06d72:	bc02      	pop	{r1}
c0d06d74:	b001      	add	sp, #4
c0d06d76:	4708      	bx	r1
c0d06d78:	000036f6 	.word	0x000036f6
c0d06d7c:	000036e6 	.word	0x000036e6
c0d06d80:	00003692 	.word	0x00003692
c0d06d84:	000035f6 	.word	0x000035f6

c0d06d88 <pic_internal>:
c0d06d88:	467a      	mov	r2, pc
c0d06d8a:	4902      	ldr	r1, [pc, #8]	; (c0d06d94 <pic_internal+0xc>)
c0d06d8c:	1cc9      	adds	r1, r1, #3
c0d06d8e:	1a89      	subs	r1, r1, r2
c0d06d90:	1a40      	subs	r0, r0, r1
c0d06d92:	4770      	bx	lr
c0d06d94:	c0d06d89 	.word	0xc0d06d89

c0d06d98 <pic>:
c0d06d98:	b580      	push	{r7, lr}
c0d06d9a:	4904      	ldr	r1, [pc, #16]	; (c0d06dac <pic+0x14>)
c0d06d9c:	4288      	cmp	r0, r1
c0d06d9e:	d304      	bcc.n	c0d06daa <pic+0x12>
c0d06da0:	4903      	ldr	r1, [pc, #12]	; (c0d06db0 <pic+0x18>)
c0d06da2:	4288      	cmp	r0, r1
c0d06da4:	d201      	bcs.n	c0d06daa <pic+0x12>
c0d06da6:	f7ff ffef 	bl	c0d06d88 <pic_internal>
c0d06daa:	bd80      	pop	{r7, pc}
c0d06dac:	c0d00000 	.word	0xc0d00000
c0d06db0:	c0d0c2d6 	.word	0xc0d0c2d6

c0d06db4 <SVC_Call>:
c0d06db4:	df01      	svc	1
c0d06db6:	2900      	cmp	r1, #0
c0d06db8:	d100      	bne.n	c0d06dbc <exception>
c0d06dba:	4770      	bx	lr

c0d06dbc <exception>:
c0d06dbc:	4608      	mov	r0, r1
c0d06dbe:	f7ff f97a 	bl	c0d060b6 <os_longjmp>

c0d06dc2 <SVC_cx_call>:
c0d06dc2:	df01      	svc	1
c0d06dc4:	4770      	bx	lr
	...

c0d06dc8 <halt>:
c0d06dc8:	b5e0      	push	{r5, r6, r7, lr}
c0d06dca:	2000      	movs	r0, #0
c0d06dcc:	9001      	str	r0, [sp, #4]
c0d06dce:	4802      	ldr	r0, [pc, #8]	; (c0d06dd8 <halt+0x10>)
c0d06dd0:	4669      	mov	r1, sp
c0d06dd2:	f7ff ffef 	bl	c0d06db4 <SVC_Call>
c0d06dd6:	bd8c      	pop	{r2, r3, r7, pc}
c0d06dd8:	6000023c 	.word	0x6000023c

c0d06ddc <nvm_write>:
c0d06ddc:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0d06dde:	ab01      	add	r3, sp, #4
c0d06de0:	c307      	stmia	r3!, {r0, r1, r2}
c0d06de2:	4803      	ldr	r0, [pc, #12]	; (c0d06df0 <nvm_write+0x14>)
c0d06de4:	a901      	add	r1, sp, #4
c0d06de6:	f7ff ffe5 	bl	c0d06db4 <SVC_Call>
c0d06dea:	b006      	add	sp, #24
c0d06dec:	bd80      	pop	{r7, pc}
c0d06dee:	46c0      	nop			; (mov r8, r8)
c0d06df0:	6000037f 	.word	0x6000037f

c0d06df4 <cx_get_random_bytes>:
c0d06df4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d06df6:	9101      	str	r1, [sp, #4]
c0d06df8:	9000      	str	r0, [sp, #0]
c0d06dfa:	4803      	ldr	r0, [pc, #12]	; (c0d06e08 <cx_get_random_bytes+0x14>)
c0d06dfc:	4669      	mov	r1, sp
c0d06dfe:	f7ff ffe0 	bl	c0d06dc2 <SVC_cx_call>
c0d06e02:	b004      	add	sp, #16
c0d06e04:	bd80      	pop	{r7, pc}
c0d06e06:	46c0      	nop			; (mov r8, r8)
c0d06e08:	60010775 	.word	0x60010775

c0d06e0c <os_perso_isonboarded>:
c0d06e0c:	b5e0      	push	{r5, r6, r7, lr}
c0d06e0e:	2000      	movs	r0, #0
c0d06e10:	9001      	str	r0, [sp, #4]
c0d06e12:	4803      	ldr	r0, [pc, #12]	; (c0d06e20 <os_perso_isonboarded+0x14>)
c0d06e14:	4669      	mov	r1, sp
c0d06e16:	f7ff ffcd 	bl	c0d06db4 <SVC_Call>
c0d06e1a:	b2c0      	uxtb	r0, r0
c0d06e1c:	bd8c      	pop	{r2, r3, r7, pc}
c0d06e1e:	46c0      	nop			; (mov r8, r8)
c0d06e20:	60009f4f 	.word	0x60009f4f

c0d06e24 <os_perso_derive_node_with_seed_key>:
c0d06e24:	b510      	push	{r4, lr}
c0d06e26:	b08a      	sub	sp, #40	; 0x28
c0d06e28:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
c0d06e2a:	9407      	str	r4, [sp, #28]
c0d06e2c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
c0d06e2e:	9406      	str	r4, [sp, #24]
c0d06e30:	9c0d      	ldr	r4, [sp, #52]	; 0x34
c0d06e32:	9405      	str	r4, [sp, #20]
c0d06e34:	9c0c      	ldr	r4, [sp, #48]	; 0x30
c0d06e36:	9404      	str	r4, [sp, #16]
c0d06e38:	9303      	str	r3, [sp, #12]
c0d06e3a:	9202      	str	r2, [sp, #8]
c0d06e3c:	9101      	str	r1, [sp, #4]
c0d06e3e:	9000      	str	r0, [sp, #0]
c0d06e40:	4802      	ldr	r0, [pc, #8]	; (c0d06e4c <os_perso_derive_node_with_seed_key+0x28>)
c0d06e42:	4669      	mov	r1, sp
c0d06e44:	f7ff ffb6 	bl	c0d06db4 <SVC_Call>
c0d06e48:	b00a      	add	sp, #40	; 0x28
c0d06e4a:	bd10      	pop	{r4, pc}
c0d06e4c:	6000a6d8 	.word	0x6000a6d8

c0d06e50 <os_global_pin_is_validated>:
c0d06e50:	b5e0      	push	{r5, r6, r7, lr}
c0d06e52:	2000      	movs	r0, #0
c0d06e54:	9001      	str	r0, [sp, #4]
c0d06e56:	4803      	ldr	r0, [pc, #12]	; (c0d06e64 <os_global_pin_is_validated+0x14>)
c0d06e58:	4669      	mov	r1, sp
c0d06e5a:	f7ff ffab 	bl	c0d06db4 <SVC_Call>
c0d06e5e:	b2c0      	uxtb	r0, r0
c0d06e60:	bd8c      	pop	{r2, r3, r7, pc}
c0d06e62:	46c0      	nop			; (mov r8, r8)
c0d06e64:	6000a03c 	.word	0x6000a03c

c0d06e68 <os_ux>:
c0d06e68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d06e6a:	2100      	movs	r1, #0
c0d06e6c:	9102      	str	r1, [sp, #8]
c0d06e6e:	9001      	str	r0, [sp, #4]
c0d06e70:	4802      	ldr	r0, [pc, #8]	; (c0d06e7c <os_ux+0x14>)
c0d06e72:	a901      	add	r1, sp, #4
c0d06e74:	f7ff ff9e 	bl	c0d06db4 <SVC_Call>
c0d06e78:	b004      	add	sp, #16
c0d06e7a:	bd80      	pop	{r7, pc}
c0d06e7c:	60006458 	.word	0x60006458

c0d06e80 <os_flags>:
c0d06e80:	b5e0      	push	{r5, r6, r7, lr}
c0d06e82:	2000      	movs	r0, #0
c0d06e84:	9001      	str	r0, [sp, #4]
c0d06e86:	4802      	ldr	r0, [pc, #8]	; (c0d06e90 <os_flags+0x10>)
c0d06e88:	4669      	mov	r1, sp
c0d06e8a:	f7ff ff93 	bl	c0d06db4 <SVC_Call>
c0d06e8e:	bd8c      	pop	{r2, r3, r7, pc}
c0d06e90:	60006a6e 	.word	0x60006a6e

c0d06e94 <os_version>:
c0d06e94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d06e96:	9101      	str	r1, [sp, #4]
c0d06e98:	9000      	str	r0, [sp, #0]
c0d06e9a:	4803      	ldr	r0, [pc, #12]	; (c0d06ea8 <os_version+0x14>)
c0d06e9c:	4669      	mov	r1, sp
c0d06e9e:	f7ff ff89 	bl	c0d06db4 <SVC_Call>
c0d06ea2:	b004      	add	sp, #16
c0d06ea4:	bd80      	pop	{r7, pc}
c0d06ea6:	46c0      	nop			; (mov r8, r8)
c0d06ea8:	60006bb8 	.word	0x60006bb8

c0d06eac <os_seph_version>:
c0d06eac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d06eae:	9101      	str	r1, [sp, #4]
c0d06eb0:	9000      	str	r0, [sp, #0]
c0d06eb2:	4803      	ldr	r0, [pc, #12]	; (c0d06ec0 <os_seph_version+0x14>)
c0d06eb4:	4669      	mov	r1, sp
c0d06eb6:	f7ff ff7d 	bl	c0d06db4 <SVC_Call>
c0d06eba:	b004      	add	sp, #16
c0d06ebc:	bd80      	pop	{r7, pc}
c0d06ebe:	46c0      	nop			; (mov r8, r8)
c0d06ec0:	60006fac 	.word	0x60006fac

c0d06ec4 <os_registry_get_current_app_tag>:
c0d06ec4:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0d06ec6:	ab01      	add	r3, sp, #4
c0d06ec8:	c307      	stmia	r3!, {r0, r1, r2}
c0d06eca:	4803      	ldr	r0, [pc, #12]	; (c0d06ed8 <os_registry_get_current_app_tag+0x14>)
c0d06ecc:	a901      	add	r1, sp, #4
c0d06ece:	f7ff ff71 	bl	c0d06db4 <SVC_Call>
c0d06ed2:	b006      	add	sp, #24
c0d06ed4:	bd80      	pop	{r7, pc}
c0d06ed6:	46c0      	nop			; (mov r8, r8)
c0d06ed8:	600074d4 	.word	0x600074d4

c0d06edc <os_sched_exit>:
c0d06edc:	b084      	sub	sp, #16
c0d06ede:	2100      	movs	r1, #0
c0d06ee0:	9102      	str	r1, [sp, #8]
c0d06ee2:	9001      	str	r0, [sp, #4]
c0d06ee4:	4802      	ldr	r0, [pc, #8]	; (c0d06ef0 <os_sched_exit+0x14>)
c0d06ee6:	a901      	add	r1, sp, #4
c0d06ee8:	f7ff ff64 	bl	c0d06db4 <SVC_Call>
c0d06eec:	deff      	udf	#255	; 0xff
c0d06eee:	46c0      	nop			; (mov r8, r8)
c0d06ef0:	60009abe 	.word	0x60009abe

c0d06ef4 <io_seph_send>:
c0d06ef4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d06ef6:	9101      	str	r1, [sp, #4]
c0d06ef8:	9000      	str	r0, [sp, #0]
c0d06efa:	4802      	ldr	r0, [pc, #8]	; (c0d06f04 <io_seph_send+0x10>)
c0d06efc:	4669      	mov	r1, sp
c0d06efe:	f7ff ff59 	bl	c0d06db4 <SVC_Call>
c0d06f02:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0d06f04:	60008381 	.word	0x60008381

c0d06f08 <io_seph_is_status_sent>:
c0d06f08:	b5e0      	push	{r5, r6, r7, lr}
c0d06f0a:	2000      	movs	r0, #0
c0d06f0c:	9001      	str	r0, [sp, #4]
c0d06f0e:	4802      	ldr	r0, [pc, #8]	; (c0d06f18 <io_seph_is_status_sent+0x10>)
c0d06f10:	4669      	mov	r1, sp
c0d06f12:	f7ff ff4f 	bl	c0d06db4 <SVC_Call>
c0d06f16:	bd8c      	pop	{r2, r3, r7, pc}
c0d06f18:	600084bb 	.word	0x600084bb

c0d06f1c <io_seph_recv>:
c0d06f1c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0d06f1e:	ab01      	add	r3, sp, #4
c0d06f20:	c307      	stmia	r3!, {r0, r1, r2}
c0d06f22:	4803      	ldr	r0, [pc, #12]	; (c0d06f30 <io_seph_recv+0x14>)
c0d06f24:	a901      	add	r1, sp, #4
c0d06f26:	f7ff ff45 	bl	c0d06db4 <SVC_Call>
c0d06f2a:	b280      	uxth	r0, r0
c0d06f2c:	b006      	add	sp, #24
c0d06f2e:	bd80      	pop	{r7, pc}
c0d06f30:	600085e4 	.word	0x600085e4

c0d06f34 <try_context_get>:
c0d06f34:	b5e0      	push	{r5, r6, r7, lr}
c0d06f36:	2000      	movs	r0, #0
c0d06f38:	9001      	str	r0, [sp, #4]
c0d06f3a:	4802      	ldr	r0, [pc, #8]	; (c0d06f44 <try_context_get+0x10>)
c0d06f3c:	4669      	mov	r1, sp
c0d06f3e:	f7ff ff39 	bl	c0d06db4 <SVC_Call>
c0d06f42:	bd8c      	pop	{r2, r3, r7, pc}
c0d06f44:	600087b1 	.word	0x600087b1

c0d06f48 <try_context_set>:
c0d06f48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d06f4a:	2100      	movs	r1, #0
c0d06f4c:	9102      	str	r1, [sp, #8]
c0d06f4e:	9001      	str	r0, [sp, #4]
c0d06f50:	4802      	ldr	r0, [pc, #8]	; (c0d06f5c <try_context_set+0x14>)
c0d06f52:	a901      	add	r1, sp, #4
c0d06f54:	f7ff ff2e 	bl	c0d06db4 <SVC_Call>
c0d06f58:	b004      	add	sp, #16
c0d06f5a:	bd80      	pop	{r7, pc}
c0d06f5c:	60010b06 	.word	0x60010b06

c0d06f60 <os_sched_last_status>:
c0d06f60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0d06f62:	2100      	movs	r1, #0
c0d06f64:	9102      	str	r1, [sp, #8]
c0d06f66:	9001      	str	r0, [sp, #4]
c0d06f68:	4803      	ldr	r0, [pc, #12]	; (c0d06f78 <os_sched_last_status+0x18>)
c0d06f6a:	a901      	add	r1, sp, #4
c0d06f6c:	f7ff ff22 	bl	c0d06db4 <SVC_Call>
c0d06f70:	b2c0      	uxtb	r0, r0
c0d06f72:	b004      	add	sp, #16
c0d06f74:	bd80      	pop	{r7, pc}
c0d06f76:	46c0      	nop			; (mov r8, r8)
c0d06f78:	60009c8b 	.word	0x60009c8b

c0d06f7c <__udivsi3>:
c0d06f7c:	2900      	cmp	r1, #0
c0d06f7e:	d034      	beq.n	c0d06fea <.udivsi3_skip_div0_test+0x6a>

c0d06f80 <.udivsi3_skip_div0_test>:
c0d06f80:	2301      	movs	r3, #1
c0d06f82:	2200      	movs	r2, #0
c0d06f84:	b410      	push	{r4}
c0d06f86:	4288      	cmp	r0, r1
c0d06f88:	d32c      	bcc.n	c0d06fe4 <.udivsi3_skip_div0_test+0x64>
c0d06f8a:	2401      	movs	r4, #1
c0d06f8c:	0724      	lsls	r4, r4, #28
c0d06f8e:	42a1      	cmp	r1, r4
c0d06f90:	d204      	bcs.n	c0d06f9c <.udivsi3_skip_div0_test+0x1c>
c0d06f92:	4281      	cmp	r1, r0
c0d06f94:	d202      	bcs.n	c0d06f9c <.udivsi3_skip_div0_test+0x1c>
c0d06f96:	0109      	lsls	r1, r1, #4
c0d06f98:	011b      	lsls	r3, r3, #4
c0d06f9a:	e7f8      	b.n	c0d06f8e <.udivsi3_skip_div0_test+0xe>
c0d06f9c:	00e4      	lsls	r4, r4, #3
c0d06f9e:	42a1      	cmp	r1, r4
c0d06fa0:	d204      	bcs.n	c0d06fac <.udivsi3_skip_div0_test+0x2c>
c0d06fa2:	4281      	cmp	r1, r0
c0d06fa4:	d202      	bcs.n	c0d06fac <.udivsi3_skip_div0_test+0x2c>
c0d06fa6:	0049      	lsls	r1, r1, #1
c0d06fa8:	005b      	lsls	r3, r3, #1
c0d06faa:	e7f8      	b.n	c0d06f9e <.udivsi3_skip_div0_test+0x1e>
c0d06fac:	4288      	cmp	r0, r1
c0d06fae:	d301      	bcc.n	c0d06fb4 <.udivsi3_skip_div0_test+0x34>
c0d06fb0:	1a40      	subs	r0, r0, r1
c0d06fb2:	431a      	orrs	r2, r3
c0d06fb4:	084c      	lsrs	r4, r1, #1
c0d06fb6:	42a0      	cmp	r0, r4
c0d06fb8:	d302      	bcc.n	c0d06fc0 <.udivsi3_skip_div0_test+0x40>
c0d06fba:	1b00      	subs	r0, r0, r4
c0d06fbc:	085c      	lsrs	r4, r3, #1
c0d06fbe:	4322      	orrs	r2, r4
c0d06fc0:	088c      	lsrs	r4, r1, #2
c0d06fc2:	42a0      	cmp	r0, r4
c0d06fc4:	d302      	bcc.n	c0d06fcc <.udivsi3_skip_div0_test+0x4c>
c0d06fc6:	1b00      	subs	r0, r0, r4
c0d06fc8:	089c      	lsrs	r4, r3, #2
c0d06fca:	4322      	orrs	r2, r4
c0d06fcc:	08cc      	lsrs	r4, r1, #3
c0d06fce:	42a0      	cmp	r0, r4
c0d06fd0:	d302      	bcc.n	c0d06fd8 <.udivsi3_skip_div0_test+0x58>
c0d06fd2:	1b00      	subs	r0, r0, r4
c0d06fd4:	08dc      	lsrs	r4, r3, #3
c0d06fd6:	4322      	orrs	r2, r4
c0d06fd8:	2800      	cmp	r0, #0
c0d06fda:	d003      	beq.n	c0d06fe4 <.udivsi3_skip_div0_test+0x64>
c0d06fdc:	091b      	lsrs	r3, r3, #4
c0d06fde:	d001      	beq.n	c0d06fe4 <.udivsi3_skip_div0_test+0x64>
c0d06fe0:	0909      	lsrs	r1, r1, #4
c0d06fe2:	e7e3      	b.n	c0d06fac <.udivsi3_skip_div0_test+0x2c>
c0d06fe4:	0010      	movs	r0, r2
c0d06fe6:	bc10      	pop	{r4}
c0d06fe8:	4770      	bx	lr
c0d06fea:	b501      	push	{r0, lr}
c0d06fec:	2000      	movs	r0, #0
c0d06fee:	f000 f80b 	bl	c0d07008 <__aeabi_idiv0>
c0d06ff2:	bd02      	pop	{r1, pc}

c0d06ff4 <__aeabi_uidivmod>:
c0d06ff4:	2900      	cmp	r1, #0
c0d06ff6:	d0f8      	beq.n	c0d06fea <.udivsi3_skip_div0_test+0x6a>
c0d06ff8:	b503      	push	{r0, r1, lr}
c0d06ffa:	f7ff ffc1 	bl	c0d06f80 <.udivsi3_skip_div0_test>
c0d06ffe:	bc0e      	pop	{r1, r2, r3}
c0d07000:	4342      	muls	r2, r0
c0d07002:	1a89      	subs	r1, r1, r2
c0d07004:	4718      	bx	r3
c0d07006:	46c0      	nop			; (mov r8, r8)

c0d07008 <__aeabi_idiv0>:
c0d07008:	4770      	bx	lr
c0d0700a:	46c0      	nop			; (mov r8, r8)

c0d0700c <__aeabi_lmul>:
c0d0700c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
c0d0700e:	9301      	str	r3, [sp, #4]
c0d07010:	b283      	uxth	r3, r0
c0d07012:	469c      	mov	ip, r3
c0d07014:	0006      	movs	r6, r0
c0d07016:	0c03      	lsrs	r3, r0, #16
c0d07018:	4660      	mov	r0, ip
c0d0701a:	000d      	movs	r5, r1
c0d0701c:	4661      	mov	r1, ip
c0d0701e:	b297      	uxth	r7, r2
c0d07020:	4378      	muls	r0, r7
c0d07022:	0c14      	lsrs	r4, r2, #16
c0d07024:	435f      	muls	r7, r3
c0d07026:	4363      	muls	r3, r4
c0d07028:	434c      	muls	r4, r1
c0d0702a:	0c01      	lsrs	r1, r0, #16
c0d0702c:	468c      	mov	ip, r1
c0d0702e:	19e4      	adds	r4, r4, r7
c0d07030:	4464      	add	r4, ip
c0d07032:	42a7      	cmp	r7, r4
c0d07034:	d902      	bls.n	c0d0703c <__aeabi_lmul+0x30>
c0d07036:	2180      	movs	r1, #128	; 0x80
c0d07038:	0249      	lsls	r1, r1, #9
c0d0703a:	185b      	adds	r3, r3, r1
c0d0703c:	9901      	ldr	r1, [sp, #4]
c0d0703e:	436a      	muls	r2, r5
c0d07040:	4371      	muls	r1, r6
c0d07042:	0c27      	lsrs	r7, r4, #16
c0d07044:	18fb      	adds	r3, r7, r3
c0d07046:	0424      	lsls	r4, r4, #16
c0d07048:	18c9      	adds	r1, r1, r3
c0d0704a:	b280      	uxth	r0, r0
c0d0704c:	1820      	adds	r0, r4, r0
c0d0704e:	1889      	adds	r1, r1, r2
c0d07050:	b003      	add	sp, #12
c0d07052:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d07054 <__aeabi_memclr>:
c0d07054:	b510      	push	{r4, lr}
c0d07056:	2200      	movs	r2, #0
c0d07058:	f000 f80a 	bl	c0d07070 <__aeabi_memset>
c0d0705c:	bd10      	pop	{r4, pc}
c0d0705e:	46c0      	nop			; (mov r8, r8)

c0d07060 <__aeabi_memcpy>:
c0d07060:	b510      	push	{r4, lr}
c0d07062:	f000 f835 	bl	c0d070d0 <memcpy>
c0d07066:	bd10      	pop	{r4, pc}

c0d07068 <__aeabi_memmove>:
c0d07068:	b510      	push	{r4, lr}
c0d0706a:	f000 f883 	bl	c0d07174 <memmove>
c0d0706e:	bd10      	pop	{r4, pc}

c0d07070 <__aeabi_memset>:
c0d07070:	000b      	movs	r3, r1
c0d07072:	b510      	push	{r4, lr}
c0d07074:	0011      	movs	r1, r2
c0d07076:	001a      	movs	r2, r3
c0d07078:	f000 f8d2 	bl	c0d07220 <memset>
c0d0707c:	bd10      	pop	{r4, pc}
c0d0707e:	46c0      	nop			; (mov r8, r8)

c0d07080 <explicit_bzero>:
c0d07080:	b510      	push	{r4, lr}
c0d07082:	f000 fc2b 	bl	c0d078dc <bzero>
c0d07086:	bd10      	pop	{r4, pc}

c0d07088 <memcmp>:
c0d07088:	b530      	push	{r4, r5, lr}
c0d0708a:	2a03      	cmp	r2, #3
c0d0708c:	d90c      	bls.n	c0d070a8 <memcmp+0x20>
c0d0708e:	0003      	movs	r3, r0
c0d07090:	430b      	orrs	r3, r1
c0d07092:	079b      	lsls	r3, r3, #30
c0d07094:	d119      	bne.n	c0d070ca <memcmp+0x42>
c0d07096:	6803      	ldr	r3, [r0, #0]
c0d07098:	680c      	ldr	r4, [r1, #0]
c0d0709a:	42a3      	cmp	r3, r4
c0d0709c:	d115      	bne.n	c0d070ca <memcmp+0x42>
c0d0709e:	3a04      	subs	r2, #4
c0d070a0:	3004      	adds	r0, #4
c0d070a2:	3104      	adds	r1, #4
c0d070a4:	2a03      	cmp	r2, #3
c0d070a6:	d8f6      	bhi.n	c0d07096 <memcmp+0xe>
c0d070a8:	1e55      	subs	r5, r2, #1
c0d070aa:	2a00      	cmp	r2, #0
c0d070ac:	d00b      	beq.n	c0d070c6 <memcmp+0x3e>
c0d070ae:	2300      	movs	r3, #0
c0d070b0:	e003      	b.n	c0d070ba <memcmp+0x32>
c0d070b2:	1c5a      	adds	r2, r3, #1
c0d070b4:	429d      	cmp	r5, r3
c0d070b6:	d006      	beq.n	c0d070c6 <memcmp+0x3e>
c0d070b8:	0013      	movs	r3, r2
c0d070ba:	5cc2      	ldrb	r2, [r0, r3]
c0d070bc:	5ccc      	ldrb	r4, [r1, r3]
c0d070be:	42a2      	cmp	r2, r4
c0d070c0:	d0f7      	beq.n	c0d070b2 <memcmp+0x2a>
c0d070c2:	1b10      	subs	r0, r2, r4
c0d070c4:	e000      	b.n	c0d070c8 <memcmp+0x40>
c0d070c6:	2000      	movs	r0, #0
c0d070c8:	bd30      	pop	{r4, r5, pc}
c0d070ca:	1e55      	subs	r5, r2, #1
c0d070cc:	e7ef      	b.n	c0d070ae <memcmp+0x26>
c0d070ce:	46c0      	nop			; (mov r8, r8)

c0d070d0 <memcpy>:
c0d070d0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d070d2:	46c6      	mov	lr, r8
c0d070d4:	b500      	push	{lr}
c0d070d6:	2a0f      	cmp	r2, #15
c0d070d8:	d941      	bls.n	c0d0715e <memcpy+0x8e>
c0d070da:	2703      	movs	r7, #3
c0d070dc:	000d      	movs	r5, r1
c0d070de:	003e      	movs	r6, r7
c0d070e0:	4305      	orrs	r5, r0
c0d070e2:	000c      	movs	r4, r1
c0d070e4:	0003      	movs	r3, r0
c0d070e6:	402e      	ands	r6, r5
c0d070e8:	422f      	tst	r7, r5
c0d070ea:	d13d      	bne.n	c0d07168 <memcpy+0x98>
c0d070ec:	0015      	movs	r5, r2
c0d070ee:	3d10      	subs	r5, #16
c0d070f0:	092d      	lsrs	r5, r5, #4
c0d070f2:	46a8      	mov	r8, r5
c0d070f4:	012d      	lsls	r5, r5, #4
c0d070f6:	46ac      	mov	ip, r5
c0d070f8:	4484      	add	ip, r0
c0d070fa:	6827      	ldr	r7, [r4, #0]
c0d070fc:	001d      	movs	r5, r3
c0d070fe:	601f      	str	r7, [r3, #0]
c0d07100:	6867      	ldr	r7, [r4, #4]
c0d07102:	605f      	str	r7, [r3, #4]
c0d07104:	68a7      	ldr	r7, [r4, #8]
c0d07106:	609f      	str	r7, [r3, #8]
c0d07108:	68e7      	ldr	r7, [r4, #12]
c0d0710a:	3410      	adds	r4, #16
c0d0710c:	60df      	str	r7, [r3, #12]
c0d0710e:	3310      	adds	r3, #16
c0d07110:	4565      	cmp	r5, ip
c0d07112:	d1f2      	bne.n	c0d070fa <memcpy+0x2a>
c0d07114:	4645      	mov	r5, r8
c0d07116:	230f      	movs	r3, #15
c0d07118:	240c      	movs	r4, #12
c0d0711a:	3501      	adds	r5, #1
c0d0711c:	012d      	lsls	r5, r5, #4
c0d0711e:	1949      	adds	r1, r1, r5
c0d07120:	4013      	ands	r3, r2
c0d07122:	1945      	adds	r5, r0, r5
c0d07124:	4214      	tst	r4, r2
c0d07126:	d022      	beq.n	c0d0716e <memcpy+0x9e>
c0d07128:	598c      	ldr	r4, [r1, r6]
c0d0712a:	51ac      	str	r4, [r5, r6]
c0d0712c:	3604      	adds	r6, #4
c0d0712e:	1b9c      	subs	r4, r3, r6
c0d07130:	2c03      	cmp	r4, #3
c0d07132:	d8f9      	bhi.n	c0d07128 <memcpy+0x58>
c0d07134:	3b04      	subs	r3, #4
c0d07136:	089b      	lsrs	r3, r3, #2
c0d07138:	3301      	adds	r3, #1
c0d0713a:	009b      	lsls	r3, r3, #2
c0d0713c:	18ed      	adds	r5, r5, r3
c0d0713e:	18c9      	adds	r1, r1, r3
c0d07140:	2303      	movs	r3, #3
c0d07142:	401a      	ands	r2, r3
c0d07144:	1e56      	subs	r6, r2, #1
c0d07146:	2a00      	cmp	r2, #0
c0d07148:	d006      	beq.n	c0d07158 <memcpy+0x88>
c0d0714a:	2300      	movs	r3, #0
c0d0714c:	5ccc      	ldrb	r4, [r1, r3]
c0d0714e:	001a      	movs	r2, r3
c0d07150:	54ec      	strb	r4, [r5, r3]
c0d07152:	3301      	adds	r3, #1
c0d07154:	4296      	cmp	r6, r2
c0d07156:	d1f9      	bne.n	c0d0714c <memcpy+0x7c>
c0d07158:	bc80      	pop	{r7}
c0d0715a:	46b8      	mov	r8, r7
c0d0715c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0715e:	0005      	movs	r5, r0
c0d07160:	1e56      	subs	r6, r2, #1
c0d07162:	2a00      	cmp	r2, #0
c0d07164:	d1f1      	bne.n	c0d0714a <memcpy+0x7a>
c0d07166:	e7f7      	b.n	c0d07158 <memcpy+0x88>
c0d07168:	0005      	movs	r5, r0
c0d0716a:	1e56      	subs	r6, r2, #1
c0d0716c:	e7ed      	b.n	c0d0714a <memcpy+0x7a>
c0d0716e:	001a      	movs	r2, r3
c0d07170:	e7f6      	b.n	c0d07160 <memcpy+0x90>
c0d07172:	46c0      	nop			; (mov r8, r8)

c0d07174 <memmove>:
c0d07174:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d07176:	4288      	cmp	r0, r1
c0d07178:	d90a      	bls.n	c0d07190 <memmove+0x1c>
c0d0717a:	188b      	adds	r3, r1, r2
c0d0717c:	4298      	cmp	r0, r3
c0d0717e:	d207      	bcs.n	c0d07190 <memmove+0x1c>
c0d07180:	1e53      	subs	r3, r2, #1
c0d07182:	2a00      	cmp	r2, #0
c0d07184:	d003      	beq.n	c0d0718e <memmove+0x1a>
c0d07186:	5cca      	ldrb	r2, [r1, r3]
c0d07188:	54c2      	strb	r2, [r0, r3]
c0d0718a:	3b01      	subs	r3, #1
c0d0718c:	d2fb      	bcs.n	c0d07186 <memmove+0x12>
c0d0718e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d07190:	2a0f      	cmp	r2, #15
c0d07192:	d80b      	bhi.n	c0d071ac <memmove+0x38>
c0d07194:	0005      	movs	r5, r0
c0d07196:	1e56      	subs	r6, r2, #1
c0d07198:	2a00      	cmp	r2, #0
c0d0719a:	d0f8      	beq.n	c0d0718e <memmove+0x1a>
c0d0719c:	2300      	movs	r3, #0
c0d0719e:	5ccc      	ldrb	r4, [r1, r3]
c0d071a0:	001a      	movs	r2, r3
c0d071a2:	54ec      	strb	r4, [r5, r3]
c0d071a4:	3301      	adds	r3, #1
c0d071a6:	4296      	cmp	r6, r2
c0d071a8:	d1f9      	bne.n	c0d0719e <memmove+0x2a>
c0d071aa:	e7f0      	b.n	c0d0718e <memmove+0x1a>
c0d071ac:	2703      	movs	r7, #3
c0d071ae:	000d      	movs	r5, r1
c0d071b0:	003e      	movs	r6, r7
c0d071b2:	4305      	orrs	r5, r0
c0d071b4:	000c      	movs	r4, r1
c0d071b6:	0003      	movs	r3, r0
c0d071b8:	402e      	ands	r6, r5
c0d071ba:	422f      	tst	r7, r5
c0d071bc:	d12b      	bne.n	c0d07216 <memmove+0xa2>
c0d071be:	0015      	movs	r5, r2
c0d071c0:	3d10      	subs	r5, #16
c0d071c2:	092d      	lsrs	r5, r5, #4
c0d071c4:	46ac      	mov	ip, r5
c0d071c6:	012f      	lsls	r7, r5, #4
c0d071c8:	183f      	adds	r7, r7, r0
c0d071ca:	6825      	ldr	r5, [r4, #0]
c0d071cc:	601d      	str	r5, [r3, #0]
c0d071ce:	6865      	ldr	r5, [r4, #4]
c0d071d0:	605d      	str	r5, [r3, #4]
c0d071d2:	68a5      	ldr	r5, [r4, #8]
c0d071d4:	609d      	str	r5, [r3, #8]
c0d071d6:	68e5      	ldr	r5, [r4, #12]
c0d071d8:	3410      	adds	r4, #16
c0d071da:	60dd      	str	r5, [r3, #12]
c0d071dc:	001d      	movs	r5, r3
c0d071de:	3310      	adds	r3, #16
c0d071e0:	42bd      	cmp	r5, r7
c0d071e2:	d1f2      	bne.n	c0d071ca <memmove+0x56>
c0d071e4:	4665      	mov	r5, ip
c0d071e6:	230f      	movs	r3, #15
c0d071e8:	240c      	movs	r4, #12
c0d071ea:	3501      	adds	r5, #1
c0d071ec:	012d      	lsls	r5, r5, #4
c0d071ee:	1949      	adds	r1, r1, r5
c0d071f0:	4013      	ands	r3, r2
c0d071f2:	1945      	adds	r5, r0, r5
c0d071f4:	4214      	tst	r4, r2
c0d071f6:	d011      	beq.n	c0d0721c <memmove+0xa8>
c0d071f8:	598c      	ldr	r4, [r1, r6]
c0d071fa:	51ac      	str	r4, [r5, r6]
c0d071fc:	3604      	adds	r6, #4
c0d071fe:	1b9c      	subs	r4, r3, r6
c0d07200:	2c03      	cmp	r4, #3
c0d07202:	d8f9      	bhi.n	c0d071f8 <memmove+0x84>
c0d07204:	3b04      	subs	r3, #4
c0d07206:	089b      	lsrs	r3, r3, #2
c0d07208:	3301      	adds	r3, #1
c0d0720a:	009b      	lsls	r3, r3, #2
c0d0720c:	18ed      	adds	r5, r5, r3
c0d0720e:	18c9      	adds	r1, r1, r3
c0d07210:	2303      	movs	r3, #3
c0d07212:	401a      	ands	r2, r3
c0d07214:	e7bf      	b.n	c0d07196 <memmove+0x22>
c0d07216:	0005      	movs	r5, r0
c0d07218:	1e56      	subs	r6, r2, #1
c0d0721a:	e7bf      	b.n	c0d0719c <memmove+0x28>
c0d0721c:	001a      	movs	r2, r3
c0d0721e:	e7ba      	b.n	c0d07196 <memmove+0x22>

c0d07220 <memset>:
c0d07220:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d07222:	0005      	movs	r5, r0
c0d07224:	0783      	lsls	r3, r0, #30
c0d07226:	d049      	beq.n	c0d072bc <memset+0x9c>
c0d07228:	1e54      	subs	r4, r2, #1
c0d0722a:	2a00      	cmp	r2, #0
c0d0722c:	d045      	beq.n	c0d072ba <memset+0x9a>
c0d0722e:	0003      	movs	r3, r0
c0d07230:	2603      	movs	r6, #3
c0d07232:	b2ca      	uxtb	r2, r1
c0d07234:	e002      	b.n	c0d0723c <memset+0x1c>
c0d07236:	3501      	adds	r5, #1
c0d07238:	3c01      	subs	r4, #1
c0d0723a:	d33e      	bcc.n	c0d072ba <memset+0x9a>
c0d0723c:	3301      	adds	r3, #1
c0d0723e:	702a      	strb	r2, [r5, #0]
c0d07240:	4233      	tst	r3, r6
c0d07242:	d1f8      	bne.n	c0d07236 <memset+0x16>
c0d07244:	2c03      	cmp	r4, #3
c0d07246:	d930      	bls.n	c0d072aa <memset+0x8a>
c0d07248:	22ff      	movs	r2, #255	; 0xff
c0d0724a:	400a      	ands	r2, r1
c0d0724c:	0215      	lsls	r5, r2, #8
c0d0724e:	4315      	orrs	r5, r2
c0d07250:	042a      	lsls	r2, r5, #16
c0d07252:	4315      	orrs	r5, r2
c0d07254:	2c0f      	cmp	r4, #15
c0d07256:	d934      	bls.n	c0d072c2 <memset+0xa2>
c0d07258:	0027      	movs	r7, r4
c0d0725a:	3f10      	subs	r7, #16
c0d0725c:	093f      	lsrs	r7, r7, #4
c0d0725e:	013e      	lsls	r6, r7, #4
c0d07260:	46b4      	mov	ip, r6
c0d07262:	001e      	movs	r6, r3
c0d07264:	001a      	movs	r2, r3
c0d07266:	3610      	adds	r6, #16
c0d07268:	4466      	add	r6, ip
c0d0726a:	6015      	str	r5, [r2, #0]
c0d0726c:	6055      	str	r5, [r2, #4]
c0d0726e:	6095      	str	r5, [r2, #8]
c0d07270:	60d5      	str	r5, [r2, #12]
c0d07272:	3210      	adds	r2, #16
c0d07274:	42b2      	cmp	r2, r6
c0d07276:	d1f8      	bne.n	c0d0726a <memset+0x4a>
c0d07278:	3701      	adds	r7, #1
c0d0727a:	013f      	lsls	r7, r7, #4
c0d0727c:	19db      	adds	r3, r3, r7
c0d0727e:	270f      	movs	r7, #15
c0d07280:	220c      	movs	r2, #12
c0d07282:	4027      	ands	r7, r4
c0d07284:	4022      	ands	r2, r4
c0d07286:	003c      	movs	r4, r7
c0d07288:	2a00      	cmp	r2, #0
c0d0728a:	d00e      	beq.n	c0d072aa <memset+0x8a>
c0d0728c:	1f3e      	subs	r6, r7, #4
c0d0728e:	08b6      	lsrs	r6, r6, #2
c0d07290:	00b4      	lsls	r4, r6, #2
c0d07292:	46a4      	mov	ip, r4
c0d07294:	001a      	movs	r2, r3
c0d07296:	1d1c      	adds	r4, r3, #4
c0d07298:	4464      	add	r4, ip
c0d0729a:	c220      	stmia	r2!, {r5}
c0d0729c:	42a2      	cmp	r2, r4
c0d0729e:	d1fc      	bne.n	c0d0729a <memset+0x7a>
c0d072a0:	2403      	movs	r4, #3
c0d072a2:	3601      	adds	r6, #1
c0d072a4:	00b6      	lsls	r6, r6, #2
c0d072a6:	199b      	adds	r3, r3, r6
c0d072a8:	403c      	ands	r4, r7
c0d072aa:	2c00      	cmp	r4, #0
c0d072ac:	d005      	beq.n	c0d072ba <memset+0x9a>
c0d072ae:	b2c9      	uxtb	r1, r1
c0d072b0:	191c      	adds	r4, r3, r4
c0d072b2:	7019      	strb	r1, [r3, #0]
c0d072b4:	3301      	adds	r3, #1
c0d072b6:	429c      	cmp	r4, r3
c0d072b8:	d1fb      	bne.n	c0d072b2 <memset+0x92>
c0d072ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d072bc:	0003      	movs	r3, r0
c0d072be:	0014      	movs	r4, r2
c0d072c0:	e7c0      	b.n	c0d07244 <memset+0x24>
c0d072c2:	0027      	movs	r7, r4
c0d072c4:	e7e2      	b.n	c0d0728c <memset+0x6c>
c0d072c6:	46c0      	nop			; (mov r8, r8)

c0d072c8 <setjmp>:
c0d072c8:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
c0d072ca:	4641      	mov	r1, r8
c0d072cc:	464a      	mov	r2, r9
c0d072ce:	4653      	mov	r3, sl
c0d072d0:	465c      	mov	r4, fp
c0d072d2:	466d      	mov	r5, sp
c0d072d4:	4676      	mov	r6, lr
c0d072d6:	c07e      	stmia	r0!, {r1, r2, r3, r4, r5, r6}
c0d072d8:	3828      	subs	r0, #40	; 0x28
c0d072da:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
c0d072dc:	2000      	movs	r0, #0
c0d072de:	4770      	bx	lr

c0d072e0 <longjmp>:
c0d072e0:	3010      	adds	r0, #16
c0d072e2:	c87c      	ldmia	r0!, {r2, r3, r4, r5, r6}
c0d072e4:	4690      	mov	r8, r2
c0d072e6:	4699      	mov	r9, r3
c0d072e8:	46a2      	mov	sl, r4
c0d072ea:	46ab      	mov	fp, r5
c0d072ec:	46b5      	mov	sp, r6
c0d072ee:	c808      	ldmia	r0!, {r3}
c0d072f0:	3828      	subs	r0, #40	; 0x28
c0d072f2:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
c0d072f4:	0008      	movs	r0, r1
c0d072f6:	d100      	bne.n	c0d072fa <longjmp+0x1a>
c0d072f8:	2001      	movs	r0, #1
c0d072fa:	4718      	bx	r3

c0d072fc <strcmp>:
c0d072fc:	4602      	mov	r2, r0
c0d072fe:	b570      	push	{r4, r5, r6, lr}
c0d07300:	430a      	orrs	r2, r1
c0d07302:	0792      	lsls	r2, r2, #30
c0d07304:	d12a      	bne.n	c0d0735c <strcmp+0x60>
c0d07306:	4d1e      	ldr	r5, [pc, #120]	; (c0d07380 <strcmp+0x84>)
c0d07308:	01ee      	lsls	r6, r5, #7
c0d0730a:	c804      	ldmia	r0!, {r2}
c0d0730c:	c908      	ldmia	r1!, {r3}
c0d0730e:	1b54      	subs	r4, r2, r5
c0d07310:	4394      	bics	r4, r2
c0d07312:	4034      	ands	r4, r6
c0d07314:	d017      	beq.n	c0d07346 <strcmp+0x4a>
c0d07316:	b2d0      	uxtb	r0, r2
c0d07318:	b2d9      	uxtb	r1, r3
c0d0731a:	1a40      	subs	r0, r0, r1
c0d0731c:	0621      	lsls	r1, r4, #24
c0d0731e:	4301      	orrs	r1, r0
c0d07320:	d110      	bne.n	c0d07344 <strcmp+0x48>
c0d07322:	b290      	uxth	r0, r2
c0d07324:	b299      	uxth	r1, r3
c0d07326:	1a40      	subs	r0, r0, r1
c0d07328:	0421      	lsls	r1, r4, #16
c0d0732a:	4301      	orrs	r1, r0
c0d0732c:	d10a      	bne.n	c0d07344 <strcmp+0x48>
c0d0732e:	0210      	lsls	r0, r2, #8
c0d07330:	0219      	lsls	r1, r3, #8
c0d07332:	0a00      	lsrs	r0, r0, #8
c0d07334:	0a09      	lsrs	r1, r1, #8
c0d07336:	1a40      	subs	r0, r0, r1
c0d07338:	0221      	lsls	r1, r4, #8
c0d0733a:	4301      	orrs	r1, r0
c0d0733c:	d102      	bne.n	c0d07344 <strcmp+0x48>
c0d0733e:	0e10      	lsrs	r0, r2, #24
c0d07340:	0e19      	lsrs	r1, r3, #24
c0d07342:	1a40      	subs	r0, r0, r1
c0d07344:	bd70      	pop	{r4, r5, r6, pc}
c0d07346:	429a      	cmp	r2, r3
c0d07348:	d0df      	beq.n	c0d0730a <strcmp+0xe>
c0d0734a:	ba10      	rev	r0, r2
c0d0734c:	ba19      	rev	r1, r3
c0d0734e:	4288      	cmp	r0, r1
c0d07350:	d901      	bls.n	c0d07356 <strcmp+0x5a>
c0d07352:	2001      	movs	r0, #1
c0d07354:	bd70      	pop	{r4, r5, r6, pc}
c0d07356:	2000      	movs	r0, #0
c0d07358:	43c0      	mvns	r0, r0
c0d0735a:	bd70      	pop	{r4, r5, r6, pc}
c0d0735c:	7802      	ldrb	r2, [r0, #0]
c0d0735e:	780b      	ldrb	r3, [r1, #0]
c0d07360:	3001      	adds	r0, #1
c0d07362:	3101      	adds	r1, #1
c0d07364:	2a00      	cmp	r2, #0
c0d07366:	d009      	beq.n	c0d0737c <strcmp+0x80>
c0d07368:	429a      	cmp	r2, r3
c0d0736a:	d107      	bne.n	c0d0737c <strcmp+0x80>
c0d0736c:	7802      	ldrb	r2, [r0, #0]
c0d0736e:	780b      	ldrb	r3, [r1, #0]
c0d07370:	3001      	adds	r0, #1
c0d07372:	3101      	adds	r1, #1
c0d07374:	2a00      	cmp	r2, #0
c0d07376:	d001      	beq.n	c0d0737c <strcmp+0x80>
c0d07378:	429a      	cmp	r2, r3
c0d0737a:	d0ef      	beq.n	c0d0735c <strcmp+0x60>
c0d0737c:	1ad0      	subs	r0, r2, r3
c0d0737e:	bd70      	pop	{r4, r5, r6, pc}
c0d07380:	01010101 	.word	0x01010101

c0d07384 <strlen>:
c0d07384:	b510      	push	{r4, lr}
c0d07386:	0783      	lsls	r3, r0, #30
c0d07388:	d00a      	beq.n	c0d073a0 <strlen+0x1c>
c0d0738a:	0003      	movs	r3, r0
c0d0738c:	2103      	movs	r1, #3
c0d0738e:	e002      	b.n	c0d07396 <strlen+0x12>
c0d07390:	3301      	adds	r3, #1
c0d07392:	420b      	tst	r3, r1
c0d07394:	d005      	beq.n	c0d073a2 <strlen+0x1e>
c0d07396:	781a      	ldrb	r2, [r3, #0]
c0d07398:	2a00      	cmp	r2, #0
c0d0739a:	d1f9      	bne.n	c0d07390 <strlen+0xc>
c0d0739c:	1a18      	subs	r0, r3, r0
c0d0739e:	bd10      	pop	{r4, pc}
c0d073a0:	0003      	movs	r3, r0
c0d073a2:	6819      	ldr	r1, [r3, #0]
c0d073a4:	4a0c      	ldr	r2, [pc, #48]	; (c0d073d8 <strlen+0x54>)
c0d073a6:	4c0d      	ldr	r4, [pc, #52]	; (c0d073dc <strlen+0x58>)
c0d073a8:	188a      	adds	r2, r1, r2
c0d073aa:	438a      	bics	r2, r1
c0d073ac:	4222      	tst	r2, r4
c0d073ae:	d10f      	bne.n	c0d073d0 <strlen+0x4c>
c0d073b0:	6859      	ldr	r1, [r3, #4]
c0d073b2:	4a09      	ldr	r2, [pc, #36]	; (c0d073d8 <strlen+0x54>)
c0d073b4:	3304      	adds	r3, #4
c0d073b6:	188a      	adds	r2, r1, r2
c0d073b8:	438a      	bics	r2, r1
c0d073ba:	4222      	tst	r2, r4
c0d073bc:	d108      	bne.n	c0d073d0 <strlen+0x4c>
c0d073be:	6859      	ldr	r1, [r3, #4]
c0d073c0:	4a05      	ldr	r2, [pc, #20]	; (c0d073d8 <strlen+0x54>)
c0d073c2:	3304      	adds	r3, #4
c0d073c4:	188a      	adds	r2, r1, r2
c0d073c6:	438a      	bics	r2, r1
c0d073c8:	4222      	tst	r2, r4
c0d073ca:	d0f1      	beq.n	c0d073b0 <strlen+0x2c>
c0d073cc:	e000      	b.n	c0d073d0 <strlen+0x4c>
c0d073ce:	3301      	adds	r3, #1
c0d073d0:	781a      	ldrb	r2, [r3, #0]
c0d073d2:	2a00      	cmp	r2, #0
c0d073d4:	d1fb      	bne.n	c0d073ce <strlen+0x4a>
c0d073d6:	e7e1      	b.n	c0d0739c <strlen+0x18>
c0d073d8:	fefefeff 	.word	0xfefefeff
c0d073dc:	80808080 	.word	0x80808080

c0d073e0 <strncmp>:
c0d073e0:	b530      	push	{r4, r5, lr}
c0d073e2:	2a00      	cmp	r2, #0
c0d073e4:	d026      	beq.n	c0d07434 <strncmp+0x54>
c0d073e6:	0003      	movs	r3, r0
c0d073e8:	430b      	orrs	r3, r1
c0d073ea:	079b      	lsls	r3, r3, #30
c0d073ec:	d124      	bne.n	c0d07438 <strncmp+0x58>
c0d073ee:	2a03      	cmp	r2, #3
c0d073f0:	d922      	bls.n	c0d07438 <strncmp+0x58>
c0d073f2:	4d16      	ldr	r5, [pc, #88]	; (c0d0744c <strncmp+0x6c>)
c0d073f4:	e00b      	b.n	c0d0740e <strncmp+0x2e>
c0d073f6:	3a04      	subs	r2, #4
c0d073f8:	2a00      	cmp	r2, #0
c0d073fa:	d01b      	beq.n	c0d07434 <strncmp+0x54>
c0d073fc:	4c14      	ldr	r4, [pc, #80]	; (c0d07450 <strncmp+0x70>)
c0d073fe:	191c      	adds	r4, r3, r4
c0d07400:	439c      	bics	r4, r3
c0d07402:	422c      	tst	r4, r5
c0d07404:	d116      	bne.n	c0d07434 <strncmp+0x54>
c0d07406:	3004      	adds	r0, #4
c0d07408:	3104      	adds	r1, #4
c0d0740a:	2a03      	cmp	r2, #3
c0d0740c:	d914      	bls.n	c0d07438 <strncmp+0x58>
c0d0740e:	6803      	ldr	r3, [r0, #0]
c0d07410:	680c      	ldr	r4, [r1, #0]
c0d07412:	42a3      	cmp	r3, r4
c0d07414:	d0ef      	beq.n	c0d073f6 <strncmp+0x16>
c0d07416:	7804      	ldrb	r4, [r0, #0]
c0d07418:	780d      	ldrb	r5, [r1, #0]
c0d0741a:	42ac      	cmp	r4, r5
c0d0741c:	d113      	bne.n	c0d07446 <strncmp+0x66>
c0d0741e:	2301      	movs	r3, #1
c0d07420:	e006      	b.n	c0d07430 <strncmp+0x50>
c0d07422:	5cc4      	ldrb	r4, [r0, r3]
c0d07424:	5ccd      	ldrb	r5, [r1, r3]
c0d07426:	42ac      	cmp	r4, r5
c0d07428:	d10d      	bne.n	c0d07446 <strncmp+0x66>
c0d0742a:	3301      	adds	r3, #1
c0d0742c:	4293      	cmp	r3, r2
c0d0742e:	d001      	beq.n	c0d07434 <strncmp+0x54>
c0d07430:	2c00      	cmp	r4, #0
c0d07432:	d1f6      	bne.n	c0d07422 <strncmp+0x42>
c0d07434:	2000      	movs	r0, #0
c0d07436:	bd30      	pop	{r4, r5, pc}
c0d07438:	7804      	ldrb	r4, [r0, #0]
c0d0743a:	780d      	ldrb	r5, [r1, #0]
c0d0743c:	42a5      	cmp	r5, r4
c0d0743e:	d102      	bne.n	c0d07446 <strncmp+0x66>
c0d07440:	2a01      	cmp	r2, #1
c0d07442:	d1ec      	bne.n	c0d0741e <strncmp+0x3e>
c0d07444:	e7f6      	b.n	c0d07434 <strncmp+0x54>
c0d07446:	1b60      	subs	r0, r4, r5
c0d07448:	e7f5      	b.n	c0d07436 <strncmp+0x56>
c0d0744a:	46c0      	nop			; (mov r8, r8)
c0d0744c:	80808080 	.word	0x80808080
c0d07450:	fefefeff 	.word	0xfefefeff

c0d07454 <strncpy>:
c0d07454:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d07456:	000c      	movs	r4, r1
c0d07458:	4304      	orrs	r4, r0
c0d0745a:	0003      	movs	r3, r0
c0d0745c:	0007      	movs	r7, r0
c0d0745e:	07a4      	lsls	r4, r4, #30
c0d07460:	d112      	bne.n	c0d07488 <strncpy+0x34>
c0d07462:	2a03      	cmp	r2, #3
c0d07464:	d910      	bls.n	c0d07488 <strncpy+0x34>
c0d07466:	4c14      	ldr	r4, [pc, #80]	; (c0d074b8 <strncpy+0x64>)
c0d07468:	46a4      	mov	ip, r4
c0d0746a:	4667      	mov	r7, ip
c0d0746c:	680d      	ldr	r5, [r1, #0]
c0d0746e:	4c13      	ldr	r4, [pc, #76]	; (c0d074bc <strncpy+0x68>)
c0d07470:	001e      	movs	r6, r3
c0d07472:	192c      	adds	r4, r5, r4
c0d07474:	43ac      	bics	r4, r5
c0d07476:	423c      	tst	r4, r7
c0d07478:	d11b      	bne.n	c0d074b2 <strncpy+0x5e>
c0d0747a:	3304      	adds	r3, #4
c0d0747c:	3a04      	subs	r2, #4
c0d0747e:	001f      	movs	r7, r3
c0d07480:	3104      	adds	r1, #4
c0d07482:	6035      	str	r5, [r6, #0]
c0d07484:	2a03      	cmp	r2, #3
c0d07486:	d8f0      	bhi.n	c0d0746a <strncpy+0x16>
c0d07488:	2400      	movs	r4, #0
c0d0748a:	18be      	adds	r6, r7, r2
c0d0748c:	e006      	b.n	c0d0749c <strncpy+0x48>
c0d0748e:	5d0d      	ldrb	r5, [r1, r4]
c0d07490:	3a01      	subs	r2, #1
c0d07492:	553d      	strb	r5, [r7, r4]
c0d07494:	1ab3      	subs	r3, r6, r2
c0d07496:	3401      	adds	r4, #1
c0d07498:	2d00      	cmp	r5, #0
c0d0749a:	d002      	beq.n	c0d074a2 <strncpy+0x4e>
c0d0749c:	2a00      	cmp	r2, #0
c0d0749e:	d1f6      	bne.n	c0d0748e <strncpy+0x3a>
c0d074a0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d074a2:	2100      	movs	r1, #0
c0d074a4:	2a00      	cmp	r2, #0
c0d074a6:	d0fb      	beq.n	c0d074a0 <strncpy+0x4c>
c0d074a8:	7019      	strb	r1, [r3, #0]
c0d074aa:	3301      	adds	r3, #1
c0d074ac:	429e      	cmp	r6, r3
c0d074ae:	d1fb      	bne.n	c0d074a8 <strncpy+0x54>
c0d074b0:	e7f6      	b.n	c0d074a0 <strncpy+0x4c>
c0d074b2:	001f      	movs	r7, r3
c0d074b4:	e7e8      	b.n	c0d07488 <strncpy+0x34>
c0d074b6:	46c0      	nop			; (mov r8, r8)
c0d074b8:	80808080 	.word	0x80808080
c0d074bc:	fefefeff 	.word	0xfefefeff

c0d074c0 <strnlen>:
c0d074c0:	b510      	push	{r4, lr}
c0d074c2:	0003      	movs	r3, r0
c0d074c4:	1844      	adds	r4, r0, r1
c0d074c6:	2900      	cmp	r1, #0
c0d074c8:	d103      	bne.n	c0d074d2 <strnlen+0x12>
c0d074ca:	e009      	b.n	c0d074e0 <strnlen+0x20>
c0d074cc:	3301      	adds	r3, #1
c0d074ce:	429c      	cmp	r4, r3
c0d074d0:	d004      	beq.n	c0d074dc <strnlen+0x1c>
c0d074d2:	781a      	ldrb	r2, [r3, #0]
c0d074d4:	2a00      	cmp	r2, #0
c0d074d6:	d1f9      	bne.n	c0d074cc <strnlen+0xc>
c0d074d8:	1a18      	subs	r0, r3, r0
c0d074da:	bd10      	pop	{r4, pc}
c0d074dc:	1a20      	subs	r0, r4, r0
c0d074de:	e7fc      	b.n	c0d074da <strnlen+0x1a>
c0d074e0:	2000      	movs	r0, #0
c0d074e2:	e7fa      	b.n	c0d074da <strnlen+0x1a>

c0d074e4 <two_way_long_needle>:
c0d074e4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d074e6:	46de      	mov	lr, fp
c0d074e8:	464e      	mov	r6, r9
c0d074ea:	4645      	mov	r5, r8
c0d074ec:	4657      	mov	r7, sl
c0d074ee:	b5e0      	push	{r5, r6, r7, lr}
c0d074f0:	4c9b      	ldr	r4, [pc, #620]	; (c0d07760 <two_way_long_needle+0x27c>)
c0d074f2:	4683      	mov	fp, r0
c0d074f4:	44a5      	add	sp, r4
c0d074f6:	4688      	mov	r8, r1
c0d074f8:	0014      	movs	r4, r2
c0d074fa:	001e      	movs	r6, r3
c0d074fc:	2b01      	cmp	r3, #1
c0d074fe:	d800      	bhi.n	c0d07502 <two_way_long_needle+0x1e>
c0d07500:	e128      	b.n	c0d07754 <two_way_long_needle+0x270>
c0d07502:	2001      	movs	r0, #1
c0d07504:	2501      	movs	r5, #1
c0d07506:	46b4      	mov	ip, r6
c0d07508:	2100      	movs	r1, #0
c0d0750a:	2201      	movs	r2, #1
c0d0750c:	2301      	movs	r3, #1
c0d0750e:	0006      	movs	r6, r0
c0d07510:	426d      	negs	r5, r5
c0d07512:	e005      	b.n	c0d07520 <two_way_long_needle+0x3c>
c0d07514:	0019      	movs	r1, r3
c0d07516:	2201      	movs	r2, #1
c0d07518:	1b5e      	subs	r6, r3, r5
c0d0751a:	188b      	adds	r3, r1, r2
c0d0751c:	459c      	cmp	ip, r3
c0d0751e:	d90d      	bls.n	c0d0753c <two_way_long_needle+0x58>
c0d07520:	1960      	adds	r0, r4, r5
c0d07522:	5ce7      	ldrb	r7, [r4, r3]
c0d07524:	5c80      	ldrb	r0, [r0, r2]
c0d07526:	4287      	cmp	r7, r0
c0d07528:	d3f4      	bcc.n	c0d07514 <two_way_long_needle+0x30>
c0d0752a:	d100      	bne.n	c0d0752e <two_way_long_needle+0x4a>
c0d0752c:	e086      	b.n	c0d0763c <two_way_long_needle+0x158>
c0d0752e:	2201      	movs	r2, #1
c0d07530:	000d      	movs	r5, r1
c0d07532:	3101      	adds	r1, #1
c0d07534:	188b      	adds	r3, r1, r2
c0d07536:	2601      	movs	r6, #1
c0d07538:	459c      	cmp	ip, r3
c0d0753a:	d8f1      	bhi.n	c0d07520 <two_way_long_needle+0x3c>
c0d0753c:	2301      	movs	r3, #1
c0d0753e:	9600      	str	r6, [sp, #0]
c0d07540:	4666      	mov	r6, ip
c0d07542:	469c      	mov	ip, r3
c0d07544:	3b02      	subs	r3, #2
c0d07546:	4699      	mov	r9, r3
c0d07548:	4648      	mov	r0, r9
c0d0754a:	2100      	movs	r1, #0
c0d0754c:	46a9      	mov	r9, r5
c0d0754e:	2201      	movs	r2, #1
c0d07550:	0005      	movs	r5, r0
c0d07552:	3302      	adds	r3, #2
c0d07554:	e006      	b.n	c0d07564 <two_way_long_needle+0x80>
c0d07556:	1b5a      	subs	r2, r3, r5
c0d07558:	4694      	mov	ip, r2
c0d0755a:	0019      	movs	r1, r3
c0d0755c:	2201      	movs	r2, #1
c0d0755e:	188b      	adds	r3, r1, r2
c0d07560:	429e      	cmp	r6, r3
c0d07562:	d90d      	bls.n	c0d07580 <two_way_long_needle+0x9c>
c0d07564:	18a0      	adds	r0, r4, r2
c0d07566:	5ce7      	ldrb	r7, [r4, r3]
c0d07568:	5d40      	ldrb	r0, [r0, r5]
c0d0756a:	4287      	cmp	r7, r0
c0d0756c:	d8f3      	bhi.n	c0d07556 <two_way_long_needle+0x72>
c0d0756e:	d06a      	beq.n	c0d07646 <two_way_long_needle+0x162>
c0d07570:	2301      	movs	r3, #1
c0d07572:	2201      	movs	r2, #1
c0d07574:	000d      	movs	r5, r1
c0d07576:	3101      	adds	r1, #1
c0d07578:	469c      	mov	ip, r3
c0d0757a:	188b      	adds	r3, r1, r2
c0d0757c:	429e      	cmp	r6, r3
c0d0757e:	d8f1      	bhi.n	c0d07564 <two_way_long_needle+0x80>
c0d07580:	002b      	movs	r3, r5
c0d07582:	464d      	mov	r5, r9
c0d07584:	3301      	adds	r3, #1
c0d07586:	1c6a      	adds	r2, r5, #1
c0d07588:	4692      	mov	sl, r2
c0d0758a:	429a      	cmp	r2, r3
c0d0758c:	d802      	bhi.n	c0d07594 <two_way_long_needle+0xb0>
c0d0758e:	4662      	mov	r2, ip
c0d07590:	469a      	mov	sl, r3
c0d07592:	9200      	str	r2, [sp, #0]
c0d07594:	aaff      	add	r2, sp, #1020	; 0x3fc
c0d07596:	ab02      	add	r3, sp, #8
c0d07598:	320c      	adds	r2, #12
c0d0759a:	c340      	stmia	r3!, {r6}
c0d0759c:	429a      	cmp	r2, r3
c0d0759e:	d1fc      	bne.n	c0d0759a <two_way_long_needle+0xb6>
c0d075a0:	1e75      	subs	r5, r6, #1
c0d075a2:	2e00      	cmp	r6, #0
c0d075a4:	d00c      	beq.n	c0d075c0 <two_way_long_needle+0xdc>
c0d075a6:	0023      	movs	r3, r4
c0d075a8:	46a4      	mov	ip, r4
c0d075aa:	1937      	adds	r7, r6, r4
c0d075ac:	1960      	adds	r0, r4, r5
c0d075ae:	781a      	ldrb	r2, [r3, #0]
c0d075b0:	1ac1      	subs	r1, r0, r3
c0d075b2:	0092      	lsls	r2, r2, #2
c0d075b4:	ac02      	add	r4, sp, #8
c0d075b6:	3301      	adds	r3, #1
c0d075b8:	50a1      	str	r1, [r4, r2]
c0d075ba:	429f      	cmp	r7, r3
c0d075bc:	d1f7      	bne.n	c0d075ae <two_way_long_needle+0xca>
c0d075be:	4664      	mov	r4, ip
c0d075c0:	9b00      	ldr	r3, [sp, #0]
c0d075c2:	4652      	mov	r2, sl
c0d075c4:	0020      	movs	r0, r4
c0d075c6:	18e1      	adds	r1, r4, r3
c0d075c8:	f7ff fd5e 	bl	c0d07088 <memcmp>
c0d075cc:	2800      	cmp	r0, #0
c0d075ce:	d169      	bne.n	c0d076a4 <two_way_long_needle+0x1c0>
c0d075d0:	2300      	movs	r3, #0
c0d075d2:	4652      	mov	r2, sl
c0d075d4:	4699      	mov	r9, r3
c0d075d6:	3301      	adds	r3, #1
c0d075d8:	1a9b      	subs	r3, r3, r2
c0d075da:	9301      	str	r3, [sp, #4]
c0d075dc:	0033      	movs	r3, r6
c0d075de:	2700      	movs	r7, #0
c0d075e0:	464e      	mov	r6, r9
c0d075e2:	4699      	mov	r9, r3
c0d075e4:	465b      	mov	r3, fp
c0d075e6:	19d8      	adds	r0, r3, r7
c0d075e8:	5d43      	ldrb	r3, [r0, r5]
c0d075ea:	aa02      	add	r2, sp, #8
c0d075ec:	009b      	lsls	r3, r3, #2
c0d075ee:	58d3      	ldr	r3, [r2, r3]
c0d075f0:	2b00      	cmp	r3, #0
c0d075f2:	d02c      	beq.n	c0d0764e <two_way_long_needle+0x16a>
c0d075f4:	2e00      	cmp	r6, #0
c0d075f6:	d004      	beq.n	c0d07602 <two_way_long_needle+0x11e>
c0d075f8:	9a00      	ldr	r2, [sp, #0]
c0d075fa:	4293      	cmp	r3, r2
c0d075fc:	d201      	bcs.n	c0d07602 <two_way_long_needle+0x11e>
c0d075fe:	464b      	mov	r3, r9
c0d07600:	1a9b      	subs	r3, r3, r2
c0d07602:	2600      	movs	r6, #0
c0d07604:	18ff      	adds	r7, r7, r3
c0d07606:	4643      	mov	r3, r8
c0d07608:	464a      	mov	r2, r9
c0d0760a:	1a9b      	subs	r3, r3, r2
c0d0760c:	42bb      	cmp	r3, r7
c0d0760e:	d2e9      	bcs.n	c0d075e4 <two_way_long_needle+0x100>
c0d07610:	2180      	movs	r1, #128	; 0x80
c0d07612:	4658      	mov	r0, fp
c0d07614:	0109      	lsls	r1, r1, #4
c0d07616:	4311      	orrs	r1, r2
c0d07618:	4440      	add	r0, r8
c0d0761a:	f7ff ff51 	bl	c0d074c0 <strnlen>
c0d0761e:	4480      	add	r8, r0
c0d07620:	4643      	mov	r3, r8
c0d07622:	464a      	mov	r2, r9
c0d07624:	1a9b      	subs	r3, r3, r2
c0d07626:	42bb      	cmp	r3, r7
c0d07628:	d2dc      	bcs.n	c0d075e4 <two_way_long_needle+0x100>
c0d0762a:	2000      	movs	r0, #0
c0d0762c:	4b4d      	ldr	r3, [pc, #308]	; (c0d07764 <two_way_long_needle+0x280>)
c0d0762e:	449d      	add	sp, r3
c0d07630:	bcf0      	pop	{r4, r5, r6, r7}
c0d07632:	46bb      	mov	fp, r7
c0d07634:	46b2      	mov	sl, r6
c0d07636:	46a9      	mov	r9, r5
c0d07638:	46a0      	mov	r8, r4
c0d0763a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0763c:	4296      	cmp	r6, r2
c0d0763e:	d100      	bne.n	c0d07642 <two_way_long_needle+0x15e>
c0d07640:	e085      	b.n	c0d0774e <two_way_long_needle+0x26a>
c0d07642:	3201      	adds	r2, #1
c0d07644:	e769      	b.n	c0d0751a <two_way_long_needle+0x36>
c0d07646:	4562      	cmp	r2, ip
c0d07648:	d07e      	beq.n	c0d07748 <two_way_long_needle+0x264>
c0d0764a:	3201      	adds	r2, #1
c0d0764c:	e787      	b.n	c0d0755e <two_way_long_needle+0x7a>
c0d0764e:	4653      	mov	r3, sl
c0d07650:	45b2      	cmp	sl, r6
c0d07652:	d206      	bcs.n	c0d07662 <two_way_long_needle+0x17e>
c0d07654:	0033      	movs	r3, r6
c0d07656:	e004      	b.n	c0d07662 <two_way_long_needle+0x17e>
c0d07658:	5ce1      	ldrb	r1, [r4, r3]
c0d0765a:	5cc2      	ldrb	r2, [r0, r3]
c0d0765c:	4291      	cmp	r1, r2
c0d0765e:	d11b      	bne.n	c0d07698 <two_way_long_needle+0x1b4>
c0d07660:	3301      	adds	r3, #1
c0d07662:	42ab      	cmp	r3, r5
c0d07664:	d3f8      	bcc.n	c0d07658 <two_way_long_needle+0x174>
c0d07666:	4653      	mov	r3, sl
c0d07668:	46d4      	mov	ip, sl
c0d0766a:	3b01      	subs	r3, #1
c0d0766c:	45b2      	cmp	sl, r6
c0d0766e:	d804      	bhi.n	c0d0767a <two_way_long_needle+0x196>
c0d07670:	e009      	b.n	c0d07686 <two_way_long_needle+0x1a2>
c0d07672:	1e5a      	subs	r2, r3, #1
c0d07674:	42b3      	cmp	r3, r6
c0d07676:	d013      	beq.n	c0d076a0 <two_way_long_needle+0x1bc>
c0d07678:	0013      	movs	r3, r2
c0d0767a:	1c5a      	adds	r2, r3, #1
c0d0767c:	4694      	mov	ip, r2
c0d0767e:	5ce1      	ldrb	r1, [r4, r3]
c0d07680:	5cc2      	ldrb	r2, [r0, r3]
c0d07682:	4291      	cmp	r1, r2
c0d07684:	d0f5      	beq.n	c0d07672 <two_way_long_needle+0x18e>
c0d07686:	3601      	adds	r6, #1
c0d07688:	4566      	cmp	r6, ip
c0d0768a:	d8cf      	bhi.n	c0d0762c <two_way_long_needle+0x148>
c0d0768c:	9b00      	ldr	r3, [sp, #0]
c0d0768e:	464a      	mov	r2, r9
c0d07690:	469c      	mov	ip, r3
c0d07692:	1ad6      	subs	r6, r2, r3
c0d07694:	4467      	add	r7, ip
c0d07696:	e7b6      	b.n	c0d07606 <two_way_long_needle+0x122>
c0d07698:	9a01      	ldr	r2, [sp, #4]
c0d0769a:	4694      	mov	ip, r2
c0d0769c:	4467      	add	r7, ip
c0d0769e:	e7b0      	b.n	c0d07602 <two_way_long_needle+0x11e>
c0d076a0:	46b4      	mov	ip, r6
c0d076a2:	e7f0      	b.n	c0d07686 <two_way_long_needle+0x1a2>
c0d076a4:	4653      	mov	r3, sl
c0d076a6:	1af3      	subs	r3, r6, r3
c0d076a8:	4553      	cmp	r3, sl
c0d076aa:	d34b      	bcc.n	c0d07744 <two_way_long_needle+0x260>
c0d076ac:	3301      	adds	r3, #1
c0d076ae:	4652      	mov	r2, sl
c0d076b0:	9301      	str	r3, [sp, #4]
c0d076b2:	2301      	movs	r3, #1
c0d076b4:	1a9b      	subs	r3, r3, r2
c0d076b6:	9300      	str	r3, [sp, #0]
c0d076b8:	2380      	movs	r3, #128	; 0x80
c0d076ba:	011b      	lsls	r3, r3, #4
c0d076bc:	4699      	mov	r9, r3
c0d076be:	0033      	movs	r3, r6
c0d076c0:	2700      	movs	r7, #0
c0d076c2:	4646      	mov	r6, r8
c0d076c4:	4698      	mov	r8, r3
c0d076c6:	465b      	mov	r3, fp
c0d076c8:	19d8      	adds	r0, r3, r7
c0d076ca:	5d43      	ldrb	r3, [r0, r5]
c0d076cc:	aa02      	add	r2, sp, #8
c0d076ce:	009b      	lsls	r3, r3, #2
c0d076d0:	58d3      	ldr	r3, [r2, r3]
c0d076d2:	2b00      	cmp	r3, #0
c0d076d4:	d018      	beq.n	c0d07708 <two_way_long_needle+0x224>
c0d076d6:	19df      	adds	r7, r3, r7
c0d076d8:	4643      	mov	r3, r8
c0d076da:	1af3      	subs	r3, r6, r3
c0d076dc:	429f      	cmp	r7, r3
c0d076de:	d9f2      	bls.n	c0d076c6 <two_way_long_needle+0x1e2>
c0d076e0:	465b      	mov	r3, fp
c0d076e2:	4649      	mov	r1, r9
c0d076e4:	1998      	adds	r0, r3, r6
c0d076e6:	4643      	mov	r3, r8
c0d076e8:	4319      	orrs	r1, r3
c0d076ea:	f7ff fee9 	bl	c0d074c0 <strnlen>
c0d076ee:	4643      	mov	r3, r8
c0d076f0:	1836      	adds	r6, r6, r0
c0d076f2:	1af3      	subs	r3, r6, r3
c0d076f4:	429f      	cmp	r7, r3
c0d076f6:	d898      	bhi.n	c0d0762a <two_way_long_needle+0x146>
c0d076f8:	465b      	mov	r3, fp
c0d076fa:	19d8      	adds	r0, r3, r7
c0d076fc:	5d43      	ldrb	r3, [r0, r5]
c0d076fe:	aa02      	add	r2, sp, #8
c0d07700:	009b      	lsls	r3, r3, #2
c0d07702:	58d3      	ldr	r3, [r2, r3]
c0d07704:	2b00      	cmp	r3, #0
c0d07706:	d1e6      	bne.n	c0d076d6 <two_way_long_needle+0x1f2>
c0d07708:	4653      	mov	r3, sl
c0d0770a:	45aa      	cmp	sl, r5
c0d0770c:	d303      	bcc.n	c0d07716 <two_way_long_needle+0x232>
c0d0770e:	e00a      	b.n	c0d07726 <two_way_long_needle+0x242>
c0d07710:	3301      	adds	r3, #1
c0d07712:	42ab      	cmp	r3, r5
c0d07714:	d207      	bcs.n	c0d07726 <two_way_long_needle+0x242>
c0d07716:	5ce1      	ldrb	r1, [r4, r3]
c0d07718:	5cc2      	ldrb	r2, [r0, r3]
c0d0771a:	4291      	cmp	r1, r2
c0d0771c:	d0f8      	beq.n	c0d07710 <two_way_long_needle+0x22c>
c0d0771e:	9a00      	ldr	r2, [sp, #0]
c0d07720:	4694      	mov	ip, r2
c0d07722:	4467      	add	r7, ip
c0d07724:	e7d7      	b.n	c0d076d6 <two_way_long_needle+0x1f2>
c0d07726:	4653      	mov	r3, sl
c0d07728:	3b01      	subs	r3, #1
c0d0772a:	d203      	bcs.n	c0d07734 <two_way_long_needle+0x250>
c0d0772c:	e77e      	b.n	c0d0762c <two_way_long_needle+0x148>
c0d0772e:	3b01      	subs	r3, #1
c0d07730:	d200      	bcs.n	c0d07734 <two_way_long_needle+0x250>
c0d07732:	e77b      	b.n	c0d0762c <two_way_long_needle+0x148>
c0d07734:	5ce1      	ldrb	r1, [r4, r3]
c0d07736:	5cc2      	ldrb	r2, [r0, r3]
c0d07738:	4291      	cmp	r1, r2
c0d0773a:	d0f8      	beq.n	c0d0772e <two_way_long_needle+0x24a>
c0d0773c:	9b01      	ldr	r3, [sp, #4]
c0d0773e:	469c      	mov	ip, r3
c0d07740:	4467      	add	r7, ip
c0d07742:	e7c9      	b.n	c0d076d8 <two_way_long_needle+0x1f4>
c0d07744:	4653      	mov	r3, sl
c0d07746:	e7b1      	b.n	c0d076ac <two_way_long_needle+0x1c8>
c0d07748:	1889      	adds	r1, r1, r2
c0d0774a:	2201      	movs	r2, #1
c0d0774c:	e707      	b.n	c0d0755e <two_way_long_needle+0x7a>
c0d0774e:	2201      	movs	r2, #1
c0d07750:	1989      	adds	r1, r1, r6
c0d07752:	e6e2      	b.n	c0d0751a <two_way_long_needle+0x36>
c0d07754:	2301      	movs	r3, #1
c0d07756:	9300      	str	r3, [sp, #0]
c0d07758:	2300      	movs	r3, #0
c0d0775a:	469a      	mov	sl, r3
c0d0775c:	e71a      	b.n	c0d07594 <two_way_long_needle+0xb0>
c0d0775e:	46c0      	nop			; (mov r8, r8)
c0d07760:	fffffbf4 	.word	0xfffffbf4
c0d07764:	0000040c 	.word	0x0000040c

c0d07768 <strstr>:
c0d07768:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0776a:	46ce      	mov	lr, r9
c0d0776c:	4647      	mov	r7, r8
c0d0776e:	b580      	push	{r7, lr}
c0d07770:	000e      	movs	r6, r1
c0d07772:	7809      	ldrb	r1, [r1, #0]
c0d07774:	0005      	movs	r5, r0
c0d07776:	0004      	movs	r4, r0
c0d07778:	b091      	sub	sp, #68	; 0x44
c0d0777a:	2900      	cmp	r1, #0
c0d0777c:	d050      	beq.n	c0d07820 <strstr+0xb8>
c0d0777e:	7870      	ldrb	r0, [r6, #1]
c0d07780:	2800      	cmp	r0, #0
c0d07782:	d100      	bne.n	c0d07786 <strstr+0x1e>
c0d07784:	e089      	b.n	c0d0789a <strstr+0x132>
c0d07786:	78b7      	ldrb	r7, [r6, #2]
c0d07788:	2f00      	cmp	r7, #0
c0d0778a:	d04f      	beq.n	c0d0782c <strstr+0xc4>
c0d0778c:	78f3      	ldrb	r3, [r6, #3]
c0d0778e:	2b00      	cmp	r3, #0
c0d07790:	d100      	bne.n	c0d07794 <strstr+0x2c>
c0d07792:	e089      	b.n	c0d078a8 <strstr+0x140>
c0d07794:	7932      	ldrb	r2, [r6, #4]
c0d07796:	2a00      	cmp	r2, #0
c0d07798:	d058      	beq.n	c0d0784c <strstr+0xe4>
c0d0779a:	0030      	movs	r0, r6
c0d0779c:	f7ff fdf2 	bl	c0d07384 <strlen>
c0d077a0:	2180      	movs	r1, #128	; 0x80
c0d077a2:	0089      	lsls	r1, r1, #2
c0d077a4:	0007      	movs	r7, r0
c0d077a6:	4301      	orrs	r1, r0
c0d077a8:	0028      	movs	r0, r5
c0d077aa:	f7ff fe89 	bl	c0d074c0 <strnlen>
c0d077ae:	4287      	cmp	r7, r0
c0d077b0:	d863      	bhi.n	c0d0787a <strstr+0x112>
c0d077b2:	2ffe      	cmp	r7, #254	; 0xfe
c0d077b4:	d900      	bls.n	c0d077b8 <strstr+0x50>
c0d077b6:	e089      	b.n	c0d078cc <strstr+0x164>
c0d077b8:	1bc0      	subs	r0, r0, r7
c0d077ba:	4680      	mov	r8, r0
c0d077bc:	2240      	movs	r2, #64	; 0x40
c0d077be:	4668      	mov	r0, sp
c0d077c0:	1c79      	adds	r1, r7, #1
c0d077c2:	44a8      	add	r8, r5
c0d077c4:	f7ff fd2c 	bl	c0d07220 <memset>
c0d077c8:	2f00      	cmp	r7, #0
c0d077ca:	d00f      	beq.n	c0d077ec <strstr+0x84>
c0d077cc:	19ba      	adds	r2, r7, r6
c0d077ce:	4694      	mov	ip, r2
c0d077d0:	223f      	movs	r2, #63	; 0x3f
c0d077d2:	0033      	movs	r3, r6
c0d077d4:	4691      	mov	r9, r2
c0d077d6:	b2f8      	uxtb	r0, r7
c0d077d8:	1830      	adds	r0, r6, r0
c0d077da:	4649      	mov	r1, r9
c0d077dc:	466c      	mov	r4, sp
c0d077de:	781a      	ldrb	r2, [r3, #0]
c0d077e0:	400a      	ands	r2, r1
c0d077e2:	1ac1      	subs	r1, r0, r3
c0d077e4:	3301      	adds	r3, #1
c0d077e6:	54a1      	strb	r1, [r4, r2]
c0d077e8:	4563      	cmp	r3, ip
c0d077ea:	d1f6      	bne.n	c0d077da <strstr+0x72>
c0d077ec:	002c      	movs	r4, r5
c0d077ee:	253f      	movs	r5, #63	; 0x3f
c0d077f0:	466a      	mov	r2, sp
c0d077f2:	3c01      	subs	r4, #1
c0d077f4:	5de3      	ldrb	r3, [r4, r7]
c0d077f6:	402b      	ands	r3, r5
c0d077f8:	5cd0      	ldrb	r0, [r2, r3]
c0d077fa:	1824      	adds	r4, r4, r0
c0d077fc:	45a0      	cmp	r8, r4
c0d077fe:	d203      	bcs.n	c0d07808 <strstr+0xa0>
c0d07800:	e03d      	b.n	c0d0787e <strstr+0x116>
c0d07802:	444c      	add	r4, r9
c0d07804:	45a0      	cmp	r8, r4
c0d07806:	d33a      	bcc.n	c0d0787e <strstr+0x116>
c0d07808:	466a      	mov	r2, sp
c0d0780a:	5de3      	ldrb	r3, [r4, r7]
c0d0780c:	0031      	movs	r1, r6
c0d0780e:	402b      	ands	r3, r5
c0d07810:	5cd3      	ldrb	r3, [r2, r3]
c0d07812:	0020      	movs	r0, r4
c0d07814:	003a      	movs	r2, r7
c0d07816:	4699      	mov	r9, r3
c0d07818:	f7ff fc36 	bl	c0d07088 <memcmp>
c0d0781c:	2800      	cmp	r0, #0
c0d0781e:	d1f0      	bne.n	c0d07802 <strstr+0x9a>
c0d07820:	0020      	movs	r0, r4
c0d07822:	b011      	add	sp, #68	; 0x44
c0d07824:	bcc0      	pop	{r6, r7}
c0d07826:	46b9      	mov	r9, r7
c0d07828:	46b0      	mov	r8, r6
c0d0782a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0782c:	0409      	lsls	r1, r1, #16
c0d0782e:	2300      	movs	r3, #0
c0d07830:	782a      	ldrb	r2, [r5, #0]
c0d07832:	4301      	orrs	r1, r0
c0d07834:	e000      	b.n	c0d07838 <strstr+0xd0>
c0d07836:	0005      	movs	r5, r0
c0d07838:	2a00      	cmp	r2, #0
c0d0783a:	d01e      	beq.n	c0d0787a <strstr+0x112>
c0d0783c:	041b      	lsls	r3, r3, #16
c0d0783e:	4313      	orrs	r3, r2
c0d07840:	1c68      	adds	r0, r5, #1
c0d07842:	786a      	ldrb	r2, [r5, #1]
c0d07844:	4299      	cmp	r1, r3
c0d07846:	d1f6      	bne.n	c0d07836 <strstr+0xce>
c0d07848:	1e6c      	subs	r4, r5, #1
c0d0784a:	e7e9      	b.n	c0d07820 <strstr+0xb8>
c0d0784c:	782a      	ldrb	r2, [r5, #0]
c0d0784e:	2a00      	cmp	r2, #0
c0d07850:	d013      	beq.n	c0d0787a <strstr+0x112>
c0d07852:	0200      	lsls	r0, r0, #8
c0d07854:	4308      	orrs	r0, r1
c0d07856:	0439      	lsls	r1, r7, #16
c0d07858:	061b      	lsls	r3, r3, #24
c0d0785a:	4301      	orrs	r1, r0
c0d0785c:	4319      	orrs	r1, r3
c0d0785e:	ba09      	rev	r1, r1
c0d07860:	2300      	movs	r3, #0
c0d07862:	e001      	b.n	c0d07868 <strstr+0x100>
c0d07864:	4299      	cmp	r1, r3
c0d07866:	d01d      	beq.n	c0d078a4 <strstr+0x13c>
c0d07868:	002c      	movs	r4, r5
c0d0786a:	021b      	lsls	r3, r3, #8
c0d0786c:	3501      	adds	r5, #1
c0d0786e:	4313      	orrs	r3, r2
c0d07870:	782a      	ldrb	r2, [r5, #0]
c0d07872:	2a00      	cmp	r2, #0
c0d07874:	d1f6      	bne.n	c0d07864 <strstr+0xfc>
c0d07876:	4299      	cmp	r1, r3
c0d07878:	d014      	beq.n	c0d078a4 <strstr+0x13c>
c0d0787a:	2400      	movs	r4, #0
c0d0787c:	e7d0      	b.n	c0d07820 <strstr+0xb8>
c0d0787e:	4643      	mov	r3, r8
c0d07880:	19d8      	adds	r0, r3, r7
c0d07882:	5ddb      	ldrb	r3, [r3, r7]
c0d07884:	2b00      	cmp	r3, #0
c0d07886:	d0f8      	beq.n	c0d0787a <strstr+0x112>
c0d07888:	2180      	movs	r1, #128	; 0x80
c0d0788a:	0109      	lsls	r1, r1, #4
c0d0788c:	f7ff fe18 	bl	c0d074c0 <strnlen>
c0d07890:	4480      	add	r8, r0
c0d07892:	4544      	cmp	r4, r8
c0d07894:	d9ac      	bls.n	c0d077f0 <strstr+0x88>
c0d07896:	2400      	movs	r4, #0
c0d07898:	e7c2      	b.n	c0d07820 <strstr+0xb8>
c0d0789a:	0028      	movs	r0, r5
c0d0789c:	f000 f824 	bl	c0d078e8 <strchr>
c0d078a0:	0004      	movs	r4, r0
c0d078a2:	e7bd      	b.n	c0d07820 <strstr+0xb8>
c0d078a4:	3c03      	subs	r4, #3
c0d078a6:	e7bb      	b.n	c0d07820 <strstr+0xb8>
c0d078a8:	0609      	lsls	r1, r1, #24
c0d078aa:	0400      	lsls	r0, r0, #16
c0d078ac:	4301      	orrs	r1, r0
c0d078ae:	023f      	lsls	r7, r7, #8
c0d078b0:	782a      	ldrb	r2, [r5, #0]
c0d078b2:	4339      	orrs	r1, r7
c0d078b4:	e000      	b.n	c0d078b8 <strstr+0x150>
c0d078b6:	0005      	movs	r5, r0
c0d078b8:	2a00      	cmp	r2, #0
c0d078ba:	d0de      	beq.n	c0d0787a <strstr+0x112>
c0d078bc:	4313      	orrs	r3, r2
c0d078be:	021b      	lsls	r3, r3, #8
c0d078c0:	786a      	ldrb	r2, [r5, #1]
c0d078c2:	1c68      	adds	r0, r5, #1
c0d078c4:	4299      	cmp	r1, r3
c0d078c6:	d1f6      	bne.n	c0d078b6 <strstr+0x14e>
c0d078c8:	1eac      	subs	r4, r5, #2
c0d078ca:	e7a9      	b.n	c0d07820 <strstr+0xb8>
c0d078cc:	0001      	movs	r1, r0
c0d078ce:	003b      	movs	r3, r7
c0d078d0:	0032      	movs	r2, r6
c0d078d2:	0028      	movs	r0, r5
c0d078d4:	f7ff fe06 	bl	c0d074e4 <two_way_long_needle>
c0d078d8:	0004      	movs	r4, r0
c0d078da:	e7a1      	b.n	c0d07820 <strstr+0xb8>

c0d078dc <bzero>:
c0d078dc:	b510      	push	{r4, lr}
c0d078de:	000a      	movs	r2, r1
c0d078e0:	2100      	movs	r1, #0
c0d078e2:	f7ff fc9d 	bl	c0d07220 <memset>
c0d078e6:	bd10      	pop	{r4, pc}

c0d078e8 <strchr>:
c0d078e8:	2303      	movs	r3, #3
c0d078ea:	b2ca      	uxtb	r2, r1
c0d078ec:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d078ee:	4003      	ands	r3, r0
c0d078f0:	2a00      	cmp	r2, #0
c0d078f2:	d035      	beq.n	c0d07960 <strchr+0x78>
c0d078f4:	2403      	movs	r4, #3
c0d078f6:	2b00      	cmp	r3, #0
c0d078f8:	d12d      	bne.n	c0d07956 <strchr+0x6e>
c0d078fa:	25ff      	movs	r5, #255	; 0xff
c0d078fc:	4029      	ands	r1, r5
c0d078fe:	020d      	lsls	r5, r1, #8
c0d07900:	4329      	orrs	r1, r5
c0d07902:	040d      	lsls	r5, r1, #16
c0d07904:	430d      	orrs	r5, r1
c0d07906:	0029      	movs	r1, r5
c0d07908:	6804      	ldr	r4, [r0, #0]
c0d0790a:	4e26      	ldr	r6, [pc, #152]	; (c0d079a4 <strchr+0xbc>)
c0d0790c:	4061      	eors	r1, r4
c0d0790e:	198b      	adds	r3, r1, r6
c0d07910:	438b      	bics	r3, r1
c0d07912:	19a1      	adds	r1, r4, r6
c0d07914:	43a1      	bics	r1, r4
c0d07916:	4e24      	ldr	r6, [pc, #144]	; (c0d079a8 <strchr+0xc0>)
c0d07918:	430b      	orrs	r3, r1
c0d0791a:	4233      	tst	r3, r6
c0d0791c:	d111      	bne.n	c0d07942 <strchr+0x5a>
c0d0791e:	6841      	ldr	r1, [r0, #4]
c0d07920:	4f20      	ldr	r7, [pc, #128]	; (c0d079a4 <strchr+0xbc>)
c0d07922:	000c      	movs	r4, r1
c0d07924:	19cb      	adds	r3, r1, r7
c0d07926:	406c      	eors	r4, r5
c0d07928:	438b      	bics	r3, r1
c0d0792a:	19e1      	adds	r1, r4, r7
c0d0792c:	43a1      	bics	r1, r4
c0d0792e:	430b      	orrs	r3, r1
c0d07930:	3004      	adds	r0, #4
c0d07932:	4233      	tst	r3, r6
c0d07934:	d0f3      	beq.n	c0d0791e <strchr+0x36>
c0d07936:	7803      	ldrb	r3, [r0, #0]
c0d07938:	2b00      	cmp	r3, #0
c0d0793a:	d005      	beq.n	c0d07948 <strchr+0x60>
c0d0793c:	429a      	cmp	r2, r3
c0d0793e:	d004      	beq.n	c0d0794a <strchr+0x62>
c0d07940:	3001      	adds	r0, #1
c0d07942:	7803      	ldrb	r3, [r0, #0]
c0d07944:	2b00      	cmp	r3, #0
c0d07946:	d1f9      	bne.n	c0d0793c <strchr+0x54>
c0d07948:	2000      	movs	r0, #0
c0d0794a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0794c:	4293      	cmp	r3, r2
c0d0794e:	d0fc      	beq.n	c0d0794a <strchr+0x62>
c0d07950:	3001      	adds	r0, #1
c0d07952:	4220      	tst	r0, r4
c0d07954:	d0d1      	beq.n	c0d078fa <strchr+0x12>
c0d07956:	7803      	ldrb	r3, [r0, #0]
c0d07958:	2b00      	cmp	r3, #0
c0d0795a:	d1f7      	bne.n	c0d0794c <strchr+0x64>
c0d0795c:	2000      	movs	r0, #0
c0d0795e:	e7f4      	b.n	c0d0794a <strchr+0x62>
c0d07960:	2b00      	cmp	r3, #0
c0d07962:	d008      	beq.n	c0d07976 <strchr+0x8e>
c0d07964:	2203      	movs	r2, #3
c0d07966:	e002      	b.n	c0d0796e <strchr+0x86>
c0d07968:	3001      	adds	r0, #1
c0d0796a:	4210      	tst	r0, r2
c0d0796c:	d003      	beq.n	c0d07976 <strchr+0x8e>
c0d0796e:	7803      	ldrb	r3, [r0, #0]
c0d07970:	2b00      	cmp	r3, #0
c0d07972:	d1f9      	bne.n	c0d07968 <strchr+0x80>
c0d07974:	e7e9      	b.n	c0d0794a <strchr+0x62>
c0d07976:	6802      	ldr	r2, [r0, #0]
c0d07978:	4b0a      	ldr	r3, [pc, #40]	; (c0d079a4 <strchr+0xbc>)
c0d0797a:	490b      	ldr	r1, [pc, #44]	; (c0d079a8 <strchr+0xc0>)
c0d0797c:	18d3      	adds	r3, r2, r3
c0d0797e:	4393      	bics	r3, r2
c0d07980:	420b      	tst	r3, r1
c0d07982:	d106      	bne.n	c0d07992 <strchr+0xaa>
c0d07984:	6842      	ldr	r2, [r0, #4]
c0d07986:	4b07      	ldr	r3, [pc, #28]	; (c0d079a4 <strchr+0xbc>)
c0d07988:	3004      	adds	r0, #4
c0d0798a:	18d3      	adds	r3, r2, r3
c0d0798c:	4393      	bics	r3, r2
c0d0798e:	420b      	tst	r3, r1
c0d07990:	d0f8      	beq.n	c0d07984 <strchr+0x9c>
c0d07992:	7803      	ldrb	r3, [r0, #0]
c0d07994:	2b00      	cmp	r3, #0
c0d07996:	d0d8      	beq.n	c0d0794a <strchr+0x62>
c0d07998:	7843      	ldrb	r3, [r0, #1]
c0d0799a:	3001      	adds	r0, #1
c0d0799c:	2b00      	cmp	r3, #0
c0d0799e:	d1fb      	bne.n	c0d07998 <strchr+0xb0>
c0d079a0:	e7d3      	b.n	c0d0794a <strchr+0x62>
c0d079a2:	46c0      	nop			; (mov r8, r8)
c0d079a4:	fefefeff 	.word	0xfefefeff
c0d079a8:	80808080 	.word	0x80808080

c0d079ac <C_icon_app_colors>:
c0d079ac:	00000000 00ffffff                       ........

c0d079b4 <C_icon_app_bitmap>:
c0d079b4:	ffffffff e43fffff f18fe01f e467e0c7     ......?.......g.
c0d079c4:	e307e627 f807f18f fffffc27 ffffffff     '.......'.......

c0d079d4 <C_icon_app>:
c0d079d4:	00000010 00000010 00000001 c0d079ac     .............y..
c0d079e4:	c0d079b4                                .y..

c0d079e8 <C_icon_dashboard_colors>:
c0d079e8:	00000000 00ffffff                       ........

c0d079f0 <C_icon_dashboard_bitmap>:
c0d079f0:	c1fe01e0 067038ff 9e7e79d8 b9e7e79f     .....8p..y~.....
c0d07a00:	f1c0e601 7807f83f 00000000              ....?..x....

c0d07a0c <C_icon_dashboard>:
c0d07a0c:	0000000e 0000000e 00000001 c0d079e8     .............y..
c0d07a1c:	c0d079f0                                .y..

c0d07a20 <C_icon_validate_14_colors>:
c0d07a20:	00000000 00ffffff                       ........

c0d07a28 <C_icon_validate_14_bitmap>:
c0d07a28:	00000000 00c00000 e0670038 039c1c38     ........8.g.8...
c0d07a38:	800f007e 00000001 00000000              ~...........

c0d07a44 <C_icon_validate_14>:
c0d07a44:	0000000e 0000000e 00000001 c0d07a20     ............ z..
c0d07a54:	c0d07a28                                (z..

c0d07a58 <C_icon_warning_colors>:
c0d07a58:	00000000 00ffffff                       ........

c0d07a60 <C_icon_warning_bitmap>:
c0d07a60:	00300000 2007800c 3300cc01 07381ce0     ..0.... ...3..8.
c0d07a70:	f8f3c3ff 001ffe7c 00000000              ....|.......

c0d07a7c <C_icon_warning>:
c0d07a7c:	0000000e 0000000e 00000001 c0d07a58     ............Xz..
c0d07a8c:	c0d07a60 72646461 7465675f 496d754e     `z..addr_getNumI
c0d07a9c:	736d6574 74615000 52450068 00524f52     tems.Path.ERROR.
c0d07aac:	27006425 45002f00 72657078 6f4d2074     %d.'./.Expert Mo
c0d07abc:	00006564                                de..

c0d07ac0 <chainConfig>:
c0d07ac0:	0000003c c0d07b14 00000001 0000003c     <....{......<...
c0d07ad0:	c0d07b18 00000001 0000003c c0d07b1e     .{......<....{..
c0d07ae0:	00000001 0000003c c0d07b23 00000001     ....<...#{......
c0d07af0:	0000003c c0d07b27 00000001 0000003c     <...'{......<...
c0d07b00:	c0d07b2c 00000001 0000003c c0d07b31     ,{......<...1{..
c0d07b10:	00000001 006a6e69 6f6d7665 70780073     ....inj.evmos.xp
c0d07b20:	6400616c 7a006d79 00617465 61726562     la.dym.zeta.bera
c0d07b30:	6d756800 70006e61 65737261 7261707c     .human.parse|par
c0d07b40:	00646573 7367736d 706e692f 2f737475     sed.msgs/inputs/
c0d07b50:	6e696f63 736d0073 6f2f7367 75707475     coins.msgs/outpu
c0d07b60:	632f7374 736e696f 67736d00 61762f73     ts/coins.msgs/va
c0d07b70:	2f65756c 75706e69 632f7374 736e696f     lue/inputs/coins
c0d07b80:	67736d00 61762f73 2f65756c 7074756f     .msgs/value/outp
c0d07b90:	2f737475 6e696f63 736d0073 762f7367     uts/coins.msgs/v
c0d07ba0:	65756c61 6f6d612f 00746e75 2f706974     alue/amount.tip/
c0d07bb0:	756f6d61 4500746e 7974706d 20732500     amount.Empty.%s 
c0d07bc0:	73252000 68736e00 2e300072 206f4e00     . %s.nshr.0..No 
c0d07bd0:	6f727265 6f4e0072 726f6d20 61642065     error.No more da
c0d07be0:	49006174 6974696e 7a696c61 65206465     ta.Initialized e
c0d07bf0:	7974706d 6e6f6320 74786574 656e5500     mpty context.Une
c0d07c00:	63657078 20646574 66667562 65207265     xpected buffer e
c0d07c10:	5500646e 7078656e 65746365 65762064     nd.Unexpected ve
c0d07c20:	6f697372 6e55006e 65707865 64657463     rsion.Unexpected
c0d07c30:	61686320 74636172 00737265 78656e55      characters.Unex
c0d07c40:	74636570 66206465 646c6569 656e5500     pected field.Une
c0d07c50:	63657078 20646574 6c707564 74616369     xpected duplicat
c0d07c60:	66206465 646c6569 6c615600 6f206575     ed field.Value o
c0d07c70:	6f207475 61722066 0065676e 78656e55     ut of range.Unex
c0d07c80:	74636570 63206465 6e696168 65746900     pected chain.ite
c0d07c90:	7571206d 20797265 75746572 64656e72     m query returned
c0d07ca0:	206f6e20 75736572 0073746c 7373696d      no results.miss
c0d07cb0:	20676e69 6c656966 6e750064 65707865     ing field.unexpe
c0d07cc0:	64657463 70797420 69640065 616c7073     cted type.displa
c0d07cd0:	6e692079 20786564 2074756f 7220666f     y index out of r
c0d07ce0:	65676e61 73696400 79616c70 67617020     ange.display pag
c0d07cf0:	756f2065 666f2074 6e617220 4a006567     e out of range.J
c0d07d00:	2e4e4f53 72655a20 6f74206f 736e656b     SON. Zero tokens
c0d07d10:	4f534a00 54202e4e 6d206f6f 20796e61     .JSON. Too many 
c0d07d20:	656b6f74 4a00736e 204e4f53 69727473     tokens.JSON stri
c0d07d30:	6920676e 6f6e2073 6f632074 656c706d     ng is not comple
c0d07d40:	4a006574 204e4f53 746e6f43 736e6961     te.JSON Contains
c0d07d50:	69687720 70736574 20656361 74206e69      whitespace in t
c0d07d60:	63206568 7570726f 534a0073 44204e4f     he corpus.JSON D
c0d07d70:	69746369 72616e6f 20736569 20657261     ictionaries are 
c0d07d80:	20746f6e 74726f73 4a006465 204e4f53     not sorted.JSON 
c0d07d90:	7373694d 20676e69 69616863 64695f6e     Missing chain_id
c0d07da0:	4f534a00 694d204e 6e697373 65732067     .JSON Missing se
c0d07db0:	6e657571 4a006563 204e4f53 7373694d     quence.JSON Miss
c0d07dc0:	20676e69 00656566 4e4f534a 73694d20     ing fee.JSON Mis
c0d07dd0:	676e6973 67736d20 534a0073 4d204e4f     sing msgs.JSON M
c0d07de0:	69737369 6120676e 756f6363 6e20746e     issing account n
c0d07df0:	65626d75 534a0072 4d204e4f 69737369     umber.JSON Missi
c0d07e00:	6d20676e 006f6d65 4e4f534a 656e5520     ng memo.JSON Une
c0d07e10:	63657078 20646574 6f727265 6e750072     xpected error.un
c0d07e20:	65707865 64657463 4f424320 72652052     expected CBOR er
c0d07e30:	00726f72 524f4243 73617720 746f6e20     ror.CBOR was not
c0d07e40:	206e6920 6f6e6163 6163696e 726f206c      in canonical or
c0d07e50:	00726564 78656e55 74636570 43206465     der.Unexpected C
c0d07e60:	20524f42 00464f45 746e6f63 20747865     BOR EOF.context 
c0d07e70:	66657270 69207869 6e692073 696c6176     prefix is invali
c0d07e80:	6f630064 7865746e 6e752074 65707865     d.context unexpe
c0d07e90:	64657463 7a697320 6f630065 7865746e     cted size.contex
c0d07ea0:	6e692074 696c6176 68632064 00737261     t invalid chars.
c0d07eb0:	6e617254 74636173 206e6f69 74207369     Transaction is t
c0d07ec0:	62206f6f 55006769 6365726e 696e676f     oo big.Unrecogni
c0d07ed0:	2064657a 6f727265 6f632072 61006564     zed error code.a
c0d07ee0:	756f6363 6e5f746e 65626d75 69740072     ccount_number.ti
c0d07ef0:	785c0070 32302e25 736d0058 742f7367     p.\x%.02X.msgs/t
c0d07f00:	00657079 7367736d 6c61762f 642f6575     ype.msgs/value/d
c0d07f10:	67656c65 726f7461 6464615f 73736572     elegator_address
c0d07f20:	61685300 69526572 4c2d676e 53656669     .ShareRing-LifeS
c0d07f30:	656c7974 46454400 544c5541 61684320     tyle.DEFAULT Cha
c0d07f40:	00206e69 20746f4e 6f6c6c41 20646577     in .Not Allowed 
c0d07f50:	69616863 6843006e 206e6961 4e207369     chain.Chain is N
c0d07f60:	4420544f 55414645 4300544c 6e696168     OT DEFAULT.Chain
c0d07f70:	00444920 6f636341 00746e75 75716553      ID.Account.Sequ
c0d07f80:	65636e65 6d654d00 6566006f 61672f65     ence.Memo.fee/ga
c0d07f90:	61470073 65660073 61672f65 696c5f73     s.Gas.fee/gas_li
c0d07fa0:	0074696d 20736147 696d694c 65660074     mit.Gas Limit.fe
c0d07fb0:	72672f65 65746e61 72470072 65746e61     e/granter.Grante
c0d07fc0:	65660072 61702f65 00726579 65796150     r.fee/payer.Paye
c0d07fd0:	79540072 54006570 74007069 742f7069     r.Type.Tip.tip/t
c0d07fe0:	65707069 69540072 72657070 67736d00     ipper.Tipper.msg
c0d07ff0:	6e692f73 73747570 6464612f 73736572     s/inputs/address
c0d08000:	756f5300 20656372 72646441 00737365     .Source Address.
c0d08010:	72756f53 43206563 736e696f 67736d00     Source Coins.msg
c0d08020:	756f2f73 74757074 64612f73 73657264     s/outputs/addres
c0d08030:	65440073 41207473 65726464 44007373     s.Dest Address.D
c0d08040:	20747365 6e696f43 736d0073 762f7367     est Coins.msgs/v
c0d08050:	65756c61 706e692f 2f737475 72646461     alue/inputs/addr
c0d08060:	00737365 7367736d 6c61762f 6f2f6575     ess.msgs/value/o
c0d08070:	75707475 612f7374 65726464 6d007373     utputs/address.m
c0d08080:	2f736773 756c6176 72662f65 615f6d6f     sgs/value/from_a
c0d08090:	65726464 46007373 006d6f72 7367736d     ddress.From.msgs
c0d080a0:	6c61762f 742f6575 64615f6f 73657264     /value/to_addres
c0d080b0:	6f540073 6c654400 74616765 6d00726f     s.To.Delegator.m
c0d080c0:	2f736773 756c6176 61762f65 6164696c     sgs/value/valida
c0d080d0:	5f726f74 72646461 00737365 7367736d     tor_address.msgs
c0d080e0:	6c61762f 772f6575 64687469 5f776172     /value/withdraw_
c0d080f0:	72646461 00737365 68746957 77617264     address.Withdraw
c0d08100:	64644120 73736572 67736d00 61762f73      Address.msgs/va
c0d08110:	2f65756c 696c6176 6f746164 72735f72     lue/validator_sr
c0d08120:	64615f63 73657264 61560073 6164696c     c_address.Valida
c0d08130:	20726f74 72756f53 6d006563 2f736773     tor Source.msgs/
c0d08140:	756c6176 61762f65 6164696c 5f726f74     value/validator_
c0d08150:	5f747364 72646461 00737365 696c6156     dst_address.Vali
c0d08160:	6f746164 65442072 6d007473 2f736773     dator Dest.msgs/
c0d08170:	756c6176 65642f65 69726373 6f697470     value/descriptio
c0d08180:	6544006e 69726373 6f697470 736d006e     n.Description.ms
c0d08190:	762f7367 65756c61 696e692f 6c616974     gs/value/initial
c0d081a0:	7065645f 7469736f 6f6d612f 00746e75     _deposit/amount.
c0d081b0:	6f706544 20746973 756f6d41 6d00746e     Deposit Amount.m
c0d081c0:	2f736773 756c6176 6e692f65 61697469     sgs/value/initia
c0d081d0:	65645f6c 69736f70 65642f74 006d6f6e     l_deposit/denom.
c0d081e0:	6f706544 20746973 6f6e6544 736d006d     Deposit Denom.ms
c0d081f0:	762f7367 65756c61 6f72702f 61736f70     gs/value/proposa
c0d08200:	79745f6c 6d006570 2f736773 756c6176     l_type.msgs/valu
c0d08210:	72702f65 736f706f 50007265 6f706f72     e/proposer.Propo
c0d08220:	00726573 7367736d 6c61762f 742f6575     ser.msgs/value/t
c0d08230:	656c7469 74695400 6d00656c 2f736773     itle.Title.msgs/
c0d08240:	756c6176 65642f65 69736f70 00726f74     value/depositor.
c0d08250:	7367736d 6c61762f 702f6575 6f706f72     msgs/value/propo
c0d08260:	5f6c6173 50006469 6f706f72 206c6173     sal_id.Proposal 
c0d08270:	6d004449 2f736773 756c6176 6f762f65     ID.msgs/value/vo
c0d08280:	00726574 7367736d 6c61762f 6f2f6575     ter.msgs/value/o
c0d08290:	6f697470 704f006e 6e6f6974 67736d00     ption.Option.msg
c0d082a0:	72632f73 6f746165 78540072 65724320     s/creator.Tx Cre
c0d082b0:	726f7461 67736d00 64612f73 73657264     ator.msgs/addres
c0d082c0:	736d0073 722f7367 00657461 7367736d     s.msgs/rate.msgs
c0d082d0:	6f6d612f 00746e75 7367736d 7463612f     /amount.msgs/act
c0d082e0:	006e6f69 69746341 6d006e6f 2f736773     ion.Action.msgs/
c0d082f0:	6576656c 736d006c 662f7367 6d006565     level.msgs/fee.m
c0d08300:	2f736773 70726873 52485300 736d0050     sgs/shrp.SHRP.ms
c0d08310:	632f7367 736e696f 6f6d612f 00746e75     gs/coins/amount.
c0d08320:	6e696f43 6f6d4120 00746e75 7367736d     Coin Amount.msgs
c0d08330:	696f632f 642f736e 6d6f6e65 696f4300     /coins/denom.Coi
c0d08340:	6544206e 696d6f6e 6974616e 6d006e6f     n Denomination.m
c0d08350:	2f736773 68736168 67736d00 74732f73     sgs/hash.msgs/st
c0d08360:	73757461 61745300 00737574 7367736d     atus.Status.msgs
c0d08370:	6e776f2f 6d007265 2f736773 44495555     /owner.msgs/UUID
c0d08380:	67736d00 6f622f73 72656b6f 6f6f4200     .msgs/booker.Boo
c0d08390:	0072656b 7367736d 7275642f 6f697461     ker.msgs/duratio
c0d083a0:	7544006e 69746172 6d006e6f 2f736773     n.Duration.msgs/
c0d083b0:	6b6f6f62 42004449 496b6f6f 736d0044     bookID.BookID.ms
c0d083c0:	642f7367 00617461 7367736d 6c6f682f     gs/data.msgs/hol
c0d083d0:	00726564 646c6f48 6d007265 2f736773     der.Holder.msgs/
c0d083e0:	75737369 49007265 65757373 736d0072     issuer.Issuer.ms
c0d083f0:	702f7367 666f6f72 6f725000 6d00666f     gs/proof.Proof.m
c0d08400:	2f736773 72646461 65737365 736d0073     sgs/addresses.ms
c0d08410:	692f7367 65757373 64644172 73736572     gs/issuerAddress
c0d08420:	73734900 20726575 72646441 00737365     .Issuer Address.
c0d08430:	7367736d 6361622f 4170756b 65726464     msgs/backupAddre
c0d08440:	42007373 756b6361 64412070 73657264     ss.Backup Addres
c0d08450:	736d0073 652f7367 61727478 61746144     s.msgs/extraData
c0d08460:	74784500 44206172 00617461 7367736d     .Extra Data.msgs
c0d08470:	0064692f 7367736d 6e776f2f 64417265     /id.msgs/ownerAd
c0d08480:	73657264 774f0073 2072656e 72646441     dress.Owner Addr
c0d08490:	00737365 7367736d 7365642f 64644174     ess.msgs/destAdd
c0d084a0:	73736572 73654400 616e6974 6e6f6974     ress.Destination
c0d084b0:	64644120 73736572 67736d00 656e2f73      Address.msgs/ne
c0d084c0:	726f7774 654e006b 726f7774 736d006b     twork.Network.ms
c0d084d0:	612f7367 6e756f6d 6d612f74 746e756f     gs/amount/amount
c0d084e0:	61775300 6d412070 746e756f 67736d00     .Swap Amount.msg
c0d084f0:	6d612f73 746e756f 6e65642f 53006d6f     s/amount/denom.S
c0d08500:	20706177 6f6e6544 616e696d 6e6f6974     wap Denomination
c0d08510:	67736d00 65662f73 6d612f65 746e756f     .msgs/fee/amount
c0d08520:	65654600 6f6d4120 00746e75 7367736d     .Fee Amount.msgs
c0d08530:	6565662f 6e65642f 46006d6f 44206565     /fee/denom.Fee D
c0d08540:	6d6f6e65 74616e69 006e6f69 7367736d     enomination.msgs
c0d08550:	6372732f 72646441 00737365 7367736d     /srcAddress.msgs
c0d08560:	6769732f 7574616e 53006572 616e6769     /signature.Signa
c0d08570:	65727574 67736d00 64692f73 44490073     ture.msgs/ids.ID
c0d08580:	736d0073 622f7367 68637461 42006449     s.msgs/batchId.B
c0d08590:	68637461 6d004449 2f736773 65686373     atchID.msgs/sche
c0d085a0:	6d00616d 2f736773 642f6e69 6d6f6e65     ma.msgs/in/denom
c0d085b0:	706e4900 44207475 6d6f6e65 74616e69     .Input Denominat
c0d085c0:	006e6f69 7367736d 2f6e692f 756f6d61     ion.msgs/in/amou
c0d085d0:	5300746e 20706177 46206e49 6d006565     nt.Swap In Fee.m
c0d085e0:	2f736773 2f74756f 6f6e6564 754f006d     sgs/out/denom.Ou
c0d085f0:	74757074 6e654420 6e696d6f 6f697461     tput Denominatio
c0d08600:	736d006e 6f2f7367 612f7475 6e756f6d     n.msgs/out/amoun
c0d08610:	77530074 4f207061 46207475 6d006565     t.Swap Out Fee.m
c0d08620:	2f736773 746e6f63 74636172 6f707845     sgs/contractExpo
c0d08630:	746e656e 6e6f4300 63617274 78452074     nent.Contract Ex
c0d08640:	656e6f70 6d00746e 2f736773 65636572     ponent.msgs/rece
c0d08650:	72657669 63655200 65766965 736d0072     iver.Receiver.ms
c0d08660:	742f7367 65764578 2f73746e 49676f6c     gs/txEvents/logI
c0d08670:	7865646e 67736d00 78742f73 6e657645     ndex.msgs/txEven
c0d08680:	732f7374 65646e65 78540072 646e6553     ts/sender.TxSend
c0d08690:	6d007265 2f736773 76457874 73746e65     er.msgs/txEvents
c0d086a0:	4878742f 00687361 61487854 6d006873     /txHash.TxHash.m
c0d086b0:	2f736773 756c6176 72632f65 6f746165     sgs/value/creato
c0d086c0:	736d0072 762f7367 65756c61 6d656d2f     r.msgs/value/mem
c0d086d0:	736d006f 732f7367 65646e65 736d0072     o.msgs/sender.ms
c0d086e0:	772f7367 5f6d7361 65747962 646f635f     gs/wasm_byte_cod
c0d086f0:	61570065 42206d73 20657479 65646f43     e.Wasm Byte Code
c0d08700:	67736d00 6e692f73 6e617473 74616974     .msgs/instantiat
c0d08710:	65705f65 73696d72 6e6f6973 7265702f     e_permission/per
c0d08720:	7373696d 006e6f69 74736e49 69746e61     mission.Instanti
c0d08730:	20657461 6d726550 69737369 6d006e6f     ate Permission.m
c0d08740:	2f736773 74736e69 69746e61 5f657461     sgs/instantiate_
c0d08750:	6d726570 69737369 612f6e6f 65726464     permission/addre
c0d08760:	49007373 6174736e 6169746e 50206574     ss.Instantiate P
c0d08770:	696d7265 6f697373 6441206e 73657264     ermission Addres
c0d08780:	736d0073 692f7367 6174736e 6169746e     s.msgs/instantia
c0d08790:	705f6574 696d7265 6f697373 64612f6e     te_permission/ad
c0d087a0:	73657264 00736573 74736e49 69746e61     dresses.Instanti
c0d087b0:	20657461 6d726550 69737369 41206e6f     ate Permission A
c0d087c0:	65726464 73657373 67736d00 64612f73     ddresses.msgs/ad
c0d087d0:	006e696d 7367736d 646f632f 64695f65     min.msgs/code_id
c0d087e0:	646f4300 44492065 67736d00 616c2f73     .Code ID.msgs/la
c0d087f0:	006c6562 6562614c 736d006c 6d2f7367     bel.Label.msgs/m
c0d08800:	6d006773 2f736773 646e7566 65642f73     sg.msgs/funds/de
c0d08810:	006d6f6e 646e7546 65442073 696d6f6e     nom.Funds Denomi
c0d08820:	6974616e 6d006e6f 2f736773 646e7566     nation.msgs/fund
c0d08830:	6d612f73 746e756f 6e754600 41207364     s/amount.Funds A
c0d08840:	6e756f6d 736d0074 732f7367 00746c61     mount.msgs/salt.
c0d08850:	746c6153 67736d00 69662f73 736d5f78     Salt.msgs/fix_ms
c0d08860:	69460067 654d2078 67617373 736d0065     g.Fix Message.ms
c0d08870:	632f7367 72746e6f 00746361 7367736d     gs/contract.msgs
c0d08880:	77656e2f 6d64615f 4e006e69 41207765     /new_admin.New A
c0d08890:	6e696d64 32313000 36353433 61393837     dmin.0123456789a
c0d088a0:	65646362 00000066                       bcdef...

c0d088a8 <key_substitutions>:
c0d088a8:	c0d07d98 c0d07f6b c0d07edf c0d07f74     .}..k....~..t...
c0d088b8:	c0d07dae c0d07f7c c0d07e03 c0d07f85     .}..|....~......
c0d088c8:	c0d08516 c0d0940f c0d07f8a c0d07f92     ................
c0d088d8:	c0d07f96 c0d07fa4 c0d07fae c0d07fba     ................
c0d088e8:	c0d07fc2 c0d07fcc c0d07efa c0d07fd2     .........~......
c0d088f8:	c0d07bac c0d07fd7 c0d07fdb c0d07fe6     .{..............
c0d08908:	c0d07fed c0d08001 c0d07b44 c0d08010     ........D{......
c0d08918:	c0d0801d c0d08032 c0d07b56 c0d0803f     ....2...V{..?...
c0d08928:	c0d0804a c0d08001 c0d07b69 c0d08010     J.......i{......
c0d08938:	c0d08064 c0d08032 c0d07b81 c0d0803f     d...2....{..?...
c0d08948:	c0d0807f c0d08097 c0d0809c c0d080b2     ................
c0d08958:	c0d07b9a c0d08525 c0d07f04 c0d080b5     .{..%...........
c0d08968:	c0d080bf c0d09122 c0d080dc c0d080f8     ...."...........
c0d08978:	c0d08109 c0d0812a c0d0813b c0d0815c     ....*...;...\...
c0d08988:	c0d0816b c0d08182 c0d0818e c0d081b0     k...............
c0d08998:	c0d081bf c0d081e0 c0d081ee c0d08e7b     ............{...
c0d089a8:	c0d08207 c0d0821b c0d08224 c0d08235     ........$...5...
c0d089b8:	c0d0823b c0d0868c c0d08250 c0d08267     ;.......P...g...
c0d089c8:	c0d08273 c0d08182 c0d08284 c0d08296     s...............
c0d089d8:	c0d0829d c0d082aa c0d082b5 c0d08008     ................
c0d089e8:	c0d082c2 c0d09344 c0d082cc c0d08525     ....D.......%...
c0d089f8:	c0d082d8 c0d082e4 c0d082c2 c0d09344     ............D...
c0d08a08:	c0d082eb c0d09393 c0d082f6 c0d0940f     ................
c0d08a18:	c0d082ff c0d08309 c0d0830e c0d08320     ............ ...
c0d08a28:	c0d0832c c0d0833d c0d0834f c0d086aa     ,...=...O.......
c0d08a38:	c0d08359 c0d08365 c0d0836c c0d094cd     Y...e...l.......
c0d08a48:	c0d08377 c0d0837c c0d08381 c0d0838d     w...|...........
c0d08a58:	c0d08394 c0d083a2 c0d083ab c0d083b7     ................
c0d08a68:	c0d083be c0d08467 c0d083c8 c0d083d4     ....g...........
c0d08a78:	c0d083db c0d083e7 c0d083ee c0d083f9     ................
c0d08a88:	c0d083ff c0d087bf c0d0840e c0d08421     ............!...
c0d08a98:	c0d08430 c0d08443 c0d08452 c0d08461     0...C...R...a...
c0d08aa8:	c0d0846c c0d087e6 c0d08474 c0d08486     l.......t.......
c0d08ab8:	c0d08494 c0d084a5 c0d084b9 c0d084c6     ................
c0d08ac8:	c0d084ce c0d084e1 c0d084ed c0d084ff     ................
c0d08ad8:	c0d08511 c0d08521 c0d0852c c0d0853b     ....!...,...;...
c0d08ae8:	c0d0854c c0d08001 c0d0855c c0d0856b     L.......\...k...
c0d08af8:	c0d08575 c0d0857e c0d08582 c0d0858f     u...~...........
c0d08b08:	c0d08597 c0d09569 c0d085a3 c0d085b1     ....i...........
c0d08b18:	c0d085c4 c0d085d3 c0d085df c0d085ee     ................
c0d08b28:	c0d08602 c0d08612 c0d0861f c0d08635     ............5...
c0d08b38:	c0d08647 c0d08655 c0d0865e c0d0866f     G...U...^...o...
c0d08b48:	c0d08675 c0d0868a c0d08693 c0d086a8     u...............
c0d08b58:	c0d086af c0d082ad c0d086c2 c0d07f85     ................
c0d08b68:	c0d086d2 c0d0868c c0d086de c0d086f2     ................
c0d08b78:	c0d08701 c0d08728 c0d0873f c0d08763     ....(...?...c...
c0d08b88:	c0d08782 c0d087a8 c0d087c9 c0d0972a     ............*...
c0d08b98:	c0d087d4 c0d087e1 c0d087e9 c0d087f4     ................
c0d08ba8:	c0d087fa c0d08866 c0d08803 c0d08814     ....f...........
c0d08bb8:	c0d08827 c0d08839 c0d087e9 c0d087f4     '...9...........
c0d08bc8:	c0d08846 c0d08850 c0d08855 c0d08862     F...P...U...b...
c0d08bd8:	c0d0886e c0d0968c c0d0887c c0d0888b     n.......|.......

c0d08be8 <value_substitutions>:
c0d08be8:	c0d08e06 c0d08f83 c0d08e19 c0d08e27     ............'...
c0d08bf8:	c0d08e30 c0d08e3e c0d08e49 c0d08e5c     0...>...I...\...
c0d08c08:	c0d08e67 c0d08e84 c0d08e8c c0d0951a     g...............
c0d08c18:	c0d08ea2 c0d08eb0 c0d08eb5 c0d08edc     ................
c0d08c28:	c0d08eec c0d08f16 c0d08f2f c0d08f50     ......../...P...
c0d08c38:	c0d08f65 c0d08f7d c0d08f88 c0d08f9a     e...}...........
c0d08c48:	c0d08fa7 c0d08fb9 c0d08fc6 c0d08fd8     ................
c0d08c58:	c0d08fe5 c0d08ffb c0d0900a c0d09022     ............"...
c0d08c68:	c0d09033 c0d0904b c0d0905b c0d09074     3...K...[...t...
c0d08c78:	c0d0908e c0d090a6 c0d090b6 c0d090ce     ................
c0d08c88:	c0d090de c0d090f4 c0d09105 c0d0911b     ................
c0d08c98:	c0d0912c c0d09144 c0d09158 c0d09170     ,...D...X...p...
c0d08ca8:	c0d09184 c0d0919e c0d091af c0d091c9     ................
c0d08cb8:	c0d091da c0d091f5 c0d0920d c0d09228     ............(...
c0d08cc8:	c0d09240 c0d09261 c0d0927a c0d0929b     @...a...z.......
c0d08cd8:	c0d092b4 c0d092cd c0d092dd c0d092f6     ................
c0d08ce8:	c0d09306 c0d09318 c0d09320 c0d09337     ........ ...7...
c0d08cf8:	c0d09349 c0d09360 c0d0936e c0d09388     I...`...n.......
c0d08d08:	c0d09399 c0d093b6 c0d093c5 c0d093e5     ................
c0d08d18:	c0d093f7 c0d0940a c0d09413 c0d09423     ............#...
c0d08d28:	c0d0942e c0d0943e c0d09449 c0d09459     ....>...I...Y...
c0d08d38:	c0d09464 c0d09470 c0d0947a c0d09487     d...p...z.......
c0d08d48:	c0d0949a c0d094a6 c0d094b0 c0d094c2     ................
c0d08d58:	c0d094d3 c0d094e3 c0d094f4 c0d09504     ................
c0d08d68:	c0d09515 c0d0951a c0d09522 c0d09527     ........"...'...
c0d08d78:	c0d09530 c0d09542 c0d09550 c0d09562     0...B...P...b...
c0d08d88:	c0d09570 c0d09582 c0d09590 c0d09595     p...............
c0d08d98:	c0d0959c c0d095a1 c0d095a8 c0d095b7     ................
c0d08da8:	c0d095c7 c0d095d6 c0d095e6 c0d095f9     ................
c0d08db8:	c0d09608 c0d0961b c0d0962b c0d0963e     ........+...>...
c0d08dc8:	c0d0964d c0d0965c c0d09667 c0d09680     M...\...g.......
c0d08dd8:	c0d09695 c0d096af c0d096c6 c0d096db     ................
c0d08de8:	c0d096ec c0d09701 c0d09712 c0d09723     ............#...
c0d08df8:	c0d09730 c0d09740 746c754d 6f630069     0...@...Multi.co
c0d08e08:	736f6d73 6b64732d 67734d2f 646e6553     smos-sdk/MsgSend
c0d08e18:	736f6300 2d736f6d 2f6b6473 4467734d     .cosmos-sdk/MsgD
c0d08e28:	67656c65 00657461 6d736f63 732d736f     elegate.cosmos-s
c0d08e38:	4d2f6b64 6e556773 656c6564 65746167     dk/MsgUndelegate
c0d08e48:	736f6300 2d736f6d 2f6b6473 4267734d     .cosmos-sdk/MsgB
c0d08e58:	6e696765 65646552 6167656c 63006574     eginRedelegate.c
c0d08e68:	6f6d736f 64732d73 734d2f6b 62755367     osmos-sdk/MsgSub
c0d08e78:	5074696d 6f706f72 006c6173 706f7250     mitProposal.Prop
c0d08e88:	0065736f 6d736f63 732d736f 4d2f6b64     ose.cosmos-sdk/M
c0d08e98:	65446773 69736f70 6f630074 736f6d73     sgDeposit.cosmos
c0d08ea8:	6b64732d 67734d2f 65746f56 736f6300     -sdk/MsgVote.cos
c0d08eb8:	2d736f6d 2f6b6473 5767734d 64687469     mos-sdk/MsgWithd
c0d08ec8:	44776172 67656c65 6f697461 7765526e     rawDelegationRew
c0d08ed8:	00647261 68746957 77617264 77655220     ard.Withdraw Rew
c0d08ee8:	00647261 6d736f63 732d736f 4d2f6b64     ard.cosmos-sdk/M
c0d08ef8:	69576773 72646874 61567761 6164696c     sgWithdrawValida
c0d08f08:	43726f74 696d6d6f 6f697373 6957006e     torCommission.Wi
c0d08f18:	72646874 56207761 202e6c61 6d6d6f43     thdraw Val. Comm
c0d08f28:	69737369 63006e6f 6f6d736f 64732d73     ission.cosmos-sd
c0d08f38:	734d2f6b 74655367 68746957 77617264     k/MsgSetWithdraw
c0d08f48:	72646441 00737365 68746957 77617264     Address.Withdraw
c0d08f58:	74655320 64644120 73736572 736f6300      Set Address.cos
c0d08f68:	2d736f6d 2f6b6473 4d67734d 69746c75     mos-sdk/MsgMulti
c0d08f78:	646e6553 6c754d00 53206974 00646e65     Send.Multi Send.
c0d08f88:	65737361 72432f74 65746165 65737341     asset/CreateAsse
c0d08f98:	72430074 65746165 73734120 61007465     t.Create Asset.a
c0d08fa8:	74657373 6470552f 41657461 74657373     sset/UpdateAsset
c0d08fb8:	64705500 20657461 65737341 73610074     .Update Asset.as
c0d08fc8:	2f746573 656c6544 73416574 00746573     set/DeleteAsset.
c0d08fd8:	656c6544 41206574 74657373 6f6f6200     Delete Asset.boo
c0d08fe8:	676e696b 6572432f 42657461 696b6f6f     king/CreateBooki
c0d08ff8:	4300676e 74616572 6f422065 6e696b6f     ng.Create Bookin
c0d09008:	6f620067 6e696b6f 6f432f67 656c706d     g.booking/Comple
c0d09018:	6f426574 6e696b6f 6f430067 656c706d     teBooking.Comple
c0d09028:	42206574 696b6f6f 6400676e 6d75636f     te Booking.docum
c0d09038:	2f746e65 61657243 6f446574 656d7563     ent/CreateDocume
c0d09048:	4300746e 74616572 6f442065 656d7563     nt.Create Docume
c0d09058:	6400746e 6d75636f 2f746e65 61657243     nt.document/Crea
c0d09068:	6f446574 656d7563 0073746e 61657243     teDocuments.Crea
c0d09078:	4d206574 69746c75 20656c70 75636f44     te Multiple Docu
c0d09088:	746e656d 6f640073 656d7563 522f746e     ments.document/R
c0d09098:	6b6f7665 636f4465 6e656d75 65520074     evokeDocument.Re
c0d090a8:	656b6f76 636f4420 6e656d75 6f640074     voke Document.do
c0d090b8:	656d7563 552f746e 74616470 636f4465     cument/UpdateDoc
c0d090c8:	6e656d75 70550074 65746164 636f4420     ument.Update Doc
c0d090d8:	6e656d75 6c650074 6f746365 2f6c6172     ument.electoral/
c0d090e8:	6f726e45 6f566c6c 00726574 6f726e45     EnrollVoter.Enro
c0d090f8:	56206c6c 64696c61 726f7461 656c6500     ll Validator.ele
c0d09108:	726f7463 522f6c61 6b6f7665 746f5665     ctoral/RevokeVot
c0d09118:	52007265 6b6f7665 61562065 6164696c     er.Revoke Valida
c0d09128:	00726f74 63656c65 61726f74 6e452f6c     tor.electoral/En
c0d09138:	6c6c6f72 64616f4c 00737265 6f726e45     rollLoaders.Enro
c0d09148:	53206c6c 20505248 64616f4c 00737265     ll SHRP Loaders.
c0d09158:	63656c65 61726f74 65522f6c 656b6f76     electoral/Revoke
c0d09168:	64616f4c 00737265 6f766552 5320656b     Loaders.Revoke S
c0d09178:	20505248 64616f4c 00737265 63656c65     HRP Loaders.elec
c0d09188:	61726f74 6e452f6c 6c6c6f72 69536449     toral/EnrollIdSi
c0d09198:	72656e67 6e450073 6c6c6f72 20444920     gners.Enroll ID 
c0d091a8:	6e676953 65007265 7463656c 6c61726f     Signer.electoral
c0d091b8:	7665522f 49656b6f 67695364 7372656e     /RevokeIdSigners
c0d091c8:	76655200 20656b6f 53204449 656e6769     .Revoke ID Signe
c0d091d8:	6c650072 6f746365 2f6c6172 6f726e45     r.electoral/Enro
c0d091e8:	6f446c6c 73734963 73726575 726e4500     llDocIssuers.Enr
c0d091f8:	206c6c6f 75636f44 746e656d 73734920     oll Document Iss
c0d09208:	73726575 656c6500 726f7463 522f6c61     uers.electoral/R
c0d09218:	6b6f7665 636f4465 75737349 00737265     evokeDocIssuers.
c0d09228:	6f766552 4420656b 6d75636f 20746e65     Revoke Document 
c0d09238:	75737349 00737265 63656c65 61726f74     Issuers.electora
c0d09248:	6e452f6c 6c6c6f72 6f636341 4f746e75     l/EnrollAccountO
c0d09258:	61726570 73726f74 726e4500 206c6c6f     perators.Enroll 
c0d09268:	6f636341 20746e75 7265704f 726f7461     Account Operator
c0d09278:	6c650073 6f746365 2f6c6172 6f766552     s.electoral/Revo
c0d09288:	6341656b 6e756f63 65704f74 6f746172     keAccountOperato
c0d09298:	52007372 6b6f7665 63412065 6e756f63     rs.Revoke Accoun
c0d092a8:	704f2074 74617265 0073726f 63656c65     t Operators.elec
c0d092b8:	61726f74 6e452f6c 6c6c6f72 72707041     toral/EnrollAppr
c0d092c8:	7265766f 726e4500 206c6c6f 72707041     over.Enroll Appr
c0d092d8:	7265766f 656c6500 726f7463 522f6c61     over.electoral/R
c0d092e8:	6b6f7665 70704165 65766f72 65520072     evokeApprover.Re
c0d092f8:	656b6f76 70704120 65766f72 65670072     voke Approver.ge
c0d09308:	656c746e 746e696d 7975422f 00726853     ntlemint/BuyShr.
c0d09318:	20797542 00524853 746e6567 696d656c     Buy SHR.gentlemi
c0d09328:	532f746e 78457465 6e616863 53006567     nt/SetExchange.S
c0d09338:	45207465 61686378 2065676e 65746152     et Exchange Rate
c0d09348:	6e656700 6d656c74 2f746e69 4c746553     .gentlemint/SetL
c0d09358:	6c657665 00656546 20746553 20656546     evelFee.Set Fee 
c0d09368:	6576654c 6567006c 656c746e 746e696d     Level.gentlemint
c0d09378:	6c65442f 4c657465 6c657665 00656546     /DeleteLevelFee.
c0d09388:	656c6544 46206574 4c206565 6c657665     Delete Fee Level
c0d09398:	6e656700 6d656c74 2f746e69 41746553     .gentlemint/SetA
c0d093a8:	6f697463 76654c6e 65466c65 65530065     ctionLevelFee.Se
c0d093b8:	63412074 6e6f6974 65654620 6e656700     t Action Fee.gen
c0d093c8:	6d656c74 2f746e69 656c6544 63416574     tlemint/DeleteAc
c0d093d8:	6e6f6974 6576654c 6565466c 6c654400     tionLevelFee.Del
c0d093e8:	20657465 69746341 46206e6f 67006565     ete Action Fee.g
c0d093f8:	6c746e65 6e696d65 6f4c2f74 65466461     entlemint/LoadFe
c0d09408:	6f4c0065 46206461 67006565 6c746e65     e.Load Fee.gentl
c0d09418:	6e696d65 6f4c2f74 4c006461 2064616f     emint/Load.Load 
c0d09428:	656b6f54 6567006e 656c746e 746e696d     Token.gentlemint
c0d09438:	6e65532f 65530064 5420646e 6e656b6f     /Send.Send Token
c0d09448:	6e656700 6d656c74 2f746e69 6e727542     .gentlemint/Burn
c0d09458:	72754200 6f54206e 006e656b 432f6469     .Burn Token.id/C
c0d09468:	74616572 00644965 61657243 49206574     reateId.Create I
c0d09478:	64690044 6572432f 49657461 43007364     D.id/CreateIds.C
c0d09488:	74616572 754d2065 7069746c 4920656c     reate Multiple I
c0d09498:	64690044 6470552f 49657461 70550064     D.id/UpdateId.Up
c0d094a8:	65746164 00444920 522f6469 616c7065     date ID.id/Repla
c0d094b8:	64496563 656e774f 65520072 63616c70     ceIdOwner.Replac
c0d094c8:	44492065 6e774f20 73007265 2f706177     e ID Owner.swap/
c0d094d8:	75716552 4f747365 52007475 65757165     RequestOut.Reque
c0d094e8:	53207473 20706177 0074754f 70617773     st Swap Out.swap
c0d094f8:	7070412f 65766f72 0074754f 72707041     /ApproveOut.Appr
c0d09508:	2065766f 70617753 74754f20 61777300     ove Swap Out.swa
c0d09518:	65442f70 69736f70 77730074 572f7061     p/Deposit.swap/W
c0d09528:	64687469 00776172 70617773 6572432f     ithdraw.swap/Cre
c0d09538:	53657461 6d656863 72430061 65746165     ateSchema.Create
c0d09548:	68635320 00616d65 70617773 6470552f      Schema.swap/Upd
c0d09558:	53657461 6d656863 70550061 65746164     ateSchema.Update
c0d09568:	68635320 00616d65 70617773 6c65442f      Schema.swap/Del
c0d09578:	53657465 6d656863 65440061 6574656c     eteSchema.Delete
c0d09588:	68635320 00616d65 70617773 6e61432f      Schema.swap/Can
c0d09598:	006c6563 70617773 6a65522f 00746365     cel.swap/Reject.
c0d095a8:	70617773 7165522f 74736575 52006e49     swap/RequestIn.R
c0d095b8:	65757165 53207473 20706177 73006e49     equest Swap In.s
c0d095c8:	2f706177 72707041 4965766f 7041006e     wap/ApproveIn.Ap
c0d095d8:	766f7270 77532065 49207061 7773006e     prove Swap In.sw
c0d095e8:	432f7061 6c706d6f 42657465 68637461     ap/CompleteBatch
c0d095f8:	6d6f4300 74656c70 61422065 00686374     .Complete Batch.
c0d09608:	70617773 6470552f 53657461 46706177     swap/UpdateSwapF
c0d09618:	55006565 74616470 77532065 46207061     ee.Update Swap F
c0d09628:	73006565 2f706177 636e6143 61426c65     ee.swap/CancelBa
c0d09638:	65686374 61430073 6c65636e 74614220     tches.Cancel Bat
c0d09648:	73656863 73617700 74532f6d 4365726f     ches.wasm/StoreC
c0d09658:	0065646f 726f7453 6f432065 77006564     ode.Store Code.w
c0d09668:	2f6d7361 74736e49 69746e61 43657461     asm/InstantiateC
c0d09678:	72746e6f 00746361 74736e49 69746e61     ontract.Instanti
c0d09688:	20657461 746e6f43 74636172 73617700     ate Contract.was
c0d09698:	6e492f6d 6e617473 74616974 6e6f4365     m/InstantiateCon
c0d096a8:	63617274 49003274 6174736e 6169746e     tract2.Instantia
c0d096b8:	43206574 72746e6f 20746361 61770032     te Contract 2.wa
c0d096c8:	452f6d73 75636578 6f436574 6172746e     sm/ExecuteContra
c0d096d8:	45007463 75636578 43206574 72746e6f     ct.Execute Contr
c0d096e8:	00746361 6d736177 67694d2f 65746172     act.wasm/Migrate
c0d096f8:	746e6f43 74636172 67694d00 65746172     Contract.Migrate
c0d09708:	6e6f4320 63617274 61770074 552f6d73      Contract.wasm/U
c0d09718:	74616470 6d644165 55006e69 74616470     pdateAdmin.Updat
c0d09728:	64412065 006e696d 6d736177 656c432f     e Admin.wasm/Cle
c0d09738:	64417261 006e696d 61656c43 64412072     arAdmin.Clear Ad
c0d09748:	006e696d                                min.

c0d0974c <whitespaces>:
c0d0974c:	0d0a0c20 5f680b09 69676170 695f676e      .....h_paging_i
c0d0975c:	0074696e 70615f68 766f7270 5f680065     nit.h_approve.h_
c0d0976c:	656a6572 68007463 6761705f 5f676e69     reject.h_paging_
c0d0977c:	5f6e6163 72636e69 65736165 705f6800     can_increase.h_p
c0d0978c:	6e696761 61635f67 6e695f6e 61657263     aging_can_increa
c0d0979c:	4e206573 5f68004f 69676170 695f676e     se NO.h_paging_i
c0d097ac:	6572636e 00657361 61705f68 676e6967     ncrease.h_paging
c0d097bc:	6e61635f 6365645f 73616572 5f680065     _can_decrease.h_
c0d097cc:	69676170 635f676e 645f6e61 65726365     paging_can_decre
c0d097dc:	20657361 70004f4e 2d656761 7469002d     ase NO.page--.it
c0d097ec:	2d2d6d65 725f6800 65697665 70755f77     em--.h_review_up
c0d097fc:	65746164 7461645f 202d2061 4e746547     date_data - GetN
c0d0980c:	74496d75 3d736d65 4c554e3d 5f68004c     umItems==NULL.h_
c0d0981c:	69766572 755f7765 74616470 61645f65     review_update_da
c0d0982c:	2d206174 74654720 6d657449 554e3d3d     ta - GetItem==NU
c0d0983c:	4f004c4c 6873006b 615f776f 70656363     LL.Ok.show_accep
c0d0984c:	63615f74 6e6f6974 61202d20 70656363     t_action - accep
c0d0985c:	74692074 52006d65 43454a45 68730054     t item.REJECT.sh
c0d0986c:	725f776f 63656a65 63615f74 6e6f6974     ow_reject_action
c0d0987c:	72202d20 63656a65 74692074 20006d65      - reject item. 
c0d0988c:	2f64255b 005d6425 574f4853 20474e49     [%d/%d].SHOWING 
c0d0989c:	41544144 61685300 656c6572 72656764     DATA.Shareledger
c0d098ac:	70784500 20747265 65646f6d 6556003a     .Expert mode:.Ve
c0d098bc:	6f697372 76003a6e 35332e32 0037322e     rsion:.v2.35.27.
c0d098cc:	65766544 65706f6c 79622064 6f5a003a     Developed by:.Zo
c0d098dc:	7861646e 0068632e 6563694c 3a65736e     ndax.ch.License:
c0d098ec:	70410020 65686361 302e3220 69755100      .Apache 2.0.Qui
c0d098fc:	6f4e0074 65522074 00796461 63696c43     t.Not Ready.Clic
c0d0990c:	6f74206b 696e4900 6c616974 00657a69     k to.Initialize.
c0d0991c:	6e696c42 6e697364 6f4d2067 20006564     Blindsing Mode. 
c0d0992c:	75716552 64657269 69784500 69760074     Required.Exit.vi
c0d0993c:	725f7765 65697665 68735f77 695f776f     ew_review_show_i
c0d0994c:	006c706d 65725f68 77656976 7475625f     mpl.h_review_but
c0d0995c:	5f6e6f74 68746f62 74636100 5f6e6f69     ton_both.action_
c0d0996c:	65636361 61007470 6f697463 65725f6e     accept.action_re
c0d0997c:	7463656a 69757100 61206b63 70656363     ject.quick accep
c0d0998c:	72500074 20737365 68676972 6f742074     t.Press right to
c0d0999c:	61657220 6f440064 656c6275 6572702d      read.Double-pre
c0d099ac:	74207373 6b73206f 68007069 7665725f     ss to skip.h_rev
c0d099bc:	5f776569 74747562 6c5f6e6f 00746665     iew_button_left.
c0d099cc:	65725f68 77656976 7475625f 5f6e6f74     h_review_button_
c0d099dc:	68676972 00000074                       right...

c0d099e4 <menu_main>:
	...
c0d099f0:	c0d079d4 c0d098a1 200009b0 00000c21     .y......... !...
c0d09a00:	00000000 c0d047f5 00000000 c0d079d4     .....G.......y..
c0d09a10:	c0d098ad 200009c2 00000c21 00000000     ....... !.......
	...
c0d09a28:	c0d079d4 c0d098ba c0d098c3 00000c21     .y..........!...
	...
c0d09a44:	c0d079d4 c0d098cc c0d098da 00000c21     .y..........!...
	...
c0d09a60:	c0d079d4 c0d098e4 c0d098ee 00000c21     .y..........!...
c0d09a70:	00000000 c0d03fa1 00000000 c0d07a0c     .....?.......z..
c0d09a80:	c0d098f9 00000000 00001d32 00000000     ........2.......
	...

c0d09aa8 <menu_custom_error>:
	...
c0d09ab4:	c0d07a7c 200009b0 200009c2 00000c21     |z..... ... !...
c0d09ac4:	00000000 c0d03b25 00000000 c0d07a44     ....%;......Dz..
c0d09ad4:	c0d0983f 00000000 00001d32 00000000     ?.......2.......
	...

c0d09afc <view_review>:
c0d09afc:	00000003 00800000 00000020 00000001     ........ .......
c0d09b0c:	00000000 00ffffff 00000000 00000000     ................
c0d09b1c:	00001005 00070000 00000007 00000000     ................
c0d09b2c:	00ffffff 00000000 00090000 00000000     ................
c0d09b3c:	00791105 00070000 00000007 00000000     ..y.............
c0d09b4c:	00ffffff 00000000 000a0000 00000000     ................
c0d09b5c:	000a1205 0007000c 00000007 00000000     ................
c0d09b6c:	00ffffff 00000000 001b0000 00000000     ................
c0d09b7c:	00002007 00800008 0000000b 00000000     . ..............
c0d09b8c:	00ffffff 00000000 0000800a 200009b0     ............... 
c0d09b9c:	00002107 00800013 0000000b 00000000     .!..............
c0d09bac:	00ffffff 00000000 0000800a 200009c2     ............... 
c0d09bbc:	00002207 0080001e 0000000b 00000000     ."..............
c0d09bcc:	00ffffff 00000000 0000800a 200009e5     ............... 

c0d09bdc <view_error>:
c0d09bdc:	00000003 00800000 00000020 00000001     ........ .......
c0d09bec:	00000000 00ffffff 00000000 00000000     ................
c0d09bfc:	00790005 00070000 00000007 00000000     ..y.............
c0d09c0c:	00ffffff 00000000 00060000 00000000     ................
c0d09c1c:	00002007 00800008 0000000b 00000000     . ..............
c0d09c2c:	00ffffff 00000000 0000800a 200009b0     ............... 
c0d09c3c:	00002007 00800013 0000000b 00000000     . ..............
c0d09c4c:	00ffffff 00000000 0000800a 200009c2     ............... 
c0d09c5c:	00007107 0080001e 0085000b 00000000     .q..............
c0d09c6c:	00ffffff 00000000 0032800a 200009e5     ..........2.... 

c0d09c7c <view_skip>:
c0d09c7c:	00000003 00800000 00000020 00000001     ........ .......
c0d09c8c:	00000000 00ffffff 00000000 00000000     ................
c0d09c9c:	00001005 00070000 00000007 00000000     ................
c0d09cac:	00ffffff 00000000 00090000 00000000     ................
c0d09cbc:	00791105 00070000 00000007 00000000     ..y.............
c0d09ccc:	00ffffff 00000000 000a0000 00000000     ................
c0d09cdc:	000a1205 0007000c 00000007 00000000     ................
c0d09cec:	00ffffff 00000000 001b0000 00000000     ................
c0d09cfc:	00002007 00800008 0000000b 00000000     . ..............
c0d09d0c:	00ffffff 00000000 0000800a c0d0998e     ................
c0d09d1c:	00002107 00800013 0000000b 00000000     .!..............
c0d09d2c:	00ffffff 00000000 0000800a c0d099a2     ................
c0d09d3c:	61736964 64656c62 7a707100 78397972     disabled.qpzry9x
c0d09d4c:	32666738 77647674 6a337330 6b34356e     8gf2tvdw0s3jn54k
c0d09d5c:	36656368 3761756d 5245006c 52450052     hce6mua7l.ERR.ER
c0d09d6c:	3f3f3f52                                 R???.

c0d09d71 <nanos_characters_width>:
c0d09d71:	77463333 23899a66 66663434 45334433     33Fwf..#44ff3D3E
c0d09d81:	67676668 67686688 33336868 56656665     hfgg.fhghh33efeV
c0d09d91:	777778aa 88666688 78453488 9989ab66     .xww.ff..4Exf...
c0d09da1:	66789977 ab768876 45676768 56674545     w.xfv.v.hggEEEgV
c0d09db1:	56776767 67566777 67453477 7777aa34     ggwVwgVgw4Eg4.ww
c0d09dc1:	56457777 9a677745 45566767 76664566     wwEVEwg.ggVEfEfv
c0d09dd1:	                                         ...

c0d09dd4 <USBD_HID_Desc>:
c0d09dd4:	01112109 22220100                        .!...."".

c0d09ddd <HID_ReportDesc>:
c0d09ddd:	09ffa006 0901a101 26001503 087500ff     ...........&..u.
c0d09ded:	08814095 00150409 7500ff26 91409508     .@......&..u..@.
c0d09dfd:	                                         ..

c0d09dff <C_usb_bos>:
c0d09dff:	00390f05 05101802 08b63800 a009a934     ..9......8..4...
c0d09e0f:	a0fd8b47 b6158876 1e010065 05101c00     G...v...e.......
c0d09e1f:	dd60df00 c74589d8 65d29c4c 8a649e9d     ..`...E.L..e..d.
c0d09e2f:	0300009f 7700b206                        .......w.

c0d09e38 <HID_Desc>:
c0d09e38:	c0d059d1 c0d059e1 c0d059f1 c0d05a01     .Y...Y...Y...Z..
c0d09e48:	c0d05a11 c0d05a21 c0d05a31 c0d05a41     .Z..!Z..1Z..AZ..

c0d09e58 <C_winusb_string_descriptor>:
c0d09e58:	004d0312 00460053 00310054 00300030     ..M.S.F.T.1.0.0.
c0d09e68:	                                         w.

c0d09e6a <C_winusb_guid>:
c0d09e6a:	00000092 00050100 00880001 00070000     ................
c0d09e7a:	002a0000 00650044 00690076 00650063     ..*.D.e.v.i.c.e.
c0d09e8a:	006e0049 00650074 00660072 00630061     I.n.t.e.r.f.a.c.
c0d09e9a:	00470065 00490055 00730044 00500000     e.G.U.I.D.s...P.
c0d09eaa:	007b0000 00330031 00360064 00340033     ..{.1.3.d.6.3.4.
c0d09eba:	00300030 0032002d 00390043 002d0037     0.0.-.2.C.9.7.-.
c0d09eca:	00300030 00340030 0030002d 00300030     0.0.0.4.-.0.0.0.
c0d09eda:	002d0030 00630034 00350036 00340036     0.-.4.c.6.5.6.4.
c0d09eea:	00370036 00350036 00320037 0000007d     6.7.6.5.7.2.}...
	...

c0d09efc <C_winusb_request_descriptor>:
c0d09efc:	0000000a 06030000 000800b2 00000001     ................
c0d09f0c:	000800a8 00010002 001400a0 49570003     ..............WI
c0d09f1c:	4253554e 00000000 00000000 00840000     NUSB............
c0d09f2c:	00070004 0044002a 00760065 00630069     ....*.D.e.v.i.c.
c0d09f3c:	00490065 0074006e 00720065 00610066     e.I.n.t.e.r.f.a.
c0d09f4c:	00650063 00550047 00440049 00000073     c.e.G.U.I.D.s...
c0d09f5c:	007b0050 00450043 00300038 00320039     P.{.C.E.8.0.9.2.
c0d09f6c:	00340036 0034002d 00320042 002d0034     6.4.-.4.B.2.4.-.
c0d09f7c:	00450034 00310038 0041002d 00420038     4.E.8.1.-.A.8.B.
c0d09f8c:	002d0032 00370035 00440045 00310030     2.-.5.7.E.D.0.1.
c0d09f9c:	00350044 00300038 00310045 0000007d     D.5.8.0.E.1.}...
c0d09fac:	00000000                                ....

c0d09fb0 <USBD_HID>:
c0d09fb0:	c0d04da1 c0d04dcf c0d04d11 00000000     .M...M...M......
c0d09fc0:	00000000 c0d058cd c0d058e5 00000000     .....X...X......
	...
c0d09fd8:	c0d05b51 c0d05b51 c0d05b51 c0d05b61     Q[..Q[..Q[..a[..

c0d09fe8 <USBD_WEBUSB>:
c0d09fe8:	c0d05935 c0d05961 c0d05965 00000000     5Y..aY..eY......
c0d09ff8:	00000000 c0d05969 c0d05981 00000000     ....iY...Y......
	...
c0d0a010:	c0d05b51 c0d05b51 c0d05b51 c0d05b61     Q[..Q[..Q[..a[..

c0d0a020 <USBD_DeviceDesc>:
c0d0a020:	02100112 40000000 10112c97 02010201     .......@.,......
c0d0a030:	                                         ..

c0d0a032 <USBD_LangIDDesc>:
c0d0a032:	04090304                                ....

c0d0a036 <USBD_MANUFACTURER_STRING>:
c0d0a036:	004c030e 00640065 00650067               ..L.e.d.g.e.r.

c0d0a044 <USBD_PRODUCT_FS_STRING>:
c0d0a044:	004e030e 006e0061 0020006f               ..N.a.n.o. .S.

c0d0a052 <USB_SERIAL_STRING>:
c0d0a052:	0030030a 00300030                        ..0.0.0.1.

c0d0a05c <C_winusb_wcid>:
c0d0a05c:	00000028 00040100 00000001 00000000     (...............
c0d0a06c:	49570101 4253554e 00000000 00000000     ..WINUSB........
	...

c0d0a084 <USBD_CfgDesc>:
c0d0a084:	00400209 c0020102 00040932 00030200     ..@.....2.......
c0d0a094:	21090200 01000111 07002222 40038205     ...!...."".....@
c0d0a0a4:	05070100 00400302 01040901 ffff0200     ......@.........
c0d0a0b4:	050702ff 00400383 03050701 01004003     ......@......@..

c0d0a0c4 <USBD_DeviceQualifierDesc>:
c0d0a0c4:	0200060a 40000000 00000001              .......@....

c0d0a0d0 <ux_menu_elements>:
c0d0a0d0:	00008003 00800000 00000020 00000001     ........ .......
c0d0a0e0:	00000000 00ffffff 00000000 00000000     ................
c0d0a0f0:	00038105 0007000e 00000004 00000000     ................
c0d0a100:	00ffffff 00000000 000b0000 00000000     ................
c0d0a110:	00768205 0007000e 00000004 00000000     ..v.............
c0d0a120:	00ffffff 00000000 000c0000 00000000     ................
c0d0a130:	000e4107 00640003 0000000c 00000000     .A....d.........
c0d0a140:	00ffffff 00000000 0000800a 00000000     ................
c0d0a150:	000e4207 00640023 0000000c 00000000     .B..#.d.........
c0d0a160:	00ffffff 00000000 0000800a 00000000     ................
c0d0a170:	000e1005 00000009 00000000 00000000     ................
c0d0a180:	00ffffff 00000000 00000000 00000000     ................
c0d0a190:	000e2007 00640013 0000000c 00000000     . ....d.........
c0d0a1a0:	00ffffff 00000000 00008008 00000000     ................
c0d0a1b0:	000e2107 0064000c 0000000c 00000000     .!....d.........
c0d0a1c0:	00ffffff 00000000 00008008 00000000     ................
c0d0a1d0:	000e2207 0064001a 0000000c 00000000     ."....d.........
c0d0a1e0:	00ffffff 00000000 00008008 00000000     ................

c0d0a1f0 <UX_MENU_END_ENTRY>:
	...

c0d0a20c <seph_io_general_status>:
c0d0a20c:	00020060                                 `....

c0d0a211 <seph_io_se_reset>:
c0d0a211:	                                         F..

c0d0a214 <g_pcHex>:
c0d0a214:	33323130 37363534 62613938 66656463     0123456789abcdef

c0d0a224 <g_pcHex_cap>:
c0d0a224:	33323130 37363534 42413938 46454443     0123456789ABCDEF

c0d0a234 <_etext>:
	...

c0d0a240 <N_appdata_impl>:
	...

c0d0c240 <N_appmode_impl>:
	...

c0d0c280 <install_parameters>:
c0d0c280:	68530b01 6c657261 65676465 32070272     ..Shareledger..2
c0d0c290:	2e35332e 29033732 00000001 ffffff00     .35.27.)........
c0d0c2a0:	ffffff00 3fffffff 8fe01fe4 67e0c7f1     .......?.......g
c0d0c2b0:	07e627e4 07f18fe3 fffc27f8 ffffffff     .'.......'......
c0d0c2c0:	011304ff 00008002 0000802c 00800276     ........,...v...
c0d0c2d0:	00802c00                                 .,...<
