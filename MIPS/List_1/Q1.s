.data
a: .word 3
b: .word -5
m: .word 10

.text
.globl start
.ent start
start:
	lw $8, a #Load memory a
	lw $9, b #Load memory b
 	lw $10, a #Load a again (reg10 = a)
 	sub $11, $10,$9 # a - b
 	bltz $11, label # == 0? Jump label
 	move $10,$9 #Else, (reg10 = b)
 	label:
 	sw $10,m #Sotore reg10 on m
 	nop
 	break	
.end start
