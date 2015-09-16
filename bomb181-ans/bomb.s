
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b38 <_init>:
  400b38:	48 83 ec 08          	sub    $0x8,%rsp
  400b3c:	e8 1b 02 00 00       	callq  400d5c <call_gmon_start>
  400b41:	e8 aa 02 00 00       	callq  400df0 <frame_dummy>
  400b46:	e8 d5 1a 00 00       	callq  402620 <__do_global_ctors_aux>
  400b4b:	48 83 c4 08          	add    $0x8,%rsp
  400b4f:	c3                   	retq   

Disassembly of section .plt:

0000000000400b50 <getenv@plt-0x10>:
  400b50:	ff 35 9a 34 20 00    	pushq  0x20349a(%rip)        # 603ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b56:	ff 25 9c 34 20 00    	jmpq   *0x20349c(%rip)        # 603ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b60 <getenv@plt>:
  400b60:	ff 25 9a 34 20 00    	jmpq   *0x20349a(%rip)        # 604000 <_GLOBAL_OFFSET_TABLE_+0x18>
  400b66:	68 00 00 00 00       	pushq  $0x0
  400b6b:	e9 e0 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400b70 <strcasecmp@plt>:
  400b70:	ff 25 92 34 20 00    	jmpq   *0x203492(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x20>
  400b76:	68 01 00 00 00       	pushq  $0x1
  400b7b:	e9 d0 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400b80 <__errno_location@plt>:
  400b80:	ff 25 8a 34 20 00    	jmpq   *0x20348a(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x28>
  400b86:	68 02 00 00 00       	pushq  $0x2
  400b8b:	e9 c0 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400b90 <strcpy@plt>:
  400b90:	ff 25 82 34 20 00    	jmpq   *0x203482(%rip)        # 604018 <_GLOBAL_OFFSET_TABLE_+0x30>
  400b96:	68 03 00 00 00       	pushq  $0x3
  400b9b:	e9 b0 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400ba0 <puts@plt>:
  400ba0:	ff 25 7a 34 20 00    	jmpq   *0x20347a(%rip)        # 604020 <_GLOBAL_OFFSET_TABLE_+0x38>
  400ba6:	68 04 00 00 00       	pushq  $0x4
  400bab:	e9 a0 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400bb0 <write@plt>:
  400bb0:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 604028 <_GLOBAL_OFFSET_TABLE_+0x40>
  400bb6:	68 05 00 00 00       	pushq  $0x5
  400bbb:	e9 90 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400bc0 <__stack_chk_fail@plt>:
  400bc0:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 604030 <_GLOBAL_OFFSET_TABLE_+0x48>
  400bc6:	68 06 00 00 00       	pushq  $0x6
  400bcb:	e9 80 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400bd0 <alarm@plt>:
  400bd0:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 604038 <_GLOBAL_OFFSET_TABLE_+0x50>
  400bd6:	68 07 00 00 00       	pushq  $0x7
  400bdb:	e9 70 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400be0 <close@plt>:
  400be0:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 604040 <_GLOBAL_OFFSET_TABLE_+0x58>
  400be6:	68 08 00 00 00       	pushq  $0x8
  400beb:	e9 60 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400bf0 <read@plt>:
  400bf0:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 604048 <_GLOBAL_OFFSET_TABLE_+0x60>
  400bf6:	68 09 00 00 00       	pushq  $0x9
  400bfb:	e9 50 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c00 <__libc_start_main@plt>:
  400c00:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 604050 <_GLOBAL_OFFSET_TABLE_+0x68>
  400c06:	68 0a 00 00 00       	pushq  $0xa
  400c0b:	e9 40 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c10 <fgets@plt>:
  400c10:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 604058 <_GLOBAL_OFFSET_TABLE_+0x70>
  400c16:	68 0b 00 00 00       	pushq  $0xb
  400c1b:	e9 30 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c20 <signal@plt>:
  400c20:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 604060 <_GLOBAL_OFFSET_TABLE_+0x78>
  400c26:	68 0c 00 00 00       	pushq  $0xc
  400c2b:	e9 20 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c30 <gethostbyname@plt>:
  400c30:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 604068 <_GLOBAL_OFFSET_TABLE_+0x80>
  400c36:	68 0d 00 00 00       	pushq  $0xd
  400c3b:	e9 10 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c40 <__memmove_chk@plt>:
  400c40:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 604070 <_GLOBAL_OFFSET_TABLE_+0x88>
  400c46:	68 0e 00 00 00       	pushq  $0xe
  400c4b:	e9 00 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c50 <__memcpy_chk@plt>:
  400c50:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 604078 <_GLOBAL_OFFSET_TABLE_+0x90>
  400c56:	68 0f 00 00 00       	pushq  $0xf
  400c5b:	e9 f0 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c60 <strtol@plt>:
  400c60:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 604080 <_GLOBAL_OFFSET_TABLE_+0x98>
  400c66:	68 10 00 00 00       	pushq  $0x10
  400c6b:	e9 e0 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c70 <fflush@plt>:
  400c70:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604088 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400c76:	68 11 00 00 00       	pushq  $0x11
  400c7b:	e9 d0 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c80 <__isoc99_sscanf@plt>:
  400c80:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 604090 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400c86:	68 12 00 00 00       	pushq  $0x12
  400c8b:	e9 c0 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c90 <__printf_chk@plt>:
  400c90:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 604098 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400c96:	68 13 00 00 00       	pushq  $0x13
  400c9b:	e9 b0 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400ca0 <fopen@plt>:
  400ca0:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400ca6:	68 14 00 00 00       	pushq  $0x14
  400cab:	e9 a0 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400cb0 <gethostname@plt>:
  400cb0:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400cb6:	68 15 00 00 00       	pushq  $0x15
  400cbb:	e9 90 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400cc0 <exit@plt>:
  400cc0:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400cc6:	68 16 00 00 00       	pushq  $0x16
  400ccb:	e9 80 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400cd0 <connect@plt>:
  400cd0:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400cd6:	68 17 00 00 00       	pushq  $0x17
  400cdb:	e9 70 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400ce0 <__fprintf_chk@plt>:
  400ce0:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400ce6:	68 18 00 00 00       	pushq  $0x18
  400ceb:	e9 60 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400cf0 <sleep@plt>:
  400cf0:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400cf6:	68 19 00 00 00       	pushq  $0x19
  400cfb:	e9 50 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400d00 <__ctype_b_loc@plt>:
  400d00:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 6040d0 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400d06:	68 1a 00 00 00       	pushq  $0x1a
  400d0b:	e9 40 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400d10 <__sprintf_chk@plt>:
  400d10:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 6040d8 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400d16:	68 1b 00 00 00       	pushq  $0x1b
  400d1b:	e9 30 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400d20 <socket@plt>:
  400d20:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 6040e0 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400d26:	68 1c 00 00 00       	pushq  $0x1c
  400d2b:	e9 20 fe ff ff       	jmpq   400b50 <_init+0x18>

Disassembly of section .text:

0000000000400d30 <_start>:
  400d30:	31 ed                	xor    %ebp,%ebp
  400d32:	49 89 d1             	mov    %rdx,%r9
  400d35:	5e                   	pop    %rsi
  400d36:	48 89 e2             	mov    %rsp,%rdx
  400d39:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d3d:	50                   	push   %rax
  400d3e:	54                   	push   %rsp
  400d3f:	49 c7 c0 10 26 40 00 	mov    $0x402610,%r8
  400d46:	48 c7 c1 80 25 40 00 	mov    $0x402580,%rcx
  400d4d:	48 c7 c7 14 0e 40 00 	mov    $0x400e14,%rdi
  400d54:	e8 a7 fe ff ff       	callq  400c00 <__libc_start_main@plt>
  400d59:	f4                   	hlt    
  400d5a:	90                   	nop
  400d5b:	90                   	nop

0000000000400d5c <call_gmon_start>:
  400d5c:	48 83 ec 08          	sub    $0x8,%rsp
  400d60:	48 8b 05 79 32 20 00 	mov    0x203279(%rip),%rax        # 603fe0 <_DYNAMIC+0x190>
  400d67:	48 85 c0             	test   %rax,%rax
  400d6a:	74 02                	je     400d6e <call_gmon_start+0x12>
  400d6c:	ff d0                	callq  *%rax
  400d6e:	48 83 c4 08          	add    $0x8,%rsp
  400d72:	c3                   	retq   
  400d73:	90                   	nop
  400d74:	90                   	nop
  400d75:	90                   	nop
  400d76:	90                   	nop
  400d77:	90                   	nop
  400d78:	90                   	nop
  400d79:	90                   	nop
  400d7a:	90                   	nop
  400d7b:	90                   	nop
  400d7c:	90                   	nop
  400d7d:	90                   	nop
  400d7e:	90                   	nop
  400d7f:	90                   	nop

0000000000400d80 <__do_global_dtors_aux>:
  400d80:	55                   	push   %rbp
  400d81:	48 89 e5             	mov    %rsp,%rbp
  400d84:	53                   	push   %rbx
  400d85:	48 83 ec 08          	sub    $0x8,%rsp
  400d89:	80 3d 88 48 20 00 00 	cmpb   $0x0,0x204888(%rip)        # 605618 <completed.6531>
  400d90:	75 4b                	jne    400ddd <__do_global_dtors_aux+0x5d>
  400d92:	bb 40 3e 60 00       	mov    $0x603e40,%ebx
  400d97:	48 8b 05 82 48 20 00 	mov    0x204882(%rip),%rax        # 605620 <dtor_idx.6533>
  400d9e:	48 81 eb 38 3e 60 00 	sub    $0x603e38,%rbx
  400da5:	48 c1 fb 03          	sar    $0x3,%rbx
  400da9:	48 83 eb 01          	sub    $0x1,%rbx
  400dad:	48 39 d8             	cmp    %rbx,%rax
  400db0:	73 24                	jae    400dd6 <__do_global_dtors_aux+0x56>
  400db2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400db8:	48 83 c0 01          	add    $0x1,%rax
  400dbc:	48 89 05 5d 48 20 00 	mov    %rax,0x20485d(%rip)        # 605620 <dtor_idx.6533>
  400dc3:	ff 14 c5 38 3e 60 00 	callq  *0x603e38(,%rax,8)
  400dca:	48 8b 05 4f 48 20 00 	mov    0x20484f(%rip),%rax        # 605620 <dtor_idx.6533>
  400dd1:	48 39 d8             	cmp    %rbx,%rax
  400dd4:	72 e2                	jb     400db8 <__do_global_dtors_aux+0x38>
  400dd6:	c6 05 3b 48 20 00 01 	movb   $0x1,0x20483b(%rip)        # 605618 <completed.6531>
  400ddd:	48 83 c4 08          	add    $0x8,%rsp
  400de1:	5b                   	pop    %rbx
  400de2:	5d                   	pop    %rbp
  400de3:	c3                   	retq   
  400de4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400deb:	00 00 00 00 00 

0000000000400df0 <frame_dummy>:
  400df0:	48 83 3d 50 30 20 00 	cmpq   $0x0,0x203050(%rip)        # 603e48 <__JCR_END__>
  400df7:	00 
  400df8:	55                   	push   %rbp
  400df9:	48 89 e5             	mov    %rsp,%rbp
  400dfc:	74 12                	je     400e10 <frame_dummy+0x20>
  400dfe:	b8 00 00 00 00       	mov    $0x0,%eax
  400e03:	48 85 c0             	test   %rax,%rax
  400e06:	74 08                	je     400e10 <frame_dummy+0x20>
  400e08:	5d                   	pop    %rbp
  400e09:	bf 48 3e 60 00       	mov    $0x603e48,%edi
  400e0e:	ff e0                	jmpq   *%rax
  400e10:	5d                   	pop    %rbp
  400e11:	c3                   	retq   
  400e12:	90                   	nop
  400e13:	90                   	nop

0000000000400e14 <main>:
  400e14:	53                   	push   %rbx
  400e15:	48 89 f3             	mov    %rsi,%rbx
  400e18:	83 ff 01             	cmp    $0x1,%edi
  400e1b:	75 10                	jne    400e2d <main+0x19>
  400e1d:	48 8b 05 e4 47 20 00 	mov    0x2047e4(%rip),%rax        # 605608 <stdin@@GLIBC_2.2.5>
  400e24:	48 89 05 05 48 20 00 	mov    %rax,0x204805(%rip)        # 605630 <infile>
  400e2b:	eb 60                	jmp    400e8d <main+0x79>
  400e2d:	83 ff 02             	cmp    $0x2,%edi
  400e30:	75 3a                	jne    400e6c <main+0x58>
  400e32:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400e36:	be 84 26 40 00       	mov    $0x402684,%esi
  400e3b:	e8 60 fe ff ff       	callq  400ca0 <fopen@plt>
  400e40:	48 89 05 e9 47 20 00 	mov    %rax,0x2047e9(%rip)        # 605630 <infile>
  400e47:	48 85 c0             	test   %rax,%rax
  400e4a:	75 41                	jne    400e8d <main+0x79>
  400e4c:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400e50:	48 8b 13             	mov    (%rbx),%rdx
  400e53:	be 86 26 40 00       	mov    $0x402686,%esi
  400e58:	bf 01 00 00 00       	mov    $0x1,%edi
  400e5d:	e8 2e fe ff ff       	callq  400c90 <__printf_chk@plt>
  400e62:	bf 08 00 00 00       	mov    $0x8,%edi
  400e67:	e8 54 fe ff ff       	callq  400cc0 <exit@plt>
  400e6c:	48 8b 16             	mov    (%rsi),%rdx
  400e6f:	be a3 26 40 00       	mov    $0x4026a3,%esi
  400e74:	bf 01 00 00 00       	mov    $0x1,%edi
  400e79:	b8 00 00 00 00       	mov    $0x0,%eax
  400e7e:	e8 0d fe ff ff       	callq  400c90 <__printf_chk@plt>
  400e83:	bf 08 00 00 00       	mov    $0x8,%edi
  400e88:	e8 33 fe ff ff       	callq  400cc0 <exit@plt>
  400e8d:	e8 13 05 00 00       	callq  4013a5 <initialize_bomb>
  400e92:	bf 08 27 40 00       	mov    $0x402708,%edi
  400e97:	e8 04 fd ff ff       	callq  400ba0 <puts@plt>
  400e9c:	bf 48 27 40 00       	mov    $0x402748,%edi
  400ea1:	e8 fa fc ff ff       	callq  400ba0 <puts@plt>
  400ea6:	e8 b4 07 00 00       	callq  40165f <read_line>
  400eab:	48 89 c7             	mov    %rax,%rdi
  400eae:	e8 9d 00 00 00       	callq  400f50 <phase_1>
  400eb3:	e8 14 09 00 00       	callq  4017cc <phase_defused>
  400eb8:	bf 78 27 40 00       	mov    $0x402778,%edi
  400ebd:	e8 de fc ff ff       	callq  400ba0 <puts@plt>
  400ec2:	e8 98 07 00 00       	callq  40165f <read_line>
  400ec7:	48 89 c7             	mov    %rax,%rdi
  400eca:	e8 9d 00 00 00       	callq  400f6c <phase_2>
  400ecf:	e8 f8 08 00 00       	callq  4017cc <phase_defused>
  400ed4:	bf bd 26 40 00       	mov    $0x4026bd,%edi
  400ed9:	e8 c2 fc ff ff       	callq  400ba0 <puts@plt>
  400ede:	e8 7c 07 00 00       	callq  40165f <read_line>
  400ee3:	48 89 c7             	mov    %rax,%rdi
  400ee6:	e8 c5 00 00 00       	callq  400fb0 <phase_3>
  400eeb:	e8 dc 08 00 00       	callq  4017cc <phase_defused>
  400ef0:	bf db 26 40 00       	mov    $0x4026db,%edi
  400ef5:	e8 a6 fc ff ff       	callq  400ba0 <puts@plt>
  400efa:	e8 60 07 00 00       	callq  40165f <read_line>
  400eff:	48 89 c7             	mov    %rax,%rdi
  400f02:	e8 67 01 00 00       	callq  40106e <phase_4>
  400f07:	e8 c0 08 00 00       	callq  4017cc <phase_defused>
  400f0c:	bf a8 27 40 00       	mov    $0x4027a8,%edi
  400f11:	e8 8a fc ff ff       	callq  400ba0 <puts@plt>
  400f16:	e8 44 07 00 00       	callq  40165f <read_line>
  400f1b:	48 89 c7             	mov    %rax,%rdi
  400f1e:	e8 a8 01 00 00       	callq  4010cb <phase_5>
  400f23:	e8 a4 08 00 00       	callq  4017cc <phase_defused>
  400f28:	bf ea 26 40 00       	mov    $0x4026ea,%edi
  400f2d:	e8 6e fc ff ff       	callq  400ba0 <puts@plt>
  400f32:	e8 28 07 00 00       	callq  40165f <read_line>
  400f37:	48 89 c7             	mov    %rax,%rdi
  400f3a:	e8 cd 01 00 00       	callq  40110c <phase_6>
  400f3f:	e8 88 08 00 00       	callq  4017cc <phase_defused>
  400f44:	b8 00 00 00 00       	mov    $0x0,%eax
  400f49:	5b                   	pop    %rbx
  400f4a:	c3                   	retq   
  400f4b:	90                   	nop
  400f4c:	90                   	nop
  400f4d:	90                   	nop
  400f4e:	90                   	nop
  400f4f:	90                   	nop

0000000000400f50 <phase_1>:
  400f50:	48 83 ec 08          	sub    $0x8,%rsp
  400f54:	be d0 27 40 00       	mov    $0x4027d0,%esi
  400f59:	e8 c9 03 00 00       	callq  401327 <strings_not_equal>
  400f5e:	85 c0                	test   %eax,%eax
  400f60:	74 05                	je     400f67 <phase_1+0x17>
  400f62:	e8 c2 06 00 00       	callq  401629 <explode_bomb>
  400f67:	48 83 c4 08          	add    $0x8,%rsp
  400f6b:	c3                   	retq   

0000000000400f6c <phase_2>:
  400f6c:	55                   	push   %rbp
  400f6d:	53                   	push   %rbx
  400f6e:	48 83 ec 28          	sub    $0x28,%rsp
  400f72:	48 89 e6             	mov    %rsp,%rsi
  400f75:	e8 10 08 00 00       	callq  40178a <read_six_numbers>
  400f7a:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  400f7e:	79 05                	jns    400f85 <phase_2+0x19>
  400f80:	e8 a4 06 00 00       	callq  401629 <explode_bomb>
  400f85:	48 8d 5c 24 04       	lea    0x4(%rsp),%rbx
  400f8a:	bd 01 00 00 00       	mov    $0x1,%ebp
  400f8f:	89 e8                	mov    %ebp,%eax
  400f91:	03 43 fc             	add    -0x4(%rbx),%eax
  400f94:	39 03                	cmp    %eax,(%rbx)
  400f96:	74 05                	je     400f9d <phase_2+0x31>
  400f98:	e8 8c 06 00 00       	callq  401629 <explode_bomb>
  400f9d:	83 c5 01             	add    $0x1,%ebp
  400fa0:	48 83 c3 04          	add    $0x4,%rbx
  400fa4:	83 fd 06             	cmp    $0x6,%ebp
  400fa7:	75 e6                	jne    400f8f <phase_2+0x23>
  400fa9:	48 83 c4 28          	add    $0x28,%rsp
  400fad:	5b                   	pop    %rbx
  400fae:	5d                   	pop    %rbp
  400faf:	c3                   	retq   

0000000000400fb0 <phase_3>:
  400fb0:	48 83 ec 18          	sub    $0x18,%rsp
  400fb4:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  400fb9:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  400fbe:	be 5a 2b 40 00       	mov    $0x402b5a,%esi
  400fc3:	b8 00 00 00 00       	mov    $0x0,%eax
  400fc8:	e8 b3 fc ff ff       	callq  400c80 <__isoc99_sscanf@plt>
  400fcd:	83 f8 01             	cmp    $0x1,%eax
  400fd0:	7f 05                	jg     400fd7 <phase_3+0x27>
  400fd2:	e8 52 06 00 00       	callq  401629 <explode_bomb>
  400fd7:	83 7c 24 08 07       	cmpl   $0x7,0x8(%rsp)
  400fdc:	77 3c                	ja     40101a <phase_3+0x6a>
  400fde:	8b 44 24 08          	mov    0x8(%rsp),%eax
  400fe2:	ff 24 c5 20 28 40 00 	jmpq   *0x402820(,%rax,8)
  400fe9:	b8 ad 02 00 00       	mov    $0x2ad,%eax
  400fee:	eb 3b                	jmp    40102b <phase_3+0x7b>
  400ff0:	b8 ed 01 00 00       	mov    $0x1ed,%eax
  400ff5:	eb 34                	jmp    40102b <phase_3+0x7b>
  400ff7:	b8 35 02 00 00       	mov    $0x235,%eax
  400ffc:	eb 2d                	jmp    40102b <phase_3+0x7b>
  400ffe:	b8 3d 01 00 00       	mov    $0x13d,%eax
  401003:	eb 26                	jmp    40102b <phase_3+0x7b>
  401005:	b8 aa 03 00 00       	mov    $0x3aa,%eax
  40100a:	eb 1f                	jmp    40102b <phase_3+0x7b>
  40100c:	b8 2d 02 00 00       	mov    $0x22d,%eax
  401011:	eb 18                	jmp    40102b <phase_3+0x7b>
  401013:	b8 e2 03 00 00       	mov    $0x3e2,%eax
  401018:	eb 11                	jmp    40102b <phase_3+0x7b>
  40101a:	e8 0a 06 00 00       	callq  401629 <explode_bomb>
  40101f:	b8 00 00 00 00       	mov    $0x0,%eax
  401024:	eb 05                	jmp    40102b <phase_3+0x7b>
  401026:	b8 02 03 00 00       	mov    $0x302,%eax
  40102b:	3b 44 24 0c          	cmp    0xc(%rsp),%eax
  40102f:	74 05                	je     401036 <phase_3+0x86>
  401031:	e8 f3 05 00 00       	callq  401629 <explode_bomb>
  401036:	48 83 c4 18          	add    $0x18,%rsp
  40103a:	c3                   	retq   

000000000040103b <func4>:
  40103b:	53                   	push   %rbx
  40103c:	89 d0                	mov    %edx,%eax
  40103e:	29 f0                	sub    %esi,%eax
  401040:	89 c3                	mov    %eax,%ebx
  401042:	c1 eb 1f             	shr    $0x1f,%ebx
  401045:	01 d8                	add    %ebx,%eax
  401047:	d1 f8                	sar    %eax
  401049:	8d 1c 30             	lea    (%rax,%rsi,1),%ebx
  40104c:	39 fb                	cmp    %edi,%ebx
  40104e:	7e 0c                	jle    40105c <func4+0x21>
  401050:	8d 53 ff             	lea    -0x1(%rbx),%edx
  401053:	e8 e3 ff ff ff       	callq  40103b <func4>
  401058:	01 c3                	add    %eax,%ebx
  40105a:	eb 0e                	jmp    40106a <func4+0x2f>
  40105c:	39 fb                	cmp    %edi,%ebx
  40105e:	7d 0a                	jge    40106a <func4+0x2f>
  401060:	8d 73 01             	lea    0x1(%rbx),%esi
  401063:	e8 d3 ff ff ff       	callq  40103b <func4>
  401068:	01 c3                	add    %eax,%ebx
  40106a:	89 d8                	mov    %ebx,%eax
  40106c:	5b                   	pop    %rbx
  40106d:	c3                   	retq   

000000000040106e <phase_4>:
  40106e:	48 83 ec 18          	sub    $0x18,%rsp
  401072:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  401077:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  40107c:	be 5a 2b 40 00       	mov    $0x402b5a,%esi
  401081:	b8 00 00 00 00       	mov    $0x0,%eax
  401086:	e8 f5 fb ff ff       	callq  400c80 <__isoc99_sscanf@plt>
  40108b:	83 f8 02             	cmp    $0x2,%eax
  40108e:	75 0d                	jne    40109d <phase_4+0x2f>
  401090:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401094:	85 c0                	test   %eax,%eax
  401096:	78 05                	js     40109d <phase_4+0x2f>
  401098:	83 f8 0e             	cmp    $0xe,%eax
  40109b:	7e 05                	jle    4010a2 <phase_4+0x34>
  40109d:	e8 87 05 00 00       	callq  401629 <explode_bomb>
  4010a2:	ba 0e 00 00 00       	mov    $0xe,%edx
  4010a7:	be 00 00 00 00       	mov    $0x0,%esi
  4010ac:	8b 7c 24 08          	mov    0x8(%rsp),%edi
  4010b0:	e8 86 ff ff ff       	callq  40103b <func4>
  4010b5:	83 f8 23             	cmp    $0x23,%eax
  4010b8:	75 07                	jne    4010c1 <phase_4+0x53>
  4010ba:	83 7c 24 0c 23       	cmpl   $0x23,0xc(%rsp)
  4010bf:	74 05                	je     4010c6 <phase_4+0x58>
  4010c1:	e8 63 05 00 00       	callq  401629 <explode_bomb>
  4010c6:	48 83 c4 18          	add    $0x18,%rsp
  4010ca:	c3                   	retq   

00000000004010cb <phase_5>:
  4010cb:	53                   	push   %rbx
  4010cc:	48 89 fb             	mov    %rdi,%rbx
  4010cf:	e8 37 02 00 00       	callq  40130b <string_length>
  4010d4:	83 f8 06             	cmp    $0x6,%eax
  4010d7:	74 05                	je     4010de <phase_5+0x13>
  4010d9:	e8 4b 05 00 00       	callq  401629 <explode_bomb>
  4010de:	b8 00 00 00 00       	mov    $0x0,%eax
  4010e3:	ba 00 00 00 00       	mov    $0x0,%edx
  4010e8:	0f be 0c 03          	movsbl (%rbx,%rax,1),%ecx
  4010ec:	83 e1 0f             	and    $0xf,%ecx
  4010ef:	03 14 8d 60 28 40 00 	add    0x402860(,%rcx,4),%edx
  4010f6:	48 83 c0 01          	add    $0x1,%rax
  4010fa:	48 83 f8 06          	cmp    $0x6,%rax
  4010fe:	75 e8                	jne    4010e8 <phase_5+0x1d>
  401100:	83 fa 2e             	cmp    $0x2e,%edx
  401103:	74 05                	je     40110a <phase_5+0x3f>
  401105:	e8 1f 05 00 00       	callq  401629 <explode_bomb>
  40110a:	5b                   	pop    %rbx
  40110b:	c3                   	retq   

000000000040110c <phase_6>:
  40110c:	41 55                	push   %r13
  40110e:	41 54                	push   %r12
  401110:	55                   	push   %rbp
  401111:	53                   	push   %rbx
  401112:	48 83 ec 58          	sub    $0x58,%rsp
  401116:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  40111b:	e8 6a 06 00 00       	callq  40178a <read_six_numbers>
  401120:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  401125:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40112b:	4c 89 e5             	mov    %r12,%rbp
  40112e:	41 8b 04 24          	mov    (%r12),%eax
  401132:	83 e8 01             	sub    $0x1,%eax
  401135:	83 f8 05             	cmp    $0x5,%eax
  401138:	76 05                	jbe    40113f <phase_6+0x33>
  40113a:	e8 ea 04 00 00       	callq  401629 <explode_bomb>
  40113f:	41 83 c5 01          	add    $0x1,%r13d
  401143:	41 83 fd 06          	cmp    $0x6,%r13d
  401147:	74 3d                	je     401186 <phase_6+0x7a>
  401149:	44 89 eb             	mov    %r13d,%ebx
  40114c:	48 63 c3             	movslq %ebx,%rax
  40114f:	8b 54 84 30          	mov    0x30(%rsp,%rax,4),%edx
  401153:	39 55 00             	cmp    %edx,0x0(%rbp)
  401156:	75 05                	jne    40115d <phase_6+0x51>
  401158:	e8 cc 04 00 00       	callq  401629 <explode_bomb>
  40115d:	83 c3 01             	add    $0x1,%ebx
  401160:	83 fb 05             	cmp    $0x5,%ebx
  401163:	7e e7                	jle    40114c <phase_6+0x40>
  401165:	49 83 c4 04          	add    $0x4,%r12
  401169:	eb c0                	jmp    40112b <phase_6+0x1f>
  40116b:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  40116f:	83 c0 01             	add    $0x1,%eax
  401172:	39 c8                	cmp    %ecx,%eax
  401174:	75 f5                	jne    40116b <phase_6+0x5f>
  401176:	48 89 14 74          	mov    %rdx,(%rsp,%rsi,2)
  40117a:	48 83 c6 04          	add    $0x4,%rsi
  40117e:	48 83 fe 18          	cmp    $0x18,%rsi
  401182:	75 07                	jne    40118b <phase_6+0x7f>
  401184:	eb 1a                	jmp    4011a0 <phase_6+0x94>
  401186:	be 00 00 00 00       	mov    $0x0,%esi
  40118b:	8b 4c 34 30          	mov    0x30(%rsp,%rsi,1),%ecx
  40118f:	b8 01 00 00 00       	mov    $0x1,%eax
  401194:	ba 00 43 60 00       	mov    $0x604300,%edx
  401199:	83 f9 01             	cmp    $0x1,%ecx
  40119c:	7f cd                	jg     40116b <phase_6+0x5f>
  40119e:	eb d6                	jmp    401176 <phase_6+0x6a>
  4011a0:	48 8b 1c 24          	mov    (%rsp),%rbx
  4011a4:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4011a9:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4011ad:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  4011b2:	48 89 50 08          	mov    %rdx,0x8(%rax)
  4011b6:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  4011bb:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4011bf:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
  4011c4:	48 89 50 08          	mov    %rdx,0x8(%rax)
  4011c8:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  4011cd:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4011d1:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  4011d8:	00 
  4011d9:	bd 05 00 00 00       	mov    $0x5,%ebp
  4011de:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4011e2:	8b 10                	mov    (%rax),%edx
  4011e4:	39 13                	cmp    %edx,(%rbx)
  4011e6:	7e 05                	jle    4011ed <phase_6+0xe1>
  4011e8:	e8 3c 04 00 00       	callq  401629 <explode_bomb>
  4011ed:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  4011f1:	83 ed 01             	sub    $0x1,%ebp
  4011f4:	75 e8                	jne    4011de <phase_6+0xd2>
  4011f6:	48 83 c4 58          	add    $0x58,%rsp
  4011fa:	5b                   	pop    %rbx
  4011fb:	5d                   	pop    %rbp
  4011fc:	41 5c                	pop    %r12
  4011fe:	41 5d                	pop    %r13
  401200:	c3                   	retq   

0000000000401201 <fun7>:
  401201:	48 83 ec 08          	sub    $0x8,%rsp
  401205:	48 85 ff             	test   %rdi,%rdi
  401208:	74 2b                	je     401235 <fun7+0x34>
  40120a:	8b 17                	mov    (%rdi),%edx
  40120c:	39 f2                	cmp    %esi,%edx
  40120e:	7e 0d                	jle    40121d <fun7+0x1c>
  401210:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  401214:	e8 e8 ff ff ff       	callq  401201 <fun7>
  401219:	01 c0                	add    %eax,%eax
  40121b:	eb 1d                	jmp    40123a <fun7+0x39>
  40121d:	b8 00 00 00 00       	mov    $0x0,%eax
  401222:	39 f2                	cmp    %esi,%edx
  401224:	74 14                	je     40123a <fun7+0x39>
  401226:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  40122a:	e8 d2 ff ff ff       	callq  401201 <fun7>
  40122f:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  401233:	eb 05                	jmp    40123a <fun7+0x39>
  401235:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40123a:	48 83 c4 08          	add    $0x8,%rsp
  40123e:	c3                   	retq   

000000000040123f <secret_phase>:
  40123f:	53                   	push   %rbx
  401240:	e8 1a 04 00 00       	callq  40165f <read_line>
  401245:	ba 0a 00 00 00       	mov    $0xa,%edx
  40124a:	be 00 00 00 00       	mov    $0x0,%esi
  40124f:	48 89 c7             	mov    %rax,%rdi
  401252:	e8 09 fa ff ff       	callq  400c60 <strtol@plt>
  401257:	89 c3                	mov    %eax,%ebx
  401259:	8d 43 ff             	lea    -0x1(%rbx),%eax
  40125c:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  401261:	76 05                	jbe    401268 <secret_phase+0x29>
  401263:	e8 c1 03 00 00       	callq  401629 <explode_bomb>
  401268:	89 de                	mov    %ebx,%esi
  40126a:	bf 20 41 60 00       	mov    $0x604120,%edi
  40126f:	e8 8d ff ff ff       	callq  401201 <fun7>
  401274:	85 c0                	test   %eax,%eax
  401276:	74 05                	je     40127d <secret_phase+0x3e>
  401278:	e8 ac 03 00 00       	callq  401629 <explode_bomb>
  40127d:	bf f8 27 40 00       	mov    $0x4027f8,%edi
  401282:	e8 19 f9 ff ff       	callq  400ba0 <puts@plt>
  401287:	e8 40 05 00 00       	callq  4017cc <phase_defused>
  40128c:	5b                   	pop    %rbx
  40128d:	c3                   	retq   
  40128e:	90                   	nop
  40128f:	90                   	nop

0000000000401290 <sig_handler>:
  401290:	48 83 ec 08          	sub    $0x8,%rsp
  401294:	bf a0 28 40 00       	mov    $0x4028a0,%edi
  401299:	e8 02 f9 ff ff       	callq  400ba0 <puts@plt>
  40129e:	bf 03 00 00 00       	mov    $0x3,%edi
  4012a3:	e8 48 fa ff ff       	callq  400cf0 <sleep@plt>
  4012a8:	be 8f 2a 40 00       	mov    $0x402a8f,%esi
  4012ad:	bf 01 00 00 00       	mov    $0x1,%edi
  4012b2:	b8 00 00 00 00       	mov    $0x0,%eax
  4012b7:	e8 d4 f9 ff ff       	callq  400c90 <__printf_chk@plt>
  4012bc:	48 8b 3d 3d 43 20 00 	mov    0x20433d(%rip),%rdi        # 605600 <__bss_start>
  4012c3:	e8 a8 f9 ff ff       	callq  400c70 <fflush@plt>
  4012c8:	bf 01 00 00 00       	mov    $0x1,%edi
  4012cd:	e8 1e fa ff ff       	callq  400cf0 <sleep@plt>
  4012d2:	bf 97 2a 40 00       	mov    $0x402a97,%edi
  4012d7:	e8 c4 f8 ff ff       	callq  400ba0 <puts@plt>
  4012dc:	bf 10 00 00 00       	mov    $0x10,%edi
  4012e1:	e8 da f9 ff ff       	callq  400cc0 <exit@plt>

00000000004012e6 <invalid_phase>:
  4012e6:	48 83 ec 08          	sub    $0x8,%rsp
  4012ea:	48 89 fa             	mov    %rdi,%rdx
  4012ed:	be 9f 2a 40 00       	mov    $0x402a9f,%esi
  4012f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4012f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4012fc:	e8 8f f9 ff ff       	callq  400c90 <__printf_chk@plt>
  401301:	bf 08 00 00 00       	mov    $0x8,%edi
  401306:	e8 b5 f9 ff ff       	callq  400cc0 <exit@plt>

000000000040130b <string_length>:
  40130b:	b8 00 00 00 00       	mov    $0x0,%eax
  401310:	80 3f 00             	cmpb   $0x0,(%rdi)
  401313:	74 10                	je     401325 <string_length+0x1a>
  401315:	48 89 fa             	mov    %rdi,%rdx
  401318:	48 83 c2 01          	add    $0x1,%rdx
  40131c:	89 d0                	mov    %edx,%eax
  40131e:	29 f8                	sub    %edi,%eax
  401320:	80 3a 00             	cmpb   $0x0,(%rdx)
  401323:	75 f3                	jne    401318 <string_length+0xd>
  401325:	f3 c3                	repz retq 

0000000000401327 <strings_not_equal>:
  401327:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
  40132c:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
  401331:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  401336:	48 83 ec 18          	sub    $0x18,%rsp
  40133a:	48 89 fb             	mov    %rdi,%rbx
  40133d:	48 89 f5             	mov    %rsi,%rbp
  401340:	e8 c6 ff ff ff       	callq  40130b <string_length>
  401345:	41 89 c4             	mov    %eax,%r12d
  401348:	48 89 ef             	mov    %rbp,%rdi
  40134b:	e8 bb ff ff ff       	callq  40130b <string_length>
  401350:	ba 01 00 00 00       	mov    $0x1,%edx
  401355:	41 39 c4             	cmp    %eax,%r12d
  401358:	75 36                	jne    401390 <strings_not_equal+0x69>
  40135a:	0f b6 03             	movzbl (%rbx),%eax
  40135d:	b2 00                	mov    $0x0,%dl
  40135f:	84 c0                	test   %al,%al
  401361:	74 2d                	je     401390 <strings_not_equal+0x69>
  401363:	b2 01                	mov    $0x1,%dl
  401365:	3a 45 00             	cmp    0x0(%rbp),%al
  401368:	75 26                	jne    401390 <strings_not_equal+0x69>
  40136a:	b8 00 00 00 00       	mov    $0x0,%eax
  40136f:	eb 0a                	jmp    40137b <strings_not_equal+0x54>
  401371:	48 83 c0 01          	add    $0x1,%rax
  401375:	3a 54 05 00          	cmp    0x0(%rbp,%rax,1),%dl
  401379:	75 10                	jne    40138b <strings_not_equal+0x64>
  40137b:	0f b6 54 03 01       	movzbl 0x1(%rbx,%rax,1),%edx
  401380:	84 d2                	test   %dl,%dl
  401382:	75 ed                	jne    401371 <strings_not_equal+0x4a>
  401384:	ba 00 00 00 00       	mov    $0x0,%edx
  401389:	eb 05                	jmp    401390 <strings_not_equal+0x69>
  40138b:	ba 01 00 00 00       	mov    $0x1,%edx
  401390:	89 d0                	mov    %edx,%eax
  401392:	48 8b 1c 24          	mov    (%rsp),%rbx
  401396:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  40139b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  4013a0:	48 83 c4 18          	add    $0x18,%rsp
  4013a4:	c3                   	retq   

00000000004013a5 <initialize_bomb>:
  4013a5:	53                   	push   %rbx
  4013a6:	48 81 ec 50 20 00 00 	sub    $0x2050,%rsp
  4013ad:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4013b4:	00 00 
  4013b6:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
  4013bd:	00 
  4013be:	31 c0                	xor    %eax,%eax
  4013c0:	be 90 12 40 00       	mov    $0x401290,%esi
  4013c5:	bf 02 00 00 00       	mov    $0x2,%edi
  4013ca:	e8 51 f8 ff ff       	callq  400c20 <signal@plt>
  4013cf:	be 40 00 00 00       	mov    $0x40,%esi
  4013d4:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  4013db:	00 
  4013dc:	e8 cf f8 ff ff       	callq  400cb0 <gethostname@plt>
  4013e1:	85 c0                	test   %eax,%eax
  4013e3:	75 13                	jne    4013f8 <initialize_bomb+0x53>
  4013e5:	48 8b 3d 94 3f 20 00 	mov    0x203f94(%rip),%rdi        # 605380 <host_table>
  4013ec:	bb 88 53 60 00       	mov    $0x605388,%ebx
  4013f1:	48 85 ff             	test   %rdi,%rdi
  4013f4:	75 16                	jne    40140c <initialize_bomb+0x67>
  4013f6:	eb 61                	jmp    401459 <initialize_bomb+0xb4>
  4013f8:	bf d8 28 40 00       	mov    $0x4028d8,%edi
  4013fd:	e8 9e f7 ff ff       	callq  400ba0 <puts@plt>
  401402:	bf 08 00 00 00       	mov    $0x8,%edi
  401407:	e8 b4 f8 ff ff       	callq  400cc0 <exit@plt>
  40140c:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  401413:	00 
  401414:	e8 57 f7 ff ff       	callq  400b70 <strcasecmp@plt>
  401419:	85 c0                	test   %eax,%eax
  40141b:	74 0f                	je     40142c <initialize_bomb+0x87>
  40141d:	48 83 c3 08          	add    $0x8,%rbx
  401421:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
  401425:	48 85 ff             	test   %rdi,%rdi
  401428:	75 e2                	jne    40140c <initialize_bomb+0x67>
  40142a:	eb 2d                	jmp    401459 <initialize_bomb+0xb4>
  40142c:	48 89 e7             	mov    %rsp,%rdi
  40142f:	e8 de 0e 00 00       	callq  402312 <init_driver>
  401434:	85 c0                	test   %eax,%eax
  401436:	79 35                	jns    40146d <initialize_bomb+0xc8>
  401438:	48 89 e2             	mov    %rsp,%rdx
  40143b:	be b0 2a 40 00       	mov    $0x402ab0,%esi
  401440:	bf 01 00 00 00       	mov    $0x1,%edi
  401445:	b8 00 00 00 00       	mov    $0x0,%eax
  40144a:	e8 41 f8 ff ff       	callq  400c90 <__printf_chk@plt>
  40144f:	bf 08 00 00 00       	mov    $0x8,%edi
  401454:	e8 67 f8 ff ff       	callq  400cc0 <exit@plt>
  401459:	bf 10 29 40 00       	mov    $0x402910,%edi
  40145e:	e8 3d f7 ff ff       	callq  400ba0 <puts@plt>
  401463:	bf 08 00 00 00       	mov    $0x8,%edi
  401468:	e8 53 f8 ff ff       	callq  400cc0 <exit@plt>
  40146d:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
  401474:	00 
  401475:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40147c:	00 00 
  40147e:	74 05                	je     401485 <initialize_bomb+0xe0>
  401480:	e8 3b f7 ff ff       	callq  400bc0 <__stack_chk_fail@plt>
  401485:	48 81 c4 50 20 00 00 	add    $0x2050,%rsp
  40148c:	5b                   	pop    %rbx
  40148d:	c3                   	retq   

000000000040148e <initialize_bomb_solve>:
  40148e:	f3 c3                	repz retq 

0000000000401490 <blank_line>:
  401490:	55                   	push   %rbp
  401491:	53                   	push   %rbx
  401492:	48 83 ec 08          	sub    $0x8,%rsp
  401496:	48 89 fd             	mov    %rdi,%rbp
  401499:	eb 17                	jmp    4014b2 <blank_line+0x22>
  40149b:	e8 60 f8 ff ff       	callq  400d00 <__ctype_b_loc@plt>
  4014a0:	48 83 c5 01          	add    $0x1,%rbp
  4014a4:	48 0f be db          	movsbq %bl,%rbx
  4014a8:	48 8b 00             	mov    (%rax),%rax
  4014ab:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  4014b0:	74 0f                	je     4014c1 <blank_line+0x31>
  4014b2:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  4014b6:	84 db                	test   %bl,%bl
  4014b8:	75 e1                	jne    40149b <blank_line+0xb>
  4014ba:	b8 01 00 00 00       	mov    $0x1,%eax
  4014bf:	eb 05                	jmp    4014c6 <blank_line+0x36>
  4014c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c6:	48 83 c4 08          	add    $0x8,%rsp
  4014ca:	5b                   	pop    %rbx
  4014cb:	5d                   	pop    %rbp
  4014cc:	c3                   	retq   

00000000004014cd <skip>:
  4014cd:	53                   	push   %rbx
  4014ce:	48 63 05 53 41 20 00 	movslq 0x204153(%rip),%rax        # 605628 <num_input_strings>
  4014d5:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  4014d9:	48 c1 e7 04          	shl    $0x4,%rdi
  4014dd:	48 81 c7 40 56 60 00 	add    $0x605640,%rdi
  4014e4:	48 8b 15 45 41 20 00 	mov    0x204145(%rip),%rdx        # 605630 <infile>
  4014eb:	be 50 00 00 00       	mov    $0x50,%esi
  4014f0:	e8 1b f7 ff ff       	callq  400c10 <fgets@plt>
  4014f5:	48 89 c3             	mov    %rax,%rbx
  4014f8:	48 85 c0             	test   %rax,%rax
  4014fb:	74 0c                	je     401509 <skip+0x3c>
  4014fd:	48 89 c7             	mov    %rax,%rdi
  401500:	e8 8b ff ff ff       	callq  401490 <blank_line>
  401505:	85 c0                	test   %eax,%eax
  401507:	75 c5                	jne    4014ce <skip+0x1>
  401509:	48 89 d8             	mov    %rbx,%rax
  40150c:	5b                   	pop    %rbx
  40150d:	c3                   	retq   

000000000040150e <send_msg>:
  40150e:	48 81 ec 38 40 00 00 	sub    $0x4038,%rsp
  401515:	41 89 f8             	mov    %edi,%r8d
  401518:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40151f:	00 00 
  401521:	48 89 84 24 28 40 00 	mov    %rax,0x4028(%rsp)
  401528:	00 
  401529:	31 c0                	xor    %eax,%eax
  40152b:	8b 15 f7 40 20 00    	mov    0x2040f7(%rip),%edx        # 605628 <num_input_strings>
  401531:	48 63 c2             	movslq %edx,%rax
  401534:	48 8d 74 80 fb       	lea    -0x5(%rax,%rax,4),%rsi
  401539:	48 c1 e6 04          	shl    $0x4,%rsi
  40153d:	48 81 c6 40 56 60 00 	add    $0x605640,%rsi
  401544:	48 89 f7             	mov    %rsi,%rdi
  401547:	b8 00 00 00 00       	mov    $0x0,%eax
  40154c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401553:	f2 ae                	repnz scas %es:(%rdi),%al
  401555:	48 f7 d1             	not    %rcx
  401558:	48 83 c1 63          	add    $0x63,%rcx
  40155c:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  401563:	76 19                	jbe    40157e <send_msg+0x70>
  401565:	be 48 29 40 00       	mov    $0x402948,%esi
  40156a:	bf 01 00 00 00       	mov    $0x1,%edi
  40156f:	e8 1c f7 ff ff       	callq  400c90 <__printf_chk@plt>
  401574:	bf 08 00 00 00       	mov    $0x8,%edi
  401579:	e8 42 f7 ff ff       	callq  400cc0 <exit@plt>
  40157e:	45 85 c0             	test   %r8d,%r8d
  401581:	b8 ca 2a 40 00       	mov    $0x402aca,%eax
  401586:	b9 d2 2a 40 00       	mov    $0x402ad2,%ecx
  40158b:	48 0f 44 c1          	cmove  %rcx,%rax
  40158f:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  401594:	89 54 24 08          	mov    %edx,0x8(%rsp)
  401598:	48 89 04 24          	mov    %rax,(%rsp)
  40159c:	41 b9 60 4b 60 00    	mov    $0x604b60,%r9d
  4015a2:	44 8b 05 b7 3d 20 00 	mov    0x203db7(%rip),%r8d        # 605360 <bomb_id>
  4015a9:	b9 db 2a 40 00       	mov    $0x402adb,%ecx
  4015ae:	ba 00 20 00 00       	mov    $0x2000,%edx
  4015b3:	be 01 00 00 00       	mov    $0x1,%esi
  4015b8:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  4015bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c2:	e8 49 f7 ff ff       	callq  400d10 <__sprintf_chk@plt>
  4015c7:	4c 8d 8c 24 20 20 00 	lea    0x2020(%rsp),%r9
  4015ce:	00 
  4015cf:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4015d5:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4015da:	ba 60 43 60 00       	mov    $0x604360,%edx
  4015df:	be 60 47 60 00       	mov    $0x604760,%esi
  4015e4:	bf 60 4f 60 00       	mov    $0x604f60,%edi
  4015e9:	e8 17 0f 00 00       	callq  402505 <driver_post>
  4015ee:	85 c0                	test   %eax,%eax
  4015f0:	79 17                	jns    401609 <send_msg+0xfb>
  4015f2:	48 8d bc 24 20 20 00 	lea    0x2020(%rsp),%rdi
  4015f9:	00 
  4015fa:	e8 a1 f5 ff ff       	callq  400ba0 <puts@plt>
  4015ff:	bf 00 00 00 00       	mov    $0x0,%edi
  401604:	e8 b7 f6 ff ff       	callq  400cc0 <exit@plt>
  401609:	48 8b 84 24 28 40 00 	mov    0x4028(%rsp),%rax
  401610:	00 
  401611:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401618:	00 00 
  40161a:	74 05                	je     401621 <send_msg+0x113>
  40161c:	e8 9f f5 ff ff       	callq  400bc0 <__stack_chk_fail@plt>
  401621:	48 81 c4 38 40 00 00 	add    $0x4038,%rsp
  401628:	c3                   	retq   

0000000000401629 <explode_bomb>:
  401629:	48 83 ec 08          	sub    $0x8,%rsp
  40162d:	bf ea 2a 40 00       	mov    $0x402aea,%edi
  401632:	e8 69 f5 ff ff       	callq  400ba0 <puts@plt>
  401637:	bf f3 2a 40 00       	mov    $0x402af3,%edi
  40163c:	e8 5f f5 ff ff       	callq  400ba0 <puts@plt>
  401641:	bf 00 00 00 00       	mov    $0x0,%edi
  401646:	e8 c3 fe ff ff       	callq  40150e <send_msg>
  40164b:	bf 70 29 40 00       	mov    $0x402970,%edi
  401650:	e8 4b f5 ff ff       	callq  400ba0 <puts@plt>
  401655:	bf 08 00 00 00       	mov    $0x8,%edi
  40165a:	e8 61 f6 ff ff       	callq  400cc0 <exit@plt>

000000000040165f <read_line>:
  40165f:	48 83 ec 08          	sub    $0x8,%rsp
  401663:	b8 00 00 00 00       	mov    $0x0,%eax
  401668:	e8 60 fe ff ff       	callq  4014cd <skip>
  40166d:	48 85 c0             	test   %rax,%rax
  401670:	75 6e                	jne    4016e0 <read_line+0x81>
  401672:	48 8b 05 8f 3f 20 00 	mov    0x203f8f(%rip),%rax        # 605608 <stdin@@GLIBC_2.2.5>
  401679:	48 39 05 b0 3f 20 00 	cmp    %rax,0x203fb0(%rip)        # 605630 <infile>
  401680:	75 14                	jne    401696 <read_line+0x37>
  401682:	bf 0a 2b 40 00       	mov    $0x402b0a,%edi
  401687:	e8 14 f5 ff ff       	callq  400ba0 <puts@plt>
  40168c:	bf 08 00 00 00       	mov    $0x8,%edi
  401691:	e8 2a f6 ff ff       	callq  400cc0 <exit@plt>
  401696:	bf 28 2b 40 00       	mov    $0x402b28,%edi
  40169b:	e8 c0 f4 ff ff       	callq  400b60 <getenv@plt>
  4016a0:	48 85 c0             	test   %rax,%rax
  4016a3:	74 0a                	je     4016af <read_line+0x50>
  4016a5:	bf 00 00 00 00       	mov    $0x0,%edi
  4016aa:	e8 11 f6 ff ff       	callq  400cc0 <exit@plt>
  4016af:	48 8b 05 52 3f 20 00 	mov    0x203f52(%rip),%rax        # 605608 <stdin@@GLIBC_2.2.5>
  4016b6:	48 89 05 73 3f 20 00 	mov    %rax,0x203f73(%rip)        # 605630 <infile>
  4016bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4016c2:	e8 06 fe ff ff       	callq  4014cd <skip>
  4016c7:	48 85 c0             	test   %rax,%rax
  4016ca:	75 14                	jne    4016e0 <read_line+0x81>
  4016cc:	bf 0a 2b 40 00       	mov    $0x402b0a,%edi
  4016d1:	e8 ca f4 ff ff       	callq  400ba0 <puts@plt>
  4016d6:	bf 00 00 00 00       	mov    $0x0,%edi
  4016db:	e8 e0 f5 ff ff       	callq  400cc0 <exit@plt>
  4016e0:	8b 15 42 3f 20 00    	mov    0x203f42(%rip),%edx        # 605628 <num_input_strings>
  4016e6:	48 63 c2             	movslq %edx,%rax
  4016e9:	48 8d 34 80          	lea    (%rax,%rax,4),%rsi
  4016ed:	48 c1 e6 04          	shl    $0x4,%rsi
  4016f1:	48 81 c6 40 56 60 00 	add    $0x605640,%rsi
  4016f8:	48 89 f7             	mov    %rsi,%rdi
  4016fb:	b8 00 00 00 00       	mov    $0x0,%eax
  401700:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401707:	f2 ae                	repnz scas %es:(%rdi),%al
  401709:	48 f7 d1             	not    %rcx
  40170c:	83 e9 01             	sub    $0x1,%ecx
  40170f:	83 f9 4e             	cmp    $0x4e,%ecx
  401712:	7e 4c                	jle    401760 <read_line+0x101>
  401714:	bf 33 2b 40 00       	mov    $0x402b33,%edi
  401719:	e8 82 f4 ff ff       	callq  400ba0 <puts@plt>
  40171e:	8b 05 04 3f 20 00    	mov    0x203f04(%rip),%eax        # 605628 <num_input_strings>
  401724:	8d 50 01             	lea    0x1(%rax),%edx
  401727:	89 15 fb 3e 20 00    	mov    %edx,0x203efb(%rip)        # 605628 <num_input_strings>
  40172d:	48 98                	cltq   
  40172f:	48 6b c0 50          	imul   $0x50,%rax,%rax
  401733:	c7 80 40 56 60 00 2a 	movl   $0x742a2a2a,0x605640(%rax)
  40173a:	2a 2a 74 
  40173d:	c7 80 44 56 60 00 72 	movl   $0x636e7572,0x605644(%rax)
  401744:	75 6e 63 
  401747:	c7 80 48 56 60 00 61 	movl   $0x64657461,0x605648(%rax)
  40174e:	74 65 64 
  401751:	c7 80 4c 56 60 00 2a 	movl   $0x2a2a2a,0x60564c(%rax)
  401758:	2a 2a 00 
  40175b:	e8 c9 fe ff ff       	callq  401629 <explode_bomb>
  401760:	83 e9 01             	sub    $0x1,%ecx
  401763:	48 63 c9             	movslq %ecx,%rcx
  401766:	48 63 c2             	movslq %edx,%rax
  401769:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40176d:	48 c1 e0 04          	shl    $0x4,%rax
  401771:	c6 84 01 40 56 60 00 	movb   $0x0,0x605640(%rcx,%rax,1)
  401778:	00 
  401779:	83 c2 01             	add    $0x1,%edx
  40177c:	89 15 a6 3e 20 00    	mov    %edx,0x203ea6(%rip)        # 605628 <num_input_strings>
  401782:	48 89 f0             	mov    %rsi,%rax
  401785:	48 83 c4 08          	add    $0x8,%rsp
  401789:	c3                   	retq   

000000000040178a <read_six_numbers>:
  40178a:	48 83 ec 18          	sub    $0x18,%rsp
  40178e:	48 89 f2             	mov    %rsi,%rdx
  401791:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  401795:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401799:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40179e:	48 8d 46 10          	lea    0x10(%rsi),%rax
  4017a2:	48 89 04 24          	mov    %rax,(%rsp)
  4017a6:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  4017aa:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  4017ae:	be 4e 2b 40 00       	mov    $0x402b4e,%esi
  4017b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4017b8:	e8 c3 f4 ff ff       	callq  400c80 <__isoc99_sscanf@plt>
  4017bd:	83 f8 05             	cmp    $0x5,%eax
  4017c0:	7f 05                	jg     4017c7 <read_six_numbers+0x3d>
  4017c2:	e8 62 fe ff ff       	callq  401629 <explode_bomb>
  4017c7:	48 83 c4 18          	add    $0x18,%rsp
  4017cb:	c3                   	retq   

00000000004017cc <phase_defused>:
  4017cc:	48 83 ec 78          	sub    $0x78,%rsp
  4017d0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4017d7:	00 00 
  4017d9:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  4017de:	31 c0                	xor    %eax,%eax
  4017e0:	bf 01 00 00 00       	mov    $0x1,%edi
  4017e5:	e8 24 fd ff ff       	callq  40150e <send_msg>
  4017ea:	83 3d 37 3e 20 00 06 	cmpl   $0x6,0x203e37(%rip)        # 605628 <num_input_strings>
  4017f1:	75 6d                	jne    401860 <phase_defused+0x94>
  4017f3:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  4017f8:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  4017fd:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  401802:	be 60 2b 40 00       	mov    $0x402b60,%esi
  401807:	bf 30 57 60 00       	mov    $0x605730,%edi
  40180c:	b8 00 00 00 00       	mov    $0x0,%eax
  401811:	e8 6a f4 ff ff       	callq  400c80 <__isoc99_sscanf@plt>
  401816:	83 f8 03             	cmp    $0x3,%eax
  401819:	75 31                	jne    40184c <phase_defused+0x80>
  40181b:	be 69 2b 40 00       	mov    $0x402b69,%esi
  401820:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401825:	e8 fd fa ff ff       	callq  401327 <strings_not_equal>
  40182a:	85 c0                	test   %eax,%eax
  40182c:	75 1e                	jne    40184c <phase_defused+0x80>
  40182e:	bf 98 29 40 00       	mov    $0x402998,%edi
  401833:	e8 68 f3 ff ff       	callq  400ba0 <puts@plt>
  401838:	bf c0 29 40 00       	mov    $0x4029c0,%edi
  40183d:	e8 5e f3 ff ff       	callq  400ba0 <puts@plt>
  401842:	b8 00 00 00 00       	mov    $0x0,%eax
  401847:	e8 f3 f9 ff ff       	callq  40123f <secret_phase>
  40184c:	bf f8 29 40 00       	mov    $0x4029f8,%edi
  401851:	e8 4a f3 ff ff       	callq  400ba0 <puts@plt>
  401856:	bf 28 2a 40 00       	mov    $0x402a28,%edi
  40185b:	e8 40 f3 ff ff       	callq  400ba0 <puts@plt>
  401860:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  401865:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40186c:	00 00 
  40186e:	74 05                	je     401875 <phase_defused+0xa9>
  401870:	e8 4b f3 ff ff       	callq  400bc0 <__stack_chk_fail@plt>
  401875:	48 83 c4 78          	add    $0x78,%rsp
  401879:	c3                   	retq   
  40187a:	90                   	nop
  40187b:	90                   	nop
  40187c:	90                   	nop
  40187d:	90                   	nop
  40187e:	90                   	nop
  40187f:	90                   	nop

0000000000401880 <rio_readlineb>:
  401880:	41 57                	push   %r15
  401882:	41 56                	push   %r14
  401884:	41 55                	push   %r13
  401886:	41 54                	push   %r12
  401888:	55                   	push   %rbp
  401889:	53                   	push   %rbx
  40188a:	48 83 ec 28          	sub    $0x28,%rsp
  40188e:	48 89 fd             	mov    %rdi,%rbp
  401891:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  401896:	49 89 f7             	mov    %rsi,%r15
  401899:	41 be 01 00 00 00    	mov    $0x1,%r14d
  40189f:	4c 8d 6f 10          	lea    0x10(%rdi),%r13
  4018a3:	48 83 fa 01          	cmp    $0x1,%rdx
  4018a7:	77 38                	ja     4018e1 <rio_readlineb+0x61>
  4018a9:	e9 a7 00 00 00       	jmpq   401955 <rio_readlineb+0xd5>
  4018ae:	ba 00 20 00 00       	mov    $0x2000,%edx
  4018b3:	4c 89 ee             	mov    %r13,%rsi
  4018b6:	8b 7d 00             	mov    0x0(%rbp),%edi
  4018b9:	e8 32 f3 ff ff       	callq  400bf0 <read@plt>
  4018be:	89 45 04             	mov    %eax,0x4(%rbp)
  4018c1:	85 c0                	test   %eax,%eax
  4018c3:	79 10                	jns    4018d5 <rio_readlineb+0x55>
  4018c5:	e8 b6 f2 ff ff       	callq  400b80 <__errno_location@plt>
  4018ca:	83 38 04             	cmpl   $0x4,(%rax)
  4018cd:	74 12                	je     4018e1 <rio_readlineb+0x61>
  4018cf:	90                   	nop
  4018d0:	e9 99 00 00 00       	jmpq   40196e <rio_readlineb+0xee>
  4018d5:	85 c0                	test   %eax,%eax
  4018d7:	0f 84 9a 00 00 00    	je     401977 <rio_readlineb+0xf7>
  4018dd:	4c 89 6d 08          	mov    %r13,0x8(%rbp)
  4018e1:	44 8b 65 04          	mov    0x4(%rbp),%r12d
  4018e5:	45 85 e4             	test   %r12d,%r12d
  4018e8:	7e c4                	jle    4018ae <rio_readlineb+0x2e>
  4018ea:	45 85 e4             	test   %r12d,%r12d
  4018ed:	0f 85 8e 00 00 00    	jne    401981 <rio_readlineb+0x101>
  4018f3:	49 63 dc             	movslq %r12d,%rbx
  4018f6:	48 8b 75 08          	mov    0x8(%rbp),%rsi
  4018fa:	b9 01 00 00 00       	mov    $0x1,%ecx
  4018ff:	48 89 da             	mov    %rbx,%rdx
  401902:	48 8d 7c 24 1f       	lea    0x1f(%rsp),%rdi
  401907:	e8 44 f3 ff ff       	callq  400c50 <__memcpy_chk@plt>
  40190c:	48 01 5d 08          	add    %rbx,0x8(%rbp)
  401910:	44 29 65 04          	sub    %r12d,0x4(%rbp)
  401914:	44 89 e0             	mov    %r12d,%eax
  401917:	41 83 fc 01          	cmp    $0x1,%r12d
  40191b:	75 12                	jne    40192f <rio_readlineb+0xaf>
  40191d:	0f b6 44 24 1f       	movzbl 0x1f(%rsp),%eax
  401922:	41 88 07             	mov    %al,(%r15)
  401925:	49 83 c7 01          	add    $0x1,%r15
  401929:	3c 0a                	cmp    $0xa,%al
  40192b:	75 1d                	jne    40194a <rio_readlineb+0xca>
  40192d:	eb 26                	jmp    401955 <rio_readlineb+0xd5>
  40192f:	4c 89 f2             	mov    %r14,%rdx
  401932:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401939:	85 c0                	test   %eax,%eax
  40193b:	75 1f                	jne    40195c <rio_readlineb+0xdc>
  40193d:	b9 00 00 00 00       	mov    $0x0,%ecx
  401942:	48 83 fa 01          	cmp    $0x1,%rdx
  401946:	75 0d                	jne    401955 <rio_readlineb+0xd5>
  401948:	eb 12                	jmp    40195c <rio_readlineb+0xdc>
  40194a:	49 83 c6 01          	add    $0x1,%r14
  40194e:	4c 3b 74 24 08       	cmp    0x8(%rsp),%r14
  401953:	75 8c                	jne    4018e1 <rio_readlineb+0x61>
  401955:	41 c6 07 00          	movb   $0x0,(%r15)
  401959:	4c 89 f1             	mov    %r14,%rcx
  40195c:	48 89 c8             	mov    %rcx,%rax
  40195f:	48 83 c4 28          	add    $0x28,%rsp
  401963:	5b                   	pop    %rbx
  401964:	5d                   	pop    %rbp
  401965:	41 5c                	pop    %r12
  401967:	41 5d                	pop    %r13
  401969:	41 5e                	pop    %r14
  40196b:	41 5f                	pop    %r15
  40196d:	c3                   	retq   
  40196e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401975:	eb 05                	jmp    40197c <rio_readlineb+0xfc>
  401977:	b8 00 00 00 00       	mov    $0x0,%eax
  40197c:	4c 89 f2             	mov    %r14,%rdx
  40197f:	eb b1                	jmp    401932 <rio_readlineb+0xb2>
  401981:	48 8b 45 08          	mov    0x8(%rbp),%rax
  401985:	0f b6 00             	movzbl (%rax),%eax
  401988:	88 44 24 1f          	mov    %al,0x1f(%rsp)
  40198c:	48 83 45 08 01       	addq   $0x1,0x8(%rbp)
  401991:	83 6d 04 01          	subl   $0x1,0x4(%rbp)
  401995:	eb 86                	jmp    40191d <rio_readlineb+0x9d>

0000000000401997 <sigalrm_handler>:
  401997:	48 83 ec 08          	sub    $0x8,%rsp
  40199b:	b9 00 00 00 00       	mov    $0x0,%ecx
  4019a0:	ba a8 2c 40 00       	mov    $0x402ca8,%edx
  4019a5:	be 01 00 00 00       	mov    $0x1,%esi
  4019aa:	48 8b 3d 5f 3c 20 00 	mov    0x203c5f(%rip),%rdi        # 605610 <stderr@@GLIBC_2.2.5>
  4019b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4019b6:	e8 25 f3 ff ff       	callq  400ce0 <__fprintf_chk@plt>
  4019bb:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c0:	e8 fb f2 ff ff       	callq  400cc0 <exit@plt>

00000000004019c5 <submitr>:
  4019c5:	41 57                	push   %r15
  4019c7:	41 56                	push   %r14
  4019c9:	41 55                	push   %r13
  4019cb:	41 54                	push   %r12
  4019cd:	55                   	push   %rbp
  4019ce:	53                   	push   %rbx
  4019cf:	48 81 ec 88 a0 00 00 	sub    $0xa088,%rsp
  4019d6:	49 89 ff             	mov    %rdi,%r15
  4019d9:	89 f5                	mov    %esi,%ebp
  4019db:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  4019e0:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
  4019e5:	4c 89 44 24 38       	mov    %r8,0x38(%rsp)
  4019ea:	4c 89 cb             	mov    %r9,%rbx
  4019ed:	4c 8b b4 24 c0 a0 00 	mov    0xa0c0(%rsp),%r14
  4019f4:	00 
  4019f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4019fc:	00 00 
  4019fe:	48 89 84 24 78 a0 00 	mov    %rax,0xa078(%rsp)
  401a05:	00 
  401a06:	31 c0                	xor    %eax,%eax
  401a08:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%rsp)
  401a0f:	00 
  401a10:	ba 00 00 00 00       	mov    $0x0,%edx
  401a15:	be 01 00 00 00       	mov    $0x1,%esi
  401a1a:	bf 02 00 00 00       	mov    $0x2,%edi
  401a1f:	e8 fc f2 ff ff       	callq  400d20 <socket@plt>
  401a24:	41 89 c5             	mov    %eax,%r13d
  401a27:	85 c0                	test   %eax,%eax
  401a29:	79 58                	jns    401a83 <submitr+0xbe>
  401a2b:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401a32:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  401a39:	43 
  401a3a:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  401a41:	6e 
  401a42:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  401a49:	6e 
  401a4a:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401a51:	65 
  401a52:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401a59:	20 
  401a5a:	41 c7 46 18 63 72 65 	movl   $0x61657263,0x18(%r14)
  401a61:	61 
  401a62:	41 c7 46 1c 74 65 20 	movl   $0x73206574,0x1c(%r14)
  401a69:	73 
  401a6a:	41 c7 46 20 6f 63 6b 	movl   $0x656b636f,0x20(%r14)
  401a71:	65 
  401a72:	66 41 c7 46 24 74 00 	movw   $0x74,0x24(%r14)
  401a79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401a7e:	e9 bc 07 00 00       	jmpq   40223f <submitr+0x87a>
  401a83:	4c 89 ff             	mov    %r15,%rdi
  401a86:	e8 a5 f1 ff ff       	callq  400c30 <gethostbyname@plt>
  401a8b:	48 85 c0             	test   %rax,%rax
  401a8e:	0f 85 85 00 00 00    	jne    401b19 <submitr+0x154>
  401a94:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401a9b:	41 c7 46 04 72 3a 20 	movl   $0x44203a72,0x4(%r14)
  401aa2:	44 
  401aa3:	41 c7 46 08 4e 53 20 	movl   $0x6920534e,0x8(%r14)
  401aaa:	69 
  401aab:	41 c7 46 0c 73 20 75 	movl   $0x6e752073,0xc(%r14)
  401ab2:	6e 
  401ab3:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401aba:	65 
  401abb:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401ac2:	20 
  401ac3:	41 c7 46 18 72 65 73 	movl   $0x6f736572,0x18(%r14)
  401aca:	6f 
  401acb:	41 c7 46 1c 6c 76 65 	movl   $0x2065766c,0x1c(%r14)
  401ad2:	20 
  401ad3:	41 c7 46 20 41 75 74 	movl   $0x6f747541,0x20(%r14)
  401ada:	6f 
  401adb:	41 c7 46 24 6c 61 62 	movl   $0x2062616c,0x24(%r14)
  401ae2:	20 
  401ae3:	41 c7 46 28 73 65 72 	movl   $0x76726573,0x28(%r14)
  401aea:	76 
  401aeb:	41 c7 46 2c 65 72 20 	movl   $0x61207265,0x2c(%r14)
  401af2:	61 
  401af3:	41 c7 46 30 64 64 72 	movl   $0x65726464,0x30(%r14)
  401afa:	65 
  401afb:	66 41 c7 46 34 73 73 	movw   $0x7373,0x34(%r14)
  401b02:	41 c6 46 36 00       	movb   $0x0,0x36(%r14)
  401b07:	44 89 ef             	mov    %r13d,%edi
  401b0a:	e8 d1 f0 ff ff       	callq  400be0 <close@plt>
  401b0f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b14:	e9 26 07 00 00       	jmpq   40223f <submitr+0x87a>
  401b19:	48 c7 84 24 60 a0 00 	movq   $0x0,0xa060(%rsp)
  401b20:	00 00 00 00 00 
  401b25:	48 c7 84 24 68 a0 00 	movq   $0x0,0xa068(%rsp)
  401b2c:	00 00 00 00 00 
  401b31:	66 c7 84 24 60 a0 00 	movw   $0x2,0xa060(%rsp)
  401b38:	00 02 00 
  401b3b:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401b3f:	48 8b 40 18          	mov    0x18(%rax),%rax
  401b43:	48 8d bc 24 64 a0 00 	lea    0xa064(%rsp),%rdi
  401b4a:	00 
  401b4b:	b9 0c 00 00 00       	mov    $0xc,%ecx
  401b50:	48 8b 30             	mov    (%rax),%rsi
  401b53:	e8 e8 f0 ff ff       	callq  400c40 <__memmove_chk@plt>
  401b58:	66 c1 cd 08          	ror    $0x8,%bp
  401b5c:	66 89 ac 24 62 a0 00 	mov    %bp,0xa062(%rsp)
  401b63:	00 
  401b64:	ba 10 00 00 00       	mov    $0x10,%edx
  401b69:	48 8d b4 24 60 a0 00 	lea    0xa060(%rsp),%rsi
  401b70:	00 
  401b71:	44 89 ef             	mov    %r13d,%edi
  401b74:	e8 57 f1 ff ff       	callq  400cd0 <connect@plt>
  401b79:	85 c0                	test   %eax,%eax
  401b7b:	79 75                	jns    401bf2 <submitr+0x22d>
  401b7d:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401b84:	41 c7 46 04 72 3a 20 	movl   $0x55203a72,0x4(%r14)
  401b8b:	55 
  401b8c:	41 c7 46 08 6e 61 62 	movl   $0x6c62616e,0x8(%r14)
  401b93:	6c 
  401b94:	41 c7 46 0c 65 20 74 	movl   $0x6f742065,0xc(%r14)
  401b9b:	6f 
  401b9c:	41 c7 46 10 20 63 6f 	movl   $0x6e6f6320,0x10(%r14)
  401ba3:	6e 
  401ba4:	41 c7 46 14 6e 65 63 	movl   $0x7463656e,0x14(%r14)
  401bab:	74 
  401bac:	41 c7 46 18 20 74 6f 	movl   $0x206f7420,0x18(%r14)
  401bb3:	20 
  401bb4:	41 c7 46 1c 74 68 65 	movl   $0x20656874,0x1c(%r14)
  401bbb:	20 
  401bbc:	41 c7 46 20 41 75 74 	movl   $0x6f747541,0x20(%r14)
  401bc3:	6f 
  401bc4:	41 c7 46 24 6c 61 62 	movl   $0x2062616c,0x24(%r14)
  401bcb:	20 
  401bcc:	41 c7 46 28 73 65 72 	movl   $0x76726573,0x28(%r14)
  401bd3:	76 
  401bd4:	66 41 c7 46 2c 65 72 	movw   $0x7265,0x2c(%r14)
  401bdb:	41 c6 46 2e 00       	movb   $0x0,0x2e(%r14)
  401be0:	44 89 ef             	mov    %r13d,%edi
  401be3:	e8 f8 ef ff ff       	callq  400be0 <close@plt>
  401be8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401bed:	e9 4d 06 00 00       	jmpq   40223f <submitr+0x87a>
  401bf2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401bf9:	48 89 df             	mov    %rbx,%rdi
  401bfc:	b8 00 00 00 00       	mov    $0x0,%eax
  401c01:	48 89 d1             	mov    %rdx,%rcx
  401c04:	f2 ae                	repnz scas %es:(%rdi),%al
  401c06:	48 89 ce             	mov    %rcx,%rsi
  401c09:	48 f7 d6             	not    %rsi
  401c0c:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  401c11:	48 89 d1             	mov    %rdx,%rcx
  401c14:	f2 ae                	repnz scas %es:(%rdi),%al
  401c16:	49 89 c8             	mov    %rcx,%r8
  401c19:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  401c1e:	48 89 d1             	mov    %rdx,%rcx
  401c21:	f2 ae                	repnz scas %es:(%rdi),%al
  401c23:	49 89 c9             	mov    %rcx,%r9
  401c26:	49 f7 d1             	not    %r9
  401c29:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  401c2e:	48 89 d1             	mov    %rdx,%rcx
  401c31:	f2 ae                	repnz scas %es:(%rdi),%al
  401c33:	4d 29 c1             	sub    %r8,%r9
  401c36:	49 29 c9             	sub    %rcx,%r9
  401c39:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401c3e:	49 8d 44 01 7b       	lea    0x7b(%r9,%rax,1),%rax
  401c43:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401c49:	0f 86 81 00 00 00    	jbe    401cd0 <submitr+0x30b>
  401c4f:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401c56:	41 c7 46 04 72 3a 20 	movl   $0x52203a72,0x4(%r14)
  401c5d:	52 
  401c5e:	41 c7 46 08 65 73 75 	movl   $0x6c757365,0x8(%r14)
  401c65:	6c 
  401c66:	41 c7 46 0c 74 20 73 	movl   $0x74732074,0xc(%r14)
  401c6d:	74 
  401c6e:	41 c7 46 10 72 69 6e 	movl   $0x676e6972,0x10(%r14)
  401c75:	67 
  401c76:	41 c7 46 14 20 74 6f 	movl   $0x6f6f7420,0x14(%r14)
  401c7d:	6f 
  401c7e:	41 c7 46 18 20 6c 61 	movl   $0x72616c20,0x18(%r14)
  401c85:	72 
  401c86:	41 c7 46 1c 67 65 2e 	movl   $0x202e6567,0x1c(%r14)
  401c8d:	20 
  401c8e:	41 c7 46 20 49 6e 63 	movl   $0x72636e49,0x20(%r14)
  401c95:	72 
  401c96:	41 c7 46 24 65 61 73 	movl   $0x65736165,0x24(%r14)
  401c9d:	65 
  401c9e:	41 c7 46 28 20 53 55 	movl   $0x42555320,0x28(%r14)
  401ca5:	42 
  401ca6:	41 c7 46 2c 4d 49 54 	movl   $0x5254494d,0x2c(%r14)
  401cad:	52 
  401cae:	41 c7 46 30 5f 4d 41 	movl   $0x58414d5f,0x30(%r14)
  401cb5:	58 
  401cb6:	41 c7 46 34 42 55 46 	movl   $0x465542,0x34(%r14)
  401cbd:	00 
  401cbe:	44 89 ef             	mov    %r13d,%edi
  401cc1:	e8 1a ef ff ff       	callq  400be0 <close@plt>
  401cc6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ccb:	e9 6f 05 00 00       	jmpq   40223f <submitr+0x87a>
  401cd0:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
  401cd7:	00 
  401cd8:	b9 00 04 00 00       	mov    $0x400,%ecx
  401cdd:	b8 00 00 00 00       	mov    $0x0,%eax
  401ce2:	48 89 d7             	mov    %rdx,%rdi
  401ce5:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401ce8:	48 89 df             	mov    %rbx,%rdi
  401ceb:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401cf2:	f2 ae                	repnz scas %es:(%rdi),%al
  401cf4:	48 f7 d1             	not    %rcx
  401cf7:	48 83 e9 01          	sub    $0x1,%rcx
  401cfb:	85 c9                	test   %ecx,%ecx
  401cfd:	0f 84 55 05 00 00    	je     402258 <submitr+0x893>
  401d03:	83 e9 01             	sub    $0x1,%ecx
  401d06:	4c 8d 64 0b 01       	lea    0x1(%rbx,%rcx,1),%r12
  401d0b:	48 89 d5             	mov    %rdx,%rbp
  401d0e:	44 0f b6 03          	movzbl (%rbx),%r8d
  401d12:	41 80 f8 2a          	cmp    $0x2a,%r8b
  401d16:	74 2a                	je     401d42 <submitr+0x37d>
  401d18:	41 80 f8 2d          	cmp    $0x2d,%r8b
  401d1c:	74 24                	je     401d42 <submitr+0x37d>
  401d1e:	41 80 f8 2e          	cmp    $0x2e,%r8b
  401d22:	74 1e                	je     401d42 <submitr+0x37d>
  401d24:	41 80 f8 5f          	cmp    $0x5f,%r8b
  401d28:	74 18                	je     401d42 <submitr+0x37d>
  401d2a:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  401d2e:	3c 09                	cmp    $0x9,%al
  401d30:	76 10                	jbe    401d42 <submitr+0x37d>
  401d32:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  401d36:	3c 19                	cmp    $0x19,%al
  401d38:	76 08                	jbe    401d42 <submitr+0x37d>
  401d3a:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  401d3e:	3c 19                	cmp    $0x19,%al
  401d40:	77 0a                	ja     401d4c <submitr+0x387>
  401d42:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  401d46:	48 83 c5 01          	add    $0x1,%rbp
  401d4a:	eb 68                	jmp    401db4 <submitr+0x3ef>
  401d4c:	41 80 f8 20          	cmp    $0x20,%r8b
  401d50:	75 0a                	jne    401d5c <submitr+0x397>
  401d52:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401d56:	48 83 c5 01          	add    $0x1,%rbp
  401d5a:	eb 58                	jmp    401db4 <submitr+0x3ef>
  401d5c:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  401d60:	3c 5f                	cmp    $0x5f,%al
  401d62:	76 06                	jbe    401d6a <submitr+0x3a5>
  401d64:	41 80 f8 09          	cmp    $0x9,%r8b
  401d68:	75 5c                	jne    401dc6 <submitr+0x401>
  401d6a:	45 0f b6 c0          	movzbl %r8b,%r8d
  401d6e:	b9 60 2d 40 00       	mov    $0x402d60,%ecx
  401d73:	ba 08 00 00 00       	mov    $0x8,%edx
  401d78:	be 01 00 00 00       	mov    $0x1,%esi
  401d7d:	48 8d bc 24 70 a0 00 	lea    0xa070(%rsp),%rdi
  401d84:	00 
  401d85:	b8 00 00 00 00       	mov    $0x0,%eax
  401d8a:	e8 81 ef ff ff       	callq  400d10 <__sprintf_chk@plt>
  401d8f:	0f b6 84 24 70 a0 00 	movzbl 0xa070(%rsp),%eax
  401d96:	00 
  401d97:	88 45 00             	mov    %al,0x0(%rbp)
  401d9a:	0f b6 84 24 71 a0 00 	movzbl 0xa071(%rsp),%eax
  401da1:	00 
  401da2:	88 45 01             	mov    %al,0x1(%rbp)
  401da5:	0f b6 84 24 72 a0 00 	movzbl 0xa072(%rsp),%eax
  401dac:	00 
  401dad:	88 45 02             	mov    %al,0x2(%rbp)
  401db0:	48 83 c5 03          	add    $0x3,%rbp
  401db4:	48 83 c3 01          	add    $0x1,%rbx
  401db8:	4c 39 e3             	cmp    %r12,%rbx
  401dbb:	0f 85 4d ff ff ff    	jne    401d0e <submitr+0x349>
  401dc1:	e9 92 04 00 00       	jmpq   402258 <submitr+0x893>
  401dc6:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401dcd:	41 c7 46 04 72 3a 20 	movl   $0x52203a72,0x4(%r14)
  401dd4:	52 
  401dd5:	41 c7 46 08 65 73 75 	movl   $0x6c757365,0x8(%r14)
  401ddc:	6c 
  401ddd:	41 c7 46 0c 74 20 73 	movl   $0x74732074,0xc(%r14)
  401de4:	74 
  401de5:	41 c7 46 10 72 69 6e 	movl   $0x676e6972,0x10(%r14)
  401dec:	67 
  401ded:	41 c7 46 14 20 63 6f 	movl   $0x6e6f6320,0x14(%r14)
  401df4:	6e 
  401df5:	41 c7 46 18 74 61 69 	movl   $0x6e696174,0x18(%r14)
  401dfc:	6e 
  401dfd:	41 c7 46 1c 73 20 61 	movl   $0x6e612073,0x1c(%r14)
  401e04:	6e 
  401e05:	41 c7 46 20 20 69 6c 	movl   $0x6c6c6920,0x20(%r14)
  401e0c:	6c 
  401e0d:	41 c7 46 24 65 67 61 	movl   $0x6c616765,0x24(%r14)
  401e14:	6c 
  401e15:	41 c7 46 28 20 6f 72 	movl   $0x20726f20,0x28(%r14)
  401e1c:	20 
  401e1d:	41 c7 46 2c 75 6e 70 	movl   $0x72706e75,0x2c(%r14)
  401e24:	72 
  401e25:	41 c7 46 30 69 6e 74 	movl   $0x61746e69,0x30(%r14)
  401e2c:	61 
  401e2d:	41 c7 46 34 62 6c 65 	movl   $0x20656c62,0x34(%r14)
  401e34:	20 
  401e35:	41 c7 46 38 63 68 61 	movl   $0x72616863,0x38(%r14)
  401e3c:	72 
  401e3d:	41 c7 46 3c 61 63 74 	movl   $0x65746361,0x3c(%r14)
  401e44:	65 
  401e45:	66 41 c7 46 40 72 2e 	movw   $0x2e72,0x40(%r14)
  401e4c:	41 c6 46 42 00       	movb   $0x0,0x42(%r14)
  401e51:	44 89 ef             	mov    %r13d,%edi
  401e54:	e8 87 ed ff ff       	callq  400be0 <close@plt>
  401e59:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401e5e:	e9 dc 03 00 00       	jmpq   40223f <submitr+0x87a>
  401e63:	48 89 da             	mov    %rbx,%rdx
  401e66:	48 89 ee             	mov    %rbp,%rsi
  401e69:	44 89 ef             	mov    %r13d,%edi
  401e6c:	e8 3f ed ff ff       	callq  400bb0 <write@plt>
  401e71:	48 85 c0             	test   %rax,%rax
  401e74:	7f 11                	jg     401e87 <submitr+0x4c2>
  401e76:	e8 05 ed ff ff       	callq  400b80 <__errno_location@plt>
  401e7b:	83 38 04             	cmpl   $0x4,(%rax)
  401e7e:	66 90                	xchg   %ax,%ax
  401e80:	75 12                	jne    401e94 <submitr+0x4cf>
  401e82:	b8 00 00 00 00       	mov    $0x0,%eax
  401e87:	48 01 c5             	add    %rax,%rbp
  401e8a:	48 29 c3             	sub    %rax,%rbx
  401e8d:	75 d4                	jne    401e63 <submitr+0x49e>
  401e8f:	4d 85 e4             	test   %r12,%r12
  401e92:	79 79                	jns    401f0d <submitr+0x548>
  401e94:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401e9b:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  401ea2:	43 
  401ea3:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  401eaa:	6e 
  401eab:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  401eb2:	6e 
  401eb3:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401eba:	65 
  401ebb:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401ec2:	20 
  401ec3:	41 c7 46 18 77 72 69 	movl   $0x74697277,0x18(%r14)
  401eca:	74 
  401ecb:	41 c7 46 1c 65 20 74 	movl   $0x6f742065,0x1c(%r14)
  401ed2:	6f 
  401ed3:	41 c7 46 20 20 74 68 	movl   $0x65687420,0x20(%r14)
  401eda:	65 
  401edb:	41 c7 46 24 20 41 75 	movl   $0x74754120,0x24(%r14)
  401ee2:	74 
  401ee3:	41 c7 46 28 6f 6c 61 	movl   $0x62616c6f,0x28(%r14)
  401eea:	62 
  401eeb:	41 c7 46 2c 20 73 65 	movl   $0x72657320,0x2c(%r14)
  401ef2:	72 
  401ef3:	41 c7 46 30 76 65 72 	movl   $0x726576,0x30(%r14)
  401efa:	00 
  401efb:	44 89 ef             	mov    %r13d,%edi
  401efe:	e8 dd ec ff ff       	callq  400be0 <close@plt>
  401f03:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f08:	e9 32 03 00 00       	jmpq   40223f <submitr+0x87a>
  401f0d:	44 89 6c 24 50       	mov    %r13d,0x50(%rsp)
  401f12:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
  401f19:	00 
  401f1a:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
  401f1f:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  401f24:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f29:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
  401f30:	00 
  401f31:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  401f36:	e8 45 f9 ff ff       	callq  401880 <rio_readlineb>
  401f3b:	48 85 c0             	test   %rax,%rax
  401f3e:	0f 8f 90 00 00 00    	jg     401fd4 <submitr+0x60f>
  401f44:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401f4b:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  401f52:	43 
  401f53:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  401f5a:	6e 
  401f5b:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  401f62:	6e 
  401f63:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401f6a:	65 
  401f6b:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401f72:	20 
  401f73:	41 c7 46 18 72 65 61 	movl   $0x64616572,0x18(%r14)
  401f7a:	64 
  401f7b:	41 c7 46 1c 20 66 69 	movl   $0x72696620,0x1c(%r14)
  401f82:	72 
  401f83:	41 c7 46 20 73 74 20 	movl   $0x68207473,0x20(%r14)
  401f8a:	68 
  401f8b:	41 c7 46 24 65 61 64 	movl   $0x65646165,0x24(%r14)
  401f92:	65 
  401f93:	41 c7 46 28 72 20 66 	movl   $0x72662072,0x28(%r14)
  401f9a:	72 
  401f9b:	41 c7 46 2c 6f 6d 20 	movl   $0x41206d6f,0x2c(%r14)
  401fa2:	41 
  401fa3:	41 c7 46 30 75 74 6f 	movl   $0x6c6f7475,0x30(%r14)
  401faa:	6c 
  401fab:	41 c7 46 34 61 62 20 	movl   $0x73206261,0x34(%r14)
  401fb2:	73 
  401fb3:	41 c7 46 38 65 72 76 	movl   $0x65767265,0x38(%r14)
  401fba:	65 
  401fbb:	66 41 c7 46 3c 72 00 	movw   $0x72,0x3c(%r14)
  401fc2:	44 89 ef             	mov    %r13d,%edi
  401fc5:	e8 16 ec ff ff       	callq  400be0 <close@plt>
  401fca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401fcf:	e9 6b 02 00 00       	jmpq   40223f <submitr+0x87a>
  401fd4:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
  401fdb:	00 
  401fdc:	48 8d 4c 24 4c       	lea    0x4c(%rsp),%rcx
  401fe1:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
  401fe8:	00 
  401fe9:	be 67 2d 40 00       	mov    $0x402d67,%esi
  401fee:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
  401ff5:	00 
  401ff6:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffb:	e8 80 ec ff ff       	callq  400c80 <__isoc99_sscanf@plt>
  402000:	e9 a6 00 00 00       	jmpq   4020ab <submitr+0x6e6>
  402005:	ba 00 20 00 00       	mov    $0x2000,%edx
  40200a:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
  402011:	00 
  402012:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  402017:	e8 64 f8 ff ff       	callq  401880 <rio_readlineb>
  40201c:	48 85 c0             	test   %rax,%rax
  40201f:	0f 8f 86 00 00 00    	jg     4020ab <submitr+0x6e6>
  402025:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  40202c:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  402033:	43 
  402034:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  40203b:	6e 
  40203c:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  402043:	6e 
  402044:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  40204b:	65 
  40204c:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  402053:	20 
  402054:	41 c7 46 18 72 65 61 	movl   $0x64616572,0x18(%r14)
  40205b:	64 
  40205c:	41 c7 46 1c 20 68 65 	movl   $0x61656820,0x1c(%r14)
  402063:	61 
  402064:	41 c7 46 20 64 65 72 	movl   $0x73726564,0x20(%r14)
  40206b:	73 
  40206c:	41 c7 46 24 20 66 72 	movl   $0x6f726620,0x24(%r14)
  402073:	6f 
  402074:	41 c7 46 28 6d 20 41 	movl   $0x7541206d,0x28(%r14)
  40207b:	75 
  40207c:	41 c7 46 2c 74 6f 6c 	movl   $0x616c6f74,0x2c(%r14)
  402083:	61 
  402084:	41 c7 46 30 62 20 73 	movl   $0x65732062,0x30(%r14)
  40208b:	65 
  40208c:	41 c7 46 34 72 76 65 	movl   $0x72657672,0x34(%r14)
  402093:	72 
  402094:	41 c6 46 38 00       	movb   $0x0,0x38(%r14)
  402099:	44 89 ef             	mov    %r13d,%edi
  40209c:	e8 3f eb ff ff       	callq  400be0 <close@plt>
  4020a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020a6:	e9 94 01 00 00       	jmpq   40223f <submitr+0x87a>
  4020ab:	80 bc 24 60 20 00 00 	cmpb   $0xd,0x2060(%rsp)
  4020b2:	0d 
  4020b3:	0f 85 4c ff ff ff    	jne    402005 <submitr+0x640>
  4020b9:	80 bc 24 61 20 00 00 	cmpb   $0xa,0x2061(%rsp)
  4020c0:	0a 
  4020c1:	0f 85 3e ff ff ff    	jne    402005 <submitr+0x640>
  4020c7:	80 bc 24 62 20 00 00 	cmpb   $0x0,0x2062(%rsp)
  4020ce:	00 
  4020cf:	0f 85 30 ff ff ff    	jne    402005 <submitr+0x640>
  4020d5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020da:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
  4020e1:	00 
  4020e2:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  4020e7:	e8 94 f7 ff ff       	callq  401880 <rio_readlineb>
  4020ec:	48 85 c0             	test   %rax,%rax
  4020ef:	0f 8f 91 00 00 00    	jg     402186 <submitr+0x7c1>
  4020f5:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  4020fc:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  402103:	43 
  402104:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  40210b:	6e 
  40210c:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  402113:	6e 
  402114:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  40211b:	65 
  40211c:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  402123:	20 
  402124:	41 c7 46 18 72 65 61 	movl   $0x64616572,0x18(%r14)
  40212b:	64 
  40212c:	41 c7 46 1c 20 73 74 	movl   $0x61747320,0x1c(%r14)
  402133:	61 
  402134:	41 c7 46 20 74 75 73 	movl   $0x20737574,0x20(%r14)
  40213b:	20 
  40213c:	41 c7 46 24 6d 65 73 	movl   $0x7373656d,0x24(%r14)
  402143:	73 
  402144:	41 c7 46 28 61 67 65 	movl   $0x20656761,0x28(%r14)
  40214b:	20 
  40214c:	41 c7 46 2c 66 72 6f 	movl   $0x6d6f7266,0x2c(%r14)
  402153:	6d 
  402154:	41 c7 46 30 20 41 75 	movl   $0x74754120,0x30(%r14)
  40215b:	74 
  40215c:	41 c7 46 34 6f 6c 61 	movl   $0x62616c6f,0x34(%r14)
  402163:	62 
  402164:	41 c7 46 38 20 73 65 	movl   $0x72657320,0x38(%r14)
  40216b:	72 
  40216c:	41 c7 46 3c 76 65 72 	movl   $0x726576,0x3c(%r14)
  402173:	00 
  402174:	44 89 ef             	mov    %r13d,%edi
  402177:	e8 64 ea ff ff       	callq  400be0 <close@plt>
  40217c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402181:	e9 b9 00 00 00       	jmpq   40223f <submitr+0x87a>
  402186:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
  40218b:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402192:	74 35                	je     4021c9 <submitr+0x804>
  402194:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
  40219b:	00 
  40219c:	b9 d0 2c 40 00       	mov    $0x402cd0,%ecx
  4021a1:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4021a8:	be 01 00 00 00       	mov    $0x1,%esi
  4021ad:	4c 89 f7             	mov    %r14,%rdi
  4021b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b5:	e8 56 eb ff ff       	callq  400d10 <__sprintf_chk@plt>
  4021ba:	44 89 ef             	mov    %r13d,%edi
  4021bd:	e8 1e ea ff ff       	callq  400be0 <close@plt>
  4021c2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021c7:	eb 76                	jmp    40223f <submitr+0x87a>
  4021c9:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
  4021d0:	00 
  4021d1:	4c 89 f7             	mov    %r14,%rdi
  4021d4:	e8 b7 e9 ff ff       	callq  400b90 <strcpy@plt>
  4021d9:	44 89 ef             	mov    %r13d,%edi
  4021dc:	e8 ff e9 ff ff       	callq  400be0 <close@plt>
  4021e1:	41 0f b6 16          	movzbl (%r14),%edx
  4021e5:	83 ea 4f             	sub    $0x4f,%edx
  4021e8:	75 15                	jne    4021ff <submitr+0x83a>
  4021ea:	41 80 7e 01 4b       	cmpb   $0x4b,0x1(%r14)
  4021ef:	75 0e                	jne    4021ff <submitr+0x83a>
  4021f1:	41 80 7e 02 0a       	cmpb   $0xa,0x2(%r14)
  4021f6:	75 07                	jne    4021ff <submitr+0x83a>
  4021f8:	41 80 7e 03 00       	cmpb   $0x0,0x3(%r14)
  4021fd:	74 3b                	je     40223a <submitr+0x875>
  4021ff:	bf 78 2d 40 00       	mov    $0x402d78,%edi
  402204:	b9 05 00 00 00       	mov    $0x5,%ecx
  402209:	4c 89 f6             	mov    %r14,%rsi
  40220c:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40220e:	40 0f 97 c6          	seta   %sil
  402212:	0f 92 c1             	setb   %cl
  402215:	b8 00 00 00 00       	mov    $0x0,%eax
  40221a:	40 38 ce             	cmp    %cl,%sil
  40221d:	74 20                	je     40223f <submitr+0x87a>
  40221f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402224:	85 d2                	test   %edx,%edx
  402226:	75 17                	jne    40223f <submitr+0x87a>
  402228:	41 80 7e 01 4b       	cmpb   $0x4b,0x1(%r14)
  40222d:	75 10                	jne    40223f <submitr+0x87a>
  40222f:	41 80 7e 02 01       	cmpb   $0x1,0x2(%r14)
  402234:	19 c0                	sbb    %eax,%eax
  402236:	f7 d0                	not    %eax
  402238:	eb 05                	jmp    40223f <submitr+0x87a>
  40223a:	b8 00 00 00 00       	mov    $0x0,%eax
  40223f:	48 8b 94 24 78 a0 00 	mov    0xa078(%rsp),%rdx
  402246:	00 
  402247:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  40224e:	00 00 
  402250:	0f 84 83 00 00 00    	je     4022d9 <submitr+0x914>
  402256:	eb 7c                	jmp    4022d4 <submitr+0x90f>
  402258:	4c 89 7c 24 10       	mov    %r15,0x10(%rsp)
  40225d:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402264:	00 
  402265:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40226a:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  40226f:	48 89 0c 24          	mov    %rcx,(%rsp)
  402273:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402278:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  40227d:	b9 00 2d 40 00       	mov    $0x402d00,%ecx
  402282:	ba 00 20 00 00       	mov    $0x2000,%edx
  402287:	be 01 00 00 00       	mov    $0x1,%esi
  40228c:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
  402293:	00 
  402294:	b8 00 00 00 00       	mov    $0x0,%eax
  402299:	e8 72 ea ff ff       	callq  400d10 <__sprintf_chk@plt>
  40229e:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
  4022a5:	00 
  4022a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4022ab:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4022b2:	f2 ae                	repnz scas %es:(%rdi),%al
  4022b4:	48 f7 d1             	not    %rcx
  4022b7:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
  4022bb:	4c 89 e3             	mov    %r12,%rbx
  4022be:	48 8d ac 24 60 20 00 	lea    0x2060(%rsp),%rbp
  4022c5:	00 
  4022c6:	4d 85 e4             	test   %r12,%r12
  4022c9:	0f 85 94 fb ff ff    	jne    401e63 <submitr+0x49e>
  4022cf:	e9 39 fc ff ff       	jmpq   401f0d <submitr+0x548>
  4022d4:	e8 e7 e8 ff ff       	callq  400bc0 <__stack_chk_fail@plt>
  4022d9:	48 81 c4 88 a0 00 00 	add    $0xa088,%rsp
  4022e0:	5b                   	pop    %rbx
  4022e1:	5d                   	pop    %rbp
  4022e2:	41 5c                	pop    %r12
  4022e4:	41 5d                	pop    %r13
  4022e6:	41 5e                	pop    %r14
  4022e8:	41 5f                	pop    %r15
  4022ea:	c3                   	retq   

00000000004022eb <init_timeout>:
  4022eb:	53                   	push   %rbx
  4022ec:	89 fb                	mov    %edi,%ebx
  4022ee:	85 ff                	test   %edi,%edi
  4022f0:	74 1e                	je     402310 <init_timeout+0x25>
  4022f2:	be 97 19 40 00       	mov    $0x401997,%esi
  4022f7:	bf 0e 00 00 00       	mov    $0xe,%edi
  4022fc:	e8 1f e9 ff ff       	callq  400c20 <signal@plt>
  402301:	85 db                	test   %ebx,%ebx
  402303:	bf 00 00 00 00       	mov    $0x0,%edi
  402308:	0f 49 fb             	cmovns %ebx,%edi
  40230b:	e8 c0 e8 ff ff       	callq  400bd0 <alarm@plt>
  402310:	5b                   	pop    %rbx
  402311:	c3                   	retq   

0000000000402312 <init_driver>:
  402312:	55                   	push   %rbp
  402313:	53                   	push   %rbx
  402314:	48 83 ec 28          	sub    $0x28,%rsp
  402318:	48 89 fd             	mov    %rdi,%rbp
  40231b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402322:	00 00 
  402324:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402329:	31 c0                	xor    %eax,%eax
  40232b:	be 01 00 00 00       	mov    $0x1,%esi
  402330:	bf 0d 00 00 00       	mov    $0xd,%edi
  402335:	e8 e6 e8 ff ff       	callq  400c20 <signal@plt>
  40233a:	be 01 00 00 00       	mov    $0x1,%esi
  40233f:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402344:	e8 d7 e8 ff ff       	callq  400c20 <signal@plt>
  402349:	be 01 00 00 00       	mov    $0x1,%esi
  40234e:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402353:	e8 c8 e8 ff ff       	callq  400c20 <signal@plt>
  402358:	ba 00 00 00 00       	mov    $0x0,%edx
  40235d:	be 01 00 00 00       	mov    $0x1,%esi
  402362:	bf 02 00 00 00       	mov    $0x2,%edi
  402367:	e8 b4 e9 ff ff       	callq  400d20 <socket@plt>
  40236c:	89 c3                	mov    %eax,%ebx
  40236e:	85 c0                	test   %eax,%eax
  402370:	79 4f                	jns    4023c1 <init_driver+0xaf>
  402372:	c7 45 00 45 72 72 6f 	movl   $0x6f727245,0x0(%rbp)
  402379:	c7 45 04 72 3a 20 43 	movl   $0x43203a72,0x4(%rbp)
  402380:	c7 45 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%rbp)
  402387:	c7 45 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%rbp)
  40238e:	c7 45 10 61 62 6c 65 	movl   $0x656c6261,0x10(%rbp)
  402395:	c7 45 14 20 74 6f 20 	movl   $0x206f7420,0x14(%rbp)
  40239c:	c7 45 18 63 72 65 61 	movl   $0x61657263,0x18(%rbp)
  4023a3:	c7 45 1c 74 65 20 73 	movl   $0x73206574,0x1c(%rbp)
  4023aa:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4023b1:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4023b7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023bc:	e9 28 01 00 00       	jmpq   4024e9 <init_driver+0x1d7>
  4023c1:	bf 8b 2b 40 00       	mov    $0x402b8b,%edi
  4023c6:	e8 65 e8 ff ff       	callq  400c30 <gethostbyname@plt>
  4023cb:	48 85 c0             	test   %rax,%rax
  4023ce:	75 68                	jne    402438 <init_driver+0x126>
  4023d0:	c7 45 00 45 72 72 6f 	movl   $0x6f727245,0x0(%rbp)
  4023d7:	c7 45 04 72 3a 20 44 	movl   $0x44203a72,0x4(%rbp)
  4023de:	c7 45 08 4e 53 20 69 	movl   $0x6920534e,0x8(%rbp)
  4023e5:	c7 45 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%rbp)
  4023ec:	c7 45 10 61 62 6c 65 	movl   $0x656c6261,0x10(%rbp)
  4023f3:	c7 45 14 20 74 6f 20 	movl   $0x206f7420,0x14(%rbp)
  4023fa:	c7 45 18 72 65 73 6f 	movl   $0x6f736572,0x18(%rbp)
  402401:	c7 45 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%rbp)
  402408:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  40240f:	c7 45 24 65 72 20 61 	movl   $0x61207265,0x24(%rbp)
  402416:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40241d:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402423:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402427:	89 df                	mov    %ebx,%edi
  402429:	e8 b2 e7 ff ff       	callq  400be0 <close@plt>
  40242e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402433:	e9 b1 00 00 00       	jmpq   4024e9 <init_driver+0x1d7>
  402438:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  40243f:	00 
  402440:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402447:	00 00 
  402449:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40244f:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402453:	48 8b 40 18          	mov    0x18(%rax),%rax
  402457:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  40245c:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402461:	48 8b 30             	mov    (%rax),%rsi
  402464:	e8 d7 e7 ff ff       	callq  400c40 <__memmove_chk@plt>
  402469:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  402470:	ba 10 00 00 00       	mov    $0x10,%edx
  402475:	48 89 e6             	mov    %rsp,%rsi
  402478:	89 df                	mov    %ebx,%edi
  40247a:	e8 51 e8 ff ff       	callq  400cd0 <connect@plt>
  40247f:	85 c0                	test   %eax,%eax
  402481:	79 50                	jns    4024d3 <init_driver+0x1c1>
  402483:	c7 45 00 45 72 72 6f 	movl   $0x6f727245,0x0(%rbp)
  40248a:	c7 45 04 72 3a 20 55 	movl   $0x55203a72,0x4(%rbp)
  402491:	c7 45 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%rbp)
  402498:	c7 45 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%rbp)
  40249f:	c7 45 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%rbp)
  4024a6:	c7 45 14 6e 65 63 74 	movl   $0x7463656e,0x14(%rbp)
  4024ad:	c7 45 18 20 74 6f 20 	movl   $0x206f7420,0x18(%rbp)
  4024b4:	c7 45 1c 73 65 72 76 	movl   $0x76726573,0x1c(%rbp)
  4024bb:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4024c1:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  4024c5:	89 df                	mov    %ebx,%edi
  4024c7:	e8 14 e7 ff ff       	callq  400be0 <close@plt>
  4024cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024d1:	eb 16                	jmp    4024e9 <init_driver+0x1d7>
  4024d3:	89 df                	mov    %ebx,%edi
  4024d5:	e8 06 e7 ff ff       	callq  400be0 <close@plt>
  4024da:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4024e0:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4024e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e9:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  4024ee:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  4024f5:	00 00 
  4024f7:	74 05                	je     4024fe <init_driver+0x1ec>
  4024f9:	e8 c2 e6 ff ff       	callq  400bc0 <__stack_chk_fail@plt>
  4024fe:	48 83 c4 28          	add    $0x28,%rsp
  402502:	5b                   	pop    %rbx
  402503:	5d                   	pop    %rbp
  402504:	c3                   	retq   

