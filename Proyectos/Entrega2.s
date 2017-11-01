#Ricardo Meza Díaz 
#Entrega de práctica,Jueves 21 Septiembre
#Ejercicio 2,operaciones básicas con la memoria.

#Realiza un programa en ensamblador del MIPS que cargue en la memoria,
#consecutivamente, los siguientes datos:
# Los siguientes bytes: 16, 32, 48.
# Las siguientes medias palabras: 16, 32, 48.
# Las siguientes palabras:16, 32, 48.
#Carga el programa en el simulador e interpretar el contenido de las direcciones de memoria.
 
    .data                   #Los elementos siguientes son almacenados en el segmento de datos.   

    .byte	16,32,48         #Almacena los n valores de 8 bits en bytes consecutivas de memoria.
    .half	16,32,48          #Almacena los n valores de 16 bits en medias palabras consecutivas de memoria.
    .word	16,32,48          #Almacena los n valores de 32 bits en palabras consecutivas de memoria.

    .text                    #Los elementos siguientes son almacenados en el segmento de texto.Estos elementos solo pueden ser instrucciones o palabras.

