--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : 
--  /   /         Filename : xil_12048_19
-- /___/   /\     Timestamp : 10/22/2016 18:04:20
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

entity SwitchableIoBuffer is
   port ( RXF_GPIO      : in    std_logic; 
          RXF_USB       : in    std_logic; 
          FTDI_BUS_GPIO : inout std_logic_vector (7 downto 0); 
          FTDI_BUS_USB  : inout std_logic_vector (7 downto 0));
end SwitchableIoBuffer;

architecture BEHAVIORAL of SwitchableIoBuffer is
begin
end BEHAVIORAL;

-- synopsys translate_off
configuration CFG_SwitchableIoBuffer of  SwitchableIoBuffer is
   for BEHAVIORAL
   end for;
end CFG_SwitchableIoBuffer;
-- synopsys translate_on

