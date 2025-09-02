----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity fpga_rebooter is
    Port (
        clk : in std_logic;
        reboot_trigger : in std_logic;
        led0 : out std_logic;
        led1 : out std_logic
    );
end fpga_rebooter;

architecture rtl of fpga_rebooter is

	type state_type is (IDLE, DUMMY1, DUMMY2, SYNC, NOOP1, WBST, ADDR, CMD, IPROG, NOOP2); 
	signal state, next_state : state_type; 

	-- Signal Declarations
	signal icap_din  : std_logic_vector(31 downto 0);
	signal icap_dout : std_logic_vector(31 downto 0);
	signal icap_ce   : std_logic;
	signal icap_wr   : std_logic;

begin

    ICAPE2_0 : ICAPE2
	generic map (
		DEVICE_ID         => X"03651093", -- Specifies the pre-programmed Device ID value to be used for simulation purposes.
		ICAP_WIDTH        => "X32",      -- Specifies the input and output data width.
		SIM_CFG_FILE_NAME => "NONE"      -- Specifies the Raw Bitstream (RBT) file to be parsed by the simulation model.
	)
	port map (
		O     => icap_dout, -- 32-bit output: Configuration data output bus
		CLK   => clk,       -- 1-bit input: Clock Input
		CSIB  => icap_ce,   -- 1-bit input: Active-Low ICAP Enable
		I     => icap_din,  -- 32-bit input: Configuration data input bus
		RDWRB => icap_wr    -- 1-bit input: Read/Write Select input
	);

    process(clk)
    begin
        if rising_edge(clk) then
            case state is
                when IDLE =>
					if (reboot_trigger='1') then
					state     <= DUMMY1;
					icap_ce   <= '0';
					icap_wr   <= '0';
					icap_din  <= X"FFFFFFFF"; -- Bit Reversal of X"FFFFFFFF"
					else
					state     <= IDLE;
					icap_ce   <= '1';
					icap_wr   <= '1';
					icap_din  <= X"FFFFFFFF"; -- Bit Reversal of X"FFFFFFFF"
					end if;

				when DUMMY1 =>
					state     <= DUMMY2;
					icap_ce   <= '0';
					icap_wr   <= '0';
					icap_din  <= X"FFFFFFFF";   -- Bit Reversal of X"FFFFFFFF"

				when DUMMY2 =>
					state     <= SYNC;
					icap_ce   <= '0';
					icap_wr   <= '0';
					icap_din  <= X"5599AA66";   -- Bit Reversal of X"AA995566"

				when SYNC =>
					state     <= NOOP1;
					icap_ce   <= '0';
					icap_wr   <= '0';
					icap_din  <= X"04000000";   -- Bit Reversal of X"20000000"

				when NOOP1 =>
					state     <= WBST;
					icap_ce   <= '0';
					icap_wr   <= '0';
					icap_din  <= X"0C400080";   -- Bit Reversal of X"30020001"

				when WBST =>
					state     <= ADDR;
					icap_ce   <= '0';
					icap_wr   <= '0';
					icap_din  <= X"00800000";    -- Bit Reversal of X"00010000"

				when ADDR =>
					state     <= CMD;
					icap_ce   <= '0';
					icap_wr   <= '0';
					icap_din  <= X"0C000180";   -- Bit Reversal of X"30008001"

				when CMD =>
					state     <= IPROG;
					icap_ce   <= '0';
					icap_wr   <= '0';
					icap_din  <= X"000000F0";   -- Bit Reversal of X"0000000F"

				when IPROG =>
					state     <= NOOP2;
					icap_ce   <= '0';
					icap_wr   <= '0';
					icap_din  <= X"04000000";   -- Bit Reversal of X"20000000"

				when NOOP2 =>
					state     <= IDLE;
					icap_ce   <= '1';
					icap_wr   <= '1';
					icap_din  <= X"FFFFFFFF";   -- Bit Reversal of X"FFFFFFFF"

				when others =>
					state     <= IDLE;
					icap_ce   <= '1';
					icap_wr   <= '1';
					icap_din  <= X"FFFFFFFF";   -- Bit Reversal of X"FFFFFFFF"
			end case;
        end if;
    end process;

end rtl;

