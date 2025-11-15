
../Tema3/obj/productos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <trim>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 20          	sub    $0x20,%rsp
   c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  10:	eb 05                	jmp    17 <trim+0x17>
  12:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
  17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  1b:	0f b6 00             	movzbl (%rax),%eax
  1e:	3c 20                	cmp    $0x20,%al
  20:	74 f0                	je     12 <trim+0x12>
  22:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  26:	0f b6 00             	movzbl (%rax),%eax
  29:	3c 09                	cmp    $0x9,%al
  2b:	74 e5                	je     12 <trim+0x12>
  2d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  31:	0f b6 00             	movzbl (%rax),%eax
  34:	3c 0a                	cmp    $0xa,%al
  36:	74 da                	je     12 <trim+0x12>
  38:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  3c:	0f b6 00             	movzbl (%rax),%eax
  3f:	3c 0d                	cmp    $0xd,%al
  41:	74 cf                	je     12 <trim+0x12>
  43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  47:	0f b6 00             	movzbl (%rax),%eax
  4a:	84 c0                	test   %al,%al
  4c:	75 06                	jne    54 <trim+0x54>
  4e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  52:	eb 67                	jmp    bb <trim+0xbb>
  54:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  58:	48 89 c7             	mov    %rax,%rdi
  5b:	e8 00 00 00 00       	call   60 <trim+0x60>
  60:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  64:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  68:	48 01 d0             	add    %rdx,%rax
  6b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6f:	eb 05                	jmp    76 <trim+0x76>
  71:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
  76:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  7a:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
  7e:	73 2c                	jae    ac <trim+0xac>
  80:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  84:	0f b6 00             	movzbl (%rax),%eax
  87:	3c 20                	cmp    $0x20,%al
  89:	74 e6                	je     71 <trim+0x71>
  8b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  8f:	0f b6 00             	movzbl (%rax),%eax
  92:	3c 0a                	cmp    $0xa,%al
  94:	74 db                	je     71 <trim+0x71>
  96:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  9a:	0f b6 00             	movzbl (%rax),%eax
  9d:	3c 0d                	cmp    $0xd,%al
  9f:	74 d0                	je     71 <trim+0x71>
  a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  a5:	0f b6 00             	movzbl (%rax),%eax
  a8:	3c 09                	cmp    $0x9,%al
  aa:	74 c5                	je     71 <trim+0x71>
  ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  b0:	48 83 c0 01          	add    $0x1,%rax
  b4:	c6 00 00             	movb   $0x0,(%rax)
  b7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  bb:	c9                   	leave
  bc:	c3                   	ret

