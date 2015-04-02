<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="out_bus(0)" />
        <signal name="out_bus(1)" />
        <signal name="out_bus(2)" />
        <signal name="out_bus(3)" />
        <signal name="out_bus(4)" />
        <signal name="out_bus(5)" />
        <signal name="out_bus(6)" />
        <signal name="out_bus(7)" />
        <signal name="out_bus(8)" />
        <signal name="out_bus(9)" />
        <signal name="out_bus(10)" />
        <signal name="out_bus(11)" />
        <signal name="out_bus(12)" />
        <signal name="out_bus(13)" />
        <signal name="out_bus(14)" />
        <signal name="out_bus(15)" />
        <signal name="in_bus(0)" />
        <signal name="in_bus(1)" />
        <signal name="in_bus(2)" />
        <signal name="in_bus(3)" />
        <signal name="in_bus(4)" />
        <signal name="in_bus(5)" />
        <signal name="cs1" />
        <signal name="CLK_ADC_0" />
        <signal name="saw1" />
        <signal name="in_bus(6)" />
        <signal name="in_bus(7)" />
        <signal name="in_bus(9)" />
        <signal name="in_bus(10)" />
        <signal name="in_bus(11)" />
        <signal name="in_bus(12)" />
        <signal name="in_bus(8)" />
        <port polarity="Output" name="out_bus(0)" />
        <port polarity="Output" name="out_bus(1)" />
        <port polarity="Output" name="out_bus(2)" />
        <port polarity="Output" name="out_bus(3)" />
        <port polarity="Output" name="out_bus(4)" />
        <port polarity="Output" name="out_bus(5)" />
        <port polarity="Output" name="out_bus(6)" />
        <port polarity="Output" name="out_bus(7)" />
        <port polarity="Output" name="out_bus(8)" />
        <port polarity="Output" name="out_bus(9)" />
        <port polarity="Output" name="out_bus(10)" />
        <port polarity="Output" name="out_bus(11)" />
        <port polarity="Output" name="out_bus(12)" />
        <port polarity="Output" name="out_bus(13)" />
        <port polarity="Output" name="out_bus(14)" />
        <port polarity="Output" name="out_bus(15)" />
        <port polarity="Input" name="in_bus(0)" />
        <port polarity="Input" name="in_bus(1)" />
        <port polarity="Input" name="in_bus(2)" />
        <port polarity="Input" name="in_bus(3)" />
        <port polarity="Input" name="in_bus(4)" />
        <port polarity="Input" name="in_bus(5)" />
        <port polarity="Input" name="in_bus(6)" />
        <port polarity="Input" name="in_bus(7)" />
        <port polarity="Input" name="in_bus(9)" />
        <port polarity="Input" name="in_bus(10)" />
        <port polarity="Input" name="in_bus(11)" />
        <port polarity="Input" name="in_bus(12)" />
        <port polarity="Input" name="in_bus(8)" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_23">
            <blockpin signalname="cs1" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_24">
            <blockpin signalname="CLK_ADC_0" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_25">
            <blockpin signalname="saw1" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_26">
            <blockpin signalname="in_bus(0)" name="I" />
            <blockpin signalname="out_bus(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_27">
            <blockpin signalname="in_bus(1)" name="I" />
            <blockpin signalname="out_bus(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_28">
            <blockpin signalname="in_bus(2)" name="I" />
            <blockpin signalname="out_bus(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_29">
            <blockpin signalname="in_bus(3)" name="I" />
            <blockpin signalname="out_bus(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_30">
            <blockpin signalname="saw1" name="I" />
            <blockpin signalname="out_bus(15)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_31">
            <blockpin signalname="CLK_ADC_0" name="I" />
            <blockpin signalname="out_bus(14)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_32">
            <blockpin signalname="cs1" name="I" />
            <blockpin signalname="out_bus(13)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_33">
            <blockpin signalname="in_bus(12)" name="I" />
            <blockpin signalname="out_bus(12)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_34">
            <blockpin signalname="in_bus(11)" name="I" />
            <blockpin signalname="out_bus(11)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_35">
            <blockpin signalname="in_bus(10)" name="I" />
            <blockpin signalname="out_bus(10)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_36">
            <blockpin signalname="in_bus(9)" name="I" />
            <blockpin signalname="out_bus(9)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_37">
            <blockpin signalname="in_bus(8)" name="I" />
            <blockpin signalname="out_bus(8)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_38">
            <blockpin signalname="in_bus(7)" name="I" />
            <blockpin signalname="out_bus(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_39">
            <blockpin signalname="in_bus(6)" name="I" />
            <blockpin signalname="out_bus(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_40">
            <blockpin signalname="in_bus(5)" name="I" />
            <blockpin signalname="out_bus(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_41">
            <blockpin signalname="in_bus(4)" name="I" />
            <blockpin signalname="out_bus(4)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="out_bus(0)">
            <wire x2="1584" y1="512" y2="512" x1="1568" />
            <wire x2="1600" y1="512" y2="512" x1="1584" />
        </branch>
        <branch name="out_bus(1)">
            <wire x2="1584" y1="576" y2="576" x1="1568" />
            <wire x2="1600" y1="576" y2="576" x1="1584" />
        </branch>
        <branch name="out_bus(2)">
            <wire x2="1584" y1="640" y2="640" x1="1568" />
            <wire x2="1600" y1="640" y2="640" x1="1584" />
        </branch>
        <branch name="out_bus(3)">
            <wire x2="1584" y1="704" y2="704" x1="1568" />
            <wire x2="1600" y1="704" y2="704" x1="1584" />
        </branch>
        <branch name="out_bus(4)">
            <wire x2="1600" y1="832" y2="832" x1="1568" />
        </branch>
        <branch name="out_bus(5)">
            <wire x2="1600" y1="896" y2="896" x1="1568" />
        </branch>
        <branch name="out_bus(6)">
            <wire x2="1600" y1="960" y2="960" x1="1568" />
        </branch>
        <branch name="out_bus(7)">
            <wire x2="1600" y1="1024" y2="1024" x1="1568" />
        </branch>
        <branch name="out_bus(8)">
            <wire x2="1600" y1="1168" y2="1168" x1="1568" />
        </branch>
        <branch name="out_bus(9)">
            <wire x2="1600" y1="1232" y2="1232" x1="1568" />
        </branch>
        <branch name="out_bus(10)">
            <wire x2="1600" y1="1296" y2="1296" x1="1568" />
        </branch>
        <branch name="out_bus(11)">
            <wire x2="1600" y1="1360" y2="1360" x1="1568" />
        </branch>
        <branch name="out_bus(12)">
            <wire x2="1600" y1="1488" y2="1488" x1="1568" />
        </branch>
        <branch name="out_bus(13)">
            <wire x2="1600" y1="1552" y2="1552" x1="1568" />
        </branch>
        <branch name="out_bus(14)">
            <wire x2="1600" y1="1616" y2="1616" x1="1568" />
        </branch>
        <branch name="out_bus(15)">
            <wire x2="1600" y1="1680" y2="1680" x1="1568" />
        </branch>
        <branch name="in_bus(0)">
            <wire x2="1280" y1="512" y2="512" x1="1264" />
            <wire x2="1344" y1="512" y2="512" x1="1280" />
        </branch>
        <branch name="in_bus(1)">
            <wire x2="1280" y1="576" y2="576" x1="1264" />
            <wire x2="1344" y1="576" y2="576" x1="1280" />
        </branch>
        <branch name="in_bus(2)">
            <wire x2="1280" y1="640" y2="640" x1="1264" />
            <wire x2="1344" y1="640" y2="640" x1="1280" />
        </branch>
        <branch name="in_bus(3)">
            <wire x2="1280" y1="704" y2="704" x1="1264" />
            <wire x2="1344" y1="704" y2="704" x1="1280" />
        </branch>
        <branch name="in_bus(4)">
            <wire x2="1344" y1="832" y2="832" x1="1264" />
        </branch>
        <branch name="in_bus(5)">
            <wire x2="1344" y1="896" y2="896" x1="1264" />
        </branch>
        <branch name="cs1">
            <wire x2="800" y1="1088" y2="1184" x1="800" />
            <wire x2="912" y1="1088" y2="1088" x1="800" />
            <wire x2="912" y1="1088" y2="1552" x1="912" />
            <wire x2="1264" y1="1552" y2="1552" x1="912" />
            <wire x2="1344" y1="1552" y2="1552" x1="1264" />
        </branch>
        <branch name="CLK_ADC_0">
            <wire x2="864" y1="1120" y2="1184" x1="864" />
            <wire x2="944" y1="1120" y2="1120" x1="864" />
            <wire x2="944" y1="1120" y2="1616" x1="944" />
            <wire x2="1264" y1="1616" y2="1616" x1="944" />
            <wire x2="1344" y1="1616" y2="1616" x1="1264" />
        </branch>
        <branch name="saw1">
            <wire x2="464" y1="1104" y2="1104" x1="368" />
            <wire x2="464" y1="1104" y2="1168" x1="464" />
            <wire x2="368" y1="1104" y2="1680" x1="368" />
            <wire x2="1264" y1="1680" y2="1680" x1="368" />
            <wire x2="1344" y1="1680" y2="1680" x1="1264" />
        </branch>
        <branch name="in_bus(6)">
            <wire x2="1328" y1="960" y2="960" x1="1264" />
            <wire x2="1344" y1="960" y2="960" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="1600" y="512" name="out_bus(0)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="576" name="out_bus(1)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="640" name="out_bus(2)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="704" name="out_bus(3)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="832" name="out_bus(4)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="896" name="out_bus(5)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="960" name="out_bus(6)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1024" name="out_bus(7)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1168" name="out_bus(8)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1232" name="out_bus(9)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1296" name="out_bus(10)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1360" name="out_bus(11)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1488" name="out_bus(12)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1552" name="out_bus(13)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1616" name="out_bus(14)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1680" name="out_bus(15)" orien="R0" />
        <instance x="736" y="1312" name="XLXI_23" orien="R0" />
        <instance x="800" y="1312" name="XLXI_24" orien="R0" />
        <iomarker fontsize="28" x="1264" y="512" name="in_bus(0)" orien="R180" />
        <iomarker fontsize="28" x="1264" y="576" name="in_bus(1)" orien="R180" />
        <iomarker fontsize="28" x="1264" y="640" name="in_bus(2)" orien="R180" />
        <iomarker fontsize="28" x="1264" y="704" name="in_bus(3)" orien="R180" />
        <iomarker fontsize="28" x="1264" y="832" name="in_bus(4)" orien="R180" />
        <iomarker fontsize="28" x="1264" y="896" name="in_bus(5)" orien="R180" />
        <instance x="400" y="1296" name="XLXI_25" orien="R0" />
        <branch name="in_bus(7)">
            <wire x2="1328" y1="1024" y2="1024" x1="1264" />
            <wire x2="1344" y1="1024" y2="1024" x1="1328" />
        </branch>
        <branch name="in_bus(8)">
            <wire x2="1328" y1="1168" y2="1168" x1="1232" />
            <wire x2="1344" y1="1168" y2="1168" x1="1328" />
        </branch>
        <branch name="in_bus(9)">
            <wire x2="1328" y1="1232" y2="1232" x1="1232" />
            <wire x2="1344" y1="1232" y2="1232" x1="1328" />
        </branch>
        <branch name="in_bus(10)">
            <wire x2="1344" y1="1296" y2="1296" x1="1248" />
        </branch>
        <branch name="in_bus(11)">
            <wire x2="1344" y1="1360" y2="1360" x1="1248" />
        </branch>
        <branch name="in_bus(12)">
            <wire x2="1344" y1="1488" y2="1488" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1248" y="1296" name="in_bus(10)" orien="R180" />
        <iomarker fontsize="28" x="1248" y="1360" name="in_bus(11)" orien="R180" />
        <iomarker fontsize="28" x="1248" y="1488" name="in_bus(12)" orien="R180" />
        <iomarker fontsize="28" x="1232" y="1232" name="in_bus(9)" orien="R180" />
        <iomarker fontsize="28" x="1232" y="1168" name="in_bus(8)" orien="R180" />
        <iomarker fontsize="28" x="1264" y="1024" name="in_bus(7)" orien="R180" />
        <iomarker fontsize="28" x="1264" y="960" name="in_bus(6)" orien="R180" />
        <instance x="1344" y="544" name="XLXI_26" orien="R0" />
        <instance x="1344" y="608" name="XLXI_27" orien="R0" />
        <instance x="1344" y="672" name="XLXI_28" orien="R0" />
        <instance x="1344" y="736" name="XLXI_29" orien="R0" />
        <instance x="1344" y="1712" name="XLXI_30" orien="R0" />
        <instance x="1344" y="1648" name="XLXI_31" orien="R0" />
        <instance x="1344" y="1584" name="XLXI_32" orien="R0" />
        <instance x="1344" y="1520" name="XLXI_33" orien="R0" />
        <instance x="1344" y="1392" name="XLXI_34" orien="R0" />
        <instance x="1344" y="1328" name="XLXI_35" orien="R0" />
        <instance x="1344" y="1264" name="XLXI_36" orien="R0" />
        <instance x="1344" y="1200" name="XLXI_37" orien="R0" />
        <instance x="1344" y="1056" name="XLXI_38" orien="R0" />
        <instance x="1344" y="992" name="XLXI_39" orien="R0" />
        <instance x="1344" y="928" name="XLXI_40" orien="R0" />
        <instance x="1344" y="864" name="XLXI_41" orien="R0" />
    </sheet>
</drawing>