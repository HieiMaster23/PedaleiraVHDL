library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pedaleira is
    Port (
        clk         : in std_logic;
        reset       : in std_logic;
        sda         : inout std_logic;
        scl         : out std_logic;
        bclk        : in std_logic;
        wclk        : in std_logic;
        sdata       : in std_logic;
        audio_data  : out std_logic_vector(15 downto 0);
        data_valid  : out std_logic
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
            sda       => sda,
            scl       => scl,
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
            bclk       => bclk,
            wclk       => wclk,
            sdata      => sdata,
            audio_data => audio_data,
            data_valid => data_valid
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
