.class public final Labcd/_r;
.super Ljava/lang/Object;


# direct methods
.method public static DW(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "fill-array-data"

    goto :goto_0

    :pswitch_2
    const-string v0, "move-result-pseudo"

    goto :goto_0

    :pswitch_3
    const-string v0, "move-result"

    goto :goto_0

    :pswitch_4
    const-string v0, "invoke-interface"

    goto :goto_0

    :pswitch_5
    const-string v0, "invoke-direct"

    goto :goto_0

    :pswitch_6
    const-string v0, "invoke-super"

    goto :goto_0

    :pswitch_7
    const-string v0, "invoke-virtual"

    goto :goto_0

    :pswitch_8
    const-string v0, "invoke-static"

    goto :goto_0

    :pswitch_9
    const-string v0, "put-static"

    goto :goto_0

    :pswitch_a
    const-string v0, "put-field"

    goto :goto_0

    :pswitch_b
    const-string v0, "get-static"

    goto :goto_0

    :pswitch_c
    const-string v0, "get-field"

    goto :goto_0

    :pswitch_d
    const-string v0, "instance-of"

    goto :goto_0

    :pswitch_e
    const-string v0, "check-cast"

    goto :goto_0

    :pswitch_f
    const-string v0, "filled-new-array"

    goto :goto_0

    :pswitch_10
    const-string v0, "new-array"

    goto :goto_0

    :pswitch_11
    const-string v0, "new-instance"

    goto :goto_0

    :pswitch_12
    const-string v0, "aput"

    goto :goto_0

    :pswitch_13
    const-string v0, "aget"

    goto :goto_0

    :pswitch_14
    const-string v0, "monitor-exit"

    goto :goto_0

    :pswitch_15
    const-string v0, "monitor-enter"

    goto :goto_0

    :pswitch_16
    const-string v0, "throw"

    goto :goto_0

    :pswitch_17
    const-string v0, "array-length"

    goto :goto_0

    :pswitch_18
    const-string v0, "return"

    goto :goto_0

    :pswitch_19
    const-string v0, "to-short"

    goto :goto_0

    :pswitch_1a
    const-string v0, "to-char"

    goto :goto_0

    :pswitch_1b
    const-string v0, "to-byte"

    goto :goto_0

    :pswitch_1c
    const-string v0, "conv"

    goto :goto_0

    :pswitch_1d
    const-string v0, "cmpg"

    goto :goto_0

    :pswitch_1e
    const-string v0, "cmpl"

    goto :goto_0

    :pswitch_1f
    const-string v0, "not"

    goto :goto_0

    :pswitch_20
    const-string v0, "ushr"

    goto :goto_0

    :pswitch_21
    const-string v0, "shr"

    goto :goto_0

    :pswitch_22
    const-string v0, "shl"

    goto :goto_0

    :pswitch_23
    const-string v0, "xor"

    goto :goto_0

    :pswitch_24
    const-string v0, "or"

    goto :goto_0

    :pswitch_25
    const-string v0, "and"

    goto :goto_0

    :pswitch_26
    const-string v0, "neg"

    goto :goto_0

    :pswitch_27
    const-string v0, "rem"

    goto :goto_0

    :pswitch_28
    const-string v0, "div"

    goto :goto_0

    :pswitch_29
    const-string v0, "mul"

    goto :goto_0

    :pswitch_2a
    const-string v0, "sub"

    goto :goto_0

    :pswitch_2b
    const-string v0, "add"

    goto/16 :goto_0

    :pswitch_2c
    const-string v0, "switch"

    goto/16 :goto_0

    :pswitch_2d
    const-string v0, "if-gt"

    goto/16 :goto_0

    :pswitch_2e
    const-string v0, "if-le"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "if-ge"

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "if-lt"

    goto/16 :goto_0

    :pswitch_31
    const-string v0, "if-ne"

    goto/16 :goto_0

    :pswitch_32
    const-string v0, "if-eq"

    goto/16 :goto_0

    :pswitch_33
    const-string v0, "goto"

    goto/16 :goto_0

    :pswitch_34
    const-string v0, "const"

    goto/16 :goto_0

    :pswitch_35
    const-string v0, "move-exception"

    goto/16 :goto_0

    :pswitch_36
    const-string v0, "move-param"

    goto/16 :goto_0

    :pswitch_37
    const-string v0, "move"

    goto/16 :goto_0

    :pswitch_38
    const-string v0, "nop"

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static j6(I)I
    .registers 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized IF regop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 p0, 0x9

    :goto_0
    :pswitch_1
    return p0

    :pswitch_2
    const/16 p0, 0xa

    goto :goto_0

    :pswitch_3
    const/16 p0, 0xb

    goto :goto_0

    :pswitch_4
    const/16 p0, 0xc

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
