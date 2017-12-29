--Autor: Ricardo José Meza Díaz

--Cuando la variable operacion está activa la salida será la operación suma.
--Cuando esté descativada la salida será la resta.

entity alu is
  port (a, b : in integer;
        operacion : in bit;
        salida : out integer);
end entity alu;

architecture flujo of alu is
begin

  salida <= a + b when operacion = '1' else abs (a - b);
end architecture flujo;



