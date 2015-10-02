.data
string: .asciiz "AbCdEfGh"
.text
.globl start
.ent start
start:

	la $t0, string			#coloca o endere�o inicial da string em t0
	jal write_stack			
	la $t0, string			#coloca o endere�o inicial da string em t0
	#move $t5, $0
	jal store_reverse_string
	jal printf
	j end	


write_stack:
	lb $t1, 0($t0)		  	#carregando char[i] no registrador t1
	beqz $t1, end_write_stack 	#se char[i] == NULL
	move $t3, $t1
	#addi $t3, $t3, -65
	ble $t3, 64, bye
	bge $t3, 123, bye	  
	bge $t3, 97, opa
	bge $t3, 91, bye
	opa:
	addi $sp, $sp, -1		#decrementa 1 byte no ponteiro da pilha
	move $t2, $t1
	addi $t2,$t2,-97	
	bltz $t2, inc_32		
	bgez $t2, dec_32
	back:
	sb $t1, 0($sp)			#colocar o cha[i] na pilha	
	add $t0,$t0,1			# i++ 
	j write_stack
	end_write_stack:
	jr $ra				#return 

store_reverse_string:
	lb $t1, 0($sp)			#carrega char[j](primeiro char da pilha) no regs t1
	#sb $t1, $t5(string)
	beqz $t1, end_store		# verifica se chegou ao final da pilha
	sb $t1, 0($t0)			# coloca char[j] em string[i]
	add $sp,$sp,1			# j++ pr�ximo elemento da pilha
	add $t0,$t0,1			# i++
	j store_reverse_string
	end_store:
	jr $ra				#return

inc_32:
	add $t1,$t1,32
	j back
dec_32:
	addi $t1,$t1,-32
	j back
printf:
	la $a0, string
	li $v0, 4
	syscall
	jr $ra
bye:
	addi $v1, $0, 1
	break
	nop


end:
.end start
