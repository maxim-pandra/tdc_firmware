<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="CLK_1In" />
        <signal name="CLK_2In" />
        <signal name="CLK_1out" />
        <signal name="CLK_2out" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="CLK_Low" />
        <signal name="CLK_High" />
        <signal name="XLXN_22" />
        <signal name="CLK_Mid" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="CLK_IN(15:0)" />
        <signal name="CLK_DAC(11:0)" />
        <signal name="CLK_IN(15:4)" />
        <signal name="F7kHz" />
        <signal name="CLK_IN(10)" />
        <signal name="CLK_IN(15)" />
        <signal name="F112Hz" />
        <signal name="clk_new" />
        <port polarity="Input" name="CLK_1In" />
        <port polarity="Input" name="CLK_2In" />
        <port polarity="Output" name="CLK_1out" />
        <port polarity="Output" name="CLK_2out" />
        <port polarity="Output" name="CLK_Low" />
        <port polarity="Output" name="CLK_High" />
        <port polarity="Output" name="CLK_Mid" />
        <port polarity="Output" name="CLK_DAC(11:0)" />
        <port polarity="Output" name="F7kHz" />
        <port polarity="Output" name="F112Hz" />
        <port polarity="Output" name="clk_new" />
        <blockdef name="inv">
            <timestamp>2001-2-2T12:38:38</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="ibuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
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
        <blockdef name="bufg">
            <timestamp>2001-2-2T12:35:54</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2001-2-2T12:37:29</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="cb16ce">
            <timestamp>2001-2-2T12:36:39</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="clkconvert">
            <timestamp>2005-3-20T7:25:32</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2001-2-2T12:35:54</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="dcm_sp">
            <timestamp>2007-4-11T22:49:47</timestamp>
            <line x2="0" y1="-832" y2="-832" x1="64" />
            <rect width="256" x="64" y="-1024" height="960" />
            <line x2="320" y1="-960" y2="-960" x1="384" />
            <line x2="320" y1="-896" y2="-896" x1="384" />
            <line x2="320" y1="-832" y2="-832" x1="384" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-768" y2="-768" x1="384" />
            <line x2="320" y1="-640" y2="-640" x1="384" />
            <line x2="320" y1="-704" y2="-704" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="64" y1="-960" y2="-960" x1="0" />
            <line x2="64" y1="-896" y2="-896" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <rect width="64" x="320" y="-336" height="32" />
            <line x2="80" y1="-944" y2="-960" x1="64" />
            <line x2="64" y1="-960" y2="-976" x1="80" />
            <line x2="80" y1="-880" y2="-896" x1="64" />
            <line x2="64" y1="-896" y2="-912" x1="80" />
        </blockdef>
        <block symbolname="ibuf" name="XLXI_4">
            <blockpin signalname="CLK_1In" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_5">
            <blockpin signalname="CLK_2In" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="XLXN_5" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_6">
            <blockpin signalname="XLXN_1" name="I" />
            <blockpin signalname="CLK_1out" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_7">
            <blockpin signalname="XLXN_15" name="I" />
            <blockpin signalname="CLK_2out" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_12">
            <blockpin signalname="XLXN_13" name="G" />
        </block>
        <block symbolname="bufg" name="XLXI_14">
            <blockpin signalname="XLXN_16" name="I" />
            <blockpin signalname="CLK_High" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_15">
            <blockpin signalname="XLXN_15" name="I" />
            <blockpin signalname="CLK_Low" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_16">
            <blockpin signalname="XLXN_22" name="G" />
        </block>
        <block symbolname="bufg" name="XLXI_17">
            <blockpin signalname="XLXN_1" name="I" />
            <blockpin signalname="CLK_Mid" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_19">
            <blockpin signalname="XLXN_26" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_20">
            <blockpin signalname="XLXN_25" name="P" />
        </block>
        <block symbolname="cb16ce" name="XLXI_22">
            <blockpin signalname="XLXN_15" name="C" />
            <blockpin signalname="XLXN_25" name="CE" />
            <blockpin signalname="XLXN_26" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="CLK_IN(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="clkconvert" name="XLXI_23">
            <blockpin signalname="CLK_IN(15:4)" name="IClock(11:0)" />
            <blockpin signalname="CLK_DAC(11:0)" name="OClock(11:0)" />
        </block>
        <block symbolname="buf" name="XLXI_24">
            <blockpin signalname="CLK_IN(10)" name="I" />
            <blockpin signalname="F7kHz" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_25">
            <blockpin signalname="CLK_IN(15)" name="I" />
            <blockpin signalname="F112Hz" name="O" />
        </block>
        <block symbolname="dcm_sp" name="XLXI_26">
            <attr value="5" name="CLKFX_MULTIPLY">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Integer 1 32" />
            </attr>
            <blockpin signalname="XLXN_14" name="CLKFB" />
            <blockpin signalname="XLXN_1" name="CLKIN" />
            <blockpin signalname="XLXN_13" name="DSSEN" />
            <blockpin signalname="XLXN_22" name="PSCLK" />
            <blockpin signalname="XLXN_22" name="PSEN" />
            <blockpin signalname="XLXN_22" name="PSINCDEC" />
            <blockpin signalname="XLXN_22" name="RST" />
            <blockpin signalname="XLXN_14" name="CLK0" />
            <blockpin name="CLK180" />
            <blockpin name="CLK270" />
            <blockpin name="CLK2X" />
            <blockpin name="CLK2X180" />
            <blockpin name="CLK90" />
            <blockpin signalname="clk_new" name="CLKDV" />
            <blockpin signalname="XLXN_16" name="CLKFX" />
            <blockpin name="CLKFX180" />
            <blockpin name="LOCKED" />
            <blockpin name="PSDONE" />
            <blockpin name="STATUS(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="608" y="352" name="XLXI_2" orien="R0" />
        <instance x="608" y="992" name="XLXI_3" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="896" y1="320" y2="320" x1="832" />
            <wire x2="1008" y1="320" y2="320" x1="896" />
            <wire x2="896" y1="320" y2="496" x1="896" />
            <wire x2="1008" y1="496" y2="496" x1="896" />
            <wire x2="896" y1="240" y2="320" x1="896" />
            <wire x2="1472" y1="240" y2="240" x1="896" />
            <wire x2="1472" y1="240" y2="336" x1="1472" />
            <wire x2="1872" y1="336" y2="336" x1="1472" />
        </branch>
        <instance x="1008" y="352" name="XLXI_6" orien="R0" />
        <instance x="1008" y="992" name="XLXI_7" orien="R0" />
        <instance x="288" y="352" name="XLXI_4" orien="R0" />
        <instance x="272" y="992" name="XLXI_5" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="608" y1="320" y2="320" x1="512" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="608" y1="960" y2="960" x1="496" />
        </branch>
        <branch name="CLK_1In">
            <wire x2="288" y1="320" y2="320" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="320" name="CLK_1In" orien="R180" />
        <branch name="CLK_2In">
            <wire x2="272" y1="960" y2="960" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="960" name="CLK_2In" orien="R180" />
        <branch name="CLK_1out">
            <wire x2="1264" y1="320" y2="320" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="320" name="CLK_1out" orien="R0" />
        <branch name="CLK_2out">
            <wire x2="1264" y1="960" y2="960" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="960" name="CLK_2out" orien="R0" />
        <instance x="1744" y="624" name="XLXI_12" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="1872" y1="464" y2="464" x1="1808" />
            <wire x2="1808" y1="464" y2="496" x1="1808" />
        </branch>
        <instance x="2336" y="816" name="XLXI_14" orien="R0" />
        <instance x="1008" y="1136" name="XLXI_15" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="912" y1="960" y2="960" x1="832" />
            <wire x2="1008" y1="960" y2="960" x1="912" />
            <wire x2="912" y1="960" y2="1104" x1="912" />
            <wire x2="1008" y1="1104" y2="1104" x1="912" />
            <wire x2="912" y1="1104" y2="1680" x1="912" />
            <wire x2="976" y1="1680" y2="1680" x1="912" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2336" y1="784" y2="784" x1="2256" />
        </branch>
        <branch name="CLK_Low">
            <wire x2="1264" y1="1104" y2="1104" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="1104" name="CLK_Low" orien="R0" />
        <branch name="CLK_High">
            <wire x2="2592" y1="784" y2="784" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2592" y="784" name="CLK_High" orien="R0" />
        <instance x="1728" y="1344" name="XLXI_16" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="1872" y1="912" y2="912" x1="1792" />
            <wire x2="1792" y1="912" y2="1040" x1="1792" />
            <wire x2="1872" y1="1040" y2="1040" x1="1792" />
            <wire x2="1792" y1="1040" y2="1104" x1="1792" />
            <wire x2="1872" y1="1104" y2="1104" x1="1792" />
            <wire x2="1792" y1="1104" y2="1168" x1="1792" />
            <wire x2="1872" y1="1168" y2="1168" x1="1792" />
            <wire x2="1792" y1="1168" y2="1216" x1="1792" />
        </branch>
        <instance x="1008" y="528" name="XLXI_17" orien="R0" />
        <branch name="CLK_Mid">
            <wire x2="1264" y1="496" y2="496" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="496" name="CLK_Mid" orien="R0" />
        <instance x="800" y="1440" name="XLXI_20" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="864" y1="1440" y2="1616" x1="864" />
            <wire x2="976" y1="1616" y2="1616" x1="864" />
        </branch>
        <instance x="832" y="1968" name="XLXI_19" orien="R0" />
        <branch name="XLXN_26">
            <wire x2="976" y1="1776" y2="1776" x1="896" />
            <wire x2="896" y1="1776" y2="1840" x1="896" />
        </branch>
        <instance x="976" y="1808" name="XLXI_22" orien="R0" />
        <branch name="CLK_IN(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1456" y="1552" type="branch" />
            <wire x2="1456" y1="1552" y2="1552" x1="1360" />
        </branch>
        <instance x="2016" y="2112" name="XLXI_23" orien="R0">
        </instance>
        <branch name="CLK_DAC(11:0)">
            <wire x2="2432" y1="2080" y2="2080" x1="2400" />
        </branch>
        <branch name="CLK_IN(15:4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1968" y="2080" type="branch" />
            <wire x2="2016" y1="2080" y2="2080" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2432" y="2080" name="CLK_DAC(11:0)" orien="R0" />
        <instance x="1776" y="1728" name="XLXI_24" orien="R0" />
        <branch name="F7kHz">
            <wire x2="2032" y1="1696" y2="1696" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1696" name="F7kHz" orien="R0" />
        <branch name="CLK_IN(10)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1664" y="1696" type="branch" />
            <wire x2="1776" y1="1696" y2="1696" x1="1664" />
        </branch>
        <instance x="1776" y="1856" name="XLXI_25" orien="R0" />
        <branch name="CLK_IN(15)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1664" y="1824" type="branch" />
            <wire x2="1776" y1="1824" y2="1824" x1="1664" />
        </branch>
        <branch name="F112Hz">
            <wire x2="2032" y1="1824" y2="1824" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1824" name="F112Hz" orien="R0" />
        <branch name="clk_new">
            <wire x2="2496" y1="720" y2="720" x1="2256" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2320" y1="192" y2="192" x1="1648" />
            <wire x2="2320" y1="192" y2="336" x1="2320" />
            <wire x2="1648" y1="192" y2="400" x1="1648" />
            <wire x2="1872" y1="400" y2="400" x1="1648" />
            <wire x2="2320" y1="336" y2="336" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2496" y="720" name="clk_new" orien="R0" />
        <instance x="1872" y="1296" name="XLXI_26" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKFX_MULTIPLY" x="0" y="-1112" type="instance" />
        </instance>
    </sheet>
</drawing>