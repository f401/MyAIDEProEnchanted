.class public Labcd/dn;
.super Labcd/Fm;


# direct methods
.method public constructor <init>(Labcd/Os;)V
    .locals 0

    invoke-direct {p0, p1}, Labcd/Fm;-><init>(Labcd/Os;)V

    return-void
.end method


# virtual methods
.method public j6(Labcd/Om;II)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    const/16 v0, 0x14

    if-eq p3, v0, :cond_5

    const/16 v0, 0x15

    if-eq p3, v0, :cond_4

    const/16 v0, 0xab

    if-eq p3, v0, :cond_3

    const/16 v0, 0xac

    if-eq p3, v0, :cond_3

    sparse-switch p3, :sswitch_data_0

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    packed-switch p3, :pswitch_data_2

    packed-switch p3, :pswitch_data_3

    packed-switch p3, :pswitch_data_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldn\'t happen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Labcd/Fm;->Hw()V

    invoke-virtual {p0}, Labcd/Fm;->VH()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    and-int/lit8 v1, v0, 0xf

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Labcd/Fm;->FH(I)Labcd/Rs;

    move-result-object v1

    invoke-virtual {p0, v1}, Labcd/Fm;->j6(Labcd/Rs;)V

    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_1
    new-instance v0, Labcd/Wm;

    invoke-virtual {p0}, Labcd/Fm;->gn()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/Wm;-><init>(I)V

    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Labcd/Fm;->DW(Labcd/Rs;)V

    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Labcd/Fm;->j6(Labcd/Om;)V

    return-void

    :pswitch_2
    invoke-virtual {p0, v1}, Labcd/Fm;->FH(I)Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->P8()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Labcd/Om;->j6(Labcd/Qs;)V

    :cond_2
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Rs;

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    sget-object v1, Labcd/Qs;->tp:Labcd/Qs;

    if-ne v0, v1, :cond_0

    :cond_3
    :goto_3
    :pswitch_3
    :sswitch_0
    invoke-virtual {p0}, Labcd/Fm;->Hw()V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Rs;

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    sget-object v1, Labcd/Qs;->tp:Labcd/Qs;

    if-ne v0, v1, :cond_0

    goto :goto_3

    :pswitch_5
    sget-object v0, Labcd/Qs;->VH:Labcd/Qs;

    goto :goto_1

    :pswitch_6
    :sswitch_1
    invoke-virtual {p0}, Labcd/Fm;->u7()Labcd/Qs;

    move-result-object v0

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;

    invoke-virtual {v0}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object v0

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;

    invoke-virtual {v0}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Qs;->j6(I)Labcd/Qs;

    move-result-object v0

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;

    invoke-virtual {v0}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0

    goto :goto_1

    :cond_4
    :sswitch_2
    invoke-virtual {p0, v1}, Labcd/Fm;->FH(I)Labcd/Rs;

    move-result-object v0

    goto :goto_1

    :cond_5
    :sswitch_3
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Rs;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_3
        0x2e -> :sswitch_1
        0x36 -> :sswitch_2
        0x4f -> :sswitch_0
        0x64 -> :sswitch_1
        0x68 -> :sswitch_1
        0x6c -> :sswitch_1
        0x70 -> :sswitch_1
        0x74 -> :sswitch_1
        0x78 -> :sswitch_1
        0x7a -> :sswitch_1
        0x7c -> :sswitch_1
        0x7e -> :sswitch_1
        0x80 -> :sswitch_1
        0x82 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x84
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xbb
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_5
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc5
        :pswitch_9
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
