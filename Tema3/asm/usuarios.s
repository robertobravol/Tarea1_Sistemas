
../Tema3/obj/usuarios.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <cargarUsuarios>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	53                   	push   %rbx
   9:	48 81 ec 18 02 00 00 	sub    $0x218,%rsp
  10:	48 89 bd e8 fd ff ff 	mov    %rdi,-0x218(%rbp)
  17:	48 89 b5 e0 fd ff ff 	mov    %rsi,-0x220(%rbp)
  1e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  25:	00 00 
  27:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  2b:	31 c0                	xor    %eax,%eax
  2d:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
  34:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  3a:	48 8b 85 e8 fd ff ff 	mov    -0x218(%rbp),%rax
  41:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 48 <cargarUsuarios+0x48>
  48:	48 89 d6             	mov    %rdx,%rsi
  4b:	48 89 c7             	mov    %rax,%rdi
  4e:	e8 00 00 00 00       	call   53 <cargarUsuarios+0x53>
  53:	48 89 85 f8 fd ff ff 	mov    %rax,-0x208(%rbp)
  5a:	48 83 bd f8 fd ff ff 	cmpq   $0x0,-0x208(%rbp)
  61:	00 
  62:	75 0a                	jne    6e <cargarUsuarios+0x6e>
  64:	b8 00 00 00 00       	mov    $0x0,%eax
  69:	e9 43 03 00 00       	jmp    3b1 <cargarUsuarios+0x3b1>
  6e:	48 c7 85 f0 fd ff ff 	movq   $0x0,-0x210(%rbp)
  75:	00 00 00 00 
  79:	e9 f9 02 00 00       	jmp    377 <cargarUsuarios+0x377>
  7e:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  85:	48 89 c7             	mov    %rax,%rdi
  88:	e8 00 00 00 00       	call   8d <cargarUsuarios+0x8d>
  8d:	48 89 85 00 fe ff ff 	mov    %rax,-0x200(%rbp)
  94:	48 8b 85 00 fe ff ff 	mov    -0x200(%rbp),%rax
  9b:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # a2 <cargarUsuarios+0xa2>
  a2:	48 89 d6             	mov    %rdx,%rsi
  a5:	48 89 c7             	mov    %rax,%rdi
  a8:	e8 00 00 00 00       	call   ad <cargarUsuarios+0xad>
  ad:	48 89 85 08 fe ff ff 	mov    %rax,-0x1f8(%rbp)
  b4:	48 83 bd 08 fe ff ff 	cmpq   $0x0,-0x1f8(%rbp)
  bb:	00 
  bc:	75 14                	jne    d2 <cargarUsuarios+0xd2>
  be:	48 8b 85 00 fe ff ff 	mov    -0x200(%rbp),%rax
  c5:	48 89 c7             	mov    %rax,%rdi
  c8:	e8 00 00 00 00       	call   cd <cargarUsuarios+0xcd>
  cd:	e9 a5 02 00 00       	jmp    377 <cargarUsuarios+0x377>
  d2:	48 8b 8d 08 fe ff ff 	mov    -0x1f8(%rbp),%rcx
  d9:	48 8d 85 10 fe ff ff 	lea    -0x1f0(%rbp),%rax
  e0:	ba 31 00 00 00       	mov    $0x31,%edx
  e5:	48 89 ce             	mov    %rcx,%rsi
  e8:	48 89 c7             	mov    %rax,%rdi
  eb:	e8 00 00 00 00       	call   f0 <cargarUsuarios+0xf0>
  f0:	c6 85 41 fe ff ff 00 	movb   $0x0,-0x1bf(%rbp)
  f7:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # fe <cargarUsuarios+0xfe>
  fe:	48 89 c6             	mov    %rax,%rsi
 101:	bf 00 00 00 00       	mov    $0x0,%edi
 106:	e8 00 00 00 00       	call   10b <cargarUsuarios+0x10b>
 10b:	48 89 85 08 fe ff ff 	mov    %rax,-0x1f8(%rbp)
 112:	48 83 bd 08 fe ff ff 	cmpq   $0x0,-0x1f8(%rbp)
 119:	00 
 11a:	75 14                	jne    130 <cargarUsuarios+0x130>
 11c:	48 8b 85 00 fe ff ff 	mov    -0x200(%rbp),%rax
 123:	48 89 c7             	mov    %rax,%rdi
 126:	e8 00 00 00 00       	call   12b <cargarUsuarios+0x12b>
 12b:	e9 47 02 00 00       	jmp    377 <cargarUsuarios+0x377>
 130:	48 8b 85 08 fe ff ff 	mov    -0x1f8(%rbp),%rax
 137:	48 8d 95 10 fe ff ff 	lea    -0x1f0(%rbp),%rdx
 13e:	48 8d 4a 32          	lea    0x32(%rdx),%rcx
 142:	ba 31 00 00 00       	mov    $0x31,%edx
 147:	48 89 c6             	mov    %rax,%rsi
 14a:	48 89 cf             	mov    %rcx,%rdi
 14d:	e8 00 00 00 00       	call   152 <cargarUsuarios+0x152>
 152:	c6 85 73 fe ff ff 00 	movb   $0x0,-0x18d(%rbp)
 159:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 160 <cargarUsuarios+0x160>
 160:	48 89 c6             	mov    %rax,%rsi
 163:	bf 00 00 00 00       	mov    $0x0,%edi
 168:	e8 00 00 00 00       	call   16d <cargarUsuarios+0x16d>
 16d:	48 89 85 08 fe ff ff 	mov    %rax,-0x1f8(%rbp)
 174:	48 83 bd 08 fe ff ff 	cmpq   $0x0,-0x1f8(%rbp)
 17b:	00 
 17c:	74 24                	je     1a2 <cargarUsuarios+0x1a2>
 17e:	48 8b 85 08 fe ff ff 	mov    -0x1f8(%rbp),%rax
 185:	48 8d 95 10 fe ff ff 	lea    -0x1f0(%rbp),%rdx
 18c:	48 8d 4a 64          	lea    0x64(%rdx),%rcx
 190:	ba 63 00 00 00       	mov    $0x63,%edx
 195:	48 89 c6             	mov    %rax,%rsi
 198:	48 89 cf             	mov    %rcx,%rdi
 19b:	e8 00 00 00 00       	call   1a0 <cargarUsuarios+0x1a0>
 1a0:	eb 07                	jmp    1a9 <cargarUsuarios+0x1a9>
 1a2:	c6 85 74 fe ff ff 00 	movb   $0x0,-0x18c(%rbp)
 1a9:	c6 85 d7 fe ff ff 00 	movb   $0x0,-0x129(%rbp)
 1b0:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
 1b7:	8b 00                	mov    (%rax),%eax
 1b9:	83 c0 01             	add    $0x1,%eax
 1bc:	48 63 d0             	movslq %eax,%rdx
 1bf:	48 89 d0             	mov    %rdx,%rax
 1c2:	48 c1 e0 02          	shl    $0x2,%rax
 1c6:	48 01 d0             	add    %rdx,%rax
 1c9:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 1d0:	00 
 1d1:	48 01 d0             	add    %rdx,%rax
 1d4:	48 c1 e0 03          	shl    $0x3,%rax
 1d8:	48 89 c2             	mov    %rax,%rdx
 1db:	48 8b 85 f0 fd ff ff 	mov    -0x210(%rbp),%rax
 1e2:	48 89 d6             	mov    %rdx,%rsi
 1e5:	48 89 c7             	mov    %rax,%rdi
 1e8:	e8 00 00 00 00       	call   1ed <cargarUsuarios+0x1ed>
 1ed:	48 89 85 f0 fd ff ff 	mov    %rax,-0x210(%rbp)
 1f4:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
 1fb:	8b 00                	mov    (%rax),%eax
 1fd:	48 63 d0             	movslq %eax,%rdx
 200:	48 89 d0             	mov    %rdx,%rax
 203:	48 c1 e0 02          	shl    $0x2,%rax
 207:	48 01 d0             	add    %rdx,%rax
 20a:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 211:	00 
 212:	48 01 d0             	add    %rdx,%rax
 215:	48 c1 e0 03          	shl    $0x3,%rax
 219:	48 89 c2             	mov    %rax,%rdx
 21c:	48 8b 85 f0 fd ff ff 	mov    -0x210(%rbp),%rax
 223:	48 01 d0             	add    %rdx,%rax
 226:	48 8b 8d 10 fe ff ff 	mov    -0x1f0(%rbp),%rcx
 22d:	48 8b 9d 18 fe ff ff 	mov    -0x1e8(%rbp),%rbx
 234:	48 89 08             	mov    %rcx,(%rax)
 237:	48 89 58 08          	mov    %rbx,0x8(%rax)
 23b:	48 8b 8d 20 fe ff ff 	mov    -0x1e0(%rbp),%rcx
 242:	48 8b 9d 28 fe ff ff 	mov    -0x1d8(%rbp),%rbx
 249:	48 89 48 10          	mov    %rcx,0x10(%rax)
 24d:	48 89 58 18          	mov    %rbx,0x18(%rax)
 251:	48 8b 8d 30 fe ff ff 	mov    -0x1d0(%rbp),%rcx
 258:	48 8b 9d 38 fe ff ff 	mov    -0x1c8(%rbp),%rbx
 25f:	48 89 48 20          	mov    %rcx,0x20(%rax)
 263:	48 89 58 28          	mov    %rbx,0x28(%rax)
 267:	48 8b 8d 40 fe ff ff 	mov    -0x1c0(%rbp),%rcx
 26e:	48 8b 9d 48 fe ff ff 	mov    -0x1b8(%rbp),%rbx
 275:	48 89 48 30          	mov    %rcx,0x30(%rax)
 279:	48 89 58 38          	mov    %rbx,0x38(%rax)
 27d:	48 8b 8d 50 fe ff ff 	mov    -0x1b0(%rbp),%rcx
 284:	48 8b 9d 58 fe ff ff 	mov    -0x1a8(%rbp),%rbx
 28b:	48 89 48 40          	mov    %rcx,0x40(%rax)
 28f:	48 89 58 48          	mov    %rbx,0x48(%rax)
 293:	48 8b 8d 60 fe ff ff 	mov    -0x1a0(%rbp),%rcx
 29a:	48 8b 9d 68 fe ff ff 	mov    -0x198(%rbp),%rbx
 2a1:	48 89 48 50          	mov    %rcx,0x50(%rax)
 2a5:	48 89 58 58          	mov    %rbx,0x58(%rax)
 2a9:	48 8b 8d 70 fe ff ff 	mov    -0x190(%rbp),%rcx
 2b0:	48 8b 9d 78 fe ff ff 	mov    -0x188(%rbp),%rbx
 2b7:	48 89 48 60          	mov    %rcx,0x60(%rax)
 2bb:	48 89 58 68          	mov    %rbx,0x68(%rax)
 2bf:	48 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%rcx
 2c6:	48 8b 9d 88 fe ff ff 	mov    -0x178(%rbp),%rbx
 2cd:	48 89 48 70          	mov    %rcx,0x70(%rax)
 2d1:	48 89 58 78          	mov    %rbx,0x78(%rax)
 2d5:	48 8b 8d 90 fe ff ff 	mov    -0x170(%rbp),%rcx
 2dc:	48 8b 9d 98 fe ff ff 	mov    -0x168(%rbp),%rbx
 2e3:	48 89 88 80 00 00 00 	mov    %rcx,0x80(%rax)
 2ea:	48 89 98 88 00 00 00 	mov    %rbx,0x88(%rax)
 2f1:	48 8b 8d a0 fe ff ff 	mov    -0x160(%rbp),%rcx
 2f8:	48 8b 9d a8 fe ff ff 	mov    -0x158(%rbp),%rbx
 2ff:	48 89 88 90 00 00 00 	mov    %rcx,0x90(%rax)
 306:	48 89 98 98 00 00 00 	mov    %rbx,0x98(%rax)
 30d:	48 8b 8d b0 fe ff ff 	mov    -0x150(%rbp),%rcx
 314:	48 8b 9d b8 fe ff ff 	mov    -0x148(%rbp),%rbx
 31b:	48 89 88 a0 00 00 00 	mov    %rcx,0xa0(%rax)
 322:	48 89 98 a8 00 00 00 	mov    %rbx,0xa8(%rax)
 329:	48 8b 8d c0 fe ff ff 	mov    -0x140(%rbp),%rcx
 330:	48 8b 9d c8 fe ff ff 	mov    -0x138(%rbp),%rbx
 337:	48 89 88 b0 00 00 00 	mov    %rcx,0xb0(%rax)
 33e:	48 89 98 b8 00 00 00 	mov    %rbx,0xb8(%rax)
 345:	48 8b 95 d0 fe ff ff 	mov    -0x130(%rbp),%rdx
 34c:	48 89 90 c0 00 00 00 	mov    %rdx,0xc0(%rax)
 353:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
 35a:	8b 00                	mov    (%rax),%eax
 35c:	8d 50 01             	lea    0x1(%rax),%edx
 35f:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
 366:	89 10                	mov    %edx,(%rax)
 368:	48 8b 85 00 fe ff ff 	mov    -0x200(%rbp),%rax
 36f:	48 89 c7             	mov    %rax,%rdi
 372:	e8 00 00 00 00       	call   377 <cargarUsuarios+0x377>
 377:	48 8b 95 f8 fd ff ff 	mov    -0x208(%rbp),%rdx
 37e:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
 385:	be 00 01 00 00       	mov    $0x100,%esi
 38a:	48 89 c7             	mov    %rax,%rdi
 38d:	e8 00 00 00 00       	call   392 <cargarUsuarios+0x392>
 392:	48 85 c0             	test   %rax,%rax
 395:	0f 85 e3 fc ff ff    	jne    7e <cargarUsuarios+0x7e>
 39b:	48 8b 85 f8 fd ff ff 	mov    -0x208(%rbp),%rax
 3a2:	48 89 c7             	mov    %rax,%rdi
 3a5:	e8 00 00 00 00       	call   3aa <cargarUsuarios+0x3aa>
 3aa:	48 8b 85 f0 fd ff ff 	mov    -0x210(%rbp),%rax
 3b1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
 3b5:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 3bc:	00 00 
 3be:	74 05                	je     3c5 <cargarUsuarios+0x3c5>
 3c0:	e8 00 00 00 00       	call   3c5 <cargarUsuarios+0x3c5>
 3c5:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 3c9:	c9                   	leave
 3ca:	c3                   	ret

