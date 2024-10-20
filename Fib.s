	.file	"Fib.c"
	.text
	.p2align 4
	.globl	fib
	.type	fib, @function
fib:
.LFB23:
	.cfi_startproc
.L2:
	xor	%rax, %rax            # Fancy way of setting %r8 to 0
	movl	$1, %r8d            # Having 
.L1:
	leaq	(%rax, %r8), %rsi
	movq	%r8, %rax
	movq	%rsi, %r8
	decq	%rdi
	jg	.L1
.L3:
	ret                # swapping %r8 and %rax removes need for movq before ret
	.cfi_endproc
.LFE23:
	.size	fib, .-fib
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
