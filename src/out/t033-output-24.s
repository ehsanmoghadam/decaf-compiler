.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	StringLiteral_01: .asciiz "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam condimentum lobortis ultricies. Phasellus a ultricies eros. Mauris quis posuere elit."
	StringLiteral_11: .asciiz "Lorem"
	StringLiteral_21: .asciiz "ipsum"
	StringLiteral_31: .asciiz "dolor"
	StringLiteral_41: .asciiz "sit"
	StringLiteral_51: .asciiz "amet"
	StringLiteral_61: .asciiz "consectetur"
	StringLiteral_71: .asciiz "adipiscing"
	StringLiteral_81: .asciiz "elit."
	StringLiteral_91: .asciiz "Aliquam"
	StringLiteral_101: .asciiz "condimentum"
	StringLiteral_111: .asciiz "lobortis"
	StringLiteral_121: .asciiz "ultricies."
	StringLiteral_131: .asciiz "Phasellus"
	StringLiteral_141: .asciiz "a"
	StringLiteral_151: .asciiz "ultricies"
	StringLiteral_161: .asciiz "eros."
	StringLiteral_171: .asciiz "Mauris"
	StringLiteral_181: .asciiz "quis"
	StringLiteral_191: .asciiz "posuere"

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
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_21
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_31
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_41
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_51
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_61
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_71
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_81
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_91
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_101
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_111
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_121
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_131
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_141
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_151
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_161
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_171
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_181
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_191
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_81
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
