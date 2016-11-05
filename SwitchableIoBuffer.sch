<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="FTDI_BUS_GPIO(7:0)" />
        <signal name="FTDI_BUS_USB(7:0)" />
        <signal name="DATA_FROM_CLIENT(7:0)" />
        <signal name="TXE_USB" />
        <signal name="TXE_GPI" />
        <signal name="RXF_GPIO" />
        <signal name="WR_CTRL" />
        <signal name="RXF_USB" />
        <signal name="WR_CTRL_INV" />
        <signal name="FTDI_BUS_GPIO(0)" />
        <signal name="FTDI_BUS_GPIO(1)" />
        <signal name="FTDI_BUS_GPIO(2)" />
        <signal name="FTDI_BUS_GPIO(3)" />
        <signal name="FTDI_BUS_GPIO(4)" />
        <signal name="FTDI_BUS_GPIO(5)" />
        <signal name="FTDI_BUS_GPIO(6)" />
        <signal name="FTDI_BUS_GPIO(7)" />
        <signal name="DATA_FROM_CLIENT_GPIO(0)" />
        <signal name="DATA_FROM_CLIENT_GPIO(1)" />
        <signal name="DATA_FROM_CLIENT_GPIO(2)" />
        <signal name="DATA_FROM_CLIENT_GPIO(3)" />
        <signal name="DATA_FROM_CLIENT_GPIO(4)" />
        <signal name="DATA_FROM_CLIENT_GPIO(5)" />
        <signal name="DATA_FROM_CLIENT_GPIO(6)" />
        <signal name="DATA_FROM_CLIENT_GPIO(7)" />
        <signal name="DATA_FOR_CLIENT(0)" />
        <signal name="DATA_FOR_CLIENT(1)" />
        <signal name="FTDI_BUS_USB(0)" />
        <signal name="FTDI_BUS_USB(1)" />
        <signal name="DATA_FOR_CLIENT(2)" />
        <signal name="DATA_FOR_CLIENT(3)" />
        <signal name="FTDI_BUS_USB(2)" />
        <signal name="FTDI_BUS_USB(3)" />
        <signal name="DATA_FOR_CLIENT(4)" />
        <signal name="DATA_FOR_CLIENT(5)" />
        <signal name="FTDI_BUS_USB(4)" />
        <signal name="FTDI_BUS_USB(5)" />
        <signal name="FTDI_BUS_USB(6)" />
        <signal name="FTDI_BUS_USB(7)" />
        <signal name="DATA_FOR_CLIENT(6)" />
        <signal name="DATA_FOR_CLIENT(7)" />
        <signal name="DATA_FROM_CLIENT_USB(0)" />
        <signal name="DATA_FROM_CLIENT_USB(1)" />
        <signal name="DATA_FROM_CLIENT_USB(2)" />
        <signal name="DATA_FROM_CLIENT_USB(3)" />
        <signal name="DATA_FROM_CLIENT_USB(4)" />
        <signal name="DATA_FROM_CLIENT_USB(5)" />
        <signal name="DATA_FROM_CLIENT_USB(6)" />
        <signal name="DATA_FROM_CLIENT_USB(7)" />
        <signal name="TXE_GPIO" />
        <signal name="GPIO_PRESENT" />
        <signal name="USB_PRESENT" />
        <signal name="XLXN_193" />
        <signal name="XLXN_194" />
        <signal name="DATA_FROM_CLIENT_USB(7:0)" />
        <signal name="DATA_FROM_CLIENT_GPIO(7:0)" />
        <signal name="XLXN_205(7:0)" />
        <signal name="XLXN_206(7:0)" />
        <signal name="DATA_FOR_CLIENT(7:0)" />
        <signal name="RD_CTRL" />
        <signal name="RD_GPIO" />
        <signal name="XLXN_214" />
        <signal name="RD_CTRL_INTERNAL" />
        <signal name="RD_USB" />
        <signal name="WR_GPIO" />
        <signal name="WR_USB" />
        <port polarity="BiDirectional" name="FTDI_BUS_GPIO(7:0)" />
        <port polarity="BiDirectional" name="FTDI_BUS_USB(7:0)" />
        <port polarity="Output" name="DATA_FROM_CLIENT(7:0)" />
        <port polarity="Input" name="TXE_USB" />
        <port polarity="Input" name="TXE_GPI" />
        <port polarity="Input" name="RXF_GPIO" />
        <port polarity="Input" name="WR_CTRL" />
        <port polarity="Input" name="RXF_USB" />
        <port polarity="Input" name="DATA_FOR_CLIENT(7:0)" />
        <port polarity="Input" name="RD_CTRL" />
        <port polarity="Output" name="RD_GPIO" />
        <port polarity="Output" name="RD_CTRL_INTERNAL" />
        <port polarity="Output" name="RD_USB" />
        <port polarity="Output" name="WR_GPIO" />
        <port polarity="Output" name="WR_USB" />
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
        <blockdef name="and2b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="ZeroByte">
            <timestamp>2006-2-17T6:37:30</timestamp>
            <rect width="256" x="0" y="-64" height="64" />
            <line x2="320" y1="-32" y2="-32" x1="256" />
            <rect width="64" x="256" y="-44" height="24" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="inv" name="XLXI_231">
            <blockpin signalname="WR_CTRL" name="I" />
            <blockpin signalname="WR_CTRL_INV" name="O" />
        </block>
        <block symbolname="iobuf" name="XLXI_224">
            <blockpin signalname="DATA_FOR_CLIENT(1)" name="I" />
            <blockpin signalname="FTDI_BUS_GPIO(1)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_GPIO(1)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_225">
            <blockpin signalname="DATA_FOR_CLIENT(2)" name="I" />
            <blockpin signalname="FTDI_BUS_GPIO(2)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_GPIO(2)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_226">
            <blockpin signalname="DATA_FOR_CLIENT(3)" name="I" />
            <blockpin signalname="FTDI_BUS_GPIO(3)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_GPIO(3)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_227">
            <blockpin signalname="DATA_FOR_CLIENT(4)" name="I" />
            <blockpin signalname="FTDI_BUS_GPIO(4)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_GPIO(4)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_228">
            <blockpin signalname="DATA_FOR_CLIENT(5)" name="I" />
            <blockpin signalname="FTDI_BUS_GPIO(5)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_GPIO(5)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_229">
            <blockpin signalname="DATA_FOR_CLIENT(6)" name="I" />
            <blockpin signalname="FTDI_BUS_GPIO(6)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_GPIO(6)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_230">
            <blockpin signalname="DATA_FOR_CLIENT(7)" name="I" />
            <blockpin signalname="FTDI_BUS_GPIO(7)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_GPIO(7)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_223">
            <blockpin signalname="DATA_FOR_CLIENT(0)" name="I" />
            <blockpin signalname="FTDI_BUS_GPIO(0)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_GPIO(0)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_256">
            <blockpin signalname="DATA_FOR_CLIENT(1)" name="I" />
            <blockpin signalname="FTDI_BUS_USB(1)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_USB(1)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_257">
            <blockpin signalname="DATA_FOR_CLIENT(2)" name="I" />
            <blockpin signalname="FTDI_BUS_USB(2)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_USB(2)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_258">
            <blockpin signalname="DATA_FOR_CLIENT(3)" name="I" />
            <blockpin signalname="FTDI_BUS_USB(3)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_USB(3)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_259">
            <blockpin signalname="DATA_FOR_CLIENT(4)" name="I" />
            <blockpin signalname="FTDI_BUS_USB(4)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_USB(4)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_260">
            <blockpin signalname="DATA_FOR_CLIENT(5)" name="I" />
            <blockpin signalname="FTDI_BUS_USB(5)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_USB(5)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_261">
            <blockpin signalname="DATA_FOR_CLIENT(6)" name="I" />
            <blockpin signalname="FTDI_BUS_USB(6)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_USB(6)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_262">
            <blockpin signalname="DATA_FOR_CLIENT(7)" name="I" />
            <blockpin signalname="FTDI_BUS_USB(7)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_USB(7)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_263">
            <blockpin signalname="DATA_FOR_CLIENT(0)" name="I" />
            <blockpin signalname="FTDI_BUS_USB(0)" name="IO" />
            <blockpin signalname="DATA_FROM_CLIENT_USB(0)" name="O" />
            <blockpin signalname="WR_CTRL_INV" name="T" />
        </block>
        <block symbolname="and2b2" name="XLXI_266">
            <blockpin signalname="TXE_GPIO" name="I0" />
            <blockpin signalname="RXF_GPIO" name="I1" />
            <blockpin signalname="GPIO_PRESENT" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_267">
            <blockpin signalname="TXE_USB" name="I0" />
            <blockpin signalname="RXF_USB" name="I1" />
            <blockpin signalname="USB_PRESENT" name="O" />
        </block>
        <block symbolname="IMux4x1x8" name="XLXI_268">
            <blockpin signalname="DATA_FROM_CLIENT_GPIO(7:0)" name="InData0(7:0)" />
            <blockpin signalname="DATA_FROM_CLIENT_USB(7:0)" name="InData1(7:0)" />
            <blockpin signalname="XLXN_205(7:0)" name="InData2(7:0)" />
            <blockpin signalname="XLXN_206(7:0)" name="InData3(7:0)" />
            <blockpin signalname="XLXN_194" name="Present3" />
            <blockpin signalname="XLXN_193" name="Present2" />
            <blockpin signalname="USB_PRESENT" name="Present1" />
            <blockpin signalname="GPIO_PRESENT" name="Present0" />
            <blockpin signalname="DATA_FROM_CLIENT(7:0)" name="OutData(7:0)" />
            <blockpin name="Present" />
        </block>
        <block symbolname="gnd" name="XLXI_270">
            <blockpin signalname="XLXN_194" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_269">
            <blockpin signalname="XLXN_193" name="G" />
        </block>
        <block symbolname="ZeroByte" name="XLXI_274">
            <blockpin signalname="XLXN_205(7:0)" name="ZeroData(7:0)" />
        </block>
        <block symbolname="ZeroByte" name="XLXI_275">
            <blockpin signalname="XLXN_206(7:0)" name="ZeroData(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_276">
            <blockpin signalname="RD_CTRL" name="I" />
            <blockpin signalname="RD_CTRL_INTERNAL" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_277">
            <blockpin signalname="RD_CTRL_INTERNAL" name="I" />
            <blockpin signalname="RD_USB" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_279">
            <blockpin signalname="RD_CTRL_INTERNAL" name="I" />
            <blockpin signalname="RD_GPIO" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_280">
            <blockpin signalname="RD_CTRL_INTERNAL" name="I" />
            <blockpin signalname="WR_USB" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_281">
            <blockpin signalname="RD_CTRL_INTERNAL" name="I" />
            <blockpin signalname="WR_GPIO" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="FTDI_BUS_GPIO(7:0)">
            <wire x2="3152" y1="80" y2="80" x1="2992" />
        </branch>
        <iomarker fontsize="28" x="3152" y="80" name="FTDI_BUS_GPIO(7:0)" orien="R0" />
        <branch name="FTDI_BUS_USB(7:0)">
            <wire x2="3152" y1="160" y2="160" x1="2992" />
        </branch>
        <branch name="DATA_FROM_CLIENT(7:0)">
            <wire x2="3152" y1="240" y2="240" x1="2992" />
        </branch>
        <iomarker fontsize="28" x="3152" y="160" name="FTDI_BUS_USB(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="240" name="DATA_FROM_CLIENT(7:0)" orien="R0" />
        <branch name="RXF_GPIO">
            <wire x2="528" y1="192" y2="192" x1="368" />
        </branch>
        <branch name="WR_CTRL">
            <wire x2="528" y1="432" y2="432" x1="384" />
        </branch>
        <branch name="RXF_USB">
            <wire x2="544" y1="272" y2="272" x1="384" />
        </branch>
        <iomarker fontsize="28" x="368" y="192" name="RXF_GPIO" orien="R180" />
        <iomarker fontsize="28" x="384" y="432" name="WR_CTRL" orien="R180" />
        <iomarker fontsize="28" x="384" y="272" name="RXF_USB" orien="R180" />
        <iomarker fontsize="28" x="368" y="128" name="TXE_USB" orien="R180" />
        <branch name="TXE_USB">
            <wire x2="512" y1="128" y2="128" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="48" name="TXE_GPI" orien="R180" />
        <branch name="TXE_GPI">
            <wire x2="512" y1="48" y2="48" x1="368" />
        </branch>
        <instance x="528" y="464" name="XLXI_231" orien="R0" />
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="432" type="branch" />
            <wire x2="816" y1="432" y2="432" x1="752" />
        </branch>
        <instance x="2976" y="1072" name="XLXI_224" orien="R0" />
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2912" y="672" type="branch" />
            <wire x2="2976" y1="672" y2="672" x1="2912" />
        </branch>
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2912" y="880" type="branch" />
            <wire x2="2976" y1="880" y2="880" x1="2912" />
        </branch>
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2912" y="1088" type="branch" />
            <wire x2="2976" y1="1088" y2="1088" x1="2912" />
        </branch>
        <branch name="DATA_FOR_CLIENT(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="736" type="branch" />
            <wire x2="2976" y1="736" y2="736" x1="2928" />
        </branch>
        <branch name="DATA_FOR_CLIENT(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="944" type="branch" />
            <wire x2="2976" y1="944" y2="944" x1="2928" />
        </branch>
        <branch name="FTDI_BUS_GPIO(0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3248" y="736" type="branch" />
            <wire x2="3248" y1="736" y2="736" x1="3200" />
        </branch>
        <branch name="FTDI_BUS_GPIO(1)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3248" y="944" type="branch" />
            <wire x2="3248" y1="944" y2="944" x1="3200" />
        </branch>
        <instance x="2976" y="1280" name="XLXI_225" orien="R0" />
        <instance x="2976" y="1472" name="XLXI_226" orien="R0" />
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2896" y="1280" type="branch" />
            <wire x2="2976" y1="1280" y2="1280" x1="2896" />
        </branch>
        <branch name="DATA_FOR_CLIENT(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="1152" type="branch" />
            <wire x2="2976" y1="1152" y2="1152" x1="2928" />
        </branch>
        <branch name="DATA_FOR_CLIENT(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="1344" type="branch" />
            <wire x2="2976" y1="1344" y2="1344" x1="2928" />
        </branch>
        <branch name="FTDI_BUS_GPIO(2)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3248" y="1152" type="branch" />
            <wire x2="3248" y1="1152" y2="1152" x1="3200" />
        </branch>
        <branch name="FTDI_BUS_GPIO(3)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3248" y="1344" type="branch" />
            <wire x2="3248" y1="1344" y2="1344" x1="3200" />
        </branch>
        <instance x="2976" y="1680" name="XLXI_227" orien="R0" />
        <instance x="2976" y="1872" name="XLXI_228" orien="R0" />
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2896" y="1488" type="branch" />
            <wire x2="2976" y1="1488" y2="1488" x1="2896" />
        </branch>
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2896" y="1680" type="branch" />
            <wire x2="2976" y1="1680" y2="1680" x1="2896" />
        </branch>
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2896" y="1888" type="branch" />
            <wire x2="2976" y1="1888" y2="1888" x1="2896" />
        </branch>
        <branch name="DATA_FOR_CLIENT(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="1552" type="branch" />
            <wire x2="2976" y1="1552" y2="1552" x1="2928" />
        </branch>
        <branch name="DATA_FOR_CLIENT(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="1744" type="branch" />
            <wire x2="2976" y1="1744" y2="1744" x1="2928" />
        </branch>
        <branch name="FTDI_BUS_GPIO(4)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3248" y="1552" type="branch" />
            <wire x2="3248" y1="1552" y2="1552" x1="3200" />
        </branch>
        <branch name="FTDI_BUS_GPIO(5)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3248" y="1744" type="branch" />
            <wire x2="3248" y1="1744" y2="1744" x1="3200" />
        </branch>
        <branch name="FTDI_BUS_GPIO(6)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3248" y="1952" type="branch" />
            <wire x2="3248" y1="1952" y2="1952" x1="3200" />
        </branch>
        <branch name="FTDI_BUS_GPIO(7)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3248" y="2160" type="branch" />
            <wire x2="3248" y1="2160" y2="2160" x1="3200" />
        </branch>
        <instance x="2976" y="2080" name="XLXI_229" orien="R0" />
        <instance x="2976" y="2288" name="XLXI_230" orien="R0" />
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2912" y="2096" type="branch" />
            <wire x2="2976" y1="2096" y2="2096" x1="2912" />
        </branch>
        <branch name="DATA_FOR_CLIENT(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="1952" type="branch" />
            <wire x2="2976" y1="1952" y2="1952" x1="2928" />
        </branch>
        <branch name="DATA_FOR_CLIENT(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2928" y="2160" type="branch" />
            <wire x2="2976" y1="2160" y2="2160" x1="2928" />
        </branch>
        <branch name="DATA_FROM_CLIENT_GPIO(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2896" y="800" type="branch" />
            <wire x2="2976" y1="800" y2="800" x1="2896" />
        </branch>
        <branch name="DATA_FROM_CLIENT_GPIO(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2896" y="1008" type="branch" />
            <wire x2="2976" y1="1008" y2="1008" x1="2896" />
        </branch>
        <branch name="DATA_FROM_CLIENT_GPIO(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2912" y="1216" type="branch" />
            <wire x2="2976" y1="1216" y2="1216" x1="2912" />
        </branch>
        <branch name="DATA_FROM_CLIENT_GPIO(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2912" y="1408" type="branch" />
            <wire x2="2976" y1="1408" y2="1408" x1="2912" />
        </branch>
        <branch name="DATA_FROM_CLIENT_GPIO(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2912" y="1616" type="branch" />
            <wire x2="2976" y1="1616" y2="1616" x1="2912" />
        </branch>
        <branch name="DATA_FROM_CLIENT_GPIO(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2896" y="1808" type="branch" />
            <wire x2="2976" y1="1808" y2="1808" x1="2896" />
        </branch>
        <branch name="DATA_FROM_CLIENT_GPIO(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2912" y="2016" type="branch" />
            <wire x2="2976" y1="2016" y2="2016" x1="2912" />
        </branch>
        <branch name="DATA_FROM_CLIENT_GPIO(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2912" y="2224" type="branch" />
            <wire x2="2976" y1="2224" y2="2224" x1="2912" />
        </branch>
        <instance x="2976" y="864" name="XLXI_223" orien="R0" />
        <instance x="2064" y="1008" name="XLXI_256" orien="R0" />
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="608" type="branch" />
            <wire x2="2064" y1="608" y2="608" x1="2000" />
        </branch>
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="816" type="branch" />
            <wire x2="2064" y1="816" y2="816" x1="2000" />
        </branch>
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1024" type="branch" />
            <wire x2="2064" y1="1024" y2="1024" x1="2000" />
        </branch>
        <branch name="DATA_FOR_CLIENT(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="672" type="branch" />
            <wire x2="2064" y1="672" y2="672" x1="2016" />
        </branch>
        <branch name="DATA_FOR_CLIENT(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="880" type="branch" />
            <wire x2="2064" y1="880" y2="880" x1="2016" />
        </branch>
        <branch name="FTDI_BUS_USB(0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2336" y="672" type="branch" />
            <wire x2="2336" y1="672" y2="672" x1="2288" />
        </branch>
        <branch name="FTDI_BUS_USB(1)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2336" y="880" type="branch" />
            <wire x2="2336" y1="880" y2="880" x1="2288" />
        </branch>
        <instance x="2064" y="1216" name="XLXI_257" orien="R0" />
        <instance x="2064" y="1408" name="XLXI_258" orien="R0" />
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="1216" type="branch" />
            <wire x2="2064" y1="1216" y2="1216" x1="1984" />
        </branch>
        <branch name="DATA_FOR_CLIENT(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="1088" type="branch" />
            <wire x2="2064" y1="1088" y2="1088" x1="2016" />
        </branch>
        <branch name="DATA_FOR_CLIENT(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="1280" type="branch" />
            <wire x2="2064" y1="1280" y2="1280" x1="2016" />
        </branch>
        <branch name="FTDI_BUS_USB(2)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2336" y="1088" type="branch" />
            <wire x2="2336" y1="1088" y2="1088" x1="2288" />
        </branch>
        <branch name="FTDI_BUS_USB(3)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2336" y="1280" type="branch" />
            <wire x2="2336" y1="1280" y2="1280" x1="2288" />
        </branch>
        <instance x="2064" y="1616" name="XLXI_259" orien="R0" />
        <instance x="2064" y="1808" name="XLXI_260" orien="R0" />
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="1424" type="branch" />
            <wire x2="2064" y1="1424" y2="1424" x1="1984" />
        </branch>
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="1616" type="branch" />
            <wire x2="2064" y1="1616" y2="1616" x1="1984" />
        </branch>
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="1824" type="branch" />
            <wire x2="2064" y1="1824" y2="1824" x1="1984" />
        </branch>
        <branch name="DATA_FOR_CLIENT(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="1488" type="branch" />
            <wire x2="2064" y1="1488" y2="1488" x1="2016" />
        </branch>
        <branch name="DATA_FOR_CLIENT(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="1680" type="branch" />
            <wire x2="2064" y1="1680" y2="1680" x1="2016" />
        </branch>
        <branch name="FTDI_BUS_USB(4)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2336" y="1488" type="branch" />
            <wire x2="2336" y1="1488" y2="1488" x1="2288" />
        </branch>
        <branch name="FTDI_BUS_USB(5)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2336" y="1680" type="branch" />
            <wire x2="2336" y1="1680" y2="1680" x1="2288" />
        </branch>
        <branch name="FTDI_BUS_USB(6)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2336" y="1888" type="branch" />
            <wire x2="2336" y1="1888" y2="1888" x1="2288" />
        </branch>
        <branch name="FTDI_BUS_USB(7)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2336" y="2096" type="branch" />
            <wire x2="2336" y1="2096" y2="2096" x1="2288" />
        </branch>
        <instance x="2064" y="2016" name="XLXI_261" orien="R0" />
        <instance x="2064" y="2224" name="XLXI_262" orien="R0" />
        <branch name="WR_CTRL_INV">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2032" type="branch" />
            <wire x2="2064" y1="2032" y2="2032" x1="2000" />
        </branch>
        <branch name="DATA_FOR_CLIENT(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="1888" type="branch" />
            <wire x2="2064" y1="1888" y2="1888" x1="2016" />
        </branch>
        <branch name="DATA_FOR_CLIENT(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2016" y="2096" type="branch" />
            <wire x2="2064" y1="2096" y2="2096" x1="2016" />
        </branch>
        <branch name="DATA_FROM_CLIENT_USB(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="736" type="branch" />
            <wire x2="2064" y1="736" y2="736" x1="1984" />
        </branch>
        <branch name="DATA_FROM_CLIENT_USB(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="944" type="branch" />
            <wire x2="2064" y1="944" y2="944" x1="1984" />
        </branch>
        <branch name="DATA_FROM_CLIENT_USB(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1152" type="branch" />
            <wire x2="2064" y1="1152" y2="1152" x1="2000" />
        </branch>
        <branch name="DATA_FROM_CLIENT_USB(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1344" type="branch" />
            <wire x2="2064" y1="1344" y2="1344" x1="2000" />
        </branch>
        <branch name="DATA_FROM_CLIENT_USB(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1552" type="branch" />
            <wire x2="2064" y1="1552" y2="1552" x1="2000" />
        </branch>
        <branch name="DATA_FROM_CLIENT_USB(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="1744" type="branch" />
            <wire x2="2064" y1="1744" y2="1744" x1="1984" />
        </branch>
        <branch name="DATA_FROM_CLIENT_USB(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1952" type="branch" />
            <wire x2="2064" y1="1952" y2="1952" x1="2000" />
        </branch>
        <branch name="DATA_FROM_CLIENT_USB(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2160" type="branch" />
            <wire x2="2064" y1="2160" y2="2160" x1="2000" />
        </branch>
        <instance x="2064" y="800" name="XLXI_263" orien="R0" />
        <instance x="528" y="688" name="XLXI_266" orien="R0" />
        <branch name="RXF_GPIO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="560" type="branch" />
            <wire x2="528" y1="560" y2="560" x1="432" />
        </branch>
        <branch name="TXE_GPIO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="624" type="branch" />
            <wire x2="528" y1="624" y2="624" x1="432" />
        </branch>
        <branch name="GPIO_PRESENT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="592" type="branch" />
            <wire x2="864" y1="592" y2="592" x1="784" />
        </branch>
        <instance x="544" y="848" name="XLXI_267" orien="R0" />
        <branch name="RXF_USB">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="720" type="branch" />
            <wire x2="544" y1="720" y2="720" x1="448" />
        </branch>
        <branch name="TXE_USB">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="784" type="branch" />
            <wire x2="544" y1="784" y2="784" x1="448" />
        </branch>
        <branch name="USB_PRESENT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="752" type="branch" />
            <wire x2="880" y1="752" y2="752" x1="800" />
        </branch>
        <instance x="576" y="1504" name="XLXI_268" orien="R0">
        </instance>
        <branch name="GPIO_PRESENT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1088" type="branch" />
            <wire x2="512" y1="1088" y2="1088" x1="464" />
            <wire x2="576" y1="1088" y2="1088" x1="512" />
        </branch>
        <branch name="USB_PRESENT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1216" type="branch" />
            <wire x2="576" y1="1216" y2="1216" x1="512" />
        </branch>
        <branch name="XLXN_193">
            <wire x2="448" y1="1344" y2="1520" x1="448" />
            <wire x2="576" y1="1344" y2="1344" x1="448" />
        </branch>
        <branch name="XLXN_194">
            <wire x2="544" y1="1472" y2="1616" x1="544" />
            <wire x2="576" y1="1472" y2="1472" x1="544" />
        </branch>
        <branch name="DATA_FROM_CLIENT(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1024" type="branch" />
            <wire x2="1120" y1="1024" y2="1024" x1="960" />
        </branch>
        <instance x="480" y="1744" name="XLXI_270" orien="R0" />
        <instance x="384" y="1648" name="XLXI_269" orien="R0" />
        <branch name="DATA_FROM_CLIENT_USB(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1152" type="branch" />
            <wire x2="576" y1="1152" y2="1152" x1="464" />
        </branch>
        <branch name="DATA_FROM_CLIENT_GPIO(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1024" type="branch" />
            <wire x2="576" y1="1024" y2="1024" x1="464" />
        </branch>
        <instance x="128" y="1312" name="XLXI_274" orien="R0">
        </instance>
        <instance x="96" y="1440" name="XLXI_275" orien="R0">
        </instance>
        <branch name="XLXN_205(7:0)">
            <wire x2="576" y1="1280" y2="1280" x1="448" />
        </branch>
        <branch name="XLXN_206(7:0)">
            <wire x2="576" y1="1408" y2="1408" x1="416" />
        </branch>
        <branch name="DATA_FOR_CLIENT(7:0)">
            <wire x2="560" y1="320" y2="320" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="320" name="DATA_FOR_CLIENT(7:0)" orien="R180" />
        <branch name="RD_CTRL">
            <wire x2="608" y1="368" y2="368" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="368" name="RD_CTRL" orien="R180" />
        <branch name="RD_GPIO">
            <wire x2="3136" y1="384" y2="384" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3136" y="384" name="RD_GPIO" orien="R0" />
        <instance x="608" y="400" name="XLXI_276" orien="R0" />
        <branch name="RD_CTRL_INTERNAL">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="368" type="branch" />
            <wire x2="864" y1="368" y2="368" x1="832" />
        </branch>
        <branch name="RD_USB">
            <wire x2="3120" y1="304" y2="304" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3120" y="304" name="RD_USB" orien="R0" />
        <branch name="WR_GPIO">
            <wire x2="3104" y1="528" y2="528" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3104" y="528" name="WR_GPIO" orien="R0" />
        <branch name="WR_USB">
            <wire x2="3104" y1="464" y2="464" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3104" y="464" name="WR_USB" orien="R0" />
        <instance x="2736" y="496" name="XLXI_280" orien="R0" />
        <instance x="2736" y="560" name="XLXI_281" orien="R0" />
        <branch name="RD_CTRL_INTERNAL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="304" type="branch" />
            <wire x2="2736" y1="304" y2="304" x1="2672" />
        </branch>
        <branch name="RD_CTRL_INTERNAL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="384" type="branch" />
            <wire x2="2736" y1="384" y2="384" x1="2672" />
        </branch>
        <branch name="RD_CTRL_INTERNAL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="464" type="branch" />
            <wire x2="2736" y1="464" y2="464" x1="2672" />
        </branch>
        <branch name="RD_CTRL_INTERNAL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="528" type="branch" />
            <wire x2="2736" y1="528" y2="528" x1="2672" />
        </branch>
        <instance x="2736" y="416" name="XLXI_279" orien="R0" />
        <instance x="2736" y="336" name="XLXI_277" orien="R0" />
    </sheet>
</drawing>