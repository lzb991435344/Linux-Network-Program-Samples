
prog:     file format elf32-i386

Disassembly of section .init:

08048250 <_init>:
 8048250:	55                   	push   %ebp
 8048251:	89 e5                	mov    %esp,%ebp
 8048253:	83 ec 08             	sub    $0x8,%esp
 8048256:	e8 59 00 00 00       	call   80482b4 <call_gmon_start>
 804825b:	90                   	nop    
 804825c:	e8 df 00 00 00       	call   8048340 <frame_dummy>
 8048261:	e8 aa 01 00 00       	call   8048410 <__do_global_ctors_aux>
 8048266:	c9                   	leave  
 8048267:	c3                   	ret    
Disassembly of section .plt:

08048268 <.plt>:
 8048268:	ff 35 94 94 04 08    	pushl  0x8049494
 804826e:	ff 25 98 94 04 08    	jmp    *0x8049498
 8048274:	00 00                	add    %al,(%eax)
 8048276:	00 00                	add    %al,(%eax)
 8048278:	ff 25 9c 94 04 08    	jmp    *0x804949c
 804827e:	68 00 00 00 00       	push   $0x0
 8048283:	e9 e0 ff ff ff       	jmp    8048268 <_init+0x18>
Disassembly of section .text:

08048290 <_start>:
 8048290:	31 ed                	xor    %ebp,%ebp
 8048292:	5e                   	pop    %esi
 8048293:	89 e1                	mov    %esp,%ecx
 8048295:	83 e4 f0             	and    $0xfffffff0,%esp
 8048298:	50                   	push   %eax
 8048299:	54                   	push   %esp
 804829a:	52                   	push   %edx
 804829b:	68 40 84 04 08       	push   $0x8048440
 80482a0:	68 50 82 04 08       	push   $0x8048250
 80482a5:	51                   	push   %ecx
 80482a6:	56                   	push   %esi
 80482a7:	68 e0 83 04 08       	push   $0x80483e0
 80482ac:	e8 c7 ff ff ff       	call   8048278 <_init+0x28>
 80482b1:	f4                   	hlt    
 80482b2:	89 f6                	mov    %esi,%esi

080482b4 <call_gmon_start>:
 80482b4:	55                   	push   %ebp
 80482b5:	89 e5                	mov    %esp,%ebp
 80482b7:	53                   	push   %ebx
 80482b8:	50                   	push   %eax
 80482b9:	e8 00 00 00 00       	call   80482be <call_gmon_start+0xa>
 80482be:	5b                   	pop    %ebx
 80482bf:	81 c3 d2 11 00 00    	add    $0x11d2,%ebx
 80482c5:	8b 83 10 00 00 00    	mov    0x10(%ebx),%eax
 80482cb:	85 c0                	test   %eax,%eax
 80482cd:	74 02                	je     80482d1 <call_gmon_start+0x1d>
 80482cf:	ff d0                	call   *%eax
 80482d1:	8b 5d fc             	mov    0xfffffffc(%ebp),%ebx
 80482d4:	c9                   	leave  
 80482d5:	c3                   	ret    
 80482d6:	89 f6                	mov    %esi,%esi
 80482d8:	90                   	nop    
 80482d9:	90                   	nop    
 80482da:	90                   	nop    
 80482db:	90                   	nop    
 80482dc:	90                   	nop    
 80482dd:	90                   	nop    
 80482de:	90                   	nop    
 80482df:	90                   	nop    

080482e0 <__do_global_dtors_aux>:
 80482e0:	55                   	push   %ebp
 80482e1:	89 e5                	mov    %esp,%ebp
 80482e3:	83 ec 08             	sub    $0x8,%esp
 80482e6:	80 3d 4c 95 04 08 00 	cmpb   $0x0,0x804954c
 80482ed:	75 42                	jne    8048331 <__do_global_dtors_aux+0x51>
 80482ef:	a1 70 94 04 08       	mov    0x8049470,%eax
 80482f4:	8b 10                	mov    (%eax),%edx
 80482f6:	85 d2                	test   %edx,%edx
 80482f8:	74 1b                	je     8048315 <__do_global_dtors_aux+0x35>
 80482fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048300:	83 c0 04             	add    $0x4,%eax
 8048303:	a3 70 94 04 08       	mov    %eax,0x8049470
 8048308:	ff d2                	call   *%edx
 804830a:	a1 70 94 04 08       	mov    0x8049470,%eax
 804830f:	8b 10                	mov    (%eax),%edx
 8048311:	85 d2                	test   %edx,%edx
 8048313:	75 eb                	jne    8048300 <__do_global_dtors_aux+0x20>
 8048315:	b8 00 00 00 00       	mov    $0x0,%eax
 804831a:	85 c0                	test   %eax,%eax
 804831c:	74 0c                	je     804832a <__do_global_dtors_aux+0x4a>
 804831e:	c7 04 24 7c 94 04 08 	movl   $0x804947c,(%esp,1)
 8048325:	e8 d6 7c fb f7       	call   0 <_init-0x8048250>
 804832a:	c6 05 4c 95 04 08 01 	movb   $0x1,0x804954c
 8048331:	c9                   	leave  
 8048332:	c3                   	ret    
 8048333:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,1),%edi

