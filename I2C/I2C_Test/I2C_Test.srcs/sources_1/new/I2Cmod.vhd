----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------
-- V1.0:
-- Created file
-- Not working (with sensors, it still creates bitstream)
-- V2.0
-- Changed library from std_logic_unsigned to numeric_std.
-- Changed ack_error into type "out" instead of "buffer". Also
-- created an internal signal "ack_error_int" to account for this.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;                                                                                                      
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity I2Cmod is  
  generic(Sys_Clockfrequency : integer := 12*1000000; -- Input clock speed from user logic in Hz
          Bus_Clockfrequency : integer := 400000);    -- Speed the i2c bus (scl) will run at in Hz
  Port(--SDA       : inout std_logic;                   -- Serial data output of i2c bus (old)
       --SCL       : inout std_logic;                   -- Serial clock output of i2c bus (old)
       sda_i : in  std_logic; -- New signals for using the IOBUF
       sda_o : out std_logic;
       sda_t : out std_logic;
       scl_i : in  std_logic;
       scl_o : out std_logic;
       scl_t : out std_logic;
       sysclk    : in std_logic;                      -- System clock
       reset_n   : in std_logic;                      -- Active low reset
       ena       : in std_logic;                      -- Latch in command
       addr      : in std_logic_vector(6 downto 0);   -- Address of target slave
       rw        : in std_logic;                      -- '0' is write, '1' is read
       data_wr   : in std_logic_vector(7 downto 0);   -- Data to write to slave
       busy      : out std_logic;                     -- Indicates transaction in progress
       data_rd   : out std_logic_vector(7 downto 0);  -- Data read from slave
       ack_error : out std_logic);                 -- Flag if improper acknowledge from slave       
end I2Cmod;

architecture rtl of I2Cmod is
  constant divider : integer := (Sys_Clockfrequency/Bus_Clockfrequency)/4;    -- Number of clocks in 1/4 cycle of scl
  
  type State_M is (READY,START,COMMAND,SLV_ACK1,WRITE,READ,SLV_ACK2,MSTR_ACK,STOP); -- Needed states
  signal state : State_M;                                                     -- State machine
  
  signal data_clk      : std_logic;                    -- Data clock for sda
  signal data_clk_prev : std_logic;                    -- Data clock during previous system clock
  signal scl_clk       : std_logic;                    -- Constantly running internal scl
  signal scl_ena       : std_logic := '0';             -- Enables internal scl to output
  signal sda_int       : std_logic := '1';             -- Internal sda
  signal sda_ena_n     : std_logic;                    -- Enables internal sda to output
  signal addr_rw       : std_logic_vector(7 downto 0); -- Latched in address and read/write
  signal data_tx       : std_logic_vector(7 downto 0); -- Latched in data to write to slave
  signal data_rx       : std_logic_vector(7 downto 0); -- Data received from slave
  signal bit_cnt       : integer range 0 to 7 := 7;    -- Tracks bit number in transaction
  signal stretch       : std_logic := '0';             -- Identifies if slave is stretching scl
  
  signal ack_error_int : std_logic; -- New internal buffer from V2.0

