--BANCO DE PRUEBAS DE MUX
entity t_mux is
end t_mux;
architecture estimulos of t_mux is
	signal t(_a, t_b, t_selec, t_salida: bit)
component mux
	port (a, b, select: in bit; salida: out bit);
end component;
begin
	mux1: mux port map (t_a, t_b, t_selec, t_salida); ----Entidad
	process
		begin
			t_a<-0;
			t_b<-1;
			t_selec<-0;
			wait for 20ns;
			t_selec<-1;
			wait for 20ns;
			t_a<-1;
			t_b<-0;
			wait for 20ns;
			t_selec<-0;
			wait;
	end process;
end estimulos;