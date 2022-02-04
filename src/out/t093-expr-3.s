.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_temp0: .float 0.0
	global_main_temp1: .float 0.5
	global_main_temp2: .float -0.5
	global_main_temp3: .float 0.0
	global_main_temp4: .float 0.5
	global_main_temp5: .float -0.5
	global_main_temp6: .float 1.0
	global_main_temp7: .float 0.5
	global_main_temp8: .float -0.5
	global_main_temp9: .float 1.0
	global_main_temp10: .float 0.5
	global_main_temp11: .float -0.5
	global_main_temp12: .float 0.3
	global_main_temp13: .float 0.5
	global_main_temp14: .float -0.5
	global_main_temp15: .float 0.5
	global_main_temp16: .float 0.5
	global_main_temp17: .float -0.5
	global_main_temp18: .float 0.1
	global_main_temp19: .float 0.5
	global_main_temp20: .float -0.5
	global_main_temp21: .float 0.5
	global_main_temp22: .float 0.5
	global_main_temp23: .float -0.5
	global_main_temp24: .float 0.7
	global_main_temp25: .float 0.5
	global_main_temp26: .float -0.5

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
		bc1t half_DtoI0
		bc1f nhalf_DtoI0
half_DtoI0:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI0
nhalf_DtoI0:
		la $a0, global_main_temp2
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1f else_DtoI0
		cvt.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI0
else_DtoI0:
		round.w.s $f0 $f0
		mfc1 $t0 $f0
exit_DtoI0:
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
		neg.s $f0, $f0
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
		bc1t half_DtoI1
		bc1f nhalf_DtoI1
half_DtoI1:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI1
nhalf_DtoI1:
		la $a0, global_main_temp5
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1f else_DtoI1
		cvt.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI1
else_DtoI1:
		round.w.s $f0 $f0
		mfc1 $t0 $f0
exit_DtoI1:
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
		bc1t half_DtoI2
		bc1f nhalf_DtoI2
half_DtoI2:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI2
nhalf_DtoI2:
		la $a0, global_main_temp8
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1f else_DtoI2
		cvt.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI2
else_DtoI2:
		round.w.s $f0 $f0
		mfc1 $t0 $f0
exit_DtoI2:
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
		neg.s $f0, $f0
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
		bc1t half_DtoI3
		bc1f nhalf_DtoI3
half_DtoI3:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI3
nhalf_DtoI3:
		la $a0, global_main_temp11
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
		la $a0, global_main_temp12
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
		la $a0, global_main_temp13
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI4
		bc1f nhalf_DtoI4
half_DtoI4:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI4
nhalf_DtoI4:
		la $a0, global_main_temp14
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
		la $a0, global_main_temp15
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
		la $a0, global_main_temp16
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI5
		bc1f nhalf_DtoI5
half_DtoI5:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI5
nhalf_DtoI5:
		la $a0, global_main_temp17
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
		la $a0, global_main_temp18
		l.s $f0, 0($a0)
		neg.s $f0, $f0
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
		la $a0, global_main_temp19
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI6
		bc1f nhalf_DtoI6
half_DtoI6:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI6
nhalf_DtoI6:
		la $a0, global_main_temp20
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
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_temp21
		l.s $f0, 0($a0)
		neg.s $f0, $f0
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
		la $a0, global_main_temp22
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI7
		bc1f nhalf_DtoI7
half_DtoI7:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI7
nhalf_DtoI7:
		la $a0, global_main_temp23
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
		la $a0, global_main_temp24
		l.s $f0, 0($a0)
		neg.s $f0, $f0
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
		la $a0, global_main_temp25
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI8
		bc1f nhalf_DtoI8
half_DtoI8:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI8
nhalf_DtoI8:
		la $a0, global_main_temp26
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1f else_DtoI8
		cvt.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI8
else_DtoI8:
		round.w.s $f0 $f0
		mfc1 $t0 $f0
exit_DtoI8:
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
