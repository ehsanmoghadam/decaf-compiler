.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_d : .float 0.0
	global_main_temp0: .float 3.1415

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
		la $a0, global_main_d
		l.s $f0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_temp0
		l.s $f0, 0($a0)
		s.s $f0, 0($a3)
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
