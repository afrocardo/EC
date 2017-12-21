--ARQUITECTURA COMPUTAMENTAL DE MULTIPLEXOR
begin
	process (a, b, selec)
	begin
		if (selec==0) then
			salida<-a
		else
			salida<-b
		end if;
	end process;
end comportamental;