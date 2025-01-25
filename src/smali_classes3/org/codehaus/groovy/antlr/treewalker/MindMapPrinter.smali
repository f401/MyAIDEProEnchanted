.class public Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;
.super Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;


# instance fields
.field private final DW:Ljava/io/PrintStream;

.field private FH:I

.field private Hw:Lorg/codehaus/groovy/antlr/SourceBuffer;

.field private final j6:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;-><init>()V

    iput-object p2, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->j6:[Ljava/lang/String;

    iput-object p1, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->DW:Ljava/io/PrintStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;[Ljava/lang/String;Lorg/codehaus/groovy/antlr/SourceBuffer;)V
    .registers 4

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;-><init>()V

    iput-object p2, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->j6:[Ljava/lang/String;

    iput-object p1, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->DW:Ljava/io/PrintStream;

    iput-object p3, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->Hw:Lorg/codehaus/groovy/antlr/SourceBuffer;

    return-void
.end method

.method private DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const-string v1, " COLOR=\"#006699\""

    const-string v2, " COLOR=\"#000000\""

    packed-switch v0, :pswitch_data_24

    :pswitch_b  #0x2, 0xf, 0x4d, 0x4e, 0x4f, 0x5f, 0xae, 0xb6, 0xb7, 0xd7, 0xd8, 0xd9, 0xdb, 0xe2, 0xe3
    goto :goto_14

    :pswitch_c  #0x58, 0xd4, 0xd5
    const-string v0, " COLOR=\"#008000\""

    goto :goto_15

    :pswitch_f  #0x57
    move-object v0, v1

    goto :goto_15

    :pswitch_11  #0xc, 0xd, 0x10, 0x12, 0x13, 0x1d, 0x51, 0x52, 0x53, 0x54, 0x5c, 0x5d, 0x5e, 0x62, 0x63, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x81, 0x82, 0x83, 0x84, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x96, 0x97, 0x98, 0x99, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1
    const-string v0, " COLOR=\"#17178B\""

    goto :goto_15

    :goto_14
    :pswitch_14  #0x1, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xe, 0x11, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x50, 0x55, 0x56, 0x59, 0x5a, 0x5b, 0x60, 0x61, 0x64, 0x65, 0x66, 0x67, 0x71, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x85, 0x86, 0x87, 0x88, 0x94, 0x95, 0x9a, 0x9b, 0x9c, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xa9, 0xaa, 0xab, 0xac, 0xad, 0xaf, 0xb0, 0xb1, 0xb2, 0xb3, 0xb4, 0xb5, 0xb8, 0xb9, 0xba, 0xbb, 0xbc, 0xbd, 0xbe, 0xbf, 0xc0, 0xc1, 0xc2, 0xc3, 0xc4, 0xc5, 0xc6, 0xc7, 0xc8, 0xc9, 0xca, 0xcb, 0xcc, 0xcd, 0xce, 0xcf, 0xd0, 0xd1, 0xd2, 0xd3, 0xd6, 0xda, 0xdc, 0xdd, 0xde, 0xdf, 0xe0, 0xe1, 0xe4, 0xe5, 0xe6
    move-object v0, v2

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result p1

    if-nez p1, :cond_22

    goto :goto_23

    :cond_22
    move-object v1, v0

    :goto_23
    return-object v1

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_14  #00000001
        :pswitch_b  #00000002
        :pswitch_14  #00000003
        :pswitch_14  #00000004
        :pswitch_14  #00000005
        :pswitch_14  #00000006
        :pswitch_14  #00000007
        :pswitch_14  #00000008
        :pswitch_14  #00000009
        :pswitch_14  #0000000a
        :pswitch_14  #0000000b
        :pswitch_11  #0000000c
        :pswitch_11  #0000000d
        :pswitch_14  #0000000e
        :pswitch_b  #0000000f
        :pswitch_11  #00000010
        :pswitch_14  #00000011
        :pswitch_11  #00000012
        :pswitch_11  #00000013
        :pswitch_14  #00000014
        :pswitch_14  #00000015
        :pswitch_14  #00000016
        :pswitch_14  #00000017
        :pswitch_14  #00000018
        :pswitch_14  #00000019
        :pswitch_14  #0000001a
        :pswitch_14  #0000001b
        :pswitch_14  #0000001c
        :pswitch_11  #0000001d
        :pswitch_14  #0000001e
        :pswitch_14  #0000001f
        :pswitch_14  #00000020
        :pswitch_14  #00000021
        :pswitch_14  #00000022
        :pswitch_14  #00000023
        :pswitch_14  #00000024
        :pswitch_14  #00000025
        :pswitch_14  #00000026
        :pswitch_14  #00000027
        :pswitch_14  #00000028
        :pswitch_14  #00000029
        :pswitch_14  #0000002a
        :pswitch_14  #0000002b
        :pswitch_14  #0000002c
        :pswitch_14  #0000002d
        :pswitch_14  #0000002e
        :pswitch_14  #0000002f
        :pswitch_14  #00000030
        :pswitch_14  #00000031
        :pswitch_14  #00000032
        :pswitch_14  #00000033
        :pswitch_14  #00000034
        :pswitch_14  #00000035
        :pswitch_14  #00000036
        :pswitch_14  #00000037
        :pswitch_14  #00000038
        :pswitch_14  #00000039
        :pswitch_14  #0000003a
        :pswitch_14  #0000003b
        :pswitch_14  #0000003c
        :pswitch_14  #0000003d
        :pswitch_14  #0000003e
        :pswitch_14  #0000003f
        :pswitch_14  #00000040
        :pswitch_14  #00000041
        :pswitch_14  #00000042
        :pswitch_14  #00000043
        :pswitch_14  #00000044
        :pswitch_14  #00000045
        :pswitch_14  #00000046
        :pswitch_14  #00000047
        :pswitch_14  #00000048
        :pswitch_14  #00000049
        :pswitch_14  #0000004a
        :pswitch_14  #0000004b
        :pswitch_14  #0000004c
        :pswitch_b  #0000004d
        :pswitch_b  #0000004e
        :pswitch_b  #0000004f
        :pswitch_14  #00000050
        :pswitch_11  #00000051
        :pswitch_11  #00000052
        :pswitch_11  #00000053
        :pswitch_11  #00000054
        :pswitch_14  #00000055
        :pswitch_14  #00000056
        :pswitch_f  #00000057
        :pswitch_c  #00000058
        :pswitch_14  #00000059
        :pswitch_14  #0000005a
        :pswitch_14  #0000005b
        :pswitch_11  #0000005c
        :pswitch_11  #0000005d
        :pswitch_11  #0000005e
        :pswitch_b  #0000005f
        :pswitch_14  #00000060
        :pswitch_14  #00000061
        :pswitch_11  #00000062
        :pswitch_11  #00000063
        :pswitch_14  #00000064
        :pswitch_14  #00000065
        :pswitch_14  #00000066
        :pswitch_14  #00000067
        :pswitch_11  #00000068
        :pswitch_11  #00000069
        :pswitch_11  #0000006a
        :pswitch_11  #0000006b
        :pswitch_11  #0000006c
        :pswitch_11  #0000006d
        :pswitch_11  #0000006e
        :pswitch_11  #0000006f
        :pswitch_11  #00000070
        :pswitch_14  #00000071
        :pswitch_11  #00000072
        :pswitch_11  #00000073
        :pswitch_11  #00000074
        :pswitch_11  #00000075
        :pswitch_11  #00000076
        :pswitch_11  #00000077
        :pswitch_11  #00000078
        :pswitch_11  #00000079
        :pswitch_11  #0000007a
        :pswitch_14  #0000007b
        :pswitch_14  #0000007c
        :pswitch_14  #0000007d
        :pswitch_14  #0000007e
        :pswitch_14  #0000007f
        :pswitch_14  #00000080
        :pswitch_11  #00000081
        :pswitch_11  #00000082
        :pswitch_11  #00000083
        :pswitch_11  #00000084
        :pswitch_14  #00000085
        :pswitch_14  #00000086
        :pswitch_14  #00000087
        :pswitch_14  #00000088
        :pswitch_11  #00000089
        :pswitch_11  #0000008a
        :pswitch_11  #0000008b
        :pswitch_11  #0000008c
        :pswitch_11  #0000008d
        :pswitch_11  #0000008e
        :pswitch_11  #0000008f
        :pswitch_11  #00000090
        :pswitch_11  #00000091
        :pswitch_11  #00000092
        :pswitch_11  #00000093
        :pswitch_14  #00000094
        :pswitch_14  #00000095
        :pswitch_11  #00000096
        :pswitch_11  #00000097
        :pswitch_11  #00000098
        :pswitch_11  #00000099
        :pswitch_14  #0000009a
        :pswitch_14  #0000009b
        :pswitch_14  #0000009c
        :pswitch_11  #0000009d
        :pswitch_11  #0000009e
        :pswitch_11  #0000009f
        :pswitch_11  #000000a0
        :pswitch_11  #000000a1
        :pswitch_14  #000000a2
        :pswitch_14  #000000a3
        :pswitch_14  #000000a4
        :pswitch_14  #000000a5
        :pswitch_14  #000000a6
        :pswitch_14  #000000a7
        :pswitch_14  #000000a8
        :pswitch_14  #000000a9
        :pswitch_14  #000000aa
        :pswitch_14  #000000ab
        :pswitch_14  #000000ac
        :pswitch_14  #000000ad
        :pswitch_b  #000000ae
        :pswitch_14  #000000af
        :pswitch_14  #000000b0
        :pswitch_14  #000000b1
        :pswitch_14  #000000b2
        :pswitch_14  #000000b3
        :pswitch_14  #000000b4
        :pswitch_14  #000000b5
        :pswitch_b  #000000b6
        :pswitch_b  #000000b7
        :pswitch_14  #000000b8
        :pswitch_14  #000000b9
        :pswitch_14  #000000ba
        :pswitch_14  #000000bb
        :pswitch_14  #000000bc
        :pswitch_14  #000000bd
        :pswitch_14  #000000be
        :pswitch_14  #000000bf
        :pswitch_14  #000000c0
        :pswitch_14  #000000c1
        :pswitch_14  #000000c2
        :pswitch_14  #000000c3
        :pswitch_14  #000000c4
        :pswitch_14  #000000c5
        :pswitch_14  #000000c6
        :pswitch_14  #000000c7
        :pswitch_14  #000000c8
        :pswitch_14  #000000c9
        :pswitch_14  #000000ca
        :pswitch_14  #000000cb
        :pswitch_14  #000000cc
        :pswitch_14  #000000cd
        :pswitch_14  #000000ce
        :pswitch_14  #000000cf
        :pswitch_14  #000000d0
        :pswitch_14  #000000d1
        :pswitch_14  #000000d2
        :pswitch_14  #000000d3
        :pswitch_c  #000000d4
        :pswitch_c  #000000d5
        :pswitch_14  #000000d6
        :pswitch_b  #000000d7
        :pswitch_b  #000000d8
        :pswitch_b  #000000d9
        :pswitch_14  #000000da
        :pswitch_b  #000000db
        :pswitch_14  #000000dc
        :pswitch_14  #000000dd
        :pswitch_14  #000000de
        :pswitch_14  #000000df
        :pswitch_14  #000000e0
        :pswitch_14  #000000e1
        :pswitch_b  #000000e2
        :pswitch_b  #000000e3
        :pswitch_14  #000000e4
        :pswitch_14  #000000e5
        :pswitch_14  #000000e6
    .end packed-switch
.end method

.method private FH(Lorg/codehaus/groovy/antlr/GroovySourceAST;)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->FH:I

    const/4 v1, 0x2

    const-string v2, " FOLDED=\'true\'"

    if-le v0, v1, :cond_1f

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    return-object v2

    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result p1

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_28

    return-object v2

    :cond_28
    const-string p1, ""

    return-object p1
.end method

.method private Hw(Lorg/codehaus/groovy/antlr/GroovySourceAST;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->j6:[Ljava/lang/String;

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->j6:[Ljava/lang/String;

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " : "

    if-nez v1, :cond_57

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_57
    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_64

    const/16 v3, 0x9

    if-eq v1, v3, :cond_64

    goto :goto_87

    :cond_64
    const/16 v1, 0x57

    invoke-virtual {p1, v1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->DW(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v1

    if-eqz v1, :cond_87

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_87
    :goto_87
    invoke-direct {p0, v0}, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->Hw:Lorg/codehaus/groovy/antlr/SourceBuffer;

    if-eqz v1, :cond_117

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&#xa;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j3()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->Mr()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->U2()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->Hw:Lorg/codehaus/groovy/antlr/SourceBuffer;

    new-instance v2, Lorg/codehaus/groovy/antlr/LineColumn;

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v3

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j3()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/codehaus/groovy/antlr/LineColumn;-><init>(II)V

    new-instance v3, Lorg/codehaus/groovy/antlr/LineColumn;

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->Mr()I

    move-result v4

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->U2()I

    move-result p1

    invoke-direct {v3, v4, p1}, Lorg/codehaus/groovy/antlr/LineColumn;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6(Lorg/codehaus/groovy/antlr/LineColumn;Lorg/codehaus/groovy/antlr/LineColumn;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_117
    return-object v0
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ..... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_30
    const/16 v0, 0x22

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x27

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public DW()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->DW:Ljava/io/PrintStream;

    const-string v1, "</node></map>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public j6()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->FH:I

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->DW:Ljava/io/PrintStream;

    const-string v1, "<map version=\'0.7.1\'><node TEXT=\'AST\'>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public ji(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3b

    iget p2, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->FH:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->FH:I

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->Hw(Lorg/codehaus/groovy/antlr/GroovySourceAST;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->FH(Lorg/codehaus/groovy/antlr/GroovySourceAST;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->DW:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<node TEXT=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' POSITION=\'right\'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4a

    :cond_3b
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4a

    iget-object p1, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->DW:Ljava/io/PrintStream;

    const-string p2, "</node>"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget p1, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->FH:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/codehaus/groovy/antlr/treewalker/MindMapPrinter;->FH:I

    :cond_4a
    :goto_4a
    return-void
.end method
