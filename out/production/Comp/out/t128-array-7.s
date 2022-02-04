.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_bools : .word 0
	global_main_NEW_ARRAY_0: .space 12

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
		la $a0, global_main_bools
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $t0, global_main_NEW_ARRAY_0
		li $t2, 2
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_bools
		lw $t0, 0($a0)
		la $a0, global_main_bools
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 0
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 0
		sw $t0, 0($a3)
		la $a0, global_main_bools
		lw $t0, 0($a0)
		la $a0, global_main_bools
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 1
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 1
		sw $t0, 0($a3)
		la $a0, global_main_bools
		lw $t0, 0($a0)
		la $a0, global_main_bools
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 1
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
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
		la $a0, global_main_bools
		lw $t0, 0($a0)
		la $a0, global_main_bools
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 0
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		li $v0, 1
		beq $t0, $zero, printFalseL2
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL2
	printFalseL2:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL2:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
