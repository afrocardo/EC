--Ejercicio VHDL AND 
--Banco de pruebas del (la entidad)circuito and2(puerta amd: e1,e2, sal)
--Autor: Ricardo José Meza Díaz
--Fecha: 29 Noviembre 2017

--Librerias usadas
library ieee;
use ieee.std_logic_1164.all;

--Referente a la entidad
entity t_and2 is --Aquí no se le pone las entradas ni la salida.
end t_and2;

--Referente a la aquitectura 
ARCHITECTURE estimulos of t_and2 is 
    --Se definen las señales de entrada y de salida.    
    signal t_a,t_b,t_salida: bit;
--Componentes del circuito    
component and2
        port(e1,e2: in bit; sal: out bit);
    end component;
--Acciones que debe tener el circuito(funcionalidad)
begin 
and_2:
    --Mapa de puertos(entradas y salidas)
    and2 port map(t_a,t_b,t_salida);
    --Funcionalidad
    process 
        begin 
            --Valores(binarios) para las entradas.
            t_a<='0';
            t_b<='1';
            --Tiempo de espera para el circuito.
            wait for 80 ns;
            --Despues del tiempo de espera las entradas toman otros valores-
            t_a<='1';
            t_b<='0';
            --Tiempo de espera para el circuito.
            wait for 20 ns;
            wait;
    --Fin del proceso.
    end process;
end estimulos;




