
bufbomb:     file format elf32-i386


Disassembly of section .init:

08048824 <_init>:
 8048824:	53                   	push   %ebx
 8048825:	83 ec 08             	sub    $0x8,%esp
 8048828:	e8 00 00 00 00       	call   804882d <_init+0x9>
 804882d:	5b                   	pop    %ebx
 804882e:	81 c3 c7 47 00 00    	add    $0x47c7,%ebx
 8048834:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804883a:	85 c0                	test   %eax,%eax
 804883c:	74 05                	je     8048843 <_init+0x1f>
 804883e:	e8 fd 00 00 00       	call   8048940 <__gmon_start__@plt>
 8048843:	e8 08 03 00 00       	call   8048b50 <frame_dummy>
 8048848:	e8 53 1c 00 00       	call   804a4a0 <__do_global_ctors_aux>
 804884d:	83 c4 08             	add    $0x8,%esp
 8048850:	5b                   	pop    %ebx
 8048851:	c3                   	ret    

Disassembly of section .plt:

08048860 <read@plt-0x10>:
 8048860:	ff 35 f8 cf 04 08    	pushl  0x804cff8
 8048866:	ff 25 fc cf 04 08    	jmp    *0x804cffc
 804886c:	00 00                	add    %al,(%eax)
	...

08048870 <read@plt>:
 8048870:	ff 25 00 d0 04 08    	jmp    *0x804d000
 8048876:	68 00 00 00 00       	push   $0x0
 804887b:	e9 e0 ff ff ff       	jmp    8048860 <_init+0x3c>

08048880 <srandom@plt>:
 8048880:	ff 25 04 d0 04 08    	jmp    *0x804d004
 8048886:	68 08 00 00 00       	push   $0x8
 804888b:	e9 d0 ff ff ff       	jmp    8048860 <_init+0x3c>

08048890 <signal@plt>:
 8048890:	ff 25 08 d0 04 08    	jmp    *0x804d008
 8048896:	68 10 00 00 00       	push   $0x10
 804889b:	e9 c0 ff ff ff       	jmp    8048860 <_init+0x3c>

080488a0 <alarm@plt>:
 80488a0:	ff 25 0c d0 04 08    	jmp    *0x804d00c
 80488a6:	68 18 00 00 00       	push   $0x18
 80488ab:	e9 b0 ff ff ff       	jmp    8048860 <_init+0x3c>

080488b0 <__stack_chk_fail@plt>:
 80488b0:	ff 25 10 d0 04 08    	jmp    *0x804d010
 80488b6:	68 20 00 00 00       	push   $0x20
 80488bb:	e9 a0 ff ff ff       	jmp    8048860 <_init+0x3c>

080488c0 <_IO_getc@plt>:
 80488c0:	ff 25 14 d0 04 08    	jmp    *0x804d014
 80488c6:	68 28 00 00 00       	push   $0x28
 80488cb:	e9 90 ff ff ff       	jmp    8048860 <_init+0x3c>

080488d0 <fwrite@plt>:
 80488d0:	ff 25 18 d0 04 08    	jmp    *0x804d018
 80488d6:	68 30 00 00 00       	push   $0x30
 80488db:	e9 80 ff ff ff       	jmp    8048860 <_init+0x3c>

080488e0 <strcpy@plt>:
 80488e0:	ff 25 1c d0 04 08    	jmp    *0x804d01c
 80488e6:	68 38 00 00 00       	push   $0x38
 80488eb:	e9 70 ff ff ff       	jmp    8048860 <_init+0x3c>

080488f0 <getpid@plt>:
 80488f0:	ff 25 20 d0 04 08    	jmp    *0x804d020
 80488f6:	68 40 00 00 00       	push   $0x40
 80488fb:	e9 60 ff ff ff       	jmp    8048860 <_init+0x3c>

08048900 <gethostname@plt>:
 8048900:	ff 25 24 d0 04 08    	jmp    *0x804d024
 8048906:	68 48 00 00 00       	push   $0x48
 804890b:	e9 50 ff ff ff       	jmp    8048860 <_init+0x3c>

08048910 <puts@plt>:
 8048910:	ff 25 28 d0 04 08    	jmp    *0x804d028
 8048916:	68 50 00 00 00       	push   $0x50
 804891b:	e9 40 ff ff ff       	jmp    8048860 <_init+0x3c>

08048920 <__memmove_chk@plt>:
 8048920:	ff 25 2c d0 04 08    	jmp    *0x804d02c
 8048926:	68 58 00 00 00       	push   $0x58
 804892b:	e9 30 ff ff ff       	jmp    8048860 <_init+0x3c>

08048930 <__memcpy_chk@plt>:
 8048930:	ff 25 30 d0 04 08    	jmp    *0x804d030
 8048936:	68 60 00 00 00       	push   $0x60
 804893b:	e9 20 ff ff ff       	jmp    8048860 <_init+0x3c>

08048940 <__gmon_start__@plt>:
 8048940:	ff 25 34 d0 04 08    	jmp    *0x804d034
 8048946:	68 68 00 00 00       	push   $0x68
 804894b:	e9 10 ff ff ff       	jmp    8048860 <_init+0x3c>

08048950 <exit@plt>:
 8048950:	ff 25 38 d0 04 08    	jmp    *0x804d038
 8048956:	68 70 00 00 00       	push   $0x70
 804895b:	e9 00 ff ff ff       	jmp    8048860 <_init+0x3c>

08048960 <srand@plt>:
 8048960:	ff 25 3c d0 04 08    	jmp    *0x804d03c
 8048966:	68 78 00 00 00       	push   $0x78
 804896b:	e9 f0 fe ff ff       	jmp    8048860 <_init+0x3c>

08048970 <mmap@plt>:
 8048970:	ff 25 40 d0 04 08    	jmp    *0x804d040
 8048976:	68 80 00 00 00       	push   $0x80
 804897b:	e9 e0 fe ff ff       	jmp    8048860 <_init+0x3c>

08048980 <__libc_start_main@plt>:
 8048980:	ff 25 44 d0 04 08    	jmp    *0x804d044
 8048986:	68 88 00 00 00       	push   $0x88
 804898b:	e9 d0 fe ff ff       	jmp    8048860 <_init+0x3c>

08048990 <write@plt>:
 8048990:	ff 25 48 d0 04 08    	jmp    *0x804d048
 8048996:	68 90 00 00 00       	push   $0x90
 804899b:	e9 c0 fe ff ff       	jmp    8048860 <_init+0x3c>

080489a0 <getopt@plt>:
 80489a0:	ff 25 4c d0 04 08    	jmp    *0x804d04c
 80489a6:	68 98 00 00 00       	push   $0x98
 80489ab:	e9 b0 fe ff ff       	jmp    8048860 <_init+0x3c>

080489b0 <strcasecmp@plt>:
 80489b0:	ff 25 50 d0 04 08    	jmp    *0x804d050
 80489b6:	68 a0 00 00 00       	push   $0xa0
 80489bb:	e9 a0 fe ff ff       	jmp    8048860 <_init+0x3c>

080489c0 <__isoc99_sscanf@plt>:
 80489c0:	ff 25 54 d0 04 08    	jmp    *0x804d054
 80489c6:	68 a8 00 00 00       	push   $0xa8
 80489cb:	e9 90 fe ff ff       	jmp    8048860 <_init+0x3c>

080489d0 <fopen@plt>:
 80489d0:	ff 25 58 d0 04 08    	jmp    *0x804d058
 80489d6:	68 b0 00 00 00       	push   $0xb0
 80489db:	e9 80 fe ff ff       	jmp    8048860 <_init+0x3c>

080489e0 <memset@plt>:
 80489e0:	ff 25 5c d0 04 08    	jmp    *0x804d05c
 80489e6:	68 b8 00 00 00       	push   $0xb8
 80489eb:	e9 70 fe ff ff       	jmp    8048860 <_init+0x3c>

080489f0 <__strdup@plt>:
 80489f0:	ff 25 60 d0 04 08    	jmp    *0x804d060
 80489f6:	68 c0 00 00 00       	push   $0xc0
 80489fb:	e9 60 fe ff ff       	jmp    8048860 <_init+0x3c>

08048a00 <__errno_location@plt>:
 8048a00:	ff 25 64 d0 04 08    	jmp    *0x804d064
 8048a06:	68 c8 00 00 00       	push   $0xc8
 8048a0b:	e9 50 fe ff ff       	jmp    8048860 <_init+0x3c>

08048a10 <rand@plt>:
 8048a10:	ff 25 68 d0 04 08    	jmp    *0x804d068
 8048a16:	68 d0 00 00 00       	push   $0xd0
 8048a1b:	e9 40 fe ff ff       	jmp    8048860 <_init+0x3c>

08048a20 <__printf_chk@plt>:
 8048a20:	ff 25 6c d0 04 08    	jmp    *0x804d06c
 8048a26:	68 d8 00 00 00       	push   $0xd8
 8048a2b:	e9 30 fe ff ff       	jmp    8048860 <_init+0x3c>

08048a30 <munmap@plt>:
 8048a30:	ff 25 70 d0 04 08    	jmp    *0x804d070
 8048a36:	68 e0 00 00 00       	push   $0xe0
 8048a3b:	e9 20 fe ff ff       	jmp    8048860 <_init+0x3c>

08048a40 <socket@plt>:
 8048a40:	ff 25 74 d0 04 08    	jmp    *0x804d074
 8048a46:	68 e8 00 00 00       	push   $0xe8
 8048a4b:	e9 10 fe ff ff       	jmp    8048860 <_init+0x3c>

08048a50 <__fprintf_chk@plt>:
 8048a50:	ff 25 78 d0 04 08    	jmp    *0x804d078
 8048a56:	68 f0 00 00 00       	push   $0xf0
 8048a5b:	e9 00 fe ff ff       	jmp    8048860 <_init+0x3c>

08048a60 <random@plt>:
 8048a60:	ff 25 7c d0 04 08    	jmp    *0x804d07c
 8048a66:	68 f8 00 00 00       	push   $0xf8
 8048a6b:	e9 f0 fd ff ff       	jmp    8048860 <_init+0x3c>

08048a70 <gethostbyname@plt>:
 8048a70:	ff 25 80 d0 04 08    	jmp    *0x804d080
 8048a76:	68 00 01 00 00       	push   $0x100
 8048a7b:	e9 e0 fd ff ff       	jmp    8048860 <_init+0x3c>

08048a80 <connect@plt>:
 8048a80:	ff 25 84 d0 04 08    	jmp    *0x804d084
 8048a86:	68 08 01 00 00       	push   $0x108
 8048a8b:	e9 d0 fd ff ff       	jmp    8048860 <_init+0x3c>

08048a90 <close@plt>:
 8048a90:	ff 25 88 d0 04 08    	jmp    *0x804d088
 8048a96:	68 10 01 00 00       	push   $0x110
 8048a9b:	e9 c0 fd ff ff       	jmp    8048860 <_init+0x3c>

08048aa0 <calloc@plt>:
 8048aa0:	ff 25 8c d0 04 08    	jmp    *0x804d08c
 8048aa6:	68 18 01 00 00       	push   $0x118
 8048aab:	e9 b0 fd ff ff       	jmp    8048860 <_init+0x3c>

08048ab0 <__sprintf_chk@plt>:
 8048ab0:	ff 25 90 d0 04 08    	jmp    *0x804d090
 8048ab6:	68 20 01 00 00       	push   $0x120
 8048abb:	e9 a0 fd ff ff       	jmp    8048860 <_init+0x3c>

Disassembly of section .text:

08048ac0 <_start>:
 8048ac0:	31 ed                	xor    %ebp,%ebp
 8048ac2:	5e                   	pop    %esi
 8048ac3:	89 e1                	mov    %esp,%ecx
 8048ac5:	83 e4 f0             	and    $0xfffffff0,%esp
 8048ac8:	50                   	push   %eax
 8048ac9:	54                   	push   %esp
 8048aca:	52                   	push   %edx
 8048acb:	68 90 a4 04 08       	push   $0x804a490
 8048ad0:	68 20 a4 04 08       	push   $0x804a420
 8048ad5:	51                   	push   %ecx
 8048ad6:	56                   	push   %esi
 8048ad7:	68 79 90 04 08       	push   $0x8049079
 8048adc:	e8 9f fe ff ff       	call   8048980 <__libc_start_main@plt>
 8048ae1:	f4                   	hlt    
 8048ae2:	90                   	nop
 8048ae3:	90                   	nop
 8048ae4:	90                   	nop
 8048ae5:	90                   	nop
 8048ae6:	90                   	nop
 8048ae7:	90                   	nop
 8048ae8:	90                   	nop
 8048ae9:	90                   	nop
 8048aea:	90                   	nop
 8048aeb:	90                   	nop
 8048aec:	90                   	nop
 8048aed:	90                   	nop
 8048aee:	90                   	nop
 8048aef:	90                   	nop

08048af0 <__do_global_dtors_aux>:
 8048af0:	55                   	push   %ebp
 8048af1:	89 e5                	mov    %esp,%ebp
 8048af3:	53                   	push   %ebx
 8048af4:	83 ec 04             	sub    $0x4,%esp
 8048af7:	80 3d 4c d2 04 08 00 	cmpb   $0x0,0x804d24c
 8048afe:	75 3f                	jne    8048b3f <__do_global_dtors_aux+0x4f>
 8048b00:	a1 50 d2 04 08       	mov    0x804d250,%eax
 8048b05:	bb 20 cf 04 08       	mov    $0x804cf20,%ebx
 8048b0a:	81 eb 1c cf 04 08    	sub    $0x804cf1c,%ebx
 8048b10:	c1 fb 02             	sar    $0x2,%ebx
 8048b13:	83 eb 01             	sub    $0x1,%ebx
 8048b16:	39 d8                	cmp    %ebx,%eax
 8048b18:	73 1e                	jae    8048b38 <__do_global_dtors_aux+0x48>
 8048b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048b20:	83 c0 01             	add    $0x1,%eax
 8048b23:	a3 50 d2 04 08       	mov    %eax,0x804d250
 8048b28:	ff 14 85 1c cf 04 08 	call   *0x804cf1c(,%eax,4)
 8048b2f:	a1 50 d2 04 08       	mov    0x804d250,%eax
 8048b34:	39 d8                	cmp    %ebx,%eax
 8048b36:	72 e8                	jb     8048b20 <__do_global_dtors_aux+0x30>
 8048b38:	c6 05 4c d2 04 08 01 	movb   $0x1,0x804d24c
 8048b3f:	83 c4 04             	add    $0x4,%esp
 8048b42:	5b                   	pop    %ebx
 8048b43:	5d                   	pop    %ebp
 8048b44:	c3                   	ret    
 8048b45:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048b49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048b50 <frame_dummy>:
 8048b50:	55                   	push   %ebp
 8048b51:	89 e5                	mov    %esp,%ebp
 8048b53:	83 ec 18             	sub    $0x18,%esp
 8048b56:	a1 24 cf 04 08       	mov    0x804cf24,%eax
 8048b5b:	85 c0                	test   %eax,%eax
 8048b5d:	74 12                	je     8048b71 <frame_dummy+0x21>
 8048b5f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048b64:	85 c0                	test   %eax,%eax
 8048b66:	74 09                	je     8048b71 <frame_dummy+0x21>
 8048b68:	c7 04 24 24 cf 04 08 	movl   $0x804cf24,(%esp)
 8048b6f:	ff d0                	call   *%eax
 8048b71:	c9                   	leave  
 8048b72:	c3                   	ret    
 8048b73:	90                   	nop
 8048b74:	90                   	nop
 8048b75:	90                   	nop
 8048b76:	90                   	nop
 8048b77:	90                   	nop
 8048b78:	90                   	nop
 8048b79:	90                   	nop
 8048b7a:	90                   	nop
 8048b7b:	90                   	nop
 8048b7c:	90                   	nop
 8048b7d:	90                   	nop
 8048b7e:	90                   	nop
 8048b7f:	90                   	nop

