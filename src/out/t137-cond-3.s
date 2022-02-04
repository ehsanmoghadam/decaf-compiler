.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_temp0: .float 5.5
	global_main_temp1: .float 6.5
	StringLiteral_01: .asciiz "5.5 > 6.5!"
	global_main_temp2: .float 5.5
	global_main_temp3: .float 6.5
	StringLiteral_11: .asciiz "5.5 >= 6.5!"
	global_main_temp4: .float 5.5
	global_main_temp5: .float 6.5
	StringLiteral_21: .asciiz "5.5 <= 6.5!"
	global_main_temp6: .float 6.5
	global_main_temp7: .float 5.5
	StringLiteral_31: .asciiz "6.5 > 5.5!"
	global_main_temp8: .float 6.5
	global_main_temp9: .float 5.5
	StringLiteral_41: .asciiz "6.5 < 5.5!"
	global_main_temp10: .float 5.5
	global_main_temp11: .float 5.5
	StringLiteral_51: .asciiz "5.5 >= 5.5!"
	global_main_temp12: .float 4.5
	global_main_temp13: .float 4.5
	StringLiteral_61: .asciiz "4.5 == 4.5!"
	global_main_temp14: .float 4.5
	global_main_temp15: .float 4.5
	StringLiteral_71: .asciiz "4.5 != 4.5!"
	global_main_temp16: .float 6.5
	global_main_temp17: .float 1.5
	StringLiteral_81: .asciiz "6.5 != 1.5!"

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
L1exit:
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
		beq $t0, 0, L2
		la $t0, StringLiteral_11
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
		la $a0, global_main_temp4
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp5
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.le.s $f1, $f0
		bc1f L_CondFalse2
		li $t0 1
		j L_CondEnd2
		L_CondFalse2 : li $t0 0
		L_CondEnd2:
		mov.s $f0, $f1
		beq $t0, 0, L3
		la $t0, StringLiteral_21
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L3exit
L3:
L3exit:
		la $a0, global_main_temp6
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp7
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
		beq $t0, 0, L4
		la $t0, StringLiteral_31
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L4exit
L4:
L4exit:
		la $a0, global_main_temp8
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp9
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
		beq $t0, 0, L5
		la $t0, StringLiteral_41
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L5exit
L5:
L5exit:
		la $a0, global_main_temp10
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp11
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.le.s $f0, $f1
		bc1f L_CondFalse5
		li $t0 1
		j L_CondEnd5
		L_CondFalse5 : li $t0 0
		L_CondEnd5:
		mov.s $f0, $f1
		beq $t0, 0, L6
		la $t0, StringLiteral_51
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L6exit
L6:
L6exit:
		la $a0, global_main_temp12
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp13
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.eq.s $f1, $f0
		bc1f L_CondFalse6
		li $t0 1
		j L_CondEnd6
		L_CondFalse6 : li $t0 0
		L_CondEnd6:
		mov.s $f0, $f1
		beq $t0, 0, L7
		la $t0, StringLiteral_61
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L7exit
L7:
L7exit:
		la $a0, global_main_temp14
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp15
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.eq.s $f0, $f1
		bc1f L_CondFalse7
		li $t0 0
		j L_CondEnd7
		L_CondFalse7: li $t0 1
		L_CondEnd7:
		mov.s $f0, $f1
		beq $t0, 0, L8
		la $t0, StringLiteral_71
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L8exit
L8:
L8exit:
		la $a0, global_main_temp16
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		swc1 $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_temp17
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		lwc1 $f1 0($sp)
		c.eq.s $f0, $f1
		bc1f L_CondFalse8
		li $t0 0
		j L_CondEnd8
		L_CondFalse8: li $t0 1
		L_CondEnd8:
		mov.s $f0, $f1
		beq $t0, 0, L9
		la $t0, StringLiteral_81
		li $v0, 4
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		j L9exit
L9:
L9exit:
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
