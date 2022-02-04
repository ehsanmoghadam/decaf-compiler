.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_g : .word 0
	global_main_g : .word 0

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
	global_test1:
		sw $ra,0($sp)
		addi $sp,$sp,4
		la $a0, global_g
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 16
		sw $t0, 0($a3)
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
	global_test2:
		sw $ra,0($sp)
		addi $sp,$sp,4
		la $a0, global_g
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
	global_main:
		sw $ra,0($sp)
		addi $sp,$sp,4
		la $a0, global_main_g
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 1
		sw $t0, 0($a3)
		la $a0, global_main_g
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		jal global_test1
		addi $sp, $sp, 0
		la $a0, global_main_g
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		jal global_test2
		addi $sp, $sp, 0
		la $a0, global_main_g
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
