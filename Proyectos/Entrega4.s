#Ricardo Meza Díaz 
#Entrega de práctica,Jueves 21 Septiembre
#Ejercicio 4,Aplicación de arrays y ctes. en memoria. Carga de memoria a registros.

#Realizar un programa en ensamblador del MIPS que cargue en un array de datos en
#memoria (etiquetado como “array”) los siguientes enteros: 2, 4, 6, 8, 10.  
#A continuación el programa debe cargar en el registro t0 el dato array[2] y en el #registro t1 el dato array[4]

# *** SEGMENTO DE DATOS ***
.data  
array: .byte 2, 4, 6, 8, 10 #Define array de 5 palabras (decimal).  
#array[2] es 15=0xf 
ind: .word 1 #usa como Indice del array con etiqueta array

 # *** SEGMENTO DE TEXTO ***
.text 
.globl main # Etiqueta main visible a otros ficheros.
main: # Rutina principal 
lb $s0,array($zero) # Carga en $s0 array[0]. ($s0<--array[0]) 
#Tambien vale: lw $s0,array 
lw $s4,ind #$s4 es el indice del array 
lb $s1,array($s4) #$s1<----array[1] 
add $s4,$s4,1 #Incrementamos el indice del array 
lb $s2,array($s4) #$s2<----array[2] 
lb $t0,array($s4) #$t0<----array[2] 
add $s4,$s4,1 #Incrementamos el indice del array 
lb $s3,array($s4) #$s3<----array[3] 
add $s4,$s4,1 #Incrementamos el indice del array 
lb $t1,array($s4) #$t1<----array[4] 
lb $s4,array($s4) #$s4<----array[4] 
li $v0, 10 #Funcion que finaliza el programa 
syscall 
#Finaliza el programa.
li $v0, 10 
syscall 


