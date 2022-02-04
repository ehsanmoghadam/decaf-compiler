.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_x : .word 0

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
		li $t0, 2
		sw $t0, 0($a3)
		L1F:
		li $t0, 1
		beq $t0, $zero exitL1F
		la $a0, global_main_x
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_x
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
		la $a0, global_main_x
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 4
		addi $sp, $sp, -4
		lw $t1 0($sp)
		seq $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L2
		j exitL1F
		j L2exit
L2:
L2exit:
		la $a0, global_main_x
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		L1Fupdate:
		j L1F
		exitL1F:
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
