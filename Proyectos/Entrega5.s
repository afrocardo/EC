#Ricardo Meza Díaz 
#Entrega de práctica,Jueves 21 Septiembre
#Ejercicio 5,modos de direccionamiento.

#Realizar un programa en ensamblador del MIPS que cargue el contenido de una posición de
#memoria en un registro y luego escriba el valor del registro en consola. Debe repetir esta
#operación para cada uno de los 7 modos de direccionamiento existentes en el MIPS
#(estudiar la transparencia nº 10 del tutorial). Comprobar que en la consola aparece siempre
#el mismo valor (pues son modos distintos de acceder a un mismo dato). Se recomienda
#enseñar al profesor el código desarrollado, con el objeto de identificar correctamente cada
#modo de direccionamiento.

#***Segmento de datos***#
.data

dato: .word 1 
auxiliar: .word 2           #o índice
array: .byte 1,2,3,4,5,6,7  #Los números que yo quiera.



#***Segmento de texto***#