08048b80 <usage>:
 8048b80:	55                   	push   %ebp
 8048b81:	89 e5                	mov    %esp,%ebp
 8048b83:	83 ec 18             	sub    $0x18,%esp
 8048b86:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048b8a:	c7 44 24 04 f0 a4 04 	movl   $0x804a4f0,0x4(%esp)
 8048b91:	08 
 8048b92:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048b99:	e8 82 fe ff ff       	call   8048a20 <__printf_chk@plt>
 8048b9e:	c7 04 24 14 a5 04 08 	movl   $0x804a514,(%esp)
 8048ba5:	e8 66 fd ff ff       	call   8048910 <puts@plt>
 8048baa:	c7 04 24 aa a6 04 08 	movl   $0x804a6aa,(%esp)
 8048bb1:	e8 5a fd ff ff       	call   8048910 <puts@plt>
 8048bb6:	c7 04 24 38 a5 04 08 	movl   $0x804a538,(%esp)
 8048bbd:	e8 4e fd ff ff       	call   8048910 <puts@plt>
 8048bc2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048bc9:	e8 82 fd ff ff       	call   8048950 <exit@plt>

08048bce <illegalhandler>:
 8048bce:	55                   	push   %ebp
 8048bcf:	89 e5                	mov    %esp,%ebp
 8048bd1:	83 ec 18             	sub    $0x18,%esp
 8048bd4:	c7 04 24 5c a5 04 08 	movl   $0x804a55c,(%esp)
 8048bdb:	e8 30 fd ff ff       	call   8048910 <puts@plt>
 8048be0:	c7 04 24 c1 a6 04 08 	movl   $0x804a6c1,(%esp)
 8048be7:	e8 24 fd ff ff       	call   8048910 <puts@plt>
 8048bec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048bf3:	e8 58 fd ff ff       	call   8048950 <exit@plt>

08048bf8 <seghandler>:
 8048bf8:	55                   	push   %ebp
 8048bf9:	89 e5                	mov    %esp,%ebp
 8048bfb:	83 ec 18             	sub    $0x18,%esp
 8048bfe:	c7 04 24 88 a5 04 08 	movl   $0x804a588,(%esp)
 8048c05:	e8 06 fd ff ff       	call   8048910 <puts@plt>
 8048c0a:	c7 04 24 c1 a6 04 08 	movl   $0x804a6c1,(%esp)
 8048c11:	e8 fa fc ff ff       	call   8048910 <puts@plt>
 8048c16:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c1d:	e8 2e fd ff ff       	call   8048950 <exit@plt>

08048c22 <bushandler>:
 8048c22:	55                   	push   %ebp
 8048c23:	89 e5                	mov    %esp,%ebp
 8048c25:	83 ec 18             	sub    $0x18,%esp
 8048c28:	c7 04 24 b0 a5 04 08 	movl   $0x804a5b0,(%esp)
 8048c2f:	e8 dc fc ff ff       	call   8048910 <puts@plt>
 8048c34:	c7 04 24 c1 a6 04 08 	movl   $0x804a6c1,(%esp)
 8048c3b:	e8 d0 fc ff ff       	call   8048910 <puts@plt>
 8048c40:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c47:	e8 04 fd ff ff       	call   8048950 <exit@plt>

08048c4c <smoke>:
 8048c4c:	55                   	push   %ebp
 8048c4d:	89 e5                	mov    %esp,%ebp
 8048c4f:	83 ec 18             	sub    $0x18,%esp
 8048c52:	c7 04 24 d7 a6 04 08 	movl   $0x804a6d7,(%esp)
 8048c59:	e8 b2 fc ff ff       	call   8048910 <puts@plt>
 8048c5e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c65:	e8 40 08 00 00       	call   80494aa <validate>
 8048c6a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c71:	e8 da fc ff ff       	call   8048950 <exit@plt>

08048c76 <fizz>:
 8048c76:	55                   	push   %ebp
 8048c77:	89 e5                	mov    %esp,%ebp
 8048c79:	83 ec 18             	sub    $0x18,%esp
 8048c7c:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c7f:	3b 05 70 d2 04 08    	cmp    0x804d270,%eax
 8048c85:	75 26                	jne    8048cad <fizz+0x37>
 8048c87:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048c8b:	c7 44 24 04 f2 a6 04 	movl   $0x804a6f2,0x4(%esp)
 8048c92:	08 
 8048c93:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048c9a:	e8 81 fd ff ff       	call   8048a20 <__printf_chk@plt>
 8048c9f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048ca6:	e8 ff 07 00 00       	call   80494aa <validate>
 8048cab:	eb 18                	jmp    8048cc5 <fizz+0x4f>
 8048cad:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048cb1:	c7 44 24 04 d0 a5 04 	movl   $0x804a5d0,0x4(%esp)
 8048cb8:	08 
 8048cb9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048cc0:	e8 5b fd ff ff       	call   8048a20 <__printf_chk@plt>
 8048cc5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048ccc:	e8 7f fc ff ff       	call   8048950 <exit@plt>

08048cd1 <bang>:
 8048cd1:	55                   	push   %ebp
 8048cd2:	89 e5                	mov    %esp,%ebp
 8048cd4:	83 ec 18             	sub    $0x18,%esp
 8048cd7:	a1 64 d2 04 08       	mov    0x804d264,%eax
 8048cdc:	3b 05 70 d2 04 08    	cmp    0x804d270,%eax
 8048ce2:	75 26                	jne    8048d0a <bang+0x39>
 8048ce4:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048ce8:	c7 44 24 04 f0 a5 04 	movl   $0x804a5f0,0x4(%esp)
 8048cef:	08 
 8048cf0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048cf7:	e8 24 fd ff ff       	call   8048a20 <__printf_chk@plt>
 8048cfc:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8048d03:	e8 a2 07 00 00       	call   80494aa <validate>
 8048d08:	eb 18                	jmp    8048d22 <bang+0x51>
 8048d0a:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048d0e:	c7 44 24 04 10 a7 04 	movl   $0x804a710,0x4(%esp)
 8048d15:	08 
 8048d16:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048d1d:	e8 fe fc ff ff       	call   8048a20 <__printf_chk@plt>
 8048d22:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048d29:	e8 22 fc ff ff       	call   8048950 <exit@plt>

08048d2e <Gets>:
 8048d2e:	55                   	push   %ebp
 8048d2f:	89 e5                	mov    %esp,%ebp
 8048d31:	57                   	push   %edi
 8048d32:	56                   	push   %esi
 8048d33:	53                   	push   %ebx
 8048d34:	83 ec 2c             	sub    $0x2c,%esp
 8048d37:	8b 75 08             	mov    0x8(%ebp),%esi
 8048d3a:	c7 05 60 d2 04 08 00 	movl   $0x0,0x804d260
 8048d41:	00 00 00 
 8048d44:	89 f3                	mov    %esi,%ebx
 8048d46:	eb 55                	jmp    8048d9d <Gets+0x6f>
 8048d48:	88 45 d8             	mov    %al,-0x28(%ebp)
 8048d4b:	88 03                	mov    %al,(%ebx)
 8048d4d:	83 c3 01             	add    $0x1,%ebx
 8048d50:	a1 60 d2 04 08       	mov    0x804d260,%eax
 8048d55:	3d ff 03 00 00       	cmp    $0x3ff,%eax
 8048d5a:	7f 41                	jg     8048d9d <Gets+0x6f>
 8048d5c:	8d 14 40             	lea    (%eax,%eax,2),%edx
 8048d5f:	0f b6 4d d8          	movzbl -0x28(%ebp),%ecx
 8048d63:	c0 f9 04             	sar    $0x4,%cl
 8048d66:	89 cf                	mov    %ecx,%edi
 8048d68:	83 e7 0f             	and    $0xf,%edi
 8048d6b:	0f b6 bf e5 a7 04 08 	movzbl 0x804a7e5(%edi),%edi
 8048d72:	89 f9                	mov    %edi,%ecx
 8048d74:	88 8a a0 d2 04 08    	mov    %cl,0x804d2a0(%edx)
 8048d7a:	0f b6 4d d8          	movzbl -0x28(%ebp),%ecx
 8048d7e:	83 e1 0f             	and    $0xf,%ecx
 8048d81:	0f b6 89 e5 a7 04 08 	movzbl 0x804a7e5(%ecx),%ecx
 8048d88:	88 8a a1 d2 04 08    	mov    %cl,0x804d2a1(%edx)
 8048d8e:	c6 82 a2 d2 04 08 20 	movb   $0x20,0x804d2a2(%edx)
 8048d95:	83 c0 01             	add    $0x1,%eax
 8048d98:	a3 60 d2 04 08       	mov    %eax,0x804d260
 8048d9d:	a1 74 d2 04 08       	mov    0x804d274,%eax
 8048da2:	89 04 24             	mov    %eax,(%esp)
 8048da5:	e8 16 fb ff ff       	call   80488c0 <_IO_getc@plt>
 8048daa:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048dad:	74 05                	je     8048db4 <Gets+0x86>
 8048daf:	83 f8 0a             	cmp    $0xa,%eax
 8048db2:	75 94                	jne    8048d48 <Gets+0x1a>
 8048db4:	c6 03 00             	movb   $0x0,(%ebx)
 8048db7:	a1 60 d2 04 08       	mov    0x804d260,%eax
 8048dbc:	c6 84 40 a0 d2 04 08 	movb   $0x0,0x804d2a0(%eax,%eax,2)
 8048dc3:	00 
 8048dc4:	89 f0                	mov    %esi,%eax
 8048dc6:	83 c4 2c             	add    $0x2c,%esp
 8048dc9:	5b                   	pop    %ebx
 8048dca:	5e                   	pop    %esi
 8048dcb:	5f                   	pop    %edi
 8048dcc:	5d                   	pop    %ebp
 8048dcd:	c3                   	ret    

08048dce <uniqueval>:
 8048dce:	55                   	push   %ebp
 8048dcf:	89 e5                	mov    %esp,%ebp
 8048dd1:	83 ec 18             	sub    $0x18,%esp
 8048dd4:	e8 17 fb ff ff       	call   80488f0 <getpid@plt>
 8048dd9:	89 04 24             	mov    %eax,(%esp)
 8048ddc:	e8 9f fa ff ff       	call   8048880 <srandom@plt>
 8048de1:	e8 7a fc ff ff       	call   8048a60 <random@plt>
 8048de6:	c9                   	leave  
 8048de7:	c3                   	ret    

08048de8 <testn>:
 8048de8:	55                   	push   %ebp
 8048de9:	89 e5                	mov    %esp,%ebp
 8048deb:	53                   	push   %ebx
 8048dec:	83 ec 24             	sub    $0x24,%esp
 8048def:	e8 da ff ff ff       	call   8048dce <uniqueval>
 8048df4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048df7:	e8 c0 04 00 00       	call   80492bc <getbufn>
 8048dfc:	89 c3                	mov    %eax,%ebx
 8048dfe:	e8 cb ff ff ff       	call   8048dce <uniqueval>
 8048e03:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048e06:	39 d0                	cmp    %edx,%eax
 8048e08:	74 0e                	je     8048e18 <testn+0x30>
 8048e0a:	c7 04 24 18 a6 04 08 	movl   $0x804a618,(%esp)
 8048e11:	e8 fa fa ff ff       	call   8048910 <puts@plt>
 8048e16:	eb 46                	jmp    8048e5e <testn+0x76>
 8048e18:	3b 1d 70 d2 04 08    	cmp    0x804d270,%ebx
 8048e1e:	75 26                	jne    8048e46 <testn+0x5e>
 8048e20:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8048e24:	c7 44 24 04 44 a6 04 	movl   $0x804a644,0x4(%esp)
 8048e2b:	08 
 8048e2c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048e33:	e8 e8 fb ff ff       	call   8048a20 <__printf_chk@plt>
 8048e38:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048e3f:	e8 66 06 00 00       	call   80494aa <validate>
 8048e44:	eb 18                	jmp    8048e5e <testn+0x76>
 8048e46:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8048e4a:	c7 44 24 04 2e a7 04 	movl   $0x804a72e,0x4(%esp)
 8048e51:	08 
 8048e52:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048e59:	e8 c2 fb ff ff       	call   8048a20 <__printf_chk@plt>
 8048e5e:	83 c4 24             	add    $0x24,%esp
 8048e61:	5b                   	pop    %ebx
 8048e62:	5d                   	pop    %ebp
 8048e63:	c3                   	ret    

08048e64 <test>:
 8048e64:	55                   	push   %ebp
 8048e65:	89 e5                	mov    %esp,%ebp
 8048e67:	53                   	push   %ebx
 8048e68:	83 ec 24             	sub    $0x24,%esp
 8048e6b:	e8 5e ff ff ff       	call   8048dce <uniqueval>
 8048e70:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e73:	e8 2c 04 00 00       	call   80492a4 <getbuf>
 8048e78:	89 c3                	mov    %eax,%ebx
 8048e7a:	e8 4f ff ff ff       	call   8048dce <uniqueval>
 8048e7f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048e82:	39 d0                	cmp    %edx,%eax
 8048e84:	74 0e                	je     8048e94 <test+0x30>
 8048e86:	c7 04 24 18 a6 04 08 	movl   $0x804a618,(%esp)
 8048e8d:	e8 7e fa ff ff       	call   8048910 <puts@plt>
 8048e92:	eb 46                	jmp    8048eda <test+0x76>
 8048e94:	3b 1d 70 d2 04 08    	cmp    0x804d270,%ebx
 8048e9a:	75 26                	jne    8048ec2 <test+0x5e>
 8048e9c:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8048ea0:	c7 44 24 04 4a a7 04 	movl   $0x804a74a,0x4(%esp)
 8048ea7:	08 
 8048ea8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048eaf:	e8 6c fb ff ff       	call   8048a20 <__printf_chk@plt>
 8048eb4:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048ebb:	e8 ea 05 00 00       	call   80494aa <validate>
 8048ec0:	eb 18                	jmp    8048eda <test+0x76>
 8048ec2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8048ec6:	c7 44 24 04 67 a7 04 	movl   $0x804a767,0x4(%esp)
 8048ecd:	08 
 8048ece:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048ed5:	e8 46 fb ff ff       	call   8048a20 <__printf_chk@plt>
 8048eda:	83 c4 24             	add    $0x24,%esp
 8048edd:	5b                   	pop    %ebx
 8048ede:	5d                   	pop    %ebp
 8048edf:	c3                   	ret    

