#Ricardo Meza Díaz 
#Inventado por mi.
#Entrega de práctica,Jueves 21 Septiembre
#Ejercicio 4,Aplicación de arrays y ctes. en memoria. Carga de memoria a registros.

#Realizar un programa en ensamblador del MIPS que cargue en un array de datos en
#memoria (etiquetado como “array”) los siguientes enteros: 8, 2, 3, 4, 12.  
#A continuación el programa debe cargar en el registro t0 el dato array[3] y en el #registro t1 el dato array[2]

# *** SEGMENTO DE DATOS ***
#indicador de datos
.data
#Crea array de nombre array.
array: .byte 8,2,3,4,12
#Importante crear una palabra,que será el índice
ind:    .word 1


 # *** SEGMENTO DE TEXTO ***
#Indicador de textos.
.text
#Crea programa pirncipal 
.globl main
#Programa principal en etiqueta main.
main: 
#Solamente cargaremos,no almacenaremos.Por eso solo usaremos los eles.

#Define la palabra de valor 1 definida en el segmento de datos, como indice.Usaremos los registros $s.
lw $s4,ind
#Carga la posición 0 del array en $s0,osea el ocho,que es de tipo .byte.
lb $s0,array($zero)

#Pasamos a la siguiente posición del array para meter el 2 en la posicion 1.
lb $s1,array($s4)

#Incrementamos en uno
add $s4,$s4,1                                           #Incrementa el indice del array(incrementa en uno,contador,pasa al siguiente espacio) 

#Metemos el 3 en la posicion 2 del array.
lb $s2,array($s4)
#y también lo cargamos en el registro t1 como lo pide el enunciado.
lb $t1,array($s4)

#Incrementamos en uno
lb $s4,$4,1
#Ahora,metemos el 4 en la posicion 3 del array.
lb $s3,array($s4)
#También lo cargamos en el registro t0 como lo pide el enunciado.
lb $t0,array($s4)

#Metemos ya el ultimo número en $s4 que es el 10 en la posición 4 del array.
lb $s4,array($s4)

#Paramos el programa
li $v0,10
syscall
 



