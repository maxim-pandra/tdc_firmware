--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : autoinc_bramAddr.vhf
-- /___/   /\     Timestamp : 03/28/2015 10:59:51
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/projects/diploma/buisnes/current/spartan6_tcspc/autoinc_bramAddr.vhf -w D:/projects/diploma/buisnes/current/spartan6_tcspc/autoinc_bramAddr.sch
--Design Name: autoinc_bramAddr
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB8CLE_HXILINX_autoinc_bramAddr -----

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB8CLE_HXILINX_autoinc_bramAddr is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR (7 downto 0);	
    L   : in STD_LOGIC );
end CB8CLE_HXILINX_autoinc_bramAddr;

architecture Behavioral of CB8CLE_HXILINX_autoinc_bramAddr is

  signal COUNT : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(7 downto 0) := (others => '1');

begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C ='1') then
    if (L = '1') then
      COUNT <= D;
    elsif (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <=  '0' when (CLR = '1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0'; 
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0'; 
Q   <= COUNT;

end Behavioral;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity autoinc_bramAddr is
   port ( addr_start   : in    std_logic_vector (7 downto 0); 
          CLK80        : in    std_logic; 
          pb_rd        : in    std_logic; 
          pb_wr        : in    std_logic; 
          PORT_ID      : in    std_logic_vector (7 downto 0); 
          br_rd_p      : out   std_logic; 
          b_wr_en      : out   std_logic; 
          curr_rd_addr : out   std_logic_vector (15 downto 0));
end autoinc_bramAddr;

architecture BEHAVIORAL of autoinc_bramAddr is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal bram_wr_en       : std_logic;
   signal count_enable     : std_logic;
   signal curr_rd_addr_raw : std_logic_vector (7 downto 0);
   signal load_enable0     : std_logic;
   signal load_enable1     : std_logic;
   signal XLXN_32          : std_logic;
   signal XLXN_33          : std_logic;
   signal XLXN_75          : std_logic;
   signal XLXN_77          : std_logic;
   signal XLXN_107         : std_logic;
   signal XLXN_109         : std_logic;
   signal XLXN_114         : std_logic;
   signal XLXN_155         : std_logic;
   signal XLXN_170         : std_logic;
   signal XLXN_171         : std_logic;
   signal XLXN_180         : std_logic;
   signal XLXN_182         : std_logic;
   signal XLXN_192         : std_logic;
   component CB8CLE_HXILINX_autoinc_bramAddr
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             L   : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (7 downto 0); 
             TC  : out   std_logic);
   end component;
   
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
   
   component AND4B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B3 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
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
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_13";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_14";
begin
   XLXI_2 : CB8CLE_HXILINX_autoinc_bramAddr
      port map (C=>CLK80,
                CE=>count_enable,
                CLR=>XLXN_107,
                D(7 downto 0)=>addr_start(7 downto 0),
                L=>load_enable0,
                CEO=>XLXN_155,
                Q(7 downto 0)=>curr_rd_addr(7 downto 0),
                TC=>open);
   
   XLXI_3 : CB8CLE_HXILINX_autoinc_bramAddr
      port map (C=>CLK80,
                CE=>XLXN_155,
                CLR=>XLXN_109,
                D(7 downto 0)=>addr_start(7 downto 0),
                L=>load_enable1,
                CEO=>open,
                Q(7 downto 0)=>curr_rd_addr_raw(7 downto 0),
                TC=>open);
   
   XLXI_5 : AND4
      port map (I0=>PORT_ID(7),
                I1=>PORT_ID(6),
                I2=>PORT_ID(5),
                I3=>PORT_ID(4),
                O=>XLXN_33);
   
   XLXI_6 : AND4B2
      port map (I0=>PORT_ID(3),
                I1=>PORT_ID(2),
                I2=>PORT_ID(1),
                I3=>PORT_ID(0),
                O=>XLXN_32);
   
   XLXI_7 : AND2
      port map (I0=>XLXN_33,
                I1=>XLXN_32,
                O=>XLXN_114);
   
   XLXI_15 : AND2
      port map (I0=>XLXN_77,
                I1=>XLXN_75,
                O=>XLXN_182);
   
   XLXI_16 : AND4
      port map (I0=>PORT_ID(7),
                I1=>PORT_ID(6),
                I2=>PORT_ID(5),
                I3=>PORT_ID(4),
                O=>XLXN_77);
   
   XLXI_17 : AND4B3
      port map (I0=>PORT_ID(3),
                I1=>PORT_ID(1),
                I2=>PORT_ID(0),
                I3=>PORT_ID(2),
                O=>XLXN_75);
   
   XLXI_22 : GND
      port map (G=>XLXN_109);
   
   XLXI_23 : GND
      port map (G=>XLXN_107);
   
   XLXI_24 : AND2
      port map (I0=>XLXN_114,
                I1=>pb_wr,
                O=>load_enable0);
   
   XLXI_25 : AND2
      port map (I0=>XLXN_182,
                I1=>pb_wr,
                O=>bram_wr_en);
   
   XLXI_34 : AND4
      port map (I0=>PORT_ID(7),
                I1=>PORT_ID(6),
                I2=>PORT_ID(5),
                I3=>PORT_ID(4),
                O=>XLXN_171);
   
   XLXI_36 : AND2
      port map (I0=>XLXN_171,
                I1=>XLXN_170,
                O=>XLXN_180);
   
   XLXI_37 : AND2
      port map (I0=>XLXN_180,
                I1=>pb_wr,
                O=>load_enable1);
   
   XLXI_38 : AND4B2
      port map (I0=>PORT_ID(3),
                I1=>PORT_ID(1),
                I2=>PORT_ID(0),
                I3=>PORT_ID(2),
                O=>XLXN_170);
   
   XLXI_42 : BUF
      port map (I=>bram_wr_en,
                O=>b_wr_en);
   
   XLXI_44 : GND
      port map (G=>curr_rd_addr(14));
   
   XLXI_45 : GND
      port map (G=>curr_rd_addr(15));
   
   XLXI_46 : VCC
      port map (P=>curr_rd_addr(13));
   
   XLXI_47 : BUF
      port map (I=>curr_rd_addr_raw(0),
                O=>curr_rd_addr(8));
   
   XLXI_48 : BUF
      port map (I=>curr_rd_addr_raw(1),
                O=>curr_rd_addr(9));
   
   XLXI_49 : BUF
      port map (I=>curr_rd_addr_raw(2),
                O=>curr_rd_addr(10));
   
   XLXI_50 : BUF
      port map (I=>curr_rd_addr_raw(3),
                O=>curr_rd_addr(11));
   
   XLXI_51 : BUF
      port map (I=>curr_rd_addr_raw(4),
                O=>curr_rd_addr(12));
   
   XLXI_52 : AND2
      port map (I0=>XLXN_192,
                I1=>XLXN_182,
                O=>count_enable);
   
   XLXI_53 : OR2
      port map (I0=>pb_rd,
                I1=>pb_wr,
                O=>XLXN_192);
   
   XLXI_54 : AND2
      port map (I0=>XLXN_182,
                I1=>pb_rd,
                O=>br_rd_p);
   
end BEHAVIORAL;


