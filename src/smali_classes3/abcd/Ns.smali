.class public final Labcd/Ns;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Labcd/Qs;)Labcd/ms;
    .registers 3

    invoke-virtual {p0}, Labcd/Qs;->j3()I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no zero for type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_22  #0x9
    sget-object p0, Labcd/As;->j6:Labcd/As;

    return-object p0

    :pswitch_25  #0x8
    sget-object p0, Labcd/Is;->DW:Labcd/Is;

    return-object p0

    :pswitch_28  #0x7
    sget-object p0, Labcd/Es;->DW:Labcd/Es;

    return-object p0

    :pswitch_2b  #0x6
    sget-object p0, Labcd/ys;->Hw:Labcd/ys;

    return-object p0

    :pswitch_2e  #0x5
    sget-object p0, Labcd/xs;->DW:Labcd/xs;

    return-object p0

    :pswitch_31  #0x4
    sget-object p0, Labcd/us;->DW:Labcd/us;

    return-object p0

    :pswitch_34  #0x3
    sget-object p0, Labcd/ts;->DW:Labcd/ts;

    return-object p0

    :pswitch_37  #0x2
    sget-object p0, Labcd/ss;->DW:Labcd/ss;

    return-object p0

    :pswitch_3a  #0x1
    sget-object p0, Labcd/rs;->DW:Labcd/rs;

    return-object p0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3a  #00000001
        :pswitch_37  #00000002
        :pswitch_34  #00000003
        :pswitch_31  #00000004
        :pswitch_2e  #00000005
        :pswitch_2b  #00000006
        :pswitch_28  #00000007
        :pswitch_25  #00000008
        :pswitch_22  #00000009
    .end packed-switch
.end method