08048ee0 <launch>:
 8048ee0:	55                   	push   %ebp
 8048ee1:	89 e5                	mov    %esp,%ebp
 8048ee3:	53                   	push   %ebx
 8048ee4:	83 ec 64             	sub    $0x64,%esp
 8048ee7:	89 c3                	mov    %eax,%ebx
 8048ee9:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048eef:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048ef2:	31 c0                	xor    %eax,%eax
 8048ef4:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 8048ef7:	25 f8 3f 00 00       	and    $0x3ff8,%eax
 8048efc:	01 c2                	add    %eax,%edx
 8048efe:	8d 42 1e             	lea    0x1e(%edx),%eax
 8048f01:	83 e0 f0             	and    $0xfffffff0,%eax
 8048f04:	29 c4                	sub    %eax,%esp
 8048f06:	8d 44 24 1b          	lea    0x1b(%esp),%eax
 8048f0a:	83 e0 f0             	and    $0xfffffff0,%eax
 8048f0d:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048f11:	c7 44 24 04 f4 00 00 	movl   $0xf4,0x4(%esp)
 8048f18:	00 
 8048f19:	89 04 24             	mov    %eax,(%esp)
 8048f1c:	e8 bf fa ff ff       	call   80489e0 <memset@plt>
 8048f21:	c7 44 24 04 82 a7 04 	movl   $0x804a782,0x4(%esp)
 8048f28:	08 
 8048f29:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048f30:	e8 eb fa ff ff       	call   8048a20 <__printf_chk@plt>
 8048f35:	85 db                	test   %ebx,%ebx
 8048f37:	74 09                	je     8048f42 <launch+0x62>
 8048f39:	e8 aa fe ff ff       	call   8048de8 <testn>
 8048f3e:	66 90                	xchg   %ax,%ax
 8048f40:	eb 05                	jmp    8048f47 <launch+0x67>
 8048f42:	e8 1d ff ff ff       	call   8048e64 <test>
 8048f47:	83 3d 68 d2 04 08 00 	cmpl   $0x0,0x804d268
 8048f4e:	75 16                	jne    8048f66 <launch+0x86>
 8048f50:	c7 04 24 c1 a6 04 08 	movl   $0x804a6c1,(%esp)
 8048f57:	e8 b4 f9 ff ff       	call   8048910 <puts@plt>
 8048f5c:	c7 05 68 d2 04 08 00 	movl   $0x0,0x804d268
 8048f63:	00 00 00 
 8048f66:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f69:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048f70:	74 05                	je     8048f77 <launch+0x97>
 8048f72:	e8 39 f9 ff ff       	call   80488b0 <__stack_chk_fail@plt>
 8048f77:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048f7a:	c9                   	leave  
 8048f7b:	c3                   	ret    

08048f7c <launcher>:
 8048f7c:	55                   	push   %ebp
 8048f7d:	89 e5                	mov    %esp,%ebp
 8048f7f:	53                   	push   %ebx
 8048f80:	83 ec 24             	sub    $0x24,%esp
 8048f83:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f86:	a3 5c d2 04 08       	mov    %eax,0x804d25c
 8048f8b:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048f8e:	a3 58 d2 04 08       	mov    %eax,0x804d258
 8048f93:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 8048f9a:	00 
 8048f9b:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 8048fa2:	00 
 8048fa3:	c7 44 24 0c 22 01 00 	movl   $0x122,0xc(%esp)
 8048faa:	00 
 8048fab:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
 8048fb2:	00 
 8048fb3:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 8048fba:	00 
 8048fbb:	c7 04 24 00 60 58 55 	movl   $0x55586000,(%esp)
 8048fc2:	e8 a9 f9 ff ff       	call   8048970 <mmap@plt>
 8048fc7:	89 c3                	mov    %eax,%ebx
 8048fc9:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048fcc:	75 31                	jne    8048fff <launcher+0x83>
 8048fce:	a1 40 d2 04 08       	mov    0x804d240,%eax
 8048fd3:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048fd7:	c7 44 24 08 23 00 00 	movl   $0x23,0x8(%esp)
 8048fde:	00 
 8048fdf:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048fe6:	00 
 8048fe7:	c7 04 24 64 a6 04 08 	movl   $0x804a664,(%esp)
 8048fee:	e8 dd f8 ff ff       	call   80488d0 <fwrite@plt>
 8048ff3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048ffa:	e8 51 f9 ff ff       	call   8048950 <exit@plt>
 8048fff:	8d 90 f8 ff 0f 00    	lea    0xffff8(%eax),%edx
 8049005:	89 15 80 d2 04 08    	mov    %edx,0x804d280
 804900b:	89 e0                	mov    %esp,%eax
 804900d:	89 d4                	mov    %edx,%esp
 804900f:	89 c2                	mov    %eax,%edx
 8049011:	89 15 54 d2 04 08    	mov    %edx,0x804d254
 8049017:	8b 15 58 d2 04 08    	mov    0x804d258,%edx
 804901d:	a1 5c d2 04 08       	mov    0x804d25c,%eax
 8049022:	e8 b9 fe ff ff       	call   8048ee0 <launch>
 8049027:	a1 54 d2 04 08       	mov    0x804d254,%eax
 804902c:	89 c4                	mov    %eax,%esp
 804902e:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 8049035:	00 
 8049036:	89 1c 24             	mov    %ebx,(%esp)
 8049039:	e8 f2 f9 ff ff       	call   8048a30 <munmap@plt>
 804903e:	85 c0                	test   %eax,%eax
 8049040:	79 31                	jns    8049073 <launcher+0xf7>
 8049042:	a1 40 d2 04 08       	mov    0x804d240,%eax
 8049047:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804904b:	c7 44 24 08 1d 00 00 	movl   $0x1d,0x8(%esp)
 8049052:	00 
 8049053:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804905a:	00 
 804905b:	c7 04 24 8f a7 04 08 	movl   $0x804a78f,(%esp)
 8049062:	e8 69 f8 ff ff       	call   80488d0 <fwrite@plt>
 8049067:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804906e:	e8 dd f8 ff ff       	call   8048950 <exit@plt>
 8049073:	83 c4 24             	add    $0x24,%esp
 8049076:	5b                   	pop    %ebx
 8049077:	5d                   	pop    %ebp
 8049078:	c3                   	ret    

08049079 <main>:
 8049079:	55                   	push   %ebp
 804907a:	89 e5                	mov    %esp,%ebp
 804907c:	57                   	push   %edi
 804907d:	56                   	push   %esi
 804907e:	53                   	push   %ebx
 804907f:	83 e4 f0             	and    $0xfffffff0,%esp
 8049082:	83 ec 30             	sub    $0x30,%esp
 8049085:	8b 75 08             	mov    0x8(%ebp),%esi
 8049088:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804908b:	c7 44 24 04 f8 8b 04 	movl   $0x8048bf8,0x4(%esp)
 8049092:	08 
 8049093:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
 804909a:	e8 f1 f7 ff ff       	call   8048890 <signal@plt>
 804909f:	c7 44 24 04 22 8c 04 	movl   $0x8048c22,0x4(%esp)
 80490a6:	08 
 80490a7:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
 80490ae:	e8 dd f7 ff ff       	call   8048890 <signal@plt>
 80490b3:	c7 44 24 04 ce 8b 04 	movl   $0x8048bce,0x4(%esp)
 80490ba:	08 
 80490bb:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 80490c2:	e8 c9 f7 ff ff       	call   8048890 <signal@plt>
 80490c7:	e8 4a 02 00 00       	call   8049316 <initialize_bomb>
 80490cc:	a1 44 d2 04 08       	mov    0x804d244,%eax
 80490d1:	a3 74 d2 04 08       	mov    %eax,0x804d274
 80490d6:	bf 01 00 00 00       	mov    $0x1,%edi
 80490db:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 80490e2:	00 
 80490e3:	e9 dd 00 00 00       	jmp    80491c5 <main+0x14c>
 80490e8:	3c 68                	cmp    $0x68,%al
 80490ea:	74 26                	je     8049112 <main+0x99>
 80490ec:	3c 68                	cmp    $0x68,%al
 80490ee:	7f 0a                	jg     80490fa <main+0x81>
 80490f0:	3c 66                	cmp    $0x66,%al
 80490f2:	0f 85 b9 00 00 00    	jne    80491b1 <main+0x138>
 80490f8:	eb 75                	jmp    804916f <main+0xf6>
 80490fa:	3c 6e                	cmp    $0x6e,%al
 80490fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049100:	0f 84 b2 00 00 00    	je     80491b8 <main+0x13f>
 8049106:	3c 74                	cmp    $0x74,%al
 8049108:	0f 85 a3 00 00 00    	jne    80491b1 <main+0x138>
 804910e:	66 90                	xchg   %ax,%ax
 8049110:	eb 07                	jmp    8049119 <main+0xa0>
 8049112:	8b 03                	mov    (%ebx),%eax
 8049114:	e8 67 fa ff ff       	call   8048b80 <usage>
 8049119:	a1 48 d2 04 08       	mov    0x804d248,%eax
 804911e:	89 04 24             	mov    %eax,(%esp)
 8049121:	e8 ca f8 ff ff       	call   80489f0 <__strdup@plt>
 8049126:	a3 6c d2 04 08       	mov    %eax,0x804d26c
 804912b:	89 44 24 08          	mov    %eax,0x8(%esp)
 804912f:	c7 44 24 04 ad a7 04 	movl   $0x804a7ad,0x4(%esp)
 8049136:	08 
 8049137:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804913e:	e8 dd f8 ff ff       	call   8048a20 <__printf_chk@plt>
 8049143:	a1 6c d2 04 08       	mov    0x804d26c,%eax
 8049148:	89 04 24             	mov    %eax,(%esp)
 804914b:	e8 93 12 00 00       	call   804a3e3 <gencookie>
 8049150:	a3 70 d2 04 08       	mov    %eax,0x804d270
 8049155:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049159:	c7 44 24 04 b9 a7 04 	movl   $0x804a7b9,0x4(%esp)
 8049160:	08 
 8049161:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049168:	e8 b3 f8 ff ff       	call   8048a20 <__printf_chk@plt>
 804916d:	eb 56                	jmp    80491c5 <main+0x14c>
 804916f:	c7 44 24 04 c7 a7 04 	movl   $0x804a7c7,0x4(%esp)
 8049176:	08 
 8049177:	a1 48 d2 04 08       	mov    0x804d248,%eax
 804917c:	89 04 24             	mov    %eax,(%esp)
 804917f:	e8 4c f8 ff ff       	call   80489d0 <fopen@plt>
 8049184:	a3 74 d2 04 08       	mov    %eax,0x804d274
 8049189:	85 c0                	test   %eax,%eax
 804918b:	75 38                	jne    80491c5 <main+0x14c>
 804918d:	a1 48 d2 04 08       	mov    0x804d248,%eax
 8049192:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049196:	c7 44 24 04 c9 a7 04 	movl   $0x804a7c9,0x4(%esp)
 804919d:	08 
 804919e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80491a5:	e8 76 f8 ff ff       	call   8048a20 <__printf_chk@plt>
 80491aa:	8b 03                	mov    (%ebx),%eax
 80491ac:	e8 cf f9 ff ff       	call   8048b80 <usage>
 80491b1:	8b 03                	mov    (%ebx),%eax
 80491b3:	e8 c8 f9 ff ff       	call   8048b80 <usage>
 80491b8:	bf 05 00 00 00       	mov    $0x5,%edi
 80491bd:	c7 44 24 2c 01 00 00 	movl   $0x1,0x2c(%esp)
 80491c4:	00 
 80491c5:	c7 44 24 08 de a7 04 	movl   $0x804a7de,0x8(%esp)
 80491cc:	08 
 80491cd:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80491d1:	89 34 24             	mov    %esi,(%esp)
 80491d4:	e8 c7 f7 ff ff       	call   80489a0 <getopt@plt>
 80491d9:	3c ff                	cmp    $0xff,%al
 80491db:	0f 85 07 ff ff ff    	jne    80490e8 <main+0x6f>
 80491e1:	83 3d 6c d2 04 08 00 	cmpl   $0x0,0x804d26c
 80491e8:	75 13                	jne    80491fd <main+0x184>
 80491ea:	c7 04 24 88 a6 04 08 	movl   $0x804a688,(%esp)
 80491f1:	e8 1a f7 ff ff       	call   8048910 <puts@plt>
 80491f6:	8b 03                	mov    (%ebx),%eax
 80491f8:	e8 83 f9 ff ff       	call   8048b80 <usage>
 80491fd:	a1 70 d2 04 08       	mov    0x804d270,%eax
 8049202:	89 04 24             	mov    %eax,(%esp)
 8049205:	e8 76 f6 ff ff       	call   8048880 <srandom@plt>
 804920a:	e8 51 f8 ff ff       	call   8048a60 <random@plt>
 804920f:	25 f8 0f 00 00       	and    $0xff8,%eax
 8049214:	89 44 24 28          	mov    %eax,0x28(%esp)
 8049218:	89 7c 24 24          	mov    %edi,0x24(%esp)
 804921c:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 8049223:	00 
 8049224:	89 3c 24             	mov    %edi,(%esp)
 8049227:	e8 74 f8 ff ff       	call   8048aa0 <calloc@plt>
 804922c:	89 c6                	mov    %eax,%esi
 804922e:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049233:	8d 47 fe             	lea    -0x2(%edi),%eax
 8049236:	89 7c 24 1c          	mov    %edi,0x1c(%esp)
 804923a:	89 c7                	mov    %eax,%edi
 804923c:	eb 0e                	jmp    804924c <main+0x1d3>
 804923e:	e8 1d f8 ff ff       	call   8048a60 <random@plt>
 8049243:	83 e0 38             	and    $0x38,%eax
 8049246:	89 04 9e             	mov    %eax,(%esi,%ebx,4)
 8049249:	83 c3 01             	add    $0x1,%ebx
 804924c:	39 fb                	cmp    %edi,%ebx
 804924e:	7c ee                	jl     804923e <main+0x1c5>
 8049250:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
 8049254:	83 ff 01             	cmp    $0x1,%edi
 8049257:	7e 0c                	jle    8049265 <main+0x1ec>
 8049259:	8b 44 24 24          	mov    0x24(%esp),%eax
 804925d:	c7 44 86 f8 38 00 00 	movl   $0x38,-0x8(%esi,%eax,4)
 8049264:	00 
 8049265:	8b 44 24 24          	mov    0x24(%esp),%eax
 8049269:	c7 44 86 fc 00 00 00 	movl   $0x0,-0x4(%esi,%eax,4)
 8049270:	00 
 8049271:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049276:	eb 1a                	jmp    8049292 <main+0x219>
 8049278:	8b 44 24 28          	mov    0x28(%esp),%eax
 804927c:	03 04 9e             	add    (%esi,%ebx,4),%eax
 804927f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049283:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049287:	89 04 24             	mov    %eax,(%esp)
 804928a:	e8 ed fc ff ff       	call   8048f7c <launcher>
 804928f:	83 c3 01             	add    $0x1,%ebx
 8049292:	39 fb                	cmp    %edi,%ebx
 8049294:	7c e2                	jl     8049278 <main+0x1ff>
 8049296:	b8 00 00 00 00       	mov    $0x0,%eax
 804929b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804929e:	5b                   	pop    %ebx
 804929f:	5e                   	pop    %esi
 80492a0:	5f                   	pop    %edi
 80492a1:	5d                   	pop    %ebp
 80492a2:	c3                   	ret    
 80492a3:	90                   	nop

