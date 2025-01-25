.class public Lcom/a/b/a/b/ap;
.super Lcom/a/b/a/b/a;


# direct methods
.method public constructor <init>(Lcom/a/b/e/d/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/a/b/a;-><init>(Lcom/a/b/e/d/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/a/b/q;II)V
    .registers 7

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_f4

    :pswitch_4  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x13, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x61, 0x62, 0x63, 0x65, 0x66, 0x67, 0x69, 0x6a, 0x6b, 0x6d, 0x6e, 0x6f, 0x71, 0x72, 0x73, 0x75, 0x76, 0x77, 0x79, 0x7b, 0x7d, 0x7f, 0x81, 0x83, 0xaa, 0xad, 0xae, 0xaf, 0xb0, 0xc4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldn\'t happen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d  #0x0, 0x4f, 0x57, 0x58, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa9, 0xab, 0xac, 0xb1, 0xb3, 0xb5, 0xbf, 0xc2, 0xc3, 0xc6, 0xc7
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->k()V

    :cond_20
    :goto_20
    invoke-virtual {p0, p1}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/a/b/q;)V

    return-void

    :pswitch_24  #0x12, 0x14
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/d/d;

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto :goto_20

    :pswitch_2e  #0x15, 0x36
    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->c(I)Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto :goto_20

    :pswitch_36  #0x2e, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7a, 0x7c, 0x7e, 0x80, 0x82, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0xbe
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->d()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto :goto_20

    :pswitch_3e  #0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->k()V

    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->e()I

    move-result v0

    :goto_45
    if-eqz v0, :cond_20

    and-int/lit8 v1, v0, 0xf

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/a/b/a/b/ap;->c(I)Lcom/a/b/e/d/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/a/b/a/b/ap;->b(Lcom/a/b/e/d/d;)V

    shr-int/lit8 v0, v0, 0x4

    goto :goto_45

    :pswitch_55  #0xa8
    new-instance v0, Lcom/a/b/a/b/aa;

    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->g()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/aa;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto :goto_20

    :pswitch_62  #0xb2, 0xb4, 0xb6, 0xb8, 0xb9
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/d/d;

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    if-ne v0, v1, :cond_74

    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->k()V

    goto :goto_20

    :cond_74
    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto :goto_20

    :pswitch_78  #0xb7
    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->c(I)Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->r()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {p1, v0}, Lcom/a/b/a/b/q;->a(Lcom/a/b/e/d/c;)V

    :cond_89
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/d/d;

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    if-ne v0, v1, :cond_9b

    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->k()V

    goto :goto_20

    :cond_9b
    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto :goto_20

    :pswitch_9f  #0xba
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/j;

    invoke-virtual {v0}, Lcom/a/b/e/c/j;->b()Lcom/a/b/e/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    if-ne v0, v1, :cond_b2

    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->k()V

    goto/16 :goto_20

    :cond_b2
    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto/16 :goto_20

    :pswitch_b7  #0xbb
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/b/e/d/c;->a(I)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto/16 :goto_20

    :pswitch_ca  #0xbc, 0xc0, 0xc5
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto/16 :goto_20

    :pswitch_d9  #0xbd
    invoke-virtual {p0}, Lcom/a/b/a/b/ap;->f()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->t()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto/16 :goto_20

    :pswitch_ec  #0xc1
    sget-object v0, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/e/d/d;)V

    goto/16 :goto_20

    nop

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_1d  #00000000
        :pswitch_4  #00000001
        :pswitch_4  #00000002
        :pswitch_4  #00000003
        :pswitch_4  #00000004
        :pswitch_4  #00000005
        :pswitch_4  #00000006
        :pswitch_4  #00000007
        :pswitch_4  #00000008
        :pswitch_4  #00000009
        :pswitch_4  #0000000a
        :pswitch_4  #0000000b
        :pswitch_4  #0000000c
        :pswitch_4  #0000000d
        :pswitch_4  #0000000e
        :pswitch_4  #0000000f
        :pswitch_4  #00000010
        :pswitch_4  #00000011
        :pswitch_24  #00000012
        :pswitch_4  #00000013
        :pswitch_24  #00000014
        :pswitch_2e  #00000015
        :pswitch_4  #00000016
        :pswitch_4  #00000017
        :pswitch_4  #00000018
        :pswitch_4  #00000019
        :pswitch_4  #0000001a
        :pswitch_4  #0000001b
        :pswitch_4  #0000001c
        :pswitch_4  #0000001d
        :pswitch_4  #0000001e
        :pswitch_4  #0000001f
        :pswitch_4  #00000020
        :pswitch_4  #00000021
        :pswitch_4  #00000022
        :pswitch_4  #00000023
        :pswitch_4  #00000024
        :pswitch_4  #00000025
        :pswitch_4  #00000026
        :pswitch_4  #00000027
        :pswitch_4  #00000028
        :pswitch_4  #00000029
        :pswitch_4  #0000002a
        :pswitch_4  #0000002b
        :pswitch_4  #0000002c
        :pswitch_4  #0000002d
        :pswitch_36  #0000002e
        :pswitch_4  #0000002f
        :pswitch_4  #00000030
        :pswitch_4  #00000031
        :pswitch_4  #00000032
        :pswitch_4  #00000033
        :pswitch_4  #00000034
        :pswitch_4  #00000035
        :pswitch_2e  #00000036
        :pswitch_4  #00000037
        :pswitch_4  #00000038
        :pswitch_4  #00000039
        :pswitch_4  #0000003a
        :pswitch_4  #0000003b
        :pswitch_4  #0000003c
        :pswitch_4  #0000003d
        :pswitch_4  #0000003e
        :pswitch_4  #0000003f
        :pswitch_4  #00000040
        :pswitch_4  #00000041
        :pswitch_4  #00000042
        :pswitch_4  #00000043
        :pswitch_4  #00000044
        :pswitch_4  #00000045
        :pswitch_4  #00000046
        :pswitch_4  #00000047
        :pswitch_4  #00000048
        :pswitch_4  #00000049
        :pswitch_4  #0000004a
        :pswitch_4  #0000004b
        :pswitch_4  #0000004c
        :pswitch_4  #0000004d
        :pswitch_4  #0000004e
        :pswitch_1d  #0000004f
        :pswitch_4  #00000050
        :pswitch_4  #00000051
        :pswitch_4  #00000052
        :pswitch_4  #00000053
        :pswitch_4  #00000054
        :pswitch_4  #00000055
        :pswitch_4  #00000056
        :pswitch_1d  #00000057
        :pswitch_1d  #00000058
        :pswitch_3e  #00000059
        :pswitch_3e  #0000005a
        :pswitch_3e  #0000005b
        :pswitch_3e  #0000005c
        :pswitch_3e  #0000005d
        :pswitch_3e  #0000005e
        :pswitch_3e  #0000005f
        :pswitch_36  #00000060
        :pswitch_4  #00000061
        :pswitch_4  #00000062
        :pswitch_4  #00000063
        :pswitch_36  #00000064
        :pswitch_4  #00000065
        :pswitch_4  #00000066
        :pswitch_4  #00000067
        :pswitch_36  #00000068
        :pswitch_4  #00000069
        :pswitch_4  #0000006a
        :pswitch_4  #0000006b
        :pswitch_36  #0000006c
        :pswitch_4  #0000006d
        :pswitch_4  #0000006e
        :pswitch_4  #0000006f
        :pswitch_36  #00000070
        :pswitch_4  #00000071
        :pswitch_4  #00000072
        :pswitch_4  #00000073
        :pswitch_36  #00000074
        :pswitch_4  #00000075
        :pswitch_4  #00000076
        :pswitch_4  #00000077
        :pswitch_36  #00000078
        :pswitch_4  #00000079
        :pswitch_36  #0000007a
        :pswitch_4  #0000007b
        :pswitch_36  #0000007c
        :pswitch_4  #0000007d
        :pswitch_36  #0000007e
        :pswitch_4  #0000007f
        :pswitch_36  #00000080
        :pswitch_4  #00000081
        :pswitch_36  #00000082
        :pswitch_4  #00000083
        :pswitch_36  #00000084
        :pswitch_36  #00000085
        :pswitch_36  #00000086
        :pswitch_36  #00000087
        :pswitch_36  #00000088
        :pswitch_36  #00000089
        :pswitch_36  #0000008a
        :pswitch_36  #0000008b
        :pswitch_36  #0000008c
        :pswitch_36  #0000008d
        :pswitch_36  #0000008e
        :pswitch_36  #0000008f
        :pswitch_36  #00000090
        :pswitch_36  #00000091
        :pswitch_36  #00000092
        :pswitch_36  #00000093
        :pswitch_36  #00000094
        :pswitch_36  #00000095
        :pswitch_36  #00000096
        :pswitch_36  #00000097
        :pswitch_36  #00000098
        :pswitch_1d  #00000099
        :pswitch_1d  #0000009a
        :pswitch_1d  #0000009b
        :pswitch_1d  #0000009c
        :pswitch_1d  #0000009d
        :pswitch_1d  #0000009e
        :pswitch_1d  #0000009f
        :pswitch_1d  #000000a0
        :pswitch_1d  #000000a1
        :pswitch_1d  #000000a2
        :pswitch_1d  #000000a3
        :pswitch_1d  #000000a4
        :pswitch_1d  #000000a5
        :pswitch_1d  #000000a6
        :pswitch_1d  #000000a7
        :pswitch_55  #000000a8
        :pswitch_1d  #000000a9
        :pswitch_4  #000000aa
        :pswitch_1d  #000000ab
        :pswitch_1d  #000000ac
        :pswitch_4  #000000ad
        :pswitch_4  #000000ae
        :pswitch_4  #000000af
        :pswitch_4  #000000b0
        :pswitch_1d  #000000b1
        :pswitch_62  #000000b2
        :pswitch_1d  #000000b3
        :pswitch_62  #000000b4
        :pswitch_1d  #000000b5
        :pswitch_62  #000000b6
        :pswitch_78  #000000b7
        :pswitch_62  #000000b8
        :pswitch_62  #000000b9
        :pswitch_9f  #000000ba
        :pswitch_b7  #000000bb
        :pswitch_ca  #000000bc
        :pswitch_d9  #000000bd
        :pswitch_36  #000000be
        :pswitch_1d  #000000bf
        :pswitch_ca  #000000c0
        :pswitch_ec  #000000c1
        :pswitch_1d  #000000c2
        :pswitch_1d  #000000c3
        :pswitch_4  #000000c4
        :pswitch_ca  #000000c5
        :pswitch_1d  #000000c6
        :pswitch_1d  #000000c7
    .end packed-switch
.end method
