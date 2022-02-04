.data 
	true: .asciiz "true"
	false : .asciiz "false"

	error: .asciiz "runtime ERROR"
	global_array : .word 0
	global_tempArray : .word 0
	global_merge_s1 : .word 0
	global_merge_s2 : .word 0
	global_merge_e1 : .word 0
	global_merge_e2 : .word 0
	global_merge_i : .word 0
	global_merge_j : .word 0
	global_merge_k : .word 0
	global_merge_curlen : .word 0
	global_merge_it : .word 0
	global_merge_newIt : .word 0
	global_merge_loopI : .word 0
	global_mergesort_start : .word 0
	global_mergesort_end : .word 0
	block_9_mid : .word 0
	global_main_i : .word 0
	global_main_NEW_ARRAY_0: .space 44
	global_main_NEW_ARRAY_1: .space 44

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
	global_merge:
		sw $ra,0($sp)
		addi $sp,$sp,-16
		la $a1, global_merge_s1
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_merge_s2
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_merge_e1
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_merge_e2
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		addi $sp,$sp,4
		la $a0, global_merge_j
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_s2
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		la $a0, global_merge_k
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 0
		sw $t0, 0($a3)
		la $a0, global_merge_curlen
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_e2
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_merge_s1
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		la $a0, global_merge_it
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_s1
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		la $a0, global_merge_loopI
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 11
		sw $t0, 0($a3)
		la $a0, global_merge_i
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_s1
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		L1F:
		la $a0, global_merge_i
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_merge_e1
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
		beq $t0, $zero exitL1F
		la $a0, global_merge_j
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_merge_e2
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sgt $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L2
		la $a0, global_merge_loopI
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_i
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		j exitL1F
		j L2exit
L2:
L2exit:
		la $a0, global_array
		lw $t0, 0($a0)
		la $a0, global_array
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_merge_i
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_array
		lw $t0, 0($a0)
		la $a0, global_array
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_merge_j
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L3
		la $a0, global_tempArray
		lw $t0, 0($a0)
		la $a0, global_tempArray
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_merge_k
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_array
		lw $t0, 0($a0)
		la $a0, global_array
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_merge_i
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		la $a0, global_merge_k
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_k
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		j L3exit
L3:
		la $a0, global_tempArray
		lw $t0, 0($a0)
		la $a0, global_tempArray
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_merge_k
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_array
		lw $t0, 0($a0)
		la $a0, global_array
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_merge_j
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		la $a0, global_merge_k
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_k
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		la $a0, global_merge_j
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_j
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		la $a0, global_merge_i
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_i
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
L3exit:
		L1Fupdate:
		la $a0, global_merge_i
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_i
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		j L1F
		exitL1F:
		la $a0, global_merge_loopI
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_merge_e1
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sle $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L4
		la $a0, global_merge_newIt
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_loopI
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		L5F:
		la $a0, global_merge_newIt
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_merge_e1
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
		beq $t0, $zero exitL5F
		la $a0, global_tempArray
		lw $t0, 0($a0)
		la $a0, global_tempArray
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_merge_k
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_array
		lw $t0, 0($a0)
		la $a0, global_array
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_merge_newIt
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		la $a0, global_merge_k
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_k
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		L5Fupdate:
		la $a0, global_merge_newIt
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_newIt
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		j L5F
		exitL5F:
		j L4exit
L4:
L4exit:
		la $a0, global_merge_j
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_merge_e2
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sle $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L6
		la $a0, global_merge_newIt
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_j
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		L7F:
		la $a0, global_merge_newIt
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_merge_e2
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
		beq $t0, $zero exitL7F
		la $a0, global_tempArray
		lw $t0, 0($a0)
		la $a0, global_tempArray
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_merge_k
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_array
		lw $t0, 0($a0)
		la $a0, global_array
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_merge_newIt
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		la $a0, global_merge_k
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_k
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		L7Fupdate:
		la $a0, global_merge_newIt
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_newIt
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		j L7F
		exitL7F:
		j L6exit