080492a4 <getbuf>:
 80492a4:	55                   	push   %ebp
 80492a5:	89 e5                	mov    %esp,%ebp
 80492a7:	83 ec 38             	sub    $0x38,%esp
 80492aa:	8d 45 d8             	lea    -0x28(%ebp),%eax
 80492ad:	89 04 24             	mov    %eax,(%esp)
 80492b0:	e8 79 fa ff ff       	call   8048d2e <Gets>
 80492b5:	b8 01 00 00 00       	mov    $0x1,%eax
 80492ba:	c9                   	leave  
 80492bb:	c3                   	ret    

080492bc <getbufn>:
 80492bc:	55                   	push   %ebp
 80492bd:	89 e5                	mov    %esp,%ebp
 80492bf:	81 ec 18 02 00 00    	sub    $0x218,%esp
 80492c5:	8d 85 f8 fd ff ff    	lea    -0x208(%ebp),%eax
 80492cb:	89 04 24             	mov    %eax,(%esp)
 80492ce:	e8 5b fa ff ff       	call   8048d2e <Gets>
 80492d3:	b8 01 00 00 00       	mov    $0x1,%eax
 80492d8:	c9                   	leave  
 80492d9:	c3                   	ret    
 80492da:	90                   	nop
 80492db:	90                   	nop

080492dc <alarmhandler>:
 80492dc:	55                   	push   %ebp
 80492dd:	89 e5                	mov    %esp,%ebp
 80492df:	83 ec 18             	sub    $0x18,%esp
 80492e2:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
 80492e9:	00 
 80492ea:	c7 44 24 04 f8 a7 04 	movl   $0x804a7f8,0x4(%esp)
 80492f1:	08 
 80492f2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80492f9:	e8 22 f7 ff ff       	call   8048a20 <__printf_chk@plt>
 80492fe:	c7 04 24 c1 a6 04 08 	movl   $0x804a6c1,(%esp)
 8049305:	e8 06 f6 ff ff       	call   8048910 <puts@plt>
 804930a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049311:	e8 3a f6 ff ff       	call   8048950 <exit@plt>

08049316 <initialize_bomb>:
 8049316:	55                   	push   %ebp
 8049317:	89 e5                	mov    %esp,%ebp
 8049319:	56                   	push   %esi
 804931a:	53                   	push   %ebx
 804931b:	81 ec 60 20 00 00    	sub    $0x2060,%esp
 8049321:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049327:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804932a:	31 c0                	xor    %eax,%eax
 804932c:	a1 c0 d0 04 08       	mov    0x804d0c0,%eax
 8049331:	83 f8 01             	cmp    $0x1,%eax
 8049334:	0f 85 db 00 00 00    	jne    8049415 <initialize_bomb+0xff>
 804933a:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 8049341:	00 
 8049342:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 8049345:	89 04 24             	mov    %eax,(%esp)
 8049348:	e8 b3 f5 ff ff       	call   8048900 <gethostname@plt>
 804934d:	85 c0                	test   %eax,%eax
 804934f:	75 16                	jne    8049367 <initialize_bomb+0x51>
 8049351:	a1 e0 d0 04 08       	mov    0x804d0e0,%eax
 8049356:	bb 00 00 00 00       	mov    $0x0,%ebx
 804935b:	8d 75 b4             	lea    -0x4c(%ebp),%esi
 804935e:	85 c0                	test   %eax,%eax
 8049360:	75 1d                	jne    804937f <initialize_bomb+0x69>
 8049362:	e9 96 00 00 00       	jmp    80493fd <initialize_bomb+0xe7>
 8049367:	c7 04 24 2c a8 04 08 	movl   $0x804a82c,(%esp)
 804936e:	e8 9d f5 ff ff       	call   8048910 <puts@plt>
 8049373:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804937a:	e8 d1 f5 ff ff       	call   8048950 <exit@plt>
 804937f:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049383:	89 04 24             	mov    %eax,(%esp)
 8049386:	e8 25 f6 ff ff       	call   80489b0 <strcasecmp@plt>
 804938b:	85 c0                	test   %eax,%eax
 804938d:	74 10                	je     804939f <initialize_bomb+0x89>
 804938f:	83 c3 01             	add    $0x1,%ebx
 8049392:	8b 04 9d e0 d0 04 08 	mov    0x804d0e0(,%ebx,4),%eax
 8049399:	85 c0                	test   %eax,%eax
 804939b:	75 e2                	jne    804937f <initialize_bomb+0x69>
 804939d:	eb 5e                	jmp    80493fd <initialize_bomb+0xe7>
 804939f:	8d 85 b4 df ff ff    	lea    -0x204c(%ebp),%eax
 80493a5:	89 04 24             	mov    %eax,(%esp)
 80493a8:	e8 27 0d 00 00       	call   804a0d4 <init_driver>
 80493ad:	85 c0                	test   %eax,%eax
 80493af:	79 2a                	jns    80493db <initialize_bomb+0xc5>
 80493b1:	8d 85 b4 df ff ff    	lea    -0x204c(%ebp),%eax
 80493b7:	89 44 24 08          	mov    %eax,0x8(%esp)
 80493bb:	c7 44 24 04 af a9 04 	movl   $0x804a9af,0x4(%esp)
 80493c2:	08 
 80493c3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80493ca:	e8 51 f6 ff ff       	call   8048a20 <__printf_chk@plt>
 80493cf:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80493d6:	e8 75 f5 ff ff       	call   8048950 <exit@plt>
 80493db:	c7 44 24 04 dc 92 04 	movl   $0x80492dc,0x4(%esp)
 80493e2:	08 
 80493e3:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 80493ea:	e8 a1 f4 ff ff       	call   8048890 <signal@plt>
 80493ef:	c7 04 24 58 02 00 00 	movl   $0x258,(%esp)
 80493f6:	e8 a5 f4 ff ff       	call   80488a0 <alarm@plt>
 80493fb:	eb 18                	jmp    8049415 <initialize_bomb+0xff>
 80493fd:	c7 04 24 64 a8 04 08 	movl   $0x804a864,(%esp)
 8049404:	e8 07 f5 ff ff       	call   8048910 <puts@plt>
 8049409:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049410:	e8 3b f5 ff ff       	call   8048950 <exit@plt>
 8049415:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049418:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 804941f:	74 05                	je     8049426 <initialize_bomb+0x110>
 8049421:	e8 8a f4 ff ff       	call   80488b0 <__stack_chk_fail@plt>
 8049426:	81 c4 60 20 00 00    	add    $0x2060,%esp
 804942c:	5b                   	pop    %ebx
 804942d:	5e                   	pop    %esi
 804942e:	5d                   	pop    %ebp
 804942f:	c3                   	ret    

08049430 <server_check>:
 8049430:	55                   	push   %ebp
 8049431:	89 e5                	mov    %esp,%ebp
 8049433:	83 ec 18             	sub    $0x18,%esp
 8049436:	8b 45 08             	mov    0x8(%ebp),%eax
 8049439:	83 3d 6c d2 04 08 00 	cmpl   $0x0,0x804d26c
 8049440:	75 0e                	jne    8049450 <server_check+0x20>
 8049442:	c7 04 24 9c a8 04 08 	movl   $0x804a89c,(%esp)
 8049449:	e8 c2 f4 ff ff       	call   8048910 <puts@plt>
 804944e:	eb 58                	jmp    80494a8 <server_check+0x78>
 8049450:	83 f8 04             	cmp    $0x4,%eax
 8049453:	76 0e                	jbe    8049463 <server_check+0x33>
 8049455:	c7 04 24 c8 a8 04 08 	movl   $0x804a8c8,(%esp)
 804945c:	e8 af f4 ff ff       	call   8048910 <puts@plt>
 8049461:	eb 45                	jmp    80494a8 <server_check+0x78>
 8049463:	c7 05 68 d2 04 08 01 	movl   $0x1,0x804d268
 804946a:	00 00 00 
 804946d:	8b 14 85 20 d2 04 08 	mov    0x804d220(,%eax,4),%edx
 8049474:	83 ea 01             	sub    $0x1,%edx
 8049477:	89 14 85 20 d2 04 08 	mov    %edx,0x804d220(,%eax,4)
 804947e:	85 d2                	test   %edx,%edx
 8049480:	7e 0e                	jle    8049490 <server_check+0x60>
 8049482:	c7 04 24 c9 a9 04 08 	movl   $0x804a9c9,(%esp)
 8049489:	e8 82 f4 ff ff       	call   8048910 <puts@plt>
 804948e:	eb 18                	jmp    80494a8 <server_check+0x78>
 8049490:	c7 04 24 d4 a9 04 08 	movl   $0x804a9d4,(%esp)
 8049497:	e8 74 f4 ff ff       	call   8048910 <puts@plt>
 804949c:	c7 04 24 dd a9 04 08 	movl   $0x804a9dd,(%esp)
 80494a3:	e8 68 f4 ff ff       	call   8048910 <puts@plt>
 80494a8:	c9                   	leave  
 80494a9:	c3                   	ret    

080494aa <validate>:
 80494aa:	55                   	push   %ebp
 80494ab:	89 e5                	mov    %esp,%ebp
 80494ad:	81 ec 38 40 00 00    	sub    $0x4038,%esp
 80494b3:	89 5d f8             	mov    %ebx,-0x8(%ebp)
 80494b6:	89 7d fc             	mov    %edi,-0x4(%ebp)
 80494b9:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80494bc:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80494c2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80494c5:	31 c0                	xor    %eax,%eax
 80494c7:	83 3d 6c d2 04 08 00 	cmpl   $0x0,0x804d26c
 80494ce:	75 11                	jne    80494e1 <validate+0x37>
 80494d0:	c7 04 24 9c a8 04 08 	movl   $0x804a89c,(%esp)
 80494d7:	e8 34 f4 ff ff       	call   8048910 <puts@plt>
 80494dc:	e9 29 01 00 00       	jmp    804960a <validate+0x160>
 80494e1:	83 fb 04             	cmp    $0x4,%ebx
 80494e4:	76 11                	jbe    80494f7 <validate+0x4d>
 80494e6:	c7 04 24 c8 a8 04 08 	movl   $0x804a8c8,(%esp)
 80494ed:	e8 1e f4 ff ff       	call   8048910 <puts@plt>
 80494f2:	e9 13 01 00 00       	jmp    804960a <validate+0x160>
 80494f7:	c7 05 68 d2 04 08 01 	movl   $0x1,0x804d268
 80494fe:	00 00 00 
 8049501:	8b 04 9d 20 d2 04 08 	mov    0x804d220(,%ebx,4),%eax
 8049508:	83 e8 01             	sub    $0x1,%eax
 804950b:	89 04 9d 20 d2 04 08 	mov    %eax,0x804d220(,%ebx,4)
 8049512:	85 c0                	test   %eax,%eax
 8049514:	7e 11                	jle    8049527 <validate+0x7d>
 8049516:	c7 04 24 c9 a9 04 08 	movl   $0x804a9c9,(%esp)
 804951d:	e8 ee f3 ff ff       	call   8048910 <puts@plt>
 8049522:	e9 e3 00 00 00       	jmp    804960a <validate+0x160>
 8049527:	c7 04 24 e7 a9 04 08 	movl   $0x804a9e7,(%esp)
 804952e:	e8 dd f3 ff ff       	call   8048910 <puts@plt>
 8049533:	a1 c0 d0 04 08       	mov    0x804d0c0,%eax
 8049538:	83 f8 01             	cmp    $0x1,%eax
 804953b:	0f 85 bd 00 00 00    	jne    80495fe <validate+0x154>
 8049541:	bf a0 d2 04 08       	mov    $0x804d2a0,%edi
 8049546:	b8 00 00 00 00       	mov    $0x0,%eax
 804954b:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049550:	f2 ae                	repnz scas %es:(%edi),%al
 8049552:	f7 d1                	not    %ecx
 8049554:	83 c1 1f             	add    $0x1f,%ecx
 8049557:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
 804955d:	76 11                	jbe    8049570 <validate+0xc6>
 804955f:	c7 04 24 f0 a8 04 08 	movl   $0x804a8f0,(%esp)
 8049566:	e8 a5 f3 ff ff       	call   8048910 <puts@plt>
 804956b:	e9 9a 00 00 00       	jmp    804960a <validate+0x160>
 8049570:	c7 44 24 18 a0 d2 04 	movl   $0x804d2a0,0x18(%esp)
 8049577:	08 
 8049578:	a1 70 d2 04 08       	mov    0x804d270,%eax
 804957d:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049581:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 8049585:	c7 44 24 0c ed a9 04 	movl   $0x804a9ed,0xc(%esp)
 804958c:	08 
 804958d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 8049594:	00 
 8049595:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804959c:	00 
 804959d:	8d 9d f4 bf ff ff    	lea    -0x400c(%ebp),%ebx
 80495a3:	89 1c 24             	mov    %ebx,(%esp)
 80495a6:	e8 05 f5 ff ff       	call   8048ab0 <__sprintf_chk@plt>
 80495ab:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 80495b1:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80495b5:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80495bc:	00 
 80495bd:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80495c1:	a1 6c d2 04 08       	mov    0x804d26c,%eax
 80495c6:	89 04 24             	mov    %eax,(%esp)
 80495c9:	e8 26 0d 00 00       	call   804a2f4 <driver_post>
 80495ce:	85 c0                	test   %eax,%eax
 80495d0:	75 0e                	jne    80495e0 <validate+0x136>
 80495d2:	c7 04 24 20 a9 04 08 	movl   $0x804a920,(%esp)
 80495d9:	e8 32 f3 ff ff       	call   8048910 <puts@plt>
 80495de:	eb 1e                	jmp    80495fe <validate+0x154>
 80495e0:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 80495e6:	89 44 24 08          	mov    %eax,0x8(%esp)
 80495ea:	c7 44 24 04 50 a9 04 	movl   $0x804a950,0x4(%esp)
 80495f1:	08 
 80495f2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80495f9:	e8 22 f4 ff ff       	call   8048a20 <__printf_chk@plt>
 80495fe:	c7 04 24 f6 a9 04 08 	movl   $0x804a9f6,(%esp)
 8049605:	e8 06 f3 ff ff       	call   8048910 <puts@plt>
 804960a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804960d:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8049614:	74 05                	je     804961b <validate+0x171>
 8049616:	e8 95 f2 ff ff       	call   80488b0 <__stack_chk_fail@plt>
 804961b:	8b 5d f8             	mov    -0x8(%ebp),%ebx
 804961e:	8b 7d fc             	mov    -0x4(%ebp),%edi
 8049621:	89 ec                	mov    %ebp,%esp
 8049623:	5d                   	pop    %ebp
 8049624:	c3                   	ret    
 8049625:	90                   	nop
 8049626:	90                   	nop
 8049627:	90                   	nop
 8049628:	90                   	nop
 8049629:	90                   	nop
 804962a:	90                   	nop
 804962b:	90                   	nop
 804962c:	90                   	nop
 804962d:	90                   	nop
 804962e:	90                   	nop
 804962f:	90                   	nop

