#Ricardo Meza Díaz 
#Entrega de práctica,Jueves 21 Septiembre
#Ejercicio 5,modos de direccionamiento.

#Realizar un programa en ensamblador del MIPS que cargue el contenido de una posición de
#memoria en un registro y luego escriba el valor del registro en consola. Debe repetir esta
#operación para cada uno de los 7 modos de direccionamiento existentes en el MIPS
#(estudiar la transparencia nº 10 del tutorial). Comprobar que en la consola aparece siempre
#el mismo valor (pues son modos distintos de acceder a un mismo dato). Se recomienda
#enseñar al profesor el código desarrollado, con el objeto de identificar correctamente cada
#modo de direccionamiento.

#***Segmento de datos***#
.data

dato:         .word 1 
auxiliar:    .word 2           #o índice
array:        .byte 1,2,3,4,5,6,7  #Los números que yo quiera.



#***Segmento de texto***#
.text 

.globl main
main: 

#Modo de direccionamiento 1
lw st0,dato
add $a0,$t0,$zero
#Muestra por consola
li $v0,1
syscall

#Modo de direccionamiento 2 y 3
la $t0,dato
lw $t1,($t0)
add $a0,$t1,$zero
li $v0,1
syscall

#Modo de direccionamiento 4
lw $st0,dato+4
add $a0,$t0,$zero
li $v0,1
syscall

#Modo de direccionamiento 5
lw $s4,indice 
add $s4,$s4,1
lb $t0,array($s4)
add $a0,$t0,$zero
li $v0,1
syscall

#Modo de direccionamiento 6,No se puede realizar,ya que no se puede acceder como se ha hecho en el modo 2 y 3

#Modo de direccionamiento 7
li $t1,1
lb $t0,array+2($t1)
add $a0,$t0,$zero
li $v0,1
syscall

#Finaliza el programa
li $v0,10
syscall