00000000000000bd <cargarProductos>:
  bd:	f3 0f 1e fa          	endbr64
  c1:	55                   	push   %rbp
  c2:	48 89 e5             	mov    %rsp,%rbp
  c5:	53                   	push   %rbx
  c6:	48 81 ec c8 02 00 00 	sub    $0x2c8,%rsp
  cd:	48 89 bd 38 fd ff ff 	mov    %rdi,-0x2c8(%rbp)
  d4:	48 89 b5 30 fd ff ff 	mov    %rsi,-0x2d0(%rbp)
  db:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  e2:	00 00 
  e4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  e8:	31 c0                	xor    %eax,%eax
  ea:	48 8b 85 38 fd ff ff 	mov    -0x2c8(%rbp),%rax
  f1:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # f8 <cargarProductos+0x3b>
  f8:	48 89 d6             	mov    %rdx,%rsi
  fb:	48 89 c7             	mov    %rax,%rdi
  fe:	e8 00 00 00 00       	call   103 <cargarProductos+0x46>
 103:	48 89 85 48 fd ff ff 	mov    %rax,-0x2b8(%rbp)
 10a:	48 8b 85 30 fd ff ff 	mov    -0x2d0(%rbp),%rax
 111:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
 117:	48 83 bd 48 fd ff ff 	cmpq   $0x0,-0x2b8(%rbp)
 11e:	00 
 11f:	75 0a                	jne    12b <cargarProductos+0x6e>
 121:	b8 00 00 00 00       	mov    $0x0,%eax
 126:	e9 17 03 00 00       	jmp    442 <cargarProductos+0x385>
 12b:	48 c7 85 40 fd ff ff 	movq   $0x0,-0x2c0(%rbp)
 132:	00 00 00 00 
 136:	e9 cd 02 00 00       	jmp    408 <cargarProductos+0x34b>
 13b:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
 142:	48 89 c7             	mov    %rax,%rdi
 145:	e8 00 00 00 00       	call   14a <cargarProductos+0x8d>
 14a:	48 89 85 50 fd ff ff 	mov    %rax,-0x2b0(%rbp)
 151:	48 8b 85 50 fd ff ff 	mov    -0x2b0(%rbp),%rax
 158:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 15f <cargarProductos+0xa2>
 15f:	48 89 d6             	mov    %rdx,%rsi
 162:	48 89 c7             	mov    %rax,%rdi
 165:	e8 00 00 00 00       	call   16a <cargarProductos+0xad>
 16a:	48 89 85 58 fd ff ff 	mov    %rax,-0x2a8(%rbp)
 171:	48 83 bd 58 fd ff ff 	cmpq   $0x0,-0x2a8(%rbp)
 178:	00 
 179:	75 14                	jne    18f <cargarProductos+0xd2>
 17b:	48 8b 85 50 fd ff ff 	mov    -0x2b0(%rbp),%rax
 182:	48 89 c7             	mov    %rax,%rdi
 185:	e8 00 00 00 00       	call   18a <cargarProductos+0xcd>
 18a:	e9 79 02 00 00       	jmp    408 <cargarProductos+0x34b>
 18f:	48 8b 85 58 fd ff ff 	mov    -0x2a8(%rbp),%rax
 196:	48 89 c7             	mov    %rax,%rdi
 199:	e8 62 fe ff ff       	call   0 <trim>
 19e:	48 89 c7             	mov    %rax,%rdi
 1a1:	e8 00 00 00 00       	call   1a6 <cargarProductos+0xe9>
 1a6:	89 85 60 fd ff ff    	mov    %eax,-0x2a0(%rbp)
 1ac:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1b3 <cargarProductos+0xf6>
 1b3:	48 89 c6             	mov    %rax,%rsi
 1b6:	bf 00 00 00 00       	mov    $0x0,%edi
 1bb:	e8 00 00 00 00       	call   1c0 <cargarProductos+0x103>
 1c0:	48 89 85 58 fd ff ff 	mov    %rax,-0x2a8(%rbp)
 1c7:	48 83 bd 58 fd ff ff 	cmpq   $0x0,-0x2a8(%rbp)
 1ce:	00 
 1cf:	75 14                	jne    1e5 <cargarProductos+0x128>
 1d1:	48 8b 85 50 fd ff ff 	mov    -0x2b0(%rbp),%rax
 1d8:	48 89 c7             	mov    %rax,%rdi
 1db:	e8 00 00 00 00       	call   1e0 <cargarProductos+0x123>
 1e0:	e9 23 02 00 00       	jmp    408 <cargarProductos+0x34b>
 1e5:	48 8b 85 58 fd ff ff 	mov    -0x2a8(%rbp),%rax
 1ec:	48 89 c7             	mov    %rax,%rdi
 1ef:	e8 0c fe ff ff       	call   0 <trim>
 1f4:	48 89 c1             	mov    %rax,%rcx
 1f7:	48 8d 85 60 fd ff ff 	lea    -0x2a0(%rbp),%rax
 1fe:	48 83 c0 04          	add    $0x4,%rax
 202:	ba 63 00 00 00       	mov    $0x63,%edx
 207:	48 89 ce             	mov    %rcx,%rsi
 20a:	48 89 c7             	mov    %rax,%rdi
 20d:	e8 00 00 00 00       	call   212 <cargarProductos+0x155>
 212:	c6 85 c7 fd ff ff 00 	movb   $0x0,-0x239(%rbp)
 219:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 220 <cargarProductos+0x163>
 220:	48 89 c6             	mov    %rax,%rsi
 223:	bf 00 00 00 00       	mov    $0x0,%edi
 228:	e8 00 00 00 00       	call   22d <cargarProductos+0x170>
 22d:	48 89 85 58 fd ff ff 	mov    %rax,-0x2a8(%rbp)
 234:	48 83 bd 58 fd ff ff 	cmpq   $0x0,-0x2a8(%rbp)
 23b:	00 
 23c:	74 19                	je     257 <cargarProductos+0x19a>
 23e:	48 8b 85 58 fd ff ff 	mov    -0x2a8(%rbp),%rax
 245:	48 89 c7             	mov    %rax,%rdi
 248:	e8 b3 fd ff ff       	call   0 <trim>
 24d:	48 89 c7             	mov    %rax,%rdi
 250:	e8 00 00 00 00       	call   255 <cargarProductos+0x198>
 255:	eb 05                	jmp    25c <cargarProductos+0x19f>
 257:	b8 00 00 00 00       	mov    $0x0,%eax
 25c:	89 85 c8 fd ff ff    	mov    %eax,-0x238(%rbp)
 262:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 269 <cargarProductos+0x1ac>
 269:	48 89 c6             	mov    %rax,%rsi
 26c:	bf 00 00 00 00       	mov    $0x0,%edi
 271:	e8 00 00 00 00       	call   276 <cargarProductos+0x1b9>
 276:	48 89 85 58 fd ff ff 	mov    %rax,-0x2a8(%rbp)
 27d:	48 83 bd 58 fd ff ff 	cmpq   $0x0,-0x2a8(%rbp)
 284:	00 
 285:	74 1d                	je     2a4 <cargarProductos+0x1e7>
 287:	48 8b 85 58 fd ff ff 	mov    -0x2a8(%rbp),%rax
 28e:	48 89 c7             	mov    %rax,%rdi
 291:	e8 6a fd ff ff       	call   0 <trim>
 296:	48 89 c7             	mov    %rax,%rdi
 299:	e8 00 00 00 00       	call   29e <cargarProductos+0x1e1>
 29e:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 2a2:	eb 04                	jmp    2a8 <cargarProductos+0x1eb>
 2a4:	66 0f ef c0          	pxor   %xmm0,%xmm0
 2a8:	f3 0f 11 85 cc fd ff 	movss  %xmm0,-0x234(%rbp)
 2af:	ff 
 2b0:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2b7 <cargarProductos+0x1fa>
 2b7:	48 89 c6             	mov    %rax,%rsi
 2ba:	bf 00 00 00 00       	mov    $0x0,%edi
 2bf:	e8 00 00 00 00       	call   2c4 <cargarProductos+0x207>
 2c4:	48 89 85 58 fd ff ff 	mov    %rax,-0x2a8(%rbp)
 2cb:	48 83 bd 58 fd ff ff 	cmpq   $0x0,-0x2a8(%rbp)
 2d2:	00 
 2d3:	74 1d                	je     2f2 <cargarProductos+0x235>
 2d5:	48 8b 85 58 fd ff ff 	mov    -0x2a8(%rbp),%rax
 2dc:	48 89 c7             	mov    %rax,%rdi
 2df:	e8 1c fd ff ff       	call   0 <trim>
 2e4:	48 89 c7             	mov    %rax,%rdi
 2e7:	e8 00 00 00 00       	call   2ec <cargarProductos+0x22f>
 2ec:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 2f0:	eb 04                	jmp    2f6 <cargarProductos+0x239>
 2f2:	66 0f ef c0          	pxor   %xmm0,%xmm0
 2f6:	f3 0f 11 85 d0 fd ff 	movss  %xmm0,-0x230(%rbp)
 2fd:	ff 
 2fe:	48 8b 85 30 fd ff ff 	mov    -0x2d0(%rbp),%rax
 305:	8b 00                	mov    (%rax),%eax
 307:	83 c0 01             	add    $0x1,%eax
 30a:	48 98                	cltq
 30c:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 310:	48 8b 85 40 fd ff ff 	mov    -0x2c0(%rbp),%rax
 317:	48 89 d6             	mov    %rdx,%rsi
 31a:	48 89 c7             	mov    %rax,%rdi
 31d:	e8 00 00 00 00       	call   322 <cargarProductos+0x265>
 322:	48 89 85 40 fd ff ff 	mov    %rax,-0x2c0(%rbp)
 329:	48 8b 85 30 fd ff ff 	mov    -0x2d0(%rbp),%rax
 330:	8b 00                	mov    (%rax),%eax
 332:	48 98                	cltq
 334:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 338:	48 8b 85 40 fd ff ff 	mov    -0x2c0(%rbp),%rax
 33f:	48 01 d0             	add    %rdx,%rax
 342:	48 8b 8d 60 fd ff ff 	mov    -0x2a0(%rbp),%rcx
 349:	48 8b 9d 68 fd ff ff 	mov    -0x298(%rbp),%rbx
 350:	48 89 08             	mov    %rcx,(%rax)
 353:	48 89 58 08          	mov    %rbx,0x8(%rax)
 357:	48 8b 8d 70 fd ff ff 	mov    -0x290(%rbp),%rcx
 35e:	48 8b 9d 78 fd ff ff 	mov    -0x288(%rbp),%rbx
 365:	48 89 48 10          	mov    %rcx,0x10(%rax)
 369:	48 89 58 18          	mov    %rbx,0x18(%rax)
 36d:	48 8b 8d 80 fd ff ff 	mov    -0x280(%rbp),%rcx
 374:	48 8b 9d 88 fd ff ff 	mov    -0x278(%rbp),%rbx
 37b:	48 89 48 20          	mov    %rcx,0x20(%rax)
 37f:	48 89 58 28          	mov    %rbx,0x28(%rax)
 383:	48 8b 8d 90 fd ff ff 	mov    -0x270(%rbp),%rcx
 38a:	48 8b 9d 98 fd ff ff 	mov    -0x268(%rbp),%rbx
 391:	48 89 48 30          	mov    %rcx,0x30(%rax)
 395:	48 89 58 38          	mov    %rbx,0x38(%rax)
 399:	48 8b 8d a0 fd ff ff 	mov    -0x260(%rbp),%rcx
 3a0:	48 8b 9d a8 fd ff ff 	mov    -0x258(%rbp),%rbx
 3a7:	48 89 48 40          	mov    %rcx,0x40(%rax)
 3ab:	48 89 58 48          	mov    %rbx,0x48(%rax)
 3af:	48 8b 8d b0 fd ff ff 	mov    -0x250(%rbp),%rcx
 3b6:	48 8b 9d b8 fd ff ff 	mov    -0x248(%rbp),%rbx
 3bd:	48 89 48 50          	mov    %rcx,0x50(%rax)
 3c1:	48 89 58 58          	mov    %rbx,0x58(%rax)
 3c5:	48 8b 8d c0 fd ff ff 	mov    -0x240(%rbp),%rcx
 3cc:	48 8b 9d c8 fd ff ff 	mov    -0x238(%rbp),%rbx
 3d3:	48 89 48 60          	mov    %rcx,0x60(%rax)
 3d7:	48 89 58 68          	mov    %rbx,0x68(%rax)
 3db:	8b 95 d0 fd ff ff    	mov    -0x230(%rbp),%edx
 3e1:	89 50 70             	mov    %edx,0x70(%rax)
 3e4:	48 8b 85 30 fd ff ff 	mov    -0x2d0(%rbp),%rax
 3eb:	8b 00                	mov    (%rax),%eax
 3ed:	8d 50 01             	lea    0x1(%rax),%edx
 3f0:	48 8b 85 30 fd ff ff 	mov    -0x2d0(%rbp),%rax
 3f7:	89 10                	mov    %edx,(%rax)
 3f9:	48 8b 85 50 fd ff ff 	mov    -0x2b0(%rbp),%rax
 400:	48 89 c7             	mov    %rax,%rdi
 403:	e8 00 00 00 00       	call   408 <cargarProductos+0x34b>
 408:	48 8b 95 48 fd ff ff 	mov    -0x2b8(%rbp),%rdx
 40f:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
 416:	be 00 02 00 00       	mov    $0x200,%esi
 41b:	48 89 c7             	mov    %rax,%rdi
 41e:	e8 00 00 00 00       	call   423 <cargarProductos+0x366>
 423:	48 85 c0             	test   %rax,%rax
 426:	0f 85 0f fd ff ff    	jne    13b <cargarProductos+0x7e>
 42c:	48 8b 85 48 fd ff ff 	mov    -0x2b8(%rbp),%rax
 433:	48 89 c7             	mov    %rax,%rdi
 436:	e8 00 00 00 00       	call   43b <cargarProductos+0x37e>
 43b:	48 8b 85 40 fd ff ff 	mov    -0x2c0(%rbp),%rax
 442:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
 446:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 44d:	00 00 
 44f:	74 05                	je     456 <cargarProductos+0x399>
 451:	e8 00 00 00 00       	call   456 <cargarProductos+0x399>
 456:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 45a:	c9                   	leave
 45b:	c3                   	ret

