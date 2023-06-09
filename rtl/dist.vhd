library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Distortion_pedal is
  generic (
  		-- Número de bits de cada sinal de entrada e saída
  		N : integer := 12
  );
  Port (
		-- Entradas
		clk : in std_logic;
		signal_in : in std_logic_vector(N - 1 downto 0);
		
		-- Saídas
		signal_out : out std_logic_vector(N - 1 downto 0)
  );
end Distortion_pedal;

architecture a_Distortion_pedal of Distortion_pedal is
  signal signal_out_int : signed(N-1 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      -- Realiza a conversão de std_logic_vector para signed
      signal_out_int <= signed(signal_in);
      
      -- Aplica um ganho de 10
      signal_out_int <= signal_out_int * 10;
      
      -- Realiza a conversão de signed para std_logic_vector
      signal_out <= std_logic_vector(signal_out_int);
    end if;
  end process;
end a_Distortion_pedal;