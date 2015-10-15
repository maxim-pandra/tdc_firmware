--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : 
--  /   /         Filename : xil_3244_19
-- /___/   /\     Timestamp : 09/30/2015 12:52:38
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity buf8 is
   port ( d_in  : in    std_logic_vector (7 downto 0); 
          d_out : out   std_logic_vector (7 downto 0));
end buf8;

architecture BEHAVIORAL of buf8 is
begin
d_out<=d_in;
end BEHAVIORAL;
