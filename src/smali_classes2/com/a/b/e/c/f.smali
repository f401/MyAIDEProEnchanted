.class public abstract Lcom/a/b/e/c/f;
.super Lcom/a/b/e/c/x;


# instance fields
.field private final a:Lcom/a/b/e/d/a;

.field private b:Lcom/a/b/e/d/a;


# direct methods
.method constructor <init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/a/b/e/c/x;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    invoke-virtual {p0}, Lcom/a/b/e/c/f;->o()Lcom/a/b/e/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/aa;->b()Lcom/a/b/e/c/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/b/e/c/f;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/a/b/e/d/a;->b(Ljava/lang/String;)Lcom/a/b/e/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/e/c/f;->b:Lcom/a/b/e/d/a;

    return-void

    :cond_0
    invoke-static {v0}, Lcom/a/b/e/d/a;->a(Ljava/lang/String;)Lcom/a/b/e/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)Lcom/a/b/e/d/a;
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/e/c/f;->b:Lcom/a/b/e/d/a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/a/b/e/c/f;->n()Lcom/a/b/e/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    invoke-virtual {v1, v0}, Lcom/a/b/e/d/a;->a(Lcom/a/b/e/d/c;)Lcom/a/b/e/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/e/c/f;->b:Lcom/a/b/e/d/a;

    :cond_1
    iget-object v0, p0, Lcom/a/b/e/c/f;->b:Lcom/a/b/e/d/a;

    goto :goto_0
.end method

.method public final a()Lcom/a/b/e/d/c;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->b()Lcom/a/b/e/d/c;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/a/b/e/c/a;)I
    .registers 4

    invoke-super {p0, p1}, Lcom/a/b/e/c/x;->b(Lcom/a/b/e/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/a/b/e/c/f;

    iget-object v0, p0, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    iget-object v1, p1, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    invoke-virtual {v0, v1}, Lcom/a/b/e/d/a;->a(Lcom/a/b/e/d/a;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Z)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/e/c/f;->a(Z)Lcom/a/b/e/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->c()Lcom/a/b/e/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/b;->e()I

    move-result v0

    return v0
.end method

.method public final i()Lcom/a/b/e/d/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    return-object v0
.end method

.method public final j()Z
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/f;->o()Lcom/a/b/e/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/aa;->e()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/f;->o()Lcom/a/b/e/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/aa;->f()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/a/b/e/c/f;->n()Lcom/a/b/e/c/ae;

    move-result-object v1

    sget-object v2, Lcom/a/b/e/c/ae;->s:Lcom/a/b/e/c/ae;

    invoke-virtual {v1, v2}, Lcom/a/b/e/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/a/b/e/c/f;->o()Lcom/a/b/e/c/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/aa;->a()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :cond_1
    return v0

    :sswitch_0
    const-string v2, "invoke"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v2, "invokeExact"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/a/b/e/c/ae;->t:Lcom/a/b/e/c/ae;

    invoke-virtual {v1, v2}, Lcom/a/b/e/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/a/b/e/c/f;->o()Lcom/a/b/e/c/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/aa;->a()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_0

    :sswitch_2
    const-string v2, "getAndBitwiseOrRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_3
    const-string v2, "getAndBitwiseAndRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_4
    const-string v2, "compareAndSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_5
    const-string v2, "compareAndExchangeRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_6
    const-string v2, "weakCompareAndSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_7
    const-string v2, "getAndAddRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_8
    const-string v2, "getAndBitwiseAnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_9
    const-string v2, "getAndBitwiseXor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_a
    const-string v2, "getAndBitwiseXorRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_b
    const-string v2, "weakCompareAndSetPlain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "weakCompareAndSetAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "setRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "getAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "getAndSetRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "getAndBitwiseOrAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "setVolatile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "getVolatile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "getAndAdd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "getAndSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "getAndBitwiseAndAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "setOpaque"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "getOpaque"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "compareAndExchangeAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "getAndAddAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_1c
    const-string v2, "getAndBitwiseXorAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_1d
    const-string v2, "getAndBitwiseOr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_1e
    const-string v2, "compareAndExchange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_1f
    const-string v2, "getAndSetAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :sswitch_20
    const-string v2, "weakCompareAndSetRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x468dbb88 -> :sswitch_0
        0x38222167 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x74054ecc -> :sswitch_2
        -0x64896c60 -> :sswitch_3
        -0x639aefb0 -> :sswitch_4
        -0x4d038cae -> :sswitch_5
        -0x42a27c48 -> :sswitch_6
        -0x41bf8e59 -> :sswitch_7
        -0x3d910599 -> :sswitch_8
        -0x3d90af15 -> :sswitch_9
        -0x2f5b5f64 -> :sswitch_a
        -0x21ce070e -> :sswitch_b
        -0xe5aaa02 -> :sswitch_c
        -0xdc04ebb -> :sswitch_d
        -0x7976360 -> :sswitch_e
        -0x23e5d3a -> :sswitch_f
        0x18f56 -> :sswitch_10
        0x1bc62 -> :sswitch_11
        0x594ea03 -> :sswitch_12
        0x6099c1e -> :sswitch_13
        0xb513b12 -> :sswitch_14
        0x10d9c640 -> :sswitch_15
        0x10da0a01 -> :sswitch_16
        0x1510cc6f -> :sswitch_17
        0x1c0e5b23 -> :sswitch_18
        0x28d92717 -> :sswitch_19
        0x2c96ac21 -> :sswitch_1a
        0x37daaa76 -> :sswitch_1b
        0x4a3ed96b -> :sswitch_1c
        0x50983b53 -> :sswitch_1d
        0x58737ef5 -> :sswitch_1e
        0x775bdb95 -> :sswitch_1f
        0x780b1d2f -> :sswitch_20
    .end sparse-switch
.end method
