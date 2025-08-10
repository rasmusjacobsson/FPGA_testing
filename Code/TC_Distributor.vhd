----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus

-- Takes a byte input preferably from the uart module along with a DV to signal byte ready
-- Compares it to the available commands
-- Sends a pulse through the correct cmd output.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SD_init is
    generic (Clockfrequency : integer := 12*1000000; -- 12 MHz
              Baud_Rate      : integer := 400000); -- spi clock frequency
    Port ( 
        clk : in std_logic;
        rst : in std_logic;
        TC : in std_logic_vector(7 downto 0);
		TC_DV : in std_logic;
		cmd0 : out std_logic;
		cmd1 : out std_logic;
		cmd2 : out std_logic;
		cmd3 : out std_logic
    );
end SD_init;

architecture rtl of SD_init is
    type state_type is (s_idle, s_TC_check);
    signal state : state_type := s_idle;
	
	signal TC_i : std_logic_vector(7 downto 0) := (others => '0');
	
	constant CMD0 : std_logic_vector(7 downto 0) := x"00";
	constant CMD1 : std_logic_vector(7 downto 0) := x"20";
	constant CMD2 : std_logic_vector(7 downto 0) := x"40";
	constant CMD3 : std_logic_vector(7 downto 0) := x"60";
    
begin
    process(clk)
    begin
    
        if rising_edge(clk) then
            if rst = '1' then
				cmd0 <= '0';
				cmd1 <= '0';
				cmd2 <= '0';
				cmd3 <= '0';
				TC_i <= (others => '0');
				state <= s_idle;
            else
				case state is
					when s_idle =>
						cmd0 <= '0';
						cmd1 <= '0';
						cmd2 <= '0';
						cmd3 <= '0';
						if TC_DV = '1' then
							TC_i <= TC;
							state <= s_TC_check;
						else 
							TC_i <= (others => '0');
							state <= s_idle;
						end if;
						
					
					when s_TC_check =>
					
						if TC_i = CMD0 then
							cmd0 <= '1';
						if TC_i = CMD0 then
							cmd1 <= '1';
						if TC_i = CMD0 then
							cmd2 <= '1';
						if TC_i = CMD0 then
							cmd3 <= '1';
						else
							null;
						end if;
						
						TC_i <= (others => '0');
						state <= s_idle;

				end case;
            end if;
        else
            null;    
        end if;        

    end process;

end rtl;