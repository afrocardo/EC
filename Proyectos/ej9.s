#Ricardo Meza Díaz 
#Sesion 4,Jueves  5 Octubre,Lectura de memoria

    .data           
     #datos
     dir: .byte 0xd,2,11
    .text
   
        .globl main
        main: 
            sw $t0,dir
            sw $t0,dir+8

        #Finaliza el programa
        li $v0,10
        syscall
