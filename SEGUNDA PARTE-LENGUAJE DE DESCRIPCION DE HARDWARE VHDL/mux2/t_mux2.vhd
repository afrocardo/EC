--Autor: Ricardo José Meza Díaz

--Banco de pruebas
library ieee;
use ieee.std_logic_1164.all;

entity t_mux2 is
end t_mux2;

architecture estimulos of t_mux2 is
signal t_p0,t_p1,t_p2,t_p3:	std_logic_vector(31 downto 0);
signal t_seleccion:	 std_logic_vector(1 downto 0);
signal t_salida:	std_logic_vector(31 downto 0);

component mux2
port(	p0,p1,p2,p3:	in std_logic_vector;
	seleccion:	in  std_logic_vector;
	salida:		out std_logic_vector);
end component;

--for t_entrega: entrega use entity work.mux2(flujo1);

begin
t_mux2: mux2 port map( t_p0,t_p1,t_p2,t_p3, t_seleccion, t_salida);
	process
	begin
	t_p0 <= B"01010000000101101001010000110101";
	t_seleccion <= B"00";
	wait for 150 ns;
	t_p1 <= B"01010000000101101001010000110101";
	t_seleccion <= B"01";
	wait for 150 ns;
	t_p2 <= B"01010000000101101001010000110101";
	t_seleccion <= B"10";
	wait for 150 ns;
	t_p3 <= B"01010000010101101001010000100101";
	t_seleccion <= B"11";
	wait for 150 ns;
	wait;
	end process;
end estimulos;
