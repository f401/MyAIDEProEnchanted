.class public Labcd/dn;
.super Labcd/Fm;


# direct methods
.method public constructor <init>(Labcd/Os;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Fm;-><init>(Labcd/Os;)V

    return-void
.end method


# virtual methods
.method public j6(Labcd/Om;II)V
    .registers 6

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    const/16 v0, 0x14

    if-eq p3, v0, :cond_5

    const/16 v0, 0x15

    if-eq p3, v0, :cond_4

    const/16 v0, 0xab

    if-eq p3, v0, :cond_6

    const/16 v0, 0xac

    if-eq p3, v0, :cond_6

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
    sget-object v0, Labcd/Qs;->VH:Labcd/Qs;

    invoke-virtual {p0, v0}, Labcd/Fm;->DW(Labcd/Rs;)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Labcd/Fm;->j6(Labcd/Om;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;

    invoke-virtual {v0}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Fm;->DW(Labcd/Rs;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;

    invoke-virtual {v0}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Fm;->DW(Labcd/Rs;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;

    invoke-virtual {v0}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Qs;->j6(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Fm;->DW(Labcd/Rs;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, Labcd/Fm;->FH(I)Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->P8()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Labcd/Om;->j6(Labcd/Qs;)V

    :cond_1
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Rs;

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    sget-object v1, Labcd/Qs;->tp:Labcd/Qs;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Labcd/Fm;->Hw()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Labcd/Fm;->DW(Labcd/Rs;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Rs;

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    sget-object v1, Labcd/Qs;->tp:Labcd/Qs;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Labcd/Fm;->Hw()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Labcd/Fm;->DW(Labcd/Rs;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Labcd/Wm;

    invoke-virtual {p0}, Labcd/Fm;->gn()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/Wm;-><init>(I)V

    invoke-virtual {p0, v0}, Labcd/Fm;->DW(Labcd/Rs;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Labcd/Fm;->Hw()V

    invoke-virtual {p0}, Labcd/Fm;->VH()I

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    and-int/lit8 v1, v0, 0xf

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Labcd/Fm;->FH(I)Labcd/Rs;

    move-result-object v1

    invoke-virtual {p0, v1}, Labcd/Fm;->j6(Labcd/Rs;)V

    shr-int/lit8 v0, v0, 0x4

    goto :goto_1

    :pswitch_8
    :sswitch_0
    invoke-virtual {p0}, Labcd/Fm;->u7()Labcd/Qs;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Fm;->DW(Labcd/Rs;)V

    goto/16 :goto_0

    :cond_4
    :sswitch_1
    invoke-virtual {p0, v1}, Labcd/Fm;->FH(I)Labcd/Rs;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Fm;->DW(Labcd/Rs;)V

    goto/16 :goto_0

    :cond_5
    :sswitch_2
    invoke-virtual {p0}, Labcd/Fm;->Zo()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Rs;

    invoke-virtual {p0, v0}, Labcd/Fm;->DW(Labcd/Rs;)V

    goto/16 :goto_0

    :cond_6
    :pswitch_9
    :sswitch_3
    invoke-virtual {p0}, Labcd/Fm;->Hw()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x12 -> :sswitch_2
        0x2e -> :sswitch_0
        0x36 -> :sswitch_1
        0x4f -> :sswitch_3
        0x64 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6c -> :sswitch_0
        0x70 -> :sswitch_0
        0x74 -> :sswitch_0
        0x78 -> :sswitch_0
        0x7a -> :sswitch_0
        0x7c -> :sswitch_0
        0x7e -> :sswitch_0
        0x80 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x84
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb1
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xbb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc5
        :pswitch_2
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
