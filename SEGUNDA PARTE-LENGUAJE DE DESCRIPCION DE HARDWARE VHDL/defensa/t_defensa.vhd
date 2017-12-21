library ieee;
use ieee.std_logic_1164.all;

entity t_defensa is
end t_defensa;

architecture estimulos of t_defensa is
signal t_entrada:	bit_vector(0 to 7);
signal t_control:	bit_vector (0 to 2);
signal t_salida:	bit_vector(0 to 7);

component defensa
port(	entrada:	in bit_vector;
	control:	in bit_vector;
	salida:		out bit_vector);
end component;

--for t_entrega: entrega use entity work.entrega(flujo1);

begin
t_defensa: defensa port map(t_entrada, t_control, t_salida);
	process
	begin
	t_entrada <= B"10100001";
	t_control <= B"001";
	wait for 150 ns;
	t_control <= B"010";
	wait for 150 ns;
	t_control <= B"100";
	wait for 150 ns;
	t_control <= B"101";
	wait for 150 ns;
	t_control <= B"110";
	wait for 150 ns;
	t_control <= B"111";
	wait for 150 ns;
	t_control<=B"000"; --Modificacion defensa.Inicializa el vector a 0,cuando la señal de control es 000.
	wait for 150 ns;
	t_control<=B"011";	--Modificacion defensa.Inicializa el vector a 1,cuando la señal de control es 011.
	wait for 150 ns;
	wait;
	end process;
end estimulos;