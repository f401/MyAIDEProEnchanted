.class public final Labcd/Um;
.super Ljava/lang/Object;


# direct methods
.method public static DW(Labcd/Rs;Labcd/Rs;)Labcd/Rs;
    .registers 4

    if-eqz p0, :cond_63

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_63

    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_d

    return-object v0

    :cond_d
    invoke-interface {p0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p0

    invoke-interface {p1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p1

    if-ne p0, p1, :cond_18

    return-object p0

    :cond_18
    invoke-virtual {p0}, Labcd/Qs;->vy()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p1}, Labcd/Qs;->vy()Z

    move-result v1

    if-eqz v1, :cond_53

    sget-object v0, Labcd/Qs;->EQ:Labcd/Qs;

    if-ne p0, v0, :cond_29

    return-object p1

    :cond_29
    if-ne p1, v0, :cond_2c

    return-object p0

    :cond_2c
    invoke-virtual {p0}, Labcd/Qs;->lg()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p1}, Labcd/Qs;->lg()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object p0

    invoke-virtual {p1}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object p1

    invoke-static {p0, p1}, Labcd/Um;->DW(Labcd/Rs;Labcd/Rs;)Labcd/Rs;

    move-result-object p0

    if-nez p0, :cond_49

    sget-object p0, Labcd/Qs;->QX:Labcd/Qs;

    return-object p0

    :cond_49
    check-cast p0, Labcd/Qs;

    invoke-virtual {p0}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object p0

    return-object p0

    :cond_50
    sget-object p0, Labcd/Qs;->QX:Labcd/Qs;

    return-object p0

    :cond_53
    invoke-virtual {p0}, Labcd/Qs;->gW()Z

    move-result p0

    if-eqz p0, :cond_62

    invoke-virtual {p1}, Labcd/Qs;->gW()Z

    move-result p0

    if-eqz p0, :cond_62

    sget-object p0, Labcd/Qs;->VH:Labcd/Qs;

    return-object p0

    :cond_62
    return-object v0

    :cond_63
    :goto_63
    return-object p0
.end method

