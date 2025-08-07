----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------
-- V1.0
-- If i_RX_byte is 11111111, then the next byte you send will be stored in the SD Card
-- If i_RX_byte is 00000000, then you read from the SD Card
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Store_And_Read_mod is
 generic(Clockfrequency : integer := 12*1000000); -- 12 Mhz
 Port(sysclk        : in std_logic;
      reset_n       : in std_logic;
      i_busy        : in std_logic;
      i_data_read   : in std_logic_vector(7 downto 0);
      i_TX_done     : in std_logic;
      i_RX_DV       : in std_logic;
      i_RX_byte     : in std_logic_vector(7 downto 0);
      o_spi_ena     : out std_logic;
      o_spi_cont    : out std_logic;
      o_spi_data    : out std_logic;
      led1          : out std_logic;
      o_TX_DV       : out std_logic;
      o_TX_data     : out std_logic_vector(7 downto 0));
end Store_And_Read_mod;

architecture rtl of Store_And_Read_mod is

  type SM_Main is (START, STORE, READ);
  signal state : SM_Main;

begin

  -- Main Process
  process(reset_n, sysclk) 
  begin 
 
    if(reset_n = '0') then
      
      state <= START;
      led1  <= '0';
    
    elsif rising_edge(sysclk) then
      case state is 
      
        when START =>
        
          led1 <= '1';
        
          if rising_edge(i_RX_DV) then
            if i_RX_Byte = "11111111" then
              state <= STORE;
         
            elsif i_RX_Byte = "00000000" then
              state <= READ;
            
            end if;
          end if;
        
        when STORE =>
        
        
        when READ =>
        
        
        when OTHERS =>
        
      end case;
    end if;
 end process;


end rtl;
