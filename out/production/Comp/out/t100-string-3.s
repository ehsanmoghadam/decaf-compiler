.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_s : .word 0
	StringLiteral_01: .asciiz "Alabama"
	StringLiteral_11: .asciiz "T-Bag"
	StringLiteral_21: .asciiz "Miami"
	StringLiteral_31: .asciiz "Dexter"
	StringLiteral_41: .asciiz "Albuquerque"
	StringLiteral_51: .asciiz "Heisenberg"

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
		la $a0, global_main_s
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $t0, StringLiteral_01
		sw $t0, 0($a3)
		la $a0, global_main_s
		lw $t0, 0($a0)
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_s
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $t0, StringLiteral_11
		sw $t0, 0($a3)
		la $a0, global_main_s
		lw $t0, 0($a0)
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_s
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $t0, StringLiteral_21
		sw $t0, 0($a3)
		la $a0, global_main_s
		lw $t0, 0($a0)
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_s
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $t0, StringLiteral_31
		sw $t0, 0($a3)
		la $a0, global_main_s
		lw $t0, 0($a0)
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_s
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $t0, StringLiteral_41
		sw $t0, 0($a3)
		la $a0, global_main_s
		lw $t0, 0($a0)
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_s
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $t0, StringLiteral_51
		sw $t0, 0($a3)
		la $a0, global_main_s
		lw $t0, 0($a0)
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
