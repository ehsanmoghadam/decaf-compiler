.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_f_x : .word 0
	global_f_y : .word 0
	global_f_z : .word 0
	global_f_a : .float 0.0
	global_f_temp0: .float 2.5
	StringLiteral_01: .asciiz "ok"
	block_0_temp1: .float 1.5123
	StringLiteral_11: .asciiz "not ok"
	global_main_x : .word 0
	global_main_y : .word 0
	global_main_aa : .float 0.0
	global_main_temp2: .float 10.2
	global_main_temp3: .float 10.2
	StringLiteral_21: .asciiz "true"

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
	global_f:
		sw $ra,0($sp)
		addi $sp,$sp,-16
		la $a1, global_f_x
		l.s $f1, 0($sp)
		s.s $f1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_f_y
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_f_z
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_f_a
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		addi $sp,$sp,4
		la $a0, global_f_x
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		seq $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_f_y
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		addi $sp, $sp, -4
		lw $t1 0($sp)
		seq $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1, 0($sp)
		and $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_f_z
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		seq $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1, 0($sp)
		and $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_f_a
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_f_temp0
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.lt.s $f0, $f1
		bc1f L_CondFalse0
		li $t0 1
		j L_CondEnd0
		L_CondFalse0 : li $t0 0
		L_CondEnd0:
		mov.s $f0, $f1
		addi $sp, $sp, -4
		lw $t1, 0($sp)
		and $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L1
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_f_x
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 10
		sw $t0, 0($a3)
		la $a0, global_f_y
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 100
		sw $t0, 0($a3)
		la $a0, global_f_z
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 0
		sw $t0, 0($a3)
		la $a0, global_f_a
		l.s $f0, 0($a0)
		la $a3, 0($a0) 
		la $a0, block_0_temp1
		l.s $f0, 0($a0)
		s.s $f0, 0($a3)
		li $t0, 0
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
		j L1exit
L1:
L1exit:
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 0
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
	global_main:
		sw $ra,0($sp)
		addi $sp,$sp,4
		la $a0, global_main_x
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 1
		sw $t0, 0($a3)
		la $a0, global_main_y
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 1
		sw $t0, 0($a3)
		la $a0, global_main_aa
		l.s $f0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp2
		l.s $f0, 0($a0)
		s.s $f0, 0($a3)
		la $a0, global_main_x
		lw $t0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_y
		lw $t0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp3
		l.s $f0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_f
		addi $sp, $sp, -16
		la $a0, global_main_x
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
		beq $t0, 0, L2
		la $t0, StringLiteral_21
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L2exit
L2:
L2exit:
		la $a0, global_main_aa
		l.s $f0, 0($a0)
		li $v0, 2
		mov.d	$f12, $f0
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
