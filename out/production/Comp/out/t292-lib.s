.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_temp0: .float 2.5
	global_main_temp1: .float 0.5
	global_main_temp2: .float -0.5
	global_main_temp3: .float 2.1
	global_main_temp4: .float 0.5
	global_main_temp5: .float -0.5
	global_main_temp6: .float 2.6
	global_main_temp7: .float 0.5
	global_main_temp8: .float -0.5
	global_main_temp9: .float 2.3
	global_main_temp10: .float 0.5
	global_main_temp11: .float -0.5
	global_main_temp12: .float 2.5
	global_main_temp13: .float 4.0
	global_main_temp14: .float 2.3
	global_main_temp15: .float 0.5
	global_main_temp16: .float -0.5

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
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 0
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 1
		xori $t0, $t0, 1
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 2
		beq $t0 ,0 ItoB0
		li $t0, 1
		j exit_ItoB0
ItoB0:
		li $t0, 0
exit_ItoB0:
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
		li $t0, 0
		beq $t0 ,0 ItoB1
		li $t0, 1
		j exit_ItoB1
ItoB1:
		li $t0, 0
exit_ItoB1:
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
		li $t0, 1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		beq $t0 ,0 ItoB2
		li $t0, 1
		j exit_ItoB2
ItoB2:
		li $t0, 0
exit_ItoB2:
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
		la $a0, global_main_temp0
		l.s $f0, 0($a0)
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		s.s $f2, 0($sp)
		addi $sp, $sp, 4
		mov.s $f1, $f0
		cvt.w.s $f1, $f1
		mfc1 $t0 $f1
		mtc1 $t0 $f1
		cvt.s.w $f1 $f1
		sub.s $f1, $f0, $f1
		la $a0, global_main_temp1
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI3
		bc1f nhalf_DtoI3
half_DtoI3:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI3
nhalf_DtoI3:
		la $a0, global_main_temp2
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1f else_DtoI3
		cvt.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI3
else_DtoI3:
		round.w.s $f0 $f0
		mfc1 $t0 $f0
exit_DtoI3:
		addi $sp, $sp, -4
		l.s $f2, 0($sp)
		addi $sp, $sp, -4
		l.s $f1, 0($sp)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_temp3
		l.s $f0, 0($a0)
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		s.s $f2, 0($sp)
		addi $sp, $sp, 4
		mov.s $f1, $f0
		cvt.w.s $f1, $f1
		mfc1 $t0 $f1
		mtc1 $t0 $f1
		cvt.s.w $f1 $f1
		sub.s $f1, $f0, $f1
		la $a0, global_main_temp4
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI4
		bc1f nhalf_DtoI4
half_DtoI4:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI4
nhalf_DtoI4:
		la $a0, global_main_temp5
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1f else_DtoI4
		cvt.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI4
else_DtoI4:
		round.w.s $f0 $f0
		mfc1 $t0 $f0
exit_DtoI4:
		addi $sp, $sp, -4
		l.s $f2, 0($sp)
		addi $sp, $sp, -4
		l.s $f1, 0($sp)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_temp6
		l.s $f0, 0($a0)
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		s.s $f2, 0($sp)
		addi $sp, $sp, 4
		mov.s $f1, $f0
		cvt.w.s $f1, $f1
		mfc1 $t0 $f1
		mtc1 $t0 $f1
		cvt.s.w $f1 $f1
		sub.s $f1, $f0, $f1
		la $a0, global_main_temp7
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI5
		bc1f nhalf_DtoI5
half_DtoI5:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI5
nhalf_DtoI5:
		la $a0, global_main_temp8
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1f else_DtoI5
		cvt.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI5
else_DtoI5:
		round.w.s $f0 $f0
		mfc1 $t0 $f0
exit_DtoI5:
		addi $sp, $sp, -4
		l.s $f2, 0($sp)
		addi $sp, $sp, -4
		l.s $f1, 0($sp)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_temp9
		l.s $f0, 0($a0)
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		s.s $f2, 0($sp)
		addi $sp, $sp, 4
		mov.s $f1, $f0
		cvt.w.s $f1, $f1
		mfc1 $t0 $f1
		mtc1 $t0 $f1
		cvt.s.w $f1 $f1
		sub.s $f1, $f0, $f1
		la $a0, global_main_temp10
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI6
		bc1f nhalf_DtoI6
half_DtoI6:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI6
nhalf_DtoI6:
		la $a0, global_main_temp11
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1f else_DtoI6
		cvt.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI6
else_DtoI6:
		round.w.s $f0 $f0
		mfc1 $t0 $f0
exit_DtoI6:
		addi $sp, $sp, -4
		l.s $f2, 0($sp)
		addi $sp, $sp, -4
		l.s $f1, 0($sp)
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
		li $t0, 5
		mtc1 $t0 $f0
		cvt.s.w $f0 $f0
		li $v0, 2
		mov.d	$f12, $f0
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 10
		mtc1 $t0 $f0
		cvt.s.w $f0 $f0
		li $v0, 2
		mov.d	$f12, $f0
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 5
		mtc1 $t0 $f0
		cvt.s.w $f0 $f0
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp12
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		li $v0, 2
		mov.d	$f12, $f0
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 5
		mtc1 $t0 $f0
		cvt.s.w $f0 $f0
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp13
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		div.s $f1, $f1, $f0
		mov.s $f0, $f1
		li $v0, 2
		mov.d	$f12, $f0
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		li $t0, 1
		mtc1 $t0 $f0
		cvt.s.w $f0 $f0
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp14
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		s.s $f2, 0($sp)
		addi $sp, $sp, 4
		mov.s $f1, $f0
		cvt.w.s $f1, $f1
		mfc1 $t0 $f1
		mtc1 $t0 $f1
		cvt.s.w $f1 $f1
		sub.s $f1, $f0, $f1
		la $a0, global_main_temp15
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI7
		bc1f nhalf_DtoI7
half_DtoI7:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI7
nhalf_DtoI7:
		la $a0, global_main_temp16
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1f else_DtoI7
		cvt.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI7
else_DtoI7:
		round.w.s $f0 $f0
		mfc1 $t0 $f0
exit_DtoI7:
		addi $sp, $sp, -4
		l.s $f2, 0($sp)
		addi $sp, $sp, -4
		l.s $f1, 0($sp)
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
