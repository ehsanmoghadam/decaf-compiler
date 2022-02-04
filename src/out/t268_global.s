.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_a : .word 0
	global_foo_a : .word 0
	global_foo_c : .word 0
	StringLiteral_01: .asciiz "ok"
	StringLiteral_11: .asciiz " wacky."
	global_main_b : .word 0

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
	global_foo:
		sw $ra,0($sp)
		addi $sp,$sp,-8
		la $a1, global_foo_a
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_foo_c
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		addi $sp,$sp,4
		la $a0, global_foo_c
		lw $t0, 0($a0)
		beq $t0, 0, L1
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_foo_a
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
		j L1exit
L1:
		la $a0, global_foo_a
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L1exit:
		li $t0, 18
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
	global_main:
		sw $ra,0($sp)
		addi $sp,$sp,4
		la $a0, global_a
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 10
		sw $t0, 0($a3)
		la $a0, global_main_b
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_a
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		la $a0, global_a
		lw $t0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_foo
		addi $sp, $sp, -8
		la $a0, global_main_b
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_a
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_b
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sle $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_foo
		addi $sp, $sp, -8
		li $t0, 3
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 0
		addi $sp, $sp, -4
		lw $t1, 0($sp)
		and $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_foo
		addi $sp, $sp, -8
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		xori $t0, $t0, 1
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_foo
		addi $sp, $sp, -8
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
