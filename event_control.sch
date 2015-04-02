<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="nonsync_evt" />
        <signal name="sync_evt" />
        <signal name="from_MCU_addr(11:0)" />
        <signal name="WR" />
        <signal name="intRegSel" />
        <signal name="from_MCU_addr(8)" />
        <signal name="from_MCU_addr(9)" />
        <signal name="from_MCU_addr(10)" />
        <signal name="from_MCU_addr(11)" />
        <signal name="from_MCU_addr(7)" />
        <signal name="from_MCU_addr(6)" />
        <signal name="from_MCU_addr(5)" />
        <signal name="from_MCU_addr(4)" />
        <signal name="from_MCU_addr(3)" />
        <signal name="from_MCU_addr(2)" />
        <signal name="from_MCU_addr(1)" />
        <signal name="from_MCU_addr(0)" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="valid_addres" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_28" />
        <signal name="data" />
        <signal name="valid_addres1" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="evt_int" />
        <signal name="XLXN_56" />
        <signal name="low_evt" />
        <signal name="XLXN_53" />
        <port polarity="Input" name="nonsync_evt" />
        <port polarity="Input" name="sync_evt" />
        <port polarity="Input" name="from_MCU_addr(11:0)" />
        <port polarity="Input" name="WR" />
        <port polarity="Input" name="intRegSel" />
        <port polarity="Input" name="data" />
        <port polarity="Output" name="evt_int" />
        <port polarity="Input" name="low_evt" />
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
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
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
        <block symbolname="and4b3" name="XLXI_1">
            <blockpin signalname="from_MCU_addr(11)" name="I0" />
            <blockpin signalname="from_MCU_addr(10)" name="I1" />
            <blockpin signalname="from_MCU_addr(9)" name="I2" />
            <blockpin signalname="from_MCU_addr(8)" name="I3" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and4b4" name="XLXI_2">
            <blockpin signalname="from_MCU_addr(4)" name="I0" />
            <blockpin signalname="from_MCU_addr(5)" name="I1" />
            <blockpin signalname="from_MCU_addr(6)" name="I2" />
            <blockpin signalname="from_MCU_addr(7)" name="I3" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_3">
            <blockpin signalname="from_MCU_addr(0)" name="I0" />
            <blockpin signalname="from_MCU_addr(1)" name="I1" />
            <blockpin signalname="from_MCU_addr(2)" name="I2" />
            <blockpin signalname="from_MCU_addr(3)" name="I3" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_4">
            <blockpin signalname="nonsync_evt" name="D0" />
            <blockpin signalname="sync_evt" name="D1" />
            <blockpin signalname="XLXN_21" name="S0" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_5">
            <blockpin signalname="intRegSel" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_15" name="I2" />
            <blockpin signalname="XLXN_14" name="I3" />
            <blockpin signalname="valid_addres" name="O" />
        </block>
        <block symbolname="fdce" name="XLXI_6">
            <blockpin signalname="WR" name="C" />
            <blockpin signalname="valid_addres" name="CE" />
            <blockpin signalname="XLXN_22" name="CLR" />
            <blockpin signalname="data" name="D" />
            <blockpin signalname="XLXN_21" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="XLXN_22" name="G" />
        </block>
        <block symbolname="fdce" name="XLXI_9">
            <blockpin signalname="WR" name="C" />
            <blockpin signalname="valid_addres1" name="CE" />
            <blockpin signalname="XLXN_28" name="CLR" />
            <blockpin signalname="data" name="D" />
            <blockpin signalname="XLXN_53" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_10">
            <blockpin signalname="XLXN_28" name="G" />
        </block>
        <block symbolname="and4" name="XLXI_11">
            <blockpin signalname="from_MCU_addr(3)" name="I0" />
            <blockpin signalname="from_MCU_addr(2)" name="I1" />
            <blockpin signalname="from_MCU_addr(1)" name="I2" />
            <blockpin signalname="from_MCU_addr(0)" name="I3" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_13">
            <blockpin signalname="from_MCU_addr(11)" name="I0" />
            <blockpin signalname="from_MCU_addr(10)" name="I1" />
            <blockpin signalname="from_MCU_addr(9)" name="I2" />
            <blockpin signalname="from_MCU_addr(8)" name="I3" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_14">
            <blockpin signalname="intRegSel" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_46" name="I2" />
            <blockpin signalname="XLXN_45" name="I3" />
            <blockpin signalname="valid_addres1" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_15">
            <blockpin signalname="from_MCU_addr(7)" name="I0" />
            <blockpin signalname="from_MCU_addr(6)" name="I1" />
            <blockpin signalname="from_MCU_addr(5)" name="I2" />
            <blockpin signalname="from_MCU_addr(4)" name="I3" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_16">
            <blockpin signalname="XLXN_56" name="D0" />
            <blockpin signalname="low_evt" name="D1" />
            <blockpin signalname="XLXN_53" name="S0" />
            <blockpin signalname="evt_int" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="nonsync_evt">
            <wire x2="2400" y1="608" y2="608" x1="2208" />
        </branch>
        <branch name="sync_evt">
            <wire x2="2400" y1="672" y2="672" x1="2160" />
        </branch>
        <branch name="WR">
            <wire x2="1520" y1="960" y2="960" x1="1264" />
        </branch>
        <branch name="data">
            <wire x2="1520" y1="832" y2="832" x1="1264" />
        </branch>
        <branch name="intRegSel">
            <wire x2="1824" y1="2080" y2="2080" x1="240" />
            <wire x2="1824" y1="2080" y2="2592" x1="1824" />
            <wire x2="2912" y1="2592" y2="2592" x1="1824" />
            <wire x2="1824" y1="1728" y2="2080" x1="1824" />
            <wire x2="2912" y1="2240" y2="2592" x1="2912" />
        </branch>
        <instance x="1168" y="2064" name="XLXI_3" orien="R0" />
        <instance x="1168" y="1776" name="XLXI_2" orien="R0" />
        <instance x="1168" y="1472" name="XLXI_1" orien="R0" />
        <branch name="from_MCU_addr(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="1216" type="branch" />
            <wire x2="1168" y1="1216" y2="1216" x1="1088" />
        </branch>
        <branch name="from_MCU_addr(9)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="1280" type="branch" />
            <wire x2="1168" y1="1280" y2="1280" x1="1088" />
        </branch>
        <branch name="from_MCU_addr(10)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="1344" type="branch" />
            <wire x2="1168" y1="1344" y2="1344" x1="1088" />
        </branch>
        <branch name="from_MCU_addr(11)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="1408" type="branch" />
            <wire x2="1168" y1="1408" y2="1408" x1="1088" />
        </branch>
        <branch name="from_MCU_addr(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="1520" type="branch" />
            <wire x2="1168" y1="1520" y2="1520" x1="1088" />
        </branch>
        <branch name="from_MCU_addr(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="1584" type="branch" />
            <wire x2="1168" y1="1584" y2="1584" x1="1088" />
        </branch>
        <branch name="from_MCU_addr(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="1648" type="branch" />
            <wire x2="1168" y1="1648" y2="1648" x1="1088" />
        </branch>
        <branch name="from_MCU_addr(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="1712" type="branch" />
            <wire x2="1168" y1="1712" y2="1712" x1="1088" />
        </branch>
        <branch name="from_MCU_addr(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="1808" type="branch" />
            <wire x2="1168" y1="1808" y2="1808" x1="1088" />
        </branch>
        <branch name="from_MCU_addr(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="1872" type="branch" />
            <wire x2="1168" y1="1872" y2="1872" x1="1088" />
        </branch>
        <branch name="from_MCU_addr(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="1936" type="branch" />
            <wire x2="1168" y1="1936" y2="1936" x1="1088" />
        </branch>
        <branch name="from_MCU_addr(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="2000" type="branch" />
            <wire x2="1168" y1="2000" y2="2000" x1="1088" />
        </branch>
        <instance x="2400" y="768" name="XLXI_4" orien="R0" />
        <instance x="1824" y="1792" name="XLXI_5" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1824" y1="1312" y2="1312" x1="1424" />
            <wire x2="1824" y1="1312" y2="1536" x1="1824" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1616" y1="1616" y2="1616" x1="1424" />
            <wire x2="1616" y1="1600" y2="1616" x1="1616" />
            <wire x2="1824" y1="1600" y2="1600" x1="1616" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1616" y1="1904" y2="1904" x1="1424" />
            <wire x2="1616" y1="1664" y2="1904" x1="1616" />
            <wire x2="1824" y1="1664" y2="1664" x1="1616" />
        </branch>
        <branch name="valid_addres">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2272" y="1632" type="branch" />
            <wire x2="2272" y1="1632" y2="1632" x1="2080" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2400" y1="832" y2="832" x1="1904" />
            <wire x2="2400" y1="736" y2="832" x1="2400" />
        </branch>
        <instance x="1344" y="1184" name="XLXI_7" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="1520" y1="1056" y2="1056" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1264" y="832" name="data" orien="R180" />
        <iomarker fontsize="28" x="1264" y="960" name="WR" orien="R180" />
        <iomarker fontsize="28" x="368" y="1632" name="from_MCU_addr(11:0)" orien="R180" />
        <branch name="from_MCU_addr(11:0)">
            <wire x2="688" y1="1632" y2="1632" x1="368" />
        </branch>
        <iomarker fontsize="28" x="240" y="2080" name="intRegSel" orien="R180" />
        <iomarker fontsize="28" x="2208" y="608" name="nonsync_evt" orien="R180" />
        <instance x="1520" y="1088" name="XLXI_6" orien="R0" />
        <iomarker fontsize="28" x="2160" y="672" name="sync_evt" orien="R180" />
        <branch name="valid_addres">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1392" y="896" type="branch" />
            <wire x2="1520" y1="896" y2="896" x1="1392" />
        </branch>
        <instance x="2496" y="1600" name="XLXI_10" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="2528" y1="1408" y2="1456" x1="2528" />
            <wire x2="2560" y1="1456" y2="1456" x1="2528" />
            <wire x2="2560" y1="1456" y2="1472" x1="2560" />
        </branch>
        <branch name="data">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2400" y="1184" type="branch" />
            <wire x2="2528" y1="1184" y2="1184" x1="2400" />
        </branch>
        <branch name="valid_addres1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2400" y="1248" type="branch" />
            <wire x2="2528" y1="1248" y2="1248" x1="2400" />
        </branch>
        <branch name="WR">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2400" y="1312" type="branch" />
            <wire x2="2528" y1="1312" y2="1312" x1="2400" />
        </branch>
        <instance x="2256" y="2576" name="XLXI_11" orien="R0" />
        <instance x="2256" y="1984" name="XLXI_13" orien="R0" />
        <branch name="from_MCU_addr(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2176" y="1728" type="branch" />
            <wire x2="2256" y1="1728" y2="1728" x1="2176" />
        </branch>
        <branch name="from_MCU_addr(9)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2176" y="1792" type="branch" />
            <wire x2="2256" y1="1792" y2="1792" x1="2176" />
        </branch>
        <branch name="from_MCU_addr(10)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2176" y="1856" type="branch" />
            <wire x2="2256" y1="1856" y2="1856" x1="2176" />
        </branch>
        <branch name="from_MCU_addr(11)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2176" y="1920" type="branch" />
            <wire x2="2256" y1="1920" y2="1920" x1="2176" />
        </branch>
        <branch name="from_MCU_addr(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2176" y="2032" type="branch" />
            <wire x2="2256" y1="2032" y2="2032" x1="2176" />
        </branch>
        <branch name="from_MCU_addr(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2176" y="2096" type="branch" />
            <wire x2="2256" y1="2096" y2="2096" x1="2176" />
        </branch>
        <branch name="from_MCU_addr(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2176" y="2160" type="branch" />
            <wire x2="2256" y1="2160" y2="2160" x1="2176" />
        </branch>
        <branch name="from_MCU_addr(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2176" y="2224" type="branch" />
            <wire x2="2256" y1="2224" y2="2224" x1="2176" />
        </branch>
        <branch name="from_MCU_addr(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2176" y="2320" type="branch" />
            <wire x2="2256" y1="2320" y2="2320" x1="2176" />
        </branch>
        <branch name="from_MCU_addr(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2176" y="2384" type="branch" />
            <wire x2="2256" y1="2384" y2="2384" x1="2176" />
        </branch>
        <branch name="from_MCU_addr(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2176" y="2448" type="branch" />
            <wire x2="2256" y1="2448" y2="2448" x1="2176" />
        </branch>
        <branch name="from_MCU_addr(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2176" y="2512" type="branch" />
            <wire x2="2256" y1="2512" y2="2512" x1="2176" />
        </branch>
        <instance x="2912" y="2304" name="XLXI_14" orien="R0" />
        <branch name="XLXN_45">
            <wire x2="2912" y1="1824" y2="1824" x1="2512" />
            <wire x2="2912" y1="1824" y2="2048" x1="2912" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="2704" y1="2128" y2="2128" x1="2512" />
            <wire x2="2704" y1="2112" y2="2128" x1="2704" />
            <wire x2="2912" y1="2112" y2="2112" x1="2704" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="2704" y1="2416" y2="2416" x1="2512" />
            <wire x2="2704" y1="2176" y2="2416" x1="2704" />
            <wire x2="2912" y1="2176" y2="2176" x1="2704" />
        </branch>
        <instance x="2256" y="2288" name="XLXI_15" orien="R0" />
        <branch name="valid_addres1">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3264" y="2144" type="branch" />
            <wire x2="3264" y1="2144" y2="2144" x1="3168" />
        </branch>
        <instance x="2864" y="960" name="XLXI_16" orien="R0" />
        <branch name="evt_int">
            <wire x2="3344" y1="832" y2="832" x1="3184" />
        </branch>
        <iomarker fontsize="28" x="3344" y="832" name="evt_int" orien="R0" />
        <branch name="XLXN_56">
            <wire x2="2784" y1="640" y2="640" x1="2720" />
            <wire x2="2784" y1="640" y2="800" x1="2784" />
            <wire x2="2864" y1="800" y2="800" x1="2784" />
        </branch>
        <branch name="low_evt">
            <wire x2="2864" y1="864" y2="864" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2720" y="864" name="low_evt" orien="R180" />
        <branch name="XLXN_53">
            <wire x2="2864" y1="928" y2="1008" x1="2864" />
            <wire x2="2976" y1="1008" y2="1008" x1="2864" />
            <wire x2="2976" y1="1008" y2="1184" x1="2976" />
            <wire x2="2976" y1="1184" y2="1184" x1="2912" />
        </branch>
        <instance x="2528" y="1440" name="XLXI_9" orien="R0" />
    </sheet>
</drawing>