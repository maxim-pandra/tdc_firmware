VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL CE
        SIGNAL CLK
        SIGNAL R
        SIGNAL Q1
        SIGNAL CarryIn
        SIGNAL Q0
        SIGNAL XLXN_15
        SIGNAL XLXN_33
        SIGNAL CarryOut
        PORT Input CE
        PORT Input CLK
        PORT Input R
        PORT Output Q1
        PORT Input CarryIn
        PORT Output Q0
        PORT Output CarryOut
        BEGIN BLOCKDEF xorcy
            TIMESTAMP 2001 2 2 12 36 12
            ARC N 44 -224 220 -48 128 -48 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            ARC N 44 -144 220 32 208 -96 128 -144 
            LINE N 128 -144 64 -144 
            LINE N 0 -128 60 -128 
            LINE N 0 -64 64 -64 
            LINE N 128 -48 64 -48 
            LINE N 256 -96 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF muxcy
            TIMESTAMP 2001 2 2 12 36 12
            LINE N 192 0 192 -64 
            LINE N 192 -224 192 -160 
            LINE N 96 -160 32 -64 
            LINE N 224 -160 96 -160 
            LINE N 288 -64 224 -160 
            LINE N 32 -64 288 -64 
            LINE N 128 0 128 -64 
            LINE N 0 -96 56 -96 
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
        BEGIN BLOCKDEF fdre
            TIMESTAMP 2001 2 2 12 37 14
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_7 xorcy
            PIN CI XLXN_15
            PIN LI Q1
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_8 xorcy
            PIN CI CarryIn
            PIN LI Q0
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_9 muxcy
            PIN CI CarryIn
            PIN DI XLXN_33
            PIN S Q0
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_10 gnd
            PIN G XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_17 muxcy
            PIN CI XLXN_15
            PIN DI XLXN_33
            PIN S Q1
            PIN O CarryOut
        END BLOCK
        BEGIN BLOCK XLXI_18 fdre
            PIN C CLK
            PIN CE CE
            PIN D XLXN_1
            PIN R R
            PIN Q Q1
        END BLOCK
        BEGIN BLOCK XLXI_19 fdre
            PIN C CLK
            PIN CE CE
            PIN D XLXN_2
            PIN R R
            PIN Q Q0
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_1
            WIRE 1616 1568 1712 1568
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1616 1968 1712 1968
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1584 2304 1696 2304
            WIRE 1696 1632 1712 1632
            WIRE 1696 1632 1696 2032
            WIRE 1696 2032 1712 2032
            WIRE 1696 2032 1696 2304
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1600 2096 1680 2096
            WIRE 1680 2096 1712 2096
            WIRE 1680 1696 1712 1696
            WIRE 1680 1696 1680 2096
        END BRANCH
        BEGIN BRANCH R
            WIRE 1584 2192 1664 2192
            WIRE 1664 2192 1712 2192
            WIRE 1664 1792 1712 1792
            WIRE 1664 1792 1664 2192
        END BRANCH
        BEGIN BRANCH Q1
            WIRE 864 1136 864 1280
            WIRE 864 1280 944 1280
            WIRE 864 1136 1280 1136
            WIRE 1280 1136 1280 1440
            WIRE 1280 1440 1280 1536
            WIRE 1280 1536 1360 1536
            WIRE 1280 1440 2160 1440
            WIRE 2160 1440 2160 1568
            WIRE 2160 1568 2224 1568
            WIRE 2096 1568 2160 1568
        END BRANCH
        BEGIN BRANCH CarryIn
            WIRE 848 2000 1152 2000
            WIRE 1152 2000 1360 2000
            WIRE 1152 1840 1152 2000
        END BRANCH
        BEGIN BRANCH Q0
            WIRE 880 1568 880 1744
            WIRE 880 1744 960 1744
            WIRE 880 1568 1296 1568
            WIRE 1296 1568 1296 1840
            WIRE 1296 1840 1296 1936
            WIRE 1296 1936 1360 1936
            WIRE 1296 1840 2160 1840
            WIRE 2160 1840 2160 1968
            WIRE 2160 1968 2240 1968
            WIRE 2096 1968 2160 1968
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1136 1376 1136 1600
            WIRE 1136 1600 1152 1600
            WIRE 1152 1600 1360 1600
            WIRE 1152 1600 1152 1616
        END BRANCH
        INSTANCE XLXI_7 1360 1664 R0
        INSTANCE XLXI_8 1360 2064 R0
        INSTANCE XLXI_9 960 1840 R0
        INSTANCE XLXI_10 1008 2208 R0
        IOMARKER 2224 1568 Q1 R0 28
        IOMARKER 2240 1968 Q0 R0 28
        IOMARKER 1600 2096 CLK R180 28
        IOMARKER 1584 2192 R R180 28
        IOMARKER 1584 2304 CE R180 28
        IOMARKER 848 2000 CarryIn R180 28
        INSTANCE XLXI_17 944 1376 R0
        BEGIN BRANCH XLXN_33
            WIRE 928 1440 1072 1440
            WIRE 928 1440 928 1952
            WIRE 928 1952 1072 1952
            WIRE 1072 1952 1072 2080
            WIRE 1072 1952 1088 1952
            WIRE 1072 1376 1072 1440
            WIRE 1088 1840 1088 1952
        END BRANCH
        BEGIN BRANCH CarryOut
            WIRE 1136 1024 1136 1152
            WIRE 1136 1024 1216 1024
        END BRANCH
        IOMARKER 1216 1024 CarryOut R0 28
        INSTANCE XLXI_18 1712 1824 R0
        INSTANCE XLXI_19 1712 2224 R0
    END SHEET
END SCHEMATIC
