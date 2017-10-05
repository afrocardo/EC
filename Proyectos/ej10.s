#Ricardo Meza Díaz 
#Sesion 4,Jueves  5 Octubre,Lectura de memoria

    .data           
     #datos
     dir: .byte 1,2,3,4 #definición de 3 bytes(decimal)
    .text
   
        .globl main
        main: 
            li $t1,0x010f123a
            sw $t1,dir+1

        #Finaliza el programa
        li $v0,10
        syscall
