#Defensa MIPS,2 Noviembre 2017
#Ricardo José Meza Díaz
#segmento de datos#
.data 
dir:		.byte  10, 2, 4, 7, 6, 8, 15	
ind:	.word 1		
# *** segmento de texto ***
.text			
.globl main		# Etiqueta main visible a otros ficheros
main:
		
	li $t1,0x00400000
	
	lb $a0,($t1)	
	li $v0,1		#Mostrar por consola enteros
	syscall			
	
	lw $s6,ind		#$s6 es el indice del array
		
				
	lb $a0,dir($s6)		
	li $v0,1		#Mostrar por consola enteros
	syscall	

	
	add $s6,$s6,1		#Incrementamos el indice del array
	lb $a0,dir($s6)		#$a0<----array[2]
	li $v0,1		#Mostrar por consola enteros
	syscall
	
	add $s6,$s6,1		#Incrementamos el indice del array
	lb $a0,dir($s6)		#$a0<----array[3]
	li $v0,1		#Mostrar por consola enteros
	syscall

	add $s6,$s6,1		#Incrementamos el indice del array
	lb $a0,dir($s6)		#$a0<----array[4]
	li $v0,1		#Mostrar por consola enteros
	syscall

	add $s6,$s6,1		#Incrementamos el indice del array
	lb $a0,dir($s6)		#$a0<----array[5]
	li $v0,1		#Mostrar por consola enteros
	syscall

	add $s6,$s6,1		#Incrementamos el indice del array
	lb $a0,dir($s6)		#$a0<----array[6]
	li $v0,1		#Mostrar por consola enteros
	syscall
	#________________________________________________________
#	lw $a0,dir
#	li $v0,1	#Mostrar por consola enteros
#	syscall
#	
#	lw $a0,0x0d
#	li $v0,1	#Mostrar por consola enteros
#	syscall
#	
#	li $t1,0x10010001	
#	lw $a0,0x10010000($t1)
#	li $v0,1	#Mostrar por consola enteros
#	syscall
#	
#	lw $a0,dir
#	li $v0,1	#Mostrar por consola enteros
#	syscall
#	
#	lw $a0,dir+1
#	li $v0,1	#Mostrar por consola enteros
#	syscall
#	
#	li $t1,0x10010001
#	lw $a0,dir($t1)	
#	li $v0,1	#Mostrar por consola enteros
#	syscall
#	
#	li $t1,0x10010001
#	lw $a0,dir+2($t1)
#	li $v0,1	#Mostrar por consola enteros
#	syscall
#--------------------------------fin:
	li $v0, 10
	syscall
