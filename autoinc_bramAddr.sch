<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK80" />
        <signal name="PORT_ID(2)" />
        <signal name="PORT_ID(3)" />
        <signal name="PORT_ID(4)" />
        <signal name="PORT_ID(5)" />
        <signal name="PORT_ID(6)" />
        <signal name="PORT_ID(7)" />
        <signal name="PORT_ID(1)" />
        <signal name="PORT_ID(0)" />
        <signal name="XLXN_75" />
        <signal name="XLXN_77" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="pb_wr" />
        <signal name="XLXN_114" />
        <signal name="count_enable" />
        <signal name="curr_rd_addr(15:0)" />
        <signal name="PORT_ID(7:0)" />
        <signal name="pb_rd" />
        <signal name="addr_start(7:0)" />
        <signal name="curr_rd_addr(7:0)" />
        <signal name="XLXN_155" />
        <signal name="XLXN_170" />
        <signal name="XLXN_171" />
        <signal name="XLXN_180" />
        <signal name="load_enable1" />
        <signal name="load_enable0" />
        <signal name="bram_wr_en" />
        <signal name="b_wr_en" />
        <signal name="curr_rd_addr_raw(0)" />
        <signal name="curr_rd_addr(8)" />
        <signal name="curr_rd_addr(9)" />
        <signal name="curr_rd_addr(10)" />
        <signal name="curr_rd_addr(11)" />
        <signal name="curr_rd_addr(12)" />
        <signal name="curr_rd_addr_raw(4)" />
        <signal name="curr_rd_addr_raw(3)" />
        <signal name="curr_rd_addr_raw(2)" />
        <signal name="curr_rd_addr_raw(1)" />
        <signal name="XLXN_182" />
        <signal name="XLXN_192" />
        <signal name="br_rd_p" />
        <signal name="curr_rd_addr(13)" />
        <signal name="curr_rd_addr_raw(5)" />
        <signal name="XLXN_199" />
        <signal name="XLXN_200" />
        <signal name="XLXN_209" />
        <signal name="comand_bus_present" />
        <signal name="addr_start(0)" />
        <signal name="pointers_reset" />
        <signal name="pointers_reset_sync" />
        <signal name="debug" />
        <signal name="curr_rd_addr_raw(7:0)" />
        <signal name="curr_rd_addr(15)" />
        <signal name="curr_rd_addr(14)" />
        <signal name="curr_rd_addr_raw(7)" />
        <signal name="curr_rd_addr_raw(6)" />
        <port polarity="Input" name="CLK80" />
        <port polarity="Input" name="pb_wr" />
        <port polarity="Output" name="curr_rd_addr(15:0)" />
        <port polarity="Input" name="PORT_ID(7:0)" />
        <port polarity="Input" name="pb_rd" />
        <port polarity="Input" name="addr_start(7:0)" />
        <port polarity="Output" name="b_wr_en" />
        <port polarity="Output" name="br_rd_p" />
        <port polarity="Output" name="debug" />
        <blockdef name="cb8cle">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-448" height="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <rect width="64" x="0" y="-396" height="24" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-396" height="24" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="XLXN_77" name="I0" />
            <blockpin signalname="XLXN_75" name="I1" />
            <blockpin signalname="XLXN_182" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_16">
            <blockpin signalname="PORT_ID(7)" name="I0" />
            <blockpin signalname="PORT_ID(6)" name="I1" />
            <blockpin signalname="PORT_ID(5)" name="I2" />
            <blockpin signalname="PORT_ID(4)" name="I3" />
            <blockpin signalname="XLXN_77" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_17">
            <blockpin signalname="PORT_ID(3)" name="I0" />
            <blockpin signalname="PORT_ID(1)" name="I1" />
            <blockpin signalname="PORT_ID(0)" name="I2" />
            <blockpin signalname="PORT_ID(2)" name="I3" />
            <blockpin signalname="XLXN_75" name="O" />
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
            <blockpin signalname="PORT_ID(2)" name="I1" />
            <blockpin signalname="PORT_ID(1)" name="I2" />
            <blockpin signalname="PORT_ID(0)" name="I3" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="XLXN_114" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="XLXN_114" name="I0" />
            <blockpin signalname="pb_wr" name="I1" />
            <blockpin signalname="load_enable0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_25">
            <blockpin signalname="XLXN_182" name="I0" />
            <blockpin signalname="pb_wr" name="I1" />
            <blockpin signalname="bram_wr_en" name="O" />
        </block>
        <block symbolname="cb8cle" name="XLXI_3">
            <blockpin signalname="CLK80" name="C" />
            <blockpin signalname="XLXN_155" name="CE" />
            <blockpin signalname="pointers_reset_sync" name="CLR" />
            <blockpin signalname="addr_start(7:0)" name="D(7:0)" />
            <blockpin signalname="load_enable1" name="L" />
            <blockpin name="CEO" />
            <blockpin signalname="curr_rd_addr_raw(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="and4" name="XLXI_34">
            <blockpin signalname="PORT_ID(7)" name="I0" />
            <blockpin signalname="PORT_ID(6)" name="I1" />
            <blockpin signalname="PORT_ID(5)" name="I2" />
            <blockpin signalname="PORT_ID(4)" name="I3" />
            <blockpin signalname="XLXN_171" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_36">
            <blockpin signalname="XLXN_171" name="I0" />
            <blockpin signalname="XLXN_170" name="I1" />
            <blockpin signalname="XLXN_180" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_37">
            <blockpin signalname="XLXN_180" name="I0" />
            <blockpin signalname="pb_wr" name="I1" />
            <blockpin signalname="load_enable1" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_38">
            <blockpin signalname="PORT_ID(3)" name="I0" />
            <blockpin signalname="PORT_ID(1)" name="I1" />
            <blockpin signalname="PORT_ID(0)" name="I2" />
            <blockpin signalname="PORT_ID(2)" name="I3" />
            <blockpin signalname="XLXN_170" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_42">
            <blockpin signalname="bram_wr_en" name="I" />
            <blockpin signalname="b_wr_en" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_47">
            <blockpin signalname="curr_rd_addr_raw(0)" name="I" />
            <blockpin signalname="curr_rd_addr(8)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_48">
            <blockpin signalname="curr_rd_addr_raw(1)" name="I" />
            <blockpin signalname="curr_rd_addr(9)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_49">
            <blockpin signalname="curr_rd_addr_raw(2)" name="I" />
            <blockpin signalname="curr_rd_addr(10)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_50">
            <blockpin signalname="curr_rd_addr_raw(3)" name="I" />
            <blockpin signalname="curr_rd_addr(11)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_51">
            <blockpin signalname="curr_rd_addr_raw(4)" name="I" />
            <blockpin signalname="curr_rd_addr(12)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_52">
            <blockpin signalname="XLXN_192" name="I0" />
            <blockpin signalname="XLXN_182" name="I1" />
            <blockpin signalname="count_enable" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_53">
            <blockpin signalname="pb_rd" name="I0" />
            <blockpin signalname="pb_wr" name="I1" />
            <blockpin signalname="XLXN_192" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_54">
            <blockpin signalname="XLXN_182" name="I0" />
            <blockpin signalname="pb_rd" name="I1" />
            <blockpin signalname="br_rd_p" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_55">
            <blockpin signalname="curr_rd_addr_raw(5)" name="I" />
            <blockpin signalname="curr_rd_addr(13)" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_57">
            <blockpin signalname="PORT_ID(7)" name="I0" />
            <blockpin signalname="PORT_ID(6)" name="I1" />
            <blockpin signalname="PORT_ID(5)" name="I2" />
            <blockpin signalname="PORT_ID(4)" name="I3" />
            <blockpin signalname="XLXN_200" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_58">
            <blockpin signalname="XLXN_200" name="I0" />
            <blockpin signalname="XLXN_199" name="I1" />
            <blockpin signalname="XLXN_209" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_59">
            <blockpin signalname="XLXN_209" name="I0" />
            <blockpin signalname="pb_wr" name="I1" />
            <blockpin signalname="comand_bus_present" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_61">
            <blockpin signalname="PORT_ID(3)" name="I0" />
            <blockpin signalname="PORT_ID(2)" name="I1" />
            <blockpin signalname="PORT_ID(1)" name="I2" />
            <blockpin signalname="PORT_ID(0)" name="I3" />
            <blockpin signalname="XLXN_199" name="O" />
        </block>
        <block symbolname="cb8cle" name="XLXI_2">
            <blockpin signalname="CLK80" name="C" />
            <blockpin signalname="count_enable" name="CE" />
            <blockpin signalname="pointers_reset_sync" name="CLR" />
            <blockpin signalname="addr_start(7:0)" name="D(7:0)" />
            <blockpin signalname="load_enable0" name="L" />
            <blockpin signalname="XLXN_155" name="CEO" />
            <blockpin signalname="curr_rd_addr(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="fd" name="XLXI_62">
            <blockpin signalname="CLK80" name="C" />
            <blockpin signalname="pointers_reset" name="D" />
            <blockpin signalname="pointers_reset_sync" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_63">
            <blockpin signalname="addr_start(0)" name="I0" />
            <blockpin signalname="comand_bus_present" name="I1" />
            <blockpin signalname="pointers_reset" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_64">
            <blockpin signalname="pointers_reset_sync" name="I" />
            <blockpin signalname="debug" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_66">
            <blockpin signalname="curr_rd_addr_raw(6)" name="I" />
            <blockpin signalname="curr_rd_addr(14)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_65">
            <blockpin signalname="curr_rd_addr_raw(7)" name="I" />
            <blockpin signalname="curr_rd_addr(15)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2304" y="2336" type="branch" />
            <wire x2="2352" y1="2336" y2="2336" x1="2304" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2304" y="2400" type="branch" />
            <wire x2="2352" y1="2400" y2="2400" x1="2304" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2304" y="2448" type="branch" />
            <wire x2="2352" y1="2448" y2="2448" x1="2304" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2304" y="2512" type="branch" />
            <wire x2="2352" y1="2512" y2="2512" x1="2304" />
        </branch>
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2304" y="2576" type="branch" />
            <wire x2="2352" y1="2576" y2="2576" x1="2304" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2304" y="2640" type="branch" />
            <wire x2="2352" y1="2640" y2="2640" x1="2304" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2320" y="2272" type="branch" />
            <wire x2="2352" y1="2272" y2="2272" x1="2320" />
        </branch>
        <instance x="2656" y="2528" name="XLXI_15" orien="R0" />
        <branch name="XLXN_75">
            <wire x2="2624" y1="2304" y2="2304" x1="2608" />
            <wire x2="2624" y1="2304" y2="2400" x1="2624" />
            <wire x2="2656" y1="2400" y2="2400" x1="2624" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="2624" y1="2544" y2="2544" x1="2608" />
            <wire x2="2656" y1="2464" y2="2464" x1="2624" />
            <wire x2="2624" y1="2464" y2="2544" x1="2624" />
        </branch>
        <instance x="2352" y="2704" name="XLXI_16" orien="R0" />
        <instance x="2352" y="2464" name="XLXI_17" orien="R0" />
        <instance x="400" y="2752" name="XLXI_5" orien="R0" />
        <instance x="400" y="2512" name="XLXI_6" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="672" y1="2352" y2="2352" x1="656" />
            <wire x2="672" y1="2352" y2="2448" x1="672" />
            <wire x2="704" y1="2448" y2="2448" x1="672" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="672" y1="2592" y2="2592" x1="656" />
            <wire x2="672" y1="2512" y2="2592" x1="672" />
            <wire x2="704" y1="2512" y2="2512" x1="672" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="256" y="2384" type="branch" />
            <wire x2="400" y1="2384" y2="2384" x1="256" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="256" y="2448" type="branch" />
            <wire x2="400" y1="2448" y2="2448" x1="256" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="256" y="2496" type="branch" />
            <wire x2="400" y1="2496" y2="2496" x1="256" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="240" y="2560" type="branch" />
            <wire x2="400" y1="2560" y2="2560" x1="240" />
        </branch>
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="240" y="2624" type="branch" />
            <wire x2="400" y1="2624" y2="2624" x1="240" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="240" y="2688" type="branch" />
            <wire x2="400" y1="2688" y2="2688" x1="240" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="256" y="2320" type="branch" />
            <wire x2="400" y1="2320" y2="2320" x1="256" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="256" y="2256" type="branch" />
            <wire x2="400" y1="2256" y2="2256" x1="256" />
        </branch>
        <branch name="XLXN_114">
            <wire x2="1024" y1="2480" y2="2480" x1="960" />
        </branch>
        <branch name="pb_wr">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="992" y="2416" type="branch" />
            <wire x2="1024" y1="2416" y2="2416" x1="992" />
        </branch>
        <branch name="load_enable0">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1344" y="2448" type="branch" />
            <wire x2="1344" y1="2448" y2="2448" x1="1280" />
        </branch>
        <instance x="2960" y="2496" name="XLXI_25" orien="R0" />
        <branch name="curr_rd_addr(15:0)">
            <wire x2="3200" y1="96" y2="96" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3200" y="96" name="curr_rd_addr(15:0)" orien="R0" />
        <branch name="addr_start(7:0)">
            <wire x2="544" y1="128" y2="128" x1="272" />
        </branch>
        <branch name="PORT_ID(7:0)">
            <wire x2="544" y1="208" y2="208" x1="272" />
        </branch>
        <branch name="pb_rd">
            <wire x2="544" y1="304" y2="304" x1="256" />
        </branch>
        <branch name="pb_wr">
            <wire x2="544" y1="384" y2="384" x1="256" />
        </branch>
        <branch name="CLK80">
            <wire x2="544" y1="64" y2="64" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="64" name="CLK80" orien="R180" />
        <iomarker fontsize="28" x="272" y="128" name="addr_start(7:0)" orien="R180" />
        <iomarker fontsize="28" x="272" y="208" name="PORT_ID(7:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="384" name="pb_wr" orien="R180" />
        <instance x="704" y="2576" name="XLXI_7" orien="R0" />
        <instance x="1024" y="2544" name="XLXI_24" orien="R0" />
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2304" y="2208" type="branch" />
            <wire x2="2352" y1="2208" y2="2208" x1="2304" />
        </branch>
        <branch name="addr_start(7:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1440" y="640" type="branch" />
            <wire x2="1632" y1="640" y2="640" x1="1440" />
        </branch>
        <branch name="CLK80">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="896" type="branch" />
            <wire x2="1632" y1="896" y2="896" x1="1536" />
        </branch>
        <branch name="count_enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="832" type="branch" />
            <wire x2="1632" y1="832" y2="832" x1="1536" />
        </branch>
        <branch name="load_enable0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="768" type="branch" />
            <wire x2="1632" y1="768" y2="768" x1="1536" />
        </branch>
        <branch name="addr_start(7:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1440" y="1408" type="branch" />
            <wire x2="1616" y1="1408" y2="1408" x1="1440" />
        </branch>
        <branch name="CLK80">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="1664" type="branch" />
            <wire x2="1616" y1="1664" y2="1664" x1="1504" />
        </branch>
        <branch name="load_enable1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="1536" type="branch" />
            <wire x2="1616" y1="1536" y2="1536" x1="1504" />
        </branch>
        <instance x="1616" y="1792" name="XLXI_3" orien="R0" />
        <branch name="curr_rd_addr(7:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2208" y="640" type="branch" />
            <wire x2="2208" y1="640" y2="640" x1="2016" />
        </branch>
        <branch name="XLXN_155">
            <wire x2="2096" y1="1200" y2="1200" x1="1552" />
            <wire x2="1552" y1="1200" y2="1600" x1="1552" />
            <wire x2="1616" y1="1600" y2="1600" x1="1552" />
            <wire x2="2096" y1="832" y2="832" x1="2016" />
            <wire x2="2096" y1="832" y2="1200" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="256" y="304" name="pb_rd" orien="R180" />
        <instance x="352" y="2224" name="XLXI_34" orien="R0" />
        <branch name="XLXN_170">
            <wire x2="624" y1="1824" y2="1824" x1="608" />
            <wire x2="624" y1="1824" y2="1920" x1="624" />
            <wire x2="656" y1="1920" y2="1920" x1="624" />
        </branch>
        <branch name="XLXN_171">
            <wire x2="624" y1="2064" y2="2064" x1="608" />
            <wire x2="624" y1="1984" y2="2064" x1="624" />
            <wire x2="656" y1="1984" y2="1984" x1="624" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="208" y="1856" type="branch" />
            <wire x2="352" y1="1856" y2="1856" x1="208" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="208" y="1920" type="branch" />
            <wire x2="352" y1="1920" y2="1920" x1="208" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="208" y="1968" type="branch" />
            <wire x2="352" y1="1968" y2="1968" x1="208" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="192" y="2032" type="branch" />
            <wire x2="352" y1="2032" y2="2032" x1="192" />
        </branch>
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="192" y="2096" type="branch" />
            <wire x2="352" y1="2096" y2="2096" x1="192" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="192" y="2160" type="branch" />
            <wire x2="352" y1="2160" y2="2160" x1="192" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="208" y="1792" type="branch" />
            <wire x2="352" y1="1792" y2="1792" x1="208" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="208" y="1728" type="branch" />
            <wire x2="352" y1="1728" y2="1728" x1="208" />
        </branch>
        <branch name="XLXN_180">
            <wire x2="976" y1="1952" y2="1952" x1="912" />
        </branch>
        <branch name="pb_wr">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="944" y="1888" type="branch" />
            <wire x2="976" y1="1888" y2="1888" x1="944" />
        </branch>
        <branch name="load_enable1">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1296" y="1920" type="branch" />
            <wire x2="1296" y1="1920" y2="1920" x1="1232" />
        </branch>
        <instance x="656" y="2048" name="XLXI_36" orien="R0" />
        <instance x="976" y="2016" name="XLXI_37" orien="R0" />
        <instance x="352" y="1984" name="XLXI_38" orien="R0" />
        <branch name="pb_wr">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2912" y="2368" type="branch" />
            <wire x2="2960" y1="2368" y2="2368" x1="2912" />
        </branch>
        <branch name="bram_wr_en">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3296" y="2400" type="branch" />
            <wire x2="3296" y1="2400" y2="2400" x1="3216" />
        </branch>
        <branch name="bram_wr_en">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2752" y="272" type="branch" />
            <wire x2="2992" y1="272" y2="272" x1="2752" />
        </branch>
        <instance x="2992" y="304" name="XLXI_42" orien="R0" />
        <branch name="b_wr_en">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3296" y="272" type="branch" />
            <wire x2="3296" y1="272" y2="272" x1="3216" />
            <wire x2="3360" y1="272" y2="272" x1="3296" />
        </branch>
        <iomarker fontsize="28" x="3360" y="272" name="b_wr_en" orien="R0" />
        <branch name="curr_rd_addr_raw(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2448" y="1280" type="branch" />
            <wire x2="2528" y1="1280" y2="1280" x1="2448" />
        </branch>
        <branch name="curr_rd_addr(8)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2896" y="1280" type="branch" />
            <wire x2="2896" y1="1280" y2="1280" x1="2752" />
        </branch>
        <instance x="2528" y="1312" name="XLXI_47" orien="R0" />
        <instance x="2528" y="1248" name="XLXI_48" orien="R0" />
        <instance x="2528" y="1184" name="XLXI_49" orien="R0" />
        <instance x="2528" y="1120" name="XLXI_50" orien="R0" />
        <instance x="2528" y="1056" name="XLXI_51" orien="R0" />
        <branch name="curr_rd_addr(9)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2896" y="1216" type="branch" />
            <wire x2="2896" y1="1216" y2="1216" x1="2752" />
        </branch>
        <branch name="curr_rd_addr(10)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2896" y="1152" type="branch" />
            <wire x2="2896" y1="1152" y2="1152" x1="2752" />
        </branch>
        <branch name="curr_rd_addr(11)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2896" y="1088" type="branch" />
            <wire x2="2896" y1="1088" y2="1088" x1="2752" />
        </branch>
        <branch name="curr_rd_addr(12)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2896" y="1024" type="branch" />
            <wire x2="2896" y1="1024" y2="1024" x1="2752" />
        </branch>
        <branch name="curr_rd_addr_raw(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2448" y="1024" type="branch" />
            <wire x2="2528" y1="1024" y2="1024" x1="2448" />
        </branch>
        <branch name="curr_rd_addr_raw(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2448" y="1088" type="branch" />
            <wire x2="2528" y1="1088" y2="1088" x1="2448" />
        </branch>
        <branch name="curr_rd_addr_raw(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2448" y="1152" type="branch" />
            <wire x2="2528" y1="1152" y2="1152" x1="2448" />
        </branch>
        <branch name="curr_rd_addr_raw(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2448" y="1216" type="branch" />
            <wire x2="2528" y1="1216" y2="1216" x1="2448" />
        </branch>
        <branch name="XLXN_182">
            <wire x2="2944" y1="2432" y2="2432" x1="2912" />
            <wire x2="2960" y1="2432" y2="2432" x1="2944" />
            <wire x2="2944" y1="2432" y2="2592" x1="2944" />
            <wire x2="3040" y1="2592" y2="2592" x1="2944" />
            <wire x2="2944" y1="2224" y2="2432" x1="2944" />
        </branch>
        <instance x="3040" y="2720" name="XLXI_52" orien="R0" />
        <branch name="XLXN_192">
            <wire x2="3040" y1="2656" y2="2656" x1="3008" />
        </branch>
        <instance x="2752" y="2752" name="XLXI_53" orien="R0" />
        <branch name="pb_wr">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2672" y="2624" type="branch" />
            <wire x2="2752" y1="2624" y2="2624" x1="2672" />
        </branch>
        <branch name="pb_rd">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2672" y="2688" type="branch" />
            <wire x2="2752" y1="2688" y2="2688" x1="2672" />
        </branch>
        <instance x="2944" y="2288" name="XLXI_54" orien="R0" />
        <branch name="pb_rd">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2912" y="2160" type="branch" />
            <wire x2="2944" y1="2160" y2="2160" x1="2912" />
        </branch>
        <branch name="br_rd_p">
            <wire x2="3264" y1="2192" y2="2192" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3264" y="2192" name="br_rd_p" orien="R0" />
        <text style="fontsize:35;fontname:Arial;textcolor:rgb(255,0,255)" x="660" y="2068">PORT_F5</text>
        <text style="fontsize:35;fontname:Arial;textcolor:rgb(255,0,255)" x="724" y="2632">PORT_F3</text>
        <branch name="count_enable">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3392" y="2624" type="branch" />
            <wire x2="3392" y1="2624" y2="2624" x1="3296" />
            <wire x2="3424" y1="2624" y2="2624" x1="3392" />
        </branch>
        <text style="fontsize:35;fontname:Arial;textcolor:rgb(255,0,255)" x="2656" y="2336">PORT_F4</text>
        <branch name="curr_rd_addr(13)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2896" y="960" type="branch" />
            <wire x2="2896" y1="960" y2="960" x1="2752" />
        </branch>
        <instance x="2528" y="992" name="XLXI_55" orien="R0" />
        <branch name="curr_rd_addr_raw(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="960" type="branch" />
            <wire x2="2528" y1="960" y2="960" x1="2448" />
        </branch>
        <instance x="304" y="1616" name="XLXI_57" orien="R0" />
        <branch name="XLXN_199">
            <wire x2="576" y1="1216" y2="1216" x1="560" />
            <wire x2="576" y1="1216" y2="1312" x1="576" />
            <wire x2="608" y1="1312" y2="1312" x1="576" />
        </branch>
        <branch name="XLXN_200">
            <wire x2="576" y1="1456" y2="1456" x1="560" />
            <wire x2="576" y1="1376" y2="1456" x1="576" />
            <wire x2="608" y1="1376" y2="1376" x1="576" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="160" y="1248" type="branch" />
            <wire x2="304" y1="1248" y2="1248" x1="160" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="160" y="1312" type="branch" />
            <wire x2="304" y1="1312" y2="1312" x1="160" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="160" y="1360" type="branch" />
            <wire x2="304" y1="1360" y2="1360" x1="160" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="144" y="1424" type="branch" />
            <wire x2="304" y1="1424" y2="1424" x1="144" />
        </branch>
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="144" y="1488" type="branch" />
            <wire x2="304" y1="1488" y2="1488" x1="144" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="144" y="1552" type="branch" />
            <wire x2="304" y1="1552" y2="1552" x1="144" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="160" y="1184" type="branch" />
            <wire x2="304" y1="1184" y2="1184" x1="160" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="160" y="1120" type="branch" />
            <wire x2="304" y1="1120" y2="1120" x1="160" />
        </branch>
        <branch name="XLXN_209">
            <wire x2="928" y1="1344" y2="1344" x1="864" />
        </branch>
        <branch name="pb_wr">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="896" y="1280" type="branch" />
            <wire x2="928" y1="1280" y2="1280" x1="896" />
        </branch>
        <branch name="comand_bus_present">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1248" y="1312" type="branch" />
            <wire x2="1248" y1="1312" y2="1312" x1="1184" />
        </branch>
        <instance x="608" y="1440" name="XLXI_58" orien="R0" />
        <instance x="928" y="1408" name="XLXI_59" orien="R0" />
        <text style="fontsize:35;fontname:Arial;textcolor:rgb(255,0,255)" x="612" y="1460">PORT_FF</text>
        <instance x="304" y="1376" name="XLXI_61" orien="R0" />
        <instance x="1632" y="1024" name="XLXI_2" orien="R0" />
        <instance x="368" y="944" name="XLXI_62" orien="R0" />
        <branch name="pointers_reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="688" type="branch" />
            <wire x2="368" y1="688" y2="688" x1="224" />
        </branch>
        <branch name="CLK80">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="816" type="branch" />
            <wire x2="368" y1="816" y2="816" x1="224" />
        </branch>
        <instance x="992" y="480" name="XLXI_63" orien="R0" />
        <branch name="addr_start(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="416" type="branch" />
            <wire x2="992" y1="416" y2="416" x1="960" />
        </branch>
        <branch name="comand_bus_present">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="352" type="branch" />
            <wire x2="992" y1="352" y2="352" x1="960" />
        </branch>
        <branch name="pointers_reset">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="384" type="branch" />
            <wire x2="1280" y1="384" y2="384" x1="1248" />
        </branch>
        <branch name="pointers_reset_sync">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="992" type="branch" />
            <wire x2="1632" y1="992" y2="992" x1="1504" />
        </branch>
        <branch name="pointers_reset_sync">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1760" type="branch" />
            <wire x2="1616" y1="1760" y2="1760" x1="1520" />
        </branch>
        <branch name="pointers_reset_sync">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="688" type="branch" />
            <wire x2="832" y1="688" y2="688" x1="752" />
        </branch>
        <branch name="debug">
            <wire x2="3376" y1="384" y2="384" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3376" y="384" name="debug" orien="R0" />
        <instance x="2912" y="416" name="XLXI_64" orien="R0" />
        <branch name="pointers_reset_sync">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="384" type="branch" />
            <wire x2="2912" y1="384" y2="384" x1="2768" />
        </branch>
        <branch name="curr_rd_addr_raw(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="1408" type="branch" />
            <wire x2="2064" y1="1408" y2="1408" x1="2000" />
            <wire x2="2128" y1="1408" y2="1408" x1="2064" />
            <wire x2="2160" y1="1408" y2="1408" x1="2128" />
        </branch>
        <branch name="curr_rd_addr(15)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2912" y="832" type="branch" />
            <wire x2="2896" y1="832" y2="832" x1="2752" />
            <wire x2="2912" y1="832" y2="832" x1="2896" />
        </branch>
        <branch name="curr_rd_addr(14)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2912" y="896" type="branch" />
            <wire x2="2912" y1="896" y2="896" x1="2752" />
        </branch>
        <instance x="2528" y="928" name="XLXI_66" orien="R0" />
        <branch name="curr_rd_addr_raw(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="832" type="branch" />
            <wire x2="2464" y1="832" y2="832" x1="2448" />
            <wire x2="2528" y1="832" y2="832" x1="2464" />
        </branch>
        <branch name="curr_rd_addr_raw(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="896" type="branch" />
            <wire x2="2528" y1="896" y2="896" x1="2448" />
        </branch>
        <instance x="2528" y="864" name="XLXI_65" orien="R0" />
    </sheet>
</drawing>