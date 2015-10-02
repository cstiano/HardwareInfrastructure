.data
n: .word 0
s: .word 0
out: .word 0
put_n: .asciiz "Put n: "
put_s: .asciiz "Put s: "
result: .asciiz "Result of n!/(s!(n-s)!): "
.text
.globl start
.ent start

start:
#================scanf n==========================	
	li $v0, 4	#chamada string 
	la $a0, put_n
	syscall
	
	li $v0, 5	#chamada read 
	syscall	
	sw $v0, n
#===============scanf s===========================	
	li $v0, 4	#chamada string 
	la $a0, put_s
	syscall
	
	li $v0, 5	#chamada read 
	syscall	
	sw $v0, s
#================end scanfs=======================	
	lw $t8, n
	lw $t9, s
	
	#se n ou s for 0
	beqz $t8, v1_4
	beqz $t9, v1_4
	
	#se n=s
	beq $t8,$t9, v1_3
	
	#se n<0 ou s<0
	bltz $t8, v1_2
	bltz $t9, v1_2
	
	#se s>n
	sub $t0, $t8,$t9
	bltz $t0, v1_1
	
	#continua
	
	#nfat
	lw $t2, n
	lw $t1, n
	move $t0, $zero
	j fat
fat_n:
	move $t3, $t1 #resultado de nfat em t3
	
	#sfat
	lw $t2, s
	lw $t1, s
	add $t0, $zero, 1
	j fat
fat_s:
	move $t4, $t1 #resultado de sfat em t4
	# n-s fat
	lw $t1, n
	lw $t2, s
	sub $t1, $t1,$t2
	move $t2,$t1
	addi $t0, $zero, -1
	j fat
fat_n_s:
	move $t5, $t1 #resultado de n-sfat em t5
	
C_calculo:
	mul $t4,$t4,$t5 # calcula s!(n-s)!
	div $t3,$t4	#calcula n! / (s!(n-s)!)
	mflo $s0	#move resultado da divis�o pra s0
	
	

printf:		
	
	li $v0, 4	#chamada string 
	la $a0, result
	syscall
	
	la $a0, ($s0) #saida do n! / (s!(n-s)!)
	li $v0,1
	syscall
	
	sw $s0, out #salva resultado na memória
	 
	j end
	
	


fat:
	#move $t1, $t2 #colocar num inicial no t2
	addi $t2, $t2, -1
	beqz $t2, endfat
	mul $t1, $t1,$t2
	j fat
endfat:	
	beqz $t0, fat_n
	bgtz $t0, fat_s
	bltz $t0, fat_n_s

###########################defaults#####################################
v1_4:
	add $v1, $v1,4
	j end
v1_3:
	add $v1, $v1,3
	j end
v1_2:
	add $v1, $v1,2
	j end
v1_1:
	add $v1, $v1,1
	j end
end:
.end start
