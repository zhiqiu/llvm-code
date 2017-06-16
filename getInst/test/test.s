	.file	"test.bc"
	.text
	.globl	add
	.align	16, 0x90
	.type	add,@function
add:                                    # @add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, %eax
	movl	%edi, -12(%rbp)         # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, -16(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	callq	MyRecord
	movl	-12(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %esi         # 4-byte Reload
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	addl	-8(%rbp), %edi
	movl	%edi, %eax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	add, .Ltmp5-add
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %edi
	movl	$0, %esi
	callq	MyRecord
	movl	$2, %edi
	movl	$3, %esi
	movl	$0, -4(%rbp)
	callq	add
	leaq	.L.str, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	printf
	movl	$0, %esi
	movl	%eax, -8(%rbp)          # 4-byte Spill
	movl	%esi, %eax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp11:
	.size	main, .Ltmp11-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4


	.ident	"clang version 3.4.1 (tags/RELEASE_34/dot1-final)"
	.section	".note.GNU-stack","",@progbits
