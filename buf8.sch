<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="d_out(0)">
        </signal>
        <signal name="d_in(0)">
        </signal>
        <signal name="d_in(1)">
        </signal>
        <signal name="d_out(1)">
        </signal>
        <signal name="d_out(2)">
        </signal>
        <signal name="d_out(3)">
        </signal>
        <signal name="d_in(3)">
        </signal>
        <signal name="d_in(2)">
        </signal>
        <signal name="d_in(4)">
        </signal>
        <signal name="d_out(4)">
        </signal>
        <signal name="d_out(5)">
        </signal>
        <signal name="d_out(6)">
        </signal>
        <signal name="d_in(6)">
        </signal>
        <signal name="d_in(5)">
        </signal>
        <signal name="d_in(7)">
        </signal>
        <signal name="d_out(7)">
        </signal>
        <signal name="d_in(7:0)" />
        <signal name="d_out(7:0)" />
        <port polarity="Input" name="d_in(7:0)" />
        <port polarity="Output" name="d_out(7:0)" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="buf" name="XLXI_1">
            <blockpin signalname="d_in(0)" name="I" />
            <blockpin signalname="d_out(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_2">
            <blockpin signalname="d_in(1)" name="I" />
            <blockpin signalname="d_out(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="d_in(2)" name="I" />
            <blockpin signalname="d_out(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="d_in(3)" name="I" />
            <blockpin signalname="d_out(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="d_in(4)" name="I" />
            <blockpin signalname="d_out(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="d_in(5)" name="I" />
            <blockpin signalname="d_out(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="d_in(6)" name="I" />
            <blockpin signalname="d_out(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="d_in(7)" name="I" />
            <blockpin signalname="d_out(7)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="d_out(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="624" type="branch" />
            <wire x2="1152" y1="624" y2="624" x1="960" />
            <wire x2="1168" y1="624" y2="624" x1="1152" />
        </branch>
        <instance x="736" y="656" name="XLXI_1" orien="R0" />
        <branch name="d_in(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="624" type="branch" />
            <wire x2="720" y1="624" y2="624" x1="624" />
            <wire x2="736" y1="624" y2="624" x1="720" />
        </branch>
        <instance x="736" y="720" name="XLXI_2" orien="R0" />
        <instance x="736" y="784" name="XLXI_3" orien="R0" />
        <instance x="736" y="848" name="XLXI_4" orien="R0" />
        <branch name="d_in(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="688" y="688" type="branch" />
            <wire x2="688" y1="688" y2="688" x1="672" />
            <wire x2="736" y1="688" y2="688" x1="688" />
        </branch>
        <branch name="d_out(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="688" type="branch" />
            <wire x2="1008" y1="688" y2="688" x1="960" />
            <wire x2="1024" y1="688" y2="688" x1="1008" />
        </branch>
        <branch name="d_out(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="752" type="branch" />
            <wire x2="992" y1="752" y2="752" x1="960" />
            <wire x2="1024" y1="752" y2="752" x1="992" />
        </branch>
        <branch name="d_out(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="816" type="branch" />
            <wire x2="992" y1="816" y2="816" x1="960" />
            <wire x2="1024" y1="816" y2="816" x1="992" />
        </branch>
        <branch name="d_in(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="688" y="816" type="branch" />
            <wire x2="688" y1="816" y2="816" x1="672" />
            <wire x2="736" y1="816" y2="816" x1="688" />
        </branch>
        <branch name="d_in(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="688" y="752" type="branch" />
            <wire x2="688" y1="752" y2="752" x1="672" />
            <wire x2="736" y1="752" y2="752" x1="688" />
        </branch>
        <instance x="736" y="912" name="XLXI_9" orien="R0" />
        <instance x="736" y="976" name="XLXI_10" orien="R0" />
        <instance x="736" y="1040" name="XLXI_11" orien="R0" />
        <branch name="d_in(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="704" y="880" type="branch" />
            <wire x2="704" y1="880" y2="880" x1="672" />
            <wire x2="736" y1="880" y2="880" x1="704" />
        </branch>
        <branch name="d_out(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="880" type="branch" />
            <wire x2="1008" y1="880" y2="880" x1="960" />
            <wire x2="1024" y1="880" y2="880" x1="1008" />
        </branch>
        <branch name="d_out(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="944" type="branch" />
            <wire x2="1008" y1="944" y2="944" x1="960" />
            <wire x2="1024" y1="944" y2="944" x1="1008" />
        </branch>
        <branch name="d_out(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1008" type="branch" />
            <wire x2="1008" y1="1008" y2="1008" x1="960" />
            <wire x2="1024" y1="1008" y2="1008" x1="1008" />
        </branch>
        <branch name="d_in(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="688" y="1008" type="branch" />
            <wire x2="688" y1="1008" y2="1008" x1="672" />
            <wire x2="736" y1="1008" y2="1008" x1="688" />
        </branch>
        <branch name="d_in(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="704" y="944" type="branch" />
            <wire x2="704" y1="944" y2="944" x1="672" />
            <wire x2="736" y1="944" y2="944" x1="704" />
        </branch>
        <instance x="736" y="1104" name="XLXI_12" orien="R0" />
        <branch name="d_in(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="688" y="1072" type="branch" />
            <wire x2="688" y1="1072" y2="1072" x1="672" />
            <wire x2="736" y1="1072" y2="1072" x1="688" />
        </branch>
        <branch name="d_out(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1072" type="branch" />
            <wire x2="1008" y1="1072" y2="1072" x1="960" />
            <wire x2="1024" y1="1072" y2="1072" x1="1008" />
        </branch>
        <branch name="d_in(7:0)">
            <wire x2="432" y1="512" y2="512" x1="304" />
        </branch>
        <branch name="d_out(7:0)">
            <wire x2="1440" y1="512" y2="512" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="304" y="512" name="d_in(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1440" y="512" name="d_out(7:0)" orien="R0" />
    </sheet>
</drawing>