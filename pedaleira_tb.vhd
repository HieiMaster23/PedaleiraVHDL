library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pedaleira_tb is
end pedaleira_tb;

architecture sim of pedaleira_tb is
    -- Declaração de componentes
    COMPONENT pedaleira
        Port (
            clk         : in std_logic;
            reset       : in std_logic;
            AUD_ADCLRCK : in std_logic;
            AUD_ADCDAT  : in std_logic;
            AUD_DACLRCK : in std_logic;
            AUD_DACDAT  : out std_logic;
            AUD_XCK     : in std_logic;
            AUD_BCLK    : in std_logic;
            I2C_SCLK    : out std_logic;
            I2C_SDAT    : inout std_logic
        );
    END COMPONENT;

    -- Sinais de teste
    signal clk        : std_logic := '0';
    signal reset      : std_logic := '0';
    signal AUD_ADCLRCK : std_logic := '0';
    signal AUD_ADCDAT  : std_logic := '0';
signal AUD_DACLRCK : std_logic := '0';
signal AUD_DACDAT : std_logic;
signal AUD_XCK : std_logic := '0';
signal AUD_BCLK : std_logic := '0';
signal I2C_SCLK : std_logic;
signal I2C_SDAT : std_logic;

begin
-- Clock generation
clk_gen: process
begin
wait for 10 ns;
clk <= not clk;
end process clk_gen;

-- Instanciando o módulo pedaleira
uut: pedaleira
    port map (
        clk         => clk,
        reset       => reset,
        AUD_ADCLRCK => AUD_ADCLRCK,
        AUD_ADCDAT  => AUD_ADCDAT,
        AUD_DACLRCK => AUD_DACLRCK,
        AUD_DACDAT  => AUD_DACDAT,
        AUD_XCK     => AUD_XCK,
        AUD_BCLK    => AUD_BCLK,
        I2C_SCLK    => I2C_SCLK,
        I2C_SDAT    => I2C_SDAT
    );

-- I2C clock
i2c_clk_gen: process
begin
    wait for 50 ns;
    I2C_SCLK <= not I2C_SCLK;
end process i2c_clk_gen;

-- I2C data
i2c_data_gen: process
begin
    I2C_SDAT <= '1';
    wait for 200 ns;
    I2C_SDAT <= '0';
    wait for 200 ns;
    I2C_SDAT <= '1';
    wait;
end process i2c_data_gen;

-- I2S Bit-Stream Clock (AUD_BCLK)
bclk_gen: process
begin
    wait for 5 ns;
    AUD_BCLK <= not AUD_BCLK;
end process bclk_gen;

-- I2S ADC LR Clock (AUD_ADCLRCK)
adclrck_gen: process
begin
    wait for 20 ns;
    AUD_ADCLRCK <= not AUD_ADCLRCK;
end process adclrck_gen;

-- I2S DAC LR Clock (AUD_DACLRCK)
daclrck_gen: process
begin
    wait for 20 ns;
    AUD_DACLRCK <= not AUD_DACLRCK;
end process daclrck_gen;


-- I2S ADC Data (AUD_ADCDAT)
adcdat_gen: process
begin
    -- Gerando sinal senoidal pra fins de teste
    for i in 0 to 31 loop
        AUD_ADCDAT <= std_logic(to_unsigned(i, 5)(4));-- Somente o bit mais significativo
        wait for 10 ns;
    end loop;
    wait;
end process adcdat_gen;



-- I2S Chip Clock (AUD_XCK)
xck_gen: process
begin
wait for 2 ns;
AUD_XCK <= not AUD_XCK;
end process xck_gen;

-- Testbench stimulus process
stimulus: process
begin
    -- Reset
    reset <= '1';
    wait for 100 ns;
    reset <= '0';
    
    -- Aguarde algum tempo antes de finalizar a simulação
    wait for 1 us;

    -- Encerrar a simulação
    assert false report "Simulation finished" severity failure;
end process stimulus;
end sim;

