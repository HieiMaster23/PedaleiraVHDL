library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity pedaleira is
    Port (
        clk          : in std_logic;
        reset        : in std_logic;
        AUD_ADCLRCK  : in std_logic; -- Audio CODEC ADC LR Clock 3.3V
        AUD_ADCDAT   : in std_logic; -- Audio CODEC ADC Data 3.3V
        AUD_DACLRCK  : in std_logic; -- Audio CODEC DAC LR Clock 3.3V
        AUD_DACDAT   : out std_logic; -- Audio CODEC DAC Data 3.3V
        AUD_XCK      : in std_logic; -- Audio CODEC Chip Clock 3.3V
        AUD_BCLK     : in std_logic; -- Audio CODEC Bit-Stream Clock 3.3V
        I2C_SCLK     : out std_logic; -- I2C Clock 3.3V
        I2C_SDAT     : inout std_logic -- I2C Data 3.3V
    );
end pedaleira;

architecture a_pedaleira of pedaleira is
    signal i2c_start    : std_logic;
    signal i2c_stop     : std_logic;
    signal i2c_write    : std_logic;
    signal data_in      : std_logic_vector(7 downto 0);
    signal busy         : std_logic;
    signal ack          : std_logic;
    
begin
    i2c_inst: entity work.i2c_master
        port map (
            clk       => clk,
            reset     => reset,
            sda       => I2C_SDAT,
            scl       => I2C_SCLK,
            i2c_start => i2c_start,
            i2c_stop  => i2c_stop,
            i2c_read  => '0',
            i2c_write => i2c_write,
            data_in   => data_in,
            data_out  => open,
            ack       => ack,
            busy      => busy
        );

    i2s_inst: entity work.i2s_receiver
        port map (
            clk        => clk,
            reset      => reset,
            bclk       => AUD_BCLK,
            wclk       => AUD_DACLRCK, -- usar DAC LR Clock para wclk
            sdata      => AUD_ADCDAT, -- usar ADC Data para sdata
            audio_data => open, -- não está sendo usado no módulo i2s_receiver, deixar como open
            data_valid => open -- não está sendo usado no módulo i2s_receiver, deixar como open
        );

    wm8731_inst: entity work.wm8731_control
        port map (
            clk       => clk,
            reset     => reset,
            i2c_start => i2c_start,
            i2c_stop  => i2c_stop,
            i2c_write => i2c_write,
            data_in   => data_in,
            busy      => busy,
            ack       => ack
        );
end a_pedaleira;
