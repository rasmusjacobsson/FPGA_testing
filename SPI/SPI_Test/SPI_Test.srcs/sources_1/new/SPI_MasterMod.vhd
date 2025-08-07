----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------
-- V1.0
-- Potential problem is that mosi is being set as high impedence. This shouldn't
-- have an effect here but might need to be changed. Also, the code is adapted 
-- to only having one slave. (A few ports changed to generics)
-- Other changes include: adding an internal ss_n signal and an internal spi clk.
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity spi_master is
  generic(
    slaves  : integer := 1;      --number of spi slaves (Only SD-Card)
    d_width : integer := 8;      --data bus width (1 Byte as default)
    addr    : integer := 0;      --address of slave (move to port if using more than one slave)
    clk_div : integer := 0;      --system clock cycles per 1/2 period of sclk.(Generic set to max speed, might need to change dependinng on SD-Card speed reqs)
    cpol    : std_logic := '0';  --spi clock polarity (set to 0 because I think the SD-Card uses this)
    cpha    : std_logic := '0'); --spi clock phase    (set to 0 because I think the SD-Card uses this)
  port(
    sysclk  : in     std_logic;                             --system clock
    reset_n : in     std_logic;                             --asynchronous reset
    enable  : in     std_logic;                             --initiate transaction
    cont    : in     std_logic;                             --continuous mode command
    tx_data : in     std_logic_vector(d_width-1 downto 0);  --data to transmit
    miso    : in     std_logic;                             --master in, slave out
    sclk    : out    std_logic;                             --spi clock
    ss_n    : out    std_logic;                             --slave select
    mosi    : out    std_logic;                             --master out, slave in
    busy    : out    std_logic;                             --busy / data ready signal
    rx_data : out    std_logic_vector(d_width-1 downto 0)); --data received
end spi_master;

architecture  logic of spi_master is

  type machine is(ready, execute);                           --state machine data type
  signal state       : machine;                              --current state
  
  signal slave       : integer;                              --slave selected for current transaction
  signal clk_ratio   : integer;                              --current clk_div
  signal count       : integer;                              --counter to trigger sclk from system clock
  signal clk_toggles : integer range 0 to d_width*2 + 1;     --count spi clock toggles
  
  signal assert_data : std_logic;                            --'1' is tx sclk toggle, '0' is rx sclk toggle
  signal continue    : std_logic;                            --flag to continue transaction
  signal rx_buffer   : std_logic_vector(d_width-1 downto 0); --receive data buffer
  signal tx_buffer   : std_logic_vector(d_width-1 downto 0); --transmit data buffer
  signal last_bit_rx : integer range 0 to d_width*2;         --last rx data bit location
  
  signal ss_n_buf    : std_logic; -- This is used to read the ss_n in the code (internal signal only)
  signal sclk_buf    : std_logic; -- Same as ss_n but for spi clock
  
begin
  process(sysclk, reset_n)
  begin

    if(reset_n = '0') then          --reset system
      busy     <= '1';               --set busy signal
      ss_n_buf <= '1';               --deassert slave select line
      mosi     <= 'Z';               --set master out to high impedance
      rx_data  <= (OTHERS => '0');   --clear receive data port
      state    <= ready;             --go to ready state when reset is exited

    elsif rising_edge(sysclk) then
    
      case state is                    --state machine

        when ready =>
          busy     <= '0';             --clock out not busy signal
          ss_n_buf <= '1';             --set slave select output high
          mosi     <= 'Z';             --set mosi output high impedance
          continue <= '0';             --clear continue flag
          sclk_buf <= cpol;            --set spi clock polarity
          
          --user input to initiate transaction
          if(enable = '1') then       
            busy <= '1';             --set busy signal
            if(addr < slaves) then   --check for valid slave address
              slave <= addr;         --clock in current slave selection if valid
            else
              slave <= 0;            --set to first slave if not valid
            end if;
            if(clk_div = 0) then     --check for valid spi speed
              clk_ratio <= 1;        --set to maximum speed if zero
              count     <= 1;        --initiate system-to-spi clock counter
            else
              clk_ratio <= clk_div;  --set to input selection if valid
              count     <= clk_div;  --initiate system-to-spi clock counter
            end if;
            assert_data <= NOT cpha;                           --set spi clock phase
            tx_buffer   <= tx_data;                            --clock in data for transmit into buffer
            clk_toggles <= 0;                                  --initiate clock toggle counter
            last_bit_rx <= d_width*2 + conv_integer(cpha) - 1; --set last rx data bit
            state       <= execute;                            --proceed to execute state
          else
            state <= ready;                                    --remain in ready state
          end if;

        when execute =>
          busy        <= '1';        --set busy signal
          ss_n_buf    <= '0';        --set proper slave select output
          
          if(count = clk_ratio) then              --system clock to sclk ratio is met
            count       <= 1;                     --reset system-to-spi clock counter
            assert_data <= NOT assert_data;       --switch transmit/receive indicator
            if(clk_toggles = d_width*2 + 1) then
              clk_toggles <= 0;                   --reset spi clock toggles counter
            else
              clk_toggles <= clk_toggles + 1;     --increment spi clock toggles counter
            end if;
            
            --spi clock toggle needed
            if(clk_toggles <= d_width*2 and ss_n_buf = '0') then 
              sclk_buf <= NOT sclk_buf; --toggle spi clock
            end if;
            
            --receive spi clock toggle
            if(assert_data = '0' and clk_toggles < last_bit_rx + 1 and ss_n_buf = '0') then
              rx_buffer <= rx_buffer(d_width-2 downto 0) & miso; --shift in received bit
            end if;
            
            --transmit spi clock toggle
            if(assert_data = '1' and clk_toggles < last_bit_rx) then 
              mosi <= tx_buffer(d_width-1);                     --clock out data bit
              tx_buffer <= tx_buffer(d_width-2 downto 0) & '0'; --shift data transmit buffer
            END IF;
            
            --last data receive, but continue
            if(clk_toggles = last_bit_rx and cont = '1') then 
              tx_buffer <= tx_data;                       --reload transmit buffer
              clk_toggles <= last_bit_rx - d_width*2 + 1; --reset spi clock toggle counter
              continue <= '1';                            --set continue flag
            end if;
            
            --normal end of transaction, but continue
            if(continue = '1') then  
              continue <= '0';      --clear continue flag
              busy <= '0';          --clock out signal that first receive data is ready
              rx_data <= rx_buffer; --clock out received data to output port    
            end if;
            
            --end of transaction
            if((clk_toggles = d_width*2 + 1) and cont = '0') then   
              busy     <= '0';          --clock out not busy signal
              ss_n_buf <= '1';          --set all slave selects high
              mosi     <= 'Z';          --set mosi output high impedance
              rx_data  <= rx_buffer;    --clock out received data to output port
              state    <= ready;        --return to ready state
            else                        --not end of transaction
              state <= execute;         --remain in execute state
            end if;
          
          else        --system clock to sclk ratio not met
            count <= count + 1; --increment counter
            state <= execute;   --remain in execute state
          end if;

      end case;
    end if;
  end process; 
  
  ss_n <= ss_n_buf; -- Assign internal slave select to output slave select
  sclk <= sclk_buf; -- Same here but for spi clock
  
end logic;
