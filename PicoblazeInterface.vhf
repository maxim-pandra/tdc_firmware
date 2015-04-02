--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : PicoblazeInterface.vhf
-- /___/   /\     Timestamp : 03/28/2015 10:59:52
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/projects/diploma/buisnes/current/spartan6_tcspc/PicoblazeInterface.vhf -w D:/projects/diploma/buisnes/current/spartan6_tcspc/PicoblazeInterface.sch
--Design Name: PicoblazeInterface
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8CE_HXILINX_PicoblazeInterface -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_PicoblazeInterface is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_PicoblazeInterface;

architecture Behavioral of FD8CE_HXILINX_PicoblazeInterface is

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

----- CELL M4_1E_HXILINX_PicoblazeInterface -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_PicoblazeInterface is
  
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
end M4_1E_HXILINX_PicoblazeInterface;

architecture M4_1E_HXILINX_PicoblazeInterface_V of M4_1E_HXILINX_PicoblazeInterface is
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
end M4_1E_HXILINX_PicoblazeInterface_V;
----- CELL FD8RE_HXILINX_PicoblazeInterface -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8RE_HXILINX_PicoblazeInterface is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    R   : in STD_LOGIC
    );
end FD8RE_HXILINX_PicoblazeInterface;

architecture Behavioral of FD8RE_HXILINX_PicoblazeInterface is

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

----- CELL AND8_HXILINX_PicoblazeInterface -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND8_HXILINX_PicoblazeInterface is
  
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
end AND8_HXILINX_PicoblazeInterface;

architecture AND8_HXILINX_PicoblazeInterface_V of AND8_HXILINX_PicoblazeInterface is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5 and I6 and I7;
end AND8_HXILINX_PicoblazeInterface_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity IMux4x1x8_MUSER_PicoblazeInterface is
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
end IMux4x1x8_MUSER_PicoblazeInterface;

architecture BEHAVIORAL of IMux4x1x8_MUSER_PicoblazeInterface is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   signal XLXN_75  : std_logic;
   signal XLXN_77  : std_logic;
   signal XLXN_81  : std_logic;
   component M4_1E_HXILINX_PicoblazeInterface
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_15";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_16";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_17";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_18";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_19";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_20";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_21";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_22";
   attribute INIT of XLXI_38 : label is "FF0C";
begin
   XLXI_1 : M4_1E_HXILINX_PicoblazeInterface
      port map (D0=>InData0(0),
                D1=>InData1(0),
                D2=>InData2(0),
                D3=>InData3(0),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(0));
   
   XLXI_2 : M4_1E_HXILINX_PicoblazeInterface
      port map (D0=>InData0(1),
                D1=>InData1(1),
                D2=>InData2(1),
                D3=>InData3(1),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(1));
   
   XLXI_3 : M4_1E_HXILINX_PicoblazeInterface
      port map (D0=>InData0(2),
                D1=>InData1(2),
                D2=>InData2(2),
                D3=>InData3(2),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(2));
   
   XLXI_4 : M4_1E_HXILINX_PicoblazeInterface
      port map (D0=>InData0(3),
                D1=>InData1(3),
                D2=>InData2(3),
                D3=>InData3(3),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(3));
   
   XLXI_5 : M4_1E_HXILINX_PicoblazeInterface
      port map (D0=>InData0(4),
                D1=>InData1(4),
                D2=>InData2(4),
                D3=>InData3(4),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(4));
   
   XLXI_6 : M4_1E_HXILINX_PicoblazeInterface
      port map (D0=>InData0(5),
                D1=>InData1(5),
                D2=>InData2(5),
                D3=>InData3(5),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(5));
   
   XLXI_7 : M4_1E_HXILINX_PicoblazeInterface
      port map (D0=>InData0(6),
                D1=>InData1(6),
                D2=>InData2(6),
                D3=>InData3(6),
                E=>XLXN_81,
                S0=>XLXN_75,
                S1=>XLXN_77,
                O=>OutData(6));
   
   XLXI_8 : M4_1E_HXILINX_PicoblazeInterface
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

entity PicoblazeInterface is
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
end PicoblazeInterface;

architecture BEHAVIORAL of PicoblazeInterface is
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
   component FD8CE_HXILINX_PicoblazeInterface
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
   
   component IMux4x1x8_MUSER_PicoblazeInterface
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
   
   component FD8RE_HXILINX_PicoblazeInterface
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
   
   component AND8_HXILINX_PicoblazeInterface
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
   
   attribute HU_SET of XLXI_113 : label is "XLXI_113_26";
   attribute HU_SET of XLXI_210 : label is "XLXI_210_25";
   attribute HU_SET of XLXI_269 : label is "XLXI_269_23";
   attribute HU_SET of XLXI_271 : label is "XLXI_271_27";
   attribute HU_SET of XLXI_292 : label is "XLXI_292_24";
   attribute HU_SET of XLXI_473 : label is "XLXI_473_28";
begin
   DATA_OUT(15 downto 0) <= DATA_OUT_DUMMY(15 downto 0);
   PORT_ID(7 downto 0) <= PORT_ID_DUMMY(7 downto 0);
   presentFTDIControl <= presentFTDIControl_DUMMY;
   ProgAddr(11 downto 0) <= ProgAddr_DUMMY(11 downto 0);
   RD <= RD_DUMMY;
   WR <= WR_DUMMY;
   WR_FTDI <= WR_FTDI_DUMMY;
   XLXI_113 : FD8CE_HXILINX_PicoblazeInterface
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
   
   XLXI_142 : IMux4x1x8_MUSER_PicoblazeInterface
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
   
   XLXI_210 : FD8RE_HXILINX_PicoblazeInterface
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
   
   XLXI_269 : AND8_HXILINX_PicoblazeInterface
      port map (I0=>PORT_ID_DUMMY(7),
                I1=>PORT_ID_DUMMY(6),
                I2=>PORT_ID_DUMMY(5),
                I3=>PORT_ID_DUMMY(4),
                I4=>XLXN_1115,
                I5=>XLXN_1114,
                I6=>XLXN_1113,
                I7=>XLXN_1112,
                O=>just_some_net);
   
   XLXI_271 : AND8_HXILINX_PicoblazeInterface
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
   
   XLXI_292 : AND8_HXILINX_PicoblazeInterface
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
   
   XLXI_473 : AND8_HXILINX_PicoblazeInterface
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


