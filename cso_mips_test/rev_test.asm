.data

str: .asciiz "String to be reversed : \n" 
msg: .asciiz "COSC 300" 
ans: .asciiz "The string reversed is : " 

.text
.globl main



main: 

la $a0, str            #print string
li $v0, 4 
syscall

la $a0, msg            #print string
li $v0, 4
syscall

la $t0, msg            #load a string to be reversed



loop:
lb $t0, 0 ($t0)       #load char from msg
beqz $t0, stringEnd   # if null end loop
addi $sp, $sp, -1      # reduce stack pointer
sb $t0, 0 ($sp)       # store t0 into stack
addi $t1, $t1, 1      # gets next char
j loop


stringEnd:
la $t1, msg


storeLoop:
lb $t0, 0($t0)
beqz $t0, end
lb $t4, 0($sp)
sb $t4, 0 ($t0)
addi $t1, $t1, 1
addi $sp, $sp, 1
j storeLoop


end:
la $a0, ans
li $v0, 4 
syscall

move $a0, $t4
li $v0, 4
syscall

li $v0, 10 
syscall
