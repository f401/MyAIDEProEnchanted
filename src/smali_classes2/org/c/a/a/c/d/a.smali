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

    if-nez v0, :cond_3

    const-string v0, "false"

    :goto_0
    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Lorg/c/a/a/b/e/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    new-instance v2, Lorg/c/a/a/c/d/c/c;

    invoke-direct {v2}, Lorg/c/a/a/c/d/c/c;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

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

    if-le v1, v2, :cond_12

    const/16 v1, 0x14

    move v3, v1

    :goto_3
    const/4 v1, 0x0

    const v4, 0x7fffffff

    move v5, v4

    move v6, v1

    :goto_4
    if-lt v6, v3, :cond_7

    :cond_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_2
    return-void

    :cond_3
    const-string v1, "realignLineNumbers"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "false"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/b/e;

    invoke-interface {v1, v2}, Lorg/c/a/a/b/b/e;->a(Lorg/c/a/a/b/b/f;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v9}, Lorg/c/a/a/c/d/c/d;->a()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    move v4, v1

    :goto_8
    const/16 v1, 0xa

    if-lt v4, v1, :cond_c

    :cond_9
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/d/a/a;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v4, 0x0

    move-object v2, v1

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v2}, Lorg/c/a/a/c/d/a/a;->e()I

    move-result v1

    if-eqz v1, :cond_0

    if-le v5, v4, :cond_0

    invoke-virtual {v2, v8}, Lorg/c/a/a/c/d/a/a;->a(Lorg/c/a/a/c/d/b/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v6, 0x1

    move v5, v4

    move v6, v1

    goto :goto_4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/d/a/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->a()Lorg/c/a/a/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->b()Lorg/c/a/a/b/b/c;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->b()Lorg/c/a/a/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/c/a/a/b/b/c;->a(Lorg/c/a/a/b/b/f;)V

    goto :goto_7

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/b/d;

    invoke-virtual {v2, v9}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    goto :goto_a

    :cond_c
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v2, :cond_9

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_8

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/d/a/a;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lorg/c/a/a/c/d/a/a;->a(Z)Z

    move-result v1

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_b

    :cond_e
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/d/a/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->f()V

    invoke-virtual {v2}, Lorg/c/a/a/c/d/a/a;->e()I

    move-result v11

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->e()I

    move-result v12

    if-ge v11, v12, :cond_f

    move-object v2, v1

    :cond_f
    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->e()I

    move-result v1

    add-int/2addr v1, v4

    move v4, v1

    goto :goto_9

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/d/a/a;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/c/a/a/c/d/a/a;->a(Z)Z

    goto/16 :goto_5

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/d/a/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->a()Lorg/c/a/a/d/c;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->b()Lorg/c/a/a/b/b/c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_12
    move v3, v1

    goto/16 :goto_3
.end method
