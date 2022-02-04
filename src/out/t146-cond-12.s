.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_num_temp0: .float 6.5
	global_main_temp1: .float 6.0
	StringLiteral_01: .asciiz "true"
	StringLiteral_11: .asciiz "false"
	global_main_temp2: .float 6.0

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
	global_num:
		sw $ra,0($sp)
		addi $sp,$sp,4
		la $a0, global_num_temp0
		l.s $f0, 0($a0)
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
	global_main:
		sw $ra,0($sp)
		addi $sp,$sp,4
		jal global_num
		addi $sp, $sp, 0
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp1
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.le.s $f0, $f1
		bc1f L_CondFalse0
		li $t0 1
		j L_CondEnd0
		L_CondFalse0 : li $t0 0
		L_CondEnd0:
		mov.s $f0, $f1
		beq $t0, 0, L1
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L1exit
L1:
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L1exit:
		jal global_num
		addi $sp, $sp, 0
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp2
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.eq.s $f1, $f0
		bc1f L_CondFalse1
		li $t0 1
		j L_CondEnd1
		L_CondFalse1 : li $t0 0
		L_CondEnd1:
		mov.s $f0, $f1
		beq $t0, 0, L2
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L2exit
L2:
		la $t0, StringLiteral_11
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L2exit:
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
