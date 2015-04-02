<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="MCU_CLK" />
        <signal name="DATA_OUT(7:0)" />
        <signal name="WR" />
        <signal name="PORT_ID(0)" />
        <signal name="PORT_ID(1)" />
        <signal name="RD" />
        <signal name="WR_FTDI_INV" />
        <signal name="data_out_ftdi(0)" />
        <signal name="data_out_ftdi(1)" />
        <signal name="data_out_ftd_ioi(0)" />
        <signal name="data_out_ftd_ioi(1)" />
        <signal name="data_out_ftdi(2)" />
        <signal name="data_out_ftdi(3)" />
        <signal name="data_out_ftd_ioi(2)" />
        <signal name="data_out_ftd_ioi(3)" />
        <signal name="data_out_ftdi(4)" />
        <signal name="data_out_ftdi(5)" />
        <signal name="data_out_ftd_ioi(4)" />
        <signal name="data_out_ftd_ioi(5)" />
        <signal name="data_out_ftd_ioi(6)" />
        <signal name="data_out_ftd_ioi(7)" />
        <signal name="data_out_ftdi(6)" />
        <signal name="data_out_ftdi(7)" />
        <signal name="dataInFTDI(0)" />
        <signal name="dataInFTDI(1)" />
        <signal name="dataInFTDI(2)" />
        <signal name="dataInFTDI(3)" />
        <signal name="dataInFTDI(4)" />
        <signal name="dataInFTDI(5)" />
        <signal name="dataInFTDI(6)" />
        <signal name="dataInFTDI(7)" />
        <signal name="XLXN_1(17:0)" />
        <signal name="ProgAddr(11:0)" />
        <signal name="PB_INPUT(7:0)" />
        <signal name="PORT_ID(2)" />
        <signal name="PORT_ID(3)" />
        <signal name="PORT_ID(5)" />
        <signal name="PORT_ID(6)" />
        <signal name="PORT_ID(7)" />
        <signal name="PORT_ID(4)" />
        <signal name="data_out_ftd_ioi(7:0)" />
        <signal name="XLXN_633" />
        <signal name="XLXN_723" />
        <signal name="presentFTDIControl" />
        <signal name="XLXN_536" />
        <signal name="XLXN_541" />
        <signal name="XLXN_543" />
        <signal name="RD_FTDI" />
        <signal name="XLXN_644" />
        <signal name="XLXN_498" />
        <signal name="WR_FTDI" />
        <signal name="XLXN_501" />
        <signal name="XLXN_526" />
        <signal name="XLXN_533" />
        <signal name="XLXN_535" />
        <signal name="data_out_ftdi(7:0)" />
        <signal name="presentInFTDI1" />
        <signal name="DATA_OUT(15:8)" />
        <signal name="XLXN_214" />
        <signal name="XLXN_215" />
        <signal name="Present1" />
        <signal name="dataFromFlash(7:0)" />
        <signal name="ToMCUData1(7:0)" />
        <signal name="controlFTDI(7:0)" />
        <signal name="controlFTDI(1)" />
        <signal name="XLXN_1075" />
        <signal name="IRQAck" />
        <signal name="PORT_ID(7:0)" />
        <signal name="XLXN_1090" />
        <signal name="XLXN_1091" />
        <signal name="dataInFTDI(7:0)" />
        <signal name="just_some_net" />
        <signal name="data_from_FTDI(7)" />
        <signal name="data_from_FTDI(6)" />
        <signal name="data_from_FTDI(5)" />
        <signal name="data_from_FTDI(4)" />
        <signal name="data_from_FTDI(3)" />
        <signal name="data_from_FTDI(2)" />
        <signal name="data_from_FTDI(1)" />
        <signal name="data_from_FTDI(0)" />
        <signal name="data_from_FTDI(7:0)" />
        <signal name="XLXN_1112" />
        <signal name="XLXN_1113" />
        <signal name="XLXN_1114" />
        <signal name="XLXN_1115" />
        <signal name="XLXN_1120" />
        <signal name="XLXN_1122" />
        <signal name="XLXN_1123" />
        <signal name="XLXN_1154" />
        <signal name="XLXN_1161" />
        <signal name="XLXN_1162" />
        <signal name="XLXN_1163" />
        <signal name="DATA_OUT(15:0)" />
        <signal name="presentFTDIibus" />
        <signal name="PB_INPUT(0)" />
        <signal name="PB_INPUT(1)" />
        <signal name="PB_INt0" />
        <signal name="PB_INt1" />
        <signal name="XLXN_1164" />
        <signal name="XLXN_1169" />
        <signal name="XLXN_1170" />
        <signal name="XLXN_1171" />
        <signal name="XLXN_1176" />
        <signal name="XLXN_1181" />
        <signal name="dataFromFlashPresent" />
        <port polarity="Input" name="MCU_CLK" />
        <port polarity="Output" name="WR" />
        <port polarity="Output" name="RD" />
        <port polarity="Output" name="ProgAddr(11:0)" />
        <port polarity="BiDirectional" name="data_out_ftd_ioi(7:0)" />
        <port polarity="Output" name="presentFTDIControl" />
        <port polarity="Output" name="RD_FTDI" />
        <port polarity="Output" name="WR_FTDI" />
        <port polarity="Input" name="Present1" />
        <port polarity="Input" name="ToMCUData1(7:0)" />
        <port polarity="Input" name="controlFTDI(7:0)" />
        <port polarity="Output" name="IRQAck" />
        <port polarity="Output" name="PORT_ID(7:0)" />
        <port polarity="Output" name="data_from_FTDI(7:0)" />
        <port polarity="Output" name="DATA_OUT(15:0)" />
        <port polarity="Output" name="PB_INt0" />
        <port polarity="Output" name="PB_INt1" />
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
        <blockdef name="srl16">
            <timestamp>2000-1-1T10:10:10</timestamp>
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
        <blockdef name="fd8re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
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
        <blockdef name="iobuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="128" y1="-128" y2="-128" x1="224" />
            <line x2="128" y1="-64" y2="-64" x1="160" />
            <line x2="160" y1="-128" y2="-64" x1="160" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="96" y1="-140" y2="-192" x1="96" />
            <line x2="96" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-96" y2="-160" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="128" />
            <line x2="128" y1="-160" y2="-128" x1="64" />
            <line x2="128" y1="-96" y2="-32" x1="128" />
            <line x2="128" y1="-64" y2="-96" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
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
        <blockdef name="and8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-512" x1="64" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="144" y1="-336" y2="-336" x1="64" />
            <line x2="64" y1="-240" y2="-240" x1="144" />
            <arc ex="144" ey="-336" sx="144" sy="-240" r="48" cx="144" cy="-288" />
            <line x2="192" y1="-288" y2="-288" x1="256" />
        </blockdef>
        <blockdef name="kcpsm6">
            <timestamp>2013-9-28T13:51:6</timestamp>
            <rect width="336" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <rect width="64" x="400" y="-492" height="24" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <rect width="64" x="400" y="-364" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="coderom">
            <timestamp>2013-9-28T14:3:50</timestamp>
            <rect width="352" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="iobuf" name="XLXI_223">
            <blockpin signalname="data_out_ftdi(0)" name="I" />
            <blockpin signalname="data_out_ftd_ioi(0)" name="IO" />
            <blockpin signalname="dataInFTDI(0)" name="O" />
            <blockpin signalname="WR_FTDI_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_224">
            <blockpin signalname="data_out_ftdi(1)" name="I" />
            <blockpin signalname="data_out_ftd_ioi(1)" name="IO" />
            <blockpin signalname="dataInFTDI(1)" name="O" />
            <blockpin signalname="WR_FTDI_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_225">
            <blockpin signalname="data_out_ftdi(2)" name="I" />
            <blockpin signalname="data_out_ftd_ioi(2)" name="IO" />
            <blockpin signalname="dataInFTDI(2)" name="O" />
            <blockpin signalname="WR_FTDI_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_226">
            <blockpin signalname="data_out_ftdi(3)" name="I" />
            <blockpin signalname="data_out_ftd_ioi(3)" name="IO" />
            <blockpin signalname="dataInFTDI(3)" name="O" />
            <blockpin signalname="WR_FTDI_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_227">
            <blockpin signalname="data_out_ftdi(4)" name="I" />
            <blockpin signalname="data_out_ftd_ioi(4)" name="IO" />
            <blockpin signalname="dataInFTDI(4)" name="O" />
            <blockpin signalname="WR_FTDI_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_228">
            <blockpin signalname="data_out_ftdi(5)" name="I" />
            <blockpin signalname="data_out_ftd_ioi(5)" name="IO" />
            <blockpin signalname="dataInFTDI(5)" name="O" />
            <blockpin signalname="WR_FTDI_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_229">
            <blockpin signalname="data_out_ftdi(6)" name="I" />
            <blockpin signalname="data_out_ftd_ioi(6)" name="IO" />
            <blockpin signalname="dataInFTDI(6)" name="O" />
            <blockpin signalname="WR_FTDI_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_230">
            <blockpin signalname="data_out_ftdi(7)" name="I" />
            <blockpin signalname="data_out_ftd_ioi(7)" name="IO" />
            <blockpin signalname="dataInFTDI(7)" name="O" />
            <blockpin signalname="WR_FTDI_INV" name="T" />
        </block>
        <block symbolname="fdce" name="XLXI_219">
            <blockpin signalname="MCU_CLK" name="C" />
            <blockpin signalname="XLXN_541" name="CE" />
            <blockpin signalname="XLXN_543" name="CLR" />
            <blockpin signalname="WR" name="D" />
            <blockpin signalname="XLXN_644" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_220">
            <blockpin signalname="XLXN_543" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_256">
            <blockpin signalname="XLXN_644" name="I" />
            <blockpin signalname="presentFTDIibus" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_217">
            <blockpin signalname="RD" name="I0" />
            <blockpin signalname="WR" name="I1" />
            <blockpin signalname="XLXN_536" name="O" />
        </block>
        <block symbolname="and8" name="XLXI_269">
            <blockpin signalname="PORT_ID(7)" name="I0" />
            <blockpin signalname="PORT_ID(6)" name="I1" />
            <blockpin signalname="PORT_ID(5)" name="I2" />
            <blockpin signalname="PORT_ID(4)" name="I3" />
            <blockpin signalname="XLXN_1115" name="I4" />
            <blockpin signalname="XLXN_1114" name="I5" />
            <blockpin signalname="XLXN_1113" name="I6" />
            <blockpin signalname="XLXN_1112" name="I7" />
            <blockpin signalname="just_some_net" name="O" />
        </block>
        <block symbolname="and8" name="XLXI_292">
            <blockpin signalname="PORT_ID(7)" name="I0" />
            <blockpin signalname="PORT_ID(6)" name="I1" />
            <blockpin signalname="PORT_ID(5)" name="I2" />
            <blockpin signalname="PORT_ID(4)" name="I3" />
            <blockpin signalname="XLXN_1123" name="I4" />
            <blockpin signalname="XLXN_1122" name="I5" />
            <blockpin signalname="PORT_ID(1)" name="I6" />
            <blockpin signalname="XLXN_1120" name="I7" />
            <blockpin signalname="XLXN_1154" name="O" />
        </block>
        <block symbolname="srl16" name="XLXI_205">
            <blockpin signalname="XLXN_535" name="A0" />
            <blockpin signalname="XLXN_535" name="A1" />
            <blockpin signalname="XLXN_533" name="A2" />
            <blockpin signalname="XLXN_533" name="A3" />
            <blockpin signalname="MCU_CLK" name="CLK" />
            <blockpin signalname="WR_FTDI" name="D" />
            <blockpin signalname="XLXN_501" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_208">
            <blockpin signalname="XLXN_498" name="P" />
        </block>
        <block symbolname="fdre" name="XLXI_204">
            <blockpin signalname="MCU_CLK" name="C" />
            <blockpin signalname="presentInFTDI1" name="CE" />
            <blockpin signalname="XLXN_498" name="D" />
            <blockpin signalname="XLXN_501" name="R" />
            <blockpin signalname="WR_FTDI" name="Q" />
        </block>
        <block symbolname="fd8re" name="XLXI_210">
            <blockpin signalname="MCU_CLK" name="C" />
            <blockpin signalname="presentInFTDI1" name="CE" />
            <blockpin signalname="DATA_OUT(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_526" name="R" />
            <blockpin signalname="data_out_ftdi(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_211">
            <blockpin signalname="XLXN_526" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_212">
            <blockpin signalname="XLXN_533" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_214">
            <blockpin signalname="XLXN_535" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_247">
            <blockpin signalname="WR_FTDI" name="I" />
            <blockpin signalname="WR_FTDI_INV" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_116">
            <blockpin signalname="XLXN_214" name="G" />
        </block>
        <block symbolname="and2" name="XLXI_115">
            <blockpin signalname="PORT_ID(0)" name="I0" />
            <blockpin signalname="WR" name="I1" />
            <blockpin signalname="XLXN_215" name="O" />
        </block>
        <block symbolname="fd8ce" name="XLXI_113">
            <blockpin signalname="MCU_CLK" name="C" />
            <blockpin signalname="XLXN_215" name="CE" />
            <blockpin signalname="XLXN_214" name="CLR" />
            <blockpin signalname="DATA_OUT(7:0)" name="D(7:0)" />
            <blockpin signalname="DATA_OUT(15:8)" name="Q(7:0)" />
        </block>
        <block symbolname="IMux4x1x8" name="XLXI_142">
            <blockpin signalname="dataInFTDI(7:0)" name="InData0(7:0)" />
            <blockpin signalname="controlFTDI(7:0)" name="InData1(7:0)" />
            <blockpin signalname="ToMCUData1(7:0)" name="InData2(7:0)" />
            <blockpin signalname="dataFromFlash(7:0)" name="InData3(7:0)" />
            <blockpin signalname="dataFromFlashPresent" name="Present3" />
            <blockpin signalname="Present1" name="Present2" />
            <blockpin signalname="presentFTDIControl" name="Present1" />
            <blockpin signalname="XLXN_1164" name="Present0" />
            <blockpin signalname="PB_INPUT(7:0)" name="OutData(7:0)" />
            <blockpin name="Present" />
        </block>
        <block symbolname="inv" name="XLXI_291">
            <blockpin signalname="controlFTDI(1)" name="I" />
            <blockpin signalname="XLXN_723" name="O" />
        </block>
        <block symbolname="kcpsm6" name="XLXI_419">
            <blockpin signalname="XLXN_1(17:0)" name="instruction(17:0)" />
            <blockpin signalname="PB_INPUT(7:0)" name="in_port(7:0)" />
            <blockpin signalname="XLXN_723" name="interrupt" />
            <blockpin signalname="XLXN_1075" name="sleep" />
            <blockpin signalname="XLXN_1091" name="reset" />
            <blockpin signalname="MCU_CLK" name="clk" />
            <blockpin signalname="ProgAddr(11:0)" name="address(11:0)" />
            <blockpin signalname="XLXN_1090" name="bram_enable" />
            <blockpin signalname="DATA_OUT(7:0)" name="out_port(7:0)" />
            <blockpin signalname="PORT_ID(7:0)" name="port_id(7:0)" />
            <blockpin signalname="WR" name="write_strobe" />
            <blockpin name="k_write_strobe" />
            <blockpin signalname="RD" name="read_strobe" />
            <blockpin signalname="IRQAck" name="interrupt_ack" />
        </block>
        <block symbolname="gnd" name="XLXI_421">
            <blockpin signalname="XLXN_1075" name="G" />
        </block>
        <block symbolname="coderom" name="XLXI_422">
            <blockpin signalname="ProgAddr(11:0)" name="address(11:0)" />
            <blockpin signalname="XLXN_1090" name="enable" />
            <blockpin signalname="MCU_CLK" name="clk" />
            <blockpin signalname="XLXN_1(17:0)" name="instruction(17:0)" />
            <blockpin signalname="XLXN_1091" name="rdl" />
        </block>
        <block symbolname="buf" name="XLXI_427">
            <blockpin signalname="dataInFTDI(1)" name="I" />
            <blockpin signalname="data_from_FTDI(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_428">
            <blockpin signalname="dataInFTDI(2)" name="I" />
            <blockpin signalname="data_from_FTDI(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_429">
            <blockpin signalname="dataInFTDI(3)" name="I" />
            <blockpin signalname="data_from_FTDI(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_430">
            <blockpin signalname="dataInFTDI(4)" name="I" />
            <blockpin signalname="data_from_FTDI(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_431">
            <blockpin signalname="dataInFTDI(5)" name="I" />
            <blockpin signalname="data_from_FTDI(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_432">
            <blockpin signalname="dataInFTDI(6)" name="I" />
            <blockpin signalname="data_from_FTDI(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_433">
            <blockpin signalname="dataInFTDI(7)" name="I" />
            <blockpin signalname="data_from_FTDI(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_426">
            <blockpin signalname="dataInFTDI(0)" name="I" />
            <blockpin signalname="data_from_FTDI(0)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_439">
            <blockpin signalname="XLXN_633" name="I0" />
            <blockpin signalname="WR" name="I1" />
            <blockpin signalname="presentInFTDI1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_444">
            <blockpin signalname="PORT_ID(3)" name="I" />
            <blockpin signalname="XLXN_1115" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_445">
            <blockpin signalname="PORT_ID(2)" name="I" />
            <blockpin signalname="XLXN_1114" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_446">
            <blockpin signalname="PORT_ID(1)" name="I" />
            <blockpin signalname="XLXN_1113" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_447">
            <blockpin signalname="PORT_ID(0)" name="I" />
            <blockpin signalname="XLXN_1112" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_448">
            <blockpin signalname="just_some_net" name="I0" />
            <blockpin signalname="XLXN_536" name="I1" />
            <blockpin signalname="XLXN_541" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_449">
            <blockpin signalname="PORT_ID(0)" name="I" />
            <blockpin signalname="XLXN_1120" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_451">
            <blockpin signalname="PORT_ID(2)" name="I" />
            <blockpin signalname="XLXN_1122" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_452">
            <blockpin signalname="PORT_ID(3)" name="I" />
            <blockpin signalname="XLXN_1123" name="O" />
        </block>
        <block symbolname="and8" name="XLXI_271">
            <blockpin signalname="PORT_ID(7)" name="I0" />
            <blockpin signalname="PORT_ID(6)" name="I1" />
            <blockpin signalname="PORT_ID(5)" name="I2" />
            <blockpin signalname="PORT_ID(4)" name="I3" />
            <blockpin signalname="XLXN_1163" name="I4" />
            <blockpin signalname="XLXN_1162" name="I5" />
            <blockpin signalname="XLXN_1161" name="I6" />
            <blockpin signalname="PORT_ID(0)" name="I7" />
            <blockpin signalname="XLXN_633" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_461">
            <blockpin signalname="XLXN_1154" name="I0" />
            <blockpin signalname="RD" name="I1" />
            <blockpin signalname="presentFTDIControl" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_466">
            <blockpin signalname="PORT_ID(1)" name="I" />
            <blockpin signalname="XLXN_1161" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_467">
            <blockpin signalname="PORT_ID(2)" name="I" />
            <blockpin signalname="XLXN_1162" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_468">
            <blockpin signalname="PORT_ID(3)" name="I" />
            <blockpin signalname="XLXN_1163" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_469">
            <blockpin signalname="presentFTDIibus" name="I" />
            <blockpin signalname="RD_FTDI" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_470">
            <blockpin signalname="PB_INPUT(0)" name="I" />
            <blockpin signalname="PB_INt0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_471">
            <blockpin signalname="PB_INPUT(1)" name="I" />
            <blockpin signalname="PB_INt1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_472">
            <blockpin signalname="presentFTDIibus" name="I" />
            <blockpin signalname="XLXN_1164" name="O" />
        </block>
        <block symbolname="and8" name="XLXI_473">
            <blockpin signalname="PORT_ID(7)" name="I0" />
            <blockpin signalname="PORT_ID(6)" name="I1" />
            <blockpin signalname="PORT_ID(5)" name="I2" />
            <blockpin signalname="XLXN_1176" name="I3" />
            <blockpin signalname="XLXN_1171" name="I4" />
            <blockpin signalname="XLXN_1170" name="I5" />
            <blockpin signalname="XLXN_1169" name="I6" />
            <blockpin signalname="PORT_ID(0)" name="I7" />
            <blockpin signalname="XLXN_1181" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_474">
            <blockpin signalname="PORT_ID(2)" name="I" />
            <blockpin signalname="XLXN_1170" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_475">
            <blockpin signalname="PORT_ID(3)" name="I" />
            <blockpin signalname="XLXN_1171" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_476">
            <blockpin signalname="PORT_ID(1)" name="I" />
            <blockpin signalname="XLXN_1169" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_477">
            <blockpin signalname="PORT_ID(4)" name="I" />
            <blockpin signalname="XLXN_1176" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_478">
            <blockpin signalname="XLXN_1181" name="I0" />
            <blockpin signalname="RD" name="I1" />
            <blockpin signalname="dataFromFlashPresent" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="4880" y="512" name="XLXI_223" orien="R0" />
        <instance x="4880" y="720" name="XLXI_224" orien="R0" />
        <branch name="WR_FTDI_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4816" y="320" type="branch" />
            <wire x2="4880" y1="320" y2="320" x1="4816" />
        </branch>
        <branch name="WR_FTDI_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4816" y="528" type="branch" />
            <wire x2="4880" y1="528" y2="528" x1="4816" />
        </branch>
        <branch name="WR_FTDI_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4816" y="736" type="branch" />
            <wire x2="4880" y1="736" y2="736" x1="4816" />
        </branch>
        <branch name="data_out_ftdi(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4832" y="384" type="branch" />
            <wire x2="4880" y1="384" y2="384" x1="4832" />
        </branch>
        <branch name="data_out_ftdi(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4832" y="592" type="branch" />
            <wire x2="4880" y1="592" y2="592" x1="4832" />
        </branch>
        <branch name="data_out_ftd_ioi(0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="5152" y="384" type="branch" />
            <wire x2="5152" y1="384" y2="384" x1="5104" />
        </branch>
        <branch name="data_out_ftd_ioi(1)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="5152" y="592" type="branch" />
            <wire x2="5152" y1="592" y2="592" x1="5104" />
        </branch>
        <instance x="4880" y="928" name="XLXI_225" orien="R0" />
        <instance x="4880" y="1120" name="XLXI_226" orien="R0" />
        <branch name="WR_FTDI_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4800" y="928" type="branch" />
            <wire x2="4880" y1="928" y2="928" x1="4800" />
        </branch>
        <branch name="data_out_ftdi(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4832" y="800" type="branch" />
            <wire x2="4880" y1="800" y2="800" x1="4832" />
        </branch>
        <branch name="data_out_ftdi(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4832" y="992" type="branch" />
            <wire x2="4880" y1="992" y2="992" x1="4832" />
        </branch>
        <branch name="data_out_ftd_ioi(2)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="5152" y="800" type="branch" />
            <wire x2="5152" y1="800" y2="800" x1="5104" />
        </branch>
        <branch name="data_out_ftd_ioi(3)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="5152" y="992" type="branch" />
            <wire x2="5152" y1="992" y2="992" x1="5104" />
        </branch>
        <instance x="4880" y="1328" name="XLXI_227" orien="R0" />
        <instance x="4880" y="1520" name="XLXI_228" orien="R0" />
        <branch name="WR_FTDI_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4800" y="1136" type="branch" />
            <wire x2="4880" y1="1136" y2="1136" x1="4800" />
        </branch>
        <branch name="WR_FTDI_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4800" y="1328" type="branch" />
            <wire x2="4880" y1="1328" y2="1328" x1="4800" />
        </branch>
        <branch name="WR_FTDI_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4800" y="1536" type="branch" />
            <wire x2="4880" y1="1536" y2="1536" x1="4800" />
        </branch>
        <branch name="data_out_ftdi(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4832" y="1200" type="branch" />
            <wire x2="4880" y1="1200" y2="1200" x1="4832" />
        </branch>
        <branch name="data_out_ftdi(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4832" y="1392" type="branch" />
            <wire x2="4880" y1="1392" y2="1392" x1="4832" />
        </branch>
        <branch name="data_out_ftd_ioi(4)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="5152" y="1200" type="branch" />
            <wire x2="5152" y1="1200" y2="1200" x1="5104" />
        </branch>
        <branch name="data_out_ftd_ioi(5)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="5152" y="1392" type="branch" />
            <wire x2="5152" y1="1392" y2="1392" x1="5104" />
        </branch>
        <branch name="data_out_ftd_ioi(6)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="5152" y="1600" type="branch" />
            <wire x2="5152" y1="1600" y2="1600" x1="5104" />
        </branch>
        <branch name="data_out_ftd_ioi(7)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="5152" y="1808" type="branch" />
            <wire x2="5152" y1="1808" y2="1808" x1="5104" />
        </branch>
        <instance x="4880" y="1728" name="XLXI_229" orien="R0" />
        <instance x="4880" y="1936" name="XLXI_230" orien="R0" />
        <branch name="WR_FTDI_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4816" y="1744" type="branch" />
            <wire x2="4880" y1="1744" y2="1744" x1="4816" />
        </branch>
        <branch name="data_out_ftdi(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4832" y="1600" type="branch" />
            <wire x2="4880" y1="1600" y2="1600" x1="4832" />
        </branch>
        <branch name="data_out_ftdi(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4832" y="1808" type="branch" />
            <wire x2="4880" y1="1808" y2="1808" x1="4832" />
        </branch>
        <branch name="dataInFTDI(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4800" y="448" type="branch" />
            <wire x2="4880" y1="448" y2="448" x1="4800" />
        </branch>
        <branch name="dataInFTDI(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4800" y="656" type="branch" />
            <wire x2="4880" y1="656" y2="656" x1="4800" />
        </branch>
        <branch name="dataInFTDI(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4816" y="864" type="branch" />
            <wire x2="4880" y1="864" y2="864" x1="4816" />
        </branch>
        <branch name="dataInFTDI(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4816" y="1056" type="branch" />
            <wire x2="4880" y1="1056" y2="1056" x1="4816" />
        </branch>
        <branch name="dataInFTDI(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4816" y="1264" type="branch" />
            <wire x2="4880" y1="1264" y2="1264" x1="4816" />
        </branch>
        <branch name="dataInFTDI(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4800" y="1456" type="branch" />
            <wire x2="4880" y1="1456" y2="1456" x1="4800" />
        </branch>
        <branch name="dataInFTDI(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4816" y="1664" type="branch" />
            <wire x2="4880" y1="1664" y2="1664" x1="4816" />
        </branch>
        <branch name="dataInFTDI(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4816" y="1872" type="branch" />
            <wire x2="4880" y1="1872" y2="1872" x1="4816" />
        </branch>
        <branch name="ProgAddr(11:0)">
            <wire x2="912" y1="48" y2="208" x1="912" />
            <wire x2="1008" y1="208" y2="208" x1="912" />
            <wire x2="1600" y1="48" y2="48" x1="912" />
            <wire x2="1600" y1="48" y2="720" x1="1600" />
            <wire x2="1888" y1="720" y2="720" x1="1600" />
            <wire x2="1600" y1="720" y2="720" x1="1440" />
        </branch>
        <branch name="data_out_ftd_ioi(7:0)">
            <wire x2="4896" y1="2096" y2="2096" x1="4720" />
        </branch>
        <iomarker fontsize="28" x="4896" y="2096" name="data_out_ftd_ioi(7:0)" orien="R0" />
        <branch name="XLXN_536">
            <wire x2="912" y1="2496" y2="2496" x1="832" />
        </branch>
        <branch name="WR">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="416" y="2464" type="branch" />
            <wire x2="496" y1="2464" y2="2464" x1="416" />
            <wire x2="576" y1="2464" y2="2464" x1="496" />
            <wire x2="1024" y1="2416" y2="2416" x1="496" />
            <wire x2="1024" y1="2416" y2="2464" x1="1024" />
            <wire x2="1216" y1="2464" y2="2464" x1="1024" />
            <wire x2="496" y1="2416" y2="2464" x1="496" />
        </branch>
        <branch name="RD">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="416" y="2528" type="branch" />
            <wire x2="576" y1="2528" y2="2528" x1="416" />
        </branch>
        <instance x="1216" y="2720" name="XLXI_219" orien="R0" />
        <branch name="XLXN_541">
            <wire x2="1216" y1="2528" y2="2528" x1="1168" />
        </branch>
        <branch name="MCU_CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1184" y="2592" type="branch" />
            <wire x2="1216" y1="2592" y2="2592" x1="1184" />
        </branch>
        <branch name="presentFTDIibus">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1936" y="2464" type="branch" />
            <wire x2="1936" y1="2464" y2="2464" x1="1888" />
        </branch>
        <branch name="XLXN_644">
            <wire x2="1664" y1="2464" y2="2464" x1="1600" />
        </branch>
        <instance x="1664" y="2496" name="XLXI_256" orien="R0" />
        <instance x="576" y="2592" name="XLXI_217" orien="R0" />
        <branch name="just_some_net">
            <wire x2="912" y1="2976" y2="2976" x1="752" />
            <wire x2="912" y1="2560" y2="2976" x1="912" />
        </branch>
        <instance x="496" y="3264" name="XLXI_269" orien="R0" />
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="128" y="3136" type="branch" />
            <wire x2="496" y1="3136" y2="3136" x1="128" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="128" y="3008" type="branch" />
            <wire x2="496" y1="3008" y2="3008" x1="128" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="128" y="3072" type="branch" />
            <wire x2="496" y1="3072" y2="3072" x1="128" />
        </branch>
        <instance x="1488" y="3360" name="XLXI_292" orien="R0" />
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1424" y="3232" type="branch" />
            <wire x2="1488" y1="3232" y2="3232" x1="1424" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1424" y="3168" type="branch" />
            <wire x2="1488" y1="3168" y2="3168" x1="1424" />
        </branch>
        <branch name="XLXN_633">
            <wire x2="2448" y1="2688" y2="2688" x1="2432" />
            <wire x2="2432" y1="2688" y2="2848" x1="2432" />
            <wire x2="2880" y1="2848" y2="2848" x1="2432" />
            <wire x2="2880" y1="2848" y2="3152" x1="2880" />
            <wire x2="2880" y1="3152" y2="3152" x1="2816" />
        </branch>
        <branch name="MCU_CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2912" y="2720" type="branch" />
            <wire x2="3024" y1="2720" y2="2720" x1="2912" />
        </branch>
        <instance x="3648" y="3264" name="XLXI_205" orien="R0" />
        <branch name="XLXN_498">
            <wire x2="2976" y1="2512" y2="2592" x1="2976" />
            <wire x2="3024" y1="2592" y2="2592" x1="2976" />
        </branch>
        <instance x="2912" y="2512" name="XLXI_208" orien="R0" />
        <branch name="WR">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2384" y="2624" type="branch" />
            <wire x2="2448" y1="2624" y2="2624" x1="2384" />
        </branch>
        <branch name="MCU_CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3520" y="2272" type="branch" />
            <wire x2="3616" y1="2272" y2="2272" x1="3520" />
        </branch>
        <branch name="MCU_CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3584" y="2880" type="branch" />
            <wire x2="3648" y1="2880" y2="2880" x1="3584" />
        </branch>
        <branch name="WR_FTDI">
            <wire x2="3632" y1="2592" y2="2592" x1="3408" />
            <wire x2="3632" y1="2592" y2="2752" x1="3632" />
            <wire x2="3648" y1="2752" y2="2752" x1="3632" />
            <wire x2="4176" y1="2592" y2="2592" x1="3632" />
            <wire x2="4176" y1="2592" y2="2720" x1="4176" />
            <wire x2="4192" y1="2720" y2="2720" x1="4176" />
            <wire x2="4448" y1="2592" y2="2592" x1="4176" />
        </branch>
        <instance x="3024" y="2848" name="XLXI_204" orien="R0" />
        <branch name="XLXN_501">
            <wire x2="3008" y1="2816" y2="3296" x1="3008" />
            <wire x2="4048" y1="3296" y2="3296" x1="3008" />
            <wire x2="3024" y1="2816" y2="2816" x1="3008" />
            <wire x2="4048" y1="2816" y2="2816" x1="4032" />
            <wire x2="4048" y1="2816" y2="3296" x1="4048" />
        </branch>
        <instance x="3616" y="2400" name="XLXI_210" orien="R0" />
        <branch name="XLXN_526">
            <wire x2="3616" y1="2368" y2="2416" x1="3616" />
        </branch>
        <instance x="3552" y="2544" name="XLXI_211" orien="R0" />
        <branch name="DATA_OUT(7:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3504" y="2144" type="branch" />
            <wire x2="3616" y1="2144" y2="2144" x1="3504" />
        </branch>
        <branch name="XLXN_533">
            <wire x2="3536" y1="3136" y2="3136" x1="3376" />
            <wire x2="3648" y1="3136" y2="3136" x1="3536" />
            <wire x2="3648" y1="3072" y2="3072" x1="3536" />
            <wire x2="3536" y1="3072" y2="3136" x1="3536" />
        </branch>
        <instance x="3312" y="3264" name="XLXI_212" orien="R0" />
        <instance x="3312" y="2944" name="XLXI_214" orien="R0" />
        <branch name="XLXN_535">
            <wire x2="3536" y1="2944" y2="2944" x1="3376" />
            <wire x2="3648" y1="2944" y2="2944" x1="3536" />
            <wire x2="3536" y1="2944" y2="3008" x1="3536" />
            <wire x2="3648" y1="3008" y2="3008" x1="3536" />
        </branch>
        <branch name="WR_FTDI_INV">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="4464" y="2720" type="branch" />
            <wire x2="4464" y1="2720" y2="2720" x1="4416" />
        </branch>
        <instance x="4192" y="2752" name="XLXI_247" orien="R0" />
        <branch name="data_out_ftdi(7:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="4144" y="2144" type="branch" />
            <wire x2="4144" y1="2144" y2="2144" x1="4000" />
        </branch>
        <branch name="presentInFTDI1">
            <wire x2="2752" y1="2656" y2="2656" x1="2704" />
            <wire x2="3024" y1="2656" y2="2656" x1="2752" />
            <wire x2="3616" y1="2208" y2="2208" x1="2752" />
            <wire x2="2752" y1="2208" y2="2656" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="4448" y="2592" name="WR_FTDI" orien="R0" />
        <branch name="DATA_OUT(7:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3808" y="1456" type="branch" />
            <wire x2="3888" y1="1456" y2="1456" x1="3808" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3520" y="1552" type="branch" />
            <wire x2="3568" y1="1552" y2="1552" x1="3520" />
        </branch>
        <branch name="WR">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3504" y="1488" type="branch" />
            <wire x2="3568" y1="1488" y2="1488" x1="3504" />
        </branch>
        <branch name="DATA_OUT(15:8)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="4304" y="1456" type="branch" />
            <wire x2="4304" y1="1456" y2="1456" x1="4272" />
        </branch>
        <branch name="XLXN_214">
            <wire x2="3888" y1="1680" y2="1696" x1="3888" />
        </branch>
        <instance x="3824" y="1824" name="XLXI_116" orien="R0" />
        <instance x="3568" y="1616" name="XLXI_115" orien="R0" />
        <branch name="MCU_CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3808" y="1584" type="branch" />
            <wire x2="3888" y1="1584" y2="1584" x1="3808" />
        </branch>
        <branch name="XLXN_215">
            <wire x2="3888" y1="1520" y2="1520" x1="3824" />
        </branch>
        <instance x="3888" y="1712" name="XLXI_113" orien="R0" />
        <branch name="dataFromFlashPresent">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="2032" type="branch" />
            <wire x2="880" y1="2032" y2="2032" x1="608" />
            <wire x2="992" y1="2032" y2="2032" x1="880" />
        </branch>
        <branch name="ToMCUData1(7:0)">
            <wire x2="992" y1="1840" y2="1840" x1="608" />
        </branch>
        <branch name="presentFTDIControl">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="624" y="1776" type="branch" />
            <wire x2="992" y1="1776" y2="1776" x1="624" />
        </branch>
        <branch name="controlFTDI(7:0)">
            <wire x2="992" y1="1712" y2="1712" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="1840" name="ToMCUData1(7:0)" orien="R180" />
        <branch name="MCU_CLK">
            <wire x2="752" y1="336" y2="336" x1="592" />
            <wire x2="1008" y1="336" y2="336" x1="752" />
            <wire x2="752" y1="336" y2="1040" x1="752" />
            <wire x2="976" y1="1040" y2="1040" x1="752" />
        </branch>
        <branch name="PB_INPUT(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1072" y="1376" type="branch" />
            <wire x2="848" y1="784" y2="1376" x1="848" />
            <wire x2="1072" y1="1376" y2="1376" x1="848" />
            <wire x2="1392" y1="1376" y2="1376" x1="1072" />
            <wire x2="1392" y1="1376" y2="1584" x1="1392" />
            <wire x2="976" y1="784" y2="784" x1="848" />
            <wire x2="1392" y1="1584" y2="1584" x1="1376" />
        </branch>
        <branch name="XLXN_1(17:0)">
            <wire x2="1536" y1="544" y2="544" x1="848" />
            <wire x2="848" y1="544" y2="720" x1="848" />
            <wire x2="976" y1="720" y2="720" x1="848" />
            <wire x2="1536" y1="208" y2="208" x1="1488" />
            <wire x2="1536" y1="208" y2="544" x1="1536" />
        </branch>
        <branch name="XLXN_723">
            <wire x2="976" y1="848" y2="848" x1="688" />
        </branch>
        <iomarker fontsize="28" x="1888" y="720" name="ProgAddr(11:0)" orien="R0" />
        <branch name="controlFTDI(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="400" y="848" type="branch" />
            <wire x2="464" y1="848" y2="848" x1="400" />
        </branch>
        <instance x="464" y="880" name="XLXI_291" orien="R0" />
        <instance x="976" y="1200" name="XLXI_419" orien="R0">
        </instance>
        <branch name="XLXN_1075">
            <wire x2="464" y1="912" y2="1072" x1="464" />
            <wire x2="976" y1="912" y2="912" x1="464" />
        </branch>
        <instance x="400" y="1200" name="XLXI_421" orien="R0" />
        <iomarker fontsize="28" x="2032" y="1168" name="IRQAck" orien="R0" />
        <branch name="IRQAck">
            <wire x2="2032" y1="1168" y2="1168" x1="1440" />
        </branch>
        <branch name="RD">
            <wire x2="2032" y1="1104" y2="1104" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1104" name="RD" orien="R0" />
        <branch name="WR">
            <wire x2="2032" y1="976" y2="976" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="2032" y="976" name="WR" orien="R0" />
        <branch name="DATA_OUT(7:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1984" y="848" type="branch" />
            <wire x2="1984" y1="848" y2="848" x1="1440" />
        </branch>
        <branch name="PORT_ID(7:0)">
            <wire x2="2016" y1="912" y2="912" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="2016" y="912" name="PORT_ID(7:0)" orien="R0" />
        <instance x="1008" y="368" name="XLXI_422" orien="R0">
        </instance>
        <iomarker fontsize="28" x="592" y="336" name="MCU_CLK" orien="R180" />
        <branch name="XLXN_1090">
            <wire x2="944" y1="112" y2="272" x1="944" />
            <wire x2="1008" y1="272" y2="272" x1="944" />
            <wire x2="1568" y1="112" y2="112" x1="944" />
            <wire x2="1568" y1="112" y2="784" x1="1568" />
            <wire x2="1568" y1="784" y2="784" x1="1440" />
        </branch>
        <branch name="XLXN_1091">
            <wire x2="1744" y1="592" y2="592" x1="928" />
            <wire x2="928" y1="592" y2="976" x1="928" />
            <wire x2="976" y1="976" y2="976" x1="928" />
            <wire x2="1744" y1="272" y2="272" x1="1488" />
            <wire x2="1744" y1="272" y2="592" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="608" y="1904" name="Present1" orien="R180" />
        <iomarker fontsize="28" x="608" y="1712" name="controlFTDI(7:0)" orien="R180" />
        <branch name="dataInFTDI(7:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="608" y="1584" type="branch" />
            <wire x2="992" y1="1584" y2="1584" x1="608" />
        </branch>
        <branch name="dataFromFlash(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1968" type="branch" />
            <wire x2="992" y1="1968" y2="1968" x1="608" />
        </branch>
        <branch name="Present1">
            <wire x2="992" y1="1904" y2="1904" x1="608" />
        </branch>
        <instance x="992" y="2064" name="XLXI_142" orien="R0">
        </instance>
        <instance x="4944" y="2496" name="XLXI_427" orien="R0" />
        <instance x="4944" y="2576" name="XLXI_428" orien="R0" />
        <instance x="4944" y="2656" name="XLXI_429" orien="R0" />
        <instance x="4944" y="2736" name="XLXI_430" orien="R0" />
        <instance x="4944" y="2816" name="XLXI_431" orien="R0" />
        <instance x="4944" y="2896" name="XLXI_432" orien="R0" />
        <instance x="4944" y="2976" name="XLXI_433" orien="R0" />
        <instance x="4944" y="2416" name="XLXI_426" orien="R0" />
        <branch name="dataInFTDI(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4864" y="2384" type="branch" />
            <wire x2="4864" y1="2384" y2="2384" x1="4832" />
            <wire x2="4944" y1="2384" y2="2384" x1="4864" />
        </branch>
        <branch name="dataInFTDI(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4848" y="2464" type="branch" />
            <wire x2="4848" y1="2464" y2="2464" x1="4832" />
            <wire x2="4944" y1="2464" y2="2464" x1="4848" />
        </branch>
        <branch name="dataInFTDI(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4848" y="2544" type="branch" />
            <wire x2="4848" y1="2544" y2="2544" x1="4832" />
            <wire x2="4944" y1="2544" y2="2544" x1="4848" />
        </branch>
        <branch name="dataInFTDI(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4848" y="2624" type="branch" />
            <wire x2="4848" y1="2624" y2="2624" x1="4832" />
            <wire x2="4944" y1="2624" y2="2624" x1="4848" />
        </branch>
        <branch name="dataInFTDI(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4864" y="2704" type="branch" />
            <wire x2="4864" y1="2704" y2="2704" x1="4832" />
            <wire x2="4944" y1="2704" y2="2704" x1="4864" />
        </branch>
        <branch name="dataInFTDI(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4864" y="2784" type="branch" />
            <wire x2="4864" y1="2784" y2="2784" x1="4832" />
            <wire x2="4944" y1="2784" y2="2784" x1="4864" />
        </branch>
        <branch name="dataInFTDI(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4864" y="2864" type="branch" />
            <wire x2="4864" y1="2864" y2="2864" x1="4832" />
            <wire x2="4944" y1="2864" y2="2864" x1="4864" />
        </branch>
        <branch name="dataInFTDI(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4864" y="2944" type="branch" />
            <wire x2="4864" y1="2944" y2="2944" x1="4832" />
            <wire x2="4944" y1="2944" y2="2944" x1="4864" />
        </branch>
        <branch name="data_from_FTDI(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="5200" y="2944" type="branch" />
            <wire x2="5200" y1="2944" y2="2944" x1="5168" />
            <wire x2="5312" y1="2944" y2="2944" x1="5200" />
        </branch>
        <branch name="data_from_FTDI(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="5216" y="2864" type="branch" />
            <wire x2="5216" y1="2864" y2="2864" x1="5168" />
            <wire x2="5312" y1="2864" y2="2864" x1="5216" />
        </branch>
        <branch name="data_from_FTDI(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="5216" y="2784" type="branch" />
            <wire x2="5216" y1="2784" y2="2784" x1="5168" />
            <wire x2="5312" y1="2784" y2="2784" x1="5216" />
        </branch>
        <branch name="data_from_FTDI(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="5216" y="2704" type="branch" />
            <wire x2="5216" y1="2704" y2="2704" x1="5168" />
            <wire x2="5312" y1="2704" y2="2704" x1="5216" />
        </branch>
        <branch name="data_from_FTDI(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="5200" y="2624" type="branch" />
            <wire x2="5200" y1="2624" y2="2624" x1="5168" />
            <wire x2="5312" y1="2624" y2="2624" x1="5200" />
        </branch>
        <branch name="data_from_FTDI(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="5184" y="2544" type="branch" />
            <wire x2="5184" y1="2544" y2="2544" x1="5168" />
            <wire x2="5312" y1="2544" y2="2544" x1="5184" />
        </branch>
        <branch name="data_from_FTDI(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="5184" y="2464" type="branch" />
            <wire x2="5184" y1="2464" y2="2464" x1="5168" />
            <wire x2="5296" y1="2464" y2="2464" x1="5184" />
        </branch>
        <branch name="data_from_FTDI(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="5184" y="2384" type="branch" />
            <wire x2="5184" y1="2384" y2="2384" x1="5168" />
            <wire x2="5296" y1="2384" y2="2384" x1="5184" />
        </branch>
        <branch name="data_from_FTDI(7:0)">
            <wire x2="5120" y1="3184" y2="3184" x1="4736" />
        </branch>
        <iomarker fontsize="28" x="5120" y="3184" name="data_from_FTDI(7:0)" orien="R0" />
        <branch name="XLXN_543">
            <wire x2="1008" y1="2688" y2="2736" x1="1008" />
            <wire x2="1216" y1="2688" y2="2688" x1="1008" />
        </branch>
        <instance x="944" y="2864" name="XLXI_220" orien="R0" />
        <instance x="2448" y="2752" name="XLXI_439" orien="R0" />
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1424" y="3296" type="branch" />
            <wire x2="1488" y1="3296" y2="3296" x1="1424" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="128" y="3200" type="branch" />
            <wire x2="496" y1="3200" y2="3200" x1="128" />
        </branch>
        <instance x="208" y="2976" name="XLXI_444" orien="R0" />
        <instance x="208" y="2912" name="XLXI_445" orien="R0" />
        <instance x="208" y="2848" name="XLXI_446" orien="R0" />
        <instance x="208" y="2784" name="XLXI_447" orien="R0" />
        <branch name="XLXN_1112">
            <wire x2="496" y1="2752" y2="2752" x1="432" />
        </branch>
        <branch name="XLXN_1113">
            <wire x2="496" y1="2816" y2="2816" x1="432" />
        </branch>
        <branch name="XLXN_1114">
            <wire x2="496" y1="2880" y2="2880" x1="432" />
        </branch>
        <branch name="XLXN_1115">
            <wire x2="496" y1="2944" y2="2944" x1="432" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="160" y="2944" type="branch" />
            <wire x2="208" y1="2944" y2="2944" x1="160" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="160" y="2880" type="branch" />
            <wire x2="208" y1="2880" y2="2880" x1="160" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="160" y="2816" type="branch" />
            <wire x2="208" y1="2816" y2="2816" x1="160" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="160" y="2752" type="branch" />
            <wire x2="208" y1="2752" y2="2752" x1="160" />
        </branch>
        <instance x="912" y="2624" name="XLXI_448" orien="R0" />
        <instance x="1216" y="3008" name="XLXI_451" orien="R0" />
        <branch name="XLXN_1120">
            <wire x2="1488" y1="2848" y2="2848" x1="1440" />
        </branch>
        <branch name="XLXN_1122">
            <wire x2="1488" y1="2976" y2="2976" x1="1440" />
        </branch>
        <branch name="XLXN_1123">
            <wire x2="1488" y1="3040" y2="3040" x1="1440" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1152" y="2976" type="branch" />
            <wire x2="1216" y1="2976" y2="2976" x1="1152" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1424" y="3104" type="branch" />
            <wire x2="1488" y1="3104" y2="3104" x1="1424" />
        </branch>
        <instance x="1216" y="3072" name="XLXI_452" orien="R0" />
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1152" y="3040" type="branch" />
            <wire x2="1216" y1="3040" y2="3040" x1="1152" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1184" y="2848" type="branch" />
            <wire x2="1216" y1="2848" y2="2848" x1="1184" />
        </branch>
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2512" y="3312" type="branch" />
            <wire x2="2560" y1="3312" y2="3312" x1="2512" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2496" y="3248" type="branch" />
            <wire x2="2560" y1="3248" y2="3248" x1="2496" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2496" y="3184" type="branch" />
            <wire x2="2560" y1="3184" y2="3184" x1="2496" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2512" y="3376" type="branch" />
            <wire x2="2560" y1="3376" y2="3376" x1="2512" />
        </branch>
        <instance x="2560" y="3440" name="XLXI_271" orien="R0" />
        <instance x="1808" y="3136" name="XLXI_461" orien="R0" />
        <branch name="XLXN_1154">
            <wire x2="1808" y1="3072" y2="3072" x1="1744" />
        </branch>
        <branch name="RD">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1744" y="3008" type="branch" />
            <wire x2="1808" y1="3008" y2="3008" x1="1744" />
        </branch>
        <branch name="presentFTDIControl">
            <attrtext style="alignment:SOFT-VLEFT" attrname="Name" x="2064" y="2896" type="branch" />
            <wire x2="2064" y1="2896" y2="3040" x1="2064" />
        </branch>
        <instance x="2304" y="3088" name="XLXI_467" orien="R0" />
        <instance x="2304" y="3152" name="XLXI_468" orien="R0" />
        <instance x="2304" y="3024" name="XLXI_466" orien="R0" />
        <branch name="XLXN_1161">
            <wire x2="2560" y1="2992" y2="2992" x1="2528" />
        </branch>
        <branch name="XLXN_1162">
            <wire x2="2560" y1="3056" y2="3056" x1="2528" />
        </branch>
        <branch name="XLXN_1163">
            <wire x2="2560" y1="3120" y2="3120" x1="2528" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2256" y="3120" type="branch" />
            <wire x2="2304" y1="3120" y2="3120" x1="2256" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2256" y="3056" type="branch" />
            <wire x2="2304" y1="3056" y2="3056" x1="2256" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2256" y="2992" type="branch" />
            <wire x2="2304" y1="2992" y2="2992" x1="2256" />
        </branch>
        <branch name="presentFTDIControl">
            <wire x2="4928" y1="3296" y2="3296" x1="4736" />
        </branch>
        <iomarker fontsize="28" x="4928" y="3296" name="presentFTDIControl" orien="R0" />
        <branch name="DATA_OUT(15:0)">
            <wire x2="4960" y1="144" y2="144" x1="4848" />
        </branch>
        <iomarker fontsize="28" x="4960" y="144" name="DATA_OUT(15:0)" orien="R0" />
        <branch name="presentFTDIibus">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1680" y="2224" type="branch" />
            <wire x2="1856" y1="2224" y2="2224" x1="1680" />
        </branch>
        <instance x="1856" y="2256" name="XLXI_469" orien="R0" />
        <branch name="RD_FTDI">
            <wire x2="2224" y1="2224" y2="2224" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2224" y="2224" name="RD_FTDI" orien="R0" />
        <instance x="1216" y="2880" name="XLXI_449" orien="R0" />
        <text style="fontsize:30;fontname:Arial;textcolor:rgb(255,0,255)" x="2648" y="3252">PORT_F1</text>
        <text style="fontsize:35;fontname:Arial;textcolor:rgb(255,0,255)" x="592" y="3080">PORT_F0</text>
        <text style="fontsize:30;fontname:Arial;textcolor:rgb(255,0,255)" x="1588" y="3172">PORT_F2</text>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1152" y="2912" type="branch" />
            <wire x2="1488" y1="2912" y2="2912" x1="1152" />
        </branch>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2336" y="2928" type="branch" />
            <wire x2="2560" y1="2928" y2="2928" x1="2336" />
        </branch>
        <branch name="PB_INPUT(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1840" y="1440" type="branch" />
            <wire x2="1840" y1="1440" y2="1440" x1="1824" />
            <wire x2="2000" y1="1440" y2="1440" x1="1840" />
        </branch>
        <branch name="PB_INPUT(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1840" y="1504" type="branch" />
            <wire x2="1840" y1="1504" y2="1504" x1="1824" />
            <wire x2="2000" y1="1504" y2="1504" x1="1840" />
        </branch>
        <instance x="2000" y="1472" name="XLXI_470" orien="R0" />
        <instance x="2000" y="1536" name="XLXI_471" orien="R0" />
        <branch name="PB_INt0">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2320" y="1440" type="branch" />
            <wire x2="2320" y1="1440" y2="1440" x1="2224" />
            <wire x2="2336" y1="1440" y2="1440" x1="2320" />
        </branch>
        <branch name="PB_INt1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2304" y="1504" type="branch" />
            <wire x2="2304" y1="1504" y2="1504" x1="2224" />
            <wire x2="2336" y1="1504" y2="1504" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="2336" y="1440" name="PB_INt0" orien="R0" />
        <iomarker fontsize="28" x="2336" y="1504" name="PB_INt1" orien="R0" />
        <branch name="XLXN_1164">
            <wire x2="992" y1="1648" y2="1648" x1="784" />
        </branch>
        <branch name="presentFTDIibus">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="384" y="1648" type="branch" />
            <wire x2="560" y1="1648" y2="1648" x1="384" />
        </branch>
        <instance x="560" y="1680" name="XLXI_472" orien="R0" />
        <branch name="PORT_ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="560" type="branch" />
            <wire x2="3232" y1="560" y2="560" x1="2928" />
        </branch>
        <branch name="PORT_ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="496" type="branch" />
            <wire x2="3232" y1="496" y2="496" x1="2928" />
        </branch>
        <branch name="PORT_ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="624" type="branch" />
            <wire x2="3232" y1="624" y2="624" x1="2928" />
        </branch>
        <instance x="3232" y="688" name="XLXI_473" orien="R0" />
        <instance x="2976" y="336" name="XLXI_474" orien="R0" />
        <instance x="2976" y="400" name="XLXI_475" orien="R0" />
        <instance x="2976" y="272" name="XLXI_476" orien="R0" />
        <branch name="XLXN_1169">
            <wire x2="3232" y1="240" y2="240" x1="3200" />
        </branch>
        <branch name="XLXN_1170">
            <wire x2="3232" y1="304" y2="304" x1="3200" />
        </branch>
        <branch name="XLXN_1171">
            <wire x2="3232" y1="368" y2="368" x1="3200" />
        </branch>
        <branch name="PORT_ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="368" type="branch" />
            <wire x2="2976" y1="368" y2="368" x1="2928" />
        </branch>
        <branch name="PORT_ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="304" type="branch" />
            <wire x2="2976" y1="304" y2="304" x1="2928" />
        </branch>
        <branch name="PORT_ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="240" type="branch" />
            <wire x2="2976" y1="240" y2="240" x1="2928" />
        </branch>
        <text style="fontsize:30;fontname:Arial;textcolor:rgb(255,0,255)" x="3320" y="500">PORT_E1</text>
        <branch name="PORT_ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="176" type="branch" />
            <wire x2="3232" y1="176" y2="176" x1="2928" />
        </branch>
        <instance x="2976" y="464" name="XLXI_477" orien="R0" />
        <branch name="XLXN_1176">
            <wire x2="3232" y1="432" y2="432" x1="3200" />
        </branch>
        <branch name="PORT_ID(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="432" type="branch" />
            <wire x2="2960" y1="432" y2="432" x1="2928" />
            <wire x2="2976" y1="432" y2="432" x1="2960" />
        </branch>
        <instance x="3552" y="464" name="XLXI_478" orien="R0" />
        <branch name="RD">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3488" y="336" type="branch" />
            <wire x2="3552" y1="336" y2="336" x1="3488" />
        </branch>
        <branch name="XLXN_1181">
            <wire x2="3552" y1="400" y2="400" x1="3488" />
        </branch>
        <branch name="dataFromFlashPresent">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3872" y="368" type="branch" />
            <wire x2="3872" y1="368" y2="368" x1="3808" />
        </branch>
    </sheet>
</drawing>