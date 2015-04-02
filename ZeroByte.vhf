--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : ZeroByte.vhf
-- /___/   /\     Timestamp : 03/28/2015 10:59:51
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/projects/diploma/buisnes/current/spartan6_tcspc/ZeroByte.vhf -w D:/projects/diploma/buisnes/current/spartan6_tcspc/ZeroByte.sch
--Design Name: ZeroByte
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ZeroByte is
   port ( ZeroData : out   std_logic_vector (7 downto 0));
end ZeroByte;

architecture BEHAVIORAL of ZeroByte is
   attribute BOX_TYPE   : string ;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : GND
      port map (G=>ZeroData(7));
   
   XLXI_2 : GND
      port map (G=>ZeroData(6));
   
   XLXI_3 : GND
      port map (G=>ZeroData(5));
   
   XLXI_4 : GND
      port map (G=>ZeroData(4));
   
   XLXI_5 : GND
      port map (G=>ZeroData(3));
   
   XLXI_6 : GND
      port map (G=>ZeroData(2));
   
   XLXI_7 : GND
      port map (G=>ZeroData(1));
   
   XLXI_8 : GND
      port map (G=>ZeroData(0));
   
end BEHAVIORAL;


