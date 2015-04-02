<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK80" />
        <signal name="PORT_ID(3)" />
        <signal name="PORT_ID(4)" />
        <signal name="PORT_ID(5)" />
        <signal name="PORT_ID(6)" />
        <signal name="PORT_ID(7)" />
        <signal name="PORT_ID(1)" />
        <signal name="PORT_ID(0)" />
        <signal name="PORT_ID(2)" />
        <signal name="pb_data_in(7:0)" />
        <signal name="addra_curr0(7:0)" />
        <signal name="addra_curr1(7:0)" />
        <signal name="pb_rd" />
        <signal name="enable1" />
        <signal name="enable0" />
        <signal name="present_curr_addr" />
        <signal name="PORT_ID(7:0)" />
        <signal name="XLXN_139" />
        <signal name="XLXN_140" />
        <signal name="XLXN_149" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_114" />
        <signal name="XLXN_124" />
        <signal name="addra_curr1_dellayed(7:0)" />
        <signal name="XLXN_269" />
        <signal name="XLXN_270" />
        <signal name="XLXN_279" />
        <signal name="enable2" />
        <signal name="XLXN_282" />
        <signal name="XLXN_283" />
        <signal name="XLXN_292" />
        <signal name="enable3" />
        <signal name="curr_wr_lsb(7:0)" />
        <signal name="curr_wr_msb(7:0)" />
        <signal name="XLXN_301" />
        <signal name="curr_wr_msb_delayed(7:0)" />
        <signal name="mem_overflow_reset" />
        <signal name="XLXN_303" />
        <port polarity="Input" name="CLK80" />
        <port polarity="Output" name="pb_data_in(7:0)" />
        <port polarity="Input" name="addra_curr0(7:0)" />
        <port polarity="Input" name="addra_curr1(7:0)" />
        <port polarity="Input" name="pb_rd" />
        <port polarity="Output" name="present_curr_addr" />
        <port polarity="Input" name="PORT_ID(7:0)" />
        <port polarity="Input" name="curr_wr_lsb(7:0)" />
        <port polarity="Input" name="curr_wr_msb(7:0)" />
        <port polarity="Output" name="mem_overflow_reset" />
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
        <blockdef name="and4b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
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
        <blockdef name="IMux4x1x8">
            <timestamp>2006-4-12T8:57:50</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
        </blockdef>
        <blockdef name="fd8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
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
        <block symbolname="and4" name="XLXI_35">
            <blockpin signalname="PORT_ID(7)" name="I0" />
            <blockpin signalname="PORT_ID(6)" name="I1" />
            <blockpin signalname="PORT_ID(5)" name="I2" />
            <blockpin signalname="PORT_ID(4)" name="I3" />
            <blockpin signalname="XLXN_140" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_37">
            <blockpin signalname="XLXN_140" name="I0" />
            <blockpin signalname="XLXN_139" name="I1" />
            <blockpin signalname="XLXN_149" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_38">
            <blockpin signalname="XLXN_149" name="I0" />
            <blockpin signalname="pb_rd" name="I1" />
            <blockpin signalname="enable1" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_39">
            <blockpin signalname="PORT_ID(3)" name="I0" />
            <blockpin signalname="PORT_ID(2)" name="I1" />
            <blockpin signalname="PORT_ID(1)" name="I2" />
            <blockpin signalname="PORT_ID(0)" name="I3" />
            <blockpin signalname="XLXN_139" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_5">
            <blockpin signalname="PORT_ID(7)" name="I0" />
            <blockpin signalname="PORT_ID(6)" name="I1" />
            <blockpin signalname="PORT_ID(5)" name="I2" />
            <blockpin signalname="PORT_ID(4)" name="I3" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_6">
            <blockpin signalname="PORT_ID(3)" name="I0" />
            <blockpin signalname="PORT_ID(0)" name="I1" />
            <blockpin signalname="PORT_ID(1)" name="I2" />
            <blockpin signalname="PORT_ID(2)" name="I3" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="XLXN_114" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="XLXN_114" name="I0" />
            <blockpin signalname="pb_rd" name="I1" />
            <blockpin signalname="enable0" name="O" />
        </block>
        <block symbolname="IMux4x1x8" name="XLXI_26">
            <blockpin signalname="addra_curr0(7:0)" name="InData0(7:0)" />
            <blockpin signalname="addra_curr1_dellayed(7:0)" name="InData1(7:0)" />
            <blockpin signalname="curr_wr_lsb(7:0)" name="InData2(7:0)" />
            <blockpin signalname="curr_wr_msb_delayed(7:0)" name="InData3(7:0)" />
            <blockpin signalname="enable3" name="Present3" />
            <blockpin signalname="enable2" name="Present2" />
            <blockpin signalname="enable1" name="Present1" />
            <blockpin signalname="enable0" name="Present0" />
            <blockpin signalname="pb_data_in(7:0)" name="OutData(7:0)" />
            <blockpin signalname="present_curr_addr" name="Present" />
        </block>
        <block symbolname="fd8ce" name="XLXI_27">
            <blockpin signalname="CLK80" name="C" />
            <blockpin signalname="enable0" name="CE" />
            <blockpin signalname="XLXN_124" name="CLR" />
            <blockpin signalname="addra_curr1(7:0)" name="D(7:0)" />
            <blockpin signalname="addra_curr1_dellayed(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_28">
            <blockpin signalname="XLXN_124" name="G" />
        </block>
        <block symbolname="and4" name="XLXI_83">
            <blockpin signalname="PORT_ID(7)" name="I0" />
            <blockpin signalname="PORT_ID(6)" name="I1" />
            <blockpin signalname="PORT_ID(5)" name="I2" />
            <blockpin signalname="PORT_ID(4)" name="I3" />
            <blockpin signalname="XLXN_270" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_85">
            <blockpin signalname="XLXN_270" name="I0" />
            <blockpin signalname="XLXN_269" name="I1" />
            <blockpin signalname="XLXN_279" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_86">
            <blockpin signalname="XLXN_279" name="I0" />
            <blockpin signalname="pb_rd" name="I1" />
            <blockpin signalname="enable2" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_87">
            <blockpin signalname="PORT_ID(7)" name="I0" />
            <blockpin signalname="PORT_ID(6)" name="I1" />
            <blockpin signalname="PORT_ID(5)" name="I2" />
            <blockpin signalname="PORT_ID(4)" name="I3" />
            <blockpin signalname="XLXN_283" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_88">
            <blockpin signalname="PORT_ID(1)" name="I0" />
            <blockpin signalname="PORT_ID(2)" name="I1" />
            <blockpin signalname="PORT_ID(3)" name="I2" />
            <blockpin signalname="PORT_ID(0)" name="I3" />
            <blockpin signalname="XLXN_282" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_89">
            <blockpin signalname="XLXN_283" name="I0" />
            <blockpin signalname="XLXN_282" name="I1" />
            <blockpin signalname="XLXN_292" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_90">
            <blockpin signalname="XLXN_292" name="I0" />
            <blockpin signalname="pb_rd" name="I1" />
            <blockpin signalname="enable3" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_92">
            <blockpin signalname="PORT_ID(0)" name="I0" />
            <blockpin signalname="PORT_ID(1)" name="I1" />
            <blockpin signalname="PORT_ID(2)" name="I2" />
            <blockpin signalname="PORT_ID(3)" name="I3" />
            <blockpin signalname="XLXN_269" name="O" />
        </block>
        <block symbolname="fd8ce" name="XLXI_93">
            <blockpin signalname="CLK80" name="C" />
            <blockpin signalname="enable2" name="CE" />
            <blockpin signalname="XLXN_301" name="CLR" />
            <blockpin signalname="curr_wr_msb(7:0)" name="D(7:0)" />
            <blockpin signalname="curr_wr_msb_delayed(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_94">
            <blockpin signalname="XLXN_301" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_95">
            <blockpin signalname="enable3" name="I" />
            <blockpin signalname="mem_overflow_reset" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="present_curr_addr">
            <wire x2="3264" y1="128" y2="128" x1="3104" />
        </branch>
        <branch name="pb_data_in(7:0)">
            <wire x2="3264" y1="64" y2="64" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3264" y="128" name="present_curr_addr" orien="R0" />
        <iomarker fontsize="28" x="3264" y="64" name="pb_data_in(7:0)" orien="R0" />
        <branch name="CLK80">
            <wire x2="368" y1="80" y2="80" x1="272" />
            <wire x2="496" y1="80" y2="80" x1="368" />
        </branch>
        <branch name="PORT_ID(7:0)">
            <wire x2="416" y1="128" y2="128" x1="288" />
            <wire x2="496" y1="128" y2="128" x1="416" />
        </branch>
        <branch name="pb_rd">
            <wire x2="384" y1="224" y2="224" x1="256" />
            <wire x2="496" y1="224" y2="224" x1="384" />
        </branch>
        <branch name="addra_curr0(7:0)">
            <wire x2="352" y1="272" y2="272" x1="288" />
            <wire x2="496" y1="272" y2="272" x1="352" />
        </branch>
        <branch name="addra_curr1(7:0)">
            <wire x2="352" y1="320" y2="320" x1="288" />
            <wire x2="496" y1="320" y2="320" x1="352" />
        </branch>
        <iomarker fontsize="28" x="288" y="128" name="PORT_ID(7:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="272" name="addra_curr0(7:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="320" name="addra_curr1(7:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="224" name="pb_rd" orien="R180" />
        <iomarker fontsize="28" x="272" y="80" name="CLK80" orien="R180" />
        <instance x="2176" y="768" name="XLXI_35" orien="R0" />
        <branch name="XLXN_139">
            <wire x2="2448" y1="368" y2="368" x1="2432" />
            <wire x2="2448" y1="368" y2="464" x1="2448" />
            <wire x2="2480" y1="464" y2="464" x1="2448" />
        </branch>
        <branch name="XLXN_140">
            <wire x2="2448" y1="608" y2="608" x1="2432" />
            <wire x2="2448" y1="528" y2="608" x1="2448" />
            <wire x2="2480" y1="528" y2="528" x1="2448" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="400" type="branch" />
            <wire x2="2176" y1="400" y2="400" x1="2032" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="464" type="branch" />
            <wire x2="2176" y1="464" y2="464" x1="2032" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="512" type="branch" />
            <wire x2="2176" y1="512" y2="512" x1="2032" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="576" type="branch" />
            <wire x2="2176" y1="576" y2="576" x1="2016" />
        </branch>
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="640" type="branch" />
            <wire x2="2176" y1="640" y2="640" x1="2016" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="704" type="branch" />
            <wire x2="2176" y1="704" y2="704" x1="2016" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="336" type="branch" />
            <wire x2="2176" y1="336" y2="336" x1="2032" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="272" type="branch" />
            <wire x2="2176" y1="272" y2="272" x1="2032" />
        </branch>
        <branch name="XLXN_149">
            <wire x2="2800" y1="496" y2="496" x1="2736" />
        </branch>
        <branch name="pb_rd">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2768" y="432" type="branch" />
            <wire x2="2800" y1="432" y2="432" x1="2768" />
        </branch>
        <branch name="enable1">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3120" y="464" type="branch" />
            <wire x2="3120" y1="464" y2="464" x1="3056" />
        </branch>
        <instance x="2480" y="592" name="XLXI_37" orien="R0" />
        <instance x="2800" y="560" name="XLXI_38" orien="R0" />
        <instance x="2176" y="528" name="XLXI_39" orien="R0" />
        <text style="fontsize:35;fontname:Arial;textcolor:rgb(255,0,255)" x="2500" y="392">PORT_F7</text>
        <instance x="2176" y="1312" name="XLXI_5" orien="R0" />
        <instance x="2176" y="1072" name="XLXI_6" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="2448" y1="912" y2="912" x1="2432" />
            <wire x2="2448" y1="912" y2="1008" x1="2448" />
            <wire x2="2480" y1="1008" y2="1008" x1="2448" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="2448" y1="1152" y2="1152" x1="2432" />
            <wire x2="2448" y1="1072" y2="1152" x1="2448" />
            <wire x2="2480" y1="1072" y2="1072" x1="2448" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="944" type="branch" />
            <wire x2="2176" y1="944" y2="944" x1="2032" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="1008" type="branch" />
            <wire x2="2176" y1="1008" y2="1008" x1="2032" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="1056" type="branch" />
            <wire x2="2176" y1="1056" y2="1056" x1="2032" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="1120" type="branch" />
            <wire x2="2176" y1="1120" y2="1120" x1="2016" />
        </branch>
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="1184" type="branch" />
            <wire x2="2176" y1="1184" y2="1184" x1="2016" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="1248" type="branch" />
            <wire x2="2176" y1="1248" y2="1248" x1="2016" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="880" type="branch" />
            <wire x2="2176" y1="880" y2="880" x1="2032" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="816" type="branch" />
            <wire x2="2176" y1="816" y2="816" x1="2032" />
        </branch>
        <branch name="XLXN_114">
            <wire x2="2800" y1="1040" y2="1040" x1="2736" />
        </branch>
        <branch name="pb_rd">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2768" y="976" type="branch" />
            <wire x2="2800" y1="976" y2="976" x1="2768" />
        </branch>
        <branch name="enable0">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3120" y="1008" type="branch" />
            <wire x2="3120" y1="1008" y2="1008" x1="3056" />
        </branch>
        <instance x="2480" y="1136" name="XLXI_7" orien="R0" />
        <instance x="2800" y="1104" name="XLXI_24" orien="R0" />
        <text style="fontsize:35;fontname:Arial;textcolor:rgb(255,0,255)" x="2508" y="1172">PORT_F6</text>
        <instance x="464" y="1152" name="XLXI_26" orien="R0">
        </instance>
        <branch name="addra_curr0(7:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="304" y="672" type="branch" />
            <wire x2="464" y1="672" y2="672" x1="304" />
        </branch>
        <branch name="enable0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="304" y="736" type="branch" />
            <wire x2="464" y1="736" y2="736" x1="304" />
        </branch>
        <branch name="addra_curr1(7:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="256" y="1424" type="branch" />
            <wire x2="464" y1="1424" y2="1424" x1="256" />
        </branch>
        <branch name="CLK80">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="384" y="1552" type="branch" />
            <wire x2="400" y1="1552" y2="1552" x1="384" />
            <wire x2="464" y1="1552" y2="1552" x1="400" />
        </branch>
        <branch name="XLXN_124">
            <wire x2="464" y1="1648" y2="1664" x1="464" />
        </branch>
        <branch name="enable0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="352" y="1488" type="branch" />
            <wire x2="368" y1="1488" y2="1488" x1="352" />
            <wire x2="464" y1="1488" y2="1488" x1="368" />
        </branch>
        <instance x="464" y="1680" name="XLXI_27" orien="R0" />
        <branch name="addra_curr1_dellayed(7:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="976" y="1424" type="branch" />
            <wire x2="976" y1="1424" y2="1424" x1="848" />
        </branch>
        <instance x="400" y="1792" name="XLXI_28" orien="R0" />
        <branch name="pb_data_in(7:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="960" y="672" type="branch" />
            <wire x2="960" y1="672" y2="672" x1="848" />
        </branch>
        <branch name="addra_curr1_dellayed(7:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="288" y="800" type="branch" />
            <wire x2="464" y1="800" y2="800" x1="288" />
        </branch>
        <branch name="enable1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="288" y="864" type="branch" />
            <wire x2="464" y1="864" y2="864" x1="288" />
        </branch>
        <branch name="present_curr_addr">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="960" y="736" type="branch" />
            <wire x2="864" y1="736" y2="736" x1="848" />
            <wire x2="960" y1="736" y2="736" x1="864" />
        </branch>
        <branch name="enable2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="336" y="992" type="branch" />
            <wire x2="464" y1="992" y2="992" x1="336" />
        </branch>
        <branch name="enable3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="336" y="1120" type="branch" />
            <wire x2="448" y1="1120" y2="1120" x1="336" />
            <wire x2="464" y1="1120" y2="1120" x1="448" />
        </branch>
        <instance x="2176" y="1904" name="XLXI_83" orien="R0" />
        <branch name="XLXN_269">
            <wire x2="2448" y1="1504" y2="1504" x1="2432" />
            <wire x2="2448" y1="1504" y2="1600" x1="2448" />
            <wire x2="2480" y1="1600" y2="1600" x1="2448" />
        </branch>
        <branch name="XLXN_270">
            <wire x2="2448" y1="1744" y2="1744" x1="2432" />
            <wire x2="2448" y1="1664" y2="1744" x1="2448" />
            <wire x2="2480" y1="1664" y2="1664" x1="2448" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="1536" type="branch" />
            <wire x2="2176" y1="1536" y2="1536" x1="2032" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="1600" type="branch" />
            <wire x2="2176" y1="1600" y2="1600" x1="2032" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="1648" type="branch" />
            <wire x2="2176" y1="1648" y2="1648" x1="2032" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="1712" type="branch" />
            <wire x2="2176" y1="1712" y2="1712" x1="2016" />
        </branch>
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="1776" type="branch" />
            <wire x2="2176" y1="1776" y2="1776" x1="2016" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="1840" type="branch" />
            <wire x2="2176" y1="1840" y2="1840" x1="2016" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="1472" type="branch" />
            <wire x2="2176" y1="1472" y2="1472" x1="2032" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="1408" type="branch" />
            <wire x2="2176" y1="1408" y2="1408" x1="2032" />
        </branch>
        <branch name="XLXN_279">
            <wire x2="2800" y1="1632" y2="1632" x1="2736" />
        </branch>
        <branch name="pb_rd">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2768" y="1568" type="branch" />
            <wire x2="2800" y1="1568" y2="1568" x1="2768" />
        </branch>
        <branch name="enable2">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3120" y="1600" type="branch" />
            <wire x2="3120" y1="1600" y2="1600" x1="3056" />
        </branch>
        <instance x="2480" y="1728" name="XLXI_85" orien="R0" />
        <instance x="2800" y="1696" name="XLXI_86" orien="R0" />
        <text style="fontsize:35;fontname:Arial;textcolor:rgb(255,0,255)" x="2508" y="1764">PORT_F8</text>
        <instance x="2192" y="2496" name="XLXI_87" orien="R0" />
        <instance x="2192" y="2256" name="XLXI_88" orien="R0" />
        <branch name="XLXN_282">
            <wire x2="2464" y1="2096" y2="2096" x1="2448" />
            <wire x2="2464" y1="2096" y2="2192" x1="2464" />
            <wire x2="2496" y1="2192" y2="2192" x1="2464" />
        </branch>
        <branch name="XLXN_283">
            <wire x2="2464" y1="2336" y2="2336" x1="2448" />
            <wire x2="2464" y1="2256" y2="2336" x1="2464" />
            <wire x2="2496" y1="2256" y2="2256" x1="2464" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2048" y="2128" type="branch" />
            <wire x2="2192" y1="2128" y2="2128" x1="2048" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2048" y="2192" type="branch" />
            <wire x2="2192" y1="2192" y2="2192" x1="2048" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2048" y="2240" type="branch" />
            <wire x2="2192" y1="2240" y2="2240" x1="2048" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="2304" type="branch" />
            <wire x2="2192" y1="2304" y2="2304" x1="2032" />
        </branch>
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="2368" type="branch" />
            <wire x2="2192" y1="2368" y2="2368" x1="2032" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2032" y="2432" type="branch" />
            <wire x2="2192" y1="2432" y2="2432" x1="2032" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2048" y="2064" type="branch" />
            <wire x2="2192" y1="2064" y2="2064" x1="2048" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2048" y="2000" type="branch" />
            <wire x2="2192" y1="2000" y2="2000" x1="2048" />
        </branch>
        <branch name="XLXN_292">
            <wire x2="2816" y1="2224" y2="2224" x1="2752" />
        </branch>
        <branch name="pb_rd">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2784" y="2160" type="branch" />
            <wire x2="2816" y1="2160" y2="2160" x1="2784" />
        </branch>
        <branch name="enable3">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3120" y="2192" type="branch" />
            <wire x2="3120" y1="2192" y2="2192" x1="3072" />
            <wire x2="3152" y1="2192" y2="2192" x1="3120" />
        </branch>
        <instance x="2496" y="2320" name="XLXI_89" orien="R0" />
        <instance x="2816" y="2288" name="XLXI_90" orien="R0" />
        <text style="fontsize:35;fontname:Arial;textcolor:rgb(255,0,255)" x="2524" y="2356">PORT_F9</text>
        <instance x="2176" y="1664" name="XLXI_92" orien="R0" />
        <branch name="curr_wr_lsb(7:0)">
            <wire x2="496" y1="384" y2="384" x1="288" />
        </branch>
        <branch name="curr_wr_msb(7:0)">
            <wire x2="496" y1="432" y2="432" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="384" name="curr_wr_lsb(7:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="432" name="curr_wr_msb(7:0)" orien="R180" />
        <branch name="curr_wr_lsb(7:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="336" y="928" type="branch" />
            <wire x2="464" y1="928" y2="928" x1="336" />
        </branch>
        <branch name="curr_wr_msb_delayed(7:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="336" y="1056" type="branch" />
            <wire x2="464" y1="1056" y2="1056" x1="336" />
        </branch>
        <branch name="curr_wr_msb(7:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="272" y="1888" type="branch" />
            <wire x2="480" y1="1888" y2="1888" x1="272" />
        </branch>
        <branch name="CLK80">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="400" y="2016" type="branch" />
            <wire x2="416" y1="2016" y2="2016" x1="400" />
            <wire x2="480" y1="2016" y2="2016" x1="416" />
        </branch>
        <branch name="XLXN_301">
            <wire x2="480" y1="2112" y2="2128" x1="480" />
        </branch>
        <branch name="enable2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="368" y="1952" type="branch" />
            <wire x2="384" y1="1952" y2="1952" x1="368" />
            <wire x2="480" y1="1952" y2="1952" x1="384" />
        </branch>
        <instance x="480" y="2144" name="XLXI_93" orien="R0" />
        <branch name="curr_wr_msb_delayed(7:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="992" y="1888" type="branch" />
            <wire x2="992" y1="1888" y2="1888" x1="864" />
        </branch>
        <instance x="416" y="2256" name="XLXI_94" orien="R0" />
        <instance x="3152" y="2224" name="XLXI_95" orien="R0" />
        <branch name="mem_overflow_reset">
            <wire x2="3104" y1="2304" y2="2400" x1="3104" />
            <wire x2="3184" y1="2400" y2="2400" x1="3104" />
            <wire x2="3392" y1="2304" y2="2304" x1="3104" />
            <wire x2="3392" y1="2192" y2="2192" x1="3376" />
            <wire x2="3392" y1="2192" y2="2304" x1="3392" />
        </branch>
        <iomarker fontsize="28" x="3184" y="2400" name="mem_overflow_reset" orien="R0" />
    </sheet>
</drawing>