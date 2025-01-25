.class Labcd/HP;
.super Ljava/lang/Object;


# direct methods
.method static j6(Labcd/wN;)Labcd/sO;
    .registers 3

    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/jN;->u7:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance p0, Labcd/FO;

    invoke-direct {p0}, Labcd/FO;-><init>()V

    goto/16 :goto_dc

    :cond_13
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/hN;->v5:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance p0, Labcd/GO;

    invoke-direct {p0}, Labcd/GO;-><init>()V

    goto/16 :goto_dc

    :cond_26
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/hN;->DW:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance p0, Labcd/HO;

    invoke-direct {p0}, Labcd/HO;-><init>()V

    goto/16 :goto_dc

    :cond_39
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/hN;->FH:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance p0, Labcd/IO;

    invoke-direct {p0}, Labcd/IO;-><init>()V

    goto/16 :goto_dc

    :cond_4c
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/hN;->Hw:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance p0, Labcd/JO;

    invoke-direct {p0}, Labcd/JO;-><init>()V

    goto/16 :goto_dc

    :cond_5f
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/lN;->SI:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    new-instance p0, Labcd/BO;

    invoke-direct {p0}, Labcd/BO;-><init>()V

    goto :goto_dc

    :cond_71
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/lN;->nw:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    new-instance p0, Labcd/AO;

    invoke-direct {p0}, Labcd/AO;-><init>()V

    goto :goto_dc

    :cond_83
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/lN;->ei:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    new-instance p0, Labcd/zO;

    invoke-direct {p0}, Labcd/zO;-><init>()V

    goto :goto_dc

    :cond_95
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/_M;->j6:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    new-instance p0, Labcd/wO;

    invoke-direct {p0}, Labcd/wO;-><init>()V

    goto :goto_dc

    :cond_a7
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/oN;->FH:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    new-instance p0, Labcd/CO;

    invoke-direct {p0}, Labcd/CO;-><init>()V

    goto :goto_dc

    :cond_b9
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/oN;->DW:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    new-instance p0, Labcd/DO;

    invoke-direct {p0}, Labcd/DO;-><init>()V

    goto :goto_dc

    :cond_cb
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object p0

    sget-object v0, Labcd/oN;->Hw:Labcd/zL;

    invoke-virtual {p0, v0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_dd

    new-instance p0, Labcd/EO;

    invoke-direct {p0}, Labcd/EO;-><init>()V

    :goto_dc
    return-object p0

    :cond_dd
    new-instance p0, Labcd/BP;

    const-string v0, "cannot recognise digest"

    invoke-direct {p0, v0}, Labcd/BP;-><init>(Ljava/lang/String;)V

    throw p0
.end method
