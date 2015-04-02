--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : event_handler.vhf
-- /___/   /\     Timestamp : 03/28/2015 10:59:54
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/projects/diploma/buisnes/current/spartan6_tcspc/event_handler.vhf -w D:/projects/diploma/buisnes/current/spartan6_tcspc/event_handler.sch
--Design Name: event_handler
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

entity CB2RE_cr_MUSER_event_handler is
   port ( CarryIn  : in    std_logic; 
          CE       : in    std_logic; 
          CLK      : in    std_logic; 
          R        : in    std_logic; 
          CarryOut : out   std_logic; 
          Q0       : out   std_logic; 
          Q1       : out   std_logic);
end CB2RE_cr_MUSER_event_handler;

architecture BEHAVIORAL of CB2RE_cr_MUSER_event_handler is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity event_handler is
   port ( CLK_High        : in    std_logic; 
          counter         : in    std_logic_vector (15 downto 0); 
          evt             : in    std_logic; 
          evt_std         : in    std_logic; 
          reset           : in    std_logic; 
          sdata           : in    std_logic; 
          window_mode     : in    std_logic; 
          adc_reset       : out   std_logic; 
          attached_signal : out   std_logic; 
          CLK_ADC         : out   std_logic; 
          cs              : out   std_logic; 
          main_bus        : out   std_logic_vector (28 downto 0); 
          ready           : out   std_logic; 
          saw             : out   std_logic; 
          s0_dbg          : out   std_logic; 
          s1_dbg          : out   std_logic);
end event_handler;

architecture BEHAVIORAL of event_handler is
   attribute BOX_TYPE   : string ;
   signal as                    : std_logic;
   signal XLXN_217              : std_logic;
   signal XLXN_219              : std_logic;
   signal XLXN_227              : std_logic;
   signal CLK_ADC_DUMMY         : std_logic;
   signal attached_signal_DUMMY : std_logic;
   component adc_drive
      port ( attached_signal : in    std_logic; 
             sCLK            : in    std_logic; 
             reset           : in    std_logic; 
             sdata           : in    std_logic; 
             ready_sync      : out   std_logic; 
             cs              : out   std_logic; 
             data_bus        : out   std_logic_vector (11 downto 0); 
             adc_reset       : out   std_logic);
   end component;
   
   component main_distribution_system
      port ( clk                 : in    std_logic; 
             reset               : in    std_logic; 
             evt_ext             : in    std_logic; 
             counter             : in    std_logic_vector (15 downto 0); 
             err                 : out   std_logic; 
             saw                 : out   std_logic; 
             attached_signal_out : out   std_logic; 
             counter_out         : out   std_logic_vector (15 downto 0); 
             evt_std             : in    std_logic; 
             s0_dbg              : out   std_logic; 
             s1_dbg              : out   std_logic; 
             as                  : out   std_logic; 
             window_mode         : in    std_logic);
   end component;
   
   component CB2RE_cr_MUSER_event_handler
      port ( CarryIn  : in    std_logic; 
             CLK      : in    std_logic; 
             R        : in    std_logic; 
             CE       : in    std_logic; 
             CarryOut : out   std_logic; 
             Q1       : out   std_logic; 
             Q0       : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   attached_signal <= attached_signal_DUMMY;
   CLK_ADC <= CLK_ADC_DUMMY;
   XLXI_84 : adc_drive
      port map (attached_signal=>attached_signal_DUMMY,
                reset=>reset,
                sCLK=>CLK_ADC_DUMMY,
                sdata=>sdata,
                adc_reset=>adc_reset,
                cs=>cs,
                data_bus(11 downto 0)=>main_bus(27 downto 16),
                ready_sync=>ready);
   
   XLXI_85 : main_distribution_system
      port map (clk=>CLK_High,
                counter(15 downto 0)=>counter(15 downto 0),
                evt_ext=>evt,
                evt_std=>evt_std,
                reset=>reset,
                window_mode=>window_mode,
                as=>as,
                attached_signal_out=>attached_signal_DUMMY,
                counter_out(15 downto 0)=>main_bus(15 downto 0),
                err=>main_bus(28),
                saw=>saw,
                s0_dbg=>s0_dbg,
                s1_dbg=>s1_dbg);
   
   XLXI_97 : CB2RE_cr_MUSER_event_handler
      port map (CarryIn=>XLXN_219,
                CE=>XLXN_217,
                CLK=>CLK_High,
                R=>XLXN_227,
                CarryOut=>open,
                Q0=>open,
                Q1=>CLK_ADC_DUMMY);
   
   XLXI_99 : VCC
      port map (P=>XLXN_217);
   
   XLXI_100 : VCC
      port map (P=>XLXN_219);
   
   XLXI_101 : INV
      port map (I=>as,
                O=>XLXN_227);
   
end BEHAVIORAL;


