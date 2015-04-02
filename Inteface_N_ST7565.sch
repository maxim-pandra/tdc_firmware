<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="IOData(7:0)" />
        <signal name="IAdr(15:8)" />
        <signal name="FromMCUData(7:0)" />
        <signal name="XLXN_5" />
        <signal name="Adress(15:8)" />
        <signal name="Adress(7:0)" />
        <signal name="Adress(15:0)" />
        <signal name="ExtMemSel" />
        <signal name="Adress(15)" />
        <signal name="Adress(14)" />
        <signal name="Adress(13)" />
        <signal name="XLXN_18" />
        <signal name="Adress(11)" />
        <signal name="Adress(10)" />
        <signal name="Adress(9)" />
        <signal name="Adress(8)" />
        <signal name="Adress(12)" />
        <signal name="XLXN_30" />
        <signal name="IntRegSel" />
        <signal name="XLXN_4" />
        <signal name="XLXN_38" />
        <signal name="FromMCUData(15:8)" />
        <signal name="XLXN_41" />
        <signal name="Adress(0)" />
        <signal name="ALE" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="ToMCUData(7:0)" />
        <signal name="IWR" />
        <signal name="XLXN_46" />
        <signal name="IRD" />
        <signal name="XLXN_47" />
        <signal name="ToMCUData(0)" />
        <signal name="ToMCUData(1)" />
        <signal name="ToMCUData(2)" />
        <signal name="ToMCUData(3)" />
        <signal name="ToMCUData(4)" />
        <signal name="ToMCUData(5)" />
        <signal name="ToMCUData(6)" />
        <signal name="ToMCUData(7)" />
        <signal name="IOData(0)" />
        <signal name="IOData(1)" />
        <signal name="IOData(2)" />
        <signal name="IOData(3)" />
        <signal name="IOData(4)" />
        <signal name="IOData(5)" />
        <signal name="IOData(6)" />
        <signal name="IOData(7)" />
        <signal name="XLXN_139" />
        <signal name="XLXN_140" />
        <signal name="ClockIO" />
        <signal name="XLXN_145" />
        <signal name="XLXN_146" />
        <signal name="XLXN_147" />
        <signal name="RAMBClock" />
        <signal name="DataClear" />
        <signal name="RAMBEnable" />
        <signal name="WR" />
        <signal name="FromMCUData(15:0)" />
        <signal name="XLXN_157" />
        <signal name="RD" />
        <signal name="ReadEnable" />
        <signal name="XLXN_164" />
        <signal name="XLXN_170" />
        <signal name="Adress(6)" />
        <signal name="Adress(5)" />
        <signal name="Adress(4)" />
        <signal name="Adress(7)" />
        <signal name="XLXN_180" />
        <signal name="RAMBOp" />
        <signal name="LCDAddr" />
        <signal name="LCDAd" />
        <signal name="XLXN_212" />
        <signal name="XLXN_213" />
        <signal name="Adress(3)" />
        <signal name="XLXN_219" />
        <signal name="LCDSelect" />
        <port polarity="BiDirectional" name="IOData(7:0)" />
        <port polarity="Input" name="IAdr(15:8)" />
        <port polarity="Output" name="Adress(15:0)" />
        <port polarity="Output" name="ExtMemSel" />
        <port polarity="Output" name="IntRegSel" />
        <port polarity="Input" name="ALE" />
        <port polarity="Input" name="ToMCUData(7:0)" />
        <port polarity="Input" name="IWR" />
        <port polarity="Input" name="IRD" />
        <port polarity="Input" name="ClockIO" />
        <port polarity="Output" name="RAMBClock" />
        <port polarity="Output" name="DataClear" />
        <port polarity="Output" name="RAMBEnable" />
        <port polarity="Output" name="WR" />
        <port polarity="Output" name="FromMCUData(15:0)" />
        <port polarity="Output" name="RD" />
        <port polarity="Output" name="LCDAddr" />
        <port polarity="Output" name="LCDSelect" />
        <blockdef name="ibuf8">
            <timestamp>2001-2-2T12:37:45</timestamp>
            <rect width="96" x="128" y="-44" height="24" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="fd8ce">
            <timestamp>2001-2-2T12:37:14</timestamp>
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
            <timestamp>2001-2-2T12:37:29</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2001-2-2T12:37:29</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="ibuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
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
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2001-2-2T12:38:38</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2001-2-2T12:38:38</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2001-4-25T16:50:36</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="obuft">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="96" />
            <line x2="96" y1="-48" y2="-96" x1="96" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="srl16">
            <timestamp>2001-2-2T12:39:45</timestamp>
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="80" y1="-368" y2="-384" x1="64" />
            <line x2="64" y1="-384" y2="-400" x1="80" />
            <rect width="256" x="64" y="-576" height="512" />
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
        <blockdef name="and4b1">
            <timestamp>2001-2-2T12:38:38</timestamp>
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
        <blockdef name="and9">
            <timestamp>2001-2-2T12:38:38</timestamp>
            <line x2="192" y1="-320" y2="-320" x1="256" />
            <arc ex="144" ey="-368" sx="144" sy="-272" r="48" cx="144" cy="-320" />
            <line x2="64" y1="-272" y2="-272" x1="144" />
            <line x2="144" y1="-368" y2="-368" x1="64" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-576" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2001-2-2T12:38:38</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2001-2-2T12:38:38</timestamp>
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
        <block symbolname="ibuf8" name="XLXI_1">
            <blockpin signalname="IAdr(15:8)" name="I(7:0)" />
            <blockpin signalname="Adress(15:8)" name="O(7:0)" />
        </block>
        <block symbolname="ibuf8" name="XLXI_2">
            <blockpin signalname="IOData(7:0)" name="I(7:0)" />
            <blockpin signalname="FromMCUData(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="Adress(15)" name="I" />
            <blockpin signalname="XLXN_170" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_9">
            <blockpin signalname="XLXN_213" name="I" />
            <blockpin signalname="ExtMemSel" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="Adress(13)" name="I0" />
            <blockpin signalname="Adress(14)" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_170" name="I1" />
            <blockpin signalname="RAMBEnable" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_14">
            <blockpin signalname="Adress(8)" name="I0" />
            <blockpin signalname="Adress(9)" name="I1" />
            <blockpin signalname="Adress(10)" name="I2" />
            <blockpin signalname="Adress(11)" name="I3" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="fd8ce" name="XLXI_4">
            <blockpin signalname="XLXN_53" name="C" />
            <blockpin signalname="XLXN_5" name="CE" />
            <blockpin signalname="XLXN_4" name="CLR" />
            <blockpin signalname="FromMCUData(7:0)" name="D(7:0)" />
            <blockpin signalname="Adress(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_5" name="P" />
        </block>
        <block symbolname="fd8ce" name="XLXI_18">
            <blockpin signalname="WR" name="C" />
            <blockpin signalname="XLXN_41" name="CE" />
            <blockpin signalname="XLXN_38" name="CLR" />
            <blockpin signalname="FromMCUData(7:0)" name="D(7:0)" />
            <blockpin signalname="FromMCUData(15:8)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_19">
            <blockpin signalname="XLXN_38" name="G" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="IntRegSel" name="I0" />
            <blockpin signalname="Adress(0)" name="I1" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_4" name="G" />
        </block>
        <block symbolname="ibuf" name="XLXI_7">
            <blockpin signalname="ALE" name="I" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_30">
            <blockpin signalname="XLXN_54" name="I" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_56">
            <blockpin signalname="ToMCUData(1)" name="I" />
            <blockpin signalname="ReadEnable" name="T" />
            <blockpin signalname="IOData(1)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_57">
            <blockpin signalname="ToMCUData(2)" name="I" />
            <blockpin signalname="ReadEnable" name="T" />
            <blockpin signalname="IOData(2)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_58">
            <blockpin signalname="ToMCUData(3)" name="I" />
            <blockpin signalname="ReadEnable" name="T" />
            <blockpin signalname="IOData(3)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_59">
            <blockpin signalname="ToMCUData(4)" name="I" />
            <blockpin signalname="ReadEnable" name="T" />
            <blockpin signalname="IOData(4)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_60">
            <blockpin signalname="ToMCUData(5)" name="I" />
            <blockpin signalname="ReadEnable" name="T" />
            <blockpin signalname="IOData(5)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_61">
            <blockpin signalname="ToMCUData(6)" name="I" />
            <blockpin signalname="ReadEnable" name="T" />
            <blockpin signalname="IOData(6)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_62">
            <blockpin signalname="ToMCUData(7)" name="I" />
            <blockpin signalname="ReadEnable" name="T" />
            <blockpin signalname="IOData(7)" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_21">
            <blockpin signalname="IWR" name="I" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_22">
            <blockpin signalname="IRD" name="I" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_23">
            <blockpin signalname="XLXN_46" name="I" />
            <blockpin signalname="WR" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_24">
            <blockpin signalname="XLXN_47" name="I" />
            <blockpin signalname="RD" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_67">
            <blockpin signalname="ToMCUData(0)" name="I" />
            <blockpin signalname="ReadEnable" name="T" />
            <blockpin signalname="IOData(0)" name="O" />
        </block>
        <block symbolname="srl16" name="XLXI_70">
            <blockpin signalname="XLXN_140" name="A0" />
            <blockpin signalname="XLXN_139" name="A1" />
            <blockpin signalname="XLXN_139" name="A2" />
            <blockpin signalname="XLXN_139" name="A3" />
            <blockpin signalname="ClockIO" name="CLK" />
            <blockpin signalname="RAMBOp" name="D" />
            <blockpin signalname="RAMBClock" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_71">
            <blockpin signalname="XLXN_140" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_72">
            <blockpin signalname="XLXN_139" name="G" />
        </block>
        <block symbolname="srl16" name="XLXI_73">
            <blockpin signalname="XLXN_146" name="A0" />
            <blockpin signalname="XLXN_146" name="A1" />
            <blockpin signalname="XLXN_146" name="A2" />
            <blockpin signalname="XLXN_145" name="A3" />
            <blockpin signalname="ClockIO" name="CLK" />
            <blockpin signalname="XLXN_164" name="D" />
            <blockpin signalname="XLXN_147" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_74">
            <blockpin signalname="XLXN_146" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_75">
            <blockpin signalname="XLXN_145" name="G" />
        </block>
        <block symbolname="and2b1" name="XLXI_76">
            <blockpin signalname="XLXN_164" name="I0" />
            <blockpin signalname="XLXN_147" name="I1" />
            <blockpin signalname="DataClear" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_78">
            <blockpin signalname="RD" name="I0" />
            <blockpin signalname="WR" name="I1" />
            <blockpin signalname="XLXN_157" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_79">
            <blockpin signalname="XLXN_157" name="I0" />
            <blockpin signalname="RAMBEnable" name="I1" />
            <blockpin signalname="RAMBOp" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_80">
            <blockpin signalname="RD" name="I0" />
            <blockpin signalname="IntRegSel" name="I1" />
            <blockpin signalname="XLXN_164" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_81">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_170" name="I1" />
            <blockpin signalname="XLXN_30" name="I2" />
            <blockpin signalname="Adress(12)" name="I3" />
            <blockpin signalname="IntRegSel" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_84">
            <blockpin signalname="RAMBEnable" name="I0" />
            <blockpin signalname="IntRegSel" name="I1" />
            <blockpin signalname="XLXN_180" name="O" />
        </block>
        <block symbolname="and9" name="XLXI_86">
            <blockpin signalname="Adress(4)" name="I0" />
            <blockpin signalname="Adress(5)" name="I1" />
            <blockpin signalname="Adress(6)" name="I2" />
            <blockpin signalname="Adress(7)" name="I3" />
            <blockpin signalname="Adress(8)" name="I4" />
            <blockpin signalname="Adress(9)" name="I5" />
            <blockpin signalname="Adress(10)" name="I6" />
            <blockpin signalname="Adress(11)" name="I7" />
            <blockpin signalname="XLXN_212" name="I8" />
            <blockpin signalname="LCDAd" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_96">
            <blockpin signalname="XLXN_180" name="I0" />
            <blockpin signalname="RD" name="I1" />
            <blockpin signalname="ReadEnable" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_97">
            <blockpin signalname="LCDAd" name="I0" />
            <blockpin signalname="Adress(3)" name="I1" />
            <blockpin signalname="LCDAddr" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_98">
            <blockpin signalname="Adress(12)" name="I0" />
            <blockpin signalname="Adress(13)" name="I1" />
            <blockpin signalname="Adress(14)" name="I2" />
            <blockpin signalname="Adress(15)" name="I3" />
            <blockpin signalname="XLXN_212" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_99">
            <blockpin signalname="LCDAd" name="I0" />
            <blockpin signalname="Adress(15)" name="I1" />
            <blockpin signalname="XLXN_213" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_100">
            <blockpin signalname="XLXN_219" name="I" />
            <blockpin signalname="LCDSelect" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_102">
            <blockpin signalname="XLXN_157" name="I0" />
            <blockpin signalname="LCDAd" name="I1" />
            <blockpin signalname="XLXN_219" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="640" y="240" name="XLXI_1" orien="R0" />
        <instance x="640" y="560" name="XLXI_2" orien="R0" />
        <branch name="IAdr(15:8)">
            <wire x2="640" y1="208" y2="208" x1="240" />
        </branch>
        <branch name="FromMCUData(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1024" y="528" type="branch" />
            <wire x2="1024" y1="528" y2="528" x1="864" />
            <wire x2="1088" y1="528" y2="528" x1="1024" />
            <wire x2="1088" y1="528" y2="1088" x1="1088" />
            <wire x2="1136" y1="1088" y2="1088" x1="1088" />
            <wire x2="1232" y1="528" y2="528" x1="1088" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1200" y1="448" y2="592" x1="1200" />
            <wire x2="1232" y1="592" y2="592" x1="1200" />
        </branch>
        <branch name="Adress(15:8)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1120" y="208" type="branch" />
            <wire x2="1120" y1="208" y2="208" x1="864" />
        </branch>
        <branch name="Adress(7:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1696" y="528" type="branch" />
            <wire x2="1696" y1="528" y2="528" x1="1616" />
        </branch>
        <bustap x2="1984" y1="208" y2="208" x1="1888" />
        <instance x="2096" y="240" name="XLXI_8" orien="R0" />
        <branch name="ExtMemSel">
            <wire x2="3056" y1="96" y2="96" x1="2944" />
        </branch>
        <bustap x2="1984" y1="304" y2="304" x1="1888" />
        <bustap x2="1984" y1="368" y2="368" x1="1888" />
        <instance x="2080" y="432" name="XLXI_12" orien="R0" />
        <branch name="Adress(14)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2016" y="304" type="branch" />
            <wire x2="2016" y1="304" y2="304" x1="1984" />
            <wire x2="2080" y1="304" y2="304" x1="2016" />
        </branch>
        <branch name="Adress(13)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2016" y="368" type="branch" />
            <wire x2="2016" y1="368" y2="368" x1="1984" />
            <wire x2="2080" y1="368" y2="368" x1="2016" />
        </branch>
        <instance x="2432" y="432" name="XLXI_13" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="2384" y1="336" y2="336" x1="2336" />
            <wire x2="2384" y1="336" y2="368" x1="2384" />
            <wire x2="2432" y1="368" y2="368" x1="2384" />
            <wire x2="2384" y1="368" y2="640" x1="2384" />
            <wire x2="2432" y1="640" y2="640" x1="2384" />
        </branch>
        <bustap x2="1984" y1="480" y2="480" x1="1888" />
        <bustap x2="1984" y1="576" y2="576" x1="1888" />
        <instance x="2096" y="832" name="XLXI_14" orien="R0" />
        <bustap x2="1984" y1="640" y2="640" x1="1888" />
        <bustap x2="1984" y1="704" y2="704" x1="1888" />
        <bustap x2="1984" y1="768" y2="768" x1="1888" />
        <branch name="Adress(12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2016" y="480" type="branch" />
            <wire x2="2016" y1="480" y2="480" x1="1984" />
            <wire x2="2208" y1="480" y2="480" x1="2016" />
            <wire x2="2208" y1="448" y2="480" x1="2208" />
            <wire x2="2432" y1="448" y2="448" x1="2208" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2352" y1="512" y2="672" x1="2352" />
            <wire x2="2432" y1="512" y2="512" x1="2352" />
        </branch>
        <instance x="1232" y="784" name="XLXI_4" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1200" y1="752" y2="784" x1="1200" />
            <wire x2="1232" y1="752" y2="752" x1="1200" />
        </branch>
        <instance x="1136" y="448" name="XLXI_6" orien="R0" />
        <instance x="1136" y="1344" name="XLXI_18" orien="R0" />
        <instance x="1040" y="1472" name="XLXI_19" orien="R0" />
        <branch name="XLXN_38">
            <wire x2="1136" y1="1312" y2="1312" x1="1104" />
            <wire x2="1104" y1="1312" y2="1344" x1="1104" />
        </branch>
        <branch name="FromMCUData(15:8)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1648" y="1088" type="branch" />
            <wire x2="1648" y1="1088" y2="1088" x1="1520" />
        </branch>
        <instance x="784" y="1248" name="XLXI_20" orien="R0" />
        <branch name="XLXN_41">
            <wire x2="1136" y1="1152" y2="1152" x1="1040" />
        </branch>
        <bustap x2="1792" y1="848" y2="848" x1="1888" />
        <instance x="1136" y="912" name="XLXI_5" orien="R0" />
        <branch name="Adress(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1568" y="848" type="branch" />
            <wire x2="704" y1="960" y2="1120" x1="704" />
            <wire x2="784" y1="1120" y2="1120" x1="704" />
            <wire x2="1296" y1="960" y2="960" x1="704" />
            <wire x2="1296" y1="848" y2="960" x1="1296" />
            <wire x2="1568" y1="848" y2="848" x1="1296" />
            <wire x2="1792" y1="848" y2="848" x1="1568" />
        </branch>
        <branch name="ALE">
            <wire x2="320" y1="656" y2="656" x1="176" />
        </branch>
        <instance x="816" y="688" name="XLXI_30" orien="R0" />
        <branch name="XLXN_53">
            <wire x2="1232" y1="656" y2="656" x1="1040" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="816" y1="656" y2="656" x1="544" />
        </branch>
        <iomarker fontsize="28" x="2720" y="544" name="IntRegSel" orien="R0" />
        <iomarker fontsize="28" x="240" y="528" name="IOData(7:0)" orien="R180" />
        <iomarker fontsize="28" x="240" y="208" name="IAdr(15:8)" orien="R180" />
        <instance x="544" y="1920" name="XLXI_56" orien="R0" />
        <instance x="544" y="2048" name="XLXI_57" orien="R0" />
        <instance x="544" y="2176" name="XLXI_58" orien="R0" />
        <instance x="544" y="2304" name="XLXI_59" orien="R0" />
        <instance x="544" y="2432" name="XLXI_60" orien="R0" />
        <instance x="544" y="2560" name="XLXI_61" orien="R0" />
        <instance x="544" y="2688" name="XLXI_62" orien="R0" />
        <instance x="208" y="1280" name="XLXI_21" orien="R0" />
        <branch name="IWR">
            <wire x2="208" y1="1248" y2="1248" x1="176" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="448" y1="1248" y2="1248" x1="432" />
        </branch>
        <instance x="208" y="1424" name="XLXI_22" orien="R0" />
        <branch name="IRD">
            <wire x2="208" y1="1392" y2="1392" x1="176" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="448" y1="1392" y2="1392" x1="432" />
        </branch>
        <instance x="448" y="1280" name="XLXI_23" orien="R0" />
        <instance x="448" y="1424" name="XLXI_24" orien="R0" />
        <iomarker fontsize="28" x="176" y="1248" name="IWR" orien="R180" />
        <iomarker fontsize="28" x="176" y="1392" name="IRD" orien="R180" />
        <iomarker fontsize="28" x="288" y="1648" name="ToMCUData(7:0)" orien="R180" />
        <branch name="ToMCUData(7:0)">
            <wire x2="336" y1="1648" y2="1648" x1="288" />
            <wire x2="336" y1="1648" y2="1760" x1="336" />
            <wire x2="336" y1="1760" y2="1888" x1="336" />
            <wire x2="336" y1="1888" y2="2016" x1="336" />
            <wire x2="336" y1="2016" y2="2144" x1="336" />
            <wire x2="336" y1="2144" y2="2272" x1="336" />
            <wire x2="336" y1="2272" y2="2400" x1="336" />
            <wire x2="336" y1="2400" y2="2528" x1="336" />
            <wire x2="336" y1="2528" y2="2640" x1="336" />
        </branch>
        <instance x="544" y="1792" name="XLXI_67" orien="R0" />
        <bustap x2="432" y1="1760" y2="1760" x1="336" />
        <bustap x2="432" y1="1888" y2="1888" x1="336" />
        <bustap x2="432" y1="2016" y2="2016" x1="336" />
        <bustap x2="432" y1="2144" y2="2144" x1="336" />
        <bustap x2="432" y1="2272" y2="2272" x1="336" />
        <bustap x2="432" y1="2400" y2="2400" x1="336" />
        <bustap x2="432" y1="2528" y2="2528" x1="336" />
        <bustap x2="432" y1="2640" y2="2640" x1="336" />
        <branch name="ToMCUData(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="480" y="1760" type="branch" />
            <wire x2="480" y1="1760" y2="1760" x1="432" />
            <wire x2="544" y1="1760" y2="1760" x1="480" />
        </branch>
        <branch name="ToMCUData(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="464" y="1888" type="branch" />
            <wire x2="464" y1="1888" y2="1888" x1="432" />
            <wire x2="544" y1="1888" y2="1888" x1="464" />
        </branch>
        <branch name="ToMCUData(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="464" y="2016" type="branch" />
            <wire x2="464" y1="2016" y2="2016" x1="432" />
            <wire x2="544" y1="2016" y2="2016" x1="464" />
        </branch>
        <branch name="ToMCUData(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="480" y="2144" type="branch" />
            <wire x2="480" y1="2144" y2="2144" x1="432" />
            <wire x2="544" y1="2144" y2="2144" x1="480" />
        </branch>
        <branch name="ToMCUData(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="480" y="2272" type="branch" />
            <wire x2="480" y1="2272" y2="2272" x1="432" />
            <wire x2="544" y1="2272" y2="2272" x1="480" />
        </branch>
        <branch name="ToMCUData(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="480" y="2400" type="branch" />
            <wire x2="480" y1="2400" y2="2400" x1="432" />
            <wire x2="544" y1="2400" y2="2400" x1="480" />
        </branch>
        <branch name="ToMCUData(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="480" y="2528" type="branch" />
            <wire x2="480" y1="2528" y2="2528" x1="432" />
            <wire x2="544" y1="2528" y2="2528" x1="480" />
        </branch>
        <branch name="ToMCUData(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="480" y="2640" type="branch" />
            <wire x2="480" y1="2640" y2="2640" x1="432" />
            <wire x2="480" y1="2640" y2="2656" x1="480" />
            <wire x2="544" y1="2656" y2="2656" x1="480" />
        </branch>
        <bustap x2="912" y1="1760" y2="1760" x1="1008" />
        <bustap x2="912" y1="1888" y2="1888" x1="1008" />
        <bustap x2="912" y1="2016" y2="2016" x1="1008" />
        <bustap x2="912" y1="2144" y2="2144" x1="1008" />
        <bustap x2="912" y1="2272" y2="2272" x1="1008" />
        <bustap x2="912" y1="2400" y2="2400" x1="1008" />
        <bustap x2="912" y1="2528" y2="2528" x1="1008" />
        <bustap x2="912" y1="2656" y2="2656" x1="1008" />
        <branch name="IOData(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="832" y="1760" type="branch" />
            <wire x2="832" y1="1760" y2="1760" x1="768" />
            <wire x2="912" y1="1760" y2="1760" x1="832" />
        </branch>
        <branch name="IOData(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="848" y="1888" type="branch" />
            <wire x2="848" y1="1888" y2="1888" x1="768" />
            <wire x2="912" y1="1888" y2="1888" x1="848" />
        </branch>
        <branch name="IOData(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="832" y="2016" type="branch" />
            <wire x2="832" y1="2016" y2="2016" x1="768" />
            <wire x2="912" y1="2016" y2="2016" x1="832" />
        </branch>
        <branch name="IOData(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="832" y="2144" type="branch" />
            <wire x2="832" y1="2144" y2="2144" x1="768" />
            <wire x2="912" y1="2144" y2="2144" x1="832" />
        </branch>
        <branch name="IOData(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="832" y="2272" type="branch" />
            <wire x2="832" y1="2272" y2="2272" x1="768" />
            <wire x2="912" y1="2272" y2="2272" x1="832" />
        </branch>
        <branch name="IOData(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="832" y="2400" type="branch" />
            <wire x2="832" y1="2400" y2="2400" x1="768" />
            <wire x2="912" y1="2400" y2="2400" x1="832" />
        </branch>
        <branch name="IOData(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="848" y="2528" type="branch" />
            <wire x2="848" y1="2528" y2="2528" x1="768" />
            <wire x2="912" y1="2528" y2="2528" x1="848" />
        </branch>
        <branch name="IOData(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="848" y="2656" type="branch" />
            <wire x2="848" y1="2656" y2="2656" x1="768" />
            <wire x2="912" y1="2656" y2="2656" x1="848" />
        </branch>
        <branch name="Adress(15:0)">
            <wire x2="1152" y1="64" y2="64" x1="944" />
        </branch>
        <iomarker fontsize="28" x="1152" y="64" name="Adress(15:0)" orien="R0" />
        <instance x="1504" y="2384" name="XLXI_70" orien="R0" />
        <instance x="1360" y="1808" name="XLXI_71" orien="R0" />
        <instance x="1344" y="2432" name="XLXI_72" orien="R0" />
        <branch name="XLXN_139">
            <wire x2="1504" y1="2128" y2="2128" x1="1408" />
            <wire x2="1408" y1="2128" y2="2192" x1="1408" />
            <wire x2="1504" y1="2192" y2="2192" x1="1408" />
            <wire x2="1408" y1="2192" y2="2256" x1="1408" />
            <wire x2="1504" y1="2256" y2="2256" x1="1408" />
            <wire x2="1408" y1="2256" y2="2304" x1="1408" />
        </branch>
        <branch name="XLXN_140">
            <wire x2="1424" y1="1808" y2="2064" x1="1424" />
            <wire x2="1504" y1="2064" y2="2064" x1="1424" />
        </branch>
        <instance x="2208" y="2384" name="XLXI_73" orien="R0" />
        <branch name="ClockIO">
            <wire x2="1488" y1="2000" y2="2000" x1="1296" />
            <wire x2="1504" y1="2000" y2="2000" x1="1488" />
            <wire x2="1488" y1="1728" y2="2000" x1="1488" />
            <wire x2="1952" y1="1728" y2="1728" x1="1488" />
            <wire x2="1952" y1="1728" y2="2000" x1="1952" />
            <wire x2="2208" y1="2000" y2="2000" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="1296" y="2000" name="ClockIO" orien="R180" />
        <instance x="1968" y="1792" name="XLXI_74" orien="R0" />
        <instance x="1968" y="2448" name="XLXI_75" orien="R0" />
        <branch name="XLXN_146">
            <wire x2="2032" y1="1792" y2="2064" x1="2032" />
            <wire x2="2208" y1="2064" y2="2064" x1="2032" />
            <wire x2="2032" y1="2064" y2="2128" x1="2032" />
            <wire x2="2208" y1="2128" y2="2128" x1="2032" />
            <wire x2="2032" y1="2128" y2="2192" x1="2032" />
            <wire x2="2208" y1="2192" y2="2192" x1="2032" />
        </branch>
        <instance x="2752" y="1936" name="XLXI_76" orien="R0" />
        <branch name="XLXN_147">
            <wire x2="2672" y1="1936" y2="1936" x1="2592" />
            <wire x2="2672" y1="1808" y2="1936" x1="2672" />
            <wire x2="2752" y1="1808" y2="1808" x1="2672" />
        </branch>
        <branch name="DataClear">
            <wire x2="3040" y1="1840" y2="1840" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1840" name="DataClear" orien="R0" />
        <branch name="RAMBClock">
            <wire x2="1904" y1="1664" y2="1664" x1="1312" />
            <wire x2="1904" y1="1664" y2="1936" x1="1904" />
            <wire x2="1312" y1="1664" y2="2512" x1="1312" />
            <wire x2="1904" y1="2512" y2="2512" x1="1312" />
            <wire x2="1904" y1="1936" y2="1936" x1="1888" />
        </branch>
        <instance x="1456" y="1504" name="XLXI_78" orien="R0" />
        <branch name="FromMCUData(15:0)">
            <wire x2="1984" y1="1168" y2="1168" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="1984" y="1168" name="FromMCUData(15:0)" orien="R0" />
        <instance x="1840" y="1472" name="XLXI_79" orien="R0" />
        <branch name="XLXN_157">
            <wire x2="1792" y1="1408" y2="1408" x1="1712" />
            <wire x2="1840" y1="1408" y2="1408" x1="1792" />
            <wire x2="1792" y1="1408" y2="1488" x1="1792" />
            <wire x2="2128" y1="1488" y2="1488" x1="1792" />
            <wire x2="2128" y1="1488" y2="2528" x1="2128" />
            <wire x2="2752" y1="2528" y2="2528" x1="2128" />
        </branch>
        <branch name="XLXN_145">
            <wire x2="2208" y1="2256" y2="2256" x1="2032" />
            <wire x2="2032" y1="2256" y2="2320" x1="2032" />
        </branch>
        <branch name="IOData(7:0)">
            <wire x2="608" y1="528" y2="528" x1="240" />
            <wire x2="640" y1="528" y2="528" x1="608" />
            <wire x2="608" y1="528" y2="752" x1="608" />
            <wire x2="1072" y1="752" y2="752" x1="608" />
            <wire x2="1072" y1="752" y2="1296" x1="1072" />
            <wire x2="1008" y1="1296" y2="1760" x1="1008" />
            <wire x2="1008" y1="1760" y2="1888" x1="1008" />
            <wire x2="1008" y1="1888" y2="2016" x1="1008" />
            <wire x2="1008" y1="2016" y2="2144" x1="1008" />
            <wire x2="1008" y1="2144" y2="2272" x1="1008" />
            <wire x2="1008" y1="2272" y2="2400" x1="1008" />
            <wire x2="1008" y1="2400" y2="2528" x1="1008" />
            <wire x2="1008" y1="2528" y2="2656" x1="1008" />
            <wire x2="1072" y1="1296" y2="1296" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1248" name="WR" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1360" name="RD" orien="R0" />
        <branch name="RAMBEnable">
            <wire x2="2704" y1="400" y2="400" x1="1760" />
            <wire x2="1760" y1="400" y2="1024" x1="1760" />
            <wire x2="1760" y1="1024" y2="1344" x1="1760" />
            <wire x2="1840" y1="1344" y2="1344" x1="1760" />
            <wire x2="2224" y1="1024" y2="1024" x1="1760" />
            <wire x2="2224" y1="1024" y2="1440" x1="2224" />
            <wire x2="2800" y1="1440" y2="1440" x1="2224" />
            <wire x2="3104" y1="1440" y2="1440" x1="2800" />
            <wire x2="2800" y1="1440" y2="1616" x1="2800" />
            <wire x2="2864" y1="1616" y2="1616" x1="2800" />
            <wire x2="2704" y1="336" y2="336" x1="2688" />
            <wire x2="2704" y1="336" y2="400" x1="2704" />
        </branch>
        <branch name="RD">
            <wire x2="752" y1="1392" y2="1392" x1="672" />
            <wire x2="752" y1="1392" y2="1504" x1="752" />
            <wire x2="1408" y1="1504" y2="1504" x1="752" />
            <wire x2="2416" y1="1504" y2="1504" x1="1408" />
            <wire x2="704" y1="1504" y2="1552" x1="704" />
            <wire x2="720" y1="1552" y2="1552" x1="704" />
            <wire x2="752" y1="1504" y2="1504" x1="704" />
            <wire x2="1456" y1="1440" y2="1440" x1="1408" />
            <wire x2="1408" y1="1440" y2="1504" x1="1408" />
            <wire x2="2320" y1="1136" y2="1136" x1="2304" />
            <wire x2="2304" y1="1136" y2="1360" x1="2304" />
            <wire x2="2416" y1="1360" y2="1360" x1="2304" />
            <wire x2="2560" y1="1360" y2="1360" x1="2416" />
            <wire x2="2416" y1="1360" y2="1504" x1="2416" />
        </branch>
        <instance x="2320" y="1200" name="XLXI_80" orien="R0" />
        <branch name="XLXN_164">
            <wire x2="2688" y1="1696" y2="1696" x1="2144" />
            <wire x2="2688" y1="1696" y2="1872" x1="2688" />
            <wire x2="2752" y1="1872" y2="1872" x1="2688" />
            <wire x2="2144" y1="1696" y2="1872" x1="2144" />
            <wire x2="2208" y1="1872" y2="1872" x1="2144" />
            <wire x2="2688" y1="1104" y2="1104" x1="2576" />
            <wire x2="2688" y1="1104" y2="1696" x1="2688" />
        </branch>
        <instance x="320" y="688" name="XLXI_7" orien="R0" />
        <iomarker fontsize="28" x="176" y="656" name="ALE" orien="R180" />
        <instance x="2432" y="704" name="XLXI_81" orien="R0" />
        <branch name="Adress(11)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2000" y="576" type="branch" />
            <wire x2="2000" y1="576" y2="576" x1="1984" />
            <wire x2="2096" y1="576" y2="576" x1="2000" />
        </branch>
        <branch name="Adress(10)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2000" y="640" type="branch" />
            <wire x2="2000" y1="640" y2="640" x1="1984" />
            <wire x2="2096" y1="640" y2="640" x1="2000" />
        </branch>
        <branch name="Adress(9)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2000" y="704" type="branch" />
            <wire x2="2000" y1="704" y2="704" x1="1984" />
            <wire x2="2096" y1="704" y2="704" x1="2000" />
        </branch>
        <branch name="Adress(8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2016" y="768" type="branch" />
            <wire x2="2016" y1="768" y2="768" x1="1984" />
            <wire x2="2096" y1="768" y2="768" x1="2016" />
        </branch>
        <bustap x2="2848" y1="720" y2="720" x1="2752" />
        <bustap x2="2848" y1="784" y2="784" x1="2752" />
        <bustap x2="2848" y1="848" y2="848" x1="2752" />
        <bustap x2="2848" y1="912" y2="912" x1="2752" />
        <branch name="Adress(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="96" type="branch" />
            <wire x2="1888" y1="96" y2="96" x1="1760" />
            <wire x2="1888" y1="96" y2="208" x1="1888" />
            <wire x2="1888" y1="208" y2="304" x1="1888" />
            <wire x2="1888" y1="304" y2="368" x1="1888" />
            <wire x2="1888" y1="368" y2="480" x1="1888" />
            <wire x2="1888" y1="480" y2="576" x1="1888" />
            <wire x2="1888" y1="576" y2="640" x1="1888" />
            <wire x2="1888" y1="640" y2="704" x1="1888" />
            <wire x2="1888" y1="704" y2="768" x1="1888" />
            <wire x2="1888" y1="768" y2="848" x1="1888" />
            <wire x2="1888" y1="848" y2="944" x1="1888" />
            <wire x2="2752" y1="944" y2="944" x1="1888" />
            <wire x2="2880" y1="576" y2="576" x1="2752" />
            <wire x2="2752" y1="576" y2="592" x1="2752" />
            <wire x2="2752" y1="592" y2="656" x1="2752" />
            <wire x2="2752" y1="656" y2="720" x1="2752" />
            <wire x2="2752" y1="720" y2="784" x1="2752" />
            <wire x2="2752" y1="784" y2="848" x1="2752" />
            <wire x2="2752" y1="848" y2="912" x1="2752" />
            <wire x2="2752" y1="912" y2="944" x1="2752" />
            <wire x2="2880" y1="176" y2="192" x1="2880" />
            <wire x2="2880" y1="192" y2="464" x1="2880" />
            <wire x2="2880" y1="464" y2="528" x1="2880" />
            <wire x2="2880" y1="528" y2="576" x1="2880" />
        </branch>
        <branch name="Adress(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="720" type="branch" />
            <wire x2="2896" y1="720" y2="720" x1="2848" />
            <wire x2="3088" y1="720" y2="720" x1="2896" />
        </branch>
        <branch name="Adress(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="784" type="branch" />
            <wire x2="2896" y1="784" y2="784" x1="2848" />
            <wire x2="3088" y1="784" y2="784" x1="2896" />
        </branch>
        <branch name="Adress(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="848" type="branch" />
            <wire x2="2896" y1="848" y2="848" x1="2848" />
            <wire x2="3088" y1="848" y2="848" x1="2896" />
        </branch>
        <branch name="Adress(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="912" type="branch" />
            <wire x2="2896" y1="912" y2="912" x1="2848" />
            <wire x2="3088" y1="912" y2="912" x1="2896" />
        </branch>
        <instance x="3104" y="1504" name="XLXI_84" orien="R0" />
        <branch name="ReadEnable">
            <wire x2="528" y1="1664" y2="1696" x1="528" />
            <wire x2="544" y1="1696" y2="1696" x1="528" />
            <wire x2="528" y1="1696" y2="1824" x1="528" />
            <wire x2="544" y1="1824" y2="1824" x1="528" />
            <wire x2="528" y1="1824" y2="1952" x1="528" />
            <wire x2="544" y1="1952" y2="1952" x1="528" />
            <wire x2="528" y1="1952" y2="2080" x1="528" />
            <wire x2="544" y1="2080" y2="2080" x1="528" />
            <wire x2="528" y1="2080" y2="2208" x1="528" />
            <wire x2="544" y1="2208" y2="2208" x1="528" />
            <wire x2="528" y1="2208" y2="2336" x1="528" />
            <wire x2="544" y1="2336" y2="2336" x1="528" />
            <wire x2="528" y1="2336" y2="2464" x1="528" />
            <wire x2="544" y1="2464" y2="2464" x1="528" />
            <wire x2="528" y1="2464" y2="2592" x1="528" />
            <wire x2="544" y1="2592" y2="2592" x1="528" />
            <wire x2="1040" y1="1664" y2="1664" x1="528" />
            <wire x2="1040" y1="1584" y2="1584" x1="976" />
            <wire x2="1040" y1="1584" y2="1664" x1="1040" />
        </branch>
        <branch name="XLXN_180">
            <wire x2="640" y1="1472" y2="1616" x1="640" />
            <wire x2="720" y1="1616" y2="1616" x1="640" />
            <wire x2="3408" y1="1472" y2="1472" x1="640" />
            <wire x2="3408" y1="1408" y2="1408" x1="3360" />
            <wire x2="3408" y1="1408" y2="1472" x1="3408" />
        </branch>
        <instance x="3088" y="976" name="XLXI_86" orien="R0" />
        <bustap x2="2976" y1="464" y2="464" x1="2880" />
        <bustap x2="2976" y1="528" y2="528" x1="2880" />
        <bustap x2="2848" y1="592" y2="592" x1="2752" />
        <bustap x2="2848" y1="656" y2="656" x1="2752" />
        <branch name="Adress(8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2912" y="656" type="branch" />
            <wire x2="2912" y1="656" y2="656" x1="2848" />
            <wire x2="3088" y1="656" y2="656" x1="2912" />
        </branch>
        <branch name="Adress(9)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3024" y="592" type="branch" />
            <wire x2="3024" y1="592" y2="592" x1="2848" />
            <wire x2="3088" y1="592" y2="592" x1="3024" />
        </branch>
        <branch name="Adress(10)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3024" y="528" type="branch" />
            <wire x2="3024" y1="528" y2="528" x1="2976" />
            <wire x2="3088" y1="528" y2="528" x1="3024" />
        </branch>
        <branch name="Adress(11)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3024" y="464" type="branch" />
            <wire x2="3024" y1="464" y2="464" x1="2976" />
            <wire x2="3088" y1="464" y2="464" x1="3024" />
        </branch>
        <iomarker fontsize="28" x="1904" y="2512" name="RAMBClock" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1616" name="RAMBEnable" orien="R0" />
        <branch name="RAMBOp">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1744" y="1568" type="branch" />
            <wire x2="1744" y1="1568" y2="1568" x1="1472" />
            <wire x2="2192" y1="1568" y2="1568" x1="1744" />
            <wire x2="1472" y1="1568" y2="1872" x1="1472" />
            <wire x2="1504" y1="1872" y2="1872" x1="1472" />
            <wire x2="2192" y1="1376" y2="1376" x1="2096" />
            <wire x2="2192" y1="1376" y2="1568" x1="2192" />
        </branch>
        <instance x="720" y="1680" name="XLXI_96" orien="R0" />
        <instance x="3152" y="304" name="XLXI_97" orien="R0" />
        <branch name="LCDAddr">
            <wire x2="3440" y1="208" y2="208" x1="3408" />
        </branch>
        <iomarker fontsize="28" x="3440" y="208" name="LCDAddr" orien="R0" />
        <branch name="IntRegSel">
            <wire x2="784" y1="1184" y2="1184" x1="736" />
            <wire x2="736" y1="1184" y2="1520" x1="736" />
            <wire x2="2704" y1="1520" y2="1520" x1="736" />
            <wire x2="2256" y1="1008" y2="1072" x1="2256" />
            <wire x2="2320" y1="1072" y2="1072" x1="2256" />
            <wire x2="2704" y1="1008" y2="1008" x1="2256" />
            <wire x2="2704" y1="1008" y2="1376" x1="2704" />
            <wire x2="2704" y1="1376" y2="1520" x1="2704" />
            <wire x2="3104" y1="1376" y2="1376" x1="2704" />
            <wire x2="2704" y1="544" y2="544" x1="2688" />
            <wire x2="2720" y1="544" y2="544" x1="2704" />
            <wire x2="2704" y1="544" y2="1008" x1="2704" />
        </branch>
        <instance x="2944" y="2384" name="XLXI_98" orien="R0" />
        <branch name="Adress(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2896" y="2064" type="branch" />
            <wire x2="2896" y1="2064" y2="2064" x1="2768" />
            <wire x2="2768" y1="2064" y2="2128" x1="2768" />
            <wire x2="2768" y1="2128" y2="2192" x1="2768" />
            <wire x2="2768" y1="2192" y2="2256" x1="2768" />
            <wire x2="2768" y1="2256" y2="2320" x1="2768" />
            <wire x2="2768" y1="2320" y2="2336" x1="2768" />
        </branch>
        <bustap x2="2864" y1="2128" y2="2128" x1="2768" />
        <bustap x2="2864" y1="2192" y2="2192" x1="2768" />
        <bustap x2="2864" y1="2256" y2="2256" x1="2768" />
        <bustap x2="2864" y1="2320" y2="2320" x1="2768" />
        <branch name="Adress(15)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="2128" type="branch" />
            <wire x2="2896" y1="2128" y2="2128" x1="2864" />
            <wire x2="2944" y1="2128" y2="2128" x1="2896" />
        </branch>
        <branch name="Adress(14)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2880" y="2192" type="branch" />
            <wire x2="2880" y1="2192" y2="2192" x1="2864" />
            <wire x2="2944" y1="2192" y2="2192" x1="2880" />
        </branch>
        <branch name="Adress(13)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2880" y="2256" type="branch" />
            <wire x2="2880" y1="2256" y2="2256" x1="2864" />
            <wire x2="2944" y1="2256" y2="2256" x1="2880" />
        </branch>
        <branch name="Adress(12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2880" y="2320" type="branch" />
            <wire x2="2880" y1="2320" y2="2320" x1="2864" />
            <wire x2="2944" y1="2320" y2="2320" x1="2880" />
        </branch>
        <branch name="XLXN_212">
            <wire x2="3088" y1="320" y2="400" x1="3088" />
            <wire x2="3504" y1="320" y2="320" x1="3088" />
            <wire x2="3504" y1="320" y2="2224" x1="3504" />
            <wire x2="3504" y1="2224" y2="2224" x1="3200" />
        </branch>
        <branch name="XLXN_170">
            <wire x2="2368" y1="208" y2="208" x1="2320" />
            <wire x2="2368" y1="208" y2="304" x1="2368" />
            <wire x2="2432" y1="304" y2="304" x1="2368" />
            <wire x2="2368" y1="304" y2="576" x1="2368" />
            <wire x2="2432" y1="576" y2="576" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="3056" y="96" name="ExtMemSel" orien="R0" />
        <instance x="2720" y="128" name="XLXI_9" orien="R0" />
        <branch name="WR">
            <wire x2="944" y1="1248" y2="1248" x1="672" />
            <wire x2="1120" y1="1248" y2="1248" x1="944" />
            <wire x2="944" y1="1248" y2="1328" x1="944" />
            <wire x2="1184" y1="1328" y2="1328" x1="944" />
            <wire x2="1184" y1="1328" y2="1376" x1="1184" />
            <wire x2="1360" y1="1376" y2="1376" x1="1184" />
            <wire x2="1456" y1="1376" y2="1376" x1="1360" />
            <wire x2="1360" y1="1376" y2="1536" x1="1360" />
            <wire x2="1824" y1="1536" y2="1536" x1="1360" />
            <wire x2="1136" y1="1216" y2="1216" x1="1120" />
            <wire x2="1120" y1="1216" y2="1248" x1="1120" />
            <wire x2="1824" y1="1248" y2="1536" x1="1824" />
            <wire x2="2560" y1="1248" y2="1248" x1="1824" />
        </branch>
        <instance x="2432" y="192" name="XLXI_99" orien="R0" />
        <branch name="XLXN_213">
            <wire x2="2720" y1="96" y2="96" x1="2688" />
        </branch>
        <bustap x2="2976" y1="192" y2="192" x1="2880" />
        <branch name="Adress(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3040" y="192" type="branch" />
            <wire x2="3040" y1="192" y2="192" x1="2976" />
            <wire x2="3056" y1="192" y2="192" x1="3040" />
            <wire x2="3056" y1="176" y2="192" x1="3056" />
            <wire x2="3152" y1="176" y2="176" x1="3056" />
        </branch>
        <instance x="3056" y="2528" name="XLXI_100" orien="R0" />
        <branch name="LCDSelect">
            <wire x2="3344" y1="2496" y2="2496" x1="3280" />
        </branch>
        <branch name="XLXN_219">
            <wire x2="3056" y1="2496" y2="2496" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3344" y="2496" name="LCDSelect" orien="R0" />
        <branch name="Adress(15)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2016" y="208" type="branch" />
            <wire x2="2016" y1="208" y2="208" x1="1984" />
            <wire x2="2048" y1="208" y2="208" x1="2016" />
            <wire x2="2096" y1="208" y2="208" x1="2048" />
            <wire x2="2432" y1="64" y2="64" x1="2048" />
            <wire x2="2048" y1="64" y2="208" x1="2048" />
        </branch>
        <branch name="LCDAd">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3376" y="624" type="branch" />
            <wire x2="2432" y1="128" y2="128" x1="2384" />
            <wire x2="2384" y1="128" y2="272" x1="2384" />
            <wire x2="3072" y1="272" y2="272" x1="2384" />
            <wire x2="3376" y1="272" y2="272" x1="3072" />
            <wire x2="3376" y1="272" y2="624" x1="3376" />
            <wire x2="3376" y1="624" y2="656" x1="3376" />
            <wire x2="3376" y1="656" y2="1024" x1="3376" />
            <wire x2="3376" y1="1024" y2="1024" x1="2736" />
            <wire x2="2736" y1="1024" y2="2464" x1="2736" />
            <wire x2="2752" y1="2464" y2="2464" x1="2736" />
            <wire x2="3152" y1="240" y2="240" x1="3072" />
            <wire x2="3072" y1="240" y2="272" x1="3072" />
            <wire x2="3376" y1="656" y2="656" x1="3344" />
        </branch>
        <instance x="2752" y="2592" name="XLXI_102" orien="R0" />
    </sheet>
</drawing>