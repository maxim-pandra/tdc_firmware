<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PORT_ID(7:0)" />
        <signal name="Data_From_Pb(7:0)" />
        <signal name="clk80" />
        <signal name="MOSI" />
        <signal name="SPI_CLK" />
        <signal name="SPI_CS" />
        <signal name="Byte_From_Flash(7:0)" />
        <signal name="SPI_Data_Wr" />
        <signal name="SPI_Ready" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="PORT_ID(2)" />
        <signal name="PORT_ID(3)" />
        <signal name="PORT_ID(7)" />
        <signal name="PORT_ID(5)" />
        <signal name="PORT_ID(6)" />
        <signal name="PORT_ID(1)" />
        <signal name="PORT_ID(0)" />
        <signal name="XLXN_34" />
        <signal name="RD" />
        <signal name="PORT_ID(4)" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="E2" />
        <signal name="SPI_CS_Present" />
        <signal name="WR" />
        <signal name="Data_From_Pb(0)" />
        <signal name="XLXN_64" />
        <signal name="MISO" />
        <signal name="PB_Flash_In" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_91" />
        <signal name="SPI_Debugg0" />
        <signal name="SPI_Debugg1" />
        <port polarity="Input" name="PORT_ID(7:0)" />
        <port polarity="Input" name="Data_From_Pb(7:0)" />
        <port polarity="Input" name="clk80" />
        <port polarity="Output" name="MOSI" />
        <port polarity="Output" name="SPI_CLK" />
        <port polarity="Output" name="SPI_CS" />
        <port polarity="Output" name="Byte_From_Flash(7:0)" />
        <port polarity="Output" name="SPI_Ready" />
        <port polarity="Input" name="RD" />
        <port polarity="Input" name="WR" />
        <port polarity="Input" name="MISO" />
        <port polarity="Output" name="PB_Flash_In" />
        <port polarity="Output" name="SPI_Debugg0" />
        <port polarity="Output" name="SPI_Debugg1" />
        <blockdef name="SPIinterface">
            <timestamp>2009-3-28T12:55:36</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and4b4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="40" y1="-256" y2="-256" x1="0" />
            <circle r="12" cx="52" cy="-256" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
        </blockdef>
        <blockdef name="and4b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
        </blockdef>
        <blockdef name="fdce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="and4b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_325">
            <blockpin signalname="XLXN_34" name="I0" />
            <blockpin signalname="WR" name="I1" />
            <blockpin signalname="SPI_Data_Wr" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_327">
            <blockpin signalname="PORT_ID(4)" name="I0" />
            <blockpin signalname="PORT_ID(6)" name="I1" />
            <blockpin signalname="PORT_ID(5)" name="I2" />
            <blockpin signalname="PORT_ID(7)" name="I3" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_328">
            <blockpin signalname="XLXN_42" name="I0" />
            <blockpin signalname="XLXN_41" name="I1" />
            <blockpin signalname="E2" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_330">
            <blockpin signalname="PORT_ID(4)" name="I0" />
            <blockpin signalname="PORT_ID(5)" name="I1" />
            <blockpin signalname="PORT_ID(6)" name="I2" />
            <blockpin signalname="PORT_ID(7)" name="I3" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_331">
            <blockpin signalname="E2" name="I0" />
            <blockpin signalname="WR" name="I1" />
            <blockpin signalname="SPI_CS_Present" name="O" />
        </block>
        <block symbolname="fdce" name="XLXI_333">
            <attr value="1" name="INIT">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
            <blockpin signalname="clk80" name="C" />
            <blockpin signalname="SPI_CS_Present" name="CE" />
            <blockpin signalname="XLXN_64" name="CLR" />
            <blockpin signalname="Data_From_Pb(0)" name="D" />
            <blockpin signalname="SPI_CS" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_334">
            <blockpin signalname="XLXN_64" name="G" />
        </block>
        <block symbolname="SPIinterface" name="XLXI_321">
            <blockpin signalname="SPI_Data_Wr" name="DataWr" />
            <blockpin signalname="Data_From_Pb(7:0)" name="DataIn(7:0)" />
            <blockpin signalname="MISO" name="MISO" />
            <blockpin signalname="clk80" name="ClkIn" />
            <blockpin signalname="SPI_CLK" name="SCK" />
            <blockpin signalname="SPI_Ready" name="Ready" />
            <blockpin signalname="MOSI" name="MOSI" />
            <blockpin signalname="Byte_From_Flash(7:0)" name="DataOut(7:0)" />
        </block>
        <block symbolname="and2" name="XLXI_338">
            <blockpin signalname="XLXN_91" name="I0" />
            <blockpin signalname="RD" name="I1" />
            <blockpin signalname="PB_Flash_In" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_339">
            <blockpin signalname="XLXN_84" name="I0" />
            <blockpin signalname="XLXN_83" name="I1" />
            <blockpin signalname="XLXN_91" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_341">
            <blockpin signalname="PORT_ID(4)" name="I0" />
            <blockpin signalname="PORT_ID(5)" name="I1" />
            <blockpin signalname="PORT_ID(6)" name="I2" />
            <blockpin signalname="PORT_ID(7)" name="I3" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="and4b4" name="XLXI_326">
            <blockpin signalname="PORT_ID(3)" name="I0" />
            <blockpin signalname="PORT_ID(2)" name="I1" />
            <blockpin signalname="PORT_ID(1)" name="I2" />
            <blockpin signalname="PORT_ID(0)" name="I3" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_343">
            <blockpin signalname="PORT_ID(3)" name="I0" />
            <blockpin signalname="PORT_ID(2)" name="I1" />
            <blockpin signalname="PORT_ID(1)" name="I2" />
            <blockpin signalname="PORT_ID(0)" name="I3" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_344">
            <blockpin signalname="SPI_CS_Present" name="I" />
            <blockpin signalname="SPI_Debugg0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_345">
            <blockpin signalname="Data_From_Pb(0)" name="I" />
            <blockpin signalname="SPI_Debugg1" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_335">
            <blockpin signalname="PORT_ID(3)" name="I0" />
            <blockpin signalname="PORT_ID(2)" name="I1" />
            <blockpin signalname="PORT_ID(0)" name="I2" />
            <blockpin signalname="PORT_ID(1)" name="I3" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="PORT_ID(7:0)">
            <wire x2="480" y1="640" y2="640" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="640" name="PORT_ID(7:0)" orien="R180" />
        <branch name="Data_From_Pb(7:0)">
            <wire x2="480" y1="992" y2="992" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="992" name="Data_From_Pb(7:0)" orien="R180" />
        <branch name="clk80">
            <wire x2="480" y1="1344" y2="1344" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="1344" name="clk80" orien="R180" />
        <branch name="MISO">
            <wire x2="480" y1="1696" y2="1696" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="1696" name="MISO" orien="R180" />
        <branch name="MOSI">
            <wire x2="3200" y1="640" y2="640" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3200" y="640" name="MOSI" orien="R0" />
        <branch name="SPI_CLK">
            <wire x2="3200" y1="928" y2="928" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3200" y="928" name="SPI_CLK" orien="R0" />
        <branch name="SPI_Ready">
            <wire x2="3200" y1="1216" y2="1216" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1216" name="SPI_Ready" orien="R0" />
        <branch name="SPI_CS">
            <wire x2="3200" y1="1504" y2="1504" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1504" name="SPI_CS" orien="R0" />
        <branch name="Byte_From_Flash(7:0)">
            <wire x2="3200" y1="1792" y2="1792" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1792" name="Byte_From_Flash(7:0)" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="1808" y1="1216" y2="1216" x1="1792" />
            <wire x2="1808" y1="1216" y2="1312" x1="1808" />
            <wire x2="1840" y1="1312" y2="1312" x1="1808" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="1808" y1="1456" y2="1456" x1="1792" />
            <wire x2="1808" y1="1376" y2="1456" x1="1808" />
            <wire x2="1840" y1="1376" y2="1376" x1="1808" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1392" y="1248" type="branch" />
            <wire x2="1536" y1="1248" y2="1248" x1="1392" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1392" y="1312" type="branch" />
            <wire x2="1536" y1="1312" y2="1312" x1="1392" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1376" y="1360" type="branch" />
            <wire x2="1536" y1="1360" y2="1360" x1="1376" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1376" y="1424" type="branch" />
            <wire x2="1536" y1="1424" y2="1424" x1="1376" />
        </branch>
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1376" y="1488" type="branch" />
            <wire x2="1536" y1="1488" y2="1488" x1="1376" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1552" type="branch" />
            <wire x2="1536" y1="1552" y2="1552" x1="1376" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1392" y="1184" type="branch" />
            <wire x2="1536" y1="1184" y2="1184" x1="1392" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1392" y="1120" type="branch" />
            <wire x2="1536" y1="1120" y2="1120" x1="1392" />
        </branch>
        <instance x="1840" y="1440" name="XLXI_7" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="2160" y1="1344" y2="1344" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="304" y="1952" name="RD" orien="R180" />
        <branch name="RD">
            <wire x2="480" y1="1952" y2="1952" x1="304" />
        </branch>
        <instance x="1536" y="1616" name="XLXI_327" orien="R0" />
        <text style="fontsize:35;fontname:Arial;textcolor:rgb(255,0,255)" x="1848" y="1512">PORT_E0</text>
        <branch name="WR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1280" type="branch" />
            <wire x2="2160" y1="1280" y2="1280" x1="2128" />
        </branch>
        <instance x="2160" y="1408" name="XLXI_325" orien="R0" />
        <branch name="SPI_Data_Wr">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2544" y="1312" type="branch" />
            <wire x2="2464" y1="1312" y2="1312" x1="2416" />
            <wire x2="2544" y1="1312" y2="1312" x1="2464" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="1728" y1="1968" y2="1968" x1="1696" />
            <wire x2="1728" y1="1968" y2="2064" x1="1728" />
            <wire x2="1744" y1="2064" y2="2064" x1="1728" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1712" y1="2208" y2="2208" x1="1696" />
            <wire x2="1712" y1="2128" y2="2208" x1="1712" />
            <wire x2="1744" y1="2128" y2="2128" x1="1712" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1296" y="2000" type="branch" />
            <wire x2="1440" y1="2000" y2="2000" x1="1296" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1296" y="2064" type="branch" />
            <wire x2="1440" y1="2064" y2="2064" x1="1296" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1280" y="2112" type="branch" />
            <wire x2="1440" y1="2112" y2="2112" x1="1280" />
        </branch>
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1280" y="2176" type="branch" />
            <wire x2="1440" y1="2176" y2="2176" x1="1280" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1280" y="2240" type="branch" />
            <wire x2="1440" y1="2240" y2="2240" x1="1280" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="2304" type="branch" />
            <wire x2="1440" y1="2304" y2="2304" x1="1280" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1296" y="1936" type="branch" />
            <wire x2="1440" y1="1936" y2="1936" x1="1296" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1296" y="1872" type="branch" />
            <wire x2="1440" y1="1872" y2="1872" x1="1296" />
        </branch>
        <instance x="1744" y="2192" name="XLXI_328" orien="R0" />
        <branch name="E2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="2096" type="branch" />
            <wire x2="2032" y1="2096" y2="2096" x1="2000" />
            <wire x2="2064" y1="2096" y2="2096" x1="2032" />
        </branch>
        <instance x="1440" y="2368" name="XLXI_330" orien="R0" />
        <text style="fontsize:35;fontname:Arial;textcolor:rgb(255,0,255)" x="1752" y="2264">PORT_E2</text>
        <branch name="WR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="2032" type="branch" />
            <wire x2="2064" y1="2032" y2="2032" x1="2032" />
        </branch>
        <instance x="2064" y="2160" name="XLXI_331" orien="R0" />
        <branch name="SPI_CS_Present">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="2064" type="branch" />
            <wire x2="2368" y1="2064" y2="2064" x1="2320" />
            <wire x2="2448" y1="2064" y2="2064" x1="2368" />
        </branch>
        <instance x="2272" y="1840" name="XLXI_333" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-404" type="instance" />
        </instance>
        <branch name="Data_From_Pb(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1584" type="branch" />
            <wire x2="2272" y1="1584" y2="1584" x1="2176" />
        </branch>
        <branch name="SPI_CS_Present">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1648" type="branch" />
            <wire x2="2272" y1="1648" y2="1648" x1="2192" />
        </branch>
        <branch name="SPI_CS">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1584" type="branch" />
            <wire x2="2720" y1="1584" y2="1584" x1="2656" />
        </branch>
        <branch name="clk80">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1712" type="branch" />
            <wire x2="2272" y1="1712" y2="1712" x1="2192" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="2176" y1="1808" y2="1840" x1="2176" />
            <wire x2="2272" y1="1808" y2="1808" x1="2176" />
        </branch>
        <instance x="2112" y="1968" name="XLXI_334" orien="R0" />
        <branch name="WR">
            <wire x2="480" y1="2032" y2="2032" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="2032" name="WR" orien="R180" />
        <branch name="clk80">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2544" type="branch" />
            <wire x2="384" y1="2544" y2="2544" x1="320" />
        </branch>
        <branch name="Data_From_Pb(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2416" type="branch" />
            <wire x2="384" y1="2416" y2="2416" x1="320" />
        </branch>
        <branch name="MISO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2352" type="branch" />
            <wire x2="384" y1="2352" y2="2352" x1="320" />
        </branch>
        <branch name="MOSI">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="2352" type="branch" />
            <wire x2="864" y1="2352" y2="2352" x1="768" />
        </branch>
        <branch name="SPI_CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="2416" type="branch" />
            <wire x2="864" y1="2416" y2="2416" x1="768" />
        </branch>
        <branch name="SPI_Ready">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="2480" type="branch" />
            <wire x2="864" y1="2480" y2="2480" x1="768" />
        </branch>
        <branch name="Byte_From_Flash(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="2544" type="branch" />
            <wire x2="864" y1="2544" y2="2544" x1="768" />
        </branch>
        <branch name="SPI_Data_Wr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2480" type="branch" />
            <wire x2="384" y1="2480" y2="2480" x1="320" />
        </branch>
        <instance x="384" y="2576" name="XLXI_321" orien="R0">
        </instance>
        <instance x="2160" y="720" name="XLXI_338" orien="R0" />
        <branch name="PB_Flash_In">
            <wire x2="2464" y1="624" y2="624" x1="2416" />
            <wire x2="2544" y1="624" y2="624" x1="2464" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="1808" y1="768" y2="768" x1="1792" />
            <wire x2="1808" y1="688" y2="768" x1="1808" />
            <wire x2="1840" y1="688" y2="688" x1="1808" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1392" y="560" type="branch" />
            <wire x2="1408" y1="560" y2="560" x1="1392" />
            <wire x2="1536" y1="560" y2="560" x1="1408" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1392" y="624" type="branch" />
            <wire x2="1408" y1="624" y2="624" x1="1392" />
            <wire x2="1536" y1="624" y2="624" x1="1408" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1376" y="672" type="branch" />
            <wire x2="1536" y1="672" y2="672" x1="1376" />
        </branch>
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1376" y="736" type="branch" />
            <wire x2="1536" y1="736" y2="736" x1="1376" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1392" y="496" type="branch" />
            <wire x2="1408" y1="496" y2="496" x1="1392" />
            <wire x2="1536" y1="496" y2="496" x1="1408" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1392" y="432" type="branch" />
            <wire x2="1408" y1="432" y2="432" x1="1392" />
            <wire x2="1536" y1="432" y2="432" x1="1408" />
        </branch>
        <instance x="1840" y="752" name="XLXI_339" orien="R0" />
        <branch name="XLXN_91">
            <wire x2="2160" y1="656" y2="656" x1="2096" />
        </branch>
        <branch name="RD">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="592" type="branch" />
            <wire x2="2160" y1="592" y2="592" x1="2128" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1376" y="800" type="branch" />
            <wire x2="1536" y1="800" y2="800" x1="1376" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="864" type="branch" />
            <wire x2="1536" y1="864" y2="864" x1="1376" />
        </branch>
        <instance x="1536" y="928" name="XLXI_341" orien="R0" />
        <text style="fontsize:35;fontname:Arial;textcolor:rgb(255,0,255)" x="2008" y="760">PORT_E1</text>
        <instance x="1536" y="1376" name="XLXI_326" orien="R0" />
        <branch name="XLXN_83">
            <wire x2="1808" y1="528" y2="528" x1="1792" />
            <wire x2="1808" y1="528" y2="624" x1="1808" />
            <wire x2="1824" y1="624" y2="624" x1="1808" />
            <wire x2="1840" y1="624" y2="624" x1="1824" />
        </branch>
        <instance x="1536" y="688" name="XLXI_343" orien="R0" />
        <iomarker fontsize="28" x="2544" y="624" name="PB_Flash_In" orien="R0" />
        <branch name="SPI_CS_Present">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="2032" type="branch" />
            <wire x2="2976" y1="2032" y2="2032" x1="2960" />
            <wire x2="3040" y1="2032" y2="2032" x1="2976" />
        </branch>
        <instance x="3040" y="2064" name="XLXI_344" orien="R0" />
        <branch name="SPI_Debugg0">
            <wire x2="3344" y1="2032" y2="2032" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3344" y="2032" name="SPI_Debugg0" orien="R0" />
        <branch name="Data_From_Pb(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="2192" type="branch" />
            <wire x2="3072" y1="2192" y2="2192" x1="2960" />
        </branch>
        <instance x="3072" y="2224" name="XLXI_345" orien="R0" />
        <branch name="SPI_Debugg1">
            <wire x2="3360" y1="2192" y2="2192" x1="3296" />
        </branch>
        <iomarker fontsize="28" x="3360" y="2192" name="SPI_Debugg1" orien="R0" />
        <instance x="1440" y="2128" name="XLXI_335" orien="R0" />
    </sheet>
</drawing>