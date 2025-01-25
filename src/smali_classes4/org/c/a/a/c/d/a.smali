.class public Lorg/c/a/a/c/d/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/e/a;)V
    .registers 15

    const-string v0, "maxLineNumber"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "containsByteCode"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v0, "showBridgeAndSynthetic"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v0, "configuration"

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_95

    const-string v0, "false"

    :goto_39
    if-nez v0, :cond_9c

    const/4 v0, 0x0

    move v1, v0

    :goto_3d
    invoke-virtual {p1}, Lorg/c/a/a/b/e/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v2, :cond_94

    if-nez v3, :cond_94

    if-nez v4, :cond_94

    if-eqz v1, :cond_94

    new-instance v2, Lorg/c/a/a/c/d/c/c;

    invoke-direct {v2}, Lorg/c/a/a/c/d/c/c;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_ae

    invoke-virtual {v2}, Lorg/c/a/a/c/d/c/c;->a()Lorg/c/a/a/d/c;

    move-result-object v7

    new-instance v8, Lorg/c/a/a/c/d/b/a;

    invoke-direct {v8}, Lorg/c/a/a/c/d/b/a;-><init>()V

    new-instance v9, Lorg/c/a/a/c/d/c/d;

    invoke-direct {v9}, Lorg/c/a/a/c/d/c/d;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x14

    if-le v1, v2, :cond_17c

    const/16 v1, 0x14

    move v3, v1

    :goto_75
    const/4 v1, 0x0

    const v4, 0x7fffffff

    move v5, v1

    move v6, v4

    :goto_7b
    if-lt v5, v3, :cond_b8

    :cond_7d
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_81
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_158

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8e
    :goto_8e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_164

    :cond_94
    return-void

    :cond_95
    const-string v1, "realignLineNumbers"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_39

    :cond_9c
    const-string v1, "false"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const/4 v0, 0x0

    move v1, v0

    goto :goto_3d

    :cond_ab
    const/4 v0, 0x1

    move v1, v0

    goto :goto_3d

    :cond_ae
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/b/e;

    invoke-interface {v1, v2}, Lorg/c/a/a/b/b/e;->a(Lorg/c/a/a/b/b/f;)V

    goto :goto_54

    :cond_b8
    invoke-virtual {v9}, Lorg/c/a/a/c/d/c/d;->a()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_bf
    :goto_bf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f1

    const/4 v1, 0x0

    move v4, v1

    :goto_c7
    const/16 v1, 0xa

    if-lt v4, v1, :cond_11d

    :cond_cb
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/d/a/a;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v4, 0x0

    move-object v2, v1

    :goto_d8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_13d

    invoke-virtual {v2}, Lorg/c/a/a/c/d/a/a;->e()I

    move-result v1

    if-eqz v1, :cond_7d

    if-le v6, v4, :cond_7d

    invoke-virtual {v2, v8}, Lorg/c/a/a/c/d/a/a;->a(Lorg/c/a/a/c/d/b/a;)Z

    move-result v1

    if-eqz v1, :cond_7d

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v6, v4

    goto :goto_7b

    :cond_f1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/d/a/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->a()Lorg/c/a/a/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_ff
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_113

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->b()Lorg/c/a/a/b/b/c;

    move-result-object v2

    if-eqz v2, :cond_bf

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->b()Lorg/c/a/a/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/c/a/a/b/b/c;->a(Lorg/c/a/a/b/b/f;)V

    goto :goto_bf

    :cond_113
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/b/d;

    invoke-virtual {v2, v9}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    goto :goto_ff

    :cond_11d
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v1, 0x0

    move v2, v1

    :goto_123
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12f

    if-eqz v2, :cond_cb

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_c7

    :cond_12f
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/d/a/a;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lorg/c/a/a/c/d/a/a;->a(Z)Z

    move-result v1

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_123

    :cond_13d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/d/a/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->f()V

    invoke-virtual {v2}, Lorg/c/a/a/c/d/a/a;->e()I

    move-result v11

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->e()I

    move-result v12

    if-ge v11, v12, :cond_151

    move-object v2, v1

    :cond_151
    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->e()I

    move-result v1

    add-int/2addr v1, v4

    move v4, v1

    goto :goto_d8

    :cond_158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/d/a/a;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/c/a/a/c/d/a/a;->a(Z)Z

    goto/16 :goto_81

    :cond_164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/d/a/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->a()Lorg/c/a/a/d/c;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->b()Lorg/c/a/a/b/b/c;

    move-result-object v1

    if-eqz v1, :cond_8e

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8e

    :cond_17c
    move v3, v1

    goto/16 :goto_75
.end method
