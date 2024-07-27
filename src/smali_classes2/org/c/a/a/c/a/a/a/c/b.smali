.class public Lorg/c/a/a/c/a/a/a/c/b;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Lorg/c/a/a/c/a/a/a/c/c;

.field static final h:Z


# instance fields
.field protected b:[Lorg/c/a/a/c/a/a/a/c/a;

.field protected c:Ljava/util/HashMap;

.field protected d:Lorg/c/a/a/d/c;

.field protected e:Lorg/c/a/a/c/a/a/a/c/b;

.field protected f:Lorg/c/a/a/b/d/d/u;

.field protected g:Lorg/c/a/a/c/a/a/a/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/a/a/a/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/c/a/a/a/c/b;->h:Z

    new-instance v0, Lorg/c/a/a/c/a/a/a/c/c;

    invoke-direct {v0}, Lorg/c/a/a/c/a/a/a/c/c;-><init>()V

    sput-object v0, Lorg/c/a/a/c/a/a/a/c/b;->a:Lorg/c/a/a/c/a/a/a/c/c;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/c/a/a/c/a/a/a/c/b;Lorg/c/a/a/b/d/d/u;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/c/a/a/c/a/a/a/c/a;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    iput-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->c:Ljava/util/HashMap;

    iput-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->d:Lorg/c/a/a/d/c;

    iput-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->g:Lorg/c/a/a/c/a/a/a/c/a;

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/c/b;->e:Lorg/c/a/a/c/a/a/a/c/b;

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/c/b;->f:Lorg/c/a/a/b/d/d/u;

    return-void
.end method


# virtual methods
.method protected a(Lorg/c/a/a/d/c;Z)Lorg/c/a/a/b/d/a/y;
    .registers 10

    new-instance v3, Lorg/c/a/a/b/d/a/y;

    invoke-virtual {p1}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    invoke-direct {v3, v0}, Lorg/c/a/a/b/d/a/y;-><init>(I)V

    invoke-virtual {p1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lorg/c/a/a/b/d/b/ac;

    if-ne v2, v5, :cond_2

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/d/b/ac;

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/ac;->d()Lorg/c/a/a/b/d/a/c;

    move-result-object v2

    :goto_1
    new-instance v5, Lorg/c/a/a/b/d/a/x;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->e()I

    move-result v0

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6, v2}, Lorg/c/a/a/b/d/a/x;-><init>(ILjava/lang/String;Lorg/c/a/a/b/d/a/aj;)V

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->h()I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/c/a/a/b/d/a/x;->a(I)V

    :cond_1
    invoke-virtual {v3, v5}, Lorg/c/a/a/b/d/a/y;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v2, Lorg/c/a/a/b/d/a/p;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/c/a/a/b/d/a/p;-><init>(Lorg/c/a/a/b/d/b/n;)V

    goto :goto_1
.end method

.method protected a(ILjava/util/HashSet;Ljava/util/List;Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;
    .registers 9

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/g;

    if-ne v0, v1, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/c/a/a/c/a/a/a/c/b;->a(ILjava/util/HashSet;Ljava/util/List;Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/b/d/b/g;->b(Lorg/c/a/a/b/d/b/n;)V

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->f()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p4

    goto :goto_0
.end method

.method protected a(Ljava/util/HashSet;Ljava/util/HashSet;Lorg/c/a/a/b/d/b/g;)Lorg/c/a/a/b/d/d/o;
    .registers 10

    invoke-virtual {p3}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/c/a/a/c/a/a/a/c/a;->a(Z)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v2

    invoke-virtual {p3}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/c/a/a/b/d/b/ac;

    if-ne v1, v3, :cond_0

    invoke-virtual {p3}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/ac;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ac;->d()Lorg/c/a/a/b/d/a/c;

    move-result-object v1

    :goto_0
    new-instance v3, Lorg/c/a/a/b/d/d/o;

    new-instance v4, Lorg/c/a/a/b/d/a/x;

    invoke-virtual {p3}, Lorg/c/a/a/b/d/b/g;->e()I

    move-result v5

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0, v1}, Lorg/c/a/a/b/d/a/x;-><init>(ILjava/lang/String;Lorg/c/a/a/b/d/a/aj;)V

    invoke-direct {v3, v2, v4}, Lorg/c/a/a/b/d/d/o;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/f;)V

    return-object v3

    :cond_0
    new-instance v1, Lorg/c/a/a/b/d/a/p;

    invoke-virtual {p3}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/c/a/a/b/d/a/p;-><init>(Lorg/c/a/a/b/d/b/n;)V

    goto :goto_0
.end method

.method public a(I)Lorg/c/a/a/c/a/a/a/c/a;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->e:Lorg/c/a/a/c/a/a/a/c/b;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/a/a/a/c/b;->a(I)Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lorg/c/a/a/c/a/a/a/c/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->e:Lorg/c/a/a/c/a/a/a/c/b;

    return-object v0
.end method

.method public a(Ljava/util/HashSet;)V
    .registers 10

    const/4 v0, 0x0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v5, v1

    move v1, v0

    :goto_0
    if-lt v1, v5, :cond_3

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->g:Lorg/c/a/a/c/a/a/a/c/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->g:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->g:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v2, Lorg/c/a/a/c/a/a/a/c/d;

    invoke-direct {v2, v3, v4}, Lorg/c/a/a/c/a/a/a/c/d;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V

    move v1, v0

    :goto_2
    if-lt v1, v5, :cond_9

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->g:Lorg/c/a/a/c/a/a/a/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->g:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/c/a/a/b/d/e/l;->a(Lorg/c/a/a/b/d/e/u;)V

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->g:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/c/a/a/c/a/a/a/c/a;->g:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->d:Lorg/c/a/a/d/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->d:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v2, v2, v1

    :goto_4
    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, v2, Lorg/c/a/a/c/a/a/a/c/a;->g:Ljava/lang/String;

    if-nez v6, :cond_6

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    sget-boolean v6, Lorg/c/a/a/c/a/a/a/c/b;->h:Z

    if-nez v6, :cond_7

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v6

    if-ne v2, v6, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    iget-object v6, v2, Lorg/c/a/a/c/a/a/a/c/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v2

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->g:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v0, v0, v1

    :goto_6
    if-nez v0, :cond_a

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_a
    iget-object v4, v0, Lorg/c/a/a/c/a/a/a/c/a;->g:Ljava/lang/String;

    if-nez v4, :cond_b

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/c/a/a/b/d/e/l;->a(Lorg/c/a/a/b/d/e/u;)V

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/c/a/a/c/a/a/a/c/a;->g:Ljava/lang/String;

    :cond_b
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    goto :goto_6

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/c/b;

    invoke-virtual {v0, v3}, Lorg/c/a/a/c/a/a/a/c/b;->a(Ljava/util/HashSet;)V

    goto/16 :goto_3
.end method

.method protected a(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/ListIterator;Lorg/c/a/a/b/d/d/h;)V
    .registers 9

    invoke-virtual {p4}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/g;

    if-ne v0, v1, :cond_1

    invoke-virtual {p4}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Lorg/c/a/a/b/d/b/p;

    invoke-direct {v2}, Lorg/c/a/a/b/d/b/p;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {p0, v1, p2, v2, v0}, Lorg/c/a/a/c/a/a/a/c/b;->a(ILjava/util/HashSet;Ljava/util/List;Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;

    invoke-interface {p3}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/p;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/p;->d()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-interface {p3, p4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {p0, p1, p2, v1}, Lorg/c/a/a/c/a/a/a/c/b;->a(Ljava/util/HashSet;Ljava/util/HashSet;Lorg/c/a/a/b/d/b/g;)Lorg/c/a/a/b/d/d/o;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/HashSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/b/c/c;)V
    .registers 9

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/b/c/c;->d()Lorg/c/a/a/b/d/b/f;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lorg/c/a/a/b/d/b/p;

    invoke-direct {v2}, Lorg/c/a/a/b/d/b/p;-><init>()V

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/b/c/c;->j()I

    move-result v3

    invoke-interface {v1}, Lorg/c/a/a/b/d/b/f;->j_()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Lorg/c/a/a/b/d/b/f;->l_()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/p;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/p;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/c/a/a/c/a/a/a/c/b;->a(Ljava/util/HashSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/b/c/c;Lorg/c/a/a/b/d/b/n;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {p0, v3, p2, v2, v0}, Lorg/c/a/a/c/a/a/a/c/b;->a(ILjava/util/HashSet;Ljava/util/List;Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/p;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/p;->d()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_0

    :cond_4
    invoke-virtual {v2, v0}, Lorg/c/a/a/b/d/b/p;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object v0, v1

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {p0, v3, p2, v2, v0}, Lorg/c/a/a/c/a/a/a/c/b;->a(ILjava/util/HashSet;Ljava/util/List;Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/p;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Lorg/c/a/a/b/d/b/p;->d()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_1

    :cond_6
    invoke-interface {v1}, Lorg/c/a/a/b/d/b/f;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v2, v0}, Lorg/c/a/a/b/d/b/p;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/c/a/a/c/a/a/a/c/b;->a(Ljava/util/HashSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/b/c/c;Lorg/c/a/a/b/d/b/p;)V

    goto :goto_2
.end method

.method protected a(Ljava/util/HashSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/b/c/c;Lorg/c/a/a/b/d/b/n;)V
    .registers 11

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/b/d/b/g;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p4, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {p4}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p4}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->f()I

    move-result v1

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/b/c/c;->j()I

    move-result v3

    if-gt v1, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lorg/c/a/a/c/a/a/a/c/a;->a(Z)V

    invoke-virtual {p4}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/c/a/a/b/d/b/ac;

    if-ne v1, v3, :cond_2

    invoke-virtual {p4}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/ac;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ac;->d()Lorg/c/a/a/b/d/a/c;

    move-result-object v1

    :goto_1
    new-instance v3, Lorg/c/a/a/b/d/a/w;

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v2

    new-instance v4, Lorg/c/a/a/b/d/a/x;

    invoke-virtual {p4}, Lorg/c/a/a/b/d/b/g;->e()I

    move-result v5

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/b/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0, v1}, Lorg/c/a/a/b/d/a/x;-><init>(ILjava/lang/String;Lorg/c/a/a/b/d/a/aj;)V

    invoke-direct {v3, v2, v4}, Lorg/c/a/a/b/d/a/w;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/f;)V

    invoke-virtual {p3, v3}, Lorg/c/a/a/c/a/a/a/b/c/c;->a(Lorg/c/a/a/b/d/a/w;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/c/a/a/c/a/a/a/b/c/c;->a(Lorg/c/a/a/b/d/b/f;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/c/a/a/b/d/a/p;

    invoke-virtual {p4}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/c/a/a/b/d/a/p;-><init>(Lorg/c/a/a/b/d/b/n;)V

    goto :goto_1
.end method

.method protected a(Ljava/util/HashSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/b/c/c;Lorg/c/a/a/b/d/b/p;)V
    .registers 16

    new-instance v7, Lorg/c/a/a/d/c;

    invoke-direct {v7}, Lorg/c/a/a/d/c;-><init>()V

    new-instance v8, Lorg/c/a/a/d/c;

    invoke-direct {v8}, Lorg/c/a/a/d/c;-><init>()V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    if-ne v3, v4, :cond_6

    new-instance v0, Lorg/c/a/a/b/d/a/w;

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Lorg/c/a/a/c/a/a/a/c/b;->a(Lorg/c/a/a/d/c;Z)Lorg/c/a/a/b/d/a/y;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/c/a/a/b/d/a/w;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/f;)V

    invoke-virtual {p3, v0}, Lorg/c/a/a/c/a/a/a/b/c/c;->a(Lorg/c/a/a/b/d/a/w;)V

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/c/a/a/c/a/a/a/b/c/c;->a(Lorg/c/a/a/b/d/b/f;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v6, Lorg/c/a/a/b/d/b/g;

    if-ne v1, v6, :cond_0

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v6, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v1, v6, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v10

    invoke-virtual {v10}, Lorg/c/a/a/c/a/a/a/c/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v10}, Lorg/c/a/a/c/a/a/a/c/a;->f()I

    move-result v1

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/b/c/c;->j()I

    move-result v6

    if-gt v1, v6, :cond_0

    if-nez v2, :cond_2

    invoke-virtual {v10}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/c/a/a/b/d/e/l;->a(I)Lorg/c/a/a/b/d/e/l;

    move-result-object v5

    invoke-interface {v1}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v2

    move v3, v2

    move v4, v2

    :goto_3
    invoke-virtual {v8, v10}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lorg/c/a/a/b/d/e/l;->a(I)Lorg/c/a/a/b/d/e/l;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_3
    invoke-interface {v1}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v6

    if-le v3, v6, :cond_4

    move v3, v6

    :cond_4
    if-ge v4, v6, :cond_7

    move v4, v6

    move-object v1, v2

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/c/a/a/c/a/a/a/c/a;->a(Z)V

    goto/16 :goto_1

    :cond_6
    new-instance v0, Lorg/c/a/a/b/d/a/w;

    const/4 v1, 0x1

    invoke-virtual {p0, v7, v1}, Lorg/c/a/a/c/a/a/a/c/b;->a(Lorg/c/a/a/d/c;Z)Lorg/c/a/a/b/d/a/y;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lorg/c/a/a/b/d/a/w;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/f;)V

    invoke-virtual {p3, v0}, Lorg/c/a/a/c/a/a/a/b/c/c;->a(Lorg/c/a/a/b/d/a/w;)V

    goto/16 :goto_2

    :cond_7
    move-object v1, v2

    goto :goto_3
.end method

.method public a(Lorg/c/a/a/b/d/b/ab;Lorg/c/a/a/c/a/a/a/c/a;)V
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->c:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/c/a;)V
    .registers 7

    const/4 v4, 0x0

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/b;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/c/a;->d()I

    move-result v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/c/a/a/c/a/a/a/c/a;

    iput-object v2, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    iget-object v2, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_2

    iget-object v2, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    aput-object p1, v2, v0

    invoke-virtual {p1, v1}, Lorg/c/a/a/c/a/a/a/c/a;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    invoke-virtual {p1, p0}, Lorg/c/a/a/c/a/a/a/c/a;->a(Lorg/c/a/a/c/a/a/a/c/b;)V

    :cond_2
    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/c/b;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->d:Lorg/c/a/a/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->d:Lorg/c/a/a/d/c;

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->d:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lorg/c/a/a/d/c;Z)Lorg/c/a/a/b/d/a/y;
    .registers 7

    new-instance v2, Lorg/c/a/a/b/d/a/y;

    invoke-virtual {p1}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    invoke-direct {v2, v0}, Lorg/c/a/a/b/d/a/y;-><init>(I)V

    invoke-virtual {p1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/c/a/a/b/d/d/o;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/d/o;->e()Lorg/c/a/a/b/d/a/f;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/a/x;

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lorg/c/a/a/b/d/d/o;->d()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/b/d/a/x;->a(I)V

    :cond_1
    invoke-virtual {v2, v0}, Lorg/c/a/a/b/d/a/y;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()V
    .registers 6

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/b/ab;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/b/ab;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/e/i;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/e/i;->k()Lorg/c/a/a/b/d/e/e;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lorg/c/a/a/b/d/e/i;->k()Lorg/c/a/a/b/d/e/e;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/b/ab;

    invoke-virtual {v2}, Lorg/c/a/a/b/d/e/i;->k()Lorg/c/a/a/b/d/e/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/c/a/a/b/d/e/i;->a(Lorg/c/a/a/b/d/e/e;)Lorg/c/a/a/b/d/e/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/b/d/b/ab;->a(Lorg/c/a/a/b/d/e/i;)V

    goto :goto_0
.end method

.method public b(Lorg/c/a/a/c/a/a/a/c/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/c/b;->g:Lorg/c/a/a/c/a/a/a/c/a;

    return-void
.end method

.method public c()V
    .registers 3

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/c/b;->d()Z

    move-result v0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/c/b;->f()V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/c/b;->g()V

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->d:Lorg/c/a/a/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->d:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/c/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/b;->c()V

    goto :goto_0
.end method

.method public c(Lorg/c/a/a/c/a/a/a/c/a;)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/c/a;->d()I

    move-result v2

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v1, v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_0

    move-object v1, v0

    :cond_0
    if-nez v1, :cond_4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->d:Lorg/c/a/a/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->d:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_2
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/c/b;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/a/a/a/c/b;->c(Lorg/c/a/a/c/a/a/a/c/a;)V

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_1

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->i()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/c/a;->i()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->i()Lorg/c/a/a/d/c;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/c/a/a/d/c;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/c/a;->a(I)V

    invoke-virtual {p1, v1}, Lorg/c/a/a/c/a/a/a/c/a;->b(Lorg/c/a/a/c/a/a/a/c/a;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v3

    sget-boolean v4, Lorg/c/a/a/c/a/a/a/c/b;->h:Z

    if-nez v4, :cond_7

    invoke-interface {v0}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v4

    invoke-interface {v3}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-interface {v0}, Lorg/c/a/a/b/d/e/l;->l()Z

    move-result v4

    invoke-interface {v3}, Lorg/c/a/a/b/d/e/l;->l()Z

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-interface {v0}, Lorg/c/a/a/b/d/e/l;->f()Z

    move-result v4

    invoke-interface {v3}, Lorg/c/a/a/b/d/e/l;->f()Z

    move-result v3

    if-eq v4, v3, :cond_7

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/c/g;

    invoke-interface {v0, p1}, Lorg/c/a/a/c/a/a/a/c/g;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v1, p1}, Lorg/c/a/a/c/a/a/a/c/a;->b(Lorg/c/a/a/c/a/a/a/c/a;)Z

    move-result v3

    if-eqz v3, :cond_9

    check-cast p1, Lorg/c/a/a/c/a/a/a/c/k;

    check-cast v0, Lorg/c/a/a/b/d/e/k;

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/c/k;->a(Lorg/c/a/a/b/d/e/k;)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    aput-object v1, v0, v2

    goto/16 :goto_2

    :cond_9
    check-cast p1, Lorg/c/a/a/c/a/a/a/c/k;

    sget-object v0, Lorg/c/a/a/b/d/e/k;->f:Lorg/c/a/a/b/d/e/k;

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/c/k;->a(Lorg/c/a/a/b/d/e/k;)V

    goto :goto_4

    :cond_a
    invoke-interface {v0}, Lorg/c/a/a/b/d/e/l;->l()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1, p1}, Lorg/c/a/a/c/a/a/a/c/a;->b(Lorg/c/a/a/c/a/a/a/c/a;)Z

    move-result v3

    if-eqz v3, :cond_b

    check-cast p1, Lorg/c/a/a/c/a/a/a/c/j;

    check-cast v0, Lorg/c/a/a/b/d/e/i;

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/c/j;->a(Lorg/c/a/a/b/d/e/i;)V

    goto :goto_4

    :cond_b
    check-cast p1, Lorg/c/a/a/c/a/a/a/c/j;

    sget-object v0, Lorg/c/a/a/b/d/e/i;->l:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/a/a/a/c/j;->a(Lorg/c/a/a/b/d/e/i;)V

    goto :goto_4
.end method

.method public d(Lorg/c/a/a/c/a/a/a/c/a;)V
    .registers 5

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/c/a;->d()I

    move-result v1

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_1

    move-object v0, p1

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->d:Lorg/c/a/a/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->d:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/c/b;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/a/a/a/c/b;->d(Lorg/c/a/a/c/a/a/a/c/a;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_2
.end method

.method protected d()Z
    .registers 16

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/c/b;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v4, Lorg/c/a/a/c/a/a/d/z;

    invoke-direct {v4}, Lorg/c/a/a/c/a/a/d/z;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/c/b;

    iget-object v6, v1, Lorg/c/a/a/c/a/a/a/c/b;->f:Lorg/c/a/a/b/d/d/u;

    invoke-virtual {v6}, Lorg/c/a/a/b/d/d/u;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    :cond_2
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/c/a/a/d/c;

    invoke-direct {v1, v0}, Lorg/c/a/a/d/c;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lorg/c/a/a/c/a/a/a/c/b;->a:Lorg/c/a/a/c/a/a/a/c/c;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/c/a;

    new-instance v7, Lorg/c/a/a/b/d/d/o;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v8

    new-instance v9, Lorg/c/a/a/b/d/a/x;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/c/a/a/b/d/a/x;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lorg/c/a/a/b/d/d/o;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/f;)V

    invoke-virtual {v6, v3, v7}, Lorg/c/a/a/b/d/d/u;->add(ILjava/lang/Object;)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lorg/c/a/a/c/a/a/a/c/a;->a(Z)V

    goto :goto_2

    :cond_3
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/d/z;->a()V

    invoke-interface {v1, v4}, Lorg/c/a/a/b/d/d/r;->a(Lorg/c/a/a/b/d/d/t;)V

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/d/z;->c()Z

    move-result v8

    or-int/2addr v2, v8

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/d/z;->b()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v7}, Ljava/util/ListIterator;->nextIndex()I

    move-result v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lorg/c/a/a/b/d/d/h;

    if-ne v10, v11, :cond_6

    check-cast v1, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {p0, v0, v8, v7, v1}, Lorg/c/a/a/c/a/a/a/c/b;->a(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/ListIterator;Lorg/c/a/a/b/d/d/h;)V

    :cond_4
    :goto_3
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v7}, Ljava/util/ListIterator;->nextIndex()I

    move-result v10

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v11

    :goto_4
    invoke-interface {v7}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    if-ge v1, v9, :cond_7

    new-instance v1, Lorg/c/a/a/d/c;

    invoke-direct {v1, v8}, Lorg/c/a/a/d/c;-><init>(Ljava/util/Collection;)V

    sget-object v8, Lorg/c/a/a/c/a/a/a/c/b;->a:Lorg/c/a/a/c/a/a/a/c/c;

    invoke-static {v1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    :goto_6
    invoke-interface {v7}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int v8, v11, v10

    if-lt v1, v8, :cond_9

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_6
    const-class v11, Lorg/c/a/a/c/a/a/a/b/c/c;

    if-ne v10, v11, :cond_4

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/c/c;

    invoke-virtual {p0, v0, v8, v1}, Lorg/c/a/a/c/a/a/a/c/b;->a(Ljava/util/HashSet;Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/b/c/c;)V

    goto :goto_3

    :cond_7
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_4

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/c/a;

    new-instance v9, Lorg/c/a/a/b/d/d/o;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v12

    new-instance v13, Lorg/c/a/a/b/d/a/x;

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/c/a/a/b/d/a/x;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v12, v13}, Lorg/c/a/a/b/d/d/o;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/f;)V

    invoke-interface {v7, v9}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_6

    :cond_a
    move v2, v3

    goto/16 :goto_0
