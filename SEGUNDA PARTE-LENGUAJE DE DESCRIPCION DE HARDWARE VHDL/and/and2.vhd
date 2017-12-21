--Ejercicio VHDL AND 
--Autor: Ricardo José Meza Díaz
--Fecha: 29 Noviembre 2017


--Librerias
library ieee;
use ieee.std_logic_1164.all;

--Comienzo de la entidad del circuito and2

ENTITY and2 IS
--Puertos: salidas y entradas
    PORT(e1,e2: IN BIT;sal: OUT BIT);
END and2;
--Fin de la entidad

--Comienzo de la aquitectura(del tipo comportamiento),ya que hay más tipos de comportamiento. del circuito and2
ARCHITECTURE comportamiento OF and2 IS
    BEGIN   
        PROCESS(e1,e2)
            BEGIN
                --la salida de la AND es en funcion de la entrada e1 y e2.   
                sal<=e1 AND e2;
        END PROCESS;
END comportamiento;
--Fin de la arquitectura

