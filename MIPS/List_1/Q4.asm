.data
a: .word 15
b: .word -3
c: .word 0
.text
.globl start
.ent start
start:
	lw $3, a
	lw $4, b
	# Some one equal zero?
 	beqz $3, zero 
 	beqz $4, zero
 	
 	# If one is greater than zero, use it for the looping count at the adds
 	bgtz $3, soma1 
 	bgtz $4, soma2
 	
 	
 	# No one is greater than 0, invert both
 	negu $3, $3
 	negu $4, $4
 	j soma2 
 	
 	
 	# A > 0 (use A for the loop count)
 	soma1:
 	move $8, $4 
 	move $9, $3
 	j sadds # go to the adding loop
 	
 	# B > 0 (use B for the loop count)
 	soma2:
 	move $8, $3
 	move $9, $4
 	
 	sadds:
 	move $5, $8 # the incremet on the number
 	sub $8, $8, $5 # take out the start value at register

 	 # loop adding n times
 	loop:
 	add $8, $8, $5 
 	sub $9, $9, 1
 	nop
 	bgtz $9, loop # end loop
	 	
 	
 	# Save value, and end
 	sw $8, c
 	
 	zero:
 	nop
 	break	

.end start
