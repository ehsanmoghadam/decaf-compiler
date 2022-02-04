.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_d1 : .float 0.0
	global_main_d2 : .float 0.0
	global_main_d3 : .float 0.0
	global_main_d4 : .float 0.0
	global_main_d5 : .float 0.0
	global_main_d6 : .float 0.0
	global_main_d7 : .float 0.0
	global_main_d8 : .float 0.0
	global_main_r : .word 0
	global_main_temp0: .float 69.824135
	global_main_temp1: .float 960.70715
	global_main_temp2: .float 0.52817947
	global_main_temp3: .float 0.52817947
	global_main_temp4: .float 5039.129
	global_main_temp5: .float 7585.801
	global_main_temp6: .float 11748.636
	global_main_temp7: .float 13446.896

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
		la $a0, global_main_d1
		l.s $f0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp0
		l.s $f0, 0($a0)
		s.s $f0, 0($a3)
		la $a0, global_main_d2
		l.s $f0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp1
		l.s $f0, 0($a0)
		s.s $f0, 0($a3)
		la $a0, global_main_d3
		l.s $f0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp2
		l.s $f0, 0($a0)
		s.s $f0, 0($a3)
		la $a0, global_main_d4
		l.s $f0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp3
		l.s $f0, 0($a0)
		s.s $f0, 0($a3)
		la $a0, global_main_d5
		l.s $f0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp4
		l.s $f0, 0($a0)
		neg.s $f0, $f0
		s.s $f0, 0($a3)
		la $a0, global_main_d6
		l.s $f0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp5
		l.s $f0, 0($a0)
		s.s $f0, 0($a3)
		la $a0, global_main_d7
		l.s $f0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp6
		l.s $f0, 0($a0)
		neg.s $f0, $f0
		s.s $f0, 0($a3)
		la $a0, global_main_d8
		l.s $f0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp7
		l.s $f0, 0($a0)
		neg.s $f0, $f0
		s.s $f0, 0($a3)
		la $a0, global_main_r
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_d1
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_d2
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.eq.s $f0, $f1
		bc1f L_CondFalse0
		li $t0 0
		j L_CondEnd0
		L_CondFalse0: li $t0 1
		L_CondEnd0:
		mov.s $f0, $f1
		sw $t0, 0($a3)
		la $a0, global_main_r
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
		la $a0, global_main_r
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_d3
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_d4
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.eq.s $f0, $f1
		bc1f L_CondFalse1
		li $t0 0
		j L_CondEnd1
		L_CondFalse1: li $t0 1
		L_CondEnd1:
		mov.s $f0, $f1
		sw $t0, 0($a3)
		la $a0, global_main_r
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
		la $a0, global_main_r
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_d5
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_d6
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.eq.s $f0, $f1
		bc1f L_CondFalse2
		li $t0 0
		j L_CondEnd2
		L_CondFalse2: li $t0 1
		L_CondEnd2:
		mov.s $f0, $f1
		sw $t0, 0($a3)
		la $a0, global_main_r
		lw $t0, 0($a0)
		li $v0, 1
		beq $t0, $zero, printFalseL3
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL3
	printFalseL3:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL3:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_r
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_d7
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_d8
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.eq.s $f0, $f1
		bc1f L_CondFalse3
		li $t0 0
		j L_CondEnd3
		L_CondFalse3: li $t0 1
		L_CondEnd3:
		mov.s $f0, $f1
		sw $t0, 0($a3)
		la $a0, global_main_r
		lw $t0, 0($a0)
		li $v0, 1
		beq $t0, $zero, printFalseL4
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL4
	printFalseL4:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL4:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