000000000000045c <guardarProductos>:
 45c:	f3 0f 1e fa          	endbr64
 460:	55                   	push   %rbp
 461:	48 89 e5             	mov    %rsp,%rbp
 464:	48 83 ec 30          	sub    $0x30,%rsp
 468:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 46c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 470:	89 55 dc             	mov    %edx,-0x24(%rbp)
 473:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 477:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 47e <guardarProductos+0x22>
 47e:	48 89 d6             	mov    %rdx,%rsi
 481:	48 89 c7             	mov    %rax,%rdi
 484:	e8 00 00 00 00       	call   489 <guardarProductos+0x2d>
 489:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 48d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
 492:	75 0a                	jne    49e <guardarProductos+0x42>
 494:	b8 00 00 00 00       	mov    $0x0,%eax
 499:	e9 c8 00 00 00       	jmp    566 <guardarProductos+0x10a>
 49e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
 4a5:	e9 9f 00 00 00       	jmp    549 <guardarProductos+0xed>
 4aa:	8b 45 f4             	mov    -0xc(%rbp),%eax
 4ad:	48 98                	cltq
 4af:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 4b3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 4b7:	48 01 d0             	add    %rdx,%rax
 4ba:	f3 0f 10 40 70       	movss  0x70(%rax),%xmm0
 4bf:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 4c3:	8b 45 f4             	mov    -0xc(%rbp),%eax
 4c6:	48 98                	cltq
 4c8:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 4cc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 4d0:	48 01 d0             	add    %rdx,%rax
 4d3:	f3 0f 10 48 6c       	movss  0x6c(%rax),%xmm1
 4d8:	66 0f ef d2          	pxor   %xmm2,%xmm2
 4dc:	f3 0f 5a d1          	cvtss2sd %xmm1,%xmm2
 4e0:	66 48 0f 7e d1       	movq   %xmm2,%rcx
 4e5:	8b 45 f4             	mov    -0xc(%rbp),%eax
 4e8:	48 98                	cltq
 4ea:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 4ee:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 4f2:	48 01 d0             	add    %rdx,%rax
 4f5:	8b 78 68             	mov    0x68(%rax),%edi
 4f8:	8b 45 f4             	mov    -0xc(%rbp),%eax
 4fb:	48 98                	cltq
 4fd:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 501:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 505:	48 01 d0             	add    %rdx,%rax
 508:	48 8d 70 04          	lea    0x4(%rax),%rsi
 50c:	8b 45 f4             	mov    -0xc(%rbp),%eax
 50f:	48 98                	cltq
 511:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 515:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 519:	48 01 d0             	add    %rdx,%rax
 51c:	8b 10                	mov    (%rax),%edx
 51e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 522:	66 0f 28 c8          	movapd %xmm0,%xmm1
 526:	66 48 0f 6e c1       	movq   %rcx,%xmm0
 52b:	41 89 f8             	mov    %edi,%r8d
 52e:	48 89 f1             	mov    %rsi,%rcx
 531:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 538 <guardarProductos+0xdc>
 538:	48 89 c7             	mov    %rax,%rdi
 53b:	b8 02 00 00 00       	mov    $0x2,%eax
 540:	e8 00 00 00 00       	call   545 <guardarProductos+0xe9>
 545:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
 549:	8b 45 f4             	mov    -0xc(%rbp),%eax
 54c:	3b 45 dc             	cmp    -0x24(%rbp),%eax
 54f:	0f 8c 55 ff ff ff    	jl     4aa <guardarProductos+0x4e>
 555:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 559:	48 89 c7             	mov    %rax,%rdi
 55c:	e8 00 00 00 00       	call   561 <guardarProductos+0x105>
 561:	b8 01 00 00 00       	mov    $0x1,%eax
 566:	c9                   	leave
 567:	c3                   	ret

