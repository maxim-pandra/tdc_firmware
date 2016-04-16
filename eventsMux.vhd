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
          event1_o : out   std_logic; 
          event2_o : out   std_logic; 
          event3_o : out   std_logic; 
          event4_o : out   std_logic);
end eventsMux;

architecture BEHAVIORAL of eventsMux is
	signal selector : std_logic;
begin
selector <= '0';

event1_o <= event1_i;
event2_o <= event2_i WHEN selector ='1' ELSE 
            event1_i WHEN selector ='0';
event3_o <= event3_i WHEN selector ='1' ELSE 
            event1_i WHEN selector ='0'; 
event4_o <= event4_i WHEN selector ='1' ELSE 
            event1_i WHEN selector ='0';
 
end BEHAVIORAL;


