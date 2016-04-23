--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : 
--  /   /         Filename : xil_4936_19
-- /___/   /\     Timestamp : 11/06/2015 11:33:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity eventsMux is
   port ( event1_i : in    std_logic; 
          event2_i : in    std_logic; 
          event3_i : in    std_logic; 
          event4_i : in    std_logic;
			 generator_i : in std_logic;
			 generator_rst : in std_logic;
          event1_o : out   std_logic; 
          event2_o : out   std_logic; 
          event3_o : out   std_logic; 
          event4_o : out   std_logic;
			 generator_o :out std_logic);
end eventsMux;

architecture BEHAVIORAL of eventsMux is
	signal selector, generator_enable : std_logic;
	signal tmp: unsigned(10 downto 0);
	signal tmp_out : std_logic_vector(0 downto 0);
	signal prescaler : unsigned(23 downto 0);
	signal generator : std_logic;

begin
selector <= '1';

event1_o <= event1_i;
event2_o <= event2_i WHEN selector ='1' ELSE 
            event1_i;
event3_o <= event3_i WHEN selector ='1' ELSE 
            event1_i; 
event4_o <= '0';

-- generator signal divider

  gen_clk : process (generator_i, generator_rst)
  begin  -- process gen_clk
    if generator_rst = '1' then
      generator   <= '0';
      prescaler   <= (others => '0');
    elsif rising_edge(generator_i) then   -- rising clock edge
      if prescaler = X"400" then     -- 1024 in hex (we dividng on 1000)
        prescaler   <= (others => '0');
        generator   <= not generator;
      else
        prescaler <= prescaler + "1";
      end if;
    end if;
  end process gen_clk;
 
end BEHAVIORAL;


