.class public final Labcd/_r;
.super Ljava/lang/Object;


# direct methods
.method public static DW(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_c2

    :pswitch_3  #0x36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19  #0x39
    const-string p0, "fill-array-data"

    return-object p0

    :pswitch_1c  #0x38
    const-string p0, "move-result-pseudo"

    return-object p0

    :pswitch_1f  #0x37
    const-string p0, "move-result"

    return-object p0

    :pswitch_22  #0x35
    const-string p0, "invoke-interface"

    return-object p0

    :pswitch_25  #0x34
    const-string p0, "invoke-direct"

    return-object p0

    :pswitch_28  #0x33
    const-string p0, "invoke-super"

    return-object p0

    :pswitch_2b  #0x32
    const-string p0, "invoke-virtual"

    return-object p0

    :pswitch_2e  #0x31
    const-string p0, "invoke-static"

    return-object p0

    :pswitch_31  #0x30
    const-string p0, "put-static"

    return-object p0

    :pswitch_34  #0x2f
    const-string p0, "put-field"

    return-object p0

    :pswitch_37  #0x2e
    const-string p0, "get-static"

    return-object p0

    :pswitch_3a  #0x2d
    const-string p0, "get-field"

    return-object p0

    :pswitch_3d  #0x2c
    const-string p0, "instance-of"

    return-object p0

    :pswitch_40  #0x2b
    const-string p0, "check-cast"

    return-object p0

    :pswitch_43  #0x2a
    const-string p0, "filled-new-array"

    return-object p0

    :pswitch_46  #0x29
    const-string p0, "new-array"

    return-object p0

    :pswitch_49  #0x28
    const-string p0, "new-instance"

    return-object p0

    :pswitch_4c  #0x27
    const-string p0, "aput"

    return-object p0

    :pswitch_4f  #0x26
    const-string p0, "aget"

    return-object p0

    :pswitch_52  #0x25
    const-string p0, "monitor-exit"

    return-object p0

    :pswitch_55  #0x24
    const-string p0, "monitor-enter"

    return-object p0

    :pswitch_58  #0x23
    const-string p0, "throw"

    return-object p0

    :pswitch_5b  #0x22
    const-string p0, "array-length"

    return-object p0

    :pswitch_5e  #0x21
    const-string p0, "return"

    return-object p0

    :pswitch_61  #0x20
    const-string p0, "to-short"

    return-object p0

    :pswitch_64  #0x1f
    const-string p0, "to-char"

    return-object p0

    :pswitch_67  #0x1e
    const-string p0, "to-byte"

    return-object p0

    :pswitch_6a  #0x1d
    const-string p0, "conv"

    return-object p0

    :pswitch_6d  #0x1c
    const-string p0, "cmpg"

    return-object p0

    :pswitch_70  #0x1b
    const-string p0, "cmpl"

    return-object p0

    :pswitch_73  #0x1a
    const-string p0, "not"

    return-object p0

    :pswitch_76  #0x19
    const-string p0, "ushr"

    return-object p0

    :pswitch_79  #0x18
    const-string p0, "shr"

    return-object p0

    :pswitch_7c  #0x17
    const-string p0, "shl"

    return-object p0

    :pswitch_7f  #0x16
    const-string p0, "xor"

    return-object p0

    :pswitch_82  #0x15
    const-string p0, "or"

    return-object p0

    :pswitch_85  #0x14
    const-string p0, "and"

    return-object p0

    :pswitch_88  #0x13
    const-string p0, "neg"

    return-object p0

    :pswitch_8b  #0x12
    const-string p0, "rem"

    return-object p0

    :pswitch_8e  #0x11
    const-string p0, "div"

    return-object p0

    :pswitch_91  #0x10
    const-string p0, "mul"

    return-object p0

    :pswitch_94  #0xf
    const-string p0, "sub"

    return-object p0

    :pswitch_97  #0xe
    const-string p0, "add"

    return-object p0

    :pswitch_9a  #0xd
    const-string p0, "switch"

    return-object p0

    :pswitch_9d  #0xc
    const-string p0, "if-gt"

    return-object p0

    :pswitch_a0  #0xb
    const-string p0, "if-le"

    return-object p0

    :pswitch_a3  #0xa
    const-string p0, "if-ge"

    return-object p0

    :pswitch_a6  #0x9
    const-string p0, "if-lt"

    return-object p0

    :pswitch_a9  #0x8
    const-string p0, "if-ne"

    return-object p0

    :pswitch_ac  #0x7
    const-string p0, "if-eq"

    return-object p0

    :pswitch_af  #0x6
    const-string p0, "goto"

    return-object p0

    :pswitch_b2  #0x5
    const-string p0, "const"

    return-object p0

    :pswitch_b5  #0x4
    const-string p0, "move-exception"

    return-object p0

    :pswitch_b8  #0x3
    const-string p0, "move-param"

    return-object p0

    :pswitch_bb  #0x2
    const-string p0, "move"

    return-object p0

    :pswitch_be  #0x1
    const-string p0, "nop"

    return-object p0

    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_be  #00000001
        :pswitch_bb  #00000002
        :pswitch_b8  #00000003
        :pswitch_b5  #00000004
        :pswitch_b2  #00000005
        :pswitch_af  #00000006
        :pswitch_ac  #00000007
        :pswitch_a9  #00000008
        :pswitch_a6  #00000009
        :pswitch_a3  #0000000a
        :pswitch_a0  #0000000b
        :pswitch_9d  #0000000c
        :pswitch_9a  #0000000d
        :pswitch_97  #0000000e
        :pswitch_94  #0000000f
        :pswitch_91  #00000010
        :pswitch_8e  #00000011
        :pswitch_8b  #00000012
        :pswitch_88  #00000013
        :pswitch_85  #00000014
        :pswitch_82  #00000015
        :pswitch_7f  #00000016
        :pswitch_7c  #00000017
        :pswitch_79  #00000018
        :pswitch_76  #00000019
        :pswitch_73  #0000001a
        :pswitch_70  #0000001b
        :pswitch_6d  #0000001c
        :pswitch_6a  #0000001d
        :pswitch_67  #0000001e
        :pswitch_64  #0000001f
        :pswitch_61  #00000020
        :pswitch_5e  #00000021
        :pswitch_5b  #00000022
        :pswitch_58  #00000023
        :pswitch_55  #00000024
        :pswitch_52  #00000025
        :pswitch_4f  #00000026
        :pswitch_4c  #00000027
        :pswitch_49  #00000028
        :pswitch_46  #00000029
        :pswitch_43  #0000002a
        :pswitch_40  #0000002b
        :pswitch_3d  #0000002c
        :pswitch_3a  #0000002d
        :pswitch_37  #0000002e
        :pswitch_34  #0000002f
        :pswitch_31  #00000030
        :pswitch_2e  #00000031
        :pswitch_2b  #00000032
        :pswitch_28  #00000033
        :pswitch_25  #00000034
        :pswitch_22  #00000035
        :pswitch_3  #00000036
        :pswitch_1f  #00000037
        :pswitch_1c  #00000038
        :pswitch_19  #00000039
    .end packed-switch
.end method

.method public static j6(I)I
    .registers 3

    packed-switch p0, :pswitch_data_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized IF regop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1a  #0xc
    const/16 p0, 0x9

    return p0

    :pswitch_1d  #0xb
    const/16 p0, 0xa

    return p0

    :pswitch_20  #0xa
    const/16 p0, 0xb

    return p0

    :pswitch_23  #0x9
    const/16 p0, 0xc

    :pswitch_25  #0x7, 0x8
    return p0

    :pswitch_data_26
    .packed-switch 0x7
        :pswitch_25  #00000007
        :pswitch_25  #00000008
        :pswitch_23  #00000009
        :pswitch_20  #0000000a
        :pswitch_1d  #0000000b
        :pswitch_1a  #0000000c
    .end packed-switch
.end method
