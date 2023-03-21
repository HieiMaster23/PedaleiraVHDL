library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity wm8731_control is
    Port (
        clk          : in std_logic;
        reset        : in std_logic;
        i2c_start    : out std_logic;
        i2c_stop     : out std_logic;
        i2c_write    : out std_logic;
        data_in      : out std_logic_vector(7 downto 0);
        busy         : in std_logic;
        ack          : in std_logic
    );
end wm8731_control;

architecture a_wm8731_control of wm8731_control is
    type state_type is (idle, send_config, wait_ack);
    signal state       : state_type := idle;
    signal config_data : std_logic_vector(7 downto 0);
    signal config_index: integer := 0;
    
type config_array is array(0 to 6) of std_logic_vector(15 downto 0);
constant wm8731_config: config_array := (
"1000111100000000", -- Reset
"1000000000000000", -- Analog Control
"1000010100000000", -- Digital Audio Path Control
"1000011100100010", -- Digital Audio Interface Format
"1000100000100000", -- Sample Rate Control
"1000100100000001", -- Activation Control
"1000001101111001" -- Volume Control (both channels)
);
 

begin
    process(clk, reset)
    begin
        if reset = '1' then
            state <= idle;
        elsif rising_edge(clk) then
            case state is
                when idle =>
                    if config_index < 7 then
                        state <= send_config;
                        config_data <= wm8731_config(config_index)(7 downto 0);
                        i2c_start <= '1';
                        i2c_write <= '1';
                    else
                        i2c_start <= '0';
                        i2c_write <= '0';
                    end if;
                when send_config =>
                    i2c_start <= '0';
                    state <= wait_ack;
                when wait_ack =>
                    if (not busy = '0') and (ack = '0') then
                        config_index <= config_index + 1;
                        state <= idle;
                    end if;
                when others =>
                    state <= idle;
            end case;
        end if;
    end process;
    
    data_in <= config_data;
    i2c_stop <= not busy and ack;
end a_wm8731_control;


--Registro de Reset (0x0F): Escreva 0x00 para limpar quaisquer configurações anteriores.

--Registro de Controle Analógico (0x00): Escreva 0x00 para desabilitar o atenuador de entrada de microfone, selecionar a entrada de linha e desabilitar a entrada de microfone.

--Registro de Controle de Caminho de Áudio Digital (0x05): Escreva 0x00 para desabilitar o atenuador de saída, desabilitar o mute de saída e selecionar a saída DAC.

--Registro de Interface de Áudio Digital (0x07): Escreva 0x42 para configurar o formato de dados como I2S, palavra de áudio de 16 bits (12 bits efetivos) e modo mestre.

--Registro de Controle de Taxa de Amostragem (0x08): Escreva 0x20 para configurar a taxa de amostragem como 44,1 kHz, assumindo um clock de entrada MCLK de 12,288 MHz.

--Registro de Controle de Ativação (0x09): Escreva 0x01 para ativar o codec.

--Registro de Controle de Volume de Saída Analógico (0x03 e 0x04): Escreva 0x79 para configurar o volume de saída.