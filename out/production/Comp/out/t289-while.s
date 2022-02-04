.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	StringLiteral_01: .asciiz "hey"
	StringLiteral_11: .asciiz "huy"
	StringLiteral_21: .asciiz "hoy"

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
		L1:
		li $v0, 5
		syscall
		move $t0, $v0

		beq $t0 ,0 ItoB0
		li $t0, 1
		j exit_ItoB0
ItoB0:
		li $t0, 0
exit_ItoB0:
		beq $t0, $zero exitL1
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		L2:
		li $v0, 5
		syscall
		move $t0, $v0

		beq $t0 ,0 ItoB1
		li $t0, 1
		j exit_ItoB1
ItoB1:
		li $t0, 0
exit_ItoB1:
		beq $t0, $zero exitL2
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L2
		exitL2:
		j L1
		exitL1:
		L3:
		li $v0, 5
		syscall
		move $t0, $v0

		beq $t0 ,0 ItoB2
		li $t0, 1
		j exit_ItoB2
ItoB2:
		li $t0, 0
exit_ItoB2:
		beq $t0, $zero exitL3
		la $t0, StringLiteral_21
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L3
		exitL3:
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
