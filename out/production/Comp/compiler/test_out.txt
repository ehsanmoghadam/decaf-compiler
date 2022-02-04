.data
	error: .asciiz "Semantic Error"
.text
	.globl main

	main:
		li $v0, 4
		la $a0, error
		syscall
		#END OF PROGRAM
		li $v0,10
		syscall
