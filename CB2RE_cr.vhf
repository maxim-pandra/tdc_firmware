--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : CB2RE_cr.vhf
-- /___/   /\     Timestamp : 03/28/2015 10:59:50
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/projects/diploma/buisnes/current/spartan6_tcspc/CB2RE_cr.vhf -w D:/projects/diploma/buisnes/current/spartan6_tcspc/CB2RE_cr.sch
--Design Name: CB2RE_cr
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

entity CB2RE_cr is
   port ( CarryIn  : in    std_logic; 
          CE       : in    std_logic; 
          CLK      : in    std_logic; 
          R        : in    std_logic; 
          CarryOut : out   std_logic; 
          Q0       : out   std_logic; 
          Q1       : out   std_logic);
end CB2RE_cr;

architecture BEHAVIORAL of CB2RE_cr is
   attribute BOX_TYPE   : string ;
   signal XLXN_1   : std_logic;
   signal XLXN_2   : std_logic;
   signal XLXN_15  : std_logic;
   signal XLXN_33  : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   component XORCY
      port ( CI : in    std_logic; 
             LI : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XORCY : component is "BLACK_BOX";
   
   component MUXCY
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDRE
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             R  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDRE : component is "BLACK_BOX";
   
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   XLXI_7 : XORCY
      port map (CI=>XLXN_15,
                LI=>Q1_DUMMY,
                O=>XLXN_1);
   
   XLXI_8 : XORCY
      port map (CI=>CarryIn,
                LI=>Q0_DUMMY,
                O=>XLXN_2);
   
   XLXI_9 : MUXCY
      port map (CI=>CarryIn,
                DI=>XLXN_33,
                S=>Q0_DUMMY,
                O=>XLXN_15);
   
   XLXI_10 : GND
      port map (G=>XLXN_33);
   
   XLXI_17 : MUXCY
      port map (CI=>XLXN_15,
                DI=>XLXN_33,
                S=>Q1_DUMMY,
                O=>CarryOut);
   
   XLXI_18 : FDRE
      port map (C=>CLK,
                CE=>CE,
                D=>XLXN_1,
                R=>R,
                Q=>Q1_DUMMY);
   
   XLXI_19 : FDRE
      port map (C=>CLK,
                CE=>CE,
                D=>XLXN_2,
                R=>R,
                Q=>Q0_DUMMY);
   
end BEHAVIORAL;