.end method

.method protected e()Ljava/util/HashMap;
    .registers 6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-gtz v0, :cond_0

    return-object v3

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v0, v0, v2

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->a()Lorg/c/a/a/c/a/a/a/c/b;

    move-result-object v0

    if-ne p0, v0, :cond_2

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->a()Lorg/c/a/a/c/a/a/a/c/b;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->a()Lorg/c/a/a/c/a/a/a/c/b;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected f()V
    .registers 9

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v0, v0, v1

    :goto_1
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->a()Lorg/c/a/a/c/a/a/a/c/b;

    move-result-object v2

    if-eq p0, v2, :cond_2

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->c()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/c/a/a/c/a/a/a/c/b;->f:Lorg/c/a/a/b/d/d/u;

    const/4 v3, 0x0

    new-instance v4, Lorg/c/a/a/b/d/d/o;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->k()Lorg/c/a/a/b/d/e/l;

    move-result-object v5

    new-instance v6, Lorg/c/a/a/b/d/a/x;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->g()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/c/a/a/b/d/a/x;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lorg/c/a/a/b/d/d/o;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/f;)V

    invoke-virtual {v2, v3, v4}, Lorg/c/a/a/b/d/d/u;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/c/a/a/c/a/a/a/c/a;->a(Z)V

    :cond_2
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    goto :goto_1
.end method

