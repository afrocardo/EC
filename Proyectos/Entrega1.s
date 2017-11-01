#Ricardo Meza Díaz 
#Entrega de práctica,Jueves 21 Septiembre
#Ejercicio 1,sobre operaciones básicas en memoria.

#Realizar un programa en ensamblador del MIPS, que carge en la memoria los
#datos siguientes: los bytes correspondientes a la cadena “!Hola Mundo!” y a continuación los
#datos en forma de bytes: 5,10,15,20,25,30,35,40. Consultar las transparencias 8 y 16 del
#tutorial del lenguaje ensamblador del MIPS.
#Cargar el programa en el simulador.
#Interpretar el contenido de las direcciones de memoria (consultar las transparencias
#14, 15 y 26 del tutorial y también la tabla de código ASCII).

    .data                           #Los elementos siguientes son almacenados en el segmento de datos.   
    .asciiz "¡Hola Mundo!\n"        #Almacena la cadena str en memoria, y la termina con el caracter nulo.      
    .byte 5,10,15,20,25,30,35,40    #Almacena los n valores de 8 bits en bytes consecutivas de memoria.
    .text                           #Los elementos siguientes son almacenados en el segmento de texto.Estos elementos solo pueden ser instrucciones o palabras.
    

