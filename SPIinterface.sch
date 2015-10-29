<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DataIn(7:0)" />
        <signal name="DataOut(7:0)" />
        <signal name="ClkIn" />
        <signal name="MISO" />
        <signal name="XLXN_6(7:0)" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="MOSI" />
        <signal name="XLXN_6(7)" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="DataWr" />
        <signal name="SCKint" />
        <signal name="XLXN_27" />
        <signal name="Ready" />
        <signal name="SCK" />
        <port polarity="Input" name="DataIn(7:0)" />
        <port polarity="Output" name="DataOut(7:0)" />
        <port polarity="Input" name="ClkIn" />
        <port polarity="Input" name="MISO" />
        <port polarity="Output" name="MOSI" />
        <port polarity="Input" name="DataWr" />
        <port polarity="Output" name="Ready" />
        <port polarity="Output" name="SCK" />
        <blockdef name="sr8cle">
            <timestamp>2001-2-2T12:39:45</timestamp>
            <rect width="256" x="64" y="-640" height="576" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <rect width="64" x="0" y="-524" height="24" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <rect width="64" x="320" y="-396" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2001-2-2T12:38:38</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2001-2-2T12:35:54</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2001-2-2T12:37:29</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="sr8ce">
            <timestamp>2001-2-2T12:39:45</timestamp>
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="256" x="64" y="-384" height="320" />
        </blockdef>
        <blockdef name="cb4re">
            <timestamp>2001-2-2T12:36:39</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <rect width="256" x="64" y="-512" height="448" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2001-2-2T12:38:38</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2001-2-2T12:37:14</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="XLXN_9" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_8">
            <blockpin signalname="XLXN_10" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="XLXN_6(7)" name="I" />
            <blockpin signalname="MOSI" name="O" />
        </block>
        <block symbolname="sr8cle" name="XLXI_1">
            <blockpin signalname="ClkIn" name="C" />
            <blockpin signalname="SCKint" name="CE" />
            <blockpin signalname="XLXN_9" name="CLR" />
            <blockpin signalname="DataIn(7:0)" name="D(7:0)" />
            <blockpin signalname="DataWr" name="L" />
            <blockpin signalname="XLXN_10" name="SLI" />
            <blockpin signalname="XLXN_6(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="sr8ce" name="XLXI_12">
            <blockpin signalname="ClkIn" name="C" />
            <blockpin signalname="XLXN_27" name="CE" />
            <blockpin signalname="XLXN_9" name="CLR" />
            <blockpin signalname="MISO" name="SLI" />
            <blockpin signalname="DataOut(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="XLXN_22" name="I" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="cb4re" name="XLXI_15">
            <attr value="F" name="INIT">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
            <blockpin signalname="ClkIn" name="C" />
            <blockpin signalname="XLXN_21" name="CE" />
            <blockpin signalname="DataWr" name="R" />
            <blockpin name="CEO" />
            <blockpin signalname="SCKint" name="Q0" />
            <blockpin name="Q1" />
            <blockpin name="Q2" />
            <blockpin name="Q3" />
            <blockpin signalname="XLXN_22" name="TC" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="SCKint" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_18">
            <blockpin signalname="ClkIn" name="C" />
            <blockpin signalname="XLXN_22" name="D" />
            <blockpin signalname="Ready" name="Q" />
        </block>
        <block symbolname="and2b1" name="XLXI_17">
            <blockpin signalname="Ready" name="I0" />
            <blockpin signalname="SCKint" name="I1" />
            <blockpin signalname="SCK" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="DataIn(7:0)">
            <wire x2="1152" y1="784" y2="784" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1120" y="784" name="DataIn(7:0)" orien="R180" />
        <branch name="DataOut(7:0)">
            <wire x2="1552" y1="1760" y2="1760" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="1760" name="DataOut(7:0)" orien="R0" />
        <branch name="XLXN_6(7:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1584" y="912" type="branch" />
            <wire x2="1584" y1="912" y2="912" x1="1536" />
        </branch>
        <instance x="848" y="864" name="XLXI_8" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="1152" y1="720" y2="720" x1="912" />
            <wire x2="912" y1="720" y2="736" x1="912" />
        </branch>
        <instance x="1792" y="1008" name="XLXI_5" orien="R0" />
        <branch name="MOSI">
            <wire x2="2048" y1="976" y2="976" x1="2016" />
        </branch>
        <branch name="XLXN_6(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1744" y="976" type="branch" />
            <wire x2="1792" y1="976" y2="976" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="2048" y="976" name="MOSI" orien="R0" />
        <instance x="1152" y="1296" name="XLXI_1" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1152" y1="1264" y2="1264" x1="1104" />
            <wire x2="1104" y1="1264" y2="1984" x1="1104" />
            <wire x2="1136" y1="1984" y2="1984" x1="1104" />
            <wire x2="1104" y1="1984" y2="2000" x1="1104" />
        </branch>
        <instance x="1136" y="2016" name="XLXI_12" orien="R0" />
        <branch name="MISO">
            <wire x2="1136" y1="1696" y2="1696" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1056" y="1696" name="MISO" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1888" name="ClkIn" orien="R180" />
        <instance x="1040" y="2128" name="XLXI_7" orien="R0" />
        <instance x="1536" y="480" name="XLXI_14" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="1808" y1="448" y2="448" x1="1760" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1456" y1="48" y2="448" x1="1456" />
            <wire x2="1536" y1="448" y2="448" x1="1456" />
            <wire x2="2256" y1="48" y2="48" x1="1456" />
            <wire x2="2256" y1="48" y2="512" x1="2256" />
            <wire x2="2320" y1="512" y2="512" x1="2256" />
            <wire x2="2256" y1="512" y2="512" x1="2192" />
        </branch>
        <branch name="ClkIn">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="512" type="branch" />
            <wire x2="1776" y1="512" y2="512" x1="1760" />
            <wire x2="1808" y1="512" y2="512" x1="1776" />
            <wire x2="1776" y1="512" y2="640" x1="1776" />
            <wire x2="2320" y1="640" y2="640" x1="1776" />
        </branch>
        <instance x="1808" y="640" name="XLXI_15" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="152" y="-408" type="instance" />
        </instance>
        <branch name="DataWr">
            <wire x2="944" y1="608" y2="608" x1="864" />
            <wire x2="944" y1="608" y2="976" x1="944" />
            <wire x2="1152" y1="976" y2="976" x1="944" />
            <wire x2="1808" y1="608" y2="608" x1="944" />
        </branch>
        <iomarker fontsize="28" x="864" y="608" name="DataWr" orien="R180" />
        <instance x="816" y="1856" name="XLXI_16" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="1136" y1="1824" y2="1824" x1="1040" />
        </branch>
        <branch name="ClkIn">
            <wire x2="1088" y1="1888" y2="1888" x1="1056" />
            <wire x2="1136" y1="1888" y2="1888" x1="1088" />
            <wire x2="1152" y1="1168" y2="1168" x1="1088" />
            <wire x2="1088" y1="1168" y2="1888" x1="1088" />
        </branch>
        <branch name="SCKint">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1824" y="1344" type="branch" />
            <wire x2="784" y1="1344" y2="1824" x1="784" />
            <wire x2="816" y1="1824" y2="1824" x1="784" />
            <wire x2="1136" y1="1344" y2="1344" x1="784" />
            <wire x2="1824" y1="1344" y2="1344" x1="1136" />
            <wire x2="2240" y1="1344" y2="1344" x1="1824" />
            <wire x2="1152" y1="1104" y2="1104" x1="1136" />
            <wire x2="1136" y1="1104" y2="1344" x1="1136" />
            <wire x2="2240" y1="192" y2="192" x1="2192" />
            <wire x2="2240" y1="192" y2="304" x1="2240" />
            <wire x2="2240" y1="304" y2="1344" x1="2240" />
            <wire x2="2768" y1="304" y2="304" x1="2240" />
        </branch>
        <instance x="2320" y="768" name="XLXI_18" orien="R0" />
        <branch name="SCK">
            <wire x2="3056" y1="336" y2="336" x1="3024" />
        </branch>
        <instance x="2768" y="432" name="XLXI_17" orien="R0" />
        <iomarker fontsize="28" x="3056" y="336" name="SCK" orien="R0" />
        <branch name="Ready">
            <wire x2="2752" y1="512" y2="512" x1="2704" />
            <wire x2="2832" y1="512" y2="512" x1="2752" />
            <wire x2="2768" y1="368" y2="368" x1="2752" />
            <wire x2="2752" y1="368" y2="512" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2832" y="512" name="Ready" orien="R0" />
    </sheet>
</drawing>