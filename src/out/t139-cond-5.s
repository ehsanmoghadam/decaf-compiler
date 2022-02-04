.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	StringLiteral_01: .asciiz "Hi"
	StringLiteral_11: .asciiz "HI"
	StringLiteral_21: .asciiz "Hi == HI"
	StringLiteral_31: .asciiz "Hi!"
	StringLiteral_41: .asciiz "Hi == Hi!"
	StringLiteral_51: .asciiz "Hi == Hi"
	StringLiteral_61: .asciiz "Hi != Hi"
	StringLiteral_71: .asciiz "Hey"
	StringLiteral_81: .asciiz "Hi != Hey!"

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
	global_main:
		sw $ra,0($sp)
		addi $sp,$sp,4
		la $t0, StringLiteral_01
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $t0, StringLiteral_11
		addi $sp, $sp, -4
		lw $t1 0($sp)
		seq $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L1
		la $t0, StringLiteral_21
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L1exit
L1:
L1exit:
		la $t0, StringLiteral_01
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $t0, StringLiteral_31
		addi $sp, $sp, -4
		lw $t1 0($sp)
		seq $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L2
		la $t0, StringLiteral_41
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L2exit
L2:
L2exit:
		la $t0, StringLiteral_01
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $t0, StringLiteral_01
		addi $sp, $sp, -4
		lw $t1 0($sp)
		seq $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L3
		la $t0, StringLiteral_51
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L3exit
L3:
L3exit:
		la $t0, StringLiteral_01
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $t0, StringLiteral_01
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sne $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L4
		la $t0, StringLiteral_61
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L4exit
L4:
L4exit:
		la $t0, StringLiteral_01
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $t0, StringLiteral_71
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sne $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L5
		la $t0, StringLiteral_81
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L5exit
L5:
L5exit:
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
