.data
a: .word 8
b: .word 4
.text
.globl start
.ent start
start:
	lw $t0, a
	lw $t1, b
	div $t0,$t1
	mflo $s0

.end start