0000000000000568 <buscarProductoPorCodigo>:
 568:	f3 0f 1e fa          	endbr64
 56c:	55                   	push   %rbp
 56d:	48 89 e5             	mov    %rsp,%rbp
 570:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 574:	89 75 e4             	mov    %esi,-0x1c(%rbp)
 577:	89 55 e0             	mov    %edx,-0x20(%rbp)
 57a:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
 57f:	75 07                	jne    588 <buscarProductoPorCodigo+0x20>
 581:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 586:	eb 36                	jmp    5be <buscarProductoPorCodigo+0x56>
 588:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 58f:	eb 20                	jmp    5b1 <buscarProductoPorCodigo+0x49>
 591:	8b 45 fc             	mov    -0x4(%rbp),%eax
 594:	48 98                	cltq
 596:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 59a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 59e:	48 01 d0             	add    %rdx,%rax
 5a1:	8b 00                	mov    (%rax),%eax
 5a3:	39 45 e0             	cmp    %eax,-0x20(%rbp)
 5a6:	75 05                	jne    5ad <buscarProductoPorCodigo+0x45>
 5a8:	8b 45 fc             	mov    -0x4(%rbp),%eax
 5ab:	eb 11                	jmp    5be <buscarProductoPorCodigo+0x56>
 5ad:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 5b1:	8b 45 fc             	mov    -0x4(%rbp),%eax
 5b4:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
 5b7:	7c d8                	jl     591 <buscarProductoPorCodigo+0x29>
 5b9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 5be:	5d                   	pop    %rbp
 5bf:	c3                   	ret

