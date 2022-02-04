.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_x : .word 0
	global_main_y : .word 0
	StringLiteral_01: .asciiz "true"

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
		la $a0, global_main_x
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($a3)
		la $a0, global_main_y
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($a3)
		la $a0, global_main_x
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_y
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sgt $t1, $t1, $t0
		move $t0, $t1
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
L1exit:
		la $a0, global_main_x
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($a3)
		la $a0, global_main_y
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($a3)
		la $a0, global_main_x
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_y
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
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
L2exit:
		la $a0, global_main_x
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($a3)
		la $a0, global_main_y
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $v0, 5
		syscall
		move $t0, $v0

		neg $t0, $t0
		sw $t0, 0($a3)
		la $a0, global_main_y
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 0
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_x
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
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
L3exit:
		la $a0, global_main_x
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $v0, 5
		syscall
		move $t0, $v0

		sw $t0, 0($a3)
		la $a0, global_main_y
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_x
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		la $a0, global_main_x
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_y
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		seq $t1, $t1, $t0
		move $t0, $t1
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
L4exit:
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
