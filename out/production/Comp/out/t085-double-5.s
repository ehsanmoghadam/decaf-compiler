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
		la $a0, global_main_d1
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_d2
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		li $v0, 2
		mov.d	$f12, $f0
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_d4
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_d4
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		li $v0, 2
		mov.d	$f12, $f0
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_d5
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_d6
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
		li $v0, 2
		mov.d	$f12, $f0
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_d7
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_d8
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		sub.s $f1, $f1, $f0
		mov.s $f0, $f1
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