00000000000005c0 <agregarProducto>:
 5c0:	f3 0f 1e fa          	endbr64
 5c4:	55                   	push   %rbp
 5c5:	48 89 e5             	mov    %rsp,%rbp
 5c8:	53                   	push   %rbx
 5c9:	48 83 ec 18          	sub    $0x18,%rsp
 5cd:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 5d1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 5d5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 5d9:	8b 00                	mov    (%rax),%eax
 5db:	83 c0 01             	add    $0x1,%eax
 5de:	48 98                	cltq
 5e0:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 5e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 5e8:	48 89 d6             	mov    %rdx,%rsi
 5eb:	48 89 c7             	mov    %rax,%rdi
 5ee:	e8 00 00 00 00       	call   5f3 <agregarProducto+0x33>
 5f3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 5f7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 5fb:	8b 00                	mov    (%rax),%eax
 5fd:	48 98                	cltq
 5ff:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 603:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 607:	48 01 d0             	add    %rdx,%rax
 60a:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
 60e:	48 8b 5d 18          	mov    0x18(%rbp),%rbx
 612:	48 89 08             	mov    %rcx,(%rax)
 615:	48 89 58 08          	mov    %rbx,0x8(%rax)
 619:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
 61d:	48 8b 5d 28          	mov    0x28(%rbp),%rbx
 621:	48 89 48 10          	mov    %rcx,0x10(%rax)
 625:	48 89 58 18          	mov    %rbx,0x18(%rax)
 629:	48 8b 4d 30          	mov    0x30(%rbp),%rcx
 62d:	48 8b 5d 38          	mov    0x38(%rbp),%rbx
 631:	48 89 48 20          	mov    %rcx,0x20(%rax)
 635:	48 89 58 28          	mov    %rbx,0x28(%rax)
 639:	48 8b 4d 40          	mov    0x40(%rbp),%rcx
 63d:	48 8b 5d 48          	mov    0x48(%rbp),%rbx
 641:	48 89 48 30          	mov    %rcx,0x30(%rax)
 645:	48 89 58 38          	mov    %rbx,0x38(%rax)
 649:	48 8b 4d 50          	mov    0x50(%rbp),%rcx
 64d:	48 8b 5d 58          	mov    0x58(%rbp),%rbx
 651:	48 89 48 40          	mov    %rcx,0x40(%rax)
 655:	48 89 58 48          	mov    %rbx,0x48(%rax)
 659:	48 8b 4d 60          	mov    0x60(%rbp),%rcx
 65d:	48 8b 5d 68          	mov    0x68(%rbp),%rbx
 661:	48 89 48 50          	mov    %rcx,0x50(%rax)
 665:	48 89 58 58          	mov    %rbx,0x58(%rax)
 669:	48 8b 4d 70          	mov    0x70(%rbp),%rcx
 66d:	48 8b 5d 78          	mov    0x78(%rbp),%rbx
 671:	48 89 48 60          	mov    %rcx,0x60(%rax)
 675:	48 89 58 68          	mov    %rbx,0x68(%rax)
 679:	8b 95 80 00 00 00    	mov    0x80(%rbp),%edx
 67f:	89 50 70             	mov    %edx,0x70(%rax)
 682:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 686:	8b 00                	mov    (%rax),%eax
 688:	8d 50 01             	lea    0x1(%rax),%edx
 68b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 68f:	89 10                	mov    %edx,(%rax)
 691:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 695:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 699:	c9                   	leave
 69a:	c3                   	ret

