library ieee;
use ieee.std_logic_1164.all;


           -- Divide a frequencia gerada pelo FPGA pra ter um sinal senoidal de 8Khz na saída
    
entity divisor_freq is
    port (
        clk_in : in std_logic;
        clk_out : out std_logic
    );
end divisor_freq;

architecture rtl of divisor_freq is
    signal counter : integer range 0 to 6249 := 0;
begin
    process (clk_in)
    begin
        if rising_edge(clk_in) then
            if counter = 6249 then
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
end rtl;
