.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_main_multi_table : .word 0
	global_main_NEW_ARRAY_0: .space 8
	global_main_NEW_ARRAY_1: .space 8
	global_main_NEW_ARRAY_2: .space 8
	global_main_NEW_ARRAY_3: .space 8
	global_main_NEW_ARRAY_4: .space 8
	global_main_NEW_ARRAY_5: .space 8
	global_main_NEW_ARRAY_6: .space 8
	global_main_NEW_ARRAY_7: .space 8
	global_main_NEW_ARRAY_8: .space 8
	global_main_NEW_ARRAY_9: .space 8
	global_main_NEW_ARRAY_10: .space 8
	global_main_NEW_ARRAY_11: .space 8

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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $t0, global_main_NEW_ARRAY_0
		li $t2, 1
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $t0, global_main_NEW_ARRAY_1
		li $t2, 1
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $t0, global_main_NEW_ARRAY_2
		li $t2, 1
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $t0, global_main_NEW_ARRAY_3
		li $t2, 1
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $t0, global_main_NEW_ARRAY_4
		li $t2, 1
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $t0, global_main_NEW_ARRAY_5
		li $t2, 1
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $t0, global_main_NEW_ARRAY_6
		li $t2, 1
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $t0, global_main_NEW_ARRAY_7
		li $t2, 1
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $t0, global_main_NEW_ARRAY_8
		li $t2, 1
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $t0, global_main_NEW_ARRAY_9
		li $t2, 1
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $t0, global_main_NEW_ARRAY_10
		li $t2, 1
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $t0, global_main_NEW_ARRAY_11
		li $t2, 1
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
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
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		la $a0, global_main_multi_table
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		li $t0, 0
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4