00000000000003cb <liberarUsuarios>:
 3cb:	f3 0f 1e fa          	endbr64
 3cf:	55                   	push   %rbp
 3d0:	48 89 e5             	mov    %rsp,%rbp
 3d3:	48 83 ec 10          	sub    $0x10,%rsp
 3d7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 3db:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
 3e0:	74 0c                	je     3ee <liberarUsuarios+0x23>
 3e2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 3e6:	48 89 c7             	mov    %rax,%rdi
 3e9:	e8 00 00 00 00       	call   3ee <liberarUsuarios+0x23>
 3ee:	90                   	nop
 3ef:	c9                   	leave
 3f0:	c3                   	ret

00000000000003f1 <buscarUsuario>:
 3f1:	f3 0f 1e fa          	endbr64
 3f5:	55                   	push   %rbp
 3f6:	48 89 e5             	mov    %rsp,%rbp
 3f9:	48 83 ec 30          	sub    $0x30,%rsp
 3fd:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 401:	89 75 e4             	mov    %esi,-0x1c(%rbp)
 404:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
 408:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
 40c:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
 411:	75 0a                	jne    41d <buscarUsuario+0x2c>
 413:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 418:	e9 a5 00 00 00       	jmp    4c2 <buscarUsuario+0xd1>
 41d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 424:	e9 88 00 00 00       	jmp    4b1 <buscarUsuario+0xc0>
 429:	8b 45 fc             	mov    -0x4(%rbp),%eax
 42c:	48 63 d0             	movslq %eax,%rdx
 42f:	48 89 d0             	mov    %rdx,%rax
 432:	48 c1 e0 02          	shl    $0x2,%rax
 436:	48 01 d0             	add    %rdx,%rax
 439:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 440:	00 
 441:	48 01 d0             	add    %rdx,%rax
 444:	48 c1 e0 03          	shl    $0x3,%rax
 448:	48 89 c2             	mov    %rax,%rdx
 44b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 44f:	48 01 d0             	add    %rdx,%rax
 452:	48 89 c2             	mov    %rax,%rdx
 455:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 459:	48 89 c6             	mov    %rax,%rsi
 45c:	48 89 d7             	mov    %rdx,%rdi
 45f:	e8 00 00 00 00       	call   464 <buscarUsuario+0x73>
 464:	85 c0                	test   %eax,%eax
 466:	75 45                	jne    4ad <buscarUsuario+0xbc>
 468:	8b 45 fc             	mov    -0x4(%rbp),%eax
 46b:	48 63 d0             	movslq %eax,%rdx
 46e:	48 89 d0             	mov    %rdx,%rax
 471:	48 c1 e0 02          	shl    $0x2,%rax
 475:	48 01 d0             	add    %rdx,%rax
 478:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 47f:	00 
 480:	48 01 d0             	add    %rdx,%rax
 483:	48 c1 e0 03          	shl    $0x3,%rax
 487:	48 89 c2             	mov    %rax,%rdx
 48a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 48e:	48 01 d0             	add    %rdx,%rax
 491:	48 8d 50 32          	lea    0x32(%rax),%rdx
 495:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 499:	48 89 c6             	mov    %rax,%rsi
 49c:	48 89 d7             	mov    %rdx,%rdi
 49f:	e8 00 00 00 00       	call   4a4 <buscarUsuario+0xb3>
 4a4:	85 c0                	test   %eax,%eax
 4a6:	75 05                	jne    4ad <buscarUsuario+0xbc>
 4a8:	8b 45 fc             	mov    -0x4(%rbp),%eax
 4ab:	eb 15                	jmp    4c2 <buscarUsuario+0xd1>
 4ad:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 4b1:	8b 45 fc             	mov    -0x4(%rbp),%eax
 4b4:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
 4b7:	0f 8c 6c ff ff ff    	jl     429 <buscarUsuario+0x38>
 4bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4c2:	c9                   	leave
 4c3:	c3                   	ret
