.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	userInput_L1:	.space	600

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
		li $v0, 8
		la $a0, userInput_L1
		li $a1, 600
		syscall
		move $t0, $a0

		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
