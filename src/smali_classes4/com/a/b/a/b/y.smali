.class public final Lcom/a/b/a/b/y;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/a/b/a/b/p;Lcom/a/b/a/b/p;)Lcom/a/b/a/b/p;
    .registers 8

    if-ne p0, p1, :cond_3

    :cond_2
    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/a/b/a/b/p;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/a/b/a/b/p;->b()I

    move-result v0

    if-eq v0, v2, :cond_15

    new-instance v0, Lcom/a/b/a/b/al;

    const-string v1, "mismatched stack depths"

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_17
    if-lt v1, v2, :cond_20

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/a/b/a/b/p;->c_()V

    move-object p0, v0

    goto :goto_2

    :cond_20
    invoke-virtual {p0, v1}, Lcom/a/b/a/b/p;->a(I)Lcom/a/b/e/d/d;

    move-result-object v3

    invoke-virtual {p1, v1}, Lcom/a/b/a/b/p;->a(I)Lcom/a/b/e/d/d;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/b/a/b/y;->a(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Lcom/a/b/e/d/d;

    move-result-object v5

    if-eq v5, v3, :cond_76

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/a/b/a/b/p;->a()Lcom/a/b/a/b/p;

    move-result-object v0

    :cond_34
    if-nez v5, :cond_73

    :try_start_36
    new-instance v0, Lcom/a/b/a/b/al;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "incompatible: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_55
    .catch Lcom/a/b/a/b/al; {:try_start_36 .. :try_end_55} :catch_55

    :catch_55
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while merging stack["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    throw v0

    :cond_73
    :try_start_73
    invoke-virtual {v0, v1, v5}, Lcom/a/b/a/b/p;->a(ILcom/a/b/e/d/d;)V
    :try_end_76
    .catch Lcom/a/b/a/b/al; {:try_start_73 .. :try_end_76} :catch_55

    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public static a(Lcom/a/b/a/b/z;Lcom/a/b/a/b/z;)Lcom/a/b/a/b/z;
    .registers 7

    if-ne p0, p1, :cond_3

    :cond_2
    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/a/b/a/b/z;->f()I

    move-result v2

    invoke-virtual {p1}, Lcom/a/b/a/b/z;->f()I

    move-result v0

    if-eq v0, v2, :cond_15

    new-instance v0, Lcom/a/b/a/b/al;

    const-string v1, "mismatched maxLocals values"

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_17
    if-lt v1, v2, :cond_20

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/a/b/a/b/z;->c_()V

    move-object p0, v0

    goto :goto_2

    :cond_20
    invoke-virtual {p0, v1}, Lcom/a/b/a/b/z;->c(I)Lcom/a/b/e/d/d;

    move-result-object v3

    invoke-virtual {p1, v1}, Lcom/a/b/a/b/z;->c(I)Lcom/a/b/e/d/d;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/b/a/b/y;->a(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Lcom/a/b/e/d/d;

    move-result-object v4

    if-eq v4, v3, :cond_39

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/a/b/a/b/z;->e()Lcom/a/b/a/b/z;

    move-result-object v0

    :cond_34
    if-nez v4, :cond_3c

    invoke-virtual {v0, v1}, Lcom/a/b/a/b/z;->b(I)V

    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_3c
    invoke-virtual {v0, v1, v4}, Lcom/a/b/a/b/z;->a(ILcom/a/b/e/d/d;)V

    goto :goto_39
.end method

.method public static a(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Lcom/a/b/e/d/d;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return-object p0

    :cond_a
    if-nez p1, :cond_e

    move-object p0, v0

    goto :goto_9

    :cond_e
    invoke-interface {p0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-interface {p1}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object p0

    if-eq v1, p0, :cond_64

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->o()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {p0}, Lcom/a/b/e/d/c;->o()Z

    move-result v2

    if-eqz v2, :cond_53

    sget-object v0, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    if-eq v1, v0, :cond_9

    sget-object v0, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    if-eq p0, v0, :cond_64

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->p()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/a/b/e/d/c;->p()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->u()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/e/d/c;->u()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/a/b/y;->a(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Lcom/a/b/e/d/d;

    move-result-object v0

    if-nez v0, :cond_49

    sget-object p0, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    goto :goto_9

    :cond_49
    check-cast v0, Lcom/a/b/e/d/c;

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->t()Lcom/a/b/e/d/c;

    move-result-object p0

    goto :goto_9

    :cond_50
    sget-object p0, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    goto :goto_9

    :cond_53
    invoke-virtual {v1}, Lcom/a/b/e/d/c;->m()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p0}, Lcom/a/b/e/d/c;->m()Z

    move-result v1

    if-eqz v1, :cond_62

    sget-object p0, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    goto :goto_9

    :cond_62
    move-object p0, v0

    goto :goto_9

    :cond_64
    move-object p0, v1

    goto :goto_9
.end method

.method public static b(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Z
    .registers 10

    const/16 v7, 0xa

    const/16 v5, 0x9

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-interface {p1}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/a/b/e/d/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    invoke-virtual {v3}, Lcom/a/b/e/d/c;->c()I

    move-result v6

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->c()I

    move-result v4

    if-ne v6, v7, :cond_22

    sget-object v3, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    move v6, v5

    :cond_22
    if-ne v4, v7, :cond_27

    sget-object v2, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    move v4, v5

    :cond_27
    if-ne v6, v5, :cond_2b

    if-eq v4, v5, :cond_39

    :cond_2b
    invoke-virtual {v3}, Lcom/a/b/e/d/c;->m()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->m()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_37
    move v0, v1

    goto :goto_14

    :cond_39
    sget-object v4, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    if-ne v3, v4, :cond_3f

    move v0, v1

    goto :goto_14

    :cond_3f
    sget-object v4, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    if-eq v2, v4, :cond_14

    sget-object v4, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    if-eq v3, v4, :cond_14

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->p()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->p()Z

    move-result v0

    if-nez v0, :cond_55

    move v0, v1

    goto :goto_14

    :cond_55
    move-object v0, v2

    move-object v1, v3

    :cond_57
    invoke-virtual {v1}, Lcom/a/b/e/d/c;->u()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->u()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->p()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->p()Z

    move-result v2

    if-nez v2, :cond_57

    :cond_6b
    invoke-static {v1, v0}, Lcom/a/b/a/b/y;->b(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Z

    move-result v0

    goto :goto_14

    :cond_70
    invoke-virtual {v2}, Lcom/a/b/e/d/c;->p()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/a/b/e/d/c;->s:Lcom/a/b/e/d/c;

    if-eq v3, v2, :cond_14

    sget-object v2, Lcom/a/b/e/d/c;->n:Lcom/a/b/e/d/c;

    if-eq v3, v2, :cond_14

    move v0, v1

    goto :goto_14
.end method
