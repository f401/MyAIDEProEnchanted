.class public final Lcom/a/b/e/b/s;
.super Lcom/a/b/e/b/j;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V
    .registers 6

    invoke-static {p4}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/b/e/b/j;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {p1}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/a/b/e/b/aa;->d()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t mix branchingness with result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "opcode with invalid branchingness: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/a/b/e/b/aa;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)Lcom/a/b/e/b/j;
    .registers 6

    new-instance v0, Lcom/a/b/e/b/s;

    invoke-virtual {p0}, Lcom/a/b/e/b/s;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/e/b/s;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    return-object v0
.end method

.method public a(Lcom/a/b/e/d/c;)Lcom/a/b/e/b/j;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/b/e/b/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/a/b/e/b/l;->a(Lcom/a/b/e/b/s;)V

    return-void
.end method

.method public b()Lcom/a/b/e/d/e;
    .registers 2

    sget-object v0, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    return-object v0
.end method

.method public l()Lcom/a/b/e/b/j;
    .registers 7

    invoke-virtual {p0}, Lcom/a/b/e/b/s;->j()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v1, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->f()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v5

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    invoke-interface {v5}, Lcom/a/b/e/d/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v5, Lcom/a/b/e/c/a;

    invoke-virtual {v1}, Lcom/a/b/e/b/x;->f()Lcom/a/b/e/b/x;

    move-result-object v4

    new-instance v0, Lcom/a/b/e/b/r;

    invoke-virtual {p0}, Lcom/a/b/e/b/s;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/aa;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/a/b/e/b/s;->h()Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-static {v1, v2, v4, v5}, Lcom/a/b/e/b/ac;->a(ILcom/a/b/e/d/d;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/e/b/s;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/b/e/b/s;->h()Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/r;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/a/b/e/c/a;

    invoke-virtual {v1}, Lcom/a/b/e/b/x;->g()Lcom/a/b/e/b/x;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0}, Lcom/a/b/e/b/s;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/aa;->a()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    instance-of v2, v0, Lcom/a/b/e/c/p;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v5

    const/16 v0, 0xe

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/a/b/e/b/s;->h()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-static {v1, v0, v4, v5}, Lcom/a/b/e/b/ac;->a(ILcom/a/b/e/d/d;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)Lcom/a/b/e/b/aa;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v0, Lcom/a/b/e/b/r;

    invoke-virtual {p0}, Lcom/a/b/e/b/s;->g()Lcom/a/b/e/b/ad;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/b/e/b/s;->h()Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/r;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_3
    move-object v5, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