.method public static j6(Labcd/Nm;Labcd/Nm;)Labcd/Nm;
    .registers 8

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0}, Labcd/Nm;->size()I

    move-result v0

    invoke-virtual {p1}, Labcd/Nm;->size()I

    move-result v1

    if-ne v1, v0, :cond_73

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_6c

    invoke-virtual {p0, v2}, Labcd/Nm;->DW(I)Labcd/Rs;

    move-result-object v3

    invoke-virtual {p1, v2}, Labcd/Nm;->DW(I)Labcd/Rs;

    move-result-object v4

    invoke-static {v3, v4}, Labcd/Um;->DW(Labcd/Rs;Labcd/Rs;)Labcd/Rs;

    move-result-object v5

    if-eq v5, v3, :cond_69

    if-nez v1, :cond_25

    invoke-virtual {p0}, Labcd/Nm;->rN()Labcd/Nm;

    move-result-object v1

    :cond_25
    if-eqz v5, :cond_2b

    :try_start_27
    invoke-virtual {v1, v2, v5}, Labcd/Nm;->j6(ILabcd/Rs;)V

    goto :goto_69

    :cond_2b
    new-instance p0, Labcd/an;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "incompatible: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4a
    .catch Labcd/an; {:try_start_27 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while merging stack["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw p0

    :cond_69
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_6c
    if-nez v1, :cond_6f

    return-object p0

    :cond_6f
    invoke-virtual {v1}, Labcd/hu;->we()V

    return-object v1

    :cond_73
    new-instance p0, Labcd/an;

    const-string p1, "mismatched stack depths"

    invoke-direct {p0, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    goto :goto_7c

    :goto_7b
    throw p0

    :goto_7c
    goto :goto_7b
.end method

.method public static j6(Labcd/Vm;Labcd/Vm;)Labcd/Vm;
    .registers 7

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0}, Labcd/Vm;->er()I

    move-result v0

    invoke-virtual {p1}, Labcd/Vm;->er()I

    move-result v1

    if-ne v1, v0, :cond_38

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_31

    invoke-virtual {p0, v2}, Labcd/Vm;->DW(I)Labcd/Rs;

    move-result-object v3

    invoke-virtual {p1, v2}, Labcd/Vm;->DW(I)Labcd/Rs;

    move-result-object v4

    invoke-static {v3, v4}, Labcd/Um;->DW(Labcd/Rs;Labcd/Rs;)Labcd/Rs;

    move-result-object v4

    if-eq v4, v3, :cond_2e

    if-nez v1, :cond_25

    invoke-virtual {p0}, Labcd/Vm;->lg()Labcd/Vm;

    move-result-object v1

    :cond_25
    if-nez v4, :cond_2b

    invoke-virtual {v1, v2}, Labcd/Vm;->FH(I)V

    goto :goto_2e

    :cond_2b
    invoke-virtual {v1, v2, v4}, Labcd/Vm;->j6(ILabcd/Rs;)V

    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_31
    if-nez v1, :cond_34

    return-object p0

    :cond_34
    invoke-virtual {v1}, Labcd/hu;->we()V

    return-object v1

    :cond_38
    new-instance p0, Labcd/an;

    const-string p1, "mismatched maxLocals values"

    invoke-direct {p0, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    goto :goto_41

    :goto_40
    throw p0

    :goto_41
    goto :goto_40
.end method

.method public static j6(Labcd/Rs;Labcd/Rs;)Z
    .registers 7

    invoke-interface {p0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p0

    invoke-interface {p1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/Qs;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    :cond_10
    invoke-virtual {p0}, Labcd/Qs;->j3()I

    move-result v0

    invoke-virtual {p1}, Labcd/Qs;->j3()I

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    if-ne v0, v3, :cond_22

    sget-object p0, Labcd/Qs;->QX:Labcd/Qs;

    const/16 v0, 0x9

    :cond_22
    if-ne v2, v3, :cond_28

    sget-object p1, Labcd/Qs;->QX:Labcd/Qs;

    const/16 v2, 0x9

    :cond_28
    const/4 v3, 0x0

    if-ne v0, v4, :cond_72

    if-eq v2, v4, :cond_2e

    goto :goto_72

    :cond_2e
    sget-object v0, Labcd/Qs;->EQ:Labcd/Qs;

    if-ne p0, v0, :cond_33

    return v3

    :cond_33
    if-ne p1, v0, :cond_36

    return v1

    :cond_36
    sget-object v0, Labcd/Qs;->QX:Labcd/Qs;

    if-ne p0, v0, :cond_3b

    return v1

    :cond_3b
    invoke-virtual {p0}, Labcd/Qs;->lg()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p1}, Labcd/Qs;->lg()Z

    move-result v0

    if-nez v0, :cond_48

    return v3

    :cond_48
    invoke-virtual {p0}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object p0

    invoke-virtual {p1}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object p1

    invoke-virtual {p0}, Labcd/Qs;->lg()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Labcd/Qs;->lg()Z

    move-result v0

    if-nez v0, :cond_48

    :cond_5c
    invoke-static {p0, p1}, Labcd/Um;->j6(Labcd/Rs;Labcd/Rs;)Z

    move-result p0

    return p0

    :cond_61
    invoke-virtual {p1}, Labcd/Qs;->lg()Z

    move-result p1

    if-eqz p1, :cond_71

    sget-object p1, Labcd/Qs;->XL:Labcd/Qs;

    if-eq p0, p1, :cond_71

    sget-object p1, Labcd/Qs;->Ws:Labcd/Qs;

    if-ne p0, p1, :cond_70

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    :cond_71
    :goto_71
    return v1

    :cond_72
    :goto_72
    invoke-virtual {p0}, Labcd/Qs;->gW()Z

    move-result p0

    if-eqz p0, :cond_7f

    invoke-virtual {p1}, Labcd/Qs;->gW()Z

    move-result p0

    if-eqz p0, :cond_7f

    goto :goto_80

    :cond_7f
    const/4 v1, 0x0

    :goto_80
    return v1
.end method
