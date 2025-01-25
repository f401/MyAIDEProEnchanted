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

    if-eqz v1, :cond_1f

    invoke-static {v0}, Lcom/a/b/e/d/a;->b(Ljava/lang/String;)Lcom/a/b/e/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    :goto_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/e/c/f;->b:Lcom/a/b/e/d/a;

    return-void

    :cond_1f
    invoke-static {v0}, Lcom/a/b/e/d/a;->a(Ljava/lang/String;)Lcom/a/b/e/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    goto :goto_1b
.end method


# virtual methods
.method public final a(Z)Lcom/a/b/e/d/a;
    .registers 4

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/a/b/e/c/f;->b:Lcom/a/b/e/d/a;

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/a/b/e/c/f;->n()Lcom/a/b/e/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    invoke-virtual {v1, v0}, Lcom/a/b/e/d/a;->a(Lcom/a/b/e/d/c;)Lcom/a/b/e/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/e/c/f;->b:Lcom/a/b/e/d/a;

    :cond_19
    iget-object v0, p0, Lcom/a/b/e/c/f;->b:Lcom/a/b/e/d/a;

    goto :goto_4
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

    if-eqz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    check-cast p1, Lcom/a/b/e/c/f;

    iget-object v0, p0, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    iget-object v1, p1, Lcom/a/b/e/c/f;->a:Lcom/a/b/e/d/a;

    invoke-virtual {v0, v1}, Lcom/a/b/e/d/a;->a(Lcom/a/b/e/d/a;)I

    move-result v0

    goto :goto_6
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

    if-eqz v2, :cond_34

    invoke-virtual {p0}, Lcom/a/b/e/c/f;->o()Lcom/a/b/e/c/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/aa;->a()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_17e

    :cond_20
    :goto_20
    const/4 v0, 0x0

    :cond_21
    return v0

    :sswitch_22
    const-string v2, "invoke"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_20

    :sswitch_2b
    const-string v2, "invokeExact"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_20

    :cond_34
    sget-object v2, Lcom/a/b/e/c/ae;->t:Lcom/a/b/e/c/ae;

    invoke-virtual {v1, v2}, Lcom/a/b/e/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/a/b/e/c/f;->o()Lcom/a/b/e/c/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/aa;->a()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_188

    goto :goto_20

    :sswitch_50
    const-string v2, "getAndBitwiseOrRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_20

    :sswitch_59
    const-string v2, "getAndBitwiseAndRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_20

    :sswitch_62
    const-string v2, "compareAndSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_20

    :sswitch_6b
    const-string v2, "compareAndExchangeRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_20

    :sswitch_74
    const-string v2, "weakCompareAndSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_20

    :sswitch_7d
    const-string v2, "getAndAddRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_20

    :sswitch_86
    const-string v2, "getAndBitwiseAnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_20

    :sswitch_8f
    const-string v2, "getAndBitwiseXor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_20

    :sswitch_98
    const-string v2, "getAndBitwiseXorRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_20

    :sswitch_a1
    const-string v2, "weakCompareAndSetPlain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_ab
    const-string v2, "weakCompareAndSetAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_b5
    const-string v2, "setRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_bf
    const-string v2, "getAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_c9
    const-string v2, "getAndSetRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_d3
    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_dd
    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_e7
    const-string v2, "getAndBitwiseOrAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_f1
    const-string v2, "setVolatile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_fb
    const-string v2, "getVolatile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_105
    const-string v2, "getAndAdd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_10f
    const-string v2, "getAndSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_119
    const-string v2, "getAndBitwiseAndAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_123
    const-string v2, "setOpaque"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_12d
    const-string v2, "getOpaque"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_137
    const-string v2, "compareAndExchangeAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_141
    const-string v2, "getAndAddAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_14b
    const-string v2, "getAndBitwiseXorAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_155
    const-string v2, "getAndBitwiseOr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_15f
    const-string v2, "compareAndExchange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_169
    const-string v2, "getAndSetAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    :sswitch_173
    const-string v2, "weakCompareAndSetRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_20

    nop

    :sswitch_data_17e
    .sparse-switch
        -0x468dbb88 -> :sswitch_22
        0x38222167 -> :sswitch_2b
    .end sparse-switch

    :sswitch_data_188
    .sparse-switch
        -0x74054ecc -> :sswitch_50
        -0x64896c60 -> :sswitch_59
        -0x639aefb0 -> :sswitch_62
        -0x4d038cae -> :sswitch_6b
        -0x42a27c48 -> :sswitch_74
        -0x41bf8e59 -> :sswitch_7d
        -0x3d910599 -> :sswitch_86
        -0x3d90af15 -> :sswitch_8f
        -0x2f5b5f64 -> :sswitch_98
        -0x21ce070e -> :sswitch_a1
        -0xe5aaa02 -> :sswitch_ab
        -0xdc04ebb -> :sswitch_b5
        -0x7976360 -> :sswitch_bf
        -0x23e5d3a -> :sswitch_c9
        0x18f56 -> :sswitch_d3
        0x1bc62 -> :sswitch_dd
        0x594ea03 -> :sswitch_e7
        0x6099c1e -> :sswitch_f1
        0xb513b12 -> :sswitch_fb
        0x10d9c640 -> :sswitch_105
        0x10da0a01 -> :sswitch_10f
        0x1510cc6f -> :sswitch_119
        0x1c0e5b23 -> :sswitch_123
        0x28d92717 -> :sswitch_12d
        0x2c96ac21 -> :sswitch_137
        0x37daaa76 -> :sswitch_141
        0x4a3ed96b -> :sswitch_14b
        0x50983b53 -> :sswitch_155
        0x58737ef5 -> :sswitch_15f
        0x775bdb95 -> :sswitch_169
        0x780b1d2f -> :sswitch_173
    .end sparse-switch
.end method
