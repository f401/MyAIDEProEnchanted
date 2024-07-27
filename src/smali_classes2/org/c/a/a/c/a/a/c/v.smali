.class public Lorg/c/a/a/c/a/a/c/v;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Lorg/c/a/a/b/d/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/c/a/a/b/d/a/c;

    sget-object v1, Lorg/c/a/a/b/d/e/k;->i:Lorg/c/a/a/b/d/e/k;

    invoke-direct {v0, v1}, Lorg/c/a/a/b/d/a/c;-><init>(Lorg/c/a/a/b/d/e/l;)V

    sput-object v0, Lorg/c/a/a/c/a/a/c/v;->a:Lorg/c/a/a/b/d/a/c;

    return-void
.end method

.method protected static a(Ljava/util/ListIterator;Lorg/c/a/a/b/d/b/aa;)Lorg/c/a/a/b/d/a/c;
    .registers 9

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/aa;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v3

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    new-instance v4, Lorg/c/a/a/b/d/a/c;

    invoke-interface {v3}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3, v1}, Lorg/c/a/a/b/d/e/l;->a(I)Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/c/a/a/b/d/a/c;-><init>(Lorg/c/a/a/b/d/e/l;)V

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/e;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/e;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/t;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/t;->d()I

    move-result v1

    new-instance v2, Lorg/c/a/a/b/d/a/p;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/c/a/a/b/d/a/p;-><init>(Lorg/c/a/a/b/d/b/n;)V

    invoke-virtual {v4, v2}, Lorg/c/a/a/b/d/a/c;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v4}, Lorg/c/a/a/b/d/a/c;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    if-lez v2, :cond_1

    invoke-interface {v3}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Lorg/c/a/a/b/d/e/l;->a(I)Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v1}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/c/a/a/b/d/a/p;

    new-instance v3, Lorg/c/a/a/b/d/b/t;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5}, Lorg/c/a/a/b/d/b/t;-><init>(Lorg/c/a/a/b/d/e/l;I)V

    invoke-direct {v0, v3}, Lorg/c/a/a/b/d/a/p;-><init>(Lorg/c/a/a/b/d/b/n;)V

    :goto_3
    if-gtz v2, :cond_7

    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v4

    :cond_2
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v5, Lorg/c/a/a/b/d/d/h;

    if-ne v1, v5, :cond_4

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v5, Lorg/c/a/a/b/d/b/g;

    if-ne v1, v5, :cond_4

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v5, Lorg/c/a/a/b/d/b/e;

    if-ne v1, v5, :cond_4

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/e;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/e;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lorg/c/a/a/b/d/b/t;

    if-ne v5, v6, :cond_4

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/e;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v5

    if-ne v5, p1, :cond_3

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/e;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/t;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/t;->d()I

    move-result v1

    new-instance v2, Lorg/c/a/a/b/d/a/p;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/c/a/a/b/d/a/p;-><init>(Lorg/c/a/a/b/d/b/n;)V

    invoke-virtual {v4, v2}, Lorg/c/a/a/b/d/a/c;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    move v2, v1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/e;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v5, Lorg/c/a/a/b/d/b/aa;

    if-ne v0, v5, :cond_4

    invoke-virtual {v4}, Lorg/c/a/a/b/d/a/c;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/a/aj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lorg/c/a/a/b/d/a/p;

    if-ne v5, v6, :cond_4

    check-cast v0, Lorg/c/a/a/b/d/a/p;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/a/p;->a()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lorg/c/a/a/b/d/b/aa;

    if-ne v5, v6, :cond_4

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/e;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    if-ne v1, v0, :cond_4

    invoke-virtual {v4}, Lorg/c/a/a/b/d/a/c;->e()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    check-cast v0, Lorg/c/a/a/b/d/b/aa;

    invoke-static {p0, v0}, Lorg/c/a/a/c/a/a/c/v;->a(Ljava/util/ListIterator;Lorg/c/a/a/b/d/b/aa;)Lorg/c/a/a/b/d/a/c;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/c/a/a/b/d/a/c;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/a/aj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v6, Lorg/c/a/a/b/d/a/p;

    if-ne v1, v6, :cond_0

    check-cast v0, Lorg/c/a/a/b/d/a/p;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/a/p;->a()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v6, Lorg/c/a/a/b/d/b/aa;

    if-ne v1, v6, :cond_0

    check-cast v0, Lorg/c/a/a/b/d/b/aa;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/aa;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v6, Lorg/c/a/a/b/d/b/t;

    if-ne v1, v6, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/aa;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/t;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/t;->d()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/aa;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    invoke-interface {v3}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v1

    invoke-interface {v0}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ne v1, v6, :cond_0

    invoke-interface {v3}, Lorg/c/a/a/b/d/e/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0}, Lorg/c/a/a/b/d/e/l;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ne v1, v6, :cond_0

    invoke-interface {v3}, Lorg/c/a/a/b/d/e/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/c/a/a/b/d/e/l;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/c/a/a/c/a/a/c/v;->a:Lorg/c/a/a/b/d/a/c;

    invoke-interface {v5, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    new-instance v0, Lorg/c/a/a/b/d/a/p;

    new-instance v3, Lorg/c/a/a/b/d/b/ad;

    invoke-direct {v3, v1}, Lorg/c/a/a/b/d/b/ad;-><init>(Lorg/c/a/a/b/d/e/l;)V

    invoke-direct {v0, v3}, Lorg/c/a/a/b/d/a/p;-><init>(Lorg/c/a/a/b/d/b/n;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v4, v0}, Lorg/c/a/a/b/d/a/c;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_3
.end method

.method public static a(Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/b/aa;)Lorg/c/a/a/b/d/b/n;
    .registers 6

    invoke-virtual {p0}, Lorg/c/a/a/b/d/d/u;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/c/a/a/b/d/d/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/d/h;

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/b/g;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/b/e;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/e;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/e;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/e;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/t;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/c/a/a/b/d/b/ac;

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/aa;->e()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/aa;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v2

    invoke-virtual {p0}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/c/a/a/b/d/d/u;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/c/a/a/c/a/a/c/v;->a(Ljava/util/ListIterator;Lorg/c/a/a/b/d/b/aa;)Lorg/c/a/a/b/d/a/c;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/b/ac;-><init>(ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/c;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method
