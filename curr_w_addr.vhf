--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : curr_w_addr.vhf
-- /___/   /\     Timestamp : 03/28/2015 10:59:51
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/projects/diploma/buisnes/current/spartan6_tcspc/curr_w_addr.vhf -w D:/projects/diploma/buisnes/current/spartan6_tcspc/curr_w_addr.sch
--Design Name: curr_w_addr
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8CE_HXILINX_curr_w_addr -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_curr_w_addr is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_curr_w_addr;

architecture Behavioral of FD8CE_HXILINX_curr_w_addr is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;

----- CELL M4_1E_HXILINX_curr_w_addr -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_curr_w_addr is
  
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
end M4_1E_HXILINX_curr_w_addr;

architecture M4_1E_HXILINX_curr_w_addr_V of M4_1E_HXILINX_curr_w_addr is
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
end M4_1E_HXILINX_curr_w_addr_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity IMux4x1x8_MUSER_curr_w_addr is
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
end IMux4x1x8_MUSER_curr_w_addr;

architecture BEHAVIORAL of IMux4x1x8_MUSER_curr_w_addr is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   signal XLXN_75  : std_logic;
   signal XLXN_77  : std_logic;
   signal XLXN_81  : std_logic;
   component M4_1E_HXILINX_curr_w_addr
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_3";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_4";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_5";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_6";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_7";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_8";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_9";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_10";
   attribute INIT of XLXI_38 : label is "FF0C";
begin
   XLXI_1 : M4_1E_HXILINX_curr_w_addr
      port map (D0=>InData0(0),
                D1=>InData1(0),
                D2=>InData2(0),
                D3=>InData3(0),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(0));
   
   XLXI_2 : M4_1E_HXILINX_curr_w_addr
      port map (D0=>InData0(1),
                D1=>InData1(1),
                D2=>InData2(1),
                D3=>InData3(1),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(1));
   
   XLXI_3 : M4_1E_HXILINX_curr_w_addr
      port map (D0=>InData0(2),
                D1=>InData1(2),
                D2=>InData2(2),
                D3=>InData3(2),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(2));
   
   XLXI_4 : M4_1E_HXILINX_curr_w_addr
      port map (D0=>InData0(3),
                D1=>InData1(3),
                D2=>InData2(3),
                D3=>InData3(3),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(3));
   
   XLXI_5 : M4_1E_HXILINX_curr_w_addr
      port map (D0=>InData0(4),
                D1=>InData1(4),
                D2=>InData2(4),
                D3=>InData3(4),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(4));
   
   XLXI_6 : M4_1E_HXILINX_curr_w_addr
      port map (D0=>InData0(5),
                D1=>InData1(5),
                D2=>InData2(5),
                D3=>InData3(5),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(5));
   
   XLXI_7 : M4_1E_HXILINX_curr_w_addr
      port map (D0=>InData0(6),
                D1=>InData1(6),
                D2=>InData2(6),
                D3=>InData3(6),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(6));
   
   XLXI_8 : M4_1E_HXILINX_curr_w_addr
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity curr_w_addr is
   port ( addra_curr0        : in    std_logic_vector (7 downto 0); 
          addra_curr1        : in    std_logic_vector (7 downto 0); 
          CLK80              : in    std_logic; 
          curr_wr_lsb        : in    std_logic_vector (7 downto 0); 
          curr_wr_msb        : in    std_logic_vector (7 downto 0); 
          pb_rd              : in    std_logic; 
          PORT_ID            : in    std_logic_vector (7 downto 0); 
          mem_overflow_reset : out   std_logic; 
          pb_data_in         : out   std_logic_vector (7 downto 0); 
          present_curr_addr  : out   std_logic);
end curr_w_addr;

architecture BEHAVIORAL of curr_w_addr is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal addra_curr1_dellayed : std_logic_vector (7 downto 0);
   signal curr_wr_msb_delayed  : std_logic_vector (7 downto 0);
   signal enable0              : std_logic;
   signal enable1              : std_logic;
   signal enable2              : std_logic;
   signal enable3              : std_logic;
   signal XLXN_32              : std_logic;
   signal XLXN_33              : std_logic;
   signal XLXN_114             : std_logic;
   signal XLXN_124             : std_logic;
   signal XLXN_139             : std_logic;
   signal XLXN_140             : std_logic;
   signal XLXN_149             : std_logic;
   signal XLXN_269             : std_logic;
   signal XLXN_270             : std_logic;
   signal XLXN_279             : std_logic;
   signal XLXN_282             : std_logic;
   signal XLXN_283             : std_logic;
   signal XLXN_292             : std_logic;
   signal XLXN_301             : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component IMux4x1x8_MUSER_curr_w_addr
      port ( InData0  : in    std_logic_vector (7 downto 0); 
             InData1  : in    std_logic_vector (7 downto 0); 
             InData2  : in    std_logic_vector (7 downto 0); 
             InData3  : in    std_logic_vector (7 downto 0); 
             Present3 : in    std_logic; 
             Present2 : in    std_logic; 
             Present1 : in    std_logic; 
             Present0 : in    std_logic; 
             OutData  : out   std_logic_vector (7 downto 0); 
             Present  : out   std_logic);
   end component;
   
   component FD8CE_HXILINX_curr_w_addr
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : component is "BLACK_BOX";
   
   component AND4B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B3 : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_27 : label is "XLXI_27_11";
   attribute HU_SET of XLXI_93 : label is "XLXI_93_12";
