--Autor: Ricardo José Meza Díaz

--Banco de pruebas
library ieee;
use ieee.std_logic_1164.all;

entity t_alu is
end entity t_alu;

architecture estimulos of t_alu is
  signal a, b, salida : integer;
  signal operacion : bit;
begin
  dut : entity work.alu(alu_arch) port map (a, b, operacion, salida);
  process is
  begin
    a <= 0; b <= 0; operacion <= '0'; wait for 20 ns;
    a <= 0; b <= 0; operacion <= '1'; wait for 20 ns;
    a <= 2; b <= 2; operacion <= '0'; wait for 20 ns;
    a <= 3; b <= 2; operacion <= '1'; wait for 20 ns;
    a <= 2; b <= 1; operacion <= '0'; wait for 20 ns;
    a <= 2; b <= 4; operacion <= '1'; wait for 20 ns;
    wait;
  end process;
end architecture estimulos;
