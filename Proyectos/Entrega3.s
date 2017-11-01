#Ricardo Meza Díaz 
#Entrega de práctica,Jueves 21 Septiembre
#Ejercicio 3,Arrays y constantes en memoria. Carga de memoria a registros.

#Comprobar en la ventana de mensajes que la carga ha sido correcta.
# Comprobar en la ventana del segmento de datos que todos los bytes que aparecen
#en las palabras de memoria corresponden con las definiciones de datos que
#aparecen en las directivas del código ensamblador.
# Estudiar el contenido de la ventana de registros. Observar los registros que aparecen
#y sus valores (ver el listado de los registros del MIPS y sus distintos valores en la
#transparencia nº 9 del tutorial).
# Estudiar el contenido de la ventana del segmento de texto.
# Escribir el valor que deberá tomar cada registro tras ejecutarse cada línea de
#código.
# Ejecutar el programa cargado en SPIM.
# Comprobar que los valores que van tomando los registros al ejecutarse las
#operaciones descritas en las líneas de código son los esperados.
# Estudiar cómo se cargan en registros las distintas posiciones de un array de datos en
#memoria y qué operaciones aritméticas es necesario realizar (y por qué).
# Estudiar las directivas e instrucciones que aparecen en el código (ver transparencia
#nº 8 del tutorial).

        .data # *** SEGMENTO DE DATOS ***
valor:  .word 5,10,15,20        # Defino array 4 palabras (decimal).
                                # valor[2] es 15 = 0xf
ind:    .word 1                 # Usado como índice del array "valor"
        .byte 0x1a,0x0b,10      # Defino los 3 primeros bytes de la
                                # siguiente palabra (hex. y dec.).
        .align 2                # Alineo el siguiente dato en memoria
                                # para que esté alineado en palabra
                                # (empiece en una palabra)
        .ascii "Hola"           # Cadena de caracteres
        .asciiz",MIPS"          # Cadena de caracteres terminada
                                # con el caracter nulo.
#---------------------------------------------------------------------------
        .text # *** SEGMENTO DE TEXTO ***
        .globl main             # Etiqueta main visible a otros ficheros
    main:                       # Rutina principal
        lw $s0,valor($zero)     # Carga en $s0 valor[0]. ($s0 <-- valor[0])
                                # También vale: lw $s0,valor
        lw $s4,ind              # $s4 <-- índice del array
        mul $s5,$s4,4           # $s5 <-- ind*4
        lw $s1,valor($s5)       # $s1 <-- valor[1]
        add $s4,$s4,1           # Incrementamos el índice del array
        mul $s5,$s4,4
        lw $s2,valor($s5)       # $s2 <-- valor[2]
        add $s4,$s4,1           # Incrementamos el índice del array
        mul $s5,$s4,4
        lw $s3,valor($s5)       # $s3 <-- valor[3]

        #Para finalizar el programa,haremos lo siguiente 
        li $v0,10
        syscall
