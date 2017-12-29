--Autor: Ricardo José Meza Díaz
--Escriba un módulo VHDL implementando un multiplexor de 4 entradas. Cada entrada debe ser un std_logic_vector de 32 bits de ancho.

--Librerias
library ieee;
use ieee.std_logic_1164.all;
--Estructura when else.
--Entidad
entity mux2 is
 port (p0,p1,p2,p3: in std_logic_vector(31 downto 0);
 seleccion : in std_logic_vector(1 downto 0);
 salida : out std_logic_vector(31 downto 0));
end mux2;
--Arquitectura
architecture flujo of mux2 is
begin
 salida <= p0 when seleccion=B"00" else
 p1 when seleccion=B"01" else
 p2 when seleccion=B"10" else
 p3 when seleccion=B"11";
end flujo; 