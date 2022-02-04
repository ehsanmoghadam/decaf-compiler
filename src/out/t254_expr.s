.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	StringLiteral_01: .asciiz "wrong"
	global_main_temp0: .float 3.14
	global_main_temp1: .float 3.13
	global_main_temp2: .float 3.14
	global_main_temp3: .float 3.14
	global_main_temp4: .float 2.5
	global_main_temp5: .float 3.0
	global_main_temp6: .float 5.0
	global_main_temp7: .float 100.68
	global_main_temp8: .float 33.99
	global_main_temp9: .float 70.81
	global_main_temp10: .float 31.69
	global_main_temp11: .float 6.52
	global_main_temp12: .float 14.78
	global_main_temp13: .float 22.36
	global_main_temp14: .float 52.21
	global_main_temp15: .float 80.41
	global_main_temp16: .float 86.57
	global_main_temp17: .float 75.12
	global_main_temp18: .float 86.24
	global_main_temp19: .float 55.46
	global_main_temp20: .float 74.48
	global_main_temp21: .float 53.86
	global_main_temp22: .float 48.76
	global_main_temp23: .float 30.3
	global_main_temp24: .float 23.41
	global_main_temp25: .float 84.31
	global_main_temp26: .float 56.89
	global_main_temp27: .float 67.14
	global_main_temp28: .float 59.57
	global_main_temp29: .float 16.15
	global_main_temp30: .float 1776.8
	global_main_temp31: .float 100.68
	global_main_temp32: .float 33.99
	global_main_temp33: .float 70.81
	global_main_temp34: .float 31.69
	global_main_temp35: .float 6.52
	global_main_temp36: .float 14.78
	global_main_temp37: .float 22.36
	global_main_temp38: .float 52.21
	global_main_temp39: .float 80.41
	global_main_temp40: .float 86.57
	global_main_temp41: .float 75.12
	global_main_temp42: .float 86.24
	global_main_temp43: .float 55.46
	global_main_temp44: .float 74.48
	global_main_temp45: .float 53.86
	global_main_temp46: .float 48.76
	global_main_temp47: .float 30.3
	global_main_temp48: .float 23.41
	global_main_temp49: .float 84.31
	global_main_temp50: .float 56.89
	global_main_temp51: .float 67.14
	global_main_temp52: .float 59.57
	global_main_temp53: .float 16.15
	global_main_temp54: .float 1779.1
	global_main_temp55: .float 13.54
	global_main_temp56: .float 20.43
	global_main_temp57: .float 28.66
	global_main_temp58: .float 95.13
	global_main_temp59: .float 24.56
	global_main_temp60: .float 12.86
	global_main_temp61: .float 80.35
	global_main_temp62: .float 28.3
	global_main_temp63: .float 13.36
	global_main_temp64: .float 92.64
	global_main_temp65: .float 92.87
	global_main_temp66: .float 73.66
	global_main_temp67: .float 55.45
	global_main_temp68: .float 58.72
	global_main_temp69: .float 2479.07
	global_main_temp70: .float 13.54
	global_main_temp71: .float 20.43
	global_main_temp72: .float 28.66
	global_main_temp73: .float 95.13
	global_main_temp74: .float 24.56
	global_main_temp75: .float 12.86
	global_main_temp76: .float 80.35
	global_main_temp77: .float 28.3
	global_main_temp78: .float 13.36
	global_main_temp79: .float 92.64
	global_main_temp80: .float 92.87
	global_main_temp81: .float 73.66
	global_main_temp82: .float 55.45
	global_main_temp83: .float 58.72
	global_main_temp84: .float 2480.07

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
		li $t0, 1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		beq $t0 ,0 ItoB0
		li $t0, 1
		j exit_ItoB0
ItoB0:
		li $t0, 0
exit_ItoB0:
		beq $t0, 0, L1
		li $t0, 1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L1exit
L1:
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L1exit:
		li $t0, 1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		beq $t0 ,0 ItoB1
		li $t0, 1
		j exit_ItoB1
