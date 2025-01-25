.class public La/b/d/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(C)B
    .registers 4

    sparse-switch p0, :sswitch_data_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1c
    const/4 v0, 0x4

    :goto_1d
    return v0

    :sswitch_1e
    const/16 v0, 0x8

    goto :goto_1d

    :sswitch_21
    const/4 v0, 0x5

    goto :goto_1d

    :sswitch_23
    const/16 v0, 0x9

    goto :goto_1d

    :sswitch_26
    const/16 v0, 0xa

    goto :goto_1d

    :sswitch_29
    const/16 v0, 0xb

    goto :goto_1d

    :sswitch_2c
    const/4 v0, 0x6

    goto :goto_1d

    :sswitch_2e
    const/4 v0, 0x7

    goto :goto_1d

    :sswitch_data_30
    .sparse-switch
        0x42 -> :sswitch_1e
        0x43 -> :sswitch_21
        0x44 -> :sswitch_2e
        0x46 -> :sswitch_2c
        0x49 -> :sswitch_26
        0x4a -> :sswitch_29
        0x53 -> :sswitch_23
        0x5a -> :sswitch_1c
    .end sparse-switch
.end method

.method public static a(B)C
    .registers 4

    packed-switch p0, :pswitch_data_3a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown array type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x4
    const/16 v0, 0x5a

    :goto_24
    return v0

    :pswitch_25  #0x5
    const/16 v0, 0x43

    goto :goto_24

    :pswitch_28  #0x6
    const/16 v0, 0x46

    goto :goto_24

    :pswitch_2b  #0x7
    const/16 v0, 0x44

    goto :goto_24

    :pswitch_2e  #0x8
    const/16 v0, 0x42

    goto :goto_24

    :pswitch_31  #0x9
    const/16 v0, 0x53

    goto :goto_24

    :pswitch_34  #0xa
    const/16 v0, 0x49

    goto :goto_24

    :pswitch_37  #0xb
    const/16 v0, 0x4a

    goto :goto_24

    :pswitch_data_3a
    .packed-switch 0x4
        :pswitch_22  #00000004
        :pswitch_25  #00000005
        :pswitch_28  #00000006
        :pswitch_2b  #00000007
        :pswitch_2e  #00000008
        :pswitch_31  #00000009
        :pswitch_34  #0000000a
        :pswitch_37  #0000000b
    .end packed-switch
.end method
