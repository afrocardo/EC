#Ricardo Meza Díaz 
#Sesion 4,Jueves  5 Octubre,Lectura de memoria

    .data           
     #datos
     dir: .byte 0xd,2,11
    .text
   
        .globl main
        main: 
             lw $t0,dir          #Carga(palabra) los 32 bits almacenados en palabra de memoria  especificada por en el registro t0.
             lb $t0,dir+2        #Carga(byte y extiende signo) los 8 bits almacenados en el byte de memoria especificado por dirección en el LSB del registro t0 extiende el signo dos posiciones . 
            la $t0,dir           #Carga(dirección) la dirección calculada en el registro t0.
        

        #Finaliza el programa
        li $v0,10
        syscall
