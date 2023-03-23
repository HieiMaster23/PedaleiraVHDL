library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity i2s_receiver is
    Port (
        clk         : in std_logic;
        reset       : in std_logic;
        bclk        : in std_logic;
        wclk        : in std_logic;
        sdata       : in std_logic;
        audio_data  : out std_logic_vector(15 downto 0);
        data_valid  : out std_logic
    );
end i2s_receiver;

architecture Behavioral of i2s_receiver is
    signal shift_reg     : std_logic_vector(15 downto 0);
    signal bit_counter   : integer range 0 to 15 := 0;
    signal sampling_edge : std_logic := '0';
    signal last_wclk     : std_logic := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            shift_reg <= (others => '0');
            bit_counter <= 0;
            data_valid <= '0';
        elsif rising_edge(clk) then
            sampling_edge <= wclk and not last_wclk;
            last_wclk <= wclk;

            if sampling_edge = '1' then
                shift_reg <= shift_reg(14 downto 0) & sdata;
                bit_counter <= bit_counter + 1;

                if bit_counter = 15 then
                    audio_data <= shift_reg;
                    data_valid <= '1';
                    bit_counter <= 0;
                else
                    data_valid <= '0';
                end if;
            end if;
        end if;
    end process;
end Behavioral;