08049630 <rio_readlineb>:
 8049630:	55                   	push   %ebp
 8049631:	89 e5                	mov    %esp,%ebp
 8049633:	57                   	push   %edi
 8049634:	56                   	push   %esi
 8049635:	53                   	push   %ebx
 8049636:	83 ec 3c             	sub    $0x3c,%esp
 8049639:	89 c3                	mov    %eax,%ebx
 804963b:	89 4d cc             	mov    %ecx,-0x34(%ebp)
 804963e:	89 55 d0             	mov    %edx,-0x30(%ebp)
 8049641:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 8049648:	8d 78 0c             	lea    0xc(%eax),%edi
 804964b:	83 f9 01             	cmp    $0x1,%ecx
 804964e:	77 40                	ja     8049690 <rio_readlineb+0x60>
 8049650:	e9 ac 00 00 00       	jmp    8049701 <rio_readlineb+0xd1>
 8049655:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 804965c:	00 
 804965d:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049661:	8b 03                	mov    (%ebx),%eax
 8049663:	89 04 24             	mov    %eax,(%esp)
 8049666:	e8 05 f2 ff ff       	call   8048870 <read@plt>
 804966b:	89 43 04             	mov    %eax,0x4(%ebx)
 804966e:	85 c0                	test   %eax,%eax
 8049670:	79 13                	jns    8049685 <rio_readlineb+0x55>
 8049672:	e8 89 f3 ff ff       	call   8048a00 <__errno_location@plt>
 8049677:	83 38 04             	cmpl   $0x4,(%eax)
 804967a:	74 14                	je     8049690 <rio_readlineb+0x60>
 804967c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049680:	e9 8d 00 00 00       	jmp    8049712 <rio_readlineb+0xe2>
 8049685:	85 c0                	test   %eax,%eax
 8049687:	0f 84 8c 00 00 00    	je     8049719 <rio_readlineb+0xe9>
 804968d:	89 7b 08             	mov    %edi,0x8(%ebx)
 8049690:	8b 73 04             	mov    0x4(%ebx),%esi
 8049693:	85 f6                	test   %esi,%esi
 8049695:	7e be                	jle    8049655 <rio_readlineb+0x25>
 8049697:	85 f6                	test   %esi,%esi
 8049699:	0f 85 84 00 00 00    	jne    8049723 <rio_readlineb+0xf3>
 804969f:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 80496a6:	00 
 80496a7:	89 74 24 08          	mov    %esi,0x8(%esp)
 80496ab:	8b 43 08             	mov    0x8(%ebx),%eax
 80496ae:	89 44 24 04          	mov    %eax,0x4(%esp)
 80496b2:	8d 45 e7             	lea    -0x19(%ebp),%eax
 80496b5:	89 04 24             	mov    %eax,(%esp)
 80496b8:	e8 73 f2 ff ff       	call   8048930 <__memcpy_chk@plt>
 80496bd:	01 73 08             	add    %esi,0x8(%ebx)
 80496c0:	29 73 04             	sub    %esi,0x4(%ebx)
 80496c3:	83 fe 01             	cmp    $0x1,%esi
 80496c6:	75 15                	jne    80496dd <rio_readlineb+0xad>
 80496c8:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 80496cc:	8b 55 d0             	mov    -0x30(%ebp),%edx
 80496cf:	88 02                	mov    %al,(%edx)
 80496d1:	83 c2 01             	add    $0x1,%edx
 80496d4:	89 55 d0             	mov    %edx,-0x30(%ebp)
 80496d7:	3c 0a                	cmp    $0xa,%al
 80496d9:	75 1a                	jne    80496f5 <rio_readlineb+0xc5>
 80496db:	eb 24                	jmp    8049701 <rio_readlineb+0xd1>
 80496dd:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 80496e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80496e5:	85 f6                	test   %esi,%esi
 80496e7:	75 21                	jne    804970a <rio_readlineb+0xda>
 80496e9:	b8 00 00 00 00       	mov    $0x0,%eax
 80496ee:	83 fa 01             	cmp    $0x1,%edx
 80496f1:	75 0e                	jne    8049701 <rio_readlineb+0xd1>
 80496f3:	eb 15                	jmp    804970a <rio_readlineb+0xda>
 80496f5:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
 80496f9:	8b 45 cc             	mov    -0x34(%ebp),%eax
 80496fc:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
 80496ff:	75 8f                	jne    8049690 <rio_readlineb+0x60>
 8049701:	8b 55 d0             	mov    -0x30(%ebp),%edx
 8049704:	c6 02 00             	movb   $0x0,(%edx)
 8049707:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804970a:	83 c4 3c             	add    $0x3c,%esp
 804970d:	5b                   	pop    %ebx
 804970e:	5e                   	pop    %esi
 804970f:	5f                   	pop    %edi
 8049710:	5d                   	pop    %ebp
 8049711:	c3                   	ret    
 8049712:	be ff ff ff ff       	mov    $0xffffffff,%esi
 8049717:	eb 05                	jmp    804971e <rio_readlineb+0xee>
 8049719:	be 00 00 00 00       	mov    $0x0,%esi
 804971e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 8049721:	eb bd                	jmp    80496e0 <rio_readlineb+0xb0>
 8049723:	8b 43 08             	mov    0x8(%ebx),%eax
 8049726:	0f b6 00             	movzbl (%eax),%eax
 8049729:	88 45 e7             	mov    %al,-0x19(%ebp)
 804972c:	83 43 08 01          	addl   $0x1,0x8(%ebx)
 8049730:	83 6b 04 01          	subl   $0x1,0x4(%ebx)
 8049734:	eb 92                	jmp    80496c8 <rio_readlineb+0x98>

08049736 <sigalrm_handler>:
 8049736:	55                   	push   %ebp
 8049737:	89 e5                	mov    %esp,%ebp
 8049739:	83 ec 18             	sub    $0x18,%esp
 804973c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8049743:	00 
 8049744:	c7 44 24 08 30 ac 04 	movl   $0x804ac30,0x8(%esp)
 804974b:	08 
 804974c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049753:	00 
 8049754:	a1 40 d2 04 08       	mov    0x804d240,%eax
 8049759:	89 04 24             	mov    %eax,(%esp)
 804975c:	e8 ef f2 ff ff       	call   8048a50 <__fprintf_chk@plt>
 8049761:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049768:	e8 e3 f1 ff ff       	call   8048950 <exit@plt>

