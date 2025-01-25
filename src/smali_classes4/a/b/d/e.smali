.class public La/b/d/e;
.super Ljava/lang/Object;


# direct methods
.method public static a([BI)La/b/d/c;
    .registers 6

    add-int/lit8 v2, p1, 0x1

    aget-byte v3, p0, p1

    const/16 v0, -0x3c

    if-ne v3, v0, :cond_5d

    aget-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x1

    move v1, v0

    :goto_e
    packed-switch v3, :pswitch_data_60

    :pswitch_11  #0xffffffc4, 0xffffffca, 0xffffffcb, 0xffffffcc, 0xffffffcd, 0xffffffce, 0xffffffcf, 0xffffffd0, 0xffffffd1, 0xffffffd2, 0xffffffd3, 0xffffffd4, 0xffffffd5, 0xffffffd6, 0xffffffd7, 0xffffffd8, 0xffffffd9, 0xffffffda, 0xffffffdb, 0xffffffdc, 0xffffffdd, 0xffffffde, 0xffffffdf, 0xffffffe0, 0xffffffe1, 0xffffffe2, 0xffffffe3, 0xffffffe4, 0xffffffe5, 0xffffffe6, 0xffffffe7, 0xffffffe8, 0xffffffe9, 0xffffffea, 0xffffffeb, 0xffffffec, 0xffffffed, 0xffffffee, 0xffffffef, 0xfffffff0, 0xfffffff1, 0xfffffff2, 0xfffffff3, 0xfffffff4, 0xfffffff5, 0xfffffff6, 0xfffffff7, 0xfffffff8, 0xfffffff9, 0xfffffffa, 0xfffffffb, 0xfffffffc, 0xfffffffd, 0xfffffffe, 0xffffffff
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown instruction opcode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_34  #0xffffff80, 0xffffff81, 0xffffff82, 0xffffff83, 0xffffff85, 0xffffff86, 0xffffff87, 0xffffff88, 0xffffff89, 0xffffff8a, 0xffffff8b, 0xffffff8c, 0xffffff8d, 0xffffff8e, 0xffffff8f, 0xffffff90, 0xffffff91, 0xffffff92, 0xffffff93, 0xffffff94, 0xffffff95, 0xffffff96, 0xffffff97, 0xffffff98, 0xffffffac, 0xffffffad, 0xffffffae, 0xffffffaf, 0xffffffb0, 0xffffffb1, 0xffffffbc, 0xffffffbe, 0xffffffbf, 0xffffffc2, 0xffffffc3, 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f
    new-instance v0, La/b/d/h;

    invoke-direct {v0}, La/b/d/h;-><init>()V

    :goto_39
    iput-byte v3, v0, La/b/d/c;->c:B

    invoke-virtual {v0, p0, v2}, La/b/d/c;->b([BI)V

    return-object v0

    :pswitch_3f  #0xffffffb2, 0xffffffb3, 0xffffffb4, 0xffffffb5, 0xffffffb6, 0xffffffb7, 0xffffffb8, 0xffffffb9, 0xffffffba, 0xffffffbb, 0xffffffbd, 0xffffffc0, 0xffffffc1, 0xffffffc5, 0x12, 0x13, 0x14
    new-instance v0, La/b/d/b;

    invoke-direct {v0}, La/b/d/b;-><init>()V

    goto :goto_39

    :pswitch_45  #0xffffff84, 0xffffffa9, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e
    new-instance v0, La/b/d/k;

    invoke-direct {v0, v1}, La/b/d/k;-><init>(Z)V

    goto :goto_39

    :pswitch_4b  #0xffffff99, 0xffffff9a, 0xffffff9b, 0xffffff9c, 0xffffff9d, 0xffffff9e, 0xffffff9f, 0xffffffa0, 0xffffffa1, 0xffffffa2, 0xffffffa3, 0xffffffa4, 0xffffffa5, 0xffffffa6, 0xffffffa7, 0xffffffa8, 0xffffffc6, 0xffffffc7, 0xffffffc8, 0xffffffc9
    new-instance v0, La/b/d/a;

    invoke-direct {v0}, La/b/d/a;-><init>()V

    goto :goto_39

    :pswitch_51  #0xffffffaa
    new-instance v0, La/b/d/j;

    invoke-direct {v0}, La/b/d/j;-><init>()V

    goto :goto_39

    :pswitch_57  #0xffffffab
    new-instance v0, La/b/d/g;

    invoke-direct {v0}, La/b/d/g;-><init>()V

    goto :goto_39

    :cond_5d
    const/4 v0, 0x0

    move v1, v0

    goto :goto_e

    :pswitch_data_60
    .packed-switch -0x80
        :pswitch_34  #ffffff80
        :pswitch_34  #ffffff81
        :pswitch_34  #ffffff82
        :pswitch_34  #ffffff83
        :pswitch_45  #ffffff84
        :pswitch_34  #ffffff85
        :pswitch_34  #ffffff86
        :pswitch_34  #ffffff87
        :pswitch_34  #ffffff88
        :pswitch_34  #ffffff89
        :pswitch_34  #ffffff8a
        :pswitch_34  #ffffff8b
        :pswitch_34  #ffffff8c
        :pswitch_34  #ffffff8d
        :pswitch_34  #ffffff8e
        :pswitch_34  #ffffff8f
        :pswitch_34  #ffffff90
        :pswitch_34  #ffffff91
        :pswitch_34  #ffffff92
        :pswitch_34  #ffffff93
        :pswitch_34  #ffffff94
        :pswitch_34  #ffffff95
        :pswitch_34  #ffffff96
        :pswitch_34  #ffffff97
        :pswitch_34  #ffffff98
        :pswitch_4b  #ffffff99
        :pswitch_4b  #ffffff9a
        :pswitch_4b  #ffffff9b
        :pswitch_4b  #ffffff9c
        :pswitch_4b  #ffffff9d
        :pswitch_4b  #ffffff9e
        :pswitch_4b  #ffffff9f
        :pswitch_4b  #ffffffa0
        :pswitch_4b  #ffffffa1
        :pswitch_4b  #ffffffa2
        :pswitch_4b  #ffffffa3
        :pswitch_4b  #ffffffa4
        :pswitch_4b  #ffffffa5
        :pswitch_4b  #ffffffa6
        :pswitch_4b  #ffffffa7
        :pswitch_4b  #ffffffa8
        :pswitch_45  #ffffffa9
        :pswitch_51  #ffffffaa
        :pswitch_57  #ffffffab
        :pswitch_34  #ffffffac
        :pswitch_34  #ffffffad
        :pswitch_34  #ffffffae
        :pswitch_34  #ffffffaf
        :pswitch_34  #ffffffb0
        :pswitch_34  #ffffffb1
        :pswitch_3f  #ffffffb2
        :pswitch_3f  #ffffffb3
        :pswitch_3f  #ffffffb4
        :pswitch_3f  #ffffffb5
        :pswitch_3f  #ffffffb6
        :pswitch_3f  #ffffffb7
        :pswitch_3f  #ffffffb8
        :pswitch_3f  #ffffffb9
        :pswitch_3f  #ffffffba
        :pswitch_3f  #ffffffbb
        :pswitch_34  #ffffffbc
        :pswitch_3f  #ffffffbd
        :pswitch_34  #ffffffbe
        :pswitch_34  #ffffffbf
        :pswitch_3f  #ffffffc0
        :pswitch_3f  #ffffffc1
        :pswitch_34  #ffffffc2
        :pswitch_34  #ffffffc3
        :pswitch_11  #ffffffc4
        :pswitch_3f  #ffffffc5
        :pswitch_4b  #ffffffc6
        :pswitch_4b  #ffffffc7
        :pswitch_4b  #ffffffc8
        :pswitch_4b  #ffffffc9
        :pswitch_11  #ffffffca
        :pswitch_11  #ffffffcb
        :pswitch_11  #ffffffcc
        :pswitch_11  #ffffffcd
        :pswitch_11  #ffffffce
        :pswitch_11  #ffffffcf
        :pswitch_11  #ffffffd0
        :pswitch_11  #ffffffd1
        :pswitch_11  #ffffffd2
        :pswitch_11  #ffffffd3
        :pswitch_11  #ffffffd4
        :pswitch_11  #ffffffd5
        :pswitch_11  #ffffffd6
        :pswitch_11  #ffffffd7
        :pswitch_11  #ffffffd8
        :pswitch_11  #ffffffd9
        :pswitch_11  #ffffffda
        :pswitch_11  #ffffffdb
        :pswitch_11  #ffffffdc
        :pswitch_11  #ffffffdd
        :pswitch_11  #ffffffde
        :pswitch_11  #ffffffdf
        :pswitch_11  #ffffffe0
        :pswitch_11  #ffffffe1
        :pswitch_11  #ffffffe2
        :pswitch_11  #ffffffe3
        :pswitch_11  #ffffffe4
        :pswitch_11  #ffffffe5
        :pswitch_11  #ffffffe6
        :pswitch_11  #ffffffe7
        :pswitch_11  #ffffffe8
        :pswitch_11  #ffffffe9
        :pswitch_11  #ffffffea
        :pswitch_11  #ffffffeb
        :pswitch_11  #ffffffec
        :pswitch_11  #ffffffed
        :pswitch_11  #ffffffee
        :pswitch_11  #ffffffef
        :pswitch_11  #fffffff0
        :pswitch_11  #fffffff1
        :pswitch_11  #fffffff2
        :pswitch_11  #fffffff3
        :pswitch_11  #fffffff4
        :pswitch_11  #fffffff5
        :pswitch_11  #fffffff6
        :pswitch_11  #fffffff7
        :pswitch_11  #fffffff8
        :pswitch_11  #fffffff9
        :pswitch_11  #fffffffa
        :pswitch_11  #fffffffb
        :pswitch_11  #fffffffc
        :pswitch_11  #fffffffd
        :pswitch_11  #fffffffe
        :pswitch_11  #ffffffff
        :pswitch_34  #00000000
        :pswitch_34  #00000001
        :pswitch_34  #00000002
        :pswitch_34  #00000003
        :pswitch_34  #00000004
        :pswitch_34  #00000005
        :pswitch_34  #00000006
        :pswitch_34  #00000007
        :pswitch_34  #00000008
        :pswitch_34  #00000009
        :pswitch_34  #0000000a
        :pswitch_34  #0000000b
        :pswitch_34  #0000000c
        :pswitch_34  #0000000d
        :pswitch_34  #0000000e
        :pswitch_34  #0000000f
        :pswitch_34  #00000010
        :pswitch_34  #00000011
        :pswitch_3f  #00000012
        :pswitch_3f  #00000013
        :pswitch_3f  #00000014
        :pswitch_45  #00000015
        :pswitch_45  #00000016
        :pswitch_45  #00000017
        :pswitch_45  #00000018
        :pswitch_45  #00000019
        :pswitch_45  #0000001a
        :pswitch_45  #0000001b
        :pswitch_45  #0000001c
        :pswitch_45  #0000001d
        :pswitch_45  #0000001e
        :pswitch_45  #0000001f
        :pswitch_45  #00000020
        :pswitch_45  #00000021
        :pswitch_45  #00000022
        :pswitch_45  #00000023
        :pswitch_45  #00000024
        :pswitch_45  #00000025
        :pswitch_45  #00000026
        :pswitch_45  #00000027
        :pswitch_45  #00000028
        :pswitch_45  #00000029
        :pswitch_45  #0000002a
        :pswitch_45  #0000002b
        :pswitch_45  #0000002c
        :pswitch_45  #0000002d
        :pswitch_34  #0000002e
        :pswitch_34  #0000002f
        :pswitch_34  #00000030
        :pswitch_34  #00000031
        :pswitch_34  #00000032
        :pswitch_34  #00000033
        :pswitch_34  #00000034
        :pswitch_34  #00000035
        :pswitch_45  #00000036
        :pswitch_45  #00000037
        :pswitch_45  #00000038
        :pswitch_45  #00000039
        :pswitch_45  #0000003a
        :pswitch_45  #0000003b
        :pswitch_45  #0000003c
        :pswitch_45  #0000003d
        :pswitch_45  #0000003e
        :pswitch_45  #0000003f
        :pswitch_45  #00000040
        :pswitch_45  #00000041
        :pswitch_45  #00000042
        :pswitch_45  #00000043
        :pswitch_45  #00000044
        :pswitch_45  #00000045
        :pswitch_45  #00000046
        :pswitch_45  #00000047
        :pswitch_45  #00000048
        :pswitch_45  #00000049
        :pswitch_45  #0000004a
        :pswitch_45  #0000004b
        :pswitch_45  #0000004c
        :pswitch_45  #0000004d
        :pswitch_45  #0000004e
        :pswitch_34  #0000004f
        :pswitch_34  #00000050
        :pswitch_34  #00000051
        :pswitch_34  #00000052
        :pswitch_34  #00000053
        :pswitch_34  #00000054
        :pswitch_34  #00000055
        :pswitch_34  #00000056
        :pswitch_34  #00000057
        :pswitch_34  #00000058
        :pswitch_34  #00000059
        :pswitch_34  #0000005a
        :pswitch_34  #0000005b
        :pswitch_34  #0000005c
        :pswitch_34  #0000005d
        :pswitch_34  #0000005e
        :pswitch_34  #0000005f
        :pswitch_34  #00000060
        :pswitch_34  #00000061
        :pswitch_34  #00000062
        :pswitch_34  #00000063
        :pswitch_34  #00000064
        :pswitch_34  #00000065
        :pswitch_34  #00000066
        :pswitch_34  #00000067
        :pswitch_34  #00000068
        :pswitch_34  #00000069
        :pswitch_34  #0000006a
        :pswitch_34  #0000006b
        :pswitch_34  #0000006c
        :pswitch_34  #0000006d
        :pswitch_34  #0000006e
        :pswitch_34  #0000006f
        :pswitch_34  #00000070
        :pswitch_34  #00000071
        :pswitch_34  #00000072
        :pswitch_34  #00000073
        :pswitch_34  #00000074
        :pswitch_34  #00000075
        :pswitch_34  #00000076
        :pswitch_34  #00000077
        :pswitch_34  #00000078
        :pswitch_34  #00000079
        :pswitch_34  #0000007a
        :pswitch_34  #0000007b
        :pswitch_34  #0000007c
        :pswitch_34  #0000007d
        :pswitch_34  #0000007e
        :pswitch_34  #0000007f
    .end packed-switch
.end method