ItoB1:
		li $t0, 0
exit_ItoB1:
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
		li $t0, 2
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L2exit:
		li $t0, 5
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		beq $t0 ,0 ItoB2
		li $t0, 1
		j exit_ItoB2
ItoB2:
		li $t0, 0
exit_ItoB2:
		beq $t0, 0, L3
		li $t0, 3
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L3exit
L3:
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L3exit:
		li $t0, 10
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 0
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		beq $t0 ,0 ItoB3
		li $t0, 1
		j exit_ItoB3
ItoB3:
		li $t0, 0
exit_ItoB3:
		beq $t0, 0, L4
		la $t0, StringLiteral_01
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L4exit
L4:
		li $t0, 4
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
L4exit:
		la $a0, global_main_temp0
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp1
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
		beq $t0, 0, L5
		li $t0, 5
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L5exit
L5:
L5exit:
		la $a0, global_main_temp2
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp3
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.le.s $f0, $f1
		bc1f L_CondFalse1
		li $t0 1
		j L_CondEnd1
		L_CondFalse1 : li $t0 0
		L_CondEnd1:
		mov.s $f0, $f1
		beq $t0, 0, L6
		li $t0, 6
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L6exit
L6:
L6exit:
		la $a0, global_main_temp4
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp5
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp6
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.le.s $f0, $f1
		bc1f L_CondFalse2
		li $t0 1
		j L_CondEnd2
		L_CondFalse2 : li $t0 0
		L_CondEnd2:
		mov.s $f0, $f1
		beq $t0, 0, L7
		li $t0, 7
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L7exit
L7:
L7exit:
		li $t0, 234
		neg $t0, $t0
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 2
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 3
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 13
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 3
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 123
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 525
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 12345
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 351
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 99199
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2231
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 2
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 5
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL8
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL8
	printFalseL8:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL8:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 2
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 3
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sle $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL9
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL9
	printFalseL9:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL9:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 2
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sle $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL10
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL10
	printFalseL10:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL10:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 2
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 5
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sgt $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL11
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL11
	printFalseL11:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL11:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 2
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 3
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sge $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL12
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL12
	printFalseL12:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL12:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 2
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sge $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL13
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL13
	printFalseL13:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL13:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 2
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 3
		addi $sp, $sp, -4
		lw $t1 0($sp)
		seq $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL14
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL14
	printFalseL14:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL14:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 2
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 3
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sne $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL15
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL15
	printFalseL15:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL15:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 2
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		addi $sp, $sp, -4
		lw $t1 0($sp)
		seq $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL16
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL16
	printFalseL16:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL16:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1, 0($sp)
		and $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL17
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL17
	printFalseL17:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL17:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 0
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1, 0($sp)
		and $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL18
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL18
	printFalseL18:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL18:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1, 0($sp)
		or $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL19
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL19
	printFalseL19:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL19:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 0
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1, 0($sp)
		or $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL20
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL20
	printFalseL20:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL20:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 0
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 0
		addi $sp, $sp, -4
		lw $t1, 0($sp)
		or $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		beq $t0, $zero, printFalseL21
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL21
	printFalseL21:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL21:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 0
		xori $t0, $t0, 1
		li $v0, 1
		beq $t0, $zero, printFalseL22
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL22
	printFalseL22:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL22:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 2234
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 12
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 4
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 24
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 35
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 12341
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 52
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 12
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 123
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 123
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 521
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 123
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 12234
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 41
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 4
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 41
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 334
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 169
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 478
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 962
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 705
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 281
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 961
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 995
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 827
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 391
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 902
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 292
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 421
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 718
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 447
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 771
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 869
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 667
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 35
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 703
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 322
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 673
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 141
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 253
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 547
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 662
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 37
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 723
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 529
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 316
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 190
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 288
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 40
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 264
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 446
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 890
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 370
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 6
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 393
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 41
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 334
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 169
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 478
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 962
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 705
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 281
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 961
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 995
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 827
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 391
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 902
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 292
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 421
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 718
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 447
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 771
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 869
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 667
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 35
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 703
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 322
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 673
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 141
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 253
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 547
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 662
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 37
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 723
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 529
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 316
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 190
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 288
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 40
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 264
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 446
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 890
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 370
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 6
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 393
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 629
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 84
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 756
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 966
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 931
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 944
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 626
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 537
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 118
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 929
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 833
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 639
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 704
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 977
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 673
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 21
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 924
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 270
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 777
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 97
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 986
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 161
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 355
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 655
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 31
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 350
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 941
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 966
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 107
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 7
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 457
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 753
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 945
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 209
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 221
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 422
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 506
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 413
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 900
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 762
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 410
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 624
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 548
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 595
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 602
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 291
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 374
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 596
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 348
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 668
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 281
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 53
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 418
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 900
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 127
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 728
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 648
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 807
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 310
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 813
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 42
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 19
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 39
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 10
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 46
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 79
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 74
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 81
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 8
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 18
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 77
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 47
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 82
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 69
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 12
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 29
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 37
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 11
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 6
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 63
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 23
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 53
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 92
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 66
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 48
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 80
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 25
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 74
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 78
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 34
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 32
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 57
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 52
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 64
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 93
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 11
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 15
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 32
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 67
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 39
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 90
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 93
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 8
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 38
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 48
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 71
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 51
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 97
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 84
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 82
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 98
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 57
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 90
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 45
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 100
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 51
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 8
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 48
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 82
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 84
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 69
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 51
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 43
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 4
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 25
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 39
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 5
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 85
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 24
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 26
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 46
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 90
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 38
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 77
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 82
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 15
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 87
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 91
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 62
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 35
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 80
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 14
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 48
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		mfhi $t1
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		mul $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_temp7
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp8
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp9
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp10
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp11
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp12
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp13
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp14
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp15
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp16
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp17
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp18
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp19
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp20
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp21
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp22
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp23
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp24
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp25
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp26
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp27
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp28
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp29
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp30
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.lt.s $f0, $f1
		bc1f L_CondFalse3
		li $t0 1
		j L_CondEnd3
		L_CondFalse3 : li $t0 0
		L_CondEnd3:
		mov.s $f0, $f1
		li $v0, 1
		beq $t0, $zero, printFalseL23
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL23
	printFalseL23:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL23:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_temp31
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp32
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp33
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp34
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp35
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp36
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp37
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp38
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp39
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp40
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp41
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp42
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp43
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp44
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp45
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp46
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp47
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp48
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp49
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp50
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp51
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp52
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp53
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp54
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.lt.s $f1, $f0
		bc1f L_CondFalse4
		li $t0 1
		j L_CondEnd4
		L_CondFalse4 : li $t0 0
		L_CondEnd4:
		mov.s $f0, $f1
		li $v0, 1
		beq $t0, $zero, printFalseL24
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL24
	printFalseL24:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL24:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_temp55
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp56
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp57
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp58
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp59
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp60
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp61
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp62
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp63
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp64
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp65
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp66
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp67
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp68
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp69
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.lt.s $f0, $f1
		bc1f L_CondFalse5
		li $t0 1
		j L_CondEnd5
		L_CondFalse5 : li $t0 0
		L_CondEnd5:
		mov.s $f0, $f1
		li $v0, 1
		beq $t0, $zero, printFalseL25
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL25
	printFalseL25:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL25:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_temp70
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp71
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp72
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp73
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp74
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp75
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp76
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp77
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp78
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp79
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp80
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp81
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp82
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp83
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp84
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.lt.s $f1, $f0
		bc1f L_CondFalse6
		li $t0 1
		j L_CondEnd6
		L_CondFalse6 : li $t0 0
		L_CondEnd6:
		mov.s $f0, $f1
		li $v0, 1
		beq $t0, $zero, printFalseL26
		la $t0, true
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		b endPrintFalseL26
	printFalseL26:
		la $t0, false
		li $v0, 4
		add $a0, $t0, $zero
		syscall
	endPrintFalseL26:
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