0804976d <submitr>:
 804976d:	55                   	push   %ebp
 804976e:	89 e5                	mov    %esp,%ebp
 8049770:	57                   	push   %edi
 8049771:	56                   	push   %esi
 8049772:	53                   	push   %ebx
 8049773:	81 ec 8c a0 00 00    	sub    $0xa08c,%esp
 8049779:	8b 45 08             	mov    0x8(%ebp),%eax
 804977c:	89 85 ac 5f ff ff    	mov    %eax,-0xa054(%ebp)
 8049782:	8b 55 10             	mov    0x10(%ebp),%edx
 8049785:	89 95 a8 5f ff ff    	mov    %edx,-0xa058(%ebp)
 804978b:	8b 4d 14             	mov    0x14(%ebp),%ecx
 804978e:	89 8d a4 5f ff ff    	mov    %ecx,-0xa05c(%ebp)
 8049794:	8b 45 18             	mov    0x18(%ebp),%eax
 8049797:	89 85 a0 5f ff ff    	mov    %eax,-0xa060(%ebp)
 804979d:	8b 5d 1c             	mov    0x1c(%ebp),%ebx
 80497a0:	8b 55 20             	mov    0x20(%ebp),%edx
 80497a3:	89 95 b4 5f ff ff    	mov    %edx,-0xa04c(%ebp)
 80497a9:	65 8b 0d 14 00 00 00 	mov    %gs:0x14,%ecx
 80497b0:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 80497b3:	31 c9                	xor    %ecx,%ecx
 80497b5:	c7 85 bc 5f ff ff 00 	movl   $0x0,-0xa044(%ebp)
 80497bc:	00 00 00 
 80497bf:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80497c6:	00 
 80497c7:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80497ce:	00 
 80497cf:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 80497d6:	e8 65 f2 ff ff       	call   8048a40 <socket@plt>
 80497db:	89 85 b0 5f ff ff    	mov    %eax,-0xa050(%ebp)
 80497e1:	85 c0                	test   %eax,%eax
 80497e3:	79 54                	jns    8049839 <submitr+0xcc>
 80497e5:	8b 85 b4 5f ff ff    	mov    -0xa04c(%ebp),%eax
 80497eb:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80497f1:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 80497f8:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 80497ff:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049806:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804980d:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049814:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 804981b:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 8049822:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 8049829:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804982f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049834:	e9 c1 07 00 00       	jmp    8049ffa <submitr+0x88d>
 8049839:	8b 95 ac 5f ff ff    	mov    -0xa054(%ebp),%edx
 804983f:	89 14 24             	mov    %edx,(%esp)
 8049842:	e8 29 f2 ff ff       	call   8048a70 <gethostbyname@plt>
 8049847:	85 c0                	test   %eax,%eax
 8049849:	0f 85 82 00 00 00    	jne    80498d1 <submitr+0x164>
 804984f:	8b 8d b4 5f ff ff    	mov    -0xa04c(%ebp),%ecx
 8049855:	c7 01 45 72 72 6f    	movl   $0x6f727245,(%ecx)
 804985b:	c7 41 04 72 3a 20 44 	movl   $0x44203a72,0x4(%ecx)
 8049862:	c7 41 08 4e 53 20 69 	movl   $0x6920534e,0x8(%ecx)
 8049869:	c7 41 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%ecx)
 8049870:	c7 41 10 61 62 6c 65 	movl   $0x656c6261,0x10(%ecx)
 8049877:	c7 41 14 20 74 6f 20 	movl   $0x206f7420,0x14(%ecx)
 804987e:	c7 41 18 72 65 73 6f 	movl   $0x6f736572,0x18(%ecx)
 8049885:	c7 41 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%ecx)
 804988c:	c7 41 20 41 75 74 6f 	movl   $0x6f747541,0x20(%ecx)
 8049893:	c7 41 24 6c 61 62 20 	movl   $0x2062616c,0x24(%ecx)
 804989a:	c7 41 28 73 65 72 76 	movl   $0x76726573,0x28(%ecx)
 80498a1:	c7 41 2c 65 72 20 61 	movl   $0x61207265,0x2c(%ecx)
 80498a8:	c7 41 30 64 64 72 65 	movl   $0x65726464,0x30(%ecx)
 80498af:	66 c7 41 34 73 73    	movw   $0x7373,0x34(%ecx)
 80498b5:	c6 41 36 00          	movb   $0x0,0x36(%ecx)
 80498b9:	8b 85 b0 5f ff ff    	mov    -0xa050(%ebp),%eax
 80498bf:	89 04 24             	mov    %eax,(%esp)
 80498c2:	e8 c9 f1 ff ff       	call   8048a90 <close@plt>
 80498c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80498cc:	e9 29 07 00 00       	jmp    8049ffa <submitr+0x88d>
 80498d1:	8d 75 cc             	lea    -0x34(%ebp),%esi
 80498d4:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
 80498db:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 80498e2:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 80498e9:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 80498f0:	66 c7 45 cc 02 00    	movw   $0x2,-0x34(%ebp)
 80498f6:	c7 44 24 0c 0c 00 00 	movl   $0xc,0xc(%esp)
 80498fd:	00 
 80498fe:	8b 50 0c             	mov    0xc(%eax),%edx
 8049901:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049905:	8b 40 10             	mov    0x10(%eax),%eax
 8049908:	8b 00                	mov    (%eax),%eax
 804990a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804990e:	8d 45 d0             	lea    -0x30(%ebp),%eax
 8049911:	89 04 24             	mov    %eax,(%esp)
 8049914:	e8 07 f0 ff ff       	call   8048920 <__memmove_chk@plt>
 8049919:	0f b7 45 0c          	movzwl 0xc(%ebp),%eax
 804991d:	66 c1 c8 08          	ror    $0x8,%ax
 8049921:	66 89 45 ce          	mov    %ax,-0x32(%ebp)
 8049925:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 804992c:	00 
 804992d:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049931:	8b 85 b0 5f ff ff    	mov    -0xa050(%ebp),%eax
 8049937:	89 04 24             	mov    %eax,(%esp)
 804993a:	e8 41 f1 ff ff       	call   8048a80 <connect@plt>
 804993f:	85 c0                	test   %eax,%eax
 8049941:	79 74                	jns    80499b7 <submitr+0x24a>
 8049943:	8b 95 b4 5f ff ff    	mov    -0xa04c(%ebp),%edx
 8049949:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 804994f:	c7 42 04 72 3a 20 55 	movl   $0x55203a72,0x4(%edx)
 8049956:	c7 42 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%edx)
 804995d:	c7 42 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%edx)
 8049964:	c7 42 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%edx)
 804996b:	c7 42 14 6e 65 63 74 	movl   $0x7463656e,0x14(%edx)
 8049972:	c7 42 18 20 74 6f 20 	movl   $0x206f7420,0x18(%edx)
 8049979:	c7 42 1c 74 68 65 20 	movl   $0x20656874,0x1c(%edx)
 8049980:	c7 42 20 41 75 74 6f 	movl   $0x6f747541,0x20(%edx)
 8049987:	c7 42 24 6c 61 62 20 	movl   $0x2062616c,0x24(%edx)
 804998e:	c7 42 28 73 65 72 76 	movl   $0x76726573,0x28(%edx)
 8049995:	66 c7 42 2c 65 72    	movw   $0x7265,0x2c(%edx)
 804999b:	c6 42 2e 00          	movb   $0x0,0x2e(%edx)
 804999f:	8b 85 b0 5f ff ff    	mov    -0xa050(%ebp),%eax
 80499a5:	89 04 24             	mov    %eax,(%esp)
 80499a8:	e8 e3 f0 ff ff       	call   8048a90 <close@plt>
 80499ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80499b2:	e9 43 06 00 00       	jmp    8049ffa <submitr+0x88d>
 80499b7:	ba ff ff ff ff       	mov    $0xffffffff,%edx
 80499bc:	89 df                	mov    %ebx,%edi
 80499be:	b8 00 00 00 00       	mov    $0x0,%eax
 80499c3:	89 d1                	mov    %edx,%ecx
 80499c5:	f2 ae                	repnz scas %es:(%edi),%al
 80499c7:	89 ce                	mov    %ecx,%esi
 80499c9:	f7 d6                	not    %esi
 80499cb:	8b bd a8 5f ff ff    	mov    -0xa058(%ebp),%edi
 80499d1:	89 d1                	mov    %edx,%ecx
 80499d3:	f2 ae                	repnz scas %es:(%edi),%al
 80499d5:	89 8d 9c 5f ff ff    	mov    %ecx,-0xa064(%ebp)
 80499db:	8b bd a4 5f ff ff    	mov    -0xa05c(%ebp),%edi
 80499e1:	89 d1                	mov    %edx,%ecx
 80499e3:	f2 ae                	repnz scas %es:(%edi),%al
 80499e5:	f7 d1                	not    %ecx
 80499e7:	89 8d 98 5f ff ff    	mov    %ecx,-0xa068(%ebp)
 80499ed:	8b bd a0 5f ff ff    	mov    -0xa060(%ebp),%edi
 80499f3:	89 d1                	mov    %edx,%ecx
 80499f5:	f2 ae                	repnz scas %es:(%edi),%al
 80499f7:	89 ca                	mov    %ecx,%edx
 80499f9:	8b 8d 98 5f ff ff    	mov    -0xa068(%ebp),%ecx
 80499ff:	2b 8d 9c 5f ff ff    	sub    -0xa064(%ebp),%ecx
 8049a05:	29 d1                	sub    %edx,%ecx
 8049a07:	8d 44 76 fd          	lea    -0x3(%esi,%esi,2),%eax
 8049a0b:	8d 44 01 7b          	lea    0x7b(%ecx,%eax,1),%eax
 8049a0f:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049a14:	76 7f                	jbe    8049a95 <submitr+0x328>
 8049a16:	8b 85 b4 5f ff ff    	mov    -0xa04c(%ebp),%eax
 8049a1c:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049a22:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 8049a29:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 8049a30:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 8049a37:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 8049a3e:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 8049a45:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 8049a4c:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 8049a53:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 8049a5a:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 8049a61:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 8049a68:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 8049a6f:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 8049a76:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 8049a7d:	8b 85 b0 5f ff ff    	mov    -0xa050(%ebp),%eax
 8049a83:	89 04 24             	mov    %eax,(%esp)
 8049a86:	e8 05 f0 ff ff       	call   8048a90 <close@plt>
 8049a8b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a90:	e9 65 05 00 00       	jmp    8049ffa <submitr+0x88d>
 8049a95:	8d 95 cc 9f ff ff    	lea    -0x6034(%ebp),%edx
 8049a9b:	b9 00 08 00 00       	mov    $0x800,%ecx
 8049aa0:	b8 00 00 00 00       	mov    $0x0,%eax
 8049aa5:	89 d7                	mov    %edx,%edi
 8049aa7:	f3 ab                	rep stos %eax,%es:(%edi)
 8049aa9:	89 df                	mov    %ebx,%edi
 8049aab:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049ab0:	f2 ae                	repnz scas %es:(%edi),%al
 8049ab2:	f7 d1                	not    %ecx
 8049ab4:	89 cf                	mov    %ecx,%edi
 8049ab6:	83 ef 01             	sub    $0x1,%edi
 8049ab9:	0f 84 4d 05 00 00    	je     804a00c <submitr+0x89f>
 8049abf:	89 d6                	mov    %edx,%esi
 8049ac1:	0f b6 03             	movzbl (%ebx),%eax
 8049ac4:	3c 2a                	cmp    $0x2a,%al
 8049ac6:	74 24                	je     8049aec <submitr+0x37f>
 8049ac8:	3c 2d                	cmp    $0x2d,%al
 8049aca:	74 20                	je     8049aec <submitr+0x37f>
 8049acc:	3c 2e                	cmp    $0x2e,%al
 8049ace:	74 1c                	je     8049aec <submitr+0x37f>
 8049ad0:	3c 5f                	cmp    $0x5f,%al
 8049ad2:	74 18                	je     8049aec <submitr+0x37f>
 8049ad4:	8d 50 d0             	lea    -0x30(%eax),%edx
 8049ad7:	80 fa 09             	cmp    $0x9,%dl
 8049ada:	76 10                	jbe    8049aec <submitr+0x37f>
 8049adc:	8d 50 bf             	lea    -0x41(%eax),%edx
 8049adf:	80 fa 19             	cmp    $0x19,%dl
 8049ae2:	76 08                	jbe    8049aec <submitr+0x37f>
 8049ae4:	8d 50 9f             	lea    -0x61(%eax),%edx
 8049ae7:	80 fa 19             	cmp    $0x19,%dl
 8049aea:	77 07                	ja     8049af3 <submitr+0x386>
 8049aec:	88 06                	mov    %al,(%esi)
 8049aee:	83 c6 01             	add    $0x1,%esi
 8049af1:	eb 59                	jmp    8049b4c <submitr+0x3df>
 8049af3:	3c 20                	cmp    $0x20,%al
 8049af5:	75 08                	jne    8049aff <submitr+0x392>
 8049af7:	c6 06 2b             	movb   $0x2b,(%esi)
 8049afa:	83 c6 01             	add    $0x1,%esi
 8049afd:	eb 4d                	jmp    8049b4c <submitr+0x3df>
 8049aff:	8d 50 e0             	lea    -0x20(%eax),%edx
 8049b02:	80 fa 5f             	cmp    $0x5f,%dl
 8049b05:	76 04                	jbe    8049b0b <submitr+0x39e>
 8049b07:	3c 09                	cmp    $0x9,%al
 8049b09:	75 52                	jne    8049b5d <submitr+0x3f0>
 8049b0b:	0f b6 c0             	movzbl %al,%eax
 8049b0e:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049b12:	c7 44 24 0c 1c ad 04 	movl   $0x804ad1c,0xc(%esp)
 8049b19:	08 
 8049b1a:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 8049b21:	00 
 8049b22:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049b29:	00 
 8049b2a:	8d 55 dc             	lea    -0x24(%ebp),%edx
 8049b2d:	89 14 24             	mov    %edx,(%esp)
 8049b30:	e8 7b ef ff ff       	call   8048ab0 <__sprintf_chk@plt>
 8049b35:	0f b6 45 dc          	movzbl -0x24(%ebp),%eax
 8049b39:	88 06                	mov    %al,(%esi)
 8049b3b:	0f b6 45 dd          	movzbl -0x23(%ebp),%eax
 8049b3f:	88 46 01             	mov    %al,0x1(%esi)
 8049b42:	0f b6 45 de          	movzbl -0x22(%ebp),%eax
 8049b46:	88 46 02             	mov    %al,0x2(%esi)
 8049b49:	83 c6 03             	add    $0x3,%esi
 8049b4c:	83 c3 01             	add    $0x1,%ebx
 8049b4f:	83 ef 01             	sub    $0x1,%edi
 8049b52:	0f 85 69 ff ff ff    	jne    8049ac1 <submitr+0x354>
 8049b58:	e9 af 04 00 00       	jmp    804a00c <submitr+0x89f>
 8049b5d:	8b bd b4 5f ff ff    	mov    -0xa04c(%ebp),%edi
 8049b63:	be 54 ac 04 08       	mov    $0x804ac54,%esi
 8049b68:	b8 43 00 00 00       	mov    $0x43,%eax
 8049b6d:	f7 c7 01 00 00 00    	test   $0x1,%edi
 8049b73:	74 1c                	je     8049b91 <submitr+0x424>
 8049b75:	0f b6 05 54 ac 04 08 	movzbl 0x804ac54,%eax
 8049b7c:	88 07                	mov    %al,(%edi)
 8049b7e:	8b bd b4 5f ff ff    	mov    -0xa04c(%ebp),%edi
 8049b84:	83 c7 01             	add    $0x1,%edi
 8049b87:	be 55 ac 04 08       	mov    $0x804ac55,%esi
 8049b8c:	b8 42 00 00 00       	mov    $0x42,%eax
 8049b91:	f7 c7 02 00 00 00    	test   $0x2,%edi
 8049b97:	74 0f                	je     8049ba8 <submitr+0x43b>
 8049b99:	0f b7 16             	movzwl (%esi),%edx
 8049b9c:	66 89 17             	mov    %dx,(%edi)
 8049b9f:	83 c7 02             	add    $0x2,%edi
 8049ba2:	83 c6 02             	add    $0x2,%esi
 8049ba5:	83 e8 02             	sub    $0x2,%eax
 8049ba8:	89 c1                	mov    %eax,%ecx
 8049baa:	c1 e9 02             	shr    $0x2,%ecx
 8049bad:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049baf:	ba 00 00 00 00       	mov    $0x0,%edx
 8049bb4:	a8 02                	test   $0x2,%al
 8049bb6:	74 0b                	je     8049bc3 <submitr+0x456>
 8049bb8:	0f b7 16             	movzwl (%esi),%edx
 8049bbb:	66 89 17             	mov    %dx,(%edi)
 8049bbe:	ba 02 00 00 00       	mov    $0x2,%edx
 8049bc3:	a8 01                	test   $0x1,%al
 8049bc5:	74 07                	je     8049bce <submitr+0x461>
 8049bc7:	0f b6 04 16          	movzbl (%esi,%edx,1),%eax
 8049bcb:	88 04 17             	mov    %al,(%edi,%edx,1)
 8049bce:	8b 85 b0 5f ff ff    	mov    -0xa050(%ebp),%eax
 8049bd4:	89 04 24             	mov    %eax,(%esp)
 8049bd7:	e8 b4 ee ff ff       	call   8048a90 <close@plt>
 8049bdc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049be1:	e9 14 04 00 00       	jmp    8049ffa <submitr+0x88d>
 8049be6:	89 9d ac 5f ff ff    	mov    %ebx,-0xa054(%ebp)
 8049bec:	8b 9d b0 5f ff ff    	mov    -0xa050(%ebp),%ebx
 8049bf2:	89 74 24 08          	mov    %esi,0x8(%esp)
 8049bf6:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049bfa:	89 1c 24             	mov    %ebx,(%esp)
 8049bfd:	e8 8e ed ff ff       	call   8048990 <write@plt>
 8049c02:	85 c0                	test   %eax,%eax
 8049c04:	7f 11                	jg     8049c17 <submitr+0x4aa>
 8049c06:	e8 f5 ed ff ff       	call   8048a00 <__errno_location@plt>
 8049c0b:	83 38 04             	cmpl   $0x4,(%eax)
 8049c0e:	66 90                	xchg   %ax,%ax
 8049c10:	75 15                	jne    8049c27 <submitr+0x4ba>
 8049c12:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c17:	01 c7                	add    %eax,%edi
 8049c19:	29 c6                	sub    %eax,%esi
 8049c1b:	75 d5                	jne    8049bf2 <submitr+0x485>
 8049c1d:	8b 9d ac 5f ff ff    	mov    -0xa054(%ebp),%ebx
 8049c23:	85 db                	test   %ebx,%ebx
 8049c25:	79 78                	jns    8049c9f <submitr+0x532>
 8049c27:	8b 95 b4 5f ff ff    	mov    -0xa04c(%ebp),%edx
 8049c2d:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049c33:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049c3a:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049c41:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049c48:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049c4f:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049c56:	c7 42 18 77 72 69 74 	movl   $0x74697277,0x18(%edx)
 8049c5d:	c7 42 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%edx)
 8049c64:	c7 42 20 20 74 68 65 	movl   $0x65687420,0x20(%edx)
 8049c6b:	c7 42 24 20 41 75 74 	movl   $0x74754120,0x24(%edx)
 8049c72:	c7 42 28 6f 6c 61 62 	movl   $0x62616c6f,0x28(%edx)
 8049c79:	c7 42 2c 20 73 65 72 	movl   $0x72657320,0x2c(%edx)
 8049c80:	c7 42 30 76 65 72 00 	movl   $0x726576,0x30(%edx)
 8049c87:	8b 85 b0 5f ff ff    	mov    -0xa050(%ebp),%eax
 8049c8d:	89 04 24             	mov    %eax,(%esp)
 8049c90:	e8 fb ed ff ff       	call   8048a90 <close@plt>
 8049c95:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c9a:	e9 5b 03 00 00       	jmp    8049ffa <submitr+0x88d>
 8049c9f:	8b 85 b0 5f ff ff    	mov    -0xa050(%ebp),%eax
 8049ca5:	89 85 c0 5f ff ff    	mov    %eax,-0xa040(%ebp)
 8049cab:	c7 85 c4 5f ff ff 00 	movl   $0x0,-0xa03c(%ebp)
 8049cb2:	00 00 00 
 8049cb5:	8d 85 cc 5f ff ff    	lea    -0xa034(%ebp),%eax
 8049cbb:	89 85 c8 5f ff ff    	mov    %eax,-0xa038(%ebp)
 8049cc1:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049cc6:	8d 95 cc 7f ff ff    	lea    -0x8034(%ebp),%edx
 8049ccc:	8d 85 c0 5f ff ff    	lea    -0xa040(%ebp),%eax
 8049cd2:	e8 59 f9 ff ff       	call   8049630 <rio_readlineb>
 8049cd7:	85 c0                	test   %eax,%eax
 8049cd9:	0f 8f 8c 00 00 00    	jg     8049d6b <submitr+0x5fe>
 8049cdf:	8b 95 b4 5f ff ff    	mov    -0xa04c(%ebp),%edx
 8049ce5:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049ceb:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049cf2:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049cf9:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049d00:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049d07:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049d0e:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 8049d15:	c7 42 1c 20 66 69 72 	movl   $0x72696620,0x1c(%edx)
 8049d1c:	c7 42 20 73 74 20 68 	movl   $0x68207473,0x20(%edx)
 8049d23:	c7 42 24 65 61 64 65 	movl   $0x65646165,0x24(%edx)
 8049d2a:	c7 42 28 72 20 66 72 	movl   $0x72662072,0x28(%edx)
 8049d31:	c7 42 2c 6f 6d 20 41 	movl   $0x41206d6f,0x2c(%edx)
 8049d38:	c7 42 30 75 74 6f 6c 	movl   $0x6c6f7475,0x30(%edx)
 8049d3f:	c7 42 34 61 62 20 73 	movl   $0x73206261,0x34(%edx)
 8049d46:	c7 42 38 65 72 76 65 	movl   $0x65767265,0x38(%edx)
 8049d4d:	66 c7 42 3c 72 00    	movw   $0x72,0x3c(%edx)
 8049d53:	8b 85 b0 5f ff ff    	mov    -0xa050(%ebp),%eax
 8049d59:	89 04 24             	mov    %eax,(%esp)
 8049d5c:	e8 2f ed ff ff       	call   8048a90 <close@plt>
 8049d61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049d66:	e9 8f 02 00 00       	jmp    8049ffa <submitr+0x88d>
 8049d6b:	8d 85 cc df ff ff    	lea    -0x2034(%ebp),%eax
 8049d71:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049d75:	8d 85 bc 5f ff ff    	lea    -0xa044(%ebp),%eax
 8049d7b:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049d7f:	8d 85 cc bf ff ff    	lea    -0x4034(%ebp),%eax
 8049d85:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049d89:	c7 44 24 04 23 ad 04 	movl   $0x804ad23,0x4(%esp)
 8049d90:	08 
 8049d91:	8d 85 cc 7f ff ff    	lea    -0x8034(%ebp),%eax
 8049d97:	89 04 24             	mov    %eax,(%esp)
 8049d9a:	e8 21 ec ff ff       	call   80489c0 <__isoc99_sscanf@plt>
 8049d9f:	8b 85 bc 5f ff ff    	mov    -0xa044(%ebp),%eax
 8049da5:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049daa:	0f 84 ed 00 00 00    	je     8049e9d <submitr+0x730>
 8049db0:	8d 95 cc df ff ff    	lea    -0x2034(%ebp),%edx
 8049db6:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049dba:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049dbe:	c7 44 24 0c 98 ac 04 	movl   $0x804ac98,0xc(%esp)
 8049dc5:	08 
 8049dc6:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
 8049dcd:	ff 
 8049dce:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049dd5:	00 
 8049dd6:	8b 95 b4 5f ff ff    	mov    -0xa04c(%ebp),%edx
 8049ddc:	89 14 24             	mov    %edx,(%esp)
 8049ddf:	e8 cc ec ff ff       	call   8048ab0 <__sprintf_chk@plt>
 8049de4:	8b 85 b0 5f ff ff    	mov    -0xa050(%ebp),%eax
 8049dea:	89 04 24             	mov    %eax,(%esp)
 8049ded:	e8 9e ec ff ff       	call   8048a90 <close@plt>
 8049df2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049df7:	e9 fe 01 00 00       	jmp    8049ffa <submitr+0x88d>
 8049dfc:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049e01:	8d 95 cc 7f ff ff    	lea    -0x8034(%ebp),%edx
 8049e07:	8d 85 c0 5f ff ff    	lea    -0xa040(%ebp),%eax
 8049e0d:	e8 1e f8 ff ff       	call   8049630 <rio_readlineb>
 8049e12:	85 c0                	test   %eax,%eax
 8049e14:	0f 8f 83 00 00 00    	jg     8049e9d <submitr+0x730>
 8049e1a:	8b 95 b4 5f ff ff    	mov    -0xa04c(%ebp),%edx
 8049e20:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049e26:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049e2d:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049e34:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049e3b:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049e42:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049e49:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 8049e50:	c7 42 1c 20 68 65 61 	movl   $0x61656820,0x1c(%edx)
 8049e57:	c7 42 20 64 65 72 73 	movl   $0x73726564,0x20(%edx)
 8049e5e:	c7 42 24 20 66 72 6f 	movl   $0x6f726620,0x24(%edx)
 8049e65:	c7 42 28 6d 20 41 75 	movl   $0x7541206d,0x28(%edx)
 8049e6c:	c7 42 2c 74 6f 6c 61 	movl   $0x616c6f74,0x2c(%edx)
 8049e73:	c7 42 30 62 20 73 65 	movl   $0x65732062,0x30(%edx)
 8049e7a:	c7 42 34 72 76 65 72 	movl   $0x72657672,0x34(%edx)
 8049e81:	c6 42 38 00          	movb   $0x0,0x38(%edx)
 8049e85:	8b 85 b0 5f ff ff    	mov    -0xa050(%ebp),%eax
 8049e8b:	89 04 24             	mov    %eax,(%esp)
 8049e8e:	e8 fd eb ff ff       	call   8048a90 <close@plt>
 8049e93:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049e98:	e9 5d 01 00 00       	jmp    8049ffa <submitr+0x88d>
 8049e9d:	80 bd cc 7f ff ff 0d 	cmpb   $0xd,-0x8034(%ebp)
 8049ea4:	0f 85 52 ff ff ff    	jne    8049dfc <submitr+0x68f>
 8049eaa:	80 bd cd 7f ff ff 0a 	cmpb   $0xa,-0x8033(%ebp)
 8049eb1:	0f 85 45 ff ff ff    	jne    8049dfc <submitr+0x68f>
 8049eb7:	80 bd ce 7f ff ff 00 	cmpb   $0x0,-0x8032(%ebp)
 8049ebe:	0f 85 38 ff ff ff    	jne    8049dfc <submitr+0x68f>
 8049ec4:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049ec9:	8d 95 cc 7f ff ff    	lea    -0x8034(%ebp),%edx
 8049ecf:	8d 85 c0 5f ff ff    	lea    -0xa040(%ebp),%eax
 8049ed5:	e8 56 f7 ff ff       	call   8049630 <rio_readlineb>
 8049eda:	85 c0                	test   %eax,%eax
 8049edc:	0f 8f 8d 00 00 00    	jg     8049f6f <submitr+0x802>
 8049ee2:	8b 95 b4 5f ff ff    	mov    -0xa04c(%ebp),%edx
 8049ee8:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049eee:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049ef5:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049efc:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049f03:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049f0a:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049f11:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 8049f18:	c7 42 1c 20 73 74 61 	movl   $0x61747320,0x1c(%edx)
 8049f1f:	c7 42 20 74 75 73 20 	movl   $0x20737574,0x20(%edx)
 8049f26:	c7 42 24 6d 65 73 73 	movl   $0x7373656d,0x24(%edx)
 8049f2d:	c7 42 28 61 67 65 20 	movl   $0x20656761,0x28(%edx)
 8049f34:	c7 42 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%edx)
 8049f3b:	c7 42 30 20 41 75 74 	movl   $0x74754120,0x30(%edx)
 8049f42:	c7 42 34 6f 6c 61 62 	movl   $0x62616c6f,0x34(%edx)
 8049f49:	c7 42 38 20 73 65 72 	movl   $0x72657320,0x38(%edx)
 8049f50:	c7 42 3c 76 65 72 00 	movl   $0x726576,0x3c(%edx)
 8049f57:	8b 85 b0 5f ff ff    	mov    -0xa050(%ebp),%eax
 8049f5d:	89 04 24             	mov    %eax,(%esp)
 8049f60:	e8 2b eb ff ff       	call   8048a90 <close@plt>
 8049f65:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049f6a:	e9 8b 00 00 00       	jmp    8049ffa <submitr+0x88d>
 8049f6f:	8d 85 cc 7f ff ff    	lea    -0x8034(%ebp),%eax
 8049f75:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049f79:	8b 95 b4 5f ff ff    	mov    -0xa04c(%ebp),%edx
 8049f7f:	89 14 24             	mov    %edx,(%esp)
 8049f82:	e8 59 e9 ff ff       	call   80488e0 <strcpy@plt>
 8049f87:	8b 85 b0 5f ff ff    	mov    -0xa050(%ebp),%eax
 8049f8d:	89 04 24             	mov    %eax,(%esp)
 8049f90:	e8 fb ea ff ff       	call   8048a90 <close@plt>
 8049f95:	8b 8d b4 5f ff ff    	mov    -0xa04c(%ebp),%ecx
 8049f9b:	0f b6 11             	movzbl (%ecx),%edx
 8049f9e:	83 ea 4f             	sub    $0x4f,%edx
 8049fa1:	75 12                	jne    8049fb5 <submitr+0x848>
 8049fa3:	80 79 01 4b          	cmpb   $0x4b,0x1(%ecx)
 8049fa7:	75 0c                	jne    8049fb5 <submitr+0x848>
 8049fa9:	80 79 02 0a          	cmpb   $0xa,0x2(%ecx)
 8049fad:	75 06                	jne    8049fb5 <submitr+0x848>
 8049faf:	80 79 03 00          	cmpb   $0x0,0x3(%ecx)
 8049fb3:	74 40                	je     8049ff5 <submitr+0x888>
 8049fb5:	bf 34 ad 04 08       	mov    $0x804ad34,%edi
 8049fba:	b9 05 00 00 00       	mov    $0x5,%ecx
 8049fbf:	8b b5 b4 5f ff ff    	mov    -0xa04c(%ebp),%esi
 8049fc5:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
 8049fc7:	0f 97 c3             	seta   %bl
 8049fca:	0f 92 c1             	setb   %cl
 8049fcd:	b8 00 00 00 00       	mov    $0x0,%eax
 8049fd2:	38 cb                	cmp    %cl,%bl
 8049fd4:	74 24                	je     8049ffa <submitr+0x88d>
 8049fd6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049fdb:	85 d2                	test   %edx,%edx
 8049fdd:	75 1b                	jne    8049ffa <submitr+0x88d>
 8049fdf:	8b 95 b4 5f ff ff    	mov    -0xa04c(%ebp),%edx
 8049fe5:	80 7a 01 4b          	cmpb   $0x4b,0x1(%edx)
 8049fe9:	75 0f                	jne    8049ffa <submitr+0x88d>
 8049feb:	80 7a 02 01          	cmpb   $0x1,0x2(%edx)
 8049fef:	19 c0                	sbb    %eax,%eax
 8049ff1:	f7 d0                	not    %eax
 8049ff3:	eb 05                	jmp    8049ffa <submitr+0x88d>
 8049ff5:	b8 00 00 00 00       	mov    $0x0,%eax
 8049ffa:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8049ffd:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 804a004:	0f 84 85 00 00 00    	je     804a08f <submitr+0x922>
 804a00a:	eb 7e                	jmp    804a08a <submitr+0x91d>
 804a00c:	8b 85 ac 5f ff ff    	mov    -0xa054(%ebp),%eax
 804a012:	89 44 24 20          	mov    %eax,0x20(%esp)
 804a016:	8d 85 cc 9f ff ff    	lea    -0x6034(%ebp),%eax
 804a01c:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804a020:	8b 95 a4 5f ff ff    	mov    -0xa05c(%ebp),%edx
 804a026:	89 54 24 18          	mov    %edx,0x18(%esp)
 804a02a:	8b 8d a0 5f ff ff    	mov    -0xa060(%ebp),%ecx
 804a030:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 804a034:	8b 85 a8 5f ff ff    	mov    -0xa058(%ebp),%eax
 804a03a:	89 44 24 10          	mov    %eax,0x10(%esp)
 804a03e:	c7 44 24 0c c8 ac 04 	movl   $0x804acc8,0xc(%esp)
 804a045:	08 
 804a046:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 804a04d:	00 
 804a04e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a055:	00 
 804a056:	8d bd cc 7f ff ff    	lea    -0x8034(%ebp),%edi
 804a05c:	89 3c 24             	mov    %edi,(%esp)
 804a05f:	e8 4c ea ff ff       	call   8048ab0 <__sprintf_chk@plt>
 804a064:	b8 00 00 00 00       	mov    $0x0,%eax
 804a069:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804a06e:	f2 ae                	repnz scas %es:(%edi),%al
 804a070:	f7 d1                	not    %ecx
 804a072:	8d 59 ff             	lea    -0x1(%ecx),%ebx
 804a075:	89 de                	mov    %ebx,%esi
 804a077:	8d bd cc 7f ff ff    	lea    -0x8034(%ebp),%edi
 804a07d:	85 db                	test   %ebx,%ebx
 804a07f:	0f 85 61 fb ff ff    	jne    8049be6 <submitr+0x479>
 804a085:	e9 15 fc ff ff       	jmp    8049c9f <submitr+0x532>
 804a08a:	e8 21 e8 ff ff       	call   80488b0 <__stack_chk_fail@plt>
 804a08f:	81 c4 8c a0 00 00    	add    $0xa08c,%esp
 804a095:	5b                   	pop    %ebx
 804a096:	5e                   	pop    %esi
 804a097:	5f                   	pop    %edi
 804a098:	5d                   	pop    %ebp
 804a099:	c3                   	ret    

