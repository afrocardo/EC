--Autor: Ricardo Meza Díaz
--Banco de pruebas

library ieee;
use ieee.std_logic_1164.all;

entity t_tresbits is
end t_tresbits;

architecture estimulos of t_tresbits is
signal t_entrada:	bit_vector(0 to 7);
signal t_control:	bit_vector (0 to 2);
signal t_salida:	bit_vector(0 to 7);

component tresbits
port(	entrada:	in bit_vector;
	control:	in bit_vector;
	salida:		out bit_vector);
end component;

--for t_entrega: entrega use entity work.entrega(flujo1);

begin
t_tresbits: tresbits port map(t_entrada, t_control, t_salida);
	process
	begin
	t_entrada <= B"01101111";
	t_control <= B"001";
	wait for 150 ns;
	t_control <= B"010";
	wait for 150 ns;
	t_control <= B"100";
	wait for 150 ns;
	t_control <= B"101";
	wait for 150 ns;
	wait;
	end process;
end estimulos;