000000000000069b <actualizarStock>:
 69b:	f3 0f 1e fa          	endbr64
 69f:	55                   	push   %rbp
 6a0:	48 89 e5             	mov    %rsp,%rbp
 6a3:	48 83 ec 28          	sub    $0x28,%rsp
 6a7:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 6ab:	89 75 e4             	mov    %esi,-0x1c(%rbp)
 6ae:	89 55 e0             	mov    %edx,-0x20(%rbp)
 6b1:	89 4d dc             	mov    %ecx,-0x24(%rbp)
 6b4:	8b 55 e0             	mov    -0x20(%rbp),%edx
 6b7:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
 6ba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 6be:	89 ce                	mov    %ecx,%esi
 6c0:	48 89 c7             	mov    %rax,%rdi
 6c3:	e8 00 00 00 00       	call   6c8 <actualizarStock+0x2d>
 6c8:	89 45 fc             	mov    %eax,-0x4(%rbp)
 6cb:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
 6cf:	79 07                	jns    6d8 <actualizarStock+0x3d>
 6d1:	b8 00 00 00 00       	mov    $0x0,%eax
 6d6:	eb 5e                	jmp    736 <actualizarStock+0x9b>
 6d8:	8b 45 fc             	mov    -0x4(%rbp),%eax
 6db:	48 98                	cltq
 6dd:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 6e1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 6e5:	48 01 d0             	add    %rdx,%rax
 6e8:	8b 48 68             	mov    0x68(%rax),%ecx
 6eb:	8b 45 fc             	mov    -0x4(%rbp),%eax
 6ee:	48 98                	cltq
 6f0:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 6f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 6f8:	48 01 d0             	add    %rdx,%rax
 6fb:	8b 55 dc             	mov    -0x24(%rbp),%edx
 6fe:	01 ca                	add    %ecx,%edx
 700:	89 50 68             	mov    %edx,0x68(%rax)
 703:	8b 45 fc             	mov    -0x4(%rbp),%eax
 706:	48 98                	cltq
 708:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 70c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 710:	48 01 d0             	add    %rdx,%rax
 713:	8b 40 68             	mov    0x68(%rax),%eax
 716:	85 c0                	test   %eax,%eax
 718:	79 17                	jns    731 <actualizarStock+0x96>
 71a:	8b 45 fc             	mov    -0x4(%rbp),%eax
 71d:	48 98                	cltq
 71f:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 723:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 727:	48 01 d0             	add    %rdx,%rax
 72a:	c7 40 68 00 00 00 00 	movl   $0x0,0x68(%rax)
 731:	b8 01 00 00 00       	mov    $0x1,%eax
 736:	c9                   	leave
 737:	c3                   	ret

