#Ricardo Meza Díaz 
#Entrega de práctica,Jueves 21 Septiembre
#Ejercicio 3

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
