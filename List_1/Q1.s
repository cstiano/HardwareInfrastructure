.data
a: .word 3
b: .word 6
m: .word 10

.text
.globl start
.ent start
start:
	lw $8, a
	lw $9, b
 	lw $10, a
 	sub $11, $10,$9
 	bltz $11, label 
 	move $10,$9
 	label:
 	sw $10,m
 	nop
 	break	
.end start