.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_test_a1 : .word 0
	global_test_a2 : .word 0
	global_test_a3 : .word 0
	global_test_a4 : .word 0
	global_test_a5 : .word 0
	global_test_a6 : .word 0
	global_test_a7 : .word 0
	global_test_a8 : .word 0
	global_test_a9 : .word 0
	global_test_a10 : .word 0
	global_test_a11 : .word 0
	global_test_a12 : .word 0
	global_test_a13 : .word 0
	global_test_a14 : .word 0
	global_test_a15 : .word 0
	global_test_a16 : .word 0
	global_test_a17 : .word 0
	global_test_a18 : .word 0
	global_test_a19 : .word 0
	global_test_a20 : .word 0
	global_test_a21 : .word 0
	global_test_a22 : .word 0
	global_test_a23 : .word 0
	global_test_a24 : .word 0
	global_test_a25 : .word 0
	global_test_a26 : .word 0
	global_test_a27 : .word 0
	global_test_a28 : .word 0
	global_test_a29 : .word 0
	global_test_a30 : .word 0
	global_test_a31 : .word 0
	global_test_a32 : .word 0
	global_test_a33 : .word 0
	global_test_a34 : .word 0
	global_test_a35 : .word 0
	global_test_a36 : .word 0
	global_test_a37 : .word 0
	global_test_a38 : .word 0
	global_test_a39 : .word 0
	global_test_a40 : .word 0
	global_test_a41 : .word 0
	global_test_a42 : .word 0
	global_test_a43 : .word 0
	global_test_a44 : .word 0
	global_test_a45 : .word 0
	global_test_a46 : .word 0
	global_test_a47 : .word 0
	global_test_a48 : .word 0
	global_test_a49 : .word 0
	global_test_a50 : .word 0
	global_test_a51 : .word 0
	global_test_a52 : .word 0
	global_test_a53 : .word 0
	global_test_a54 : .word 0
	global_test_a55 : .word 0
	global_test_a56 : .word 0
	global_test_a57 : .word 0
	global_test_a58 : .word 0
	global_test_a59 : .word 0
	global_test_a60 : .word 0
	global_test_a61 : .word 0
	global_test_a62 : .word 0
	global_test_a63 : .word 0
	global_test_a64 : .word 0
	global_test_a65 : .word 0
	global_test_a66 : .word 0
	global_test_a67 : .word 0
	global_test_a68 : .word 0
	global_test_a69 : .word 0
	global_test_a70 : .word 0
	global_test_a71 : .word 0
	global_test_a72 : .word 0
	global_test_a73 : .word 0
	global_test_a74 : .word 0
	global_test_a75 : .word 0
	global_test_a76 : .word 0
	global_test_a77 : .word 0
	global_test_a78 : .word 0
	global_test_a79 : .word 0
	global_test_a80 : .word 0
	global_test_a81 : .word 0
	global_test_a82 : .word 0
	global_test_a83 : .word 0
	global_test_a84 : .word 0
	global_test_a85 : .word 0
	global_test_a86 : .word 0
	global_test_a87 : .word 0
	global_test_a88 : .word 0
	global_test_a89 : .word 0
	global_test_a90 : .word 0
	global_test_a91 : .word 0
	global_test_a92 : .word 0
	global_test_a93 : .word 0
	global_test_a94 : .word 0
	global_test_a95 : .word 0
	global_test_a96 : .word 0
	global_test_a97 : .word 0
	global_test_a98 : .word 0
	global_test_a99 : .word 0
	global_test_a100 : .word 0
	StringLiteral_01: .asciiz "args: "
	StringLiteral_11: .asciiz " "

.text
	.globl main

	main:
		jal global_main
		#END OF PROGRAM
		li $v0,10
		syscall
	runtime_error:
		li $v0, 4
		la $a0, error
		syscall
		#END OF PROGRAM
		li $v0,10
		syscall
	global_test:
		sw $ra,0($sp)
		addi $sp,$sp,-400
		la $a1, global_test_a1
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a2
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a3
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a4
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a5
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a6
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a7
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a8
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a9
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a10
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a11
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a12
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a13
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a14
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a15
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a16
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a17
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a18
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a19
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a20
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a21
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a22
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a23
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a24
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a25
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a26
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a27
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a28
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a29
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a30
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a31
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a32
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a33
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a34
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a35
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a36
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a37
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a38
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a39
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a40
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a41
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a42
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a43
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a44
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a45
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a46
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a47
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a48
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a49
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a50
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a51
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a52
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a53
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a54
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a55
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a56
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a57
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a58
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a59
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a60
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a61
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a62
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a63
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a64
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a65
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a66
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a67
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a68
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a69
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a70
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a71
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a72
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a73
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a74
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a75
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a76
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a77
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a78
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a79
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a80
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a81
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a82
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a83
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a84
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a85
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a86
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a87
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a88
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a89
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a90
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a91
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a92
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a93
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a94
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a95
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a96
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a97
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a98
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a99
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_a100
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		addi $sp,$sp,4
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $a0, global_test_a15
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $a0, global_test_a72
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $a0, global_test_a100
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
	global_main:
		sw $ra,0($sp)
		addi $sp,$sp,4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_test
		addi $sp, $sp, -400
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
