VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL DataIn(7:0)
        SIGNAL DataOut(7:0)
        SIGNAL ClkIn
        SIGNAL MISO
        SIGNAL XLXN_6(7:0)
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL MOSI
        SIGNAL XLXN_6(7)
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL DataWr
        SIGNAL SCKint
        SIGNAL XLXN_27
        SIGNAL Ready
        SIGNAL SCK
        PORT Input DataIn(7:0)
        PORT Output DataOut(7:0)
        PORT Input ClkIn
        PORT Input MISO
        PORT Output MOSI
        PORT Input DataWr
        PORT Output Ready
        PORT Output SCK
        BEGIN BLOCKDEF sr8cle
            TIMESTAMP 2001 2 2 12 39 45
            RECTANGLE N 64 -640 320 -64 
            LINE N 0 -512 64 -512 
            RECTANGLE N 0 -524 64 -500 
            LINE N 0 -576 64 -576 
            RECTANGLE N 320 -396 384 -372 
            LINE N 0 -320 64 -320 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 384 -384 320 -384 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2001 2 2 12 38 38
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF buf
            TIMESTAMP 2001 2 2 12 35 54
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 64 0 128 -32 
            LINE N 128 -32 64 -64 
            LINE N 64 -64 64 0 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2001 2 2 12 37 29
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF sr8ce
            TIMESTAMP 2001 2 2 12 39 45
            RECTANGLE N 320 -268 384 -244 
            LINE N 0 -192 64 -192 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 384 -256 320 -256 
            LINE N 0 -128 64 -128 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 0 -32 64 -32 
            LINE N 0 -320 64 -320 
            RECTANGLE N 64 -384 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF cb4re
            TIMESTAMP 2001 2 2 12 36 39
            LINE N 384 -192 320 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -128 64 -128 
            LINE N 384 -256 320 -256 
            LINE N 384 -320 320 -320 
            LINE N 384 -384 320 -384 
            LINE N 384 -448 320 -448 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 384 -128 320 -128 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 0 -192 64 -192 
            RECTANGLE N 64 -512 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2001 2 2 12 38 38
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2001 2 2 12 37 14
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_7 gnd
            PIN G XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_8 gnd
            PIN G XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_5 buf
            PIN I XLXN_6(7)
            PIN O MOSI
        END BLOCK
        BEGIN BLOCK XLXI_1 sr8cle
            PIN C ClkIn
            PIN CE SCKint
            PIN CLR XLXN_9
            PIN D(7:0) DataIn(7:0)
            PIN L DataWr
            PIN SLI XLXN_10
            PIN Q(7:0) XLXN_6(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 sr8ce
            PIN C ClkIn
            PIN CE XLXN_27
            PIN CLR XLXN_9
            PIN SLI MISO
            PIN Q(7:0) DataOut(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_14 inv
            PIN I XLXN_22
            PIN O XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_15 cb4re
            BEGIN ATTR INIT "F"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
            PIN C ClkIn
            PIN CE XLXN_21
            PIN R DataWr
            PIN CEO
            PIN Q0 SCKint
            PIN Q1
            PIN Q2
            PIN Q3
            PIN TC XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_16 inv
            PIN I SCKint
            PIN O XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_18 fd
            PIN C ClkIn
            PIN D XLXN_22
            PIN Q Ready
        END BLOCK
        BEGIN BLOCK XLXI_17 and2b1
            PIN I0 Ready
            PIN I1 SCKint
            PIN O SCK
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH DataIn(7:0)
            WIRE 1120 784 1152 784
        END BRANCH
        IOMARKER 1120 784 DataIn(7:0) R180 28
        BEGIN BRANCH DataOut(7:0)
            WIRE 1520 1760 1552 1760
        END BRANCH
        IOMARKER 1552 1760 DataOut(7:0) R0 28
        BEGIN BRANCH XLXN_6(7:0)
            WIRE 1536 912 1584 912
            BEGIN DISPLAY 1584 912 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_8 848 864 R0
        BEGIN BRANCH XLXN_10
            WIRE 912 720 1152 720
            WIRE 912 720 912 736
        END BRANCH
        INSTANCE XLXI_5 1792 1008 R0
        BEGIN BRANCH MOSI
            WIRE 2016 976 2048 976
        END BRANCH
        BEGIN BRANCH XLXN_6(7)
            WIRE 1744 976 1792 976
            BEGIN DISPLAY 1744 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 2048 976 MOSI R0 28
        INSTANCE XLXI_1 1152 1296 R0
        BEGIN BRANCH XLXN_9
            WIRE 1104 1264 1152 1264
            WIRE 1104 1264 1104 1984
            WIRE 1104 1984 1136 1984
            WIRE 1104 1984 1104 2000
        END BRANCH
        INSTANCE XLXI_12 1136 2016 R0
        BEGIN BRANCH MISO
            WIRE 1056 1696 1136 1696
        END BRANCH
        IOMARKER 1056 1696 MISO R180 28
        IOMARKER 1056 1888 ClkIn R180 28
        INSTANCE XLXI_7 1040 2128 R0
        INSTANCE XLXI_14 1536 480 R0
        BEGIN BRANCH XLXN_21
            WIRE 1760 448 1808 448
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 1456 48 1456 448
            WIRE 1456 448 1536 448
            WIRE 1456 48 2256 48
            WIRE 2256 48 2256 512
            WIRE 2256 512 2320 512
            WIRE 2192 512 2256 512
        END BRANCH
        BEGIN BRANCH ClkIn
            WIRE 1760 512 1776 512
            WIRE 1776 512 1808 512
            WIRE 1776 512 1776 640
            WIRE 1776 640 2320 640
            BEGIN DISPLAY 1760 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_15 1808 640 R0
            BEGIN DISPLAY 152 -408 ATTR INIT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH DataWr
            WIRE 864 608 944 608
            WIRE 944 608 944 976
            WIRE 944 976 1152 976
            WIRE 944 608 1808 608
        END BRANCH
        IOMARKER 864 608 DataWr R180 28
        INSTANCE XLXI_16 816 1856 R0
        BEGIN BRANCH XLXN_27
            WIRE 1040 1824 1136 1824
        END BRANCH
        BEGIN BRANCH ClkIn
            WIRE 1056 1888 1088 1888
            WIRE 1088 1888 1136 1888
            WIRE 1088 1168 1152 1168
            WIRE 1088 1168 1088 1888
        END BRANCH
        BEGIN BRANCH SCKint
            WIRE 784 1344 784 1824
            WIRE 784 1824 816 1824
            WIRE 784 1344 1136 1344
            WIRE 1136 1344 1824 1344
            WIRE 1824 1344 2240 1344
            WIRE 1136 1104 1152 1104
            WIRE 1136 1104 1136 1344
            WIRE 2192 192 2240 192
            WIRE 2240 192 2240 304
            WIRE 2240 304 2240 1344
            WIRE 2240 304 2768 304
            BEGIN DISPLAY 1824 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_18 2320 768 R0
        BEGIN BRANCH SCK
            WIRE 3024 336 3056 336
        END BRANCH
        INSTANCE XLXI_17 2768 432 R0
        IOMARKER 3056 336 SCK R0 28
        BEGIN BRANCH Ready
            WIRE 2704 512 2752 512
            WIRE 2752 512 2832 512
            WIRE 2752 368 2768 368
            WIRE 2752 368 2752 512
        END BRANCH
        IOMARKER 2832 512 Ready R0 28
    END SHEET
END SCHEMATIC
