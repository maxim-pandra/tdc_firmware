--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : IMux4x1x8.vhf
-- /___/   /\     Timestamp : 03/28/2015 10:59:54
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/projects/diploma/buisnes/current/spartan6_tcspc/IMux4x1x8.vhf -w D:/projects/diploma/buisnes/current/spartan6_tcspc/IMux4x1x8.sch
--Design Name: IMux4x1x8
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M4_1E_HXILINX_IMux4x1x8 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_IMux4x1x8 is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_IMux4x1x8;

architecture M4_1E_HXILINX_IMux4x1x8_V of M4_1E_HXILINX_IMux4x1x8 is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_IMux4x1x8_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity IMux4x1x8 is
   port ( InData0  : in    std_logic_vector (7 downto 0); 
          InData1  : in    std_logic_vector (7 downto 0); 
          InData2  : in    std_logic_vector (7 downto 0); 
          InData3  : in    std_logic_vector (7 downto 0); 
          Present0 : in    std_logic; 
          Present1 : in    std_logic; 
          Present2 : in    std_logic; 
          Present3 : in    std_logic; 
          OutData  : out   std_logic_vector (7 downto 0); 
          Present  : out   std_logic);
end IMux4x1x8;

architecture BEHAVIORAL of IMux4x1x8 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   signal XLXN_75  : std_logic;
   signal XLXN_77  : std_logic;
   signal XLXN_81  : std_logic;
   component M4_1E_HXILINX_IMux4x1x8
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component LUT4
      -- synopsys translate_off
      generic( INIT : bit_vector :=  x"0000");
      -- synopsys translate_on
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute INIT of LUT4 : component is "0000";
   attribute BOX_TYPE of LUT4 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_54";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_55";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_56";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_57";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_58";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_59";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_60";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_61";
   attribute INIT of XLXI_38 : label is "FF0C";
begin
   XLXI_1 : M4_1E_HXILINX_IMux4x1x8
      port map (D0=>InData0(0),
                D1=>InData1(0),
                D2=>InData2(0),
                D3=>InData3(0),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(0));
   
   XLXI_2 : M4_1E_HXILINX_IMux4x1x8
      port map (D0=>InData0(1),
                D1=>InData1(1),
                D2=>InData2(1),
                D3=>InData3(1),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(1));
   
   XLXI_3 : M4_1E_HXILINX_IMux4x1x8
      port map (D0=>InData0(2),
                D1=>InData1(2),
                D2=>InData2(2),
                D3=>InData3(2),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(2));
   
   XLXI_4 : M4_1E_HXILINX_IMux4x1x8
      port map (D0=>InData0(3),
                D1=>InData1(3),
                D2=>InData2(3),
                D3=>InData3(3),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(3));
   
   XLXI_5 : M4_1E_HXILINX_IMux4x1x8
      port map (D0=>InData0(4),
                D1=>InData1(4),
                D2=>InData2(4),
                D3=>InData3(4),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(4));
   
   XLXI_6 : M4_1E_HXILINX_IMux4x1x8
      port map (D0=>InData0(5),
                D1=>InData1(5),
                D2=>InData2(5),
                D3=>InData3(5),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(5));
   
   XLXI_7 : M4_1E_HXILINX_IMux4x1x8
      port map (D0=>InData0(6),
                D1=>InData1(6),
                D2=>InData2(6),
                D3=>InData3(6),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(6));
   
   XLXI_8 : M4_1E_HXILINX_IMux4x1x8
      port map (D0=>InData0(7),
                D1=>InData1(7),
                D2=>InData2(7),
                D3=>InData3(7),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(7));
   
   XLXI_33 : VCC
      port map (P=>XLXN_81);
   
   XLXI_36 : OR2
      port map (I0=>Present2,
                I1=>Present3,
                O=>XLXN_77);
   
   XLXI_37 : OR4
      port map (I0=>Present0,
                I1=>Present1,
                I2=>Present3,
                I3=>Present2,
                O=>Present);
   
   XLXI_38 : LUT4
   -- synopsys translate_off
   generic map( INIT => x"FF0C")
   -- synopsys translate_on
      port map (I0=>Present0,
                I1=>Present1,
                I2=>Present2,
                I3=>Present3,
                O=>XLXN_75);
   
end BEHAVIORAL;