begin

  -- Generate the timing for the bus clock (scl_clk) and the data clock (data_clk)
  process(sysclk, reset_n)
    variable count : integer range 0 to divider*4; -- Timing for clock generation
  begin
    if(reset_n = '0') then                    -- Reset asserted
      stretch <= '0';
      count   := 0;
    elsif(sysclk'event and sysclk = '1') then 
      data_clk_prev <= data_clk;               -- Store previous value of data clock
                                               
      if(count = divider*4-1) then             -- End of timing cycle
        count := 0;                            -- Reset timer
      elsif(stretch = '0') then                -- Clock stretching from slave not detected
        count := count + 1;                    -- Continue clock generation timing
      end if;
      
      case count is 
        when 0 to divider-1 =>              -- First 1/4 cycle of clocking
          scl_clk  <= '0';
          data_clk <= '0';
        when divider to 2*divider-1 =>      -- Second 1/4 cycle of clocking
          scl_clk  <= '0';
          data_clk <= '1';
        when 2*divider to 3*divider-1 =>    -- Third 1/4 cycle of clocking
          scl_clk <= '1';                   -- Release scl
          if(scl_i = '0') then                -- Detect if slave is stretching clock
            stretch <= '1';
          else
            stretch <= '0';
          end if;
          data_clk <= '1';
        when others =>                      -- Last 1/4 cycle of clocking
          scl_clk  <= '1';                  
          data_clk <= '0';                  
      end case;                           
    end if;
  end process;
  
  -- State machine and writing to sda during scl low (data_clk rising edge)
  process(sysclk, reset_n)
  begin
    if(reset_n = '0') then      -- Reset asserted
      state         <= READY;       -- Return to initial state 
      busy          <= '1';         -- Indicate not available
      scl_ena       <= '0';         -- Sets scl high impedance (see after process)
      sda_int       <= '1';         -- Sets sda high impedance (see after process)
      ack_error_int <= '0';         -- Clear acknowledge error flag
      bit_cnt       <= 7;           -- Restarts data bit counter
      data_rd       <= "00000000";  -- Clear data read port
      
    elsif(sysclk'event and sysclk = '1') then
      if(data_clk = '1' and data_clk_prev = '0') then -- Data clock rising edge
        case state is
        
          when READY =>             -- Idle state
            if(ena = '1') then      -- Transaction requested
              busy    <= '1';       -- Flag busy
              addr_rw <= addr & rw; -- Collect requested slave address and command
              data_tx <= data_wr;   -- Collect requested data to write
              state   <= START;     -- Go to start bit
            else                    -- Remain idle
              busy  <= '0';         -- Unflag busy
              state <= READY;       -- Remain idle
            end if;                
          
          when START =>                  -- Start bit of transaction
            busy    <= '1';              -- Resume busy if continuous mode
            sda_int <= addr_rw(bit_cnt); -- Set first address bit to bus
            state   <= COMMAND;          -- Go to command
            
          when COMMAND =>                    -- Address and command byte of transaction
            if(bit_cnt = 0) then             -- Command transmit finished
              sda_int <= '1';                -- Release sda for slave acknowledge
              bit_cnt <= 7;                  -- Reset bit counter for "byte" states
              state <= SLV_ACK1;             -- Go to slave acknowledge (command)
            else                             -- Next clock cycle of command state
              bit_cnt <= bit_cnt - 1;        -- Keep track of transaction bits
              sda_int <= addr_rw(bit_cnt-1); -- Write address/command bit to bus
              state <= COMMAND;              -- Continue with command
            end if;                         
            
          when SLV_ACK1 =>                 -- Slave acknowledge bit (command)
            if(addr_rw(0) = '0') then      -- Write command
              sda_int <= data_tx(bit_cnt); -- Write first bit of data
              state   <= WRITE;            -- Go to write byte
            else                           -- Read command
              sda_int <= '1';              -- Release sda from incoming data
              state   <= READ;             -- Go to read byte
            end if;                        -- Go to read byte
            
          when WRITE =>                      -- Write byte of transaction
            busy <= '1';                     -- Resume busy if continuous mode
            if(bit_cnt = 0) then             -- Write byte transmit finished
              sda_int <= '1';                -- Release sda for slave acknowledge
              bit_cnt <= 7;                  -- Reset bit counter for "byte" states
              state   <= SLV_ACK2;           -- Go to slave acknowledge (write)
            else                             -- Next clock cycle of write state
              bit_cnt <= bit_cnt - 1;        -- Keep track of transaction bits
              sda_int <= data_tx(bit_cnt-1); -- Write next bit to bus
              state <= WRITE;                -- Continue writing
            end if;
            
          when READ =>                                   -- Read byte of transaction
            busy <= '1';                                 -- Resume busy if continuous mode
            if(bit_cnt = 0) then                         -- Read byte receive finished
              if(ena = '1' and addr_rw = addr & rw) then -- Continuing with another read at the same address
                sda_int <= '0';                           -- Acknowledge the byte has been received
              else                                        -- Stopping or continuing with a write
                sda_int <= '1';                           -- Send a no-acknowledge (before stop or repeated start)
              end if;
              bit_cnt <= 7;                               -- Reset bit counter for "byte" states
              data_rd <= data_rx;                         -- Output received data
              state   <= MSTR_ACK;                        -- Go to master acknowledge
            else                                          -- Next clock cycle of read state
              bit_cnt <= bit_cnt - 1;                     -- Keep track of transaction bits
              state   <= READ;                            -- Continue reading
            end if;                                      
            
          when SLV_ACK2 =>                   -- Slave acknowledge bit (write)
            if(ena = '1') then               -- Continue transaction
              busy    <= '0';                -- Continue is accepted
              addr_rw <= addr & rw;          -- Collect requested slave address and command
              data_tx <= data_wr;            -- Collect requested data to write
              if(addr_rw = addr & rw) then   -- Continue transaction with another write
                sda_int <= data_wr(bit_cnt); -- Write first bit of data
                state   <= WRITE;            -- Go to write byte
              else                           -- Continue transaction with a read or new slave
                state <= START;              -- Go to repeated start
              end if;
            else                             -- Complete transaction
              state <= STOP;                 -- Go to stop bit
            end if;             
             
          when MSTR_ACK =>                 -- Master acknowledge bit after a read
            if(ena = '1') then             -- Continue transaction
              busy <= '0';                 -- Continue is accepted and data received is available on bus
              addr_rw <= addr & rw;        -- Collect requested slave address and command
              data_tx <= data_wr;          -- Collect requested data to write
              if(addr_rw = addr & rw) then -- Continue transaction with another read
                sda_int <= '1';            -- Release sda from incoming data
                state <= READ;             -- Go to read byte
              else                         -- Continue transaction with a write or new slave
                state <= START;            -- Repeated start
              end if;
            else                           -- Complete transaction
              state <= STOP;               -- Go to stop bit
            end if;                       
            
          when STOP =>    
            busy  <= '0';
            state <= READY;     
        end case;
        
      elsif(data_clk = '0' and data_clk_prev = '1') then -- Data clock falling edge
        case state is
          when START =>            -- Starting new transaction
            if(scl_ena = '0') then -- Enable scl output
              scl_ena       <= '1';    -- Reset acknowledge error output
              ack_error_int <= '0';    -- Reset acknowledge error output
            end if;
          
          when SLV_ACK1 =>                              -- Receiving slave acknowledge (command)
            if(sda_i /= '0' or ack_error_int = '1') then  -- No-acknowledge or previous no-acknowledge
              ack_error_int <= '1';                     -- Set error output if no-acknowledge
            end if;
            
          when READ =>                -- Receiving slave data
            data_rx(bit_cnt) <= sda_i;  -- Receive current slave data bit
            
          when SLV_ACK2 =>                             -- Receiving slave acknowledge (write)
            if(sda_i /= '0' or ack_error_int = '1') then -- No-acknowledge or previous no-acknowledge
              ack_error_int <= '1';                    -- Set error output if no-acknowledge
            end if;                                
            
          when STOP =>
            scl_ena <= '0'; --Disable scl
            
          when OTHERS =>
            NULL;
        end case;
      end if;
    end if;
  end process;
  
  -- Set SDA output
  with state select
    sda_ena_n <= data_clk_prev     when START,   -- Generate start condition
                 not data_clk_prev when STOP,    -- Generate stop condition
                 sda_int           when OTHERS;  -- Set to internal sda signal
                 
  -- Set SCL and SDA outputs (OLD)
  --SCL <= '0' when (scl_ena = '1' and scl_clk = '0') else 'Z';
  --SDA <= '0' when (sda_ena_n = '0')                 else 'Z';
  
  -- Set SCL and SDA outputs (NEW V3.0)
  scl_o <= '0';                                                 -- Drives SCL line low
  scl_t <= '0' when (scl_ena = '1' and scl_clk = '0') else '1'; -- Enables high impedence/pull down mode
  sda_o <= '0';                                                 -- Drives SDA line low                  
  sda_t <= '0' when (sda_ena_n = '0')                 else '1'; -- Enables high impedence/pull down mode
  
  -- ack_error out
  ack_error <= ack_error_int;
            
end rtl;
