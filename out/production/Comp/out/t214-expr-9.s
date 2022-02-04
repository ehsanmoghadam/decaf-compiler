.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"

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
		li $t0, 0
		beq $t0 ,0 ItoB0
		li $t0, 1
		j exit_ItoB0
ItoB0:
		li $t0, 0
exit_ItoB0:
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 100
		beq $t0 ,0 ItoB1
		li $t0, 1
		j exit_ItoB1
ItoB1:
		li $t0, 0
exit_ItoB1:
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 5
		neg $t0, $t0
		beq $t0 ,0 ItoB2
		li $t0, 1
		j exit_ItoB2
ItoB2:
		li $t0, 0
exit_ItoB2:
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
