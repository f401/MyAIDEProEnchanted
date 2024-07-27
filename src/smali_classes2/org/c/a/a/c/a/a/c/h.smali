.class public Lorg/c/a/a/c/a/a/c/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/c/a/a/c/a/a/a/a/f;)V
    .registers 7

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/f;->b()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v1

    const/high16 v3, 0x4000000

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v3

    if-ne v0, v3, :cond_2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v1, v0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
