.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	block_0_t : .word 0

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
		li $t0, 10
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 0
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sgt $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L1
		la $a0, block_0_t
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 5
		sw $t0, 0($a3)
		la $a0, block_0_t
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L1exit
L1:
L1exit:
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
