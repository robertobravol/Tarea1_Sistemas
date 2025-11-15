
../Tema3/obj/Main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <clear_stdin>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	90                   	nop
   d:	e8 00 00 00 00       	call   12 <clear_stdin+0x12>
  12:	89 45 fc             	mov    %eax,-0x4(%rbp)
  15:	83 7d fc 0a          	cmpl   $0xa,-0x4(%rbp)
  19:	74 06                	je     21 <clear_stdin+0x21>
  1b:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  1f:	75 ec                	jne    d <clear_stdin+0xd>
  21:	90                   	nop
  22:	c9                   	leave
  23:	c3                   	ret

0000000000000024 <pause>:
  24:	f3 0f 1e fa          	endbr64
  28:	55                   	push   %rbp
  29:	48 89 e5             	mov    %rsp,%rbp
  2c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 33 <pause+0xf>
  33:	48 89 c7             	mov    %rax,%rdi
  36:	b8 00 00 00 00       	mov    $0x0,%eax
  3b:	e8 00 00 00 00       	call   40 <pause+0x1c>
  40:	e8 00 00 00 00       	call   45 <pause+0x21>
  45:	90                   	nop
  46:	5d                   	pop    %rbp
  47:	c3                   	ret

0000000000000048 <fecha_hoy>:
  48:	f3 0f 1e fa          	endbr64
  4c:	55                   	push   %rbp
  4d:	48 89 e5             	mov    %rsp,%rbp
  50:	53                   	push   %rbx
  51:	48 83 ec 68          	sub    $0x68,%rsp
  55:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
  59:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  5d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  64:	00 00 
  66:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6a:	31 c0                	xor    %eax,%eax
  6c:	bf 00 00 00 00       	mov    $0x0,%edi
  71:	e8 00 00 00 00       	call   76 <fecha_hoy+0x2e>
  76:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  7a:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
  7e:	48 89 c7             	mov    %rax,%rdi
  81:	e8 00 00 00 00       	call   86 <fecha_hoy+0x3e>
  86:	48 8b 08             	mov    (%rax),%rcx
  89:	48 8b 58 08          	mov    0x8(%rax),%rbx
  8d:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
  91:	48 89 5d b8          	mov    %rbx,-0x48(%rbp)
  95:	48 8b 48 10          	mov    0x10(%rax),%rcx
  99:	48 8b 58 18          	mov    0x18(%rax),%rbx
  9d:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  a1:	48 89 5d c8          	mov    %rbx,-0x38(%rbp)
  a5:	48 8b 48 20          	mov    0x20(%rax),%rcx
  a9:	48 8b 58 28          	mov    0x28(%rax),%rbx
  ad:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  b1:	48 89 5d d8          	mov    %rbx,-0x28(%rbp)
  b5:	48 8b 40 30          	mov    0x30(%rax),%rax
  b9:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  bd:	8b 4d bc             	mov    -0x44(%rbp),%ecx
  c0:	8b 45 c0             	mov    -0x40(%rbp),%eax
  c3:	8d 78 01             	lea    0x1(%rax),%edi
  c6:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  c9:	8d 90 6c 07 00 00    	lea    0x76c(%rax),%edx
  cf:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  d3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  d7:	41 89 c9             	mov    %ecx,%r9d
  da:	41 89 f8             	mov    %edi,%r8d
  dd:	89 d1                	mov    %edx,%ecx
  df:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # e6 <fecha_hoy+0x9e>
  e6:	48 89 c7             	mov    %rax,%rdi
  e9:	b8 00 00 00 00       	mov    $0x0,%eax
  ee:	e8 00 00 00 00       	call   f3 <fecha_hoy+0xab>
  f3:	90                   	nop
  f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  f8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  ff:	00 00 
 101:	74 05                	je     108 <fecha_hoy+0xc0>
 103:	e8 00 00 00 00       	call   108 <fecha_hoy+0xc0>
 108:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 10c:	c9                   	leave
 10d:	c3                   	ret