L6:
L6exit:
		la $a0, global_merge_k
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 0
		sw $t0, 0($a3)
		L8F:
		la $a0, global_merge_k
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_merge_curlen
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
		beq $t0, $zero exitL8F
		la $a0, global_array
		lw $t0, 0($a0)
		la $a0, global_array
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_merge_it
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_tempArray
		lw $t0, 0($a0)
		la $a0, global_tempArray
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_merge_k
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		sw $t0, 0($a3)
		la $a0, global_merge_it
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_it
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		L8Fupdate:
		la $a0, global_merge_k
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_merge_k
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		j L8F
		exitL8F:
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
	global_mergesort:
		sw $ra,0($sp)
		addi $sp,$sp,-8
		la $a1, global_mergesort_start
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		la $a1, global_mergesort_end
		lw $t1, 0($sp)
		sw $t1, 0($a1)
		addi $sp, $sp, 4
		addi $sp,$sp,4
		la $a0, global_mergesort_start
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_mergesort_end
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
		beq $t0, 0, L9
		la $a0, block_9_mid
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_mergesort_start
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_mergesort_end
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_mergesort_start
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 2
		addi $sp, $sp, -4
		lw $t1 0($sp)
		div $t1, $t1, $t0
		move $t0, $t1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		la $a0, global_mergesort_start
		lw $t0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		la $a0, block_9_mid
		lw $t0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_mergesort
		addi $sp, $sp, -8
		la $a0, block_9_mid
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_mergesort_end
		lw $t0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_mergesort
		addi $sp, $sp, -8
		la $a0, global_mergesort_start
		lw $t0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		la $a0, block_9_mid
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		la $a0, block_9_mid
		lw $t0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_mergesort_end
		lw $t0, 0($a0)
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_merge
		addi $sp, $sp, -16
		j L9exit
L9:
L9exit:
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
	global_main:
		sw $ra,0($sp)
		addi $sp,$sp,4
		la $a0, global_array
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $t0, global_main_NEW_ARRAY_0
		li $t2, 10
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_tempArray
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $t0, global_main_NEW_ARRAY_1
		li $t2, 10
		sw $t2, 0($t0)
		sw $t0, 0($a3)
		la $a0, global_main_i
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 0
		sw $t0, 0($a3)
		L10F:
		la $a0, global_main_i
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 10
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
		beq $t0, $zero exitL10F
		la $a0, global_array
		lw $t0, 0($a0)
		la $a0, global_array
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_main_i
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 10
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		la $a0, global_main_i
		lw $t0, 0($a0)
		addi $sp, $sp, -4
		lw $t1 0($sp)
		sub $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		L10Fupdate:
		la $a0, global_main_i
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_i
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		j L10F
		exitL10F:
		li $t0, 0
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		li $t0, 9
		sw $t0, 0($sp)
		addi $sp, $sp, 4
		jal global_mergesort
		addi $sp, $sp, -8
		la $a0, global_main_i
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		li $t0, 0
		sw $t0, 0($a3)
		L11F:
		la $a0, global_main_i
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 10
		addi $sp, $sp, -4
		lw $t1 0($sp)
		slt $t1, $t1, $t0
		move $t0, $t1
		beq $t0, $zero exitL11F
		la $a0, global_array
		lw $t0, 0($a0)
		la $a0, global_array
		lw $t0, 0($a0)
		move $a3, $t0
		move $s4, $a0
		la $a0, global_main_i
		lw $t0, 0($a0)
		li $t4, 4
		addi $t0, $t0, 1
		lw $t2, 0($a3)
		blt $t2, $t0, runtime_error
		mul $t0, $t0, $t4
		add $a0, $a3, $t0
		lw $t0, 0($a0)
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		#print new Line
		addi $a0, $0, 0xA
		addi $v0, $0, 0xB
		syscall 
		L11Fupdate:
		la $a0, global_main_i
		lw $t0, 0($a0)
		la $a3, 0($a0) 
		la $a0, global_main_i
		lw $t0, 0($a0)
		move $t1, $t0
		sw $t1, 0($sp)
		addi $sp, $sp, 4
		li $t0, 1
		addi $sp, $sp, -4
		lw $t1 0($sp)
		add $t1, $t1, $t0
		move $t0, $t1
		sw $t0, 0($a3)
		j L11F
		exitL11F:
		addi $sp,$sp,-4
		lw $ra,0($sp)
		jr $ra
