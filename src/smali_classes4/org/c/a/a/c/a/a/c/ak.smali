.class public Lorg/c/a/a/c/a/a/c/ak;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Ljava/lang/Integer;

.field static final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/a/a/c/ak;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/c/a/a/c/ak;->b:Z

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/c/a/a/c/a/a/c/ak;->a:Ljava/lang/Integer;

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lorg/c/a/a/b/d/d/v;Ljava/util/ListIterator;)V
    .registers 11

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :goto_5
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_33

    :cond_b
    invoke-virtual {p0}, Lorg/c/a/a/b/d/d/v;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/e;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/e;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/z;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/z;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v4

    invoke-virtual {v4}, Lorg/c/a/a/b/d/b/n;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/e/i;

    invoke-virtual {p0}, Lorg/c/a/a/b/d/d/v;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_29
    :goto_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b8

    invoke-virtual {p0, v4}, Lorg/c/a/a/b/d/d/v;->a(Lorg/c/a/a/b/d/b/n;)V

    return-void

    :cond_33
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/c/a/a/a/b/c/f;

    if-ne v1, v2, :cond_b

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/c/f;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/c/f;->d()Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/d/b;->j_()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Lorg/c/a/a/b/d/d/b;->l_()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/d/h;

    if-ne v1, v2, :cond_b

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/b/g;

    if-ne v1, v2, :cond_b

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lorg/c/a/a/b/d/b/t;

    if-ne v2, v4, :cond_b

    check-cast v1, Lorg/c/a/a/b/d/b/t;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/t;->d()I

    move-result v1

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lorg/c/a/a/b/d/b/e;

    if-ne v2, v4, :cond_b

    check-cast v0, Lorg/c/a/a/b/d/b/e;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/e;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lorg/c/a/a/b/d/b/y;

    if-ne v2, v4, :cond_b

    check-cast v0, Lorg/c/a/a/b/d/b/y;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/y;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lorg/c/a/a/b/d/b/q;

    if-ne v2, v4, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Lorg/c/a/a/b/d/b/q;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/q;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_b8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/d/w;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v6, Lorg/c/a/a/b/d/d/aa;

    if-ne v2, v6, :cond_f8

    check-cast v1, Lorg/c/a/a/b/d/d/aa;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/d/aa;->d()Lorg/c/a/a/b/d/d/z;

    move-result-object v2

    sget-object v6, Lorg/c/a/a/b/d/d/v;->a:Lorg/c/a/a/b/d/d/x;

    if-eq v2, v6, :cond_29

    invoke-virtual {v1}, Lorg/c/a/a/b/d/d/aa;->d()Lorg/c/a/a/b/d/d/z;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/d/y;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/d/y;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/d/b/t;

    new-instance v6, Lorg/c/a/a/b/d/b/m;

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/t;->e()I

    move-result v7

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/t;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v6, v7, v0, v2}, Lorg/c/a/a/b/d/b/m;-><init>(ILorg/c/a/a/b/d/e/i;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lorg/c/a/a/b/d/d/y;->a(Lorg/c/a/a/b/d/b/n;)V

    goto/16 :goto_29

    :cond_f8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v6, Lorg/c/a/a/b/d/d/ab;

    if-ne v2, v6, :cond_29

    check-cast v1, Lorg/c/a/a/b/d/d/ab;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/d/ab;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10a
    :goto_10a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/d/z;

    sget-object v2, Lorg/c/a/a/b/d/d/v;->a:Lorg/c/a/a/b/d/d/x;

    if-eq v1, v2, :cond_10a

    check-cast v1, Lorg/c/a/a/b/d/d/y;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/d/y;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/d/b/t;

    new-instance v7, Lorg/c/a/a/b/d/b/m;

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/t;->e()I

    move-result v8

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/t;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v7, v8, v0, v2}, Lorg/c/a/a/b/d/b/m;-><init>(ILorg/c/a/a/b/d/e/i;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/c/a/a/b/d/d/y;->a(Lorg/c/a/a/b/d/b/n;)V

    goto :goto_10a
.end method

.method public static a(Lorg/c/a/a/c/a/a/a/b/a/b;Lorg/c/a/a/b/d/d/v;)V
    .registers 6

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/v;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/e;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/e;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/b/q;

    if-ne v1, v2, :cond_59

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/e;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/q;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/q;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[I"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/q;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$SwitchMap$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/q;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/a/b/a/b;->a(Ljava/lang/String;)Lorg/c/a/a/c/a/a/a/b/a/k;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/c;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/a/c;->e()Lorg/c/a/a/b/d/a/i;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/a/b;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/e;

    invoke-interface {v0}, Lorg/c/a/a/c/a/a/a/b/a/e;->g()Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/c/a/a/c/a/a/c/ak;->a(Lorg/c/a/a/b/d/d/v;Ljava/util/ListIterator;)V

    :cond_58
    :goto_58
    return-void

    :cond_59
    const-class v2, Lorg/c/a/a/b/d/b/y;

    if-ne v1, v2, :cond_58

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/e;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/y;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/y;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/y;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "()[I"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "$SWITCH_TABLE$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/b/a/b;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/a/e;

    invoke-interface {v0}, Lorg/c/a/a/c/a/a/a/b/a/e;->r_()Lorg/c/a/a/b/a/d;

    move-result-object v3

    invoke-virtual {v3}, Lorg/c/a/a/b/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v0}, Lorg/c/a/a/c/a/a/a/b/a/e;->g()Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/d/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/c/a/a/c/a/a/c/ak;->a(Lorg/c/a/a/b/d/d/v;Ljava/util/ListIterator;)V

    goto :goto_58
.end method

.method public static a(Lorg/c/a/a/c/a/a/c/o;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/d/v;)V
    .registers 13

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x2

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/d/u;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/v;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/v;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v1

    invoke-virtual {p2}, Lorg/c/a/a/b/d/d/v;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v2

    if-ne v1, v2, :cond_159

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/v;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/b/y;

    if-ne v1, v2, :cond_159

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/v;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lorg/c/a/a/b/d/b/y;

    if-ne v2, v4, :cond_159

    check-cast v1, Lorg/c/a/a/b/d/b/y;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/y;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v2, v4, :cond_159

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v4

    add-int/lit8 v1, v3, -0x4

    invoke-virtual {p1, v1}, Lorg/c/a/a/b/d/d/u;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lorg/c/a/a/b/d/d/h;

    if-ne v2, v5, :cond_159

    check-cast v1, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lorg/c/a/a/b/d/b/g;

    if-ne v2, v5, :cond_159

    check-cast v1, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v2, v5, :cond_159

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_159

    add-int/lit8 v1, v3, -0x3

    invoke-virtual {p1, v1}, Lorg/c/a/a/b/d/d/u;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lorg/c/a/a/b/d/d/h;

    if-ne v2, v5, :cond_159

    check-cast v1, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lorg/c/a/a/b/d/b/g;

    if-ne v2, v5, :cond_159

    check-cast v1, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lorg/c/a/a/b/d/b/t;

    if-ne v5, v6, :cond_159

    sget-object v5, Lorg/c/a/a/c/a/a/c/ak;->a:Ljava/lang/Integer;

    check-cast v2, Lorg/c/a/a/b/d/b/t;

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/t;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_159

    invoke-virtual {p2}, Lorg/c/a/a/b/d/d/v;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v5, v6, :cond_159

    check-cast v2, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v2

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_159

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/v;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/y;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/y;->j()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hashCode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_159

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/y;->l()Ljava/lang/String;

    move-result-object v1

    const-string v5, "()I"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_159

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/v;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15a

    invoke-virtual {p2}, Lorg/c/a/a/b/d/d/v;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_11b
    :goto_11b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1ff

    add-int/lit8 v0, v3, -0x4

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/d/d/u;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v5, Lorg/c/a/a/b/d/d/h;

    if-ne v1, v5, :cond_159

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v5, Lorg/c/a/a/b/d/b/g;

    if-ne v1, v5, :cond_159

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/b/d/d/v;->a(Lorg/c/a/a/b/d/b/n;)V

    add-int/lit8 v0, v3, -0x4

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/b/d/d/u;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, v4}, Lorg/c/a/a/c/a/a/c/o;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/a/a/c/o;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    :cond_159
    return-void

    :cond_15a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/w;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/w;->b()Lorg/c/a/a/b/d/d/b;

    move-result-object v1

    sget-boolean v0, Lorg/c/a/a/c/a/a/c/ak;->b:Z

    if-nez v0, :cond_181

    if-eqz v1, :cond_17b

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v7, Lorg/c/a/a/b/d/d/u;

    if-ne v0, v7, :cond_17b

    move-object v0, v1

    check-cast v0, Lorg/c/a/a/b/d/d/u;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/u;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_181

    :cond_17b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_181
    check-cast v1, Lorg/c/a/a/b/d/d/u;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/d/u;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_187
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v8, Lorg/c/a/a/b/d/d/l;

    if-ne v1, v8, :cond_10d

    check-cast v0, Lorg/c/a/a/b/d/d/l;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/l;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lorg/c/a/a/b/d/b/y;

    if-ne v8, v9, :cond_10d

    check-cast v1, Lorg/c/a/a/b/d/b/y;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/y;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lorg/c/a/a/b/d/b/ah;

    if-ne v8, v9, :cond_10d

    check-cast v1, Lorg/c/a/a/b/d/b/ah;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ah;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/l;->e()Lorg/c/a/a/b/d/d/b;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/b/d/d/b;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lorg/c/a/a/b/d/d/h;

    if-ne v8, v9, :cond_10d

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lorg/c/a/a/b/d/b/g;

    if-ne v8, v9, :cond_10d

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lorg/c/a/a/b/d/b/t;

    if-ne v8, v9, :cond_10d

    check-cast v0, Lorg/c/a/a/b/d/b/t;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/t;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_187

    :cond_1ff
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v7, Lorg/c/a/a/b/d/d/aa;

    if-ne v1, v7, :cond_23f

    check-cast v0, Lorg/c/a/a/b/d/d/aa;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/aa;->d()Lorg/c/a/a/b/d/d/z;

    move-result-object v1

    sget-object v7, Lorg/c/a/a/b/d/d/v;->a:Lorg/c/a/a/b/d/d/x;

    if-eq v1, v7, :cond_11b

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/aa;->d()Lorg/c/a/a/b/d/d/z;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/y;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/y;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/t;

    new-instance v7, Lorg/c/a/a/b/d/b/ah;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/t;->e()I

    move-result v8

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/t;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v7, v8, v1}, Lorg/c/a/a/b/d/b/ah;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/c/a/a/b/d/d/y;->a(Lorg/c/a/a/b/d/b/n;)V

    goto/16 :goto_11b

    :cond_23f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v7, Lorg/c/a/a/b/d/d/ab;

    if-ne v1, v7, :cond_11b

    check-cast v0, Lorg/c/a/a/b/d/d/ab;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/ab;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_251
    :goto_251
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/z;

    sget-object v1, Lorg/c/a/a/b/d/d/v;->a:Lorg/c/a/a/b/d/d/x;

    if-eq v0, v1, :cond_251

    check-cast v0, Lorg/c/a/a/b/d/d/y;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/y;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/t;

    new-instance v8, Lorg/c/a/a/b/d/b/ah;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/t;->e()I

    move-result v9

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/t;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v8, v9, v1}, Lorg/c/a/a/b/d/b/ah;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Lorg/c/a/a/b/d/d/y;->a(Lorg/c/a/a/b/d/b/n;)V

    goto :goto_251
.end method
