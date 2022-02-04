.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_temp0: .float 0.1
	global_main_temp1: .float 0.5
	global_main_temp2: .float -0.5
	global_main_temp3: .float 0.6
	global_main_temp4: .float 0.5
	global_main_temp5: .float -0.5

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
		beq $t0 ,0 ItoB1
		li $t0, 1
		j exit_ItoB1
ItoB1:
		li $t0, 0
exit_ItoB1:
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
		beq $t0 ,0 ItoB3
		li $t0, 1
		j exit_ItoB3
ItoB3:
		li $t0, 0
exit_ItoB3:
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
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
