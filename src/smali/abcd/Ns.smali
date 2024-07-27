.class public final Labcd/Ns;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Labcd/Qs;)Labcd/ms;
    .registers 3

    invoke-virtual {p0}, Labcd/Qs;->j3()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no zero for type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v0, Labcd/As;->j6:Labcd/As;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Labcd/Is;->DW:Labcd/Is;

    goto :goto_0

    :pswitch_2
    sget-object v0, Labcd/Es;->DW:Labcd/Es;

    goto :goto_0

    :pswitch_3
    sget-object v0, Labcd/ys;->Hw:Labcd/ys;

    goto :goto_0

    :pswitch_4
    sget-object v0, Labcd/xs;->DW:Labcd/xs;

    goto :goto_0

    :pswitch_5
    sget-object v0, Labcd/us;->DW:Labcd/us;

    goto :goto_0

    :pswitch_6
    sget-object v0, Labcd/ts;->DW:Labcd/ts;

    goto :goto_0

    :pswitch_7
    sget-object v0, Labcd/ss;->DW:Labcd/ss;

    goto :goto_0

    :pswitch_8
    sget-object v0, Labcd/rs;->DW:Labcd/rs;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
