# *** SEGMENTO DE DATOS ***
.data
dir: .byte 5,1,2,3
# *** SEGMENTO DE TEXTO ***
.text
main:
li $t2,0x10010000
lw $a0,($t2)
li $v0,1
syscall
lw $a0,dir
li $v0,1 #Mostrar por consola enteros
syscall
#Modo direccionamiento: registro
lw $a0,0x0d
li $v0,1
syscall
#Modo direccionamiento: valor
li $t1,0x10010001
#Modo de direccionamiento: valor (registro)
lw $a0,0x10010000($t1)
li $v0,1
syscall
#Modo de direccionamiento: identificador
lw $a0,dir
li $v0,1
syscall
#Modo de direccionamiento: identificador +/- valor
lw $a0,dir+1
li $v0,1
syscall
li $t1,0x10010001
#Modo de direccionamiento: Identificador (registro)
lw $a0,dir($t1)
li $v0,1
syscall
li $t1,0x10010001
#Modo de direccionamiento: identificador +/- valor (registro)
lw $a0,dir+2($t1)
li $v0,1
syscall
#Finaliza el programa.
li $v0, 10
syscall 
