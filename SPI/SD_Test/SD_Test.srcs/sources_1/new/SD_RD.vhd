--------------------------------------
--- Logic:   FLASH_RD MODULE ---------
--- Author:  Matej Nespor ------------
--- Date:    05-06-2025 --------------
--------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FLASH_RD is
    port (
        clk     : in  std_logic;
        rst     : in  std_logic;
        start   : in  std_logic; -- trigger read
        cs_n    : out std_logic;
        sck     : out std_logic;
        mosi    : out std_logic;
        miso    : in  std_logic;
        done    : out std_logic;
        data_out: out std_logic_vector(7 downto 0)
    );
end entity;

architecture rtl of FLASH_RD is
    type state_type is (idle, send_cmd, addr1, addr2, addr3, read_byte, finish);
    signal state     : state_type := idle;
    signal bit_cnt   : integer range 0 to 7 := 0;
    signal byte_buf  : std_logic_vector(7 downto 0) := (others => '0');
    signal shift_reg : std_logic_vector(7 downto 0) := (others => '0');
    signal clk_div   : std_logic := '0'; -- use this for sck

    constant READ_CMD : std_logic_vector(7 downto 0) := x"03";
    constant addr1_const : std_logic_vector(7 downto 0) := x"00";
    constant addr2_const : std_logic_vector(7 downto 0) := x"01";
    constant addr3_const : std_logic_vector(7 downto 0) := x"00";
    -- add more pointers here if needed

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state     <= idle;
                cs_n      <= '1';
                sck       <= '0';
                mosi      <= '0';
                done      <= '0';
                bit_cnt   <= 0;
                shift_reg <= (others => '0');
            else
                clk_div <= not clk_div; -- simple toggle for slow sck

                if clk_div = '1' then
                    case state is
                        when idle =>
                            done <= '0';
                            if start = '1' then
                                cs_n <= '0'; -- enable flash
                                shift_reg <= READ_CMD;
                                state <= send_cmd;
                                bit_cnt <= 7;
                            end if;

						-- inside state machine
						when send_cmd =>
							mosi <= shift_reg(bit_cnt);
							sck  <= '1';
							if bit_cnt = 0 then
								shift_reg <= addr1_const; -- changed here
								state <= addr1;
								bit_cnt <= 7;
							else
								bit_cnt <= bit_cnt - 1;
							end if;
							sck <= '0';

						when addr1 =>
							mosi <= shift_reg(bit_cnt);
							sck  <= '1';
							if bit_cnt = 0 then
								shift_reg <= addr2_const; -- changed here
								state <= addr2;
								bit_cnt <= 7;
							else
								bit_cnt <= bit_cnt - 1;
							end if;
							sck <= '0';

						when addr2 =>
							mosi <= shift_reg(bit_cnt);
							sck  <= '1';
							if bit_cnt = 0 then
								shift_reg <= addr3_const; -- changed here
								state <= addr3;
								bit_cnt <= 7;
							else
								bit_cnt <= bit_cnt - 1;
							end if;
							sck <= '0';


                        when addr3 =>
                            mosi <= shift_reg(bit_cnt);
                            sck  <= '1';
                            if bit_cnt = 0 then
                                state <= read_byte;
                                bit_cnt <= 7;
                            else
                                bit_cnt <= bit_cnt - 1;
                            end if;
                            sck <= '0';

                        when read_byte =>
                            sck <= '1';
                            byte_buf(bit_cnt) <= miso;
                            if bit_cnt = 0 then
                                state <= finish;
                            else
                                bit_cnt <= bit_cnt - 1;
                            end if;
                            sck <= '0';

                        when finish =>
                            cs_n <= '1'; -- disable flash after read
                            data_out <= byte_buf;
                            done <= '1';
                            state <= idle;

                        when others =>
                            state <= idle;
                    end case;
                end if;
            end if;
        end if;
    end process;

end architecture;

