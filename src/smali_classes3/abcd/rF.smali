.class public Labcd/rF;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/io/OutputStream;Labcd/uF;Ljava/util/List;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "LuF<",
            "Labcd/tC;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Labcd/uF;->FH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p2}, Labcd/uF;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ">>>>>>> "

    const-string v6, "\n"

    if-nez v4, :cond_37

    if-eqz v3, :cond_36

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :cond_36
    return-void

    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/qF;

    invoke-virtual {p2}, Labcd/uF;->FH()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4}, Labcd/qF;->Hw()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/tC;

    if-eqz v3, :cond_6c

    invoke-virtual {v4}, Labcd/qF;->DW()Labcd/qF$a;

    move-result-object v8

    sget-object v9, Labcd/qF$a;->FH:Labcd/qF$a;

    if-eq v8, v9, :cond_6c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    move-object v3, v2

    :cond_6c
    invoke-virtual {v4}, Labcd/qF;->DW()Labcd/qF$a;

    move-result-object v5

    sget-object v8, Labcd/qF$a;->DW:Labcd/qF$a;

    if-ne v5, v8, :cond_a1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "<<<<<<< "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Labcd/qF;->Hw()I

    move-result v5

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Labcd/qF;->Hw()I

    move-result v3

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_d0

    :cond_a1
    invoke-virtual {v4}, Labcd/qF;->DW()Labcd/qF$a;

    move-result-object v5

    sget-object v8, Labcd/qF$a;->FH:Labcd/qF$a;

    if-ne v5, v8, :cond_d0

    invoke-virtual {v4}, Labcd/qF;->Hw()I

    move-result v3

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v0, :cond_b8

    const-string v5, "=======\n"

    goto :goto_c9

    :cond_b8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "======= "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_c9
    invoke-virtual {v5, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    :cond_d0
    :goto_d0
    invoke-virtual {v4}, Labcd/qF;->j6()I

    move-result v5

    :goto_d4
    invoke-virtual {v4}, Labcd/qF;->FH()I

    move-result v6

    if-lt v5, v6, :cond_dc

    goto/16 :goto_14

    :cond_dc
    invoke-virtual {v7, p1, v5}, Labcd/tC;->j6(Ljava/io/OutputStream;I)V

    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d4
.end method
