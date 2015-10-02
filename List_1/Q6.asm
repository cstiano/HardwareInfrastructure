.data
n: .word -52
str: .asciiz "a"
.text
.globl start
.ent start

start:
lw $2, n                    # Ler numero da memoria
addi $9,$0,10               # Colocando valor 10 em <Reg 9>

la $11,str                  # Pegando o endereco de str
sb $0,0($11)                # Salva o NULL na memoria
addi $12,$0,0               # Zera o <Reg 12>
bltz $2,.MudaSinal          # Se numero no <Reg 2> for negativo, pula pra .MudaSinal

.loop:
div $2,$9                   # Div $2 / $9
mfhi $8                     # Resto da divisão	
mflo $2                     # Quociente da divisão
addi $8,$8,48               # Transformar o resto pra char
addi $11,$11,1              # Add 1 ao enderenço de memória
sb $8,0($11)                # Salva na memória

beqz $2, .SaindoDoLoop		# Acabar o loop
j .loop                 
               
.MudaSinal:
negu $2,$2                  # Remove o sinal de negativo do numero
addi $12,$12,1              # Adiciona 1 ao <Reg 12> (FLAG)
j .loop

.addNeg:
addi $11,$11,1              # Add 1 ao enderenço de memória
addi $8,$0,45               # Coloca o caracter - no <Reg 8>
sb $8,0($11)                # Salva na memória
addi $12,$0,0               # Zera o <Reg 12> (FLAG)

.SaindoDoLoop:
bgtz $12,.addNeg            # Se a FLAG for maior que zero => precisa colocar o sinal de negativo

break
nop
.end start