.method protected g()V
    .registers 14

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->f:Lorg/c/a/a/b/d/d/u;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/u;->size()I

    move-result v0

    if-le v0, v12, :cond_1

    new-instance v5, Lorg/c/a/a/d/c;

    invoke-direct {v5}, Lorg/c/a/a/d/c;-><init>()V

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/b;->f:Lorg/c/a/a/b/d/d/u;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/u;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/d/o;

    if-eq v1, v2, :cond_3

    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/c/a/a/b/d/d/o;

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/c/a/a/b/d/d/o;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/o;->d()Lorg/c/a/a/b/d/e/l;

    move-result-object v7

    invoke-interface {v7, v11}, Lorg/c/a/a/b/d/e/l;->a(I)Lorg/c/a/a/b/d/e/l;

    move-result-object v8

    invoke-interface {v7}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v2

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/o;->e()Lorg/c/a/a/b/d/a/f;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/a/b/d/a/f;->a()I

    move-result v3

    invoke-virtual {v5}, Lorg/c/a/a/d/c;->clear()V

    invoke-virtual {v5, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    move v1, v2

    move v4, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v5}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    if-le v0, v12, :cond_0

    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_b

    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    if-ne v1, v4, :cond_c

    new-instance v0, Lorg/c/a/a/b/d/d/o;

    invoke-virtual {p0, v5, v11}, Lorg/c/a/a/c/a/a/a/c/b;->b(Lorg/c/a/a/d/c;Z)Lorg/c/a/a/b/d/a/y;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lorg/c/a/a/b/d/d/o;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/f;)V

    invoke-interface {v6, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    :goto_4
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v9, Lorg/c/a/a/b/d/d/o;

    if-eq v2, v9, :cond_5

    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    check-cast v0, Lorg/c/a/a/b/d/d/o;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/o;->e()Lorg/c/a/a/b/d/a/f;

    move-result-object v2

    invoke-interface {v2}, Lorg/c/a/a/b/d/a/f;->a()I

    move-result v2

    if-eq v3, v2, :cond_6

    if-lez v3, :cond_6

    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/o;->d()Lorg/c/a/a/b/d/e/l;

    move-result-object v9

    invoke-interface {v9}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v3

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v5, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    move v3, v2

    goto :goto_1

    :cond_7
    invoke-interface {v9, v11}, Lorg/c/a/a/b/d/e/l;->a(I)Lorg/c/a/a/b/d/e/l;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    if-le v1, v3, :cond_8

    move v1, v3

    :cond_8
    if-ge v4, v3, :cond_9

    move v4, v3

    :cond_9
    invoke-virtual {v5, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    move v3, v2

    goto :goto_1

    :cond_a
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_2

    :cond_b
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    goto :goto_3

    :cond_c
    new-instance v0, Lorg/c/a/a/b/d/d/o;

    invoke-virtual {p0, v5, v12}, Lorg/c/a/a/c/a/a/a/c/b;->b(Lorg/c/a/a/d/c;Z)Lorg/c/a/a/b/d/a/y;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lorg/c/a/a/b/d/d/o;-><init>(Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/f;)V

    invoke-interface {v6, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_4
.end method
