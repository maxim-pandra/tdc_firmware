VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan6"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ZeroData(7:0)
        SIGNAL ZeroData(0)
        SIGNAL ZeroData(1)
        SIGNAL ZeroData(2)
        SIGNAL ZeroData(3)
        SIGNAL ZeroData(4)
        SIGNAL ZeroData(5)
        SIGNAL ZeroData(6)
        SIGNAL ZeroData(7)
        PORT Output ZeroData(7:0)
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2001 2 2 12 37 29
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 gnd
            PIN G ZeroData(7)
        END BLOCK
        BEGIN BLOCK XLXI_2 gnd
            PIN G ZeroData(6)
        END BLOCK
        BEGIN BLOCK XLXI_3 gnd
            PIN G ZeroData(5)
        END BLOCK
        BEGIN BLOCK XLXI_4 gnd
            PIN G ZeroData(4)
        END BLOCK
        BEGIN BLOCK XLXI_5 gnd
            PIN G ZeroData(3)
        END BLOCK
        BEGIN BLOCK XLXI_6 gnd
            PIN G ZeroData(2)
        END BLOCK
        BEGIN BLOCK XLXI_7 gnd
            PIN G ZeroData(1)
        END BLOCK
        BEGIN BLOCK XLXI_8 gnd
            PIN G ZeroData(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH ZeroData(7:0)
            WIRE 1600 480 2080 480
            WIRE 1600 480 1600 640
            WIRE 1600 640 1600 800
            WIRE 1600 800 1600 960
            WIRE 1600 960 1600 1120
            WIRE 1600 1120 1600 1280
            WIRE 1600 1280 1600 1440
            WIRE 1600 1440 1600 1600
            WIRE 1600 1600 1600 1760
            WIRE 1600 1760 1600 1920
        END BRANCH
        IOMARKER 2080 480 ZeroData(7:0) R0 28
        BUSTAP 1600 640 1504 640
        BUSTAP 1600 800 1504 800
        BUSTAP 1600 960 1504 960
        BUSTAP 1600 1120 1504 1120
        BUSTAP 1600 1280 1504 1280
        BUSTAP 1600 1440 1504 1440
        BUSTAP 1600 1600 1504 1600
        BUSTAP 1600 1760 1504 1760
        INSTANCE XLXI_1 1216 1952 R0
        INSTANCE XLXI_2 1216 1760 R0
        INSTANCE XLXI_3 1216 1600 R0
        INSTANCE XLXI_4 1216 1440 R0
        INSTANCE XLXI_5 1216 1280 R0
        INSTANCE XLXI_6 1216 1120 R0
        INSTANCE XLXI_7 1216 960 R0
        INSTANCE XLXI_8 1216 800 R0
        BEGIN BRANCH ZeroData(0)
            WIRE 1280 640 1280 672
            WIRE 1280 640 1408 640
            WIRE 1408 640 1504 640
            BEGIN DISPLAY 1408 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZeroData(1)
            WIRE 1280 800 1280 832
            WIRE 1280 800 1392 800
            WIRE 1392 800 1504 800
            BEGIN DISPLAY 1392 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZeroData(2)
            WIRE 1280 960 1280 992
            WIRE 1280 960 1392 960
            WIRE 1392 960 1504 960
            BEGIN DISPLAY 1392 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZeroData(3)
            WIRE 1280 1120 1280 1152
            WIRE 1280 1120 1408 1120
            WIRE 1408 1120 1504 1120
            BEGIN DISPLAY 1408 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZeroData(4)
            WIRE 1280 1280 1280 1312
            WIRE 1280 1280 1392 1280
            WIRE 1392 1280 1504 1280
            BEGIN DISPLAY 1392 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZeroData(5)
            WIRE 1280 1440 1280 1472
            WIRE 1280 1440 1392 1440
            WIRE 1392 1440 1504 1440
            BEGIN DISPLAY 1392 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZeroData(6)
            WIRE 1280 1600 1280 1632
            WIRE 1280 1600 1392 1600
            WIRE 1392 1600 1504 1600
            BEGIN DISPLAY 1392 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZeroData(7)
            WIRE 1280 1760 1280 1824
            WIRE 1280 1760 1408 1760
            WIRE 1408 1760 1504 1760
            BEGIN DISPLAY 1408 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
