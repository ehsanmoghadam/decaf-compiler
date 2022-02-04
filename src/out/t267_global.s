.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_x : .word 0
	global_y : .word 0
	global_t : .word 0
	global_anotherFunction_n : .word 0
	StringLiteral_01: .asciiz "global value of x is "
	global_assignValues_n : .word 0
	global_assignValues_x : .word 0
	StringLiteral_11: .asciiz "local value of x is "
	global_main_NEW_ARRAY_0: .space 404
	global_main_NEW_ARRAY_1: .space 404

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
	global_anotherFunction:
		sw $ra,0($sp)
		addi $sp,$sp,-4
		la $a1, global_anotherFunction_n
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		addi $sp,$sp,4
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $a0, global_x
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
	global_assignValues:
		sw $ra,0($sp)
		addi $sp,$sp,-4
		la $a1, global_assignValues_n
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		addi $sp,$sp,4
		la $a0, global_assignValues_x
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 1
		sw $t0, 0($a3)
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $a0, global_assignValues_x
		lw $t0, 0($a0)
		li $v0, 1
		beq $t0, $zero, printFalseL1
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL1
	printFalseL1:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL1:
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
		la $a0, global_y
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $t0, global_main_NEW_ARRAY_0
		li $t2, 100
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_t
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $t0, global_main_NEW_ARRAY_1
		li $t2, 100
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_x
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 100
		sw $t0, 0($a3)
		li $t0, 99
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_assignValues
		addi $sp, $sp, -4
		li $t0, 99
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_anotherFunction
		addi $sp, $sp, -4
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