0000000000000738 <listarProductos>:
 738:	f3 0f 1e fa          	endbr64
 73c:	55                   	push   %rbp
 73d:	48 89 e5             	mov    %rsp,%rbp
 740:	48 83 ec 20          	sub    $0x20,%rsp
 744:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 748:	89 75 e4             	mov    %esi,-0x1c(%rbp)
 74b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 752 <listarProductos+0x1a>
 752:	48 89 c7             	mov    %rax,%rdi
 755:	e8 00 00 00 00       	call   75a <listarProductos+0x22>
 75a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 761 <listarProductos+0x29>
 761:	48 89 c7             	mov    %rax,%rdi
 764:	e8 00 00 00 00       	call   769 <listarProductos+0x31>
 769:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 770:	e9 9c 00 00 00       	jmp    811 <listarProductos+0xd9>
 775:	8b 45 fc             	mov    -0x4(%rbp),%eax
 778:	48 98                	cltq
 77a:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 77e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 782:	48 01 d0             	add    %rdx,%rax
 785:	f3 0f 10 40 70       	movss  0x70(%rax),%xmm0
 78a:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 78e:	8b 45 fc             	mov    -0x4(%rbp),%eax
 791:	48 98                	cltq
 793:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 797:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 79b:	48 01 d0             	add    %rdx,%rax
 79e:	f3 0f 10 48 6c       	movss  0x6c(%rax),%xmm1
 7a3:	66 0f ef d2          	pxor   %xmm2,%xmm2
 7a7:	f3 0f 5a d1          	cvtss2sd %xmm1,%xmm2
 7ab:	66 48 0f 7e d1       	movq   %xmm2,%rcx
 7b0:	8b 45 fc             	mov    -0x4(%rbp),%eax
 7b3:	48 98                	cltq
 7b5:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 7b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 7bd:	48 01 d0             	add    %rdx,%rax
 7c0:	8b 50 68             	mov    0x68(%rax),%edx
 7c3:	8b 45 fc             	mov    -0x4(%rbp),%eax
 7c6:	48 98                	cltq
 7c8:	48 6b f0 74          	imul   $0x74,%rax,%rsi
 7cc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 7d0:	48 01 f0             	add    %rsi,%rax
 7d3:	48 8d 70 04          	lea    0x4(%rax),%rsi
 7d7:	8b 45 fc             	mov    -0x4(%rbp),%eax
 7da:	48 98                	cltq
 7dc:	48 6b f8 74          	imul   $0x74,%rax,%rdi
 7e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 7e4:	48 01 f8             	add    %rdi,%rax
 7e7:	8b 00                	mov    (%rax),%eax
 7e9:	66 0f 28 c8          	movapd %xmm0,%xmm1
 7ed:	66 48 0f 6e c1       	movq   %rcx,%xmm0
 7f2:	89 d1                	mov    %edx,%ecx
 7f4:	48 89 f2             	mov    %rsi,%rdx
 7f7:	89 c6                	mov    %eax,%esi
 7f9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 800 <listarProductos+0xc8>
 800:	48 89 c7             	mov    %rax,%rdi
 803:	b8 02 00 00 00       	mov    $0x2,%eax
 808:	e8 00 00 00 00       	call   80d <listarProductos+0xd5>
 80d:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 811:	8b 45 fc             	mov    -0x4(%rbp),%eax
 814:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
 817:	0f 8c 58 ff ff ff    	jl     775 <listarProductos+0x3d>
 81d:	90                   	nop
 81e:	90                   	nop
 81f:	c9                   	leave
 820:	c3                   	ret

