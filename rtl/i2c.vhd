library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Este módulo I2C mestre possui as seguintes entradas e saídas:

-- `clk`: Clock principal do sistema
-- `reset`: Sinal de reset
-- `sda`: Linha de dados bidirecional (I2C)
-- `scl`: Linha de clock (I2C)
-- `i2c_start`: Sinal de início da transmissão I2C
-- `i2c_stop`: Sinal de parada da transmissão I2C
-- `i2c_read`: Sinal para ler um byte do dispositivo escravo I2C
-- `i2c_write`: Sinal para escrever um byte no dispositivo escravo I2C
-- `data_in`: Dado de entrada (8 bits) para ser enviado ao dispositivo escravo I2C
-- `data_out`: Dado de saída (8 bits) recebido do dispositivo escravo I2C
-- `ack`: Sinal de reconhecimento (ACK) recebido do dispositivo escravo I2C
-- `busy`: Sinal que indica se o módulo I2C mestre está ocupado

--Agora que você possui um módulo I2C mestre, você pode integrá-lo ao módulo controlador WM8731. 
--Use os sinais `i2c_start`, `i2c_stop`, `i2c_read`, `i2c_write`, `data_in` e `ack` para controlar a comunicação com o CODEC WM8731
--e configurá-lo de acordo com suas necessidades.



entity i2c_master is
    Port (
        clk          : in std_logic;
        reset        : in std_logic;
        sda          : inout std_logic;
        scl          : out std_logic;
        i2c_start    : in std_logic;
        i2c_stop     : in std_logic;
        i2c_read     : in std_logic;
        i2c_write    : in std_logic;
        data_in      : in std_logic_vector(7 downto 0);
        data_out     : out std_logic_vector(7 downto 0);
        ack          : out std_logic;
        busy         : out std_logic
    );
end i2c_master;

architecture a_i2c_master of i2c_master is
    type state_type is (idle, start, stop, write_addr, write_data, read_data, send_ack, receive_ack);
    signal state       : state_type := idle;
    signal sda_internal : std_logic;
    signal scl_internal : std_logic;
    signal bit_counter  : integer range 0 to 8 := 0;
    signal shift_reg    : std_logic_vector(8 downto 0);
    signal received_ack : std_logic;
    
    attribute keep : string;
    attribute keep of sda_internal : signal is "true";
    attribute keep of scl_internal : signal is "true";
    attribute keep of state : signal is "true";
    
begin
    sda <= sda_internal when (state = start or state = stop or state = write_addr or state = write_data or state = send_ack) else 'Z';
    scl <= scl_internal;
    busy <= '1' when state /= idle else '0';
    ack <= received_ack;
    data_out <= shift_reg(7 downto 0);

    process(clk, reset)
    begin
        if reset = '1' then
            state <= idle;
        elsif rising_edge(clk) then
            case state is
                when idle =>
                    if i2c_start = '1' then
                        state <= start;
                    end if;
                when start =>
                    sda_internal <= '0';
                    state <= write_addr;
                    bit_counter <= 0;
                    shift_reg(7 downto 0) <= data_in;
                    shift_reg(8) <= '0'; -- Write operation
                when stop =>
                    sda_internal <= '0';
                    state <= idle;
                when write_addr =>
                    scl_internal <= '0';
                    sda_internal <= shift_reg(8 - bit_counter);
                    if bit_counter = 8 then
                        state <= receive_ack;
                    else
                        bit_counter <= bit_counter + 1;
                    end if;
                when write_data =>
                    scl_internal <= '0';
                    sda_internal <= shift_reg(7 - bit_counter);
                    if bit_counter = 8 then
                        state <= receive_ack;
                    else
                        bit_counter <= bit_counter + 1;
                    end if;
                when read_data =>
                    scl_internal <= '0';
                    if bit_counter = 8 then
                        state <= send_ack;
                    else
                        bit_counter <= bit_counter + 1;
                        shift_reg(7 - bit_counter + 1) <= sda_internal;
                   end if;
               when send_ack =>
                        scl_internal <= '0';
                        sda_internal <= '0';
                        state <= read_data;
                        bit_counter <= bit_counter + 1;
               when receive_ack =>
                        scl_internal <= '0';
                        received_ack <= sda_internal;
                     if i2c_stop = '1' then
                         state <= stop;
                     elsif i2c_write = '1' then
                         state <= write_data;
                         bit_counter <= 0;
                         shift_reg(7 downto 0) <= data_in;
                     elsif i2c_read = '1' then
                         state <= read_data;
                         bit_counter <= 0;
                     else
                         state <= idle;
                     end if;
          when others =>
                state <= idle;
           end case;
      end if;
end process;
end a_i2c_master;