0000000000402505 <driver_post>:
  402505:	53                   	push   %rbx
  402506:	48 83 ec 10          	sub    $0x10,%rsp
  40250a:	4c 89 cb             	mov    %r9,%rbx
  40250d:	45 85 c0             	test   %r8d,%r8d
  402510:	74 27                	je     402539 <driver_post+0x34>
  402512:	48 89 ca             	mov    %rcx,%rdx
  402515:	be 7d 2d 40 00       	mov    $0x402d7d,%esi
  40251a:	bf 01 00 00 00       	mov    $0x1,%edi
  40251f:	b8 00 00 00 00       	mov    $0x0,%eax
  402524:	e8 67 e7 ff ff       	callq  400c90 <__printf_chk@plt>
  402529:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40252e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402532:	b8 00 00 00 00       	mov    $0x0,%eax
  402537:	eb 39                	jmp    402572 <driver_post+0x6d>
  402539:	48 85 ff             	test   %rdi,%rdi
  40253c:	74 26                	je     402564 <driver_post+0x5f>
  40253e:	80 3f 00             	cmpb   $0x0,(%rdi)
  402541:	74 21                	je     402564 <driver_post+0x5f>
  402543:	4c 89 0c 24          	mov    %r9,(%rsp)
  402547:	49 89 c9             	mov    %rcx,%r9
  40254a:	49 89 d0             	mov    %rdx,%r8
  40254d:	48 89 f9             	mov    %rdi,%rcx
  402550:	48 89 f2             	mov    %rsi,%rdx
  402553:	be 50 00 00 00       	mov    $0x50,%esi
  402558:	bf 8b 2b 40 00       	mov    $0x402b8b,%edi
  40255d:	e8 63 f4 ff ff       	callq  4019c5 <submitr>
  402562:	eb 0e                	jmp    402572 <driver_post+0x6d>
  402564:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402569:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40256d:	b8 00 00 00 00       	mov    $0x0,%eax
  402572:	48 83 c4 10          	add    $0x10,%rsp
  402576:	5b                   	pop    %rbx
  402577:	c3                   	retq   
  402578:	90                   	nop
  402579:	90                   	nop
  40257a:	90                   	nop
  40257b:	90                   	nop
  40257c:	90                   	nop
  40257d:	90                   	nop
  40257e:	90                   	nop
  40257f:	90                   	nop

