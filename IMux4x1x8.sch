VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan6"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL InData0(7:0)
        SIGNAL OutData(7:0)
        SIGNAL InData3(7:0)
        SIGNAL InData2(7:0)
        SIGNAL InData1(7:0)
        SIGNAL OutData(4)
        SIGNAL OutData(5)
        SIGNAL OutData(6)
        SIGNAL OutData(7)
        SIGNAL InData0(4)
        SIGNAL InData1(4)
        SIGNAL InData2(4)
        SIGNAL InData3(4)
        SIGNAL OutData(0)
        SIGNAL InData0(5)
        SIGNAL InData1(5)
        SIGNAL InData2(5)
        SIGNAL InData3(5)
        SIGNAL OutData(1)
        SIGNAL OutData(2)
        SIGNAL InData3(6)
        SIGNAL InData2(6)
        SIGNAL InData1(6)
        SIGNAL InData0(6)
        SIGNAL InData0(7)
        SIGNAL InData1(7)
        SIGNAL InData2(7)
        SIGNAL InData3(7)
        SIGNAL OutData(3)
        SIGNAL InData0(0)
        SIGNAL InData1(0)
        SIGNAL InData2(0)
        SIGNAL InData3(0)
        SIGNAL InData0(1)
        SIGNAL InData1(1)
        SIGNAL InData2(1)
        SIGNAL InData3(1)
        SIGNAL InData0(2)
        SIGNAL InData1(2)
        SIGNAL InData3(2)
        SIGNAL InData0(3)
        SIGNAL InData1(3)
        SIGNAL InData2(2)
        SIGNAL InData3(3)
        SIGNAL InData2(3)
        SIGNAL XLXN_75
        SIGNAL XLXN_77
        SIGNAL XLXN_81
        SIGNAL Present3
        SIGNAL Present0
        SIGNAL Present2
        SIGNAL Present1
        SIGNAL Present
        PORT Input InData0(7:0)
        PORT Output OutData(7:0)
        PORT Input InData3(7:0)
        PORT Input InData2(7:0)
        PORT Input InData1(7:0)
        PORT Input Present3
        PORT Input Present0
        PORT Input Present2
        PORT Input Present1
        PORT Output Present
        BEGIN BLOCKDEF m4_1e
            TIMESTAMP 2001 2 2 12 39 29
            LINE N 0 -416 96 -416 
            LINE N 0 -352 96 -352 
            LINE N 0 -288 96 -288 
            LINE N 0 -224 96 -224 
            LINE N 0 -32 96 -32 
            LINE N 320 -320 256 -320 
            LINE N 0 -160 96 -160 
            LINE N 0 -96 96 -96 
            LINE N 176 -96 96 -96 
            LINE N 176 -208 176 -96 
            LINE N 224 -32 96 -32 
            LINE N 224 -216 224 -32 
            LINE N 256 -224 96 -192 
            LINE N 256 -416 256 -224 
            LINE N 96 -448 256 -416 
            LINE N 96 -192 96 -448 
            LINE N 128 -160 96 -160 
            LINE N 128 -200 128 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2001 2 2 12 37 29
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF lut4
            TIMESTAMP 2001 2 2 12 38 51
            LINE N 384 -192 320 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            RECTANGLE N 64 -384 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2001 2 2 12 38 38
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF or4
            TIMESTAMP 2001 4 25 16 50 36
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 192 -160 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -208 48 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 m4_1e
            PIN D0 InData0(0)
            PIN D1 InData1(0)
            PIN D2 InData2(0)
            PIN D3 InData3(0)
            PIN E XLXN_81
            PIN S0 XLXN_75
            PIN S1 XLXN_77
            PIN O OutData(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 m4_1e
            PIN D0 InData0(1)
            PIN D1 InData1(1)
            PIN D2 InData2(1)
            PIN D3 InData3(1)
            PIN E XLXN_81
            PIN S0 XLXN_75
            PIN S1 XLXN_77
            PIN O OutData(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 m4_1e
            PIN D0 InData0(2)
            PIN D1 InData1(2)
            PIN D2 InData2(2)
            PIN D3 InData3(2)
            PIN E XLXN_81
            PIN S0 XLXN_75
            PIN S1 XLXN_77
            PIN O OutData(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 m4_1e
            PIN D0 InData0(3)
            PIN D1 InData1(3)
            PIN D2 InData2(3)
            PIN D3 InData3(3)
            PIN E XLXN_81
            PIN S0 XLXN_75
            PIN S1 XLXN_77
            PIN O OutData(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 m4_1e
            PIN D0 InData0(4)
            PIN D1 InData1(4)
            PIN D2 InData2(4)
            PIN D3 InData3(4)
            PIN E XLXN_81
            PIN S0 XLXN_75
            PIN S1 XLXN_77
            PIN O OutData(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 m4_1e
            PIN D0 InData0(5)
            PIN D1 InData1(5)
            PIN D2 InData2(5)
            PIN D3 InData3(5)
            PIN E XLXN_81
            PIN S0 XLXN_75
            PIN S1 XLXN_77
            PIN O OutData(5)
        END BLOCK
        BEGIN BLOCK XLXI_7 m4_1e
            PIN D0 InData0(6)
            PIN D1 InData1(6)
            PIN D2 InData2(6)
            PIN D3 InData3(6)
            PIN E XLXN_81
            PIN S0 XLXN_75
            PIN S1 XLXN_77
            PIN O OutData(6)
        END BLOCK
        BEGIN BLOCK XLXI_8 m4_1e
            PIN D0 InData0(7)
            PIN D1 InData1(7)
            PIN D2 InData2(7)
            PIN D3 InData3(7)
            PIN E XLXN_81
            PIN S0 XLXN_75
            PIN S1 XLXN_77
            PIN O OutData(7)
        END BLOCK
        BEGIN BLOCK XLXI_33 vcc
            PIN P XLXN_81
        END BLOCK
        BEGIN BLOCK XLXI_36 or2
            PIN I0 Present2
            PIN I1 Present3
            PIN O XLXN_77
        END BLOCK
        BEGIN BLOCK XLXI_37 or4
            PIN I0 Present0
            PIN I1 Present1
            PIN I2 Present3
            PIN I3 Present2
            PIN O Present
        END BLOCK
        BEGIN BLOCK XLXI_38 lut4
            BEGIN ATTR INIT "FF0C"
                VERILOG all:0 dp:1nosynth wsynop:1 wsynth:1
                VHDL all:0 gm:1nosynth wa:1 wd:1
                VALUETYPE BitVector 16 h
            END ATTR
            PIN I0 Present0
            PIN I1 Present1
            PIN I2 Present2
            PIN I3 Present3
            PIN O XLXN_75
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH InData3(7:0)
            WIRE 368 224 496 224
            WIRE 496 224 496 304
            WIRE 496 304 496 800
            WIRE 496 800 496 1296
            WIRE 496 1296 496 1776
            WIRE 496 1776 496 2048
            WIRE 496 2048 1984 2048
            WIRE 1984 112 1984 288
            WIRE 1984 288 1984 784
            WIRE 1984 784 1984 1280
            WIRE 1984 1280 1984 1760
            WIRE 1984 1760 1984 2048
        END BRANCH
        BEGIN BRANCH InData2(7:0)
            WIRE 368 176 656 176
            WIRE 656 176 656 240
            WIRE 656 240 656 736
            WIRE 656 736 656 1232
            WIRE 656 1232 656 1712
            WIRE 656 1712 656 2032
            WIRE 656 2032 2128 2032
            WIRE 2128 96 2128 224
            WIRE 2128 224 2128 720
            WIRE 2128 720 2128 1216
            WIRE 2128 1216 2128 1696
            WIRE 2128 1696 2128 2032
        END BRANCH
        BEGIN BRANCH InData0(7:0)
            WIRE 368 80 976 80
            WIRE 976 80 976 112
            WIRE 976 112 976 608
            WIRE 976 608 976 1104
            WIRE 976 1104 976 1584
            WIRE 976 1584 976 2000
            WIRE 976 2000 2448 2000
            WIRE 2448 80 2448 96
            WIRE 2448 96 2448 592
            WIRE 2448 592 2448 1088
            WIRE 2448 1088 2448 1568
            WIRE 2448 1568 2448 2000
        END BRANCH
        INSTANCE XLXI_1 1312 528 R0
        INSTANCE XLXI_2 1296 1024 R0
        INSTANCE XLXI_3 1296 1520 R0
        INSTANCE XLXI_4 1280 2000 R0
        IOMARKER 368 224 InData3(7:0) R180 28
        IOMARKER 368 176 InData2(7:0) R180 28
        IOMARKER 368 128 InData1(7:0) R180 28
        IOMARKER 368 80 InData0(7:0) R180 28
        IOMARKER 3328 80 OutData(7:0) R0 28
        BEGIN BRANCH OutData(7:0)
            WIRE 1792 128 1792 208
            WIRE 1792 208 1792 704
            WIRE 1792 704 1792 1200
            WIRE 1792 1200 1792 1680
            WIRE 1792 1680 1792 1984
            WIRE 1792 1984 3312 1984
            WIRE 3312 80 3328 80
            WIRE 3312 80 3312 192
            WIRE 3312 192 3312 688
            WIRE 3312 688 3312 1184
            WIRE 3312 1184 3312 1664
            WIRE 3312 1664 3312 1984
        END BRANCH
        BUSTAP 3312 192 3216 192
        BUSTAP 3312 688 3216 688
        BUSTAP 3312 1184 3216 1184
        BUSTAP 3312 1664 3216 1664
        BEGIN BRANCH OutData(4)
            WIRE 3072 192 3168 192
            WIRE 3168 192 3216 192
            BEGIN DISPLAY 3168 192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OutData(5)
            WIRE 3072 688 3168 688
            WIRE 3168 688 3216 688
            BEGIN DISPLAY 3168 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OutData(6)
            WIRE 3072 1184 3168 1184
            WIRE 3168 1184 3216 1184
            BEGIN DISPLAY 3168 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OutData(7)
            WIRE 3088 1664 3168 1664
            WIRE 3168 1664 3216 1664
            BEGIN DISPLAY 3168 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_5 2752 512 R0
        INSTANCE XLXI_6 2752 1008 R0
        INSTANCE XLXI_7 2752 1504 R0
        INSTANCE XLXI_8 2768 1984 R0
        BUSTAP 1792 208 1696 208
        BUSTAP 1792 704 1696 704
        BUSTAP 1792 1200 1696 1200
        BUSTAP 1792 1680 1696 1680
        BEGIN BRANCH InData1(7:0)
            WIRE 368 128 816 128
            WIRE 816 128 816 176
            WIRE 816 176 816 672
            WIRE 816 672 816 1168
            WIRE 816 1168 816 1648
            WIRE 816 1648 816 2016
            WIRE 816 2016 2288 2016
            WIRE 2288 80 2288 160
            WIRE 2288 160 2288 656
            WIRE 2288 656 2288 1152
            WIRE 2288 1152 2288 1632
            WIRE 2288 1632 2288 2016
        END BRANCH
        BUSTAP 976 112 1072 112
        BUSTAP 976 608 1072 608
        BUSTAP 976 1104 1072 1104
        BUSTAP 976 1584 1072 1584
        BUSTAP 2448 96 2544 96
        BUSTAP 2448 592 2544 592
        BUSTAP 2448 1088 2544 1088
        BUSTAP 2448 1568 2544 1568
        BUSTAP 816 176 912 176
        BUSTAP 656 240 752 240
        BUSTAP 496 304 592 304
        BUSTAP 816 672 912 672
        BUSTAP 656 736 752 736
        BUSTAP 496 800 592 800
        BUSTAP 816 1168 912 1168
        BUSTAP 656 1232 752 1232
        BUSTAP 496 1296 592 1296
        BUSTAP 816 1648 912 1648
        BUSTAP 656 1712 752 1712
        BUSTAP 496 1776 592 1776
        BUSTAP 1984 1760 2080 1760
        BUSTAP 2128 1696 2224 1696
        BUSTAP 2288 1632 2384 1632
        BUSTAP 1984 1280 2080 1280
        BUSTAP 2128 1216 2224 1216
        BUSTAP 2288 1152 2384 1152
        BUSTAP 2288 656 2384 656
        BUSTAP 2128 720 2224 720
        BUSTAP 1984 784 2080 784
        BUSTAP 2288 160 2384 160
        BUSTAP 2128 224 2224 224
        BUSTAP 1984 288 2080 288
        BEGIN BRANCH InData0(4)
            WIRE 2544 96 2560 96
            WIRE 2560 96 2752 96
            BEGIN DISPLAY 2560 96 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData1(4)
            WIRE 2384 160 2560 160
            WIRE 2560 160 2752 160
            BEGIN DISPLAY 2560 160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData2(4)
            WIRE 2224 224 2544 224
            WIRE 2544 224 2752 224
            BEGIN DISPLAY 2544 224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData3(4)
            WIRE 2080 288 2544 288
            WIRE 2544 288 2752 288
            BEGIN DISPLAY 2544 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OutData(0)
            WIRE 1632 208 1680 208
            WIRE 1680 208 1696 208
            BEGIN DISPLAY 1680 208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData0(5)
            WIRE 2544 592 2560 592
            WIRE 2560 592 2752 592
            BEGIN DISPLAY 2560 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData1(5)
            WIRE 2384 656 2560 656
            WIRE 2560 656 2752 656
            BEGIN DISPLAY 2560 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData2(5)
            WIRE 2224 720 2560 720
            WIRE 2560 720 2752 720
            BEGIN DISPLAY 2560 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData3(5)
            WIRE 2080 784 2560 784
            WIRE 2560 784 2752 784
            BEGIN DISPLAY 2560 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OutData(1)
            WIRE 1616 704 1680 704
            WIRE 1680 704 1696 704
            BEGIN DISPLAY 1680 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OutData(2)
            WIRE 1616 1200 1680 1200
            WIRE 1680 1200 1696 1200
            BEGIN DISPLAY 1680 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData3(6)
            WIRE 2080 1280 2544 1280
            WIRE 2544 1280 2752 1280
            BEGIN DISPLAY 2544 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData2(6)
            WIRE 2224 1216 2544 1216
            WIRE 2544 1216 2752 1216
            BEGIN DISPLAY 2544 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData1(6)
            WIRE 2384 1152 2560 1152
            WIRE 2560 1152 2752 1152
            BEGIN DISPLAY 2560 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData0(6)
            WIRE 2544 1088 2560 1088
            WIRE 2560 1088 2752 1088
            BEGIN DISPLAY 2560 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData0(7)
            WIRE 2544 1568 2560 1568
            WIRE 2560 1568 2768 1568
            BEGIN DISPLAY 2560 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData1(7)
            WIRE 2384 1632 2560 1632
            WIRE 2560 1632 2768 1632
            BEGIN DISPLAY 2560 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData2(7)
            WIRE 2224 1696 2544 1696
            WIRE 2544 1696 2768 1696
            BEGIN DISPLAY 2544 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData3(7)
            WIRE 2080 1760 2560 1760
            WIRE 2560 1760 2768 1760
            BEGIN DISPLAY 2560 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OutData(3)
            WIRE 1600 1680 1664 1680
            WIRE 1664 1680 1696 1680
            BEGIN DISPLAY 1664 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData0(0)
            WIRE 1072 112 1104 112
            WIRE 1104 112 1312 112
            BEGIN DISPLAY 1104 112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData1(0)
            WIRE 912 176 1104 176
            WIRE 1104 176 1312 176
            BEGIN DISPLAY 1104 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData2(0)
            WIRE 752 240 1088 240
            WIRE 1088 240 1312 240
            BEGIN DISPLAY 1088 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData3(0)
            WIRE 592 304 1088 304
            WIRE 1088 304 1312 304
            BEGIN DISPLAY 1088 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData0(1)
            WIRE 1072 608 1104 608
            WIRE 1104 608 1296 608
            BEGIN DISPLAY 1104 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData1(1)
            WIRE 912 672 1104 672
            WIRE 1104 672 1296 672
            BEGIN DISPLAY 1104 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData2(1)
            WIRE 752 736 1088 736
            WIRE 1088 736 1296 736
            BEGIN DISPLAY 1088 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData3(1)
            WIRE 592 800 1088 800
            WIRE 1088 800 1296 800
            BEGIN DISPLAY 1088 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData0(2)
            WIRE 1072 1104 1104 1104
            WIRE 1104 1104 1296 1104
            BEGIN DISPLAY 1104 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData1(2)
            WIRE 912 1168 1104 1168
            WIRE 1104 1168 1296 1168
            BEGIN DISPLAY 1104 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData2(2)
            WIRE 752 1232 1088 1232
            WIRE 1088 1232 1296 1232
            BEGIN DISPLAY 1088 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData3(2)
            WIRE 592 1296 1088 1296
            WIRE 1088 1296 1296 1296
            BEGIN DISPLAY 1088 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData0(3)
            WIRE 1072 1584 1088 1584
            WIRE 1088 1584 1280 1584
            BEGIN DISPLAY 1088 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData1(3)
            WIRE 912 1648 1088 1648
            WIRE 1088 1648 1280 1648
            BEGIN DISPLAY 1088 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData2(3)
            WIRE 752 1712 1088 1712
            WIRE 1088 1712 1280 1712
            BEGIN DISPLAY 1088 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InData3(3)
            WIRE 592 1776 1088 1776
            WIRE 1088 1776 1280 1776
            BEGIN DISPLAY 1088 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_75
            WIRE 1264 1360 1280 1360
            WIRE 1280 1360 1296 1360
            WIRE 1264 1360 1264 1840
            WIRE 1264 1840 1280 1840
            WIRE 1264 1840 1264 2064
            WIRE 1264 2064 1632 2064
            WIRE 1632 2064 1632 2384
            WIRE 1280 368 1280 864
            WIRE 1280 864 1296 864
            WIRE 1280 864 1280 1360
            WIRE 1280 368 1312 368
            WIRE 1568 2384 1632 2384
            WIRE 1632 1824 1632 2064
            WIRE 1632 1824 2736 1824
            WIRE 2736 1824 2768 1824
            WIRE 2736 352 2752 352
            WIRE 2736 352 2736 848
            WIRE 2736 848 2752 848
            WIRE 2736 848 2736 1344
            WIRE 2736 1344 2752 1344
            WIRE 2736 1344 2736 1824
        END BRANCH
        BEGIN BRANCH XLXN_77
            WIRE 976 2160 1248 2160
            WIRE 1248 928 1264 928
            WIRE 1264 928 1296 928
            WIRE 1248 928 1248 1424
            WIRE 1248 1424 1296 1424
            WIRE 1248 1424 1248 1904
            WIRE 1248 1904 1280 1904
            WIRE 1248 1904 1248 2080
            WIRE 1248 2080 1648 2080
            WIRE 1248 2080 1248 2160
            WIRE 1264 432 1264 928
            WIRE 1264 432 1312 432
            WIRE 1648 1888 1648 2080
            WIRE 1648 1888 2720 1888
            WIRE 2720 1888 2768 1888
            WIRE 2720 416 2752 416
            WIRE 2720 416 2720 912
            WIRE 2720 912 2752 912
            WIRE 2720 912 2720 1408
            WIRE 2720 1408 2752 1408
            WIRE 2720 1408 2720 1888
        END BRANCH
        BEGIN BRANCH XLXN_81
            WIRE 1056 432 1056 496
            WIRE 1056 496 1232 496
            WIRE 1232 496 1312 496
            WIRE 1232 496 1232 992
            WIRE 1232 992 1296 992
            WIRE 1232 992 1232 1488
            WIRE 1232 1488 1296 1488
            WIRE 1232 1488 1232 1968
            WIRE 1232 1968 1280 1968
            WIRE 1232 1968 1232 1984
            WIRE 1232 1984 1616 1984
            WIRE 1616 1952 1616 1984
            WIRE 1616 1952 2704 1952
            WIRE 2704 1952 2768 1952
            WIRE 2704 480 2752 480
            WIRE 2704 480 2704 976
            WIRE 2704 976 2752 976
            WIRE 2704 976 2704 1472
            WIRE 2704 1472 2752 1472
            WIRE 2704 1472 2704 1952
        END BRANCH
        INSTANCE XLXI_33 992 432 R0
        INSTANCE XLXI_37 736 2672 R0
        BEGIN INSTANCE XLXI_38 1184 2576 R0
            BEGIN DISPLAY 140 -244 ATTR INIT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        INSTANCE XLXI_36 720 2256 R0
        BEGIN BRANCH Present0
            WIRE 480 2320 608 2320
            WIRE 608 2320 608 2688
            WIRE 608 2688 736 2688
            WIRE 736 2688 1056 2688
            WIRE 736 2608 736 2688
            WIRE 1056 2448 1056 2688
            WIRE 1056 2448 1184 2448
        END BRANCH
        BEGIN BRANCH Present1
            WIRE 480 2256 672 2256
            WIRE 672 2256 672 2384
            WIRE 672 2384 672 2544
            WIRE 672 2544 736 2544
            WIRE 672 2384 1184 2384
        END BRANCH
        BEGIN BRANCH Present
            WIRE 992 2512 1168 2512
            WIRE 1168 2512 1168 2592
            WIRE 1168 2592 1600 2592
        END BRANCH
        IOMARKER 480 2128 Present3 R180 28
        IOMARKER 480 2192 Present2 R180 28
        IOMARKER 480 2256 Present1 R180 28
        IOMARKER 480 2320 Present0 R180 28
        IOMARKER 1600 2592 Present R0 28
        BEGIN BRANCH Present2
            WIRE 480 2192 656 2192
            WIRE 656 2192 720 2192
            WIRE 656 2192 656 2224
            WIRE 656 2224 736 2224
            WIRE 736 2224 736 2320
            WIRE 736 2320 736 2416
            WIRE 736 2320 1184 2320
        END BRANCH
        BEGIN BRANCH Present3
            WIRE 480 2128 640 2128
            WIRE 640 2128 720 2128
            WIRE 640 2128 640 2320
            WIRE 640 2320 656 2320
            WIRE 656 2320 656 2480
            WIRE 656 2480 736 2480
            WIRE 656 2320 704 2320
            WIRE 704 2256 704 2320
            WIRE 704 2256 1184 2256
        END BRANCH
    END SHEET
END SCHEMATIC
