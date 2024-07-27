.class public final Labcd/Um;
.super Ljava/lang/Object;


# direct methods
.method public static DW(Labcd/Rs;Labcd/Rs;)Labcd/Rs;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-nez p1, :cond_2

    move-object p0, v0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p0

    invoke-interface {p1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v1

    if-eq p0, v1, :cond_0

    invoke-virtual {p0}, Labcd/Qs;->vy()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Labcd/Qs;->vy()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Labcd/Qs;->EQ:Labcd/Qs;

    if-ne p0, v0, :cond_3

    move-object p0, v1

    goto :goto_0

    :cond_3
    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Labcd/Qs;->lg()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Labcd/Qs;->lg()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v1}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Um;->DW(Labcd/Rs;Labcd/Rs;)Labcd/Rs;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object p0, Labcd/Qs;->QX:Labcd/Qs;

    goto :goto_0

    :cond_4
    check-cast v0, Labcd/Qs;

    invoke-virtual {v0}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object p0, Labcd/Qs;->QX:Labcd/Qs;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Labcd/Qs;->gW()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Labcd/Qs;->gW()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object p0, Labcd/Qs;->VH:Labcd/Qs;

    goto :goto_0

    :cond_7
    move-object p0, v0

    goto :goto_0
.end method

.method public static j6(Labcd/Nm;Labcd/Nm;)Labcd/Nm;
    .registers 8

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Labcd/Nm;->size()I

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {p1}, Labcd/Nm;->size()I

    move-result v1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Labcd/Nm;->DW(I)Labcd/Rs;

    move-result-object v3

    invoke-virtual {p1, v1}, Labcd/Nm;->DW(I)Labcd/Rs;

    move-result-object v4

    invoke-static {v3, v4}, Labcd/Um;->DW(Labcd/Rs;Labcd/Rs;)Labcd/Rs;

    move-result-object v5

    if-eq v5, v3, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Labcd/Nm;->rN()Labcd/Nm;

    move-result-object v0

    :cond_2
    if-eqz v5, :cond_4

    :try_start_0
    invoke-virtual {v0, v1, v5}, Labcd/Nm;->j6(ILabcd/Rs;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Labcd/an;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incompatible: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Labcd/an; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while merging stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/hu;->we()V

    move-object p0, v0

    goto :goto_0

    :cond_6
    new-instance v0, Labcd/an;

    const-string v1, "mismatched stack depths"

    invoke-direct {v0, v1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Labcd/Vm;Labcd/Vm;)Labcd/Vm;
    .registers 7

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Labcd/Vm;->er()I

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {p1}, Labcd/Vm;->er()I

    move-result v1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Labcd/Vm;->DW(I)Labcd/Rs;

    move-result-object v3

    invoke-virtual {p1, v1}, Labcd/Vm;->DW(I)Labcd/Rs;

    move-result-object v4

    invoke-static {v3, v4}, Labcd/Um;->DW(Labcd/Rs;Labcd/Rs;)Labcd/Rs;

    move-result-object v4

    if-eq v4, v3, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Labcd/Vm;->lg()Labcd/Vm;

    move-result-object v0

    :cond_2
    if-nez v4, :cond_4

    invoke-virtual {v0, v1}, Labcd/Vm;->FH(I)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1, v4}, Labcd/Vm;->j6(ILabcd/Rs;)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/hu;->we()V

    move-object p0, v0

    goto :goto_0

    :cond_6
    new-instance v0, Labcd/an;

    const-string v1, "mismatched maxLocals values"

    invoke-direct {v0, v1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Labcd/Rs;Labcd/Rs;)Z
    .registers 10

    const/16 v7, 0xa

    const/16 v5, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-interface {p0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v1

    invoke-interface {p1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/Qs;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Labcd/Qs;->j3()I

    move-result v6

    invoke-virtual {v0}, Labcd/Qs;->j3()I

    move-result v4

    if-ne v6, v7, :cond_2

    sget-object v1, Labcd/Qs;->QX:Labcd/Qs;

    move v6, v5

    :cond_2
    if-ne v4, v7, :cond_3

    sget-object v0, Labcd/Qs;->QX:Labcd/Qs;

    move v4, v5

    :cond_3
    if-ne v6, v5, :cond_4

    if-eq v4, v5, :cond_6

    :cond_4
    invoke-virtual {v1}, Labcd/Qs;->gW()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Labcd/Qs;->gW()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    sget-object v4, Labcd/Qs;->EQ:Labcd/Qs;

    if-ne v1, v4, :cond_7

    move v2, v3

    goto :goto_0

    :cond_7
    if-eq v0, v4, :cond_0

    sget-object v4, Labcd/Qs;->QX:Labcd/Qs;

    if-eq v1, v4, :cond_0

    invoke-virtual {v1}, Labcd/Qs;->lg()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Labcd/Qs;->lg()Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object v1

    invoke-virtual {v0}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v1}, Labcd/Qs;->lg()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Labcd/Qs;->lg()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_9
    invoke-static {v1, v0}, Labcd/Um;->j6(Labcd/Rs;Labcd/Rs;)Z

    move-result v2

    goto :goto_0

    :cond_a
    invoke-virtual {v0}, Labcd/Qs;->lg()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Labcd/Qs;->XL:Labcd/Qs;

    if-eq v1, v0, :cond_c

    sget-object v0, Labcd/Qs;->Ws:Labcd/Qs;

    if-ne v1, v0, :cond_b

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_b
    move v0, v3

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_1
.end method
