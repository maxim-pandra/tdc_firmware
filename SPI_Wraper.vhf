--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : SPI_Wraper.vhf
-- /___/   /\     Timestamp : 03/28/2015 10:59:50
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/projects/diploma/buisnes/current/spartan6_tcspc/SPI_Wraper.vhf -w D:/projects/diploma/buisnes/current/spartan6_tcspc/SPI_Wraper.sch
--Design Name: SPI_Wraper
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL SR8CLE_HXILINX_SPI_Wraper -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR8CLE_HXILINX_SPI_Wraper is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    L   : in STD_LOGIC;
    SLI : in STD_LOGIC
    );
end SR8CLE_HXILINX_SPI_Wraper;

architecture Behavioral of SR8CLE_HXILINX_SPI_Wraper is
signal q_tmp : std_logic_vector(7 downto 0);
begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= (others => '0');
  elsif (C'event and C = '1') then
    if (L= '1') then
      q_tmp <= D;
    elsif (CE='1') then 
      q_tmp <= ( q_tmp(6 downto 0) & SLI );
    end if;
  end if;
end process;

Q <= q_tmp;

end Behavioral;

----- CELL SR8CE_HXILINX_SPI_Wraper -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR8CE_HXILINX_SPI_Wraper is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    SLI : in STD_LOGIC
    );
end SR8CE_HXILINX_SPI_Wraper;

architecture Behavioral of SR8CE_HXILINX_SPI_Wraper is
signal q_tmp : std_logic_vector(7 downto 0);
begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      q_tmp <= ( q_tmp(6 downto 0) & SLI );
    end if;
  end if;
end process;

Q <= q_tmp;


end Behavioral;

----- CELL CB4RE_HXILINX_SPI_Wraper -----

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4RE_HXILINX_SPI_Wraper is
  port (
    CEO : out STD_LOGIC;
    Q0  : out STD_LOGIC;
    Q1  : out STD_LOGIC;
    Q2  : out STD_LOGIC;
    Q3  : out STD_LOGIC;
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    R   : in STD_LOGIC
    );
end CB4RE_HXILINX_SPI_Wraper;

architecture CB4RE_HXILINX_SPI_Wraper_V of CB4RE_HXILINX_SPI_Wraper is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');

begin

