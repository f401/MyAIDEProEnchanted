.class public Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;
.super Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;


# instance fields
.field private final DW:Ljava/io/PrintStream;

.field private final FH:Ljava/util/Stack;

.field private final j6:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;-><init>()V

    iput-object p2, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->j6:[Ljava/lang/String;

    iput-object p1, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->DW:Ljava/io/PrintStream;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->FH:Ljava/util/Stack;

    return-void
.end method

.method private DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result p1

    packed-switch p1, :pswitch_data_12

    :pswitch_7  #0x2, 0xf, 0x4d, 0x4e, 0x4f, 0x5f, 0xae, 0xb6, 0xb7, 0xd7, 0xd8, 0xd9, 0xdb, 0xe2, 0xe3
    goto :goto_e

    :pswitch_8  #0x58, 0xd4, 0xd5
    const-string p1, "008000"

    goto :goto_10

    :pswitch_b  #0xc, 0xd, 0x10, 0x12, 0x13, 0x1d, 0x51, 0x52, 0x53, 0x54, 0x5c, 0x5d, 0x5e, 0x62, 0x63, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x81, 0x82, 0x83, 0x84, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x96, 0x97, 0x98, 0x99, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1
    const-string p1, "17178B"

    goto :goto_10

    :goto_e
    :pswitch_e  #0x1, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xe, 0x11, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x50, 0x55, 0x56, 0x57, 0x59, 0x5a, 0x5b, 0x60, 0x61, 0x64, 0x65, 0x66, 0x67, 0x71, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x85, 0x86, 0x87, 0x88, 0x94, 0x95, 0x9a, 0x9b, 0x9c, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xa9, 0xaa, 0xab, 0xac, 0xad, 0xaf, 0xb0, 0xb1, 0xb2, 0xb3, 0xb4, 0xb5, 0xb8, 0xb9, 0xba, 0xbb, 0xbc, 0xbd, 0xbe, 0xbf, 0xc0, 0xc1, 0xc2, 0xc3, 0xc4, 0xc5, 0xc6, 0xc7, 0xc8, 0xc9, 0xca, 0xcb, 0xcc, 0xcd, 0xce, 0xcf, 0xd0, 0xd1, 0xd2, 0xd3, 0xd6, 0xda, 0xdc, 0xdd, 0xde, 0xdf, 0xe0, 0xe1, 0xe4, 0xe5, 0xe6
    const-string p1, "000000"

    :goto_10
    return-object p1

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e  #00000001
        :pswitch_7  #00000002
        :pswitch_e  #00000003
        :pswitch_e  #00000004
        :pswitch_e  #00000005
        :pswitch_e  #00000006
        :pswitch_e  #00000007
        :pswitch_e  #00000008
        :pswitch_e  #00000009
        :pswitch_e  #0000000a
        :pswitch_e  #0000000b
        :pswitch_b  #0000000c
        :pswitch_b  #0000000d
        :pswitch_e  #0000000e
        :pswitch_7  #0000000f
        :pswitch_b  #00000010
        :pswitch_e  #00000011
        :pswitch_b  #00000012
        :pswitch_b  #00000013
        :pswitch_e  #00000014
        :pswitch_e  #00000015
        :pswitch_e  #00000016
        :pswitch_e  #00000017
        :pswitch_e  #00000018
        :pswitch_e  #00000019
        :pswitch_e  #0000001a
        :pswitch_e  #0000001b
        :pswitch_e  #0000001c
        :pswitch_b  #0000001d
        :pswitch_e  #0000001e
        :pswitch_e  #0000001f
        :pswitch_e  #00000020
        :pswitch_e  #00000021
        :pswitch_e  #00000022
        :pswitch_e  #00000023
        :pswitch_e  #00000024
        :pswitch_e  #00000025
        :pswitch_e  #00000026
        :pswitch_e  #00000027
        :pswitch_e  #00000028
        :pswitch_e  #00000029
        :pswitch_e  #0000002a
        :pswitch_e  #0000002b
        :pswitch_e  #0000002c
        :pswitch_e  #0000002d
        :pswitch_e  #0000002e
        :pswitch_e  #0000002f
        :pswitch_e  #00000030
        :pswitch_e  #00000031
        :pswitch_e  #00000032
        :pswitch_e  #00000033
        :pswitch_e  #00000034
        :pswitch_e  #00000035
        :pswitch_e  #00000036
        :pswitch_e  #00000037
        :pswitch_e  #00000038
        :pswitch_e  #00000039
        :pswitch_e  #0000003a
        :pswitch_e  #0000003b
        :pswitch_e  #0000003c
        :pswitch_e  #0000003d
        :pswitch_e  #0000003e
        :pswitch_e  #0000003f
        :pswitch_e  #00000040
        :pswitch_e  #00000041
        :pswitch_e  #00000042
        :pswitch_e  #00000043
        :pswitch_e  #00000044
        :pswitch_e  #00000045
        :pswitch_e  #00000046
        :pswitch_e  #00000047
        :pswitch_e  #00000048
        :pswitch_e  #00000049
        :pswitch_e  #0000004a
        :pswitch_e  #0000004b
        :pswitch_e  #0000004c
        :pswitch_7  #0000004d
        :pswitch_7  #0000004e
        :pswitch_7  #0000004f
        :pswitch_e  #00000050
        :pswitch_b  #00000051
        :pswitch_b  #00000052
        :pswitch_b  #00000053
        :pswitch_b  #00000054
        :pswitch_e  #00000055
        :pswitch_e  #00000056
        :pswitch_e  #00000057
        :pswitch_8  #00000058
        :pswitch_e  #00000059
        :pswitch_e  #0000005a
        :pswitch_e  #0000005b
        :pswitch_b  #0000005c
        :pswitch_b  #0000005d
        :pswitch_b  #0000005e
        :pswitch_7  #0000005f
        :pswitch_e  #00000060
        :pswitch_e  #00000061
        :pswitch_b  #00000062
        :pswitch_b  #00000063
        :pswitch_e  #00000064
        :pswitch_e  #00000065
        :pswitch_e  #00000066
        :pswitch_e  #00000067
        :pswitch_b  #00000068
        :pswitch_b  #00000069
        :pswitch_b  #0000006a
        :pswitch_b  #0000006b
        :pswitch_b  #0000006c
        :pswitch_b  #0000006d
        :pswitch_b  #0000006e
        :pswitch_b  #0000006f
        :pswitch_b  #00000070
        :pswitch_e  #00000071
        :pswitch_b  #00000072
        :pswitch_b  #00000073
        :pswitch_b  #00000074
        :pswitch_b  #00000075
        :pswitch_b  #00000076
        :pswitch_b  #00000077
        :pswitch_b  #00000078
        :pswitch_b  #00000079
        :pswitch_b  #0000007a
        :pswitch_e  #0000007b
        :pswitch_e  #0000007c
        :pswitch_e  #0000007d
        :pswitch_e  #0000007e
        :pswitch_e  #0000007f
        :pswitch_e  #00000080
        :pswitch_b  #00000081
        :pswitch_b  #00000082
        :pswitch_b  #00000083
        :pswitch_b  #00000084
        :pswitch_e  #00000085
        :pswitch_e  #00000086
        :pswitch_e  #00000087
        :pswitch_e  #00000088
        :pswitch_b  #00000089
        :pswitch_b  #0000008a
        :pswitch_b  #0000008b
        :pswitch_b  #0000008c
        :pswitch_b  #0000008d
        :pswitch_b  #0000008e
        :pswitch_b  #0000008f
        :pswitch_b  #00000090
        :pswitch_b  #00000091
        :pswitch_b  #00000092
        :pswitch_b  #00000093
        :pswitch_e  #00000094
        :pswitch_e  #00000095
        :pswitch_b  #00000096
        :pswitch_b  #00000097
        :pswitch_b  #00000098
        :pswitch_b  #00000099
        :pswitch_e  #0000009a
        :pswitch_e  #0000009b
        :pswitch_e  #0000009c
        :pswitch_b  #0000009d
        :pswitch_b  #0000009e
        :pswitch_b  #0000009f
        :pswitch_b  #000000a0
        :pswitch_b  #000000a1
        :pswitch_e  #000000a2
        :pswitch_e  #000000a3
        :pswitch_e  #000000a4
        :pswitch_e  #000000a5
        :pswitch_e  #000000a6
        :pswitch_e  #000000a7
        :pswitch_e  #000000a8
        :pswitch_e  #000000a9
        :pswitch_e  #000000aa
        :pswitch_e  #000000ab
        :pswitch_e  #000000ac
        :pswitch_e  #000000ad
        :pswitch_7  #000000ae
        :pswitch_e  #000000af
        :pswitch_e  #000000b0
        :pswitch_e  #000000b1
        :pswitch_e  #000000b2
        :pswitch_e  #000000b3
        :pswitch_e  #000000b4
        :pswitch_e  #000000b5
        :pswitch_7  #000000b6
        :pswitch_7  #000000b7
        :pswitch_e  #000000b8
        :pswitch_e  #000000b9
        :pswitch_e  #000000ba
        :pswitch_e  #000000bb
        :pswitch_e  #000000bc
        :pswitch_e  #000000bd
        :pswitch_e  #000000be
        :pswitch_e  #000000bf
        :pswitch_e  #000000c0
        :pswitch_e  #000000c1
        :pswitch_e  #000000c2
        :pswitch_e  #000000c3
        :pswitch_e  #000000c4
        :pswitch_e  #000000c5
        :pswitch_e  #000000c6
        :pswitch_e  #000000c7
        :pswitch_e  #000000c8
        :pswitch_e  #000000c9
        :pswitch_e  #000000ca
        :pswitch_e  #000000cb
        :pswitch_e  #000000cc
        :pswitch_e  #000000cd
        :pswitch_e  #000000ce
        :pswitch_e  #000000cf
        :pswitch_e  #000000d0
        :pswitch_e  #000000d1
        :pswitch_e  #000000d2
        :pswitch_e  #000000d3
        :pswitch_8  #000000d4
        :pswitch_8  #000000d5
        :pswitch_e  #000000d6
        :pswitch_7  #000000d7
        :pswitch_7  #000000d8
        :pswitch_7  #000000d9
        :pswitch_e  #000000da
        :pswitch_7  #000000db
        :pswitch_e  #000000dc
        :pswitch_e  #000000dd
        :pswitch_e  #000000de
        :pswitch_e  #000000df
        :pswitch_e  #000000e0
        :pswitch_e  #000000e1
        :pswitch_7  #000000e2
        :pswitch_7  #000000e3
        :pswitch_e  #000000e4
        :pswitch_e  #000000e5
        :pswitch_e  #000000e6
    .end packed-switch
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    goto :goto_16
.end method


# virtual methods
.method public DW()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->DW:Ljava/io/PrintStream;

    const-string v1, "</pre></body></html>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public j6()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->DW:Ljava/io/PrintStream;

    const-string v1, "<html><head></head><body><pre>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->FH:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ji(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_37

    iget-object p2, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->DW:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<code title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->j6:[Ljava/lang/String;

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "><font color=\'#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_41

    :cond_37
    const/4 p1, 0x4

    if-ne p2, p1, :cond_41

    iget-object p1, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->DW:Ljava/io/PrintStream;

    const-string p2, "</font></code>"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public pop()Lorg/codehaus/groovy/antlr/GroovySourceAST;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->FH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeAsHTMLPrinter;->FH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method
