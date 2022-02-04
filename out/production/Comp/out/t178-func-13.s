.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_func1_x : .float 0.0
	global_func1_temp0: .float 2.0
	global_func2_x : .float 0.0
	global_func2_temp1: .float 1.0
	global_main_temp2: .float 2.5
	global_main_temp3: .float 1.2

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
	global_func1:
		sw $ra,0($sp)
		addi $sp,$sp,-4
		la $a1, global_func1_x
		l.s $f1, 0($sp)
		s.s $f1, 0($a1)
		addi $sp, $sp, 4
		addi $sp,$sp,4
		la $a0, global_func1_x
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_func1_temp0
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		mul.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
	global_func2:
		sw $ra,0($sp)
		addi $sp,$sp,-4
		la $a1, global_func2_x
		l.s $f1, 0($sp)
		s.s $f1, 0($a1)
		addi $sp, $sp, 4
		addi $sp,$sp,4
		la $a0, global_func2_x
		l.s $f0, 0($a0)
		mov.s $f1, $f0
		s.s $f1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_func2_temp1
		l.s $f0, 0($a0)
		addi $sp, $sp, -4
		l.s $f1 0($sp)
		add.s $f1, $f1, $f0
		mov.s $f0, $f1
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
	global_main:
		sw $ra,0($sp)
		addi $sp,$sp,4
		la $a0, global_main_temp2
		l.s $f0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_func2
		addi $sp, $sp, -4
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_func1
		addi $sp, $sp, -4
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_func1
		addi $sp, $sp, -4
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_func2
		addi $sp, $sp, -4
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_func1
		addi $sp, $sp, -4
		li $v0, 2
		mov.d	$f12, $f0
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		la $a0, global_main_temp3
		l.s $f0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_func2
		addi $sp, $sp, -4
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_func1
		addi $sp, $sp, -4
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_func1
		addi $sp, $sp, -4
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_func2
		addi $sp, $sp, -4
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_func2
		addi $sp, $sp, -4
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
