.data
a: .word 2
b: .word 65
x: .word 0

.text
.globl start
.ent start
start:
	lw $8, a
	lw $9, b
 	// A >= 0 E B <= 64
 	bltz $8, false
 	slti $10, $9, 64
 	beqz $10, false
 	nop
 	addi $11, $0, 1
 	sw $11, x
 	false:
 	nop
 	break	
.end start