0000000000402580 <__libc_csu_init>:
  402580:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  402585:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40258a:	48 8d 2d 93 18 20 00 	lea    0x201893(%rip),%rbp        # 603e24 <__init_array_end>
  402591:	4c 8d 25 8c 18 20 00 	lea    0x20188c(%rip),%r12        # 603e24 <__init_array_end>
  402598:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40259d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4025a2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4025a7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4025ac:	48 83 ec 38          	sub    $0x38,%rsp
  4025b0:	4c 29 e5             	sub    %r12,%rbp
  4025b3:	41 89 fd             	mov    %edi,%r13d
  4025b6:	49 89 f6             	mov    %rsi,%r14
  4025b9:	48 c1 fd 03          	sar    $0x3,%rbp
  4025bd:	49 89 d7             	mov    %rdx,%r15
  4025c0:	e8 73 e5 ff ff       	callq  400b38 <_init>
  4025c5:	48 85 ed             	test   %rbp,%rbp
  4025c8:	74 1c                	je     4025e6 <__libc_csu_init+0x66>
  4025ca:	31 db                	xor    %ebx,%ebx
  4025cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4025d0:	4c 89 fa             	mov    %r15,%rdx
  4025d3:	4c 89 f6             	mov    %r14,%rsi
  4025d6:	44 89 ef             	mov    %r13d,%edi
  4025d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4025dd:	48 83 c3 01          	add    $0x1,%rbx
  4025e1:	48 39 eb             	cmp    %rbp,%rbx
  4025e4:	75 ea                	jne    4025d0 <__libc_csu_init+0x50>
  4025e6:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  4025eb:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  4025f0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  4025f5:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  4025fa:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  4025ff:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  402604:	48 83 c4 38          	add    $0x38,%rsp
  402608:	c3                   	retq   
  402609:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402610 <__libc_csu_fini>:
  402610:	f3 c3                	repz retq 
  402612:	90                   	nop
  402613:	90                   	nop
  402614:	90                   	nop
  402615:	90                   	nop
  402616:	90                   	nop
  402617:	90                   	nop
  402618:	90                   	nop
  402619:	90                   	nop
  40261a:	90                   	nop
  40261b:	90                   	nop
  40261c:	90                   	nop
  40261d:	90                   	nop
  40261e:	90                   	nop
  40261f:	90                   	nop