000000000000010e <main>:
 10e:	f3 0f 1e fa          	endbr64
 112:	55                   	push   %rbp
 113:	48 89 e5             	mov    %rsp,%rbp
 116:	53                   	push   %rbx
 117:	48 81 ec 18 02 00 00 	sub    $0x218,%rsp
 11e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 125:	00 00 
 127:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 12b:	31 c0                	xor    %eax,%eax
 12d:	c7 85 ec fd ff ff 00 	movl   $0x0,-0x214(%rbp)
 134:	00 00 00 
 137:	48 8d 85 ec fd ff ff 	lea    -0x214(%rbp),%rax
 13e:	48 89 c6             	mov    %rax,%rsi
 141:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 148 <main+0x3a>
 148:	48 89 c7             	mov    %rax,%rdi
 14b:	e8 00 00 00 00       	call   150 <main+0x42>
 150:	48 89 85 18 fe ff ff 	mov    %rax,-0x1e8(%rbp)
 157:	48 83 bd 18 fe ff ff 	cmpq   $0x0,-0x1e8(%rbp)
 15e:	00 
 15f:	75 28                	jne    189 <main+0x7b>
 161:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 168 <main+0x5a>
 168:	48 89 c6             	mov    %rax,%rsi
 16b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 172 <main+0x64>
 172:	48 89 c7             	mov    %rax,%rdi
 175:	b8 00 00 00 00       	mov    $0x0,%eax
 17a:	e8 00 00 00 00       	call   17f <main+0x71>
 17f:	b8 01 00 00 00       	mov    $0x1,%eax
 184:	e9 27 08 00 00       	jmp    9b0 <main+0x8a2>
 189:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 190 <main+0x82>
 190:	48 89 c7             	mov    %rax,%rdi
 193:	b8 00 00 00 00       	mov    $0x0,%eax
 198:	e8 00 00 00 00       	call   19d <main+0x8f>
 19d:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1a4 <main+0x96>
 1a4:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
 1ab:	be 32 00 00 00       	mov    $0x32,%esi
 1b0:	48 89 c7             	mov    %rax,%rdi
 1b3:	e8 00 00 00 00       	call   1b8 <main+0xaa>
 1b8:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
 1bf:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 1c6 <main+0xb8>
 1c6:	48 89 d6             	mov    %rdx,%rsi
 1c9:	48 89 c7             	mov    %rax,%rdi
 1cc:	e8 00 00 00 00       	call   1d1 <main+0xc3>
 1d1:	c6 84 05 a0 fe ff ff 	movb   $0x0,-0x160(%rbp,%rax,1)
 1d8:	00 
 1d9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1e0 <main+0xd2>
 1e0:	48 89 c7             	mov    %rax,%rdi
 1e3:	b8 00 00 00 00       	mov    $0x0,%eax
 1e8:	e8 00 00 00 00       	call   1ed <main+0xdf>
 1ed:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1f4 <main+0xe6>
 1f4:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
 1fb:	be 32 00 00 00       	mov    $0x32,%esi
 200:	48 89 c7             	mov    %rax,%rdi
 203:	e8 00 00 00 00       	call   208 <main+0xfa>
 208:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
 20f:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 216 <main+0x108>
 216:	48 89 d6             	mov    %rdx,%rsi
 219:	48 89 c7             	mov    %rax,%rdi
 21c:	e8 00 00 00 00       	call   221 <main+0x113>
 221:	c6 84 05 e0 fe ff ff 	movb   $0x0,-0x120(%rbp,%rax,1)
 228:	00 
 229:	8b b5 ec fd ff ff    	mov    -0x214(%rbp),%esi
 22f:	48 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%rcx
 236:	48 8d 95 a0 fe ff ff 	lea    -0x160(%rbp),%rdx
 23d:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
 244:	48 89 c7             	mov    %rax,%rdi
 247:	e8 00 00 00 00       	call   24c <main+0x13e>
 24c:	89 85 f8 fd ff ff    	mov    %eax,-0x208(%rbp)
 252:	83 bd f8 fd ff ff 00 	cmpl   $0x0,-0x208(%rbp)
 259:	79 28                	jns    283 <main+0x175>
 25b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 262 <main+0x154>
 262:	48 89 c7             	mov    %rax,%rdi
 265:	e8 00 00 00 00       	call   26a <main+0x15c>
 26a:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
 271:	48 89 c7             	mov    %rax,%rdi
 274:	e8 00 00 00 00       	call   279 <main+0x16b>
 279:	b8 01 00 00 00       	mov    $0x1,%eax
 27e:	e9 2d 07 00 00       	jmp    9b0 <main+0x8a2>
 283:	8b 85 f8 fd ff ff    	mov    -0x208(%rbp),%eax
 289:	48 63 d0             	movslq %eax,%rdx
 28c:	48 89 d0             	mov    %rdx,%rax
 28f:	48 c1 e0 02          	shl    $0x2,%rax
 293:	48 01 d0             	add    %rdx,%rax
 296:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 29d:	00 
 29e:	48 01 d0             	add    %rdx,%rax
 2a1:	48 c1 e0 03          	shl    $0x3,%rax
 2a5:	48 89 c2             	mov    %rax,%rdx
 2a8:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
 2af:	48 01 d0             	add    %rdx,%rax
 2b2:	48 83 c0 64          	add    $0x64,%rax
 2b6:	48 89 c6             	mov    %rax,%rsi
 2b9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2c0 <main+0x1b2>
 2c0:	48 89 c7             	mov    %rax,%rdi
 2c3:	b8 00 00 00 00       	mov    $0x0,%eax
 2c8:	e8 00 00 00 00       	call   2cd <main+0x1bf>
 2cd:	c7 85 f0 fd ff ff 00 	movl   $0x0,-0x210(%rbp)
 2d4:	00 00 00 
 2d7:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
 2de:	48 89 c6             	mov    %rax,%rsi
 2e1:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2e8 <main+0x1da>
 2e8:	48 89 c7             	mov    %rax,%rdi
 2eb:	e8 00 00 00 00       	call   2f0 <main+0x1e2>
 2f0:	48 89 85 10 fe ff ff 	mov    %rax,-0x1f0(%rbp)
 2f7:	48 83 bd 10 fe ff ff 	cmpq   $0x0,-0x1f0(%rbp)
 2fe:	00 
 2ff:	75 24                	jne    325 <main+0x217>
 301:	48 c7 85 10 fe ff ff 	movq   $0x0,-0x1f0(%rbp)
 308:	00 00 00 00 
 30c:	c7 85 f0 fd ff ff 00 	movl   $0x0,-0x210(%rbp)
 313:	00 00 00 
 316:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 31d <main+0x20f>
 31d:	48 89 c7             	mov    %rax,%rdi
 320:	e8 00 00 00 00       	call   325 <main+0x217>
 325:	c7 85 f4 fd ff ff 00 	movl   $0x0,-0x20c(%rbp)
 32c:	00 00 00 
 32f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 336 <main+0x228>
 336:	48 89 c7             	mov    %rax,%rdi
 339:	e8 00 00 00 00       	call   33e <main+0x230>
 33e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 345 <main+0x237>
 345:	48 89 c7             	mov    %rax,%rdi
 348:	e8 00 00 00 00       	call   34d <main+0x23f>
 34d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 354 <main+0x246>
 354:	48 89 c7             	mov    %rax,%rdi
 357:	e8 00 00 00 00       	call   35c <main+0x24e>
 35c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 363 <main+0x255>
 363:	48 89 c7             	mov    %rax,%rdi
 366:	e8 00 00 00 00       	call   36b <main+0x25d>
 36b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 372 <main+0x264>
 372:	48 89 c7             	mov    %rax,%rdi
 375:	e8 00 00 00 00       	call   37a <main+0x26c>
 37a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 381 <main+0x273>
 381:	48 89 c7             	mov    %rax,%rdi
 384:	e8 00 00 00 00       	call   389 <main+0x27b>
 389:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 390 <main+0x282>
 390:	48 89 c7             	mov    %rax,%rdi
 393:	e8 00 00 00 00       	call   398 <main+0x28a>
 398:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 39f <main+0x291>
 39f:	48 89 c7             	mov    %rax,%rdi
 3a2:	b8 00 00 00 00       	mov    $0x0,%eax
 3a7:	e8 00 00 00 00       	call   3ac <main+0x29e>
 3ac:	48 8d 85 f4 fd ff ff 	lea    -0x20c(%rbp),%rax
 3b3:	48 89 c6             	mov    %rax,%rsi
 3b6:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 3bd <main+0x2af>
 3bd:	48 89 c7             	mov    %rax,%rdi
 3c0:	b8 00 00 00 00       	mov    $0x0,%eax
 3c5:	e8 00 00 00 00       	call   3ca <main+0x2bc>
 3ca:	83 f8 01             	cmp    $0x1,%eax
 3cd:	74 0f                	je     3de <main+0x2d0>
 3cf:	b8 00 00 00 00       	mov    $0x0,%eax
 3d4:	e8 27 fc ff ff       	call   0 <clear_stdin>
 3d9:	e9 aa 05 00 00       	jmp    988 <main+0x87a>
 3de:	b8 00 00 00 00       	mov    $0x0,%eax
 3e3:	e8 18 fc ff ff       	call   0 <clear_stdin>
 3e8:	8b 85 f4 fd ff ff    	mov    -0x20c(%rbp),%eax
 3ee:	83 f8 01             	cmp    $0x1,%eax
 3f1:	75 26                	jne    419 <main+0x30b>
 3f3:	8b 95 f0 fd ff ff    	mov    -0x210(%rbp),%edx
 3f9:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
 400:	89 d6                	mov    %edx,%esi
 402:	48 89 c7             	mov    %rax,%rdi
 405:	e8 00 00 00 00       	call   40a <main+0x2fc>
 40a:	b8 00 00 00 00       	mov    $0x0,%eax
 40f:	e8 10 fc ff ff       	call   24 <pause>
 414:	e9 16 ff ff ff       	jmp    32f <main+0x221>
 419:	8b 85 f4 fd ff ff    	mov    -0x20c(%rbp),%eax
 41f:	83 f8 02             	cmp    $0x2,%eax
 422:	0f 85 63 02 00 00    	jne    68b <main+0x57d>
 428:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 42f <main+0x321>
 42f:	48 89 c7             	mov    %rax,%rdi
 432:	b8 00 00 00 00       	mov    $0x0,%eax
 437:	e8 00 00 00 00       	call   43c <main+0x32e>
 43c:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 443 <main+0x335>
 443:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 44a:	be c8 00 00 00       	mov    $0xc8,%esi
 44f:	48 89 c7             	mov    %rax,%rdi
 452:	e8 00 00 00 00       	call   457 <main+0x349>
 457:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 45e:	48 89 c7             	mov    %rax,%rdi
 461:	e8 00 00 00 00       	call   466 <main+0x358>
 466:	89 85 20 fe ff ff    	mov    %eax,-0x1e0(%rbp)
 46c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 473 <main+0x365>
 473:	48 89 c7             	mov    %rax,%rdi
 476:	b8 00 00 00 00       	mov    $0x0,%eax
 47b:	e8 00 00 00 00       	call   480 <main+0x372>
 480:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 487 <main+0x379>
 487:	48 8d 95 20 fe ff ff 	lea    -0x1e0(%rbp),%rdx
 48e:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
 492:	48 89 c2             	mov    %rax,%rdx
 495:	be 64 00 00 00       	mov    $0x64,%esi
 49a:	48 89 cf             	mov    %rcx,%rdi
 49d:	e8 00 00 00 00       	call   4a2 <main+0x394>
 4a2:	48 8d 85 20 fe ff ff 	lea    -0x1e0(%rbp),%rax
 4a9:	48 83 c0 04          	add    $0x4,%rax
 4ad:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 4b4 <main+0x3a6>
 4b4:	48 89 d6             	mov    %rdx,%rsi
 4b7:	48 89 c7             	mov    %rax,%rdi
 4ba:	e8 00 00 00 00       	call   4bf <main+0x3b1>
 4bf:	c6 84 05 24 fe ff ff 	movb   $0x0,-0x1dc(%rbp,%rax,1)
 4c6:	00 
 4c7:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4ce <main+0x3c0>
 4ce:	48 89 c7             	mov    %rax,%rdi
 4d1:	b8 00 00 00 00       	mov    $0x0,%eax
 4d6:	e8 00 00 00 00       	call   4db <main+0x3cd>
 4db:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 4e2 <main+0x3d4>
 4e2:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 4e9:	be c8 00 00 00       	mov    $0xc8,%esi
 4ee:	48 89 c7             	mov    %rax,%rdi
 4f1:	e8 00 00 00 00       	call   4f6 <main+0x3e8>
 4f6:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 4fd:	48 89 c7             	mov    %rax,%rdi
 500:	e8 00 00 00 00       	call   505 <main+0x3f7>
 505:	89 85 88 fe ff ff    	mov    %eax,-0x178(%rbp)
 50b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 512 <main+0x404>
 512:	48 89 c7             	mov    %rax,%rdi
 515:	b8 00 00 00 00       	mov    $0x0,%eax
 51a:	e8 00 00 00 00       	call   51f <main+0x411>
 51f:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 526 <main+0x418>
 526:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 52d:	be c8 00 00 00       	mov    $0xc8,%esi
 532:	48 89 c7             	mov    %rax,%rdi
 535:	e8 00 00 00 00       	call   53a <main+0x42c>
 53a:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 541:	48 89 c7             	mov    %rax,%rdi
 544:	e8 00 00 00 00       	call   549 <main+0x43b>
 549:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 54d:	f3 0f 11 85 8c fe ff 	movss  %xmm0,-0x174(%rbp)
 554:	ff 
 555:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 55c <main+0x44e>
 55c:	48 89 c7             	mov    %rax,%rdi
 55f:	b8 00 00 00 00       	mov    $0x0,%eax
 564:	e8 00 00 00 00       	call   569 <main+0x45b>
 569:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 570 <main+0x462>
 570:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 577:	be c8 00 00 00       	mov    $0xc8,%esi
 57c:	48 89 c7             	mov    %rax,%rdi
 57f:	e8 00 00 00 00       	call   584 <main+0x476>
 584:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 58b:	48 89 c7             	mov    %rax,%rdi
 58e:	e8 00 00 00 00       	call   593 <main+0x485>
 593:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 597:	f3 0f 11 85 90 fe ff 	movss  %xmm0,-0x170(%rbp)
 59e:	ff 
 59f:	48 8d b5 f0 fd ff ff 	lea    -0x210(%rbp),%rsi
 5a6:	48 8b 95 10 fe ff ff 	mov    -0x1f0(%rbp),%rdx
 5ad:	48 83 ec 08          	sub    $0x8,%rsp
 5b1:	48 83 ec 78          	sub    $0x78,%rsp
 5b5:	48 89 e0             	mov    %rsp,%rax
 5b8:	48 8b 8d 20 fe ff ff 	mov    -0x1e0(%rbp),%rcx
 5bf:	48 8b 9d 28 fe ff ff 	mov    -0x1d8(%rbp),%rbx
 5c6:	48 89 08             	mov    %rcx,(%rax)
 5c9:	48 89 58 08          	mov    %rbx,0x8(%rax)
 5cd:	48 8b 8d 30 fe ff ff 	mov    -0x1d0(%rbp),%rcx
 5d4:	48 8b 9d 38 fe ff ff 	mov    -0x1c8(%rbp),%rbx
 5db:	48 89 48 10          	mov    %rcx,0x10(%rax)
 5df:	48 89 58 18          	mov    %rbx,0x18(%rax)
 5e3:	48 8b 8d 40 fe ff ff 	mov    -0x1c0(%rbp),%rcx
 5ea:	48 8b 9d 48 fe ff ff 	mov    -0x1b8(%rbp),%rbx
 5f1:	48 89 48 20          	mov    %rcx,0x20(%rax)
 5f5:	48 89 58 28          	mov    %rbx,0x28(%rax)
 5f9:	48 8b 8d 50 fe ff ff 	mov    -0x1b0(%rbp),%rcx
 600:	48 8b 9d 58 fe ff ff 	mov    -0x1a8(%rbp),%rbx
 607:	48 89 48 30          	mov    %rcx,0x30(%rax)
 60b:	48 89 58 38          	mov    %rbx,0x38(%rax)
 60f:	48 8b 8d 60 fe ff ff 	mov    -0x1a0(%rbp),%rcx
 616:	48 8b 9d 68 fe ff ff 	mov    -0x198(%rbp),%rbx
 61d:	48 89 48 40          	mov    %rcx,0x40(%rax)
 621:	48 89 58 48          	mov    %rbx,0x48(%rax)
 625:	48 8b 8d 70 fe ff ff 	mov    -0x190(%rbp),%rcx
 62c:	48 8b 9d 78 fe ff ff 	mov    -0x188(%rbp),%rbx
 633:	48 89 48 50          	mov    %rcx,0x50(%rax)
 637:	48 89 58 58          	mov    %rbx,0x58(%rax)
 63b:	48 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%rcx
 642:	48 8b 9d 88 fe ff ff 	mov    -0x178(%rbp),%rbx
 649:	48 89 48 60          	mov    %rcx,0x60(%rax)
 64d:	48 89 58 68          	mov    %rbx,0x68(%rax)
 651:	8b 8d 90 fe ff ff    	mov    -0x170(%rbp),%ecx
 657:	89 48 70             	mov    %ecx,0x70(%rax)
 65a:	48 89 d7             	mov    %rdx,%rdi
 65d:	e8 00 00 00 00       	call   662 <main+0x554>
 662:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
 666:	48 89 85 10 fe ff ff 	mov    %rax,-0x1f0(%rbp)
 66d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 674 <main+0x566>
 674:	48 89 c7             	mov    %rax,%rdi
 677:	e8 00 00 00 00       	call   67c <main+0x56e>
 67c:	b8 00 00 00 00       	mov    $0x0,%eax
 681:	e8 9e f9 ff ff       	call   24 <pause>
 686:	e9 a4 fc ff ff       	jmp    32f <main+0x221>
 68b:	8b 85 f4 fd ff ff    	mov    -0x20c(%rbp),%eax
 691:	83 f8 03             	cmp    $0x3,%eax
 694:	0f 85 dc 00 00 00    	jne    776 <main+0x668>
 69a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 6a1 <main+0x593>
 6a1:	48 89 c7             	mov    %rax,%rdi
 6a4:	b8 00 00 00 00       	mov    $0x0,%eax
 6a9:	e8 00 00 00 00       	call   6ae <main+0x5a0>
 6ae:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 6b5 <main+0x5a7>
 6b5:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 6bc:	be 64 00 00 00       	mov    $0x64,%esi
 6c1:	48 89 c7             	mov    %rax,%rdi
 6c4:	e8 00 00 00 00       	call   6c9 <main+0x5bb>
 6c9:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 6d0:	48 89 c7             	mov    %rax,%rdi
 6d3:	e8 00 00 00 00       	call   6d8 <main+0x5ca>
 6d8:	89 85 08 fe ff ff    	mov    %eax,-0x1f8(%rbp)
 6de:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 6e5 <main+0x5d7>
 6e5:	48 89 c7             	mov    %rax,%rdi
 6e8:	b8 00 00 00 00       	mov    $0x0,%eax
 6ed:	e8 00 00 00 00       	call   6f2 <main+0x5e4>
 6f2:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 6f9 <main+0x5eb>
 6f9:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 700:	be 64 00 00 00       	mov    $0x64,%esi
 705:	48 89 c7             	mov    %rax,%rdi
 708:	e8 00 00 00 00       	call   70d <main+0x5ff>
 70d:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 714:	48 89 c7             	mov    %rax,%rdi
 717:	e8 00 00 00 00       	call   71c <main+0x60e>
 71c:	89 85 0c fe ff ff    	mov    %eax,-0x1f4(%rbp)
 722:	8b b5 f0 fd ff ff    	mov    -0x210(%rbp),%esi
 728:	8b 8d 0c fe ff ff    	mov    -0x1f4(%rbp),%ecx
 72e:	8b 95 08 fe ff ff    	mov    -0x1f8(%rbp),%edx
 734:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
 73b:	48 89 c7             	mov    %rax,%rdi
 73e:	e8 00 00 00 00       	call   743 <main+0x635>
 743:	85 c0                	test   %eax,%eax
 745:	74 11                	je     758 <main+0x64a>
 747:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 74e <main+0x640>
 74e:	48 89 c7             	mov    %rax,%rdi
 751:	e8 00 00 00 00       	call   756 <main+0x648>
 756:	eb 0f                	jmp    767 <main+0x659>
 758:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 75f <main+0x651>
 75f:	48 89 c7             	mov    %rax,%rdi
 762:	e8 00 00 00 00       	call   767 <main+0x659>
 767:	b8 00 00 00 00       	mov    $0x0,%eax
 76c:	e8 b3 f8 ff ff       	call   24 <pause>
 771:	e9 b9 fb ff ff       	jmp    32f <main+0x221>
 776:	8b 85 f4 fd ff ff    	mov    -0x20c(%rbp),%eax
 77c:	83 f8 04             	cmp    $0x4,%eax
 77f:	0f 85 6b 01 00 00    	jne    8f0 <main+0x7e2>
 785:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 78c <main+0x67e>
 78c:	48 89 c7             	mov    %rax,%rdi
 78f:	b8 00 00 00 00       	mov    $0x0,%eax
 794:	e8 00 00 00 00       	call   799 <main+0x68b>
 799:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 7a0 <main+0x692>
 7a0:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 7a7:	be 64 00 00 00       	mov    $0x64,%esi
 7ac:	48 89 c7             	mov    %rax,%rdi
 7af:	e8 00 00 00 00       	call   7b4 <main+0x6a6>
 7b4:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 7bb:	48 89 c7             	mov    %rax,%rdi
 7be:	e8 00 00 00 00       	call   7c3 <main+0x6b5>
 7c3:	89 85 fc fd ff ff    	mov    %eax,-0x204(%rbp)
 7c9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 7d0 <main+0x6c2>
 7d0:	48 89 c7             	mov    %rax,%rdi
 7d3:	b8 00 00 00 00       	mov    $0x0,%eax
 7d8:	e8 00 00 00 00       	call   7dd <main+0x6cf>
 7dd:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 7e4 <main+0x6d6>
 7e4:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 7eb:	be 64 00 00 00       	mov    $0x64,%esi
 7f0:	48 89 c7             	mov    %rax,%rdi
 7f3:	e8 00 00 00 00       	call   7f8 <main+0x6ea>
 7f8:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 7ff:	48 89 c7             	mov    %rax,%rdi
 802:	e8 00 00 00 00       	call   807 <main+0x6f9>
 807:	89 85 00 fe ff ff    	mov    %eax,-0x200(%rbp)
 80d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 814 <main+0x706>
 814:	48 89 c7             	mov    %rax,%rdi
 817:	b8 00 00 00 00       	mov    $0x0,%eax
 81c:	e8 00 00 00 00       	call   821 <main+0x713>
 821:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 828 <main+0x71a>
 828:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 82f:	be 64 00 00 00       	mov    $0x64,%esi
 834:	48 89 c7             	mov    %rax,%rdi
 837:	e8 00 00 00 00       	call   83c <main+0x72e>
 83c:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 843:	48 89 c7             	mov    %rax,%rdi
 846:	e8 00 00 00 00       	call   84b <main+0x73d>
 84b:	89 85 04 fe ff ff    	mov    %eax,-0x1fc(%rbp)
 851:	48 8d 85 95 fe ff ff 	lea    -0x16b(%rbp),%rax
 858:	be 0b 00 00 00       	mov    $0xb,%esi
 85d:	48 89 c7             	mov    %rax,%rdi
 860:	e8 e3 f7 ff ff       	call   48 <fecha_hoy>
 865:	44 8b 85 fc fd ff ff 	mov    -0x204(%rbp),%r8d
 86c:	8b bd 04 fe ff ff    	mov    -0x1fc(%rbp),%edi
 872:	8b 8d 00 fe ff ff    	mov    -0x200(%rbp),%ecx
 878:	48 8d 95 f0 fd ff ff 	lea    -0x210(%rbp),%rdx
 87f:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
 886:	48 83 ec 08          	sub    $0x8,%rsp
 88a:	48 8d b5 95 fe ff ff 	lea    -0x16b(%rbp),%rsi
 891:	56                   	push   %rsi
 892:	45 89 c1             	mov    %r8d,%r9d
 895:	41 89 f8             	mov    %edi,%r8d
 898:	48 89 c6             	mov    %rax,%rsi
 89b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 8a2 <main+0x794>
 8a2:	48 89 c7             	mov    %rax,%rdi
 8a5:	e8 00 00 00 00       	call   8aa <main+0x79c>
 8aa:	48 83 c4 10          	add    $0x10,%rsp
 8ae:	85 c0                	test   %eax,%eax
 8b0:	74 20                	je     8d2 <main+0x7c4>
 8b2:	48 8d 85 95 fe ff ff 	lea    -0x16b(%rbp),%rax
 8b9:	48 89 c6             	mov    %rax,%rsi
 8bc:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 8c3 <main+0x7b5>
 8c3:	48 89 c7             	mov    %rax,%rdi
 8c6:	b8 00 00 00 00       	mov    $0x0,%eax
 8cb:	e8 00 00 00 00       	call   8d0 <main+0x7c2>
 8d0:	eb 0f                	jmp    8e1 <main+0x7d3>
 8d2:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 8d9 <main+0x7cb>
 8d9:	48 89 c7             	mov    %rax,%rdi
 8dc:	e8 00 00 00 00       	call   8e1 <main+0x7d3>
 8e1:	b8 00 00 00 00       	mov    $0x0,%eax
 8e6:	e8 39 f7 ff ff       	call   24 <pause>
 8eb:	e9 3f fa ff ff       	jmp    32f <main+0x221>
 8f0:	8b 85 f4 fd ff ff    	mov    -0x20c(%rbp),%eax
 8f6:	83 f8 05             	cmp    $0x5,%eax
 8f9:	75 52                	jne    94d <main+0x83f>
 8fb:	8b 95 f0 fd ff ff    	mov    -0x210(%rbp),%edx
 901:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
 908:	48 89 c6             	mov    %rax,%rsi
 90b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 912 <main+0x804>
 912:	48 89 c7             	mov    %rax,%rdi
 915:	e8 00 00 00 00       	call   91a <main+0x80c>
 91a:	85 c0                	test   %eax,%eax
 91c:	74 11                	je     92f <main+0x821>
 91e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 925 <main+0x817>
 925:	48 89 c7             	mov    %rax,%rdi
 928:	e8 00 00 00 00       	call   92d <main+0x81f>
 92d:	eb 0f                	jmp    93e <main+0x830>
 92f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 936 <main+0x828>
 936:	48 89 c7             	mov    %rax,%rdi
 939:	e8 00 00 00 00       	call   93e <main+0x830>
 93e:	b8 00 00 00 00       	mov    $0x0,%eax
 943:	e8 dc f6 ff ff       	call   24 <pause>
 948:	e9 e2 f9 ff ff       	jmp    32f <main+0x221>
 94d:	8b 85 f4 fd ff ff    	mov    -0x20c(%rbp),%eax
 953:	83 f8 06             	cmp    $0x6,%eax
 956:	0f 85 d3 f9 ff ff    	jne    32f <main+0x221>
 95c:	8b 95 f0 fd ff ff    	mov    -0x210(%rbp),%edx
 962:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
 969:	48 89 c6             	mov    %rax,%rsi
 96c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 973 <main+0x865>
 973:	48 89 c7             	mov    %rax,%rdi
 976:	e8 00 00 00 00       	call   97b <main+0x86d>
 97b:	90                   	nop
 97c:	48 83 bd 10 fe ff ff 	cmpq   $0x0,-0x1f0(%rbp)
 983:	00 
 984:	74 16                	je     99c <main+0x88e>
 986:	eb 05                	jmp    98d <main+0x87f>
 988:	e9 a2 f9 ff ff       	jmp    32f <main+0x221>
 98d:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
 994:	48 89 c7             	mov    %rax,%rdi
 997:	e8 00 00 00 00       	call   99c <main+0x88e>
 99c:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
 9a3:	48 89 c7             	mov    %rax,%rdi
 9a6:	e8 00 00 00 00       	call   9ab <main+0x89d>
 9ab:	b8 00 00 00 00       	mov    $0x0,%eax
 9b0:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
 9b4:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 9bb:	00 00 
 9bd:	74 05                	je     9c4 <main+0x8b6>
 9bf:	e8 00 00 00 00       	call   9c4 <main+0x8b6>
 9c4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 9c8:	c9                   	leave
 9c9:	c3                   	ret