0804a09a <init_timeout>:
 804a09a:	55                   	push   %ebp
 804a09b:	89 e5                	mov    %esp,%ebp
 804a09d:	53                   	push   %ebx
 804a09e:	83 ec 14             	sub    $0x14,%esp
 804a0a1:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804a0a4:	85 db                	test   %ebx,%ebx
 804a0a6:	74 26                	je     804a0ce <init_timeout+0x34>
 804a0a8:	c7 44 24 04 36 97 04 	movl   $0x8049736,0x4(%esp)
 804a0af:	08 
 804a0b0:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 804a0b7:	e8 d4 e7 ff ff       	call   8048890 <signal@plt>
 804a0bc:	85 db                	test   %ebx,%ebx
 804a0be:	b8 00 00 00 00       	mov    $0x0,%eax
 804a0c3:	0f 48 d8             	cmovs  %eax,%ebx
 804a0c6:	89 1c 24             	mov    %ebx,(%esp)
 804a0c9:	e8 d2 e7 ff ff       	call   80488a0 <alarm@plt>
 804a0ce:	83 c4 14             	add    $0x14,%esp
 804a0d1:	5b                   	pop    %ebx
 804a0d2:	5d                   	pop    %ebp
 804a0d3:	c3                   	ret    

0804a0d4 <init_driver>:
 804a0d4:	55                   	push   %ebp
 804a0d5:	89 e5                	mov    %esp,%ebp
 804a0d7:	57                   	push   %edi
 804a0d8:	56                   	push   %esi
 804a0d9:	53                   	push   %ebx
 804a0da:	83 ec 3c             	sub    $0x3c,%esp
 804a0dd:	8b 75 08             	mov    0x8(%ebp),%esi
 804a0e0:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804a0e6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a0e9:	31 c0                	xor    %eax,%eax
 804a0eb:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a0f2:	00 
 804a0f3:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
 804a0fa:	e8 91 e7 ff ff       	call   8048890 <signal@plt>
 804a0ff:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a106:	00 
 804a107:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 804a10e:	e8 7d e7 ff ff       	call   8048890 <signal@plt>
 804a113:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a11a:	00 
 804a11b:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 804a122:	e8 69 e7 ff ff       	call   8048890 <signal@plt>
 804a127:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804a12e:	00 
 804a12f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a136:	00 
 804a137:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804a13e:	e8 fd e8 ff ff       	call   8048a40 <socket@plt>
 804a143:	89 c3                	mov    %eax,%ebx
 804a145:	85 c0                	test   %eax,%eax
 804a147:	79 4e                	jns    804a197 <init_driver+0xc3>
 804a149:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 804a14f:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 804a156:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 804a15d:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 804a164:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 804a16b:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 804a172:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
 804a179:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
 804a180:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
 804a187:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
 804a18d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a192:	e9 44 01 00 00       	jmp    804a2db <init_driver+0x207>
 804a197:	c7 04 24 39 ad 04 08 	movl   $0x804ad39,(%esp)
 804a19e:	e8 cd e8 ff ff       	call   8048a70 <gethostbyname@plt>
 804a1a3:	85 c0                	test   %eax,%eax
 804a1a5:	75 68                	jne    804a20f <init_driver+0x13b>
 804a1a7:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 804a1ad:	c7 46 04 72 3a 20 44 	movl   $0x44203a72,0x4(%esi)
 804a1b4:	c7 46 08 4e 53 20 69 	movl   $0x6920534e,0x8(%esi)
 804a1bb:	c7 46 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%esi)
 804a1c2:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 804a1c9:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 804a1d0:	c7 46 18 72 65 73 6f 	movl   $0x6f736572,0x18(%esi)
 804a1d7:	c7 46 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%esi)
 804a1de:	c7 46 20 73 65 72 76 	movl   $0x76726573,0x20(%esi)
 804a1e5:	c7 46 24 65 72 20 61 	movl   $0x61207265,0x24(%esi)
 804a1ec:	c7 46 28 64 64 72 65 	movl   $0x65726464,0x28(%esi)
 804a1f3:	66 c7 46 2c 73 73    	movw   $0x7373,0x2c(%esi)
 804a1f9:	c6 46 2e 00          	movb   $0x0,0x2e(%esi)
 804a1fd:	89 1c 24             	mov    %ebx,(%esp)
 804a200:	e8 8b e8 ff ff       	call   8048a90 <close@plt>
 804a205:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a20a:	e9 cc 00 00 00       	jmp    804a2db <init_driver+0x207>
 804a20f:	8d 7d d4             	lea    -0x2c(%ebp),%edi
 804a212:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804a219:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 804a220:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 804a227:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804a22e:	66 c7 45 d4 02 00    	movw   $0x2,-0x2c(%ebp)
 804a234:	c7 44 24 0c 0c 00 00 	movl   $0xc,0xc(%esp)
 804a23b:	00 
 804a23c:	8b 50 0c             	mov    0xc(%eax),%edx
 804a23f:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a243:	8b 40 10             	mov    0x10(%eax),%eax
 804a246:	8b 00                	mov    (%eax),%eax
 804a248:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a24c:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804a24f:	89 04 24             	mov    %eax,(%esp)
 804a252:	e8 c9 e6 ff ff       	call   8048920 <__memmove_chk@plt>
 804a257:	66 c7 45 d6 00 50    	movw   $0x5000,-0x2a(%ebp)
 804a25d:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 804a264:	00 
 804a265:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804a269:	89 1c 24             	mov    %ebx,(%esp)
 804a26c:	e8 0f e8 ff ff       	call   8048a80 <connect@plt>
 804a271:	85 c0                	test   %eax,%eax
 804a273:	79 50                	jns    804a2c5 <init_driver+0x1f1>
 804a275:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 804a27b:	c7 46 04 72 3a 20 55 	movl   $0x55203a72,0x4(%esi)
 804a282:	c7 46 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%esi)
 804a289:	c7 46 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%esi)
 804a290:	c7 46 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%esi)
 804a297:	c7 46 14 6e 65 63 74 	movl   $0x7463656e,0x14(%esi)
 804a29e:	c7 46 18 20 74 6f 20 	movl   $0x206f7420,0x18(%esi)
 804a2a5:	c7 46 1c 73 65 72 76 	movl   $0x76726573,0x1c(%esi)
 804a2ac:	66 c7 46 20 65 72    	movw   $0x7265,0x20(%esi)
 804a2b2:	c6 46 22 00          	movb   $0x0,0x22(%esi)
 804a2b6:	89 1c 24             	mov    %ebx,(%esp)
 804a2b9:	e8 d2 e7 ff ff       	call   8048a90 <close@plt>
 804a2be:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a2c3:	eb 16                	jmp    804a2db <init_driver+0x207>
 804a2c5:	89 1c 24             	mov    %ebx,(%esp)
 804a2c8:	e8 c3 e7 ff ff       	call   8048a90 <close@plt>
 804a2cd:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
 804a2d2:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 804a2d6:	b8 00 00 00 00       	mov    $0x0,%eax
 804a2db:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804a2de:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 804a2e5:	74 05                	je     804a2ec <init_driver+0x218>
 804a2e7:	e8 c4 e5 ff ff       	call   80488b0 <__stack_chk_fail@plt>
 804a2ec:	83 c4 3c             	add    $0x3c,%esp
 804a2ef:	5b                   	pop    %ebx
 804a2f0:	5e                   	pop    %esi
 804a2f1:	5f                   	pop    %edi
 804a2f2:	5d                   	pop    %ebp
 804a2f3:	c3                   	ret    

