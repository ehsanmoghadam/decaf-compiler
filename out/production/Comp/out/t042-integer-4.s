.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_x : .word 0
	global_main_y : .word 0
	global_main_z : .word 0

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
		li $t0, 256
		sw $t0, 0($a3)
		la $a0, global_main_y
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_x
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		la $a0, global_main_y
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_y
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 1
		neg $t0, $t0
		sw $t0, 0($a3)
		la $a0, global_main_y
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_z
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 584477
		sw $t0, 0($a3)
		la $a0, global_main_y
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_z
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		la $a0, global_main_x
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_y
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		la $a0, global_main_x
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_z
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
