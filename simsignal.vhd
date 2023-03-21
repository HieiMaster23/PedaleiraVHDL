library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity audio_system_tb is
end audio_system_tb;

architecture sim of audio_system_tb is
    signal clk        : std_logic := '0';
    signal reset      : std_logic := '0';
    signal sda        : std_logic;
    signal scl        : std_logic;
    signal bclk       : std_logic := '0';
    signal wclk       : std_logic := '0';
    signal sdata      : std_logic := '0';
    signal audio_data : std_logic_vector(15 downto 0);
    signal data_valid : std_logic;

    constant clk_period : time := 10 ns;
    constant bclk_period : time := 64 ns;
begin
    dut: entity work.pedaleira
        port map (
            clk        => clk,
            reset      => reset,
            sda        => sda,
            scl        => scl,
            bclk       => bclk,
            wclk       => wclk,
            sdata      => sdata,
            audio_data => audio_data,
            data_valid => data_valid
        );

    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    bclk_process : process
    begin
        bclk <= '0';
        wait for bclk_period / 2;
        bclk <= '1';
        wait for bclk_period / 2;
    end process;

    -- Insira aqui a lógica para gerar os sinais de reset, wclk, sdata, e quaisquer outros estímulos necessários.

end sim;
