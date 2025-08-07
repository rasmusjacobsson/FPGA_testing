----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UART_TXmod is
  generic(Clockfrequency : integer := 12*1000000; -- 12 MHz
          Baud_Rate      : integer := 115200);
  port(sysclk      : in  std_logic;
       i_TX_DV     : in  std_logic;
       i_TX_Byte   : in  std_logic_vector(7 downto 0);
       o_TX_Active : out std_logic;
       o_TX_Serial : out std_logic;
       o_TX_Done   : out std_logic);
end UART_TXmod;

architecture rtl of UART_TXmod is

  type t_SM_Main is (s_Idle, s_TX_Start_Bit, s_TX_Data_Bits, s_TX_Stop_Bit, s_Cleanup);
  signal r_SM_Main : t_SM_Main := s_Idle;
  
  constant CLKS_PER_BIT : integer := Clockfrequency/Baud_Rate;
  
  signal r_Clk_Count : integer range 0 to CLKS_PER_BIT-1 := 0;
  signal r_Bit_Index : integer range 0 to 7 := 0;
  signal r_TX_Data   : std_logic_vector(7 downto 0) := (others => '0');
  signal r_TX_Done   : std_logic := '0';

begin

p_UART_TX : process (sysclk)
  begin
    if rising_edge(sysclk) then
      case r_SM_Main is
        when s_Idle =>
          o_TX_Active <= '0';
          o_TX_Serial <= '1';         -- Drive Line High for Idle
          r_TX_Done   <= '0';
          r_Clk_Count <= 0;
          r_Bit_Index <= 0;
 
          if i_TX_DV = '1' then       -- Transmission detected, saves data byte in temp vector
            r_TX_Data <= i_TX_Byte;
            r_SM_Main <= s_TX_Start_Bit;
          else
            r_SM_Main <= s_Idle;
          end if;
 
        -- Send out Start Bit. Start bit = 0
        when s_TX_Start_Bit =>
          o_TX_Active <= '1';   -- Output tells system that transmission is happening
          o_TX_Serial <= '0';
 
          -- Wait CLKS_PER_BIT-1 clock cycles for start bit to finish
          if r_Clk_Count < CLKS_PER_BIT-1 then
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_TX_Start_Bit;
          else
            r_Clk_Count <= 0;
            r_SM_Main   <= s_TX_Data_Bits;
          end if;
 
        -- Wait CLKS_PER_BIT-1 clock cycles for data bits to finish
        when s_TX_Data_Bits =>
          o_TX_Serial <= r_TX_Data(r_Bit_Index);
           
          if r_Clk_Count < CLKS_PER_BIT-1 then
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_TX_Data_Bits;
          else
            r_Clk_Count <= 0;
             
            -- Check if we have sent out all bits
            if r_Bit_Index < 7 then
              r_Bit_Index <= r_Bit_Index + 1;
              r_SM_Main   <= s_TX_Data_Bits;
            else
              r_Bit_Index <= 0;
              r_SM_Main   <= s_TX_Stop_Bit;
            end if;
          end if;
 
        -- Send out Stop bit. Stop bit = 1 
        when s_TX_Stop_Bit =>
          o_TX_Serial <= '1';
 
          -- Wait CLKS_PER_BIT-1 clock cycles for Stop bit to finish
          if r_Clk_Count < CLKS_PER_BIT-1 then
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_TX_Stop_Bit;
          else
            r_TX_Done   <= '1';         -- Tells system that transmission is finished
            r_Clk_Count <= 0;           
            r_SM_Main   <= s_Cleanup;
          end if;
         
        -- Stay here 1 clock 
        when s_Cleanup =>
          o_TX_Active <= '0';
          r_TX_Done   <= '1';
          r_SM_Main   <= s_Idle;
 
        -- If state is undefined (for error handling)
        when others =>
          r_SM_Main <= s_Idle;
 
      end case;
    end if;
  end process p_UART_TX;
 
 -- Maps output "Done" signal to the one used in process
  o_TX_Done <= r_TX_Done;

end rtl;