0000000000000821 <registrarVenta>:
 821:	f3 0f 1e fa          	endbr64
 825:	55                   	push   %rbp
 826:	48 89 e5             	mov    %rsp,%rbp
 829:	48 83 ec 40          	sub    $0x40,%rsp
 82d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 831:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 835:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
 839:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
 83c:	44 89 45 d0          	mov    %r8d,-0x30(%rbp)
 840:	44 89 4d cc          	mov    %r9d,-0x34(%rbp)
 844:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 848:	8b 08                	mov    (%rax),%ecx
 84a:	8b 55 d4             	mov    -0x2c(%rbp),%edx
 84d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 851:	89 ce                	mov    %ecx,%esi
 853:	48 89 c7             	mov    %rax,%rdi
 856:	e8 00 00 00 00       	call   85b <registrarVenta+0x3a>
 85b:	89 45 f4             	mov    %eax,-0xc(%rbp)
 85e:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
 862:	79 0a                	jns    86e <registrarVenta+0x4d>
 864:	b8 00 00 00 00       	mov    $0x0,%eax
 869:	e9 1e 01 00 00       	jmp    98c <registrarVenta+0x16b>
 86e:	8b 45 f4             	mov    -0xc(%rbp),%eax
 871:	48 98                	cltq
 873:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 877:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 87b:	48 01 d0             	add    %rdx,%rax
 87e:	8b 40 68             	mov    0x68(%rax),%eax
 881:	39 45 d0             	cmp    %eax,-0x30(%rbp)
 884:	7e 0a                	jle    890 <registrarVenta+0x6f>
 886:	b8 00 00 00 00       	mov    $0x0,%eax
 88b:	e9 fc 00 00 00       	jmp    98c <registrarVenta+0x16b>
 890:	8b 45 f4             	mov    -0xc(%rbp),%eax
 893:	48 98                	cltq
 895:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 899:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 89d:	48 01 d0             	add    %rdx,%rax
 8a0:	8b 40 68             	mov    0x68(%rax),%eax
 8a3:	8b 55 f4             	mov    -0xc(%rbp),%edx
 8a6:	48 63 d2             	movslq %edx,%rdx
 8a9:	48 6b ca 74          	imul   $0x74,%rdx,%rcx
 8ad:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 8b1:	48 01 ca             	add    %rcx,%rdx
 8b4:	2b 45 d0             	sub    -0x30(%rbp),%eax
 8b7:	89 42 68             	mov    %eax,0x68(%rdx)
 8ba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 8be:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 8c5 <registrarVenta+0xa4>
 8c5:	48 89 d6             	mov    %rdx,%rsi
 8c8:	48 89 c7             	mov    %rax,%rdi
 8cb:	e8 00 00 00 00       	call   8d0 <registrarVenta+0xaf>
 8d0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 8d4:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
 8d9:	75 0a                	jne    8e5 <registrarVenta+0xc4>
 8db:	b8 00 00 00 00       	mov    $0x0,%eax
 8e0:	e9 a7 00 00 00       	jmp    98c <registrarVenta+0x16b>
 8e5:	8b 45 f4             	mov    -0xc(%rbp),%eax
 8e8:	48 98                	cltq
 8ea:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 8ee:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 8f2:	48 01 d0             	add    %rdx,%rax
 8f5:	f3 0f 10 40 70       	movss  0x70(%rax),%xmm0
 8fa:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 8fe:	8b 45 f4             	mov    -0xc(%rbp),%eax
 901:	48 98                	cltq
 903:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 907:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 90b:	48 01 d0             	add    %rdx,%rax
 90e:	f3 0f 10 48 6c       	movss  0x6c(%rax),%xmm1
 913:	66 0f ef d2          	pxor   %xmm2,%xmm2
 917:	f3 0f 5a d1          	cvtss2sd %xmm1,%xmm2
 91b:	66 48 0f 7e d6       	movq   %xmm2,%rsi
 920:	8b 45 f4             	mov    -0xc(%rbp),%eax
 923:	48 98                	cltq
 925:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 929:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 92d:	48 01 d0             	add    %rdx,%rax
 930:	4c 8d 40 04          	lea    0x4(%rax),%r8
 934:	8b 45 f4             	mov    -0xc(%rbp),%eax
 937:	48 98                	cltq
 939:	48 6b d0 74          	imul   $0x74,%rax,%rdx
 93d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 941:	48 01 d0             	add    %rdx,%rax
 944:	8b 08                	mov    (%rax),%ecx
 946:	8b 7d d0             	mov    -0x30(%rbp),%edi
 949:	8b 55 cc             	mov    -0x34(%rbp),%edx
 94c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 950:	48 83 ec 08          	sub    $0x8,%rsp
 954:	ff 75 10             	push   0x10(%rbp)
 957:	66 0f 28 c8          	movapd %xmm0,%xmm1
 95b:	66 48 0f 6e c6       	movq   %rsi,%xmm0
 960:	41 89 f9             	mov    %edi,%r9d
 963:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 96a <registrarVenta+0x149>
 96a:	48 89 c7             	mov    %rax,%rdi
 96d:	b8 02 00 00 00       	mov    $0x2,%eax
 972:	e8 00 00 00 00       	call   977 <registrarVenta+0x156>
 977:	48 83 c4 10          	add    $0x10,%rsp
 97b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 97f:	48 89 c7             	mov    %rax,%rdi
 982:	e8 00 00 00 00       	call   987 <registrarVenta+0x166>
 987:	b8 01 00 00 00       	mov    $0x1,%eax
 98c:	c9                   	leave
 98d:	c3                   	ret
