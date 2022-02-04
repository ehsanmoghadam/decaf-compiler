.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_factorial_n : .word 0
	global_main_n : .word 0
	StringLiteral_01: .asciiz "Factorial("
	StringLiteral_11: .asciiz ") = "
	StringLiteral_21: .asciiz "\\n"

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
	global_factorial:
		sw $ra,0($sp)
		addi $sp,$sp,-4
		la $a1, global_factorial_n
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		addi $sp,$sp,4
		la $a0, global_factorial_n
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sle $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L1
		li $t0, 1
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
		j L1exit
L1:
L1exit:
		la $a0, global_factorial_n
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_factorial_n
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_factorial
		addi $sp, $sp, -4
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
	global_main:
		sw $ra,0($sp)
		addi $sp,$sp,4
		la $a0, global_main_n
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 1
		sw $t0, 0($a3)
		L2F:
		la $a0, global_main_n
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 15
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sle $t1, $t1, $t0
		move $t0, $t1
		beq $t0, $zero exitL2F
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $a0, global_main_n
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $a0, global_main_n
		lw $t0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_factorial
		addi $sp, $sp, -4
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_21
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		L2Fupdate:
		la $a0, global_main_n
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_n
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		j L2F
		exitL2F:
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
