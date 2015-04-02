--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : MaiModule.vhf
-- /___/   /\     Timestamp : 03/28/2015 12:39:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/projects/diploma/buisnes/current/spartan6_tcspc/MaiModule.vhf -w D:/projects/diploma/buisnes/current/spartan6_tcspc/MaiModule.sch
--Design Name: MaiModule
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8CE_HXILINX_MaiModule -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_MaiModule is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_MaiModule;

architecture Behavioral of FD8CE_HXILINX_MaiModule is

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

----- CELL OBUF4_HXILINX_MaiModule -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OBUF4_HXILINX_MaiModule is
  
port(
    O0  : out std_logic;
    O1  : out std_logic;
    O2  : out std_logic;
    O3  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic
  );
end OBUF4_HXILINX_MaiModule;

architecture OBUF4_HXILINX_MaiModule_V of OBUF4_HXILINX_MaiModule is
begin

  O0 <= I0;
  O1 <= I1;
  O2 <= I2;
  O3 <= I3;

end OBUF4_HXILINX_MaiModule_V;
----- CELL CB8CLE_HXILINX_MaiModule -----

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB8CLE_HXILINX_MaiModule is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR (7 downto 0);	
    L   : in STD_LOGIC );
end CB8CLE_HXILINX_MaiModule;

architecture Behavioral of CB8CLE_HXILINX_MaiModule is

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
----- CELL SR8CLE_HXILINX_MaiModule -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR8CLE_HXILINX_MaiModule is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    L   : in STD_LOGIC;
    SLI : in STD_LOGIC
    );
end SR8CLE_HXILINX_MaiModule;

architecture Behavioral of SR8CLE_HXILINX_MaiModule is
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

----- CELL M4_1E_HXILINX_MaiModule -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_MaiModule is
  
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
end M4_1E_HXILINX_MaiModule;

architecture M4_1E_HXILINX_MaiModule_V of M4_1E_HXILINX_MaiModule is
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
end M4_1E_HXILINX_MaiModule_V;
----- CELL SR8CE_HXILINX_MaiModule -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR8CE_HXILINX_MaiModule is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    SLI : in STD_LOGIC
    );
end SR8CE_HXILINX_MaiModule;

architecture Behavioral of SR8CE_HXILINX_MaiModule is
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

----- CELL FD8RE_HXILINX_MaiModule -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8RE_HXILINX_MaiModule is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    R   : in STD_LOGIC
    );
end FD8RE_HXILINX_MaiModule;

architecture Behavioral of FD8RE_HXILINX_MaiModule is

begin