process(C)
begin
  if (C'event and C ='1') then
    if (R='1') then
      COUNT <= (others => '0');
    elsif (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <= '1' when (COUNT = TERMINAL_COUNT) else '0'; 
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0'; 
Q3  <= COUNT(3);
Q2  <= COUNT(2);
Q1  <= COUNT(1);
Q0  <= COUNT(0);

end CB4RE_HXILINX_SPI_Wraper_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SPIinterface_MUSER_SPI_Wraper is
   port ( ClkIn   : in    std_logic; 
          DataIn  : in    std_logic_vector (7 downto 0); 
          DataWr  : in    std_logic; 
          MISO    : in    std_logic; 
          DataOut : out   std_logic_vector (7 downto 0); 
          MOSI    : out   std_logic; 
          Ready   : out   std_logic; 
          SCK     : out   std_logic);
end SPIinterface_MUSER_SPI_Wraper;

architecture BEHAVIORAL of SPIinterface_MUSER_SPI_Wraper is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   signal SCKint      : std_logic;
   signal XLXN_6      : std_logic_vector (7 downto 0);
   signal XLXN_9      : std_logic;
   signal XLXN_10     : std_logic;
   signal XLXN_21     : std_logic;
   signal XLXN_22     : std_logic;
   signal XLXN_27     : std_logic;
   signal Ready_DUMMY : std_logic;
   component SR8CLE_HXILINX_SPI_Wraper
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             L   : in    std_logic; 
             SLI : in    std_logic; 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component SR8CE_HXILINX_SPI_Wraper
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             SLI : in    std_logic; 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component CB4RE_HXILINX_SPI_Wraper
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             R   : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_1";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_2";
   attribute INIT of XLXI_15 : label is "F";
begin
   Ready <= Ready_DUMMY;
   XLXI_1 : SR8CLE_HXILINX_SPI_Wraper
      port map (C=>ClkIn,
                CE=>SCKint,
                CLR=>XLXN_9,
                D(7 downto 0)=>DataIn(7 downto 0),
                L=>DataWr,
                SLI=>XLXN_10,
                Q(7 downto 0)=>XLXN_6(7 downto 0));
   
   XLXI_5 : BUF
      port map (I=>XLXN_6(7),
                O=>MOSI);
   
   XLXI_7 : GND
      port map (G=>XLXN_9);
   
   XLXI_8 : GND
      port map (G=>XLXN_10);
   
   XLXI_12 : SR8CE_HXILINX_SPI_Wraper
      port map (C=>ClkIn,
                CE=>XLXN_27,
                CLR=>XLXN_9,
                SLI=>MISO,
                Q(7 downto 0)=>DataOut(7 downto 0));
   
   XLXI_14 : INV
      port map (I=>XLXN_22,
                O=>XLXN_21);
   
   XLXI_15 : CB4RE_HXILINX_SPI_Wraper
      port map (C=>ClkIn,
                CE=>XLXN_21,
                R=>DataWr,
                CEO=>open,
                Q0=>SCKint,
                Q1=>open,
                Q2=>open,
                Q3=>open,
                TC=>XLXN_22);
   
   XLXI_16 : INV
      port map (I=>SCKint,
                O=>XLXN_27);
   
   XLXI_17 : AND2B1
      port map (I0=>Ready_DUMMY,
                I1=>SCKint,
                O=>SCK);
   
   XLXI_18 : FD
      port map (C=>ClkIn,
                D=>XLXN_22,
                Q=>Ready_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SPI_Wraper is
   port ( clk80           : in    std_logic; 
          Data_From_Flash : in    std_logic; 
          Data_From_Pb    : in    std_logic_vector (7 downto 0); 
          PORT_ID         : in    std_logic_vector (7 downto 0); 
          RD              : in    std_logic; 
          Byte_From_Flash : out   std_logic_vector (7 downto 0); 
          Data_To_Flash   : out   std_logic; 
          SPI_CLK         : out   std_logic; 
          SPI_CS          : out   std_logic; 
          SPI_Ready       : out   std_logic);
end SPI_Wraper;

architecture BEHAVIORAL of SPI_Wraper is
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   signal SPI_CS_Present  : std_logic;
   signal SPI_Data_Wr     : std_logic;
   signal WR              : std_logic;
   signal XLXN_32         : std_logic;
   signal XLXN_33         : std_logic;
   signal XLXN_34         : std_logic;
   signal XLXN_41         : std_logic;
   signal XLXN_42         : std_logic;
   signal XLXN_51         : std_logic;
   signal XLXN_64         : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component SPIinterface_MUSER_SPI_Wraper
      port ( DataWr  : in    std_logic; 
             DataIn  : in    std_logic_vector (7 downto 0); 
             MISO    : in    std_logic; 
             ClkIn   : in    std_logic; 
             SCK     : out   std_logic; 
             Ready   : out   std_logic; 
             MOSI    : out   std_logic; 
             DataOut : out   std_logic_vector (7 downto 0));
   end component;
   
   component AND4B4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B4 : component is "BLACK_BOX";
   
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : component is "BLACK_BOX";
   
   component FDCE
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND4B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B3 : component is "BLACK_BOX";
   
   attribute INIT of XLXI_333 : label is "1";
begin
   XLXI_7 : AND2
      port map (I0=>XLXN_33,
                I1=>XLXN_32,
                O=>XLXN_34);
   
   XLXI_321 : SPIinterface_MUSER_SPI_Wraper
      port map (ClkIn=>clk80,
                DataIn(7 downto 0)=>Data_From_Pb(7 downto 0),
                DataWr=>SPI_Data_Wr,
                MISO=>Data_From_Flash,
                DataOut(7 downto 0)=>Byte_From_Flash(7 downto 0),
                MOSI=>Data_To_Flash,
                Ready=>SPI_Ready,
                SCK=>SPI_CLK);
   
   XLXI_325 : AND2
      port map (I0=>XLXN_34,
                I1=>RD,
                O=>SPI_Data_Wr);
   
   XLXI_326 : AND4B4
      port map (I0=>PORT_ID(3),
                I1=>PORT_ID(2),
                I2=>PORT_ID(1),
                I3=>PORT_ID(0),
                O=>XLXN_32);
   
   XLXI_327 : AND4B1
      port map (I0=>PORT_ID(4),
                I1=>PORT_ID(6),
                I2=>PORT_ID(5),
                I3=>PORT_ID(7),
                O=>XLXN_33);
   
   XLXI_328 : AND2
      port map (I0=>XLXN_42,
                I1=>XLXN_41,
                O=>XLXN_51);
   
   XLXI_330 : AND4B1
      port map (I0=>PORT_ID(4),
                I1=>PORT_ID(5),
                I2=>PORT_ID(6),
                I3=>PORT_ID(7),
                O=>XLXN_42);
   
   XLXI_331 : AND2
      port map (I0=>XLXN_51,
                I1=>WR,
                O=>SPI_CS_Present);
   
   XLXI_333 : FDCE
      port map (C=>clk80,
                CE=>SPI_CS_Present,
                CLR=>XLXN_64,
                D=>Data_From_Pb(0),
                Q=>SPI_CS);
   
   XLXI_334 : GND
      port map (G=>XLXN_64);
   
   XLXI_335 : AND4B3
      port map (I0=>PORT_ID(3),
                I1=>PORT_ID(2),
                I2=>PORT_ID(0),
                I3=>PORT_ID(1),
                O=>XLXN_41);
   
end BEHAVIORAL;


