.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_doubles : .word 0
	global_main_NEW_ARRAY_0: .space 24
	global_main_temp0: .float 6.3
	global_main_temp1: .float 4.7
	global_main_temp2: .float 9.5
	global_main_temp3: .float 12.5
	global_main_temp4: .float 3.0

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
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		la $a3, 0($a0) 
		la $t0, global_main_NEW_ARRAY_0
		li $t2, 5
		sw $t2, 0($t0)
		s.s $f0, 0($a3)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 0
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp0
		l.s $f0, 0($a0)
		s.s $f0, 0($a3)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 1
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp1
		l.s $f0, 0($a0)
		s.s $f0, 0($a3)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 2
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp2
		l.s $f0, 0($a0)
		s.s $f0, 0($a3)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 3
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp3
		l.s $f0, 0($a0)
		s.s $f0, 0($a3)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 4
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp4
		l.s $f0, 0($a0)
		neg.s $f0, $f0
		s.s $f0, 0($a3)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 4
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		li $v0, 2
		mov.d	$f12, $f0
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 3
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		li $v0, 2
		mov.d	$f12, $f0
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 2
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		li $v0, 2
		mov.d	$f12, $f0
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		la $a0, global_main_doubles
		l.s $f0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 0
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
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