begin
   XLXI_5 : AND4
      port map (I0=>PORT_ID(7),
                I1=>PORT_ID(6),
                I2=>PORT_ID(5),
                I3=>PORT_ID(4),
                O=>XLXN_33);
   
   XLXI_6 : AND4B2
      port map (I0=>PORT_ID(3),
                I1=>PORT_ID(0),
                I2=>PORT_ID(1),
                I3=>PORT_ID(2),
                O=>XLXN_32);
   
   XLXI_7 : AND2
      port map (I0=>XLXN_33,
                I1=>XLXN_32,
                O=>XLXN_114);
   
   XLXI_24 : AND2
      port map (I0=>XLXN_114,
                I1=>pb_rd,
                O=>enable0);
   
   XLXI_26 : IMux4x1x8_MUSER_curr_w_addr
      port map (InData0(7 downto 0)=>addra_curr0(7 downto 0),
                InData1(7 downto 0)=>addra_curr1_dellayed(7 downto 0),
                InData2(7 downto 0)=>curr_wr_lsb(7 downto 0),
                InData3(7 downto 0)=>curr_wr_msb_delayed(7 downto 0),
                Present0=>enable0,
                Present1=>enable1,
                Present2=>enable2,
                Present3=>enable3,
                OutData(7 downto 0)=>pb_data_in(7 downto 0),
                Present=>present_curr_addr);
   
   XLXI_27 : FD8CE_HXILINX_curr_w_addr
      port map (C=>CLK80,
                CE=>enable0,
                CLR=>XLXN_124,
                D(7 downto 0)=>addra_curr1(7 downto 0),
                Q(7 downto 0)=>addra_curr1_dellayed(7 downto 0));
   
   XLXI_28 : GND
      port map (G=>XLXN_124);
   
   XLXI_35 : AND4
      port map (I0=>PORT_ID(7),
                I1=>PORT_ID(6),
                I2=>PORT_ID(5),
                I3=>PORT_ID(4),
                O=>XLXN_140);
   
   XLXI_37 : AND2
      port map (I0=>XLXN_140,
                I1=>XLXN_139,
                O=>XLXN_149);
   
   XLXI_38 : AND2
      port map (I0=>XLXN_149,
                I1=>pb_rd,
                O=>enable1);
   
   XLXI_39 : AND4B1
      port map (I0=>PORT_ID(3),
                I1=>PORT_ID(2),
                I2=>PORT_ID(1),
                I3=>PORT_ID(0),
                O=>XLXN_139);
   
   XLXI_83 : AND4
      port map (I0=>PORT_ID(7),
                I1=>PORT_ID(6),
                I2=>PORT_ID(5),
                I3=>PORT_ID(4),
                O=>XLXN_270);
   
   XLXI_85 : AND2
      port map (I0=>XLXN_270,
                I1=>XLXN_269,
                O=>XLXN_279);
   
   XLXI_86 : AND2
      port map (I0=>XLXN_279,
                I1=>pb_rd,
                O=>enable2);
   
   XLXI_87 : AND4
      port map (I0=>PORT_ID(7),
                I1=>PORT_ID(6),
                I2=>PORT_ID(5),
                I3=>PORT_ID(4),
                O=>XLXN_283);
   
   XLXI_88 : AND4B2
      port map (I0=>PORT_ID(1),
                I1=>PORT_ID(2),
                I2=>PORT_ID(3),
                I3=>PORT_ID(0),
                O=>XLXN_282);
   
   XLXI_89 : AND2
      port map (I0=>XLXN_283,
                I1=>XLXN_282,
                O=>XLXN_292);
   
   XLXI_90 : AND2
      port map (I0=>XLXN_292,
                I1=>pb_rd,
                O=>enable3);
   
   XLXI_92 : AND4B3
      port map (I0=>PORT_ID(0),
                I1=>PORT_ID(1),
                I2=>PORT_ID(2),
                I3=>PORT_ID(3),
                O=>XLXN_269);
   
   XLXI_93 : FD8CE_HXILINX_curr_w_addr
      port map (C=>CLK80,
                CE=>enable2,
                CLR=>XLXN_301,
                D(7 downto 0)=>curr_wr_msb(7 downto 0),
                Q(7 downto 0)=>curr_wr_msb_delayed(7 downto 0));
   
   XLXI_94 : GND
      port map (G=>XLXN_301);
   
   XLXI_95 : BUF
      port map (I=>enable3,
                O=>mem_overflow_reset);
   
end BEHAVIORAL;


