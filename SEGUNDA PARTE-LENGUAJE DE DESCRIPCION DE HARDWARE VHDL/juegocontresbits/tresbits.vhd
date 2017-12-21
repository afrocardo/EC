--Autor:Ricardo Meza Díaz
--Juego con tres bits.Rotacion y desplazamiento.La entrada es un vector de 8 bits,la salida tambien.
--la de control es un vector de 3 bits.

--Estructura when--else

library ieee;
use ieee.std_logic_1164.all;

entity tresbits is
port	(
	--2 arrays de tipo bit de 8 y uno de tipo bit de 3.
	entrada: in bit_vector(0 to 7);
	control: in bit_vector (0 to 2);
	salida: out bit_vector (0 to 7));
begin	
end ENTITY;

--When..else
architecture flujo1 of tresbits is
begin           
				--Deszplazamiento a la izquierda de 3 bits.
	salida <=	entrada(3 to 7) & '0' &'0' &'0' when control = B"001" else 
				--Desplazamiento a la derecha de 3 bits.
				'0' &'0'&'0'  & entrada(0 to 4) when control = B"010" else 
				--Rotación a la izquierda de 3 bits.
		   		entrada(5)&entrada(6)&entrada(7) & entrada(0 to 4) when control = B"100" else 
		   		--Rotacion a la derecha de 3 bits.
				entrada(3 to 7)&entrada(0)&entrada(1)&entrada(2) when control = B"101" else 
				null;
end flujo1; 

--With..select..when
architecture flujo2 of tresbits is
begin
	 with control select 
	 	  --Deszplazamiento a la izquierda de 3 bits.
			salida<= entrada(3 to 7) & '0' &'0' &'0' when B"001", 
				--Desplazamiento a la derecha de 3 bits.
				'0' &'0'&'0'  & entrada(0 to 4)  when B"010", 
				--Rotación a la izquierda de 3 bits.
		   		entrada(5)&entrada(6)&entrada(7) & entrada(0 to 4) when B"100", 
				--Rotacion a la derecha de 3 bits.
				entrada(3 to 7)&entrada(0)&entrada(1)&entrada(2) when  B"101",
				entrada(0 to 7) when others;	
end flujo2;