0804a2f4 <driver_post>:
 804a2f4:	55                   	push   %ebp
 804a2f5:	89 e5                	mov    %esp,%ebp
 804a2f7:	53                   	push   %ebx
 804a2f8:	83 ec 24             	sub    $0x24,%esp
 804a2fb:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2fe:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a301:	8b 5d 14             	mov    0x14(%ebp),%ebx
 804a304:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804a308:	74 28                	je     804a332 <driver_post+0x3e>
 804a30a:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a30e:	c7 44 24 04 4c ad 04 	movl   $0x804ad4c,0x4(%esp)
 804a315:	08 
 804a316:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804a31d:	e8 fe e6 ff ff       	call   8048a20 <__printf_chk@plt>
 804a322:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 804a327:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 804a32b:	b8 00 00 00 00       	mov    $0x0,%eax
 804a330:	eb 49                	jmp    804a37b <driver_post+0x87>
 804a332:	85 c0                	test   %eax,%eax
 804a334:	74 37                	je     804a36d <driver_post+0x79>
 804a336:	80 38 00             	cmpb   $0x0,(%eax)
 804a339:	74 32                	je     804a36d <driver_post+0x79>
 804a33b:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 804a33f:	89 54 24 14          	mov    %edx,0x14(%esp)
 804a343:	c7 44 24 10 63 ad 04 	movl   $0x804ad63,0x10(%esp)
 804a34a:	08 
 804a34b:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804a34f:	c7 44 24 08 6a ad 04 	movl   $0x804ad6a,0x8(%esp)
 804a356:	08 
 804a357:	c7 44 24 04 50 00 00 	movl   $0x50,0x4(%esp)
 804a35e:	00 
 804a35f:	c7 04 24 39 ad 04 08 	movl   $0x804ad39,(%esp)
 804a366:	e8 02 f4 ff ff       	call   804976d <submitr>
 804a36b:	eb 0e                	jmp    804a37b <driver_post+0x87>
 804a36d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 804a372:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 804a376:	b8 00 00 00 00       	mov    $0x0,%eax
 804a37b:	83 c4 24             	add    $0x24,%esp
 804a37e:	5b                   	pop    %ebx
 804a37f:	5d                   	pop    %ebp
 804a380:	c3                   	ret    
 804a381:	90                   	nop
 804a382:	90                   	nop
 804a383:	90                   	nop

0804a384 <hash>:
 804a384:	55                   	push   %ebp
 804a385:	89 e5                	mov    %esp,%ebp
 804a387:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804a38a:	0f b6 11             	movzbl (%ecx),%edx
 804a38d:	b8 00 00 00 00       	mov    $0x0,%eax
 804a392:	84 d2                	test   %dl,%dl
 804a394:	74 12                	je     804a3a8 <hash+0x24>
 804a396:	6b c0 67             	imul   $0x67,%eax,%eax
 804a399:	0f be d2             	movsbl %dl,%edx
 804a39c:	01 d0                	add    %edx,%eax
 804a39e:	83 c1 01             	add    $0x1,%ecx
 804a3a1:	0f b6 11             	movzbl (%ecx),%edx
 804a3a4:	84 d2                	test   %dl,%dl
 804a3a6:	75 ee                	jne    804a396 <hash+0x12>
 804a3a8:	5d                   	pop    %ebp
 804a3a9:	c3                   	ret    

0804a3aa <check>:
 804a3aa:	55                   	push   %ebp
 804a3ab:	89 e5                	mov    %esp,%ebp
 804a3ad:	8b 55 08             	mov    0x8(%ebp),%edx
 804a3b0:	89 d1                	mov    %edx,%ecx
 804a3b2:	c1 e9 1c             	shr    $0x1c,%ecx
 804a3b5:	b8 00 00 00 00       	mov    $0x0,%eax
 804a3ba:	85 c9                	test   %ecx,%ecx
 804a3bc:	74 23                	je     804a3e1 <check+0x37>
 804a3be:	80 fa 0a             	cmp    $0xa,%dl
 804a3c1:	74 1e                	je     804a3e1 <check+0x37>
 804a3c3:	0f b6 ce             	movzbl %dh,%ecx
 804a3c6:	83 f9 0a             	cmp    $0xa,%ecx
 804a3c9:	74 16                	je     804a3e1 <check+0x37>
 804a3cb:	89 d1                	mov    %edx,%ecx
 804a3cd:	c1 e9 10             	shr    $0x10,%ecx
 804a3d0:	80 f9 0a             	cmp    $0xa,%cl
 804a3d3:	74 0c                	je     804a3e1 <check+0x37>
 804a3d5:	c1 ea 18             	shr    $0x18,%edx
 804a3d8:	83 fa 0a             	cmp    $0xa,%edx
 804a3db:	0f 95 c0             	setne  %al
 804a3de:	0f b6 c0             	movzbl %al,%eax
 804a3e1:	5d                   	pop    %ebp
 804a3e2:	c3                   	ret    

0804a3e3 <gencookie>:
 804a3e3:	55                   	push   %ebp
 804a3e4:	89 e5                	mov    %esp,%ebp
 804a3e6:	53                   	push   %ebx
 804a3e7:	83 ec 14             	sub    $0x14,%esp
 804a3ea:	8b 45 08             	mov    0x8(%ebp),%eax
 804a3ed:	89 04 24             	mov    %eax,(%esp)
 804a3f0:	e8 8f ff ff ff       	call   804a384 <hash>
 804a3f5:	89 04 24             	mov    %eax,(%esp)
 804a3f8:	e8 63 e5 ff ff       	call   8048960 <srand@plt>
 804a3fd:	e8 0e e6 ff ff       	call   8048a10 <rand@plt>
 804a402:	89 c3                	mov    %eax,%ebx
 804a404:	89 04 24             	mov    %eax,(%esp)
 804a407:	e8 9e ff ff ff       	call   804a3aa <check>
 804a40c:	85 c0                	test   %eax,%eax
 804a40e:	74 ed                	je     804a3fd <gencookie+0x1a>
 804a410:	89 d8                	mov    %ebx,%eax
 804a412:	83 c4 14             	add    $0x14,%esp
 804a415:	5b                   	pop    %ebx
 804a416:	5d                   	pop    %ebp
 804a417:	c3                   	ret    
 804a418:	90                   	nop
 804a419:	90                   	nop
 804a41a:	90                   	nop
 804a41b:	90                   	nop
 804a41c:	90                   	nop
 804a41d:	90                   	nop
 804a41e:	90                   	nop
 804a41f:	90                   	nop

0804a420 <__libc_csu_init>:
 804a420:	55                   	push   %ebp
 804a421:	57                   	push   %edi
 804a422:	56                   	push   %esi
 804a423:	53                   	push   %ebx
 804a424:	e8 69 00 00 00       	call   804a492 <__i686.get_pc_thunk.bx>
 804a429:	81 c3 cb 2b 00 00    	add    $0x2bcb,%ebx
 804a42f:	83 ec 1c             	sub    $0x1c,%esp
 804a432:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 804a436:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 804a43c:	e8 e3 e3 ff ff       	call   8048824 <_init>
 804a441:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 804a447:	29 c7                	sub    %eax,%edi
 804a449:	c1 ff 02             	sar    $0x2,%edi
 804a44c:	85 ff                	test   %edi,%edi
 804a44e:	74 29                	je     804a479 <__libc_csu_init+0x59>
 804a450:	31 f6                	xor    %esi,%esi
 804a452:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a458:	8b 44 24 38          	mov    0x38(%esp),%eax
 804a45c:	89 2c 24             	mov    %ebp,(%esp)
 804a45f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a463:	8b 44 24 34          	mov    0x34(%esp),%eax
 804a467:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a46b:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 804a472:	83 c6 01             	add    $0x1,%esi
 804a475:	39 fe                	cmp    %edi,%esi
 804a477:	75 df                	jne    804a458 <__libc_csu_init+0x38>
 804a479:	83 c4 1c             	add    $0x1c,%esp
 804a47c:	5b                   	pop    %ebx
 804a47d:	5e                   	pop    %esi
 804a47e:	5f                   	pop    %edi
 804a47f:	5d                   	pop    %ebp
 804a480:	c3                   	ret    
 804a481:	eb 0d                	jmp    804a490 <__libc_csu_fini>
 804a483:	90                   	nop
 804a484:	90                   	nop
 804a485:	90                   	nop
 804a486:	90                   	nop
 804a487:	90                   	nop
 804a488:	90                   	nop
 804a489:	90                   	nop
 804a48a:	90                   	nop
 804a48b:	90                   	nop
 804a48c:	90                   	nop
 804a48d:	90                   	nop
 804a48e:	90                   	nop
 804a48f:	90                   	nop

0804a490 <__libc_csu_fini>:
 804a490:	f3 c3                	repz ret 

0804a492 <__i686.get_pc_thunk.bx>:
 804a492:	8b 1c 24             	mov    (%esp),%ebx
 804a495:	c3                   	ret    
 804a496:	90                   	nop
 804a497:	90                   	nop
 804a498:	90                   	nop
 804a499:	90                   	nop
 804a49a:	90                   	nop
 804a49b:	90                   	nop
 804a49c:	90                   	nop
 804a49d:	90                   	nop
 804a49e:	90                   	nop
 804a49f:	90                   	nop

0804a4a0 <__do_global_ctors_aux>:
 804a4a0:	55                   	push   %ebp
 804a4a1:	89 e5                	mov    %esp,%ebp
 804a4a3:	53                   	push   %ebx
 804a4a4:	83 ec 04             	sub    $0x4,%esp
 804a4a7:	a1 14 cf 04 08       	mov    0x804cf14,%eax
 804a4ac:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a4af:	74 13                	je     804a4c4 <__do_global_ctors_aux+0x24>
 804a4b1:	bb 14 cf 04 08       	mov    $0x804cf14,%ebx
 804a4b6:	66 90                	xchg   %ax,%ax
 804a4b8:	83 eb 04             	sub    $0x4,%ebx
 804a4bb:	ff d0                	call   *%eax
 804a4bd:	8b 03                	mov    (%ebx),%eax
 804a4bf:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a4c2:	75 f4                	jne    804a4b8 <__do_global_ctors_aux+0x18>
 804a4c4:	83 c4 04             	add    $0x4,%esp
 804a4c7:	5b                   	pop    %ebx
 804a4c8:	5d                   	pop    %ebp
 804a4c9:	c3                   	ret    
 804a4ca:	90                   	nop
 804a4cb:	90                   	nop

Disassembly of section .fini:

0804a4cc <_fini>:
 804a4cc:	53                   	push   %ebx
 804a4cd:	83 ec 08             	sub    $0x8,%esp
 804a4d0:	e8 00 00 00 00       	call   804a4d5 <_fini+0x9>
 804a4d5:	5b                   	pop    %ebx
 804a4d6:	81 c3 1f 2b 00 00    	add    $0x2b1f,%ebx
 804a4dc:	e8 0f e6 ff ff       	call   8048af0 <__do_global_dtors_aux>
 804a4e1:	83 c4 08             	add    $0x8,%esp
 804a4e4:	5b                   	pop    %ebx
 804a4e5:	c3                   	ret    
