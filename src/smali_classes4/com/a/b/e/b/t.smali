.class public final Lcom/a/b/e/b/t;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_d6

    :pswitch_3  #0x36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :pswitch_17  #0x1
    const-string v0, "nop"

    goto :goto_16

    :pswitch_1a  #0x2
    const-string v0, "move"

    goto :goto_16

    :pswitch_1d  #0x3
    const-string v0, "move-param"

    goto :goto_16

    :pswitch_20  #0x4
    const-string v0, "move-exception"

    goto :goto_16

    :pswitch_23  #0x5
    const-string v0, "const"

    goto :goto_16

    :pswitch_26  #0x6
    const-string v0, "goto"

    goto :goto_16

    :pswitch_29  #0x7
    const-string v0, "if-eq"

    goto :goto_16

    :pswitch_2c  #0x8
    const-string v0, "if-ne"

    goto :goto_16

    :pswitch_2f  #0x9
    const-string v0, "if-lt"

    goto :goto_16

    :pswitch_32  #0xa
    const-string v0, "if-ge"

    goto :goto_16

    :pswitch_35  #0xb
    const-string v0, "if-le"

    goto :goto_16

    :pswitch_38  #0xc
    const-string v0, "if-gt"

    goto :goto_16

    :pswitch_3b  #0xd
    const-string v0, "switch"

    goto :goto_16

    :pswitch_3e  #0xe
    const-string v0, "add"

    goto :goto_16

    :pswitch_41  #0xf
    const-string v0, "sub"

    goto :goto_16

    :pswitch_44  #0x10
    const-string v0, "mul"

    goto :goto_16

    :pswitch_47  #0x11
    const-string v0, "div"

    goto :goto_16

    :pswitch_4a  #0x12
    const-string v0, "rem"

    goto :goto_16

    :pswitch_4d  #0x13
    const-string v0, "neg"

    goto :goto_16

    :pswitch_50  #0x14
    const-string v0, "and"

    goto :goto_16

    :pswitch_53  #0x15
    const-string v0, "or"

    goto :goto_16

    :pswitch_56  #0x16
    const-string v0, "xor"

    goto :goto_16

    :pswitch_59  #0x17
    const-string v0, "shl"

    goto :goto_16

    :pswitch_5c  #0x18
    const-string v0, "shr"

    goto :goto_16

    :pswitch_5f  #0x19
    const-string v0, "ushr"

    goto :goto_16

    :pswitch_62  #0x1a
    const-string v0, "not"

    goto :goto_16

    :pswitch_65  #0x1b
    const-string v0, "cmpl"

    goto :goto_16

    :pswitch_68  #0x1c
    const-string v0, "cmpg"

    goto :goto_16

    :pswitch_6b  #0x1d
    const-string v0, "conv"

    goto :goto_16

    :pswitch_6e  #0x1e
    const-string v0, "to-byte"

    goto :goto_16

    :pswitch_71  #0x1f
    const-string v0, "to-char"

    goto :goto_16

    :pswitch_74  #0x20
    const-string v0, "to-short"

    goto :goto_16

    :pswitch_77  #0x21
    const-string v0, "return"

    goto :goto_16

    :pswitch_7a  #0x22
    const-string v0, "array-length"

    goto :goto_16

    :pswitch_7d  #0x23
    const-string v0, "throw"

    goto :goto_16

    :pswitch_80  #0x24
    const-string v0, "monitor-enter"

    goto :goto_16

    :pswitch_83  #0x25
    const-string v0, "monitor-exit"

    goto :goto_16

    :pswitch_86  #0x26
    const-string v0, "aget"

    goto :goto_16

    :pswitch_89  #0x27
    const-string v0, "aput"

    goto :goto_16

    :pswitch_8c  #0x28
    const-string v0, "new-instance"

    goto :goto_16

    :pswitch_8f  #0x29
    const-string v0, "new-array"

    goto :goto_16

    :pswitch_92  #0x2a
    const-string v0, "filled-new-array"

    goto :goto_16

    :pswitch_95  #0x2b
    const-string v0, "check-cast"

    goto/16 :goto_16

    :pswitch_99  #0x2c
    const-string v0, "instance-of"

    goto/16 :goto_16

    :pswitch_9d  #0x2d
    const-string v0, "get-field"

    goto/16 :goto_16

    :pswitch_a1  #0x2e
    const-string v0, "get-static"

    goto/16 :goto_16

    :pswitch_a5  #0x2f
    const-string v0, "put-field"

    goto/16 :goto_16

    :pswitch_a9  #0x30
    const-string v0, "put-static"

    goto/16 :goto_16

    :pswitch_ad  #0x31
    const-string v0, "invoke-static"

    goto/16 :goto_16

    :pswitch_b1  #0x32
    const-string v0, "invoke-virtual"

    goto/16 :goto_16

    :pswitch_b5  #0x33
    const-string v0, "invoke-super"

    goto/16 :goto_16

    :pswitch_b9  #0x34
    const-string v0, "invoke-direct"

    goto/16 :goto_16

    :pswitch_bd  #0x35
    const-string v0, "invoke-interface"

    goto/16 :goto_16

    :pswitch_c1  #0x37
    const-string v0, "move-result"

    goto/16 :goto_16

    :pswitch_c5  #0x38
    const-string v0, "move-result-pseudo"

    goto/16 :goto_16

    :pswitch_c9  #0x39
    const-string v0, "fill-array-data"

    goto/16 :goto_16

    :pswitch_cd  #0x3a
    const-string v0, "invoke-polymorphic"

    goto/16 :goto_16

    :pswitch_d1  #0x3b
    const-string v0, "invoke-custom"

    goto/16 :goto_16

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_17  #00000001
        :pswitch_1a  #00000002
        :pswitch_1d  #00000003
        :pswitch_20  #00000004
        :pswitch_23  #00000005
        :pswitch_26  #00000006
        :pswitch_29  #00000007
        :pswitch_2c  #00000008
        :pswitch_2f  #00000009
        :pswitch_32  #0000000a
        :pswitch_35  #0000000b
        :pswitch_38  #0000000c
        :pswitch_3b  #0000000d
        :pswitch_3e  #0000000e
        :pswitch_41  #0000000f
        :pswitch_44  #00000010
        :pswitch_47  #00000011
        :pswitch_4a  #00000012
        :pswitch_4d  #00000013
        :pswitch_50  #00000014
        :pswitch_53  #00000015
        :pswitch_56  #00000016
        :pswitch_59  #00000017
        :pswitch_5c  #00000018
        :pswitch_5f  #00000019
        :pswitch_62  #0000001a
        :pswitch_65  #0000001b
        :pswitch_68  #0000001c
        :pswitch_6b  #0000001d
        :pswitch_6e  #0000001e
        :pswitch_71  #0000001f
        :pswitch_74  #00000020
        :pswitch_77  #00000021
        :pswitch_7a  #00000022
        :pswitch_7d  #00000023
        :pswitch_80  #00000024
        :pswitch_83  #00000025
        :pswitch_86  #00000026
        :pswitch_89  #00000027
        :pswitch_8c  #00000028
        :pswitch_8f  #00000029
        :pswitch_92  #0000002a
        :pswitch_95  #0000002b
        :pswitch_99  #0000002c
        :pswitch_9d  #0000002d
        :pswitch_a1  #0000002e
        :pswitch_a5  #0000002f
        :pswitch_a9  #00000030
        :pswitch_ad  #00000031
        :pswitch_b1  #00000032
        :pswitch_b5  #00000033
        :pswitch_b9  #00000034
        :pswitch_bd  #00000035
        :pswitch_3  #00000036
        :pswitch_c1  #00000037
        :pswitch_c5  #00000038
        :pswitch_c9  #00000039
        :pswitch_cd  #0000003a
        :pswitch_d1  #0000003b
    .end packed-switch
.end method

.method public static b(I)I
    .registers 4

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized IF regop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18  #0x9
    const/16 p0, 0xc

    :goto_1a
    :pswitch_1a  #0x7, 0x8
    return p0

    :pswitch_1b  #0xa
    const/16 p0, 0xb

    goto :goto_1a

    :pswitch_1e  #0xb
    const/16 p0, 0xa

    goto :goto_1a

    :pswitch_21  #0xc
    const/16 p0, 0x9

    goto :goto_1a

    :pswitch_data_24
    .packed-switch 0x7
        :pswitch_1a  #00000007
        :pswitch_1a  #00000008
        :pswitch_18  #00000009
        :pswitch_1b  #0000000a
        :pswitch_1e  #0000000b
        :pswitch_21  #0000000c
    .end packed-switch
.end method
