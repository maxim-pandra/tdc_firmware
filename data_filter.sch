<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ready(1)" />
        <signal name="ready(2)" />
        <signal name="ready(3)">
        </signal>
        <signal name="ready(0)" />
        <signal name="XLXN_12" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="clk" />
        <signal name="reset(0)" />
        <signal name="reset(1)" />
        <signal name="reset(2)" />
        <signal name="reset(3)" />
        <signal name="ready_f(3)">
        </signal>
        <signal name="ready_f(2)">
        </signal>
        <signal name="ready_f(1)">
        </signal>
        <signal name="ready_f(0)">
        </signal>
        <signal name="reset(3:0)" />
        <signal name="ready(3:0)" />
        <signal name="ready_f(3:0)" />
        <port polarity="Input" name="ready(1)" />
        <port polarity="Input" name="ready(2)" />
        <port polarity="Input" name="ready(0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset(3:0)" />
        <port polarity="Input" name="ready(3:0)" />
        <port polarity="Output" name="ready_f(3:0)" />
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
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
        <blockdef name="fdre">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <block symbolname="or3" name="XLXI_1">
            <blockpin signalname="ready(0)" name="I0" />
            <blockpin signalname="ready(1)" name="I1" />
            <blockpin signalname="ready(2)" name="I2" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="ready(3)" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="fdre" name="XLXI_5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_14" name="CE" />
            <blockpin signalname="ready(2)" name="D" />
            <blockpin signalname="reset(2)" name="R" />
            <blockpin signalname="ready_f(2)" name="Q" />
        </block>
        <block symbolname="fdre" name="XLXI_6">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_14" name="CE" />
            <blockpin signalname="ready(3)" name="D" />
            <blockpin signalname="reset(3)" name="R" />
            <blockpin signalname="ready_f(3)" name="Q" />
        </block>
        <block symbolname="fdre" name="XLXI_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_14" name="CE" />
            <blockpin signalname="ready(1)" name="D" />
            <blockpin signalname="reset(1)" name="R" />
            <blockpin signalname="ready_f(1)" name="Q" />
        </block>
        <block symbolname="fdre" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_14" name="CE" />
            <blockpin signalname="ready(0)" name="D" />
            <blockpin signalname="reset(0)" name="R" />
            <blockpin signalname="ready_f(0)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1456" y="1600" name="XLXI_1" orien="R0" />
        <instance x="1808" y="1536" name="XLXI_2" orien="R0" />
        <branch name="ready(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1280" y="1408" type="branch" />
            <wire x2="1456" y1="1408" y2="1408" x1="1280" />
        </branch>
        <branch name="ready(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1280" y="1472" type="branch" />
            <wire x2="1456" y1="1472" y2="1472" x1="1280" />
        </branch>
        <branch name="ready(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1280" y="1536" type="branch" />
            <wire x2="1456" y1="1536" y2="1536" x1="1280" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1808" y1="1472" y2="1472" x1="1712" />
        </branch>
        <branch name="ready(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1728" y="1408" type="branch" />
            <wire x2="1808" y1="1408" y2="1408" x1="1728" />
        </branch>
        <instance x="2320" y="1920" name="XLXI_5" orien="R0" />
        <instance x="2320" y="2352" name="XLXI_6" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="2192" y1="1440" y2="1440" x1="2064" />
            <wire x2="2192" y1="1440" y2="1728" x1="2192" />
            <wire x2="2320" y1="1728" y2="1728" x1="2192" />
            <wire x2="2192" y1="1728" y2="2160" x1="2192" />
            <wire x2="2320" y1="2160" y2="2160" x1="2192" />
            <wire x2="2320" y1="928" y2="928" x1="2192" />
            <wire x2="2192" y1="928" y2="1328" x1="2192" />
            <wire x2="2192" y1="1328" y2="1440" x1="2192" />
            <wire x2="2320" y1="1328" y2="1328" x1="2192" />
        </branch>
        <branch name="ready(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2144" y="864" type="branch" />
            <wire x2="2320" y1="864" y2="864" x1="2144" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2128" y="992" type="branch" />
            <wire x2="2320" y1="992" y2="992" x1="2128" />
        </branch>
        <branch name="reset(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2128" y="1088" type="branch" />
            <wire x2="2320" y1="1088" y2="1088" x1="2128" />
        </branch>
        <branch name="ready(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2144" y="1264" type="branch" />
            <wire x2="2320" y1="1264" y2="1264" x1="2144" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2128" y="1392" type="branch" />
            <wire x2="2320" y1="1392" y2="1392" x1="2128" />
        </branch>
        <branch name="reset(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2128" y="1488" type="branch" />
            <wire x2="2320" y1="1488" y2="1488" x1="2128" />
        </branch>
        <branch name="ready(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2144" y="1664" type="branch" />
            <wire x2="2320" y1="1664" y2="1664" x1="2144" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2128" y="1792" type="branch" />
            <wire x2="2320" y1="1792" y2="1792" x1="2128" />
        </branch>
        <branch name="reset(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2128" y="1888" type="branch" />
            <wire x2="2320" y1="1888" y2="1888" x1="2128" />
        </branch>
        <branch name="ready(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2144" y="2096" type="branch" />
            <wire x2="2320" y1="2096" y2="2096" x1="2144" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2128" y="2224" type="branch" />
            <wire x2="2320" y1="2224" y2="2224" x1="2128" />
        </branch>
        <branch name="reset(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2128" y="2320" type="branch" />
            <wire x2="2320" y1="2320" y2="2320" x1="2128" />
        </branch>
        <branch name="ready_f(3)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2864" y="2096" type="branch" />
            <wire x2="2864" y1="2096" y2="2096" x1="2704" />
        </branch>
        <branch name="ready_f(2)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2880" y="1664" type="branch" />
            <wire x2="2880" y1="1664" y2="1664" x1="2704" />
        </branch>
        <branch name="ready_f(1)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2880" y="1264" type="branch" />
            <wire x2="2720" y1="1264" y2="1264" x1="2704" />
            <wire x2="2880" y1="1264" y2="1264" x1="2720" />
        </branch>
        <branch name="ready_f(0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2864" y="864" type="branch" />
            <wire x2="2864" y1="864" y2="864" x1="2704" />
        </branch>
        <branch name="reset(3:0)">
            <wire x2="640" y1="288" y2="288" x1="288" />
        </branch>
        <branch name="clk">
            <wire x2="640" y1="352" y2="352" x1="288" />
        </branch>
        <branch name="ready(3:0)">
            <wire x2="640" y1="224" y2="224" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="224" name="ready(3:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="288" name="reset(3:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="352" name="clk" orien="R180" />
        <branch name="ready_f(3:0)">
            <wire x2="3264" y1="544" y2="544" x1="2992" />
        </branch>
        <iomarker fontsize="28" x="3264" y="544" name="ready_f(3:0)" orien="R0" />
        <instance x="2320" y="1520" name="XLXI_4" orien="R0" />
        <instance x="2320" y="1120" name="XLXI_3" orien="R0" />
    </sheet>
</drawing>