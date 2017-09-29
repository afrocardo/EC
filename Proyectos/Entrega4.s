#Ricardo Meza Díaz 
#Entrega de práctica,Jueves 21 Septiembre
#Ejercicio 4

#(Aplicación de arrays y ctes. en memoria. Carga de memoria a registros)
#Realizar un programa en ensamblador del MIPS que cargue en un array de datos en
#memoria (etiquetado como “array”) los siguientes enteros: 2, 4, 6, 8, 10.  
#A continuación el programa debe cargar en el registro t0 el dato array[2] y en el #registro t1 el dato array[4]

#Segmento de datos 
        
        .data
valor:  .word 2,4,6,8 #Define un array de 5 palabras(decimal)

ind:    
        


#Segmento de texto 
        .text
        .globl main
main:   
        #Corregir estoooooooooooooooo
        lw $s0,v0   #carga el 2
        lw $s1,a0   #carga el 4
        lw $s2,a2   #carga el 6
        lw $s3,t0   #carga el 8 
        lw $s4,t2   #carga el 10

        lw $t0,valor($s0) #Carga el 2 en el registro t0
        lw $t1,valor($s1) #Carga el 4 en el registro t1

        #Termina el programa       
        li $v0,10
        syscall 


