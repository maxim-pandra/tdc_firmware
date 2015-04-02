VERSION 5
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "Spartan6"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    End ATTR
    BEGIN NETLIST
        SIGNAL IClock(11:0)
        SIGNAL OClock(11:0)
        SIGNAL OClock(0)
        SIGNAL OClock(1)
        SIGNAL OClock(2)
        SIGNAL OClock(3)
        SIGNAL IClock(0)
        SIGNAL IClock(1)
        SIGNAL IClock(2)
        SIGNAL IClock(3)
        SIGNAL OClock(4)
        SIGNAL OClock(5)
        SIGNAL OClock(6)
        SIGNAL XLXN_22
        SIGNAL IClock(4)
        SIGNAL IClock(5)
        SIGNAL IClock(6)
        SIGNAL XLXN_29
        SIGNAL OClock(7)
        SIGNAL OClock(8)
        SIGNAL IClock(9)
        SIGNAL IClock(7)
        SIGNAL IClock(8)
        SIGNAL OClock(9)
        SIGNAL OClock(10)
        SIGNAL OClock(11)
        SIGNAL IClock(11)
        SIGNAL XLXN_44
        SIGNAL IClock(10)
        PORT Input IClock(11:0)
        PORT Output OClock(11:0)
        BEGIN BLOCKDEF buf
            TIMESTAMP 2001 2 2 12 51 12
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 64 0 128 -32 
            LINE N 128 -32 64 -64 
            LINE N 64 -64 64 0 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF and4b3
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 40 -192 
            CIRCLE N 40 -204 64 -180 
            LINE N 0 -256 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF and4b4
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 40 -192 
            CIRCLE N 40 -204 64 -180 
            LINE N 0 -256 40 -256 
            CIRCLE N 40 -268 64 -244 
            LINE N 256 -160 192 -160 
            LINE N 64 -208 144 -208 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF and4b2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 64 -208 144 -208 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 buf
            PIN I IClock(0)
            PIN O OClock(0)
        END BLOCK
        BEGIN BLOCK XLXI_3 and2b1
            PIN I0 IClock(0)
            PIN I1 IClock(1)
            PIN O OClock(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 and3b2
            PIN I0 IClock(1)
            PIN I1 IClock(0)
            PIN I2 IClock(2)
            PIN O OClock(2)
        END BLOCK
        BEGIN BLOCK XLXI_5 and4b3
            PIN I0 IClock(2)
            PIN I1 IClock(1)
            PIN I2 IClock(0)
            PIN I3 IClock(3)
            PIN O OClock(3)
        END BLOCK
        BEGIN BLOCK XLXI_7 and4b4
            PIN I0 IClock(3)
            PIN I1 IClock(2)
            PIN I2 IClock(1)
            PIN I3 IClock(0)
            PIN O XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_8 and2
            PIN I0 IClock(4)
            PIN I1 XLXN_22
            PIN O OClock(4)
        END BLOCK
        BEGIN BLOCK XLXI_9 and3b1
            PIN I0 IClock(4)
            PIN I1 IClock(5)
            PIN I2 XLXN_22
            PIN O OClock(5)
        END BLOCK
        BEGIN BLOCK XLXI_10 and4b2
            PIN I0 IClock(5)
            PIN I1 IClock(4)
            PIN I2 IClock(6)
            PIN I3 XLXN_22
            PIN O OClock(6)
        END BLOCK
        BEGIN BLOCK XLXI_11 and4b3
            PIN I0 IClock(6)
            PIN I1 IClock(5)
            PIN I2 IClock(4)
            PIN I3 XLXN_22
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_12 and2
            PIN I0 IClock(7)
            PIN I1 XLXN_29
            PIN O OClock(7)
        END BLOCK
        BEGIN BLOCK XLXI_13 and3b1
            PIN I0 IClock(7)
            PIN I1 IClock(8)
            PIN I2 XLXN_29
            PIN O OClock(8)
        END BLOCK
        BEGIN BLOCK XLXI_14 and4b2
            PIN I0 IClock(8)
            PIN I1 IClock(7)
            PIN I2 IClock(9)
            PIN I3 XLXN_29
            PIN O OClock(9)
        END BLOCK
        BEGIN BLOCK XLXI_15 and4b3
            PIN I0 IClock(9)
            PIN I1 IClock(8)
            PIN I2 IClock(7)
            PIN I3 XLXN_29
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_16 and2
            PIN I0 XLXN_44
            PIN I1 IClock(10)
            PIN O OClock(10)
        END BLOCK
        BEGIN BLOCK XLXI_17 and3b1
            PIN I0 IClock(10)
            PIN I1 XLXN_44
            PIN I2 IClock(11)
            PIN O OClock(11)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH IClock(11:0)
            WIRE 272 160 352 160
            WIRE 352 160 608 160
            WIRE 608 160 608 272
            WIRE 608 272 608 432
            WIRE 608 432 608 624
            WIRE 608 624 608 1200
            WIRE 608 1200 608 1328
            WIRE 608 1328 608 1520
            WIRE 608 1520 608 2048
            WIRE 608 2048 608 2176
            WIRE 608 2176 608 2368
            WIRE 608 2368 608 2560
            WIRE 608 2560 608 2624
            WIRE 608 2624 1520 2624
            WIRE 1520 1600 1520 1664
            WIRE 1520 1664 1520 1728
            WIRE 1520 1728 1520 1840
            WIRE 1520 1840 1520 2016
            WIRE 1520 2016 1520 2624
        END BRANCH
        BEGIN BRANCH OClock(11:0)
            WIRE 1408 160 1728 160
            WIRE 1408 160 1408 304
            WIRE 1408 304 1408 496
            WIRE 1408 496 1408 720
            WIRE 1408 720 1408 1168
            WIRE 1408 1168 1408 1328
            WIRE 1408 1328 1408 1552
            WIRE 1408 1552 1408 2016
            WIRE 1408 2016 1408 2176
            WIRE 1408 2176 1408 2400
            WIRE 1408 2400 1408 2560
            WIRE 1408 2560 2400 2560
            WIRE 2400 1600 2400 1632
            WIRE 2400 1632 2400 1872
            WIRE 2400 1872 2400 2080
            WIRE 2400 2080 2400 2560
        END BRANCH
        BEGIN BRANCH OClock(0)
            WIRE 1056 160 1280 160
            WIRE 1280 160 1312 160
            BEGIN DISPLAY 1280 160 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OClock(1)
            WIRE 1088 304 1248 304
            WIRE 1248 304 1312 304
            BEGIN DISPLAY 1248 304 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OClock(2)
            WIRE 1088 496 1248 496
            WIRE 1248 496 1312 496
            BEGIN DISPLAY 1248 496 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OClock(3)
            WIRE 1088 720 1248 720
            WIRE 1248 720 1312 720
            BEGIN DISPLAY 1248 720 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IClock(0)
            WIRE 704 160 752 160
            WIRE 752 160 816 160
            WIRE 816 160 832 160
            WIRE 816 160 816 336
            WIRE 816 336 832 336
            WIRE 816 336 816 496
            WIRE 816 496 832 496
            WIRE 816 496 816 688
            WIRE 816 688 832 688
            WIRE 816 688 816 880
            WIRE 816 880 832 880
            BEGIN DISPLAY 752 160 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IClock(1)
            WIRE 704 272 752 272
            WIRE 752 272 800 272
            WIRE 800 272 832 272
            WIRE 800 272 800 560
            WIRE 800 560 832 560
            WIRE 800 560 800 752
            WIRE 800 752 832 752
            WIRE 800 752 800 944
            WIRE 800 944 832 944
            BEGIN DISPLAY 752 272 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IClock(2)
            WIRE 704 432 752 432
            WIRE 752 432 784 432
            WIRE 784 432 832 432
            WIRE 784 432 784 816
            WIRE 784 816 832 816
            WIRE 784 816 784 1008
            WIRE 784 1008 832 1008
            BEGIN DISPLAY 752 432 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IClock(3)
            WIRE 704 624 736 624
            WIRE 736 624 768 624
            WIRE 768 624 832 624
            WIRE 768 624 768 1072
            WIRE 768 1072 832 1072
            BEGIN DISPLAY 736 624 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OClock(4)
            WIRE 1088 1168 1248 1168
            WIRE 1248 1168 1312 1168
            BEGIN DISPLAY 1248 1168 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OClock(5)
            WIRE 1104 1328 1248 1328
            WIRE 1248 1328 1312 1328
            BEGIN DISPLAY 1248 1328 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OClock(6)
            WIRE 1104 1552 1200 1552
            WIRE 1200 1552 1312 1552
            BEGIN DISPLAY 1200 1552 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 752 1088 752 1136
            WIRE 752 1136 816 1136
            WIRE 816 1136 832 1136
            WIRE 816 1136 816 1264
            WIRE 816 1264 848 1264
            WIRE 816 1264 816 1456
            WIRE 816 1456 848 1456
            WIRE 816 1456 816 1696
            WIRE 816 1696 848 1696
            WIRE 752 1088 1152 1088
            WIRE 1088 976 1152 976
            WIRE 1152 976 1152 1088
        END BRANCH
        BEGIN BRANCH IClock(4)
            WIRE 704 1200 736 1200
            WIRE 736 1200 800 1200
            WIRE 800 1200 832 1200
            WIRE 800 1200 800 1392
            WIRE 800 1392 848 1392
            WIRE 800 1392 800 1584
            WIRE 800 1584 848 1584
            WIRE 800 1584 800 1760
            WIRE 800 1760 848 1760
            BEGIN DISPLAY 736 1200 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IClock(5)
            WIRE 704 1328 736 1328
            WIRE 736 1328 784 1328
            WIRE 784 1328 848 1328
            WIRE 784 1328 784 1648
            WIRE 784 1648 848 1648
            WIRE 784 1648 784 1824
            WIRE 784 1824 848 1824
            BEGIN DISPLAY 736 1328 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IClock(6)
            WIRE 704 1520 736 1520
            WIRE 736 1520 768 1520
            WIRE 768 1520 848 1520
            WIRE 768 1520 768 1888
            WIRE 768 1888 848 1888
            BEGIN DISPLAY 736 1520 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 784 1952 784 1984
            WIRE 784 1984 816 1984
            WIRE 816 1984 848 1984
            WIRE 816 1984 816 2112
            WIRE 816 2112 848 2112
            WIRE 816 2112 816 2304
            WIRE 816 2304 848 2304
            WIRE 784 1952 1056 1952
            WIRE 1056 1952 1168 1952
            WIRE 1104 1792 1168 1792
            WIRE 1168 1792 1168 1952
            WIRE 1168 1792 1504 1792
            WIRE 1504 1536 1504 1792
            WIRE 1504 1536 1840 1536
        END BRANCH
        BEGIN BRANCH OClock(7)
            WIRE 1104 2016 1200 2016
            WIRE 1200 2016 1312 2016
            BEGIN DISPLAY 1200 2016 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OClock(8)
            WIRE 1104 2176 1216 2176
            WIRE 1216 2176 1312 2176
            BEGIN DISPLAY 1216 2176 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IClock(9)
            WIRE 704 2368 736 2368
            WIRE 736 2368 848 2368
            BEGIN DISPLAY 736 2368 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IClock(7)
            WIRE 704 2048 720 2048
            WIRE 720 2048 800 2048
            WIRE 800 2048 848 2048
            WIRE 800 2048 800 2240
            WIRE 800 2240 848 2240
            WIRE 800 2240 800 2432
            WIRE 800 2432 848 2432
            BEGIN DISPLAY 720 2048 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IClock(8)
            WIRE 704 2176 736 2176
            WIRE 736 2176 768 2176
            WIRE 768 2176 848 2176
            WIRE 768 2176 768 2496
            WIRE 768 2496 848 2496
            BEGIN DISPLAY 736 2176 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OClock(9)
            WIRE 1104 2400 1216 2400
            WIRE 1216 2400 1312 2400
            BEGIN DISPLAY 1216 2400 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 272 160 IClock(11:0)
        IOMARKER 1728 160 OClock(11:0)
        BUSTAP 1408 160 1312 160
        BUSTAP 1408 304 1312 304
        BUSTAP 1408 496 1312 496
        BUSTAP 1408 720 1312 720
        BUSTAP 608 160 704 160
        BUSTAP 608 272 704 272
        BUSTAP 608 432 704 432
        BUSTAP 608 624 704 624
        BUSTAP 608 1200 704 1200
        BUSTAP 608 1328 704 1328
        BUSTAP 608 1520 704 1520
        BUSTAP 1408 1168 1312 1168
        BUSTAP 1408 1328 1312 1328
        BUSTAP 1408 1552 1312 1552
        BUSTAP 1408 2016 1312 2016
        BUSTAP 1408 2176 1312 2176
        BUSTAP 1408 2400 1312 2400
        BUSTAP 608 2048 704 2048
        BUSTAP 608 2176 704 2176
        BUSTAP 608 2368 704 2368
        INSTANCE XLXI_1 832 192 R0
        INSTANCE XLXI_3 832 400 R0
        INSTANCE XLXI_4 832 624 R0
        INSTANCE XLXI_5 832 880 R0
        INSTANCE XLXI_7 832 1136 R0
        INSTANCE XLXI_8 832 1264 R0
        INSTANCE XLXI_9 848 1456 R0
        INSTANCE XLXI_10 848 1712 R0
        INSTANCE XLXI_11 848 1952 R0
        INSTANCE XLXI_12 848 2112 R0
        INSTANCE XLXI_13 848 2304 R0
        INSTANCE XLXI_14 848 2560 R0
        INSTANCE XLXI_15 1840 1792 R0
        INSTANCE XLXI_16 1824 1968 R0
        INSTANCE XLXI_17 1824 2208 R0
        BUSTAP 1520 1600 1616 1600
        BUSTAP 1520 1840 1616 1840
        BUSTAP 1520 2016 1616 2016
        BUSTAP 2400 1872 2304 1872
        BUSTAP 2400 2080 2304 2080
        BEGIN BRANCH OClock(10)
            WIRE 2080 1872 2192 1872
            WIRE 2192 1872 2304 1872
            BEGIN DISPLAY 2192 1872 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OClock(11)
            WIRE 2080 2080 2192 2080
            WIRE 2192 2080 2304 2080
            BEGIN DISPLAY 2192 2080 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IClock(7)
            WIRE 1616 1600 1664 1600
            WIRE 1664 1600 1840 1600
            BEGIN DISPLAY 1664 1600 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IClock(11)
            WIRE 1616 2016 1648 2016
            WIRE 1648 2016 1824 2016
            BEGIN DISPLAY 1648 2016 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 1808 1792 2160 1792
            WIRE 1808 1792 1808 1904
            WIRE 1808 1904 1824 1904
            WIRE 1808 1904 1808 2080
            WIRE 1808 2080 1824 2080
            WIRE 2096 1632 2160 1632
            WIRE 2160 1632 2160 1792
        END BRANCH
        BEGIN BRANCH IClock(10)
            WIRE 1616 1840 1648 1840
            WIRE 1648 1840 1776 1840
            WIRE 1776 1840 1824 1840
            WIRE 1776 1840 1776 2144
            WIRE 1776 2144 1824 2144
            BEGIN DISPLAY 1648 1840 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1520 1664 1616 1664
        BUSTAP 1520 1728 1616 1728
        BEGIN BRANCH IClock(8)
            WIRE 1616 1664 1664 1664
            WIRE 1664 1664 1840 1664
            BEGIN DISPLAY 1664 1664 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IClock(9)
            WIRE 1616 1728 1664 1728
            WIRE 1664 1728 1840 1728
            BEGIN DISPLAY 1664 1728 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