process(C)
begin
  if (C'event and C = '1') then
    if (R='1') then
      Q <= (others => '0');
    elsif (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;

----- CELL CB4RE_HXILINX_MaiModule -----

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4RE_HXILINX_MaiModule is
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
end CB4RE_HXILINX_MaiModule;

architecture CB4RE_HXILINX_MaiModule_V of CB4RE_HXILINX_MaiModule is

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

end CB4RE_HXILINX_MaiModule_V;
----- CELL AND8_HXILINX_MaiModule -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND8_HXILINX_MaiModule is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic;
    I6  : in std_logic;
    I7  : in std_logic
  );
end AND8_HXILINX_MaiModule;

architecture AND8_HXILINX_MaiModule_V of AND8_HXILINX_MaiModule is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5 and I6 and I7;
end AND8_HXILINX_MaiModule_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SPIinterface_MUSER_MaiModule is
   port ( ClkIn   : in    std_logic; 
          DataIn  : in    std_logic_vector (7 downto 0); 
          DataWr  : in    std_logic; 
          MISO    : in    std_logic; 
          DataOut : out   std_logic_vector (7 downto 0); 
          MOSI    : out   std_logic; 
          Ready   : out   std_logic; 
          SCK     : out   std_logic);
end SPIinterface_MUSER_MaiModule;

architecture BEHAVIORAL of SPIinterface_MUSER_MaiModule is
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
   component SR8CLE_HXILINX_MaiModule
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
   
   component SR8CE_HXILINX_MaiModule
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
   
   component CB4RE_HXILINX_MaiModule
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
   XLXI_1 : SR8CLE_HXILINX_MaiModule
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
   
   XLXI_12 : SR8CE_HXILINX_MaiModule
      port map (C=>ClkIn,
                CE=>XLXN_27,
                CLR=>XLXN_9,
                SLI=>MISO,
                Q(7 downto 0)=>DataOut(7 downto 0));
   
   XLXI_14 : INV
      port map (I=>XLXN_22,
                O=>XLXN_21);
   
   XLXI_15 : CB4RE_HXILINX_MaiModule
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

entity SPI_Wraper_MUSER_MaiModule is
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
end SPI_Wraper_MUSER_MaiModule;

architecture BEHAVIORAL of SPI_Wraper_MUSER_MaiModule is
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
   
   component SPIinterface_MUSER_MaiModule
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
   
   XLXI_321 : SPIinterface_MUSER_MaiModule
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ZeroByte_MUSER_MaiModule is
   port ( ZeroData : out   std_logic_vector (7 downto 0));
end ZeroByte_MUSER_MaiModule;

architecture BEHAVIORAL of ZeroByte_MUSER_MaiModule is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity IMux4x1x8_MUSER_MaiModule is
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
end IMux4x1x8_MUSER_MaiModule;

architecture BEHAVIORAL of IMux4x1x8_MUSER_MaiModule is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   signal XLXN_75  : std_logic;
   signal XLXN_77  : std_logic;
   signal XLXN_81  : std_logic;
   component M4_1E_HXILINX_MaiModule
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
   XLXI_1 : M4_1E_HXILINX_MaiModule
      port map (D0=>InData0(0),
                D1=>InData1(0),
                D2=>InData2(0),
                D3=>InData3(0),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(0));
   
   XLXI_2 : M4_1E_HXILINX_MaiModule
      port map (D0=>InData0(1),
                D1=>InData1(1),
                D2=>InData2(1),
                D3=>InData3(1),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(1));
   
   XLXI_3 : M4_1E_HXILINX_MaiModule
      port map (D0=>InData0(2),
                D1=>InData1(2),
                D2=>InData2(2),
                D3=>InData3(2),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(2));
   
   XLXI_4 : M4_1E_HXILINX_MaiModule
      port map (D0=>InData0(3),
                D1=>InData1(3),
                D2=>InData2(3),
                D3=>InData3(3),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(3));
   
   XLXI_5 : M4_1E_HXILINX_MaiModule
      port map (D0=>InData0(4),
                D1=>InData1(4),
                D2=>InData2(4),
                D3=>InData3(4),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(4));
   
   XLXI_6 : M4_1E_HXILINX_MaiModule
      port map (D0=>InData0(5),
                D1=>InData1(5),
                D2=>InData2(5),
                D3=>InData3(5),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(5));
   
   XLXI_7 : M4_1E_HXILINX_MaiModule
      port map (D0=>InData0(6),
                D1=>InData1(6),
                D2=>InData2(6),
                D3=>InData3(6),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(6));
   
   XLXI_8 : M4_1E_HXILINX_MaiModule
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

entity curr_w_addr_MUSER_MaiModule is
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
end curr_w_addr_MUSER_MaiModule;

architecture BEHAVIORAL of curr_w_addr_MUSER_MaiModule is
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
   
   component IMux4x1x8_MUSER_MaiModule
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
   
   component FD8CE_HXILINX_MaiModule
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
   
   XLXI_26 : IMux4x1x8_MUSER_MaiModule
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
   
   XLXI_27 : FD8CE_HXILINX_MaiModule
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
   
   XLXI_93 : FD8CE_HXILINX_MaiModule
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB2RE_cr_MUSER_MaiModule is
   port ( CarryIn  : in    std_logic; 
          CE       : in    std_logic; 
          CLK      : in    std_logic; 
          R        : in    std_logic; 
          CarryOut : out   std_logic; 
          Q0       : out   std_logic; 
          Q1       : out   std_logic);
end CB2RE_cr_MUSER_MaiModule;

architecture BEHAVIORAL of CB2RE_cr_MUSER_MaiModule is
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

entity event_handler_MUSER_MaiModule is
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
end event_handler_MUSER_MaiModule;

architecture BEHAVIORAL of event_handler_MUSER_MaiModule is
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
   
   component CB2RE_cr_MUSER_MaiModule
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
   
   XLXI_97 : CB2RE_cr_MUSER_MaiModule
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity autoinc_bramAddr_MUSER_MaiModule is
   port ( addr_start   : in    std_logic_vector (7 downto 0); 
          CLK80        : in    std_logic; 
          pb_rd        : in    std_logic; 
          pb_wr        : in    std_logic; 
          PORT_ID      : in    std_logic_vector (7 downto 0); 
          br_rd_p      : out   std_logic; 
          b_wr_en      : out   std_logic; 
          curr_rd_addr : out   std_logic_vector (15 downto 0));
end autoinc_bramAddr_MUSER_MaiModule;

architecture BEHAVIORAL of autoinc_bramAddr_MUSER_MaiModule is
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
   component CB8CLE_HXILINX_MaiModule
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
   XLXI_2 : CB8CLE_HXILINX_MaiModule
      port map (C=>CLK80,
                CE=>count_enable,
                CLR=>XLXN_107,
                D(7 downto 0)=>addr_start(7 downto 0),
                L=>load_enable0,
                CEO=>XLXN_155,
                Q(7 downto 0)=>curr_rd_addr(7 downto 0),
                TC=>open);
   
   XLXI_3 : CB8CLE_HXILINX_MaiModule
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity PicoblazeInterface_MUSER_MaiModule is
   port ( controlFTDI        : in    std_logic_vector (7 downto 0); 
          MCU_CLK            : in    std_logic; 
          Present1           : in    std_logic; 
          ToMCUData1         : in    std_logic_vector (7 downto 0); 
          data_from_FTDI     : out   std_logic_vector (7 downto 0); 
          DATA_OUT           : out   std_logic_vector (15 downto 0); 
          IRQAck             : out   std_logic; 
          PB_INt0            : out   std_logic; 
          PB_INt1            : out   std_logic; 
          PORT_ID            : out   std_logic_vector (7 downto 0); 
          presentFTDIControl : out   std_logic; 
          ProgAddr           : out   std_logic_vector (11 downto 0); 
          RD                 : out   std_logic; 
          RD_FTDI            : out   std_logic; 
          WR                 : out   std_logic; 
          WR_FTDI            : out   std_logic; 
          data_out_ftd_ioi   : inout std_logic_vector (7 downto 0));
end PicoblazeInterface_MUSER_MaiModule;

architecture BEHAVIORAL of PicoblazeInterface_MUSER_MaiModule is
   attribute HU_SET           : string ;
   attribute BOX_TYPE         : string ;
   attribute INIT             : string ;
   attribute IOSTANDARD       : string ;
   attribute SLEW             : string ;
   attribute DRIVE            : string ;
   attribute IBUF_DELAY_VALUE : string ;
   attribute IFD_DELAY_VALUE  : string ;
   signal dataFromFlash            : std_logic_vector (7 downto 0);
   signal dataFromFlashPresent     : std_logic;
   signal dataInFTDI               : std_logic_vector (7 downto 0);
   signal data_out_ftdi            : std_logic_vector (7 downto 0);
   signal just_some_net            : std_logic;
   signal PB_INPUT                 : std_logic_vector (7 downto 0);
   signal presentFTDIibus          : std_logic;
   signal presentInFTDI1           : std_logic;
   signal WR_FTDI_INV              : std_logic;
   signal XLXN_1                   : std_logic_vector (17 downto 0);
   signal XLXN_214                 : std_logic;
   signal XLXN_215                 : std_logic;
   signal XLXN_498                 : std_logic;
   signal XLXN_501                 : std_logic;
   signal XLXN_526                 : std_logic;
   signal XLXN_533                 : std_logic;
   signal XLXN_535                 : std_logic;
   signal XLXN_536                 : std_logic;
   signal XLXN_541                 : std_logic;
   signal XLXN_543                 : std_logic;
   signal XLXN_633                 : std_logic;
   signal XLXN_644                 : std_logic;
   signal XLXN_723                 : std_logic;
   signal XLXN_1075                : std_logic;
   signal XLXN_1090                : std_logic;
   signal XLXN_1091                : std_logic;
   signal XLXN_1112                : std_logic;
   signal XLXN_1113                : std_logic;
   signal XLXN_1114                : std_logic;
   signal XLXN_1115                : std_logic;
   signal XLXN_1120                : std_logic;
   signal XLXN_1122                : std_logic;
   signal XLXN_1123                : std_logic;
   signal XLXN_1154                : std_logic;
   signal XLXN_1161                : std_logic;
   signal XLXN_1162                : std_logic;
   signal XLXN_1163                : std_logic;
   signal XLXN_1164                : std_logic;
   signal XLXN_1169                : std_logic;
   signal XLXN_1170                : std_logic;
   signal XLXN_1171                : std_logic;
   signal XLXN_1176                : std_logic;
   signal XLXN_1181                : std_logic;
   signal WR_DUMMY                 : std_logic;
   signal PORT_ID_DUMMY            : std_logic_vector (7 downto 0);
   signal RD_DUMMY                 : std_logic;
   signal DATA_OUT_DUMMY           : std_logic_vector (15 downto 0);
   signal WR_FTDI_DUMMY            : std_logic;
   signal ProgAddr_DUMMY           : std_logic_vector (11 downto 0);
   signal presentFTDIControl_DUMMY : std_logic;
   component FD8CE_HXILINX_MaiModule
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component IMux4x1x8_MUSER_MaiModule
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
   
   component FDRE
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             R  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDRE : component is "BLACK_BOX";
   
   component SRL16
      -- synopsys translate_off
      generic( INIT : bit_vector :=  x"0000");
      -- synopsys translate_on
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             CLK : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of SRL16 : component is "0000";
   attribute BOX_TYPE of SRL16 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component FD8RE_HXILINX_MaiModule
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic_vector (7 downto 0); 
             R  : in    std_logic; 
             Q  : out   std_logic_vector (7 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component FDCE
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component IOBUF
      port ( I  : in    std_logic; 
             IO : inout std_logic; 
             O  : out   std_logic; 
             T  : in    std_logic);
   end component;
   attribute IOSTANDARD of IOBUF : component is "DEFAULT";
   attribute SLEW of IOBUF : component is "SLOW";
   attribute DRIVE of IOBUF : component is "12";
   attribute IBUF_DELAY_VALUE of IOBUF : component is "0";
   attribute IFD_DELAY_VALUE of IOBUF : component is "AUTO";
   attribute BOX_TYPE of IOBUF : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND8_HXILINX_MaiModule
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component kcpsm6
      port ( instruction    : in    std_logic_vector (17 downto 0); 
             in_port        : in    std_logic_vector (7 downto 0); 
             interrupt      : in    std_logic; 
             sleep          : in    std_logic; 
             reset          : in    std_logic; 
             clk            : in    std_logic; 
             address        : out   std_logic_vector (11 downto 0); 
             bram_enable    : out   std_logic; 
             out_port       : out   std_logic_vector (7 downto 0); 
             port_id        : out   std_logic_vector (7 downto 0); 
             write_strobe   : out   std_logic; 
             k_write_strobe : out   std_logic; 
             read_strobe    : out   std_logic; 
             interrupt_ack  : out   std_logic);
   end component;
   
   component coderom
      port ( address     : in    std_logic_vector (11 downto 0); 
             enable      : in    std_logic; 
             clk         : in    std_logic; 
             instruction : out   std_logic_vector (17 downto 0); 
             rdl         : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_113 : label is "XLXI_113_18";
   attribute HU_SET of XLXI_210 : label is "XLXI_210_17";
   attribute HU_SET of XLXI_269 : label is "XLXI_269_15";
   attribute HU_SET of XLXI_271 : label is "XLXI_271_19";
   attribute HU_SET of XLXI_292 : label is "XLXI_292_16";
   attribute HU_SET of XLXI_473 : label is "XLXI_473_20";
begin
   DATA_OUT(15 downto 0) <= DATA_OUT_DUMMY(15 downto 0);
   PORT_ID(7 downto 0) <= PORT_ID_DUMMY(7 downto 0);
   presentFTDIControl <= presentFTDIControl_DUMMY;
   ProgAddr(11 downto 0) <= ProgAddr_DUMMY(11 downto 0);
   RD <= RD_DUMMY;
   WR <= WR_DUMMY;
   WR_FTDI <= WR_FTDI_DUMMY;
   XLXI_113 : FD8CE_HXILINX_MaiModule
      port map (C=>MCU_CLK,
                CE=>XLXN_215,
                CLR=>XLXN_214,
                D(7 downto 0)=>DATA_OUT_DUMMY(7 downto 0),
                Q(7 downto 0)=>DATA_OUT_DUMMY(15 downto 8));
   
   XLXI_115 : AND2
      port map (I0=>PORT_ID_DUMMY(0),
                I1=>WR_DUMMY,
                O=>XLXN_215);
   
   XLXI_116 : GND
      port map (G=>XLXN_214);
   
   XLXI_142 : IMux4x1x8_MUSER_MaiModule
      port map (InData0(7 downto 0)=>dataInFTDI(7 downto 0),
                InData1(7 downto 0)=>controlFTDI(7 downto 0),
                InData2(7 downto 0)=>ToMCUData1(7 downto 0),
                InData3(7 downto 0)=>dataFromFlash(7 downto 0),
                Present0=>XLXN_1164,
                Present1=>presentFTDIControl_DUMMY,
                Present2=>Present1,
                Present3=>dataFromFlashPresent,
                OutData(7 downto 0)=>PB_INPUT(7 downto 0),
                Present=>open);
   
   XLXI_204 : FDRE
      port map (C=>MCU_CLK,
                CE=>presentInFTDI1,
                D=>XLXN_498,
                R=>XLXN_501,
                Q=>WR_FTDI_DUMMY);
   
   XLXI_205 : SRL16
      port map (A0=>XLXN_535,
                A1=>XLXN_535,
                A2=>XLXN_533,
                A3=>XLXN_533,
                CLK=>MCU_CLK,
                D=>WR_FTDI_DUMMY,
                Q=>XLXN_501);
   
   XLXI_208 : VCC
      port map (P=>XLXN_498);
   
   XLXI_210 : FD8RE_HXILINX_MaiModule
      port map (C=>MCU_CLK,
                CE=>presentInFTDI1,
                D(7 downto 0)=>DATA_OUT_DUMMY(7 downto 0),
                R=>XLXN_526,
                Q(7 downto 0)=>data_out_ftdi(7 downto 0));
   
   XLXI_211 : GND
      port map (G=>XLXN_526);
   
   XLXI_212 : GND
      port map (G=>XLXN_533);
   
   XLXI_214 : VCC
      port map (P=>XLXN_535);
   
   XLXI_217 : OR2
      port map (I0=>RD_DUMMY,
                I1=>WR_DUMMY,
                O=>XLXN_536);
   
   XLXI_219 : FDCE
      port map (C=>MCU_CLK,
                CE=>XLXN_541,
                CLR=>XLXN_543,
                D=>WR_DUMMY,
                Q=>XLXN_644);
   
   XLXI_220 : GND
      port map (G=>XLXN_543);
   
   XLXI_223 : IOBUF
      port map (I=>data_out_ftdi(0),
                T=>WR_FTDI_INV,
                O=>dataInFTDI(0),
                IO=>data_out_ftd_ioi(0));
   
   XLXI_224 : IOBUF
      port map (I=>data_out_ftdi(1),
                T=>WR_FTDI_INV,
                O=>dataInFTDI(1),
                IO=>data_out_ftd_ioi(1));
   
   XLXI_225 : IOBUF
      port map (I=>data_out_ftdi(2),
                T=>WR_FTDI_INV,
                O=>dataInFTDI(2),
                IO=>data_out_ftd_ioi(2));
   
   XLXI_226 : IOBUF
      port map (I=>data_out_ftdi(3),
                T=>WR_FTDI_INV,
                O=>dataInFTDI(3),
                IO=>data_out_ftd_ioi(3));
   
   XLXI_227 : IOBUF
      port map (I=>data_out_ftdi(4),
                T=>WR_FTDI_INV,
                O=>dataInFTDI(4),
                IO=>data_out_ftd_ioi(4));
   
   XLXI_228 : IOBUF
      port map (I=>data_out_ftdi(5),
                T=>WR_FTDI_INV,
                O=>dataInFTDI(5),
                IO=>data_out_ftd_ioi(5));
   
   XLXI_229 : IOBUF
      port map (I=>data_out_ftdi(6),
                T=>WR_FTDI_INV,
                O=>dataInFTDI(6),
                IO=>data_out_ftd_ioi(6));
   
   XLXI_230 : IOBUF
      port map (I=>data_out_ftdi(7),
                T=>WR_FTDI_INV,
                O=>dataInFTDI(7),
                IO=>data_out_ftd_ioi(7));
   
   XLXI_247 : INV
      port map (I=>WR_FTDI_DUMMY,
                O=>WR_FTDI_INV);
   
   XLXI_256 : INV
      port map (I=>XLXN_644,
                O=>presentFTDIibus);
   
   XLXI_269 : AND8_HXILINX_MaiModule
      port map (I0=>PORT_ID_DUMMY(7),
                I1=>PORT_ID_DUMMY(6),
                I2=>PORT_ID_DUMMY(5),
                I3=>PORT_ID_DUMMY(4),
                I4=>XLXN_1115,
                I5=>XLXN_1114,
                I6=>XLXN_1113,
                I7=>XLXN_1112,
                O=>just_some_net);
   
   XLXI_271 : AND8_HXILINX_MaiModule
      port map (I0=>PORT_ID_DUMMY(7),
                I1=>PORT_ID_DUMMY(6),
                I2=>PORT_ID_DUMMY(5),
                I3=>PORT_ID_DUMMY(4),
                I4=>XLXN_1163,
                I5=>XLXN_1162,
                I6=>XLXN_1161,
                I7=>PORT_ID_DUMMY(0),
                O=>XLXN_633);
   
   XLXI_291 : INV
      port map (I=>controlFTDI(1),
                O=>XLXN_723);
   
   XLXI_292 : AND8_HXILINX_MaiModule
      port map (I0=>PORT_ID_DUMMY(7),
                I1=>PORT_ID_DUMMY(6),
                I2=>PORT_ID_DUMMY(5),
                I3=>PORT_ID_DUMMY(4),
                I4=>XLXN_1123,
                I5=>XLXN_1122,
                I6=>PORT_ID_DUMMY(1),
                I7=>XLXN_1120,
                O=>XLXN_1154);
   
   XLXI_419 : kcpsm6
      port map (clk=>MCU_CLK,
                instruction(17 downto 0)=>XLXN_1(17 downto 0),
                interrupt=>XLXN_723,
                in_port(7 downto 0)=>PB_INPUT(7 downto 0),
                reset=>XLXN_1091,
                sleep=>XLXN_1075,
                address(11 downto 0)=>ProgAddr_DUMMY(11 downto 0),
                bram_enable=>XLXN_1090,
                interrupt_ack=>IRQAck,
                k_write_strobe=>open,
                out_port(7 downto 0)=>DATA_OUT_DUMMY(7 downto 0),
                port_id(7 downto 0)=>PORT_ID_DUMMY(7 downto 0),
                read_strobe=>RD_DUMMY,
                write_strobe=>WR_DUMMY);
   
   XLXI_421 : GND
      port map (G=>XLXN_1075);
   
   XLXI_422 : coderom
      port map (address(11 downto 0)=>ProgAddr_DUMMY(11 downto 0),
                clk=>MCU_CLK,
                enable=>XLXN_1090,
                instruction(17 downto 0)=>XLXN_1(17 downto 0),
                rdl=>XLXN_1091);
   
   XLXI_426 : BUF
      port map (I=>dataInFTDI(0),
                O=>data_from_FTDI(0));
   
   XLXI_427 : BUF
      port map (I=>dataInFTDI(1),
                O=>data_from_FTDI(1));
   
   XLXI_428 : BUF
      port map (I=>dataInFTDI(2),
                O=>data_from_FTDI(2));
   
   XLXI_429 : BUF
      port map (I=>dataInFTDI(3),
                O=>data_from_FTDI(3));
   
   XLXI_430 : BUF
      port map (I=>dataInFTDI(4),
                O=>data_from_FTDI(4));
   
   XLXI_431 : BUF
      port map (I=>dataInFTDI(5),
                O=>data_from_FTDI(5));
   
   XLXI_432 : BUF
      port map (I=>dataInFTDI(6),
                O=>data_from_FTDI(6));
   
   XLXI_433 : BUF
      port map (I=>dataInFTDI(7),
                O=>data_from_FTDI(7));
   
   XLXI_439 : AND2
      port map (I0=>XLXN_633,
                I1=>WR_DUMMY,
                O=>presentInFTDI1);
   
   XLXI_444 : INV
      port map (I=>PORT_ID_DUMMY(3),
                O=>XLXN_1115);
   
   XLXI_445 : INV
      port map (I=>PORT_ID_DUMMY(2),
                O=>XLXN_1114);
   
   XLXI_446 : INV
      port map (I=>PORT_ID_DUMMY(1),
                O=>XLXN_1113);
   
   XLXI_447 : INV
      port map (I=>PORT_ID_DUMMY(0),
                O=>XLXN_1112);
   
   XLXI_448 : AND2
      port map (I0=>just_some_net,
                I1=>XLXN_536,
                O=>XLXN_541);
   
   XLXI_449 : INV
      port map (I=>PORT_ID_DUMMY(0),
                O=>XLXN_1120);
   
   XLXI_451 : INV
      port map (I=>PORT_ID_DUMMY(2),
                O=>XLXN_1122);
   
   XLXI_452 : INV
      port map (I=>PORT_ID_DUMMY(3),
                O=>XLXN_1123);
   
   XLXI_461 : AND2
      port map (I0=>XLXN_1154,
                I1=>RD_DUMMY,
                O=>presentFTDIControl_DUMMY);
   
   XLXI_466 : INV
      port map (I=>PORT_ID_DUMMY(1),
                O=>XLXN_1161);
   
   XLXI_467 : INV
      port map (I=>PORT_ID_DUMMY(2),
                O=>XLXN_1162);
   
   XLXI_468 : INV
      port map (I=>PORT_ID_DUMMY(3),
                O=>XLXN_1163);
   
   XLXI_469 : BUF
      port map (I=>presentFTDIibus,
                O=>RD_FTDI);
   
   XLXI_470 : BUF
      port map (I=>PB_INPUT(0),
                O=>PB_INt0);
   
   XLXI_471 : BUF
      port map (I=>PB_INPUT(1),
                O=>PB_INt1);
   
   XLXI_472 : INV
      port map (I=>presentFTDIibus,
                O=>XLXN_1164);
   
   XLXI_473 : AND8_HXILINX_MaiModule
      port map (I0=>PORT_ID_DUMMY(7),
                I1=>PORT_ID_DUMMY(6),
                I2=>PORT_ID_DUMMY(5),
                I3=>XLXN_1176,
                I4=>XLXN_1171,
                I5=>XLXN_1170,
                I6=>XLXN_1169,
                I7=>PORT_ID_DUMMY(0),
                O=>XLXN_1181);
   
   XLXI_474 : INV
      port map (I=>PORT_ID_DUMMY(2),
                O=>XLXN_1170);
   
   XLXI_475 : INV
      port map (I=>PORT_ID_DUMMY(3),
                O=>XLXN_1171);
   
   XLXI_476 : INV
      port map (I=>PORT_ID_DUMMY(1),
                O=>XLXN_1169);
   
   XLXI_477 : INV
      port map (I=>PORT_ID_DUMMY(4),
                O=>XLXN_1176);
   
   XLXI_478 : AND2
      port map (I0=>XLXN_1181,
                I1=>RD_DUMMY,
                O=>dataFromFlashPresent);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity MaiModule is
   port ( adc1        : in    std_logic; 
          adc2        : in    std_logic; 
          adc3        : in    std_logic; 
          adc4        : in    std_logic; 
          CLK80       : in    std_logic; 
          evt_1       : in    std_logic; 
          evt_2       : in    std_logic; 
          evt_3       : in    std_logic; 
          evt_4       : in    std_logic; 
          MISO        : in    std_logic; 
          rxf         : in    std_logic; 
          txe         : in    std_logic; 
          adc_reset_0 : out   std_logic; 
          adc_reset_1 : out   std_logic; 
          adc_reset_2 : out   std_logic; 
          adc_reset_3 : out   std_logic; 
          CLK_ADC_0   : out   std_logic; 
          CLK_ADC_1   : out   std_logic; 
          CLK_ADC_2   : out   std_logic; 
          clk_adc_3   : out   std_logic; 
          cs1         : out   std_logic; 
          cs2         : out   std_logic; 
          cs3         : out   std_logic; 
          cs4         : out   std_logic; 
          MOSI        : out   std_logic; 
          RD_FTDI     : out   std_logic; 
          saw1        : out   std_logic; 
          saw2        : out   std_logic; 
          saw3        : out   std_logic; 
          saw4        : out   std_logic; 
          SPI_CLK     : out   std_logic; 
          SPI_CS      : out   std_logic; 
          TestA0      : out   std_logic; 
          TestA1      : out   std_logic; 
          TestA2      : out   std_logic; 
          TestA3      : out   std_logic; 
          TestA4      : out   std_logic; 
          TestA5      : out   std_logic; 
          TestA6      : out   std_logic; 
          TestA7      : out   std_logic; 
          TestB0      : out   std_logic; 
          TestB1      : out   std_logic; 
          TestB2      : out   std_logic; 
          TestB3      : out   std_logic; 
          TestB4      : out   std_logic; 
          TestB5      : out   std_logic; 
          TestB6      : out   std_logic; 
          TestB7      : out   std_logic; 
          WR_FTDI     : out   std_logic; 
          FTDIbus     : inout std_logic_vector (7 downto 0));
end MaiModule;

architecture BEHAVIORAL of MaiModule is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal addra_curr0        : std_logic_vector (7 downto 0);
   signal addra_curr1        : std_logic_vector (7 downto 0);
   signal ARQAck             : std_logic;
   signal att_sig            : std_logic_vector (3 downto 0);
   signal br_rd_p            : std_logic;
   signal Byte_From_Flash    : std_logic_vector (7 downto 0);
   signal b_ev               : std_logic;
   signal b_wr_en            : std_logic;
   signal CLK80_INT          : std_logic;
   signal controlBus         : std_logic_vector (7 downto 0);
   signal curr_rw_addr       : std_logic_vector (15 downto 0);
   signal curr_wr_lsb        : std_logic_vector (7 downto 0);
   signal curr_wr_msb        : std_logic_vector (7 downto 0);
   signal curr_w_addrr       : std_logic_vector (7 downto 0);
   signal c_out              : std_logic_vector (12 downto 0);
   signal data_from_ftdi     : std_logic_vector (7 downto 0);
   signal evt_std            : std_logic;
   signal main_bus1          : std_logic_vector (31 downto 0);
   signal main_bus1b         : std_logic_vector (31 downto 0);
   signal main_bus2          : std_logic_vector (28 downto 0);
   signal main_bus3          : std_logic_vector (28 downto 0);
   signal main_bus4          : std_logic_vector (28 downto 0);
   signal mem_overflow_reset : std_logic;
   signal pb_data_out        : std_logic_vector (15 downto 0);
   signal PB_INt0            : std_logic;
   signal PB_INt1            : std_logic;
   signal pb_rd_strobe       : std_logic;
   signal pb_wr_strobe       : std_logic;
   signal pFTDIctrl          : std_logic;
   signal PORT_ID            : std_logic_vector (7 downto 0);
   signal presentToPBData    : std_logic;
   signal present0           : std_logic;
   signal present1           : std_logic;
   signal ProgAddr           : std_logic_vector (11 downto 0);
   signal p_curr_w_addrr     : std_logic;
   signal q                  : std_logic_vector (15 downto 0);
   signal ready              : std_logic_vector (3 downto 0);
   signal ready_ctrl         : std_logic_vector (3 downto 0);
   signal reset              : std_logic_vector (3 downto 0);
   signal reset_main         : std_logic_vector (3 downto 0);
   signal reset_OOB          : std_logic_vector (3 downto 0);
   signal SPI_Ready          : std_logic;
   signal s0_dbg             : std_logic;
   signal s1_dbg             : std_logic;
   signal test_signal        : std_logic;
   signal toIMuxData         : std_logic_vector (7 downto 0);
   signal toPBData           : std_logic_vector (7 downto 0);
   signal web0               : std_logic;
   signal window_flag        : std_logic;
   signal window_mode        : std_logic;
   signal XLXN_274           : std_logic;
   signal XLXN_431           : std_logic;
   signal XLXN_477           : std_logic_vector (7 downto 0);
   signal XLXN_478           : std_logic_vector (7 downto 0);
   signal XLXN_479           : std_logic;
   signal XLXN_480           : std_logic;
   signal XLXN_500           : std_logic;
   signal XLXN_501           : std_logic;
   signal XLXN_502           : std_logic;
   signal XLXN_503           : std_logic;
   signal saw1_DUMMY         : std_logic;
   signal saw2_DUMMY         : std_logic;
   signal saw3_DUMMY         : std_logic;
   signal saw4_DUMMY         : std_logic;
   component OBUF4_HXILINX_MaiModule
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O0 : out   std_logic; 
             O1 : out   std_logic; 
             O2 : out   std_logic; 
             O3 : out   std_logic);
   end component;
   
   component counter_16
      port ( q          : out   std_logic_vector (15 downto 0); 
             reset      : in    std_logic; 
             CLK_OOL_16 : out   std_logic; 
             CLK_OOL    : in    std_logic; 
             clk        : in    std_logic; 
             c_out      : out   std_logic_vector (12 downto 0));
   end component;
   
   component bRAM_module2
      port ( clka               : in    std_logic; 
             ready_bus          : in    std_logic_vector (3 downto 0); 
             main_bus1          : in    std_logic_vector (28 downto 0); 
             main_bus2          : in    std_logic_vector (28 downto 0); 
             main_bus3          : in    std_logic_vector (28 downto 0); 
             main_bus4          : in    std_logic_vector (28 downto 0); 
             reset_c            : in    std_logic; 
             reset_bus          : out   std_logic_vector (3 downto 0); 
             clkb_ctrl          : in    std_logic; 
             web_ctrl           : in    std_logic; 
             dinb_ctrl          : in    std_logic_vector (7 downto 0); 
             addrb_ctrl         : in    std_logic_vector (15 downto 0); 
             doutb_ctrl         : out   std_logic_vector (7 downto 0); 
             addra_curr0        : out   std_logic_vector (7 downto 0); 
             addra_curr1        : out   std_logic_vector (7 downto 0); 
             present0           : out   std_logic; 
             present1           : out   std_logic; 
             intRegSel          : in    std_logic; 
             bramEnable         : in    std_logic; 
             web0dbug           : out   std_logic; 
             curr_wr_lsb        : out   std_logic_vector (7 downto 0); 
             curr_wr_msb        : out   std_logic_vector (7 downto 0); 
             mem_overflow_reset : in    std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component IMux4x1x8_MUSER_MaiModule
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
   
   component event_handler_MUSER_MaiModule
      port ( cs              : out   std_logic; 
             ready           : out   std_logic; 
             main_bus        : out   std_logic_vector (28 downto 0); 
             saw             : out   std_logic; 
             sdata           : in    std_logic; 
             counter         : in    std_logic_vector (15 downto 0); 
             evt             : in    std_logic; 
             CLK_High        : in    std_logic; 
             reset           : in    std_logic; 
             evt_std         : in    std_logic; 
             adc_reset       : out   std_logic; 
             CLK_ADC         : out   std_logic; 
             attached_signal : out   std_logic; 
             s0_dbg          : out   std_logic; 
             s1_dbg          : out   std_logic; 
             window_mode     : in    std_logic);
   end component;
   
   component PicoblazeInterface_MUSER_MaiModule
      port ( MCU_CLK            : in    std_logic; 
             ToMCUData1         : in    std_logic_vector (7 downto 0); 
             Present1           : in    std_logic; 
             DATA_OUT           : out   std_logic_vector (15 downto 0); 
             PORT_ID            : out   std_logic_vector (7 downto 0); 
             WR                 : out   std_logic; 
             RD                 : out   std_logic; 
             controlFTDI        : in    std_logic_vector (7 downto 0); 
             ProgAddr           : out   std_logic_vector (11 downto 0); 
             IRQAck             : out   std_logic; 
             data_out_ftd_ioi   : out   std_logic_vector (7 downto 0); 
             RD_FTDI            : out   std_logic; 
             WR_FTDI            : out   std_logic; 
             data_from_FTDI     : out   std_logic_vector (7 downto 0); 
             presentFTDIControl : out   std_logic; 
             PB_INt0            : out   std_logic; 
             PB_INt1            : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component autoinc_bramAddr_MUSER_MaiModule
      port ( CLK80        : in    std_logic; 
             addr_start   : in    std_logic_vector (7 downto 0); 
             PORT_ID      : in    std_logic_vector (7 downto 0); 
             pb_rd        : in    std_logic; 
             pb_wr        : in    std_logic; 
             curr_rd_addr : out   std_logic_vector (15 downto 0); 
             b_wr_en      : out   std_logic; 
             br_rd_p      : out   std_logic);
   end component;
   
   component curr_w_addr_MUSER_MaiModule
      port ( addra_curr0        : in    std_logic_vector (7 downto 0); 
             addra_curr1        : in    std_logic_vector (7 downto 0); 
             CLK80              : in    std_logic; 
             pb_data_in         : out   std_logic_vector (7 downto 0); 
             pb_rd              : in    std_logic; 
             PORT_ID            : in    std_logic_vector (7 downto 0); 
             curr_wr_msb        : in    std_logic_vector (7 downto 0); 
             curr_wr_lsb        : in    std_logic_vector (7 downto 0); 
             present_curr_addr  : out   std_logic; 
             mem_overflow_reset : out   std_logic);
   end component;
   
   component ZeroByte_MUSER_MaiModule
      port ( ZeroData : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component WindowProcessing
      port ( ready_ctrl         : in    std_logic_vector (3 downto 0); 
             at_sig             : in    std_logic_vector (3 downto 0); 
             PORT_ID            : in    std_logic_vector (7 downto 0); 
             picoblaze          : in    std_logic_vector (7 downto 0); 
             ready              : out   std_logic_vector (3 downto 0); 
             clk                : in    std_logic; 
             pb_wr_strobe       : in    std_logic; 
             window_flag        : out   std_logic; 
             reset              : in    std_logic_vector (3 downto 0); 
             reset_out_of_bound : out   std_logic_vector (3 downto 0); 
             test_pin           : out   std_logic; 
             window_mode        : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component SPI_Wraper_MUSER_MaiModule
      port ( PORT_ID         : in    std_logic_vector (7 downto 0); 
             Data_From_Pb    : in    std_logic_vector (7 downto 0); 
             clk80           : in    std_logic; 
             Data_From_Flash : in    std_logic; 
             Data_To_Flash   : out   std_logic; 
             SPI_CLK         : out   std_logic; 
             SPI_Ready       : out   std_logic; 
             SPI_CS          : out   std_logic; 
             Byte_From_Flash : out   std_logic_vector (7 downto 0); 
             RD              : in    std_logic);
   end component;
   
   attribute HU_SET of XLXI_14 : label is "XLXI_14_21";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_22";
   attribute HU_SET of XLXI_16 : label is "XLXI_16_23";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_24";
begin
   saw1 <= saw1_DUMMY;
   saw2 <= saw2_DUMMY;
   saw3 <= saw3_DUMMY;
   saw4 <= saw4_DUMMY;
   XLXI_14 : OBUF4_HXILINX_MaiModule
      port map (I0=>ready(0),
                I1=>ready(1),
                I2=>ready(2),
                I3=>CLK80,
                O0=>TestB4,
                O1=>TestB5,
                O2=>TestB6,
                O3=>TestB7);
   
   XLXI_15 : OBUF4_HXILINX_MaiModule
      port map (I0=>reset_main(0),
                I1=>reset_main(1),
                I2=>reset_main(3),
                I3=>reset_main(2),
                O0=>TestB0,
                O1=>TestB1,
                O2=>TestB2,
                O3=>TestB3);
   
   XLXI_16 : OBUF4_HXILINX_MaiModule
      port map (I0=>saw1_DUMMY,
                I1=>saw2_DUMMY,
                I2=>saw3_DUMMY,
                I3=>saw4_DUMMY,
                O0=>TestA4,
                O1=>TestA5,
                O2=>TestA6,
                O3=>TestA7);
   
   XLXI_17 : OBUF4_HXILINX_MaiModule
      port map (I0=>ready_ctrl(0),
                I1=>ready_ctrl(1),
                I2=>ready_ctrl(2),
                I3=>evt_std,
                O0=>TestA0,
                O1=>TestA1,
                O2=>TestA2,
                O3=>TestA3);
   
   XLXI_85 : counter_16
      port map (clk=>CLK80,
                CLK_OOL=>CLK80,
                reset=>XLXN_431,
                CLK_OOL_16=>evt_std,
                c_out(12 downto 0)=>c_out(12 downto 0),
                q(15 downto 0)=>q(15 downto 0));
   
   XLXI_94 : bRAM_module2
      port map (addrb_ctrl(15 downto 0)=>curr_rw_addr(15 downto 0),
                bramEnable=>b_wr_en,
                clka=>CLK80,
                clkb_ctrl=>CLK80,
                dinb_ctrl(7 downto 0)=>pb_data_out(7 downto 0),
                intRegSel=>br_rd_p,
                main_bus1(28 downto 0)=>main_bus1(28 downto 0),
                main_bus2(28 downto 0)=>main_bus2(28 downto 0),
                main_bus3(28 downto 0)=>main_bus3(28 downto 0),
                main_bus4(28 downto 0)=>main_bus4(28 downto 0),
                mem_overflow_reset=>mem_overflow_reset,
                ready_bus(3 downto 0)=>ready(3 downto 0),
                reset_c=>XLXN_274,
                web_ctrl=>b_ev,
                addra_curr0(7 downto 0)=>addra_curr0(7 downto 0),
                addra_curr1(7 downto 0)=>addra_curr1(7 downto 0),
                curr_wr_lsb(7 downto 0)=>curr_wr_lsb(7 downto 0),
                curr_wr_msb(7 downto 0)=>curr_wr_msb(7 downto 0),
                doutb_ctrl(7 downto 0)=>toIMuxData(7 downto 0),
                present0=>present0,
                present1=>present1,
                reset_bus(3 downto 0)=>reset_main(3 downto 0),
                web0dbug=>web0);
   
   XLXI_95 : GND
      port map (G=>XLXN_274);
   
   XLXI_96 : IMux4x1x8_MUSER_MaiModule
      port map (InData0(7 downto 0)=>curr_w_addrr(7 downto 0),
                InData1(7 downto 0)=>toIMuxData(7 downto 0),
                InData2(7 downto 0)=>XLXN_477(7 downto 0),
                InData3(7 downto 0)=>XLXN_478(7 downto 0),
                Present0=>p_curr_w_addrr,
                Present1=>br_rd_p,
                Present2=>XLXN_479,
                Present3=>XLXN_480,
                OutData(7 downto 0)=>toPBData(7 downto 0),
                Present=>presentToPBData);
   
   XLXI_97 : event_handler_MUSER_MaiModule
      port map (CLK_High=>CLK80_INT,
                counter(15 downto 0)=>q(15 downto 0),
                evt=>evt_1,
                evt_std=>evt_std,
                reset=>reset(0),
                sdata=>adc1,
                window_mode=>window_mode,
                adc_reset=>XLXN_503,
                attached_signal=>att_sig(0),
                CLK_ADC=>CLK_ADC_0,
                cs=>cs1,
                main_bus(28 downto 0)=>main_bus1(28 downto 0),
                ready=>ready_ctrl(0),
                saw=>saw1_DUMMY,
                s0_dbg=>s0_dbg,
                s1_dbg=>s1_dbg);
   
   XLXI_98 : event_handler_MUSER_MaiModule
      port map (CLK_High=>CLK80_INT,
                counter(15 downto 0)=>q(15 downto 0),
                evt=>evt_4,
                evt_std=>evt_std,
                reset=>reset(3),
                sdata=>adc4,
                window_mode=>window_mode,
                adc_reset=>XLXN_500,
                attached_signal=>att_sig(3),
                CLK_ADC=>clk_adc_3,
                cs=>cs4,
                main_bus(28 downto 0)=>main_bus4(28 downto 0),
                ready=>ready_ctrl(3),
                saw=>saw4_DUMMY,
                s0_dbg=>open,
                s1_dbg=>open);
   
   XLXI_100 : event_handler_MUSER_MaiModule
      port map (CLK_High=>CLK80_INT,
                counter(15 downto 0)=>q(15 downto 0),
                evt=>evt_3,
                evt_std=>evt_std,
                reset=>reset(2),
                sdata=>adc3,
                window_mode=>window_mode,
                adc_reset=>XLXN_501,
                attached_signal=>att_sig(2),
                CLK_ADC=>CLK_ADC_2,
                cs=>cs3,
                main_bus(28 downto 0)=>main_bus3(28 downto 0),
                ready=>ready_ctrl(2),
                saw=>saw3_DUMMY,
                s0_dbg=>open,
                s1_dbg=>open);
   
   XLXI_101 : event_handler_MUSER_MaiModule
      port map (CLK_High=>CLK80_INT,
                counter(15 downto 0)=>q(15 downto 0),
                evt=>evt_2,
                evt_std=>evt_std,
                reset=>reset(1),
                sdata=>adc2,
                window_mode=>window_mode,
                adc_reset=>XLXN_502,
                attached_signal=>att_sig(1),
                CLK_ADC=>CLK_ADC_1,
                cs=>cs2,
                main_bus(28 downto 0)=>main_bus2(28 downto 0),
                ready=>ready_ctrl(1),
                saw=>saw2_DUMMY,
                s0_dbg=>open,
                s1_dbg=>open);
   
   XLXI_103 : PicoblazeInterface_MUSER_MaiModule
      port map (controlFTDI(7 downto 0)=>controlBus(7 downto 0),
                MCU_CLK=>CLK80_INT,
                Present1=>presentToPBData,
                ToMCUData1(7 downto 0)=>toPBData(7 downto 0),
                data_from_FTDI(7 downto 0)=>data_from_ftdi(7 downto 0),
                DATA_OUT(15 downto 0)=>pb_data_out(15 downto 0),
                data_out_ftd_ioi(7 downto 0)=>FTDIbus(7 downto 0),
                IRQAck=>ARQAck,
                PB_INt0=>PB_INt0,
                PB_INt1=>PB_INt1,
                PORT_ID(7 downto 0)=>PORT_ID(7 downto 0),
                presentFTDIControl=>pFTDIctrl,
                ProgAddr(11 downto 0)=>ProgAddr(11 downto 0),
                RD=>pb_rd_strobe,
                RD_FTDI=>RD_FTDI,
                WR=>pb_wr_strobe,
                WR_FTDI=>WR_FTDI);
   
   XLXI_243 : BUF
      port map (I=>txe,
                O=>controlBus(0));
   
   XLXI_244 : BUF
      port map (I=>rxf,
                O=>controlBus(1));
   
   XLXI_248 : GND
      port map (G=>XLXN_431);
   
   XLXI_249 : BUF
      port map (I=>CLK80,
                O=>CLK80_INT);
   
   XLXI_260 : autoinc_bramAddr_MUSER_MaiModule
      port map (addr_start(7 downto 0)=>pb_data_out(7 downto 0),
                CLK80=>CLK80,
                pb_rd=>pb_rd_strobe,
                pb_wr=>pb_wr_strobe,
                PORT_ID(7 downto 0)=>PORT_ID(7 downto 0),
                br_rd_p=>br_rd_p,
                b_wr_en=>b_ev,
                curr_rd_addr(15 downto 0)=>curr_rw_addr(15 downto 0));
   
   XLXI_272 : curr_w_addr_MUSER_MaiModule
      port map (addra_curr0(7 downto 0)=>addra_curr0(7 downto 0),
                addra_curr1(7 downto 0)=>addra_curr1(7 downto 0),
                CLK80=>CLK80,
                curr_wr_lsb(7 downto 0)=>curr_wr_lsb(7 downto 0),
                curr_wr_msb(7 downto 0)=>curr_wr_msb(7 downto 0),
                pb_rd=>pb_rd_strobe,
                PORT_ID(7 downto 0)=>PORT_ID(7 downto 0),
                mem_overflow_reset=>mem_overflow_reset,
                pb_data_in(7 downto 0)=>curr_w_addrr(7 downto 0),
                present_curr_addr=>p_curr_w_addrr);
   
   XLXI_273 : ZeroByte_MUSER_MaiModule
      port map (ZeroData(7 downto 0)=>XLXN_477(7 downto 0));
   
   XLXI_274 : ZeroByte_MUSER_MaiModule
      port map (ZeroData(7 downto 0)=>XLXN_478(7 downto 0));
   
   XLXI_275 : GND
      port map (G=>XLXN_480);
   
   XLXI_276 : GND
      port map (G=>XLXN_479);
   
   XLXI_296 : GND
      port map (G=>main_bus1b(29));
   
   XLXI_297 : GND
      port map (G=>main_bus1b(30));
   
   XLXI_298 : GND
      port map (G=>main_bus1b(31));
   
   XLXI_299 : INV
      port map (I=>XLXN_503,
                O=>adc_reset_0);
   
   XLXI_300 : INV
      port map (I=>XLXN_502,
                O=>adc_reset_1);
   
   XLXI_301 : INV
      port map (I=>XLXN_501,
                O=>adc_reset_2);
   
   XLXI_302 : INV
      port map (I=>XLXN_500,
                O=>adc_reset_3);
   
   XLXI_304 : WindowProcessing
      port map (at_sig(3 downto 0)=>att_sig(3 downto 0),
                clk=>CLK80,
                pb_wr_strobe=>pb_wr_strobe,
                picoblaze(7 downto 0)=>pb_data_out(7 downto 0),
                PORT_ID(7 downto 0)=>PORT_ID(7 downto 0),
                ready_ctrl(3 downto 0)=>ready_ctrl(3 downto 0),
                reset(3 downto 0)=>reset(3 downto 0),
                ready(3 downto 0)=>ready(3 downto 0),
                reset_out_of_bound(3 downto 0)=>reset_OOB(3 downto 0),
                test_pin=>test_signal,
                window_flag=>window_flag,
                window_mode=>window_mode);
   
   XLXI_317 : OR2
      port map (I0=>reset_main(0),
                I1=>reset_OOB(0),
                O=>reset(0));
   
   XLXI_318 : OR2
      port map (I0=>reset_main(1),
                I1=>reset_OOB(1),
                O=>reset(1));
   
   XLXI_319 : OR2
      port map (I0=>reset_main(2),
                I1=>reset_OOB(2),
                O=>reset(2));
   
   XLXI_320 : OR2
      port map (I0=>reset_main(3),
                I1=>reset_OOB(3),
                O=>reset(3));
   
   XLXI_325 : SPI_Wraper_MUSER_MaiModule
      port map (clk80=>CLK80,
                Data_From_Flash=>MISO,
                Data_From_Pb(7 downto 0)=>pb_data_out(7 downto 0),
                PORT_ID(7 downto 0)=>PORT_ID(7 downto 0),
                RD=>pb_rd_strobe,
                Byte_From_Flash(7 downto 0)=>Byte_From_Flash(7 downto 0),
                Data_To_Flash=>MOSI,
                SPI_CLK=>SPI_CLK,
                SPI_CS=>SPI_CS,
                SPI_Ready=>SPI_Ready);
   
   XLXI_327 : BUF
      port map (I=>SPI_Ready,
                O=>controlBus(2));
   
end BEHAVIORAL;


