.class public Lcom/a4455jkjh/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/a4455jkjh/e/a;

.field private b:Labcd/Ca;

.field private c:Labcd/na;


# direct methods
.method public constructor <init>(Labcd/Ca;Labcd/na;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a4455jkjh/e/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a4455jkjh/e/a;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/a4455jkjh/b/d;->a:Lcom/a4455jkjh/e/a;

    iput-object p1, p0, Lcom/a4455jkjh/b/d;->b:Labcd/Ca;

    iput-object p2, p0, Lcom/a4455jkjh/b/d;->c:Labcd/na;

    return-void
.end method


# virtual methods
.method public a(Labcd/Da;Ljava/io/Reader;Labcd/Wa;)V
    .registers 13

    iget-object v8, p0, Lcom/a4455jkjh/b/d;->a:Lcom/a4455jkjh/e/a;

    invoke-virtual {v8, p2}, Lcom/a4455jkjh/e/a;->a(Ljava/io/Reader;)V

    invoke-virtual {p3}, Labcd/Wa;->j6()V

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v8}, Lcom/a4455jkjh/e/a;->f()Lorg/a/a/a/aa;

    move-result-object v1

    invoke-interface {v1}, Lorg/a/a/a/aa;->a()I

    move-result v2

    invoke-interface {v1}, Lorg/a/a/a/aa;->c()I

    move-result v3

    invoke-interface {v1}, Lorg/a/a/a/aa;->d()I

    move-result v4

    const/4 v1, -0x1

    if-ne v2, v1, :cond_25

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p3

    move v5, v3

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Labcd/Wa;->j6(IIIIII)V

    return-void

    :cond_25
    packed-switch v2, :pswitch_data_68

    :goto_28
    :pswitch_28  #0x23, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x78, 0x7a
    const/16 v1, 0x28

    if-lt v2, v1, :cond_65

    const/16 v1, 0x5a

    if-gt v2, v1, :cond_65

    const/4 v1, 0x1

    move v7, v0

    :goto_32
    const/4 v2, 0x0

    invoke-virtual {v8}, Lcom/a4455jkjh/e/a;->j()I

    move-result v5

    invoke-virtual {v8}, Lcom/a4455jkjh/e/a;->k()I

    move-result v6

    move-object v0, p3

    invoke-virtual/range {v0 .. v6}, Labcd/Wa;->j6(IIIIII)V

    move v0, v7

    goto :goto_9

    :pswitch_41  #0x2, 0x4, 0xa, 0xb, 0xe, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x22, 0x26, 0x5c, 0x5d, 0x5e, 0x60, 0x68, 0x6a, 0x6d, 0x6f, 0x70, 0x73, 0x74, 0x76, 0x77
    const/4 v1, 0x6

    move v7, v0

    goto :goto_32

    :pswitch_44  #0x1, 0x3
    const/4 v1, 0x1

    move v7, v0

    goto :goto_32

    :pswitch_47  #0x5, 0xd, 0x69, 0x6c, 0x79
    const/4 v1, 0x5

    move v7, v0

    goto :goto_32

    :pswitch_4a  #0x5b
    const/16 v1, 0x8

    move v7, v0

    goto :goto_32

    :pswitch_4e  #0x8, 0x9, 0xc, 0x14, 0x15, 0x24, 0x25, 0x5f, 0x64, 0x65, 0x6b, 0x71, 0x75
    const/4 v1, 0x4

    move v7, v0

    goto :goto_32

    :pswitch_51  #0x6, 0x7, 0x12, 0x13, 0x21, 0x6e
    const/4 v1, 0x3

    move v7, v0

    goto :goto_32

    :pswitch_54  #0xf, 0x10, 0x66, 0x67
    const/4 v1, 0x2

    move v7, v0

    goto :goto_32

    :pswitch_57  #0x11
    const/4 v1, 0x3

    const/4 v0, 0x1

    move v7, v0

    goto :goto_32

    :pswitch_5b  #0x72
    if-eqz v0, :cond_61

    const/4 v1, 0x3

    :goto_5e
    const/4 v0, 0x0

    move v7, v0

    goto :goto_32

    :cond_61
    const/4 v1, 0x7

    goto :goto_5e

    :pswitch_63  #0x7b
    const/4 v0, 0x0

    goto :goto_28

    :cond_65
    const/4 v1, 0x7

    move v7, v0

    goto :goto_32

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_44  #00000001
        :pswitch_41  #00000002
        :pswitch_44  #00000003
        :pswitch_41  #00000004
        :pswitch_47  #00000005
        :pswitch_51  #00000006
        :pswitch_51  #00000007
        :pswitch_4e  #00000008
        :pswitch_4e  #00000009
        :pswitch_41  #0000000a
        :pswitch_41  #0000000b
        :pswitch_4e  #0000000c
        :pswitch_47  #0000000d
        :pswitch_41  #0000000e
        :pswitch_54  #0000000f
        :pswitch_54  #00000010
        :pswitch_57  #00000011
        :pswitch_51  #00000012
        :pswitch_51  #00000013
        :pswitch_4e  #00000014
        :pswitch_4e  #00000015
        :pswitch_41  #00000016
        :pswitch_41  #00000017
        :pswitch_41  #00000018
        :pswitch_41  #00000019
        :pswitch_41  #0000001a
        :pswitch_41  #0000001b
        :pswitch_41  #0000001c
        :pswitch_41  #0000001d
        :pswitch_41  #0000001e
        :pswitch_41  #0000001f
        :pswitch_41  #00000020
        :pswitch_51  #00000021
        :pswitch_41  #00000022
        :pswitch_28  #00000023
        :pswitch_4e  #00000024
        :pswitch_4e  #00000025
        :pswitch_41  #00000026
        :pswitch_28  #00000027
        :pswitch_28  #00000028
        :pswitch_28  #00000029
        :pswitch_28  #0000002a
        :pswitch_28  #0000002b
        :pswitch_28  #0000002c
        :pswitch_28  #0000002d
        :pswitch_28  #0000002e
        :pswitch_28  #0000002f
        :pswitch_28  #00000030
        :pswitch_28  #00000031
        :pswitch_28  #00000032
        :pswitch_28  #00000033
        :pswitch_28  #00000034
        :pswitch_28  #00000035
        :pswitch_28  #00000036
        :pswitch_28  #00000037
        :pswitch_28  #00000038
        :pswitch_28  #00000039
        :pswitch_28  #0000003a
        :pswitch_28  #0000003b
        :pswitch_28  #0000003c
        :pswitch_28  #0000003d
        :pswitch_28  #0000003e
        :pswitch_28  #0000003f
        :pswitch_28  #00000040
        :pswitch_28  #00000041
        :pswitch_28  #00000042
        :pswitch_28  #00000043
        :pswitch_28  #00000044
        :pswitch_28  #00000045
        :pswitch_28  #00000046
        :pswitch_28  #00000047
        :pswitch_28  #00000048
        :pswitch_28  #00000049
        :pswitch_28  #0000004a
        :pswitch_28  #0000004b
        :pswitch_28  #0000004c
        :pswitch_28  #0000004d
        :pswitch_28  #0000004e
        :pswitch_28  #0000004f
        :pswitch_28  #00000050
        :pswitch_28  #00000051
        :pswitch_28  #00000052
        :pswitch_28  #00000053
        :pswitch_28  #00000054
        :pswitch_28  #00000055
        :pswitch_28  #00000056
        :pswitch_28  #00000057
        :pswitch_28  #00000058
        :pswitch_28  #00000059
        :pswitch_28  #0000005a
        :pswitch_4a  #0000005b
        :pswitch_41  #0000005c
        :pswitch_41  #0000005d
        :pswitch_41  #0000005e
        :pswitch_4e  #0000005f
        :pswitch_41  #00000060
        :pswitch_28  #00000061
        :pswitch_28  #00000062
        :pswitch_28  #00000063
        :pswitch_4e  #00000064
        :pswitch_4e  #00000065
        :pswitch_54  #00000066
        :pswitch_54  #00000067
        :pswitch_41  #00000068
        :pswitch_47  #00000069
        :pswitch_41  #0000006a
        :pswitch_4e  #0000006b
        :pswitch_47  #0000006c
        :pswitch_41  #0000006d
        :pswitch_51  #0000006e
        :pswitch_41  #0000006f
        :pswitch_41  #00000070
        :pswitch_4e  #00000071
        :pswitch_5b  #00000072
        :pswitch_41  #00000073
        :pswitch_41  #00000074
        :pswitch_4e  #00000075
        :pswitch_41  #00000076
        :pswitch_41  #00000077
        :pswitch_28  #00000078
        :pswitch_47  #00000079
        :pswitch_28  #0000007a
        :pswitch_63  #0000007b
    .end packed-switch
.end method
