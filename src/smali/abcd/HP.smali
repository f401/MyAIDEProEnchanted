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

    if-eqz v0, :cond_0

    new-instance v0, Labcd/FO;

    invoke-direct {v0}, Labcd/FO;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/hN;->v5:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Labcd/GO;

    invoke-direct {v0}, Labcd/GO;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/hN;->DW:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Labcd/HO;

    invoke-direct {v0}, Labcd/HO;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/hN;->FH:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Labcd/IO;

    invoke-direct {v0}, Labcd/IO;-><init>()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/hN;->Hw:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Labcd/JO;

    invoke-direct {v0}, Labcd/JO;-><init>()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/lN;->SI:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Labcd/BO;

    invoke-direct {v0}, Labcd/BO;-><init>()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/lN;->nw:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Labcd/AO;

    invoke-direct {v0}, Labcd/AO;-><init>()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/lN;->ei:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Labcd/zO;

    invoke-direct {v0}, Labcd/zO;-><init>()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/_M;->j6:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Labcd/wO;

    invoke-direct {v0}, Labcd/wO;-><init>()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/oN;->FH:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Labcd/CO;

    invoke-direct {v0}, Labcd/CO;-><init>()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/oN;->DW:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Labcd/DO;

    invoke-direct {v0}, Labcd/DO;-><init>()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v0

    sget-object v1, Labcd/oN;->Hw:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Labcd/EO;

    invoke-direct {v0}, Labcd/EO;-><init>()V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Labcd/BP;

    const-string v1, "cannot recognise digest"

    invoke-direct {v0, v1}, Labcd/BP;-><init>(Ljava/lang/String;)V

    throw v0
.end method
