.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_b : .word 0
	StringLiteral_01: .asciiz "true"
	StringLiteral_11: .asciiz "false"

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
		la $a0, global_main_b
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 5
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 6
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		la $a0, global_main_b
		lw $t0, 0($a0)
		beq $t0, 0, L1
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L1exit
L1:
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L1exit:
		la $a0, global_main_b
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 5
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 6
		addi $sp, $sp, -4
		lw $t1 0($sp)
		seq $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1, 0($sp)
		and $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		la $a0, global_main_b
		lw $t0, 0($a0)
		beq $t0, 0, L2
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L2exit
L2:
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L2exit:
		la $a0, global_main_b
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 5
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 6
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sne $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		la $a0, global_main_b
		lw $t0, 0($a0)
		beq $t0, 0, L3
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L3exit
L3:
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L3exit:
		la $a0, global_main_b
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 5
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 6
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sge $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		la $a0, global_main_b
		lw $t0, 0($a0)
		beq $t0, 0, L4
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L4exit
L4:
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L4exit:
		la $a0, global_main_b
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 5
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 6
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 0
		addi $sp, $sp, -4
		lw $t1, 0($sp)
		or $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		la $a0, global_main_b
		lw $t0, 0($a0)
		beq $t0, 0, L5
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L5exit
L5:
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L5exit:
		la $a0, global_main_b
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 5
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 6
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 0
		addi $sp, $sp, -4
		lw $t1, 0($sp)
		and $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		la $a0, global_main_b
		lw $t0, 0($a0)
		beq $t0, 0, L6
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L6exit
L6:
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L6exit:
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
