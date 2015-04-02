<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK_High" />
        <signal name="evt" />
        <signal name="main_bus(47:0)" />
        <signal name="saw" />
        <signal name="main_bus(60)" />
        <signal name="reset" />
        <signal name="counter(47:0)" />
        <signal name="main_bus(60:0)" />
        <signal name="evt_std" />
        <signal name="sdata" />
        <signal name="ready" />
        <signal name="cs" />
        <signal name="main_bus(59:48)" />
        <signal name="CLK_ADC" />
        <signal name="adc_reset" />
        <signal name="XLXN_217" />
        <signal name="XLXN_219" />
        <signal name="s0_dbg" />
        <signal name="s1_dbg" />
        <signal name="attached_signal" />
        <signal name="as" />
        <signal name="XLXN_227" />
        <signal name="window_mode" />
        <port polarity="Input" name="CLK_High" />
        <port polarity="Input" name="evt" />
        <port polarity="Output" name="saw" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="counter(47:0)" />
        <port polarity="Output" name="main_bus(60:0)" />
        <port polarity="Input" name="evt_std" />
        <port polarity="Input" name="sdata" />
        <port polarity="Output" name="ready" />
        <port polarity="Output" name="cs" />
        <port polarity="Output" name="CLK_ADC" />
        <port polarity="Output" name="adc_reset" />
        <port polarity="Output" name="s0_dbg" />
        <port polarity="Output" name="s1_dbg" />
        <port polarity="Output" name="attached_signal" />
        <port polarity="Input" name="window_mode" />
        <blockdef name="adc_drive">
            <timestamp>2012-4-11T13:20:28</timestamp>
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="320" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="main_distribution_system">
            <timestamp>2015-4-2T13:38:40</timestamp>
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-32" y2="-32" x1="384" />
            <line x2="320" y1="-64" y2="-64" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="CB2RE_cr">
            <timestamp>2010-8-27T9:23:26</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="adc_drive" name="XLXI_84">
            <blockpin signalname="attached_signal" name="attached_signal" />
            <blockpin signalname="CLK_ADC" name="sCLK" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="sdata" name="sdata" />
            <blockpin signalname="ready" name="ready_sync" />
            <blockpin signalname="cs" name="cs" />
            <blockpin signalname="main_bus(59:48)" name="data_bus(11:0)" />
            <blockpin signalname="adc_reset" name="adc_reset" />
        </block>
        <block symbolname="main_distribution_system" name="XLXI_85">
            <blockpin signalname="CLK_High" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="evt" name="evt_ext" />
            <blockpin signalname="counter(47:0)" name="counter(47:0)" />
            <blockpin signalname="main_bus(60)" name="err" />
            <blockpin signalname="saw" name="saw" />
            <blockpin signalname="attached_signal" name="attached_signal_out" />
            <blockpin signalname="main_bus(47:0)" name="counter_out(47:0)" />
            <blockpin signalname="evt_std" name="evt_std" />
            <blockpin signalname="s0_dbg" name="s0_dbg" />
            <blockpin signalname="s1_dbg" name="s1_dbg" />
            <blockpin signalname="as" name="as" />
            <blockpin signalname="window_mode" name="window_mode" />
        </block>
        <block symbolname="CB2RE_cr" name="XLXI_97">
            <blockpin signalname="XLXN_219" name="CarryIn" />
            <blockpin signalname="CLK_High" name="CLK" />
            <blockpin signalname="XLXN_227" name="R" />
            <blockpin signalname="XLXN_217" name="CE" />
            <blockpin name="CarryOut" />
            <blockpin signalname="CLK_ADC" name="Q1" />
            <blockpin name="Q0" />
        </block>
        <block symbolname="vcc" name="XLXI_99">
            <blockpin signalname="XLXN_217" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_100">
            <blockpin signalname="XLXN_219" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_101">
            <blockpin signalname="as" name="I" />
            <blockpin signalname="XLXN_227" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="evt">
            <wire x2="1680" y1="800" y2="800" x1="1440" />
            <wire x2="1680" y1="784" y2="800" x1="1680" />
            <wire x2="1696" y1="784" y2="784" x1="1680" />
        </branch>
        <branch name="main_bus(47:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2256" y="592" type="branch" />
            <wire x2="2256" y1="592" y2="592" x1="2080" />
        </branch>
        <branch name="saw">
            <wire x2="2112" y1="720" y2="720" x1="2080" />
        </branch>
        <branch name="main_bus(60)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2112" y="784" type="branch" />
            <wire x2="2112" y1="784" y2="784" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2976" y="1104" name="main_bus(60:0)" orien="R0" />
        <branch name="main_bus(60:0)">
            <wire x2="2976" y1="1104" y2="1104" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2112" y="720" name="saw" orien="R0" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1408" y="1232" type="branch" />
            <wire x2="1664" y1="1232" y2="1232" x1="1408" />
        </branch>
        <branch name="sdata">
            <wire x2="1664" y1="1296" y2="1296" x1="1600" />
        </branch>
        <branch name="ready">
            <wire x2="2080" y1="1104" y2="1104" x1="2048" />
        </branch>
        <branch name="cs">
            <wire x2="2080" y1="1168" y2="1168" x1="2048" />
        </branch>
        <branch name="main_bus(59:48)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2080" y="1232" type="branch" />
            <wire x2="2080" y1="1232" y2="1232" x1="2048" />
        </branch>
        <branch name="adc_reset">
            <wire x2="2096" y1="1296" y2="1296" x1="2048" />
        </branch>
        <instance x="1664" y="1328" name="XLXI_84" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2080" y="1168" name="cs" orien="R0" />
        <iomarker fontsize="28" x="2080" y="1104" name="ready" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1296" name="sdata" orien="R180" />
        <iomarker fontsize="28" x="2096" y="1296" name="adc_reset" orien="R0" />
        <iomarker fontsize="28" x="1616" y="848" name="counter(47:0)" orien="R180" />
        <iomarker fontsize="28" x="1440" y="800" name="evt" orien="R180" />
        <iomarker fontsize="28" x="1616" y="752" name="evt_std" orien="R180" />
        <iomarker fontsize="28" x="1600" y="656" name="reset" orien="R180" />
        <branch name="XLXN_217">
            <wire x2="688" y1="1024" y2="1168" x1="688" />
            <wire x2="816" y1="1168" y2="1168" x1="688" />
        </branch>
        <branch name="XLXN_219">
            <wire x2="768" y1="1024" y2="1104" x1="768" />
            <wire x2="816" y1="1104" y2="1104" x1="768" />
        </branch>
        <instance x="624" y="1024" name="XLXI_99" orien="R0" />
        <instance x="704" y="1024" name="XLXI_100" orien="R0" />
        <iomarker fontsize="28" x="320" y="592" name="CLK_High" orien="R180" />
        <iomarker fontsize="28" x="1616" y="1552" name="CLK_ADC" orien="R0" />
        <branch name="attached_signal">
            <wire x2="3040" y1="960" y2="960" x1="2656" />
        </branch>
        <branch name="s1_dbg">
            <wire x2="2096" y1="848" y2="848" x1="2080" />
            <wire x2="2224" y1="848" y2="848" x1="2096" />
            <wire x2="2240" y1="848" y2="848" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="3040" y="960" name="attached_signal" orien="R0" />
        <branch name="counter(47:0)">
            <wire x2="1632" y1="848" y2="848" x1="1616" />
            <wire x2="1696" y1="848" y2="848" x1="1632" />
        </branch>
        <branch name="evt_std">
            <wire x2="1632" y1="752" y2="752" x1="1616" />
            <wire x2="1680" y1="752" y2="752" x1="1632" />
            <wire x2="1696" y1="752" y2="752" x1="1680" />
        </branch>
        <branch name="reset">
            <wire x2="1616" y1="656" y2="656" x1="1600" />
            <wire x2="1696" y1="656" y2="656" x1="1616" />
        </branch>
        <branch name="CLK_High">
            <wire x2="432" y1="592" y2="592" x1="320" />
            <wire x2="1696" y1="592" y2="592" x1="432" />
            <wire x2="432" y1="592" y2="1232" x1="432" />
            <wire x2="816" y1="1232" y2="1232" x1="432" />
        </branch>
        <instance x="1696" y="880" name="XLXI_85" orien="R0">
        </instance>
        <branch name="attached_signal">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2048" y="992" type="branch" />
            <wire x2="1584" y1="992" y2="1104" x1="1584" />
            <wire x2="1664" y1="1104" y2="1104" x1="1584" />
            <wire x2="2048" y1="992" y2="992" x1="1584" />
            <wire x2="2320" y1="992" y2="992" x1="2048" />
            <wire x2="2320" y1="656" y2="656" x1="2080" />
            <wire x2="2320" y1="656" y2="992" x1="2320" />
        </branch>
        <branch name="s0_dbg">
            <wire x2="2240" y1="816" y2="816" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2240" y="816" name="s0_dbg" orien="R0" />
        <iomarker fontsize="28" x="2240" y="848" name="s1_dbg" orien="R0" />
        <instance x="816" y="1328" name="XLXI_97" orien="R0">
        </instance>
        <branch name="as">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2160" y="624" type="branch" />
            <wire x2="2160" y1="624" y2="624" x1="2080" />
        </branch>
        <branch name="XLXN_227">
            <wire x2="816" y1="1296" y2="1296" x1="784" />
        </branch>
        <branch name="as">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="512" y="1296" type="branch" />
            <wire x2="560" y1="1296" y2="1296" x1="512" />
        </branch>
        <instance x="560" y="1328" name="XLXI_101" orien="R0" />
        <branch name="CLK_ADC">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1328" y="1104" type="branch" />
            <wire x2="1248" y1="1168" y2="1168" x1="1200" />
            <wire x2="1248" y1="1104" y2="1168" x1="1248" />
            <wire x2="1312" y1="1104" y2="1104" x1="1248" />
            <wire x2="1328" y1="1104" y2="1104" x1="1312" />
            <wire x2="1424" y1="1104" y2="1104" x1="1328" />
            <wire x2="1424" y1="1104" y2="1168" x1="1424" />
            <wire x2="1664" y1="1168" y2="1168" x1="1424" />
            <wire x2="1312" y1="1104" y2="1552" x1="1312" />
            <wire x2="1616" y1="1552" y2="1552" x1="1312" />
        </branch>
        <branch name="window_mode">
            <wire x2="1696" y1="720" y2="720" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1616" y="720" name="window_mode" orien="R180" />
    </sheet>
</drawing>