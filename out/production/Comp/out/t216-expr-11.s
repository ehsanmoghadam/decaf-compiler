.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_temp0: .float 0.5
	global_main_temp1: .float -0.5
	global_main_temp2: .float 0.5
	global_main_temp3: .float -0.5
	global_main_temp4: .float 0.5
	global_main_temp5: .float -0.5
	global_main_temp6: .float 0.5
	global_main_temp7: .float -0.5

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
		li $t0, 0
		mtc1 $t0 $f0
		cvt.s.w $f0 $f0
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
		la $a0, global_main_temp0
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI0
		bc1f nhalf_DtoI0
half_DtoI0:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI0
nhalf_DtoI0:
		la $a0, global_main_temp1
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
		li $t0, 5
		neg $t0, $t0
		mtc1 $t0 $f0
		cvt.s.w $f0 $f0
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
		la $a0, global_main_temp2
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI1
		bc1f nhalf_DtoI1
half_DtoI1:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI1
nhalf_DtoI1:
		la $a0, global_main_temp3
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
		li $t0, 10
		mtc1 $t0 $f0
		cvt.s.w $f0 $f0
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
		bc1t half_DtoI2
		bc1f nhalf_DtoI2
half_DtoI2:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI2
nhalf_DtoI2:
		la $a0, global_main_temp5
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
		li $t0, 10000
		mtc1 $t0 $f0
		cvt.s.w $f0 $f0
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
		la $a0, global_main_temp6
		l.s $f2, 0($a0)
		c.eq.s $f1 $f2
		bc1t half_DtoI3
		bc1f nhalf_DtoI3
half_DtoI3:
		ceil.w.s $f0 $f0
		mfc1 $t0 $f0
		j exit_DtoI3
nhalf_DtoI3:
		la $a0, global_main_temp7
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
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