08048340 <frame_dummy>:
 8048340:	55                   	push   %ebp
 8048341:	b8 00 00 00 00       	mov    $0x0,%eax
 8048346:	89 e5                	mov    %esp,%ebp
 8048348:	e8 00 00 00 00       	call   804834d <frame_dummy+0xd>
 804834d:	5a                   	pop    %edx
 804834e:	81 c2 43 11 00 00    	add    $0x1143,%edx
 8048354:	83 ec 18             	sub    $0x18,%esp
 8048357:	85 c0                	test   %eax,%eax
 8048359:	74 20                	je     804837b <frame_dummy+0x3b>
 804835b:	89 54 24 0c          	mov    %edx,0xc(%esp,1)
 804835f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp,1)
 8048366:	00 
 8048367:	c7 44 24 04 50 95 04 	movl   $0x8049550,0x4(%esp,1)
 804836e:	08 
 804836f:	c7 04 24 7c 94 04 08 	movl   $0x804947c,(%esp,1)
 8048376:	e8 85 7c fb f7       	call   0 <_init-0x8048250>
 804837b:	a1 78 94 04 08       	mov    0x8049478,%eax
 8048380:	85 c0                	test   %eax,%eax
 8048382:	74 15                	je     8048399 <frame_dummy+0x59>
 8048384:	b8 00 00 00 00       	mov    $0x0,%eax
 8048389:	85 c0                	test   %eax,%eax
 804838b:	74 0c                	je     8048399 <frame_dummy+0x59>
 804838d:	c7 04 24 78 94 04 08 	movl   $0x8049478,(%esp,1)
 8048394:	e8 67 7c fb f7       	call   0 <_init-0x8048250>
 8048399:	89 ec                	mov    %ebp,%esp
 804839b:	5d                   	pop    %ebp
 804839c:	c3                   	ret    
 804839d:	8d 76 00             	lea    0x0(%esi),%esi

080483a0 <sum>:
 80483a0:	55                   	push   %ebp
 80483a1:	89 e5                	mov    %esp,%ebp
 80483a3:	8b 45 0c             	mov    0xc(%ebp),%eax
 80483a6:	8b 55 08             	mov    0x8(%ebp),%edx
 80483a9:	5d                   	pop    %ebp
 80483aa:	01 d0                	add    %edx,%eax
 80483ac:	01 05 74 94 04 08    	add    %eax,0x8049474
 80483b2:	c3                   	ret    
 80483b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80483b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,1),%edi

080483c0 <p>:
 80483c0:	55                   	push   %ebp
 80483c1:	89 e5                	mov    %esp,%ebp
 80483c3:	83 ec 08             	sub    $0x8,%esp
 80483c6:	8b 45 08             	mov    0x8(%ebp),%eax
 80483c9:	89 44 24 04          	mov    %eax,0x4(%esp,1)
 80483cd:	89 04 24             	mov    %eax,(%esp,1)
 80483d0:	e8 cb ff ff ff       	call   80483a0 <sum>
 80483d5:	89 ec                	mov    %ebp,%esp
 80483d7:	5d                   	pop    %ebp
 80483d8:	c3                   	ret    
 80483d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,1),%esi

080483e0 <main>:
 80483e0:	55                   	push   %ebp
 80483e1:	89 e5                	mov    %esp,%ebp
 80483e3:	83 ec 08             	sub    $0x8,%esp
 80483e6:	83 e4 f0             	and    $0xfffffff0,%esp
 80483e9:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp,1)
 80483f0:	00 
 80483f1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp,1)
 80483f8:	e8 a3 ff ff ff       	call   80483a0 <sum>
 80483fd:	89 ec                	mov    %ebp,%esp
 80483ff:	5d                   	pop    %ebp
 8048400:	c3                   	ret    
 8048401:	eb 0d                	jmp    8048410 <__do_global_ctors_aux>
 8048403:	90                   	nop    
 8048404:	90                   	nop    
 8048405:	90                   	nop    
 8048406:	90                   	nop    
 8048407:	90                   	nop    
 8048408:	90                   	nop    
 8048409:	90                   	nop    
 804840a:	90                   	nop    
 804840b:	90                   	nop    
 804840c:	90                   	nop    
 804840d:	90                   	nop    
 804840e:	90                   	nop    
 804840f:	90                   	nop    

08048410 <__do_global_ctors_aux>:
 8048410:	55                   	push   %ebp
 8048411:	89 e5                	mov    %esp,%ebp
 8048413:	53                   	push   %ebx
 8048414:	83 ec 04             	sub    $0x4,%esp
 8048417:	a1 80 94 04 08       	mov    0x8049480,%eax
 804841c:	bb 80 94 04 08       	mov    $0x8049480,%ebx
 8048421:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048424:	74 16                	je     804843c <__do_global_ctors_aux+0x2c>
 8048426:	8d 76 00             	lea    0x0(%esi),%esi
 8048429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,1),%edi
 8048430:	83 eb 04             	sub    $0x4,%ebx
 8048433:	ff d0                	call   *%eax
 8048435:	8b 03                	mov    (%ebx),%eax
 8048437:	83 f8 ff             	cmp    $0xffffffff,%eax
 804843a:	75 f4                	jne    8048430 <__do_global_ctors_aux+0x20>
 804843c:	58                   	pop    %eax
 804843d:	5b                   	pop    %ebx
 804843e:	5d                   	pop    %ebp
 804843f:	c3                   	ret    
Disassembly of section .fini:

08048440 <_fini>:
 8048440:	55                   	push   %ebp
 8048441:	89 e5                	mov    %esp,%ebp
 8048443:	53                   	push   %ebx
 8048444:	52                   	push   %edx
 8048445:	e8 00 00 00 00       	call   804844a <gcc2_compiled.+0xa>
 804844a:	5b                   	pop    %ebx
 804844b:	81 c3 46 10 00 00    	add    $0x1046,%ebx
 8048451:	8d 76 00             	lea    0x0(%esi),%esi
 8048454:	e8 87 fe ff ff       	call   80482e0 <__do_global_dtors_aux>
 8048459:	8b 5d fc             	mov    0xfffffffc(%ebp),%ebx
 804845c:	c9                   	leave  
 804845d:	c3                   	ret    
