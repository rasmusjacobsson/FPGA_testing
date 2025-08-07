----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UART_RXmod is
  generic(Clockfrequency : integer := 12*1000000; -- 12 MHz
          Baud_Rate      : integer := 115200);
  Port(sysclk      : in  std_logic;
       i_RX_Serial : in  std_logic;
       o_RX_DV     : out std_logic;
       o_RX_byte   : out std_logic_vector(7 downto 0));
end UART_RXmod;

architecture rtl of UART_RXmod is

  type t_SM_Main is (s_Idle, s_RX_Start_Bit, s_RX_Data_Bits, s_RX_Stop_Bit, s_Cleanup);
  signal r_SM_Main : t_SM_Main := s_Idle;
  
  signal r_RX_Data_R : std_logic := '0';
  signal r_RX_Data   : std_logic := '0';
  
  constant CLKS_PER_BIT : integer := Clockfrequency/Baud_Rate;
  
  signal r_Clk_Count : integer range 0 to CLKS_PER_BIT-1 := 0;
  signal r_Bit_Index : integer range 0 to 7 := 0;
  signal r_RX_Byte   : std_logic_vector(7 downto 0) := (others => '0');
  signal r_RX_DV     : std_logic := '0';
  
begin

  -- Purpose: Double-register the incoming data.
  -- This allows it to be used in the UART RX Clock Domain.
  -- (It removes problems caused by metastabiliy)
  p_SAMPLE : process (sysclk)
  begin
    if rising_edge(sysclk) then
      r_RX_Data_R <= i_RX_Serial;
      r_RX_Data   <= r_RX_Data_R; 
    end if; 
  end process p_SAMPLE;

  -- Purpose: Control RX state machine
  p_UART_RX : process(sysclk)
  begin
    if rising_edge(sysclk) then
      case r_SM_Main is
        when s_Idle =>
          r_RX_DV     <= '0';
          r_Clk_Count <= 0;
          r_Bit_Index <= 0;
          
          if r_RX_Data = '0' then -- Start bit detected
            r_SM_Main <= s_RX_Start_Bit;
          else
            r_SM_Main <= s_Idle;
          end if;
          
        -- Check middle of start bit to make sure its low. If it is the state is changed to s_RX_Data_Bits,
        -- otherwise the state returns to Idle.
        when s_RX_Start_Bit =>
          if r_Clk_Count = (CLKS_PER_BIT-1)/2 then
            if r_RX_Data = '0' then 
              r_Clk_Count <= 0;
              r_SM_Main <= s_RX_Data_Bits;
            else
              r_SM_Main <= s_Idle;
            end if;
          else
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_RX_Start_Bit;
          end if;
          
        -- Samples all data bits with an interval of CLKS_PER_BIT, starting 
        -- halfway into the Start_Bit. This means that every bit is sampled 
        -- in the middle.
        when s_RX_Data_Bits =>
          if r_Clk_Count < CLKS_PER_BIT-1 then
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_RX_Data_Bits;
          else 
            r_Clk_Count            <= 0;
            r_RX_Byte(r_Bit_Index) <= r_RX_Data; -- Inverts the RX_Byte (For testing)
            
            -- Check if all bits have been received
            if r_Bit_Index < 7 then
              r_Bit_Index <= r_Bit_Index + 1;
              r_SM_Main   <= s_RX_Data_Bits;
            else
              r_Bit_Index <= 0;
              r_SM_Main   <= s_RX_Stop_Bit;
            end if;
          end if;
        
        when s_RX_Stop_Bit =>
          
          if r_Clk_Count < CLKS_PER_BIT-1 then
            r_Clk_Count <= r_Clk_count + 1;
            r_SM_Main   <= s_RX_Stop_Bit;
          else
            r_RX_DV     <= '1';
            r_Clk_Count <= 0;
            r_SM_Main   <= s_Cleanup;
          end if;
          
        -- Resets stuff (stays here 1 clk cycle). 
        -- Since r_RX_DV is reset here, it means that 
        -- it is only briefly '1', which indicates to outside 
        -- logic that the r_RX_Byte is up for grabs
        when s_Cleanup =>
          r_SM_Main <= s_Idle;
          r_RX_DV   <= '0';
          
        -- If state is undefined (for error handling)
        when others =>
          r_SM_Main <= s_Idle;
          
      end case;
    end if;
  end process p_UART_RX;
   
  -- Maps the received message as an output as well as an 
  -- indicator that new valid data is available.            
  o_RX_DV   <= r_RX_DV;
  o_RX_Byte <= r_RX_Byte;
  
end rtl;