0000000000402620 <__do_global_ctors_aux>:
  402620:	55                   	push   %rbp
  402621:	48 89 e5             	mov    %rsp,%rbp
  402624:	53                   	push   %rbx
  402625:	48 83 ec 08          	sub    $0x8,%rsp
  402629:	48 8b 05 f8 17 20 00 	mov    0x2017f8(%rip),%rax        # 603e28 <__CTOR_LIST__>
  402630:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  402634:	74 19                	je     40264f <__do_global_ctors_aux+0x2f>
  402636:	bb 28 3e 60 00       	mov    $0x603e28,%ebx
  40263b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402640:	48 83 eb 08          	sub    $0x8,%rbx
  402644:	ff d0                	callq  *%rax
  402646:	48 8b 03             	mov    (%rbx),%rax
  402649:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40264d:	75 f1                	jne    402640 <__do_global_ctors_aux+0x20>
  40264f:	48 83 c4 08          	add    $0x8,%rsp
  402653:	5b                   	pop    %rbx
  402654:	5d                   	pop    %rbp
  402655:	c3                   	retq   
  402656:	90                   	nop
  402657:	90                   	nop

Disassembly of section .fini:

0000000000402658 <_fini>:
  402658:	48 83 ec 08          	sub    $0x8,%rsp
  40265c:	e8 1f e7 ff ff       	callq  400d80 <__do_global_dtors_aux>
  402661:	48 83 c4 08          	add    $0x8,%rsp
  402665:	c3                   	retq   
