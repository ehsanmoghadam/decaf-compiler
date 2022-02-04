.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_test_x : .word 0
	global_test_y : .word 0
	global_test_z : .word 0
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
		addi $sp,$sp,-12
		la $a1, global_test_x
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_y
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_test_z
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		addi $sp,$sp,4
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $a0, global_test_x
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $a0, global_test_y
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $a0, global_test_z
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
		jal global_test
		addi $sp, $sp, -12
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
