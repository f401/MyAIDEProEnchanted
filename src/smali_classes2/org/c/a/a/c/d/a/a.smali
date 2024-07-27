.class public Lorg/c/a/a/c/d/a/a;
.super Ljava/lang/Object;


# static fields
.field static final i:Z


# instance fields
.field protected final a:Lorg/c/a/a/d/c;

.field protected final b:Lorg/c/a/a/b/b/c;

.field protected final c:Lorg/c/a/a/c/d/a/a;

.field protected d:Lorg/c/a/a/c/d/a/a;

.field protected final e:I

.field protected f:I

.field protected g:I

.field protected h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/d/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/c/d/a/a;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/c/a/a/d/c;Lorg/c/a/a/b/b/c;Lorg/c/a/a/c/d/a/a;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/c/a/a/c/d/a/a;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/c/a/a/c/d/a/a;->g:I

    iput-object p1, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    iput-object p2, p0, Lorg/c/a/a/c/d/a/a;->b:Lorg/c/a/a/b/b/c;

    iput-object p3, p0, Lorg/c/a/a/c/d/a/a;->c:Lorg/c/a/a/c/d/a/a;

    sget-boolean v0, Lorg/c/a/a/c/d/a/a;->i:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Section must contain flexible fragments"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez p2, :cond_3

    iput v1, p0, Lorg/c/a/a/c/d/a/a;->e:I

    :goto_1
    return-void

    :cond_2
    iput-object p0, p3, Lorg/c/a/a/c/d/a/a;->d:Lorg/c/a/a/c/d/a/a;

    iget-object v0, p3, Lorg/c/a/a/c/d/a/a;->b:Lorg/c/a/a/b/b/c;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/c;->b()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/c/a/a/b/b/c;->a()I

    move-result v1

    sub-int v0, v1, v0

    iput v0, p0, Lorg/c/a/a/c/d/a/a;->e:I

    goto :goto_1
.end method


# virtual methods
.method protected a(II)Ljava/util/List;
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/c/d/a/a;->g()V

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1, p2}, Lorg/c/a/a/d/c;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/c/a/a/d/c;

    invoke-direct {v1, v0}, Lorg/c/a/a/d/c;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object v1
.end method

.method protected a(Lorg/c/a/a/c/d/c/a;)Lorg/c/a/a/c/d/a/a;
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/c/d/a/a;->d()Lorg/c/a/a/c/d/a/a;

    move-result-object v1

    invoke-virtual {p1}, Lorg/c/a/a/c/d/c/a;->a()V

    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/c/a/a/c/d/c/a;->b()V

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->a()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->d()Lorg/c/a/a/c/d/a/a;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, p1}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/d/c/a;->c()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1
.end method

.method public a()Lorg/c/a/a/d/c;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    return-object v0
.end method

.method protected a(Lorg/c/a/a/c/d/b/a;ILjava/util/List;)V
    .registers 7

    invoke-virtual {p1}, Lorg/c/a/a/c/d/b/a;->a()Lorg/c/a/a/c/d/c/a;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->a()V

    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    sget-boolean v0, Lorg/c/a/a/c/d/a/a;->i:Z

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, v1}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->c()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    const/4 v2, 0x0

    invoke-interface {p3, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/c/a/a/d/c;->addAll(ILjava/util/Collection;)Z

    iget-object v1, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p3, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lorg/c/a/a/d/c;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/c/a/a/c/d/a/a;->g()V

    return-void
.end method

.method protected a(Lorg/c/a/a/d/c;Z)V
    .registers 6

    const v0, 0x7fffffff

    :goto_0
    iget v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-lez v1, :cond_0

    iget v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    invoke-virtual {p1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, p2}, Lorg/c/a/a/b/b/d;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public a(Lorg/c/a/a/c/d/b/a;)Z
    .registers 13

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v3

    invoke-virtual {p1}, Lorg/c/a/a/c/d/b/a;->c()Lorg/c/a/a/c/d/c/b;

    move-result-object v4

    invoke-virtual {p1}, Lorg/c/a/a/c/d/b/a;->d()Lorg/c/a/a/c/d/c/b;

    move-result-object v5

    invoke-virtual {p1}, Lorg/c/a/a/c/d/b/a;->a()Lorg/c/a/a/c/d/c/a;

    move-result-object v6

    invoke-virtual {p1}, Lorg/c/a/a/c/d/b/a;->b()Lorg/c/a/a/c/d/c/a;

    move-result-object v7

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0, v3}, Lorg/c/a/a/d/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    invoke-virtual {v4}, Lorg/c/a/a/c/d/c/b;->a()V

    invoke-virtual {v5}, Lorg/c/a/a/c/d/c/b;->a()V

    :goto_0
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lorg/c/a/a/c/d/c/b;->f()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v4}, Lorg/c/a/a/c/d/c/b;->e()I

    move-result v0

    invoke-virtual {p0, v6}, Lorg/c/a/a/c/d/a/a;->a(Lorg/c/a/a/c/d/c/a;)Lorg/c/a/a/c/d/a/a;

    move-result-object v8

    if-le v0, v1, :cond_6

    if-eqz v8, :cond_6

    add-int/lit8 v9, v3, -0x1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v0}, Lorg/c/a/a/c/d/c/b;->a(I)I

    move-result v0

    sub-int v0, v9, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v2}, Lorg/c/a/a/c/d/c/b;->a(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v6}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v4

    invoke-virtual {v5}, Lorg/c/a/a/c/d/c/b;->e()I

    move-result v6

    if-le v6, v1, :cond_5

    invoke-virtual {v5, v2}, Lorg/c/a/a/c/d/c/b;->a(I)I

    move-result v2

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Lorg/c/a/a/c/d/c/b;->a(I)I

    move-result v5

    invoke-virtual {p0, v7}, Lorg/c/a/a/c/d/a/a;->b(Lorg/c/a/a/c/d/c/a;)Lorg/c/a/a/c/d/a/a;

    move-result-object v6

    invoke-virtual {v8}, Lorg/c/a/a/c/d/a/a;->e()I

    move-result v9

    invoke-virtual {v6}, Lorg/c/a/a/c/d/a/a;->e()I

    move-result v10

    if-le v9, v10, :cond_4

    invoke-virtual {v6}, Lorg/c/a/a/c/d/a/a;->a()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    invoke-virtual {v7}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/c/a/a/c/d/a/a;->a(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v6, p1, v0, v2}, Lorg/c/a/a/c/d/a/a;->b(Lorg/c/a/a/c/d/b/a;ILjava/util/List;)V

    :goto_2
    move v0, v1

    :goto_3
    return v0

    :cond_2
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, v4}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    goto :goto_0

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, v5}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    invoke-virtual {v5}, Lorg/c/a/a/c/d/c/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v3}, Lorg/c/a/a/c/d/a/a;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, p1, v4, v0}, Lorg/c/a/a/c/d/a/a;->a(Lorg/c/a/a/c/d/b/a;ILjava/util/List;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0, v3}, Lorg/c/a/a/c/d/a/a;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, p1, v4, v0}, Lorg/c/a/a/c/d/a/a;->a(Lorg/c/a/a/c/d/b/a;ILjava/util/List;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Lorg/c/a/a/c/d/c/b;->e()I

    move-result v0

    if-le v0, v1, :cond_7

    invoke-virtual {v5, v2}, Lorg/c/a/a/c/d/c/b;->a(I)I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v5, v4}, Lorg/c/a/a/c/d/c/b;->a(I)I

    move-result v4

    invoke-virtual {p0, v7}, Lorg/c/a/a/c/d/a/a;->b(Lorg/c/a/a/c/d/c/a;)Lorg/c/a/a/c/d/a/a;

    move-result-object v5

    if-le v0, v1, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/c/a/a/c/d/a/a;->a()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    invoke-virtual {v7}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/c/a/a/c/d/a/a;->a(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, p1, v0, v2}, Lorg/c/a/a/c/d/a/a;->b(Lorg/c/a/a/c/d/b/a;ILjava/util/List;)V

    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method public a(Z)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->b:Lorg/c/a/a/b/b/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->g:I

    if-eq v0, v1, :cond_5

    :cond_0
    iput v1, p0, Lorg/c/a/a/c/d/a/a;->g:I

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->e:I

    if-eq v0, v1, :cond_5

    new-instance v4, Lorg/c/a/a/c/d/a/b;

    invoke-direct {v4, p0}, Lorg/c/a/a/c/d/a/b;-><init>(Lorg/c/a/a/c/d/a/a;)V

    new-instance v5, Lorg/c/a/a/d/c;

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    invoke-direct {v5, v0}, Lorg/c/a/a/d/c;-><init>(I)V

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->e:I

    if-le v0, v1, :cond_c

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->e:I

    sub-int v1, v0, v1

    iput v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v4}, Lorg/c/a/a/c/d/a/b;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_2
    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-lez v0, :cond_4

    invoke-virtual {v4}, Lorg/c/a/a/c/d/a/b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_4
    :goto_3
    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-eq v1, v0, :cond_5

    move v2, v3

    :cond_5
    :goto_4
    return v2

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v7

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->c()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->f()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/c/a/a/c/d/a/b;->a(I)Lorg/c/a/a/d/c;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/d/c;

    invoke-virtual {v5}, Lorg/c/a/a/d/c;->clear()V

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v5, p1}, Lorg/c/a/a/c/d/a/a;->a(Lorg/c/a/a/d/c;Z)V

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-nez v0, :cond_2

    goto :goto_2

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v8

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->d()I

    move-result v9

    if-ge v8, v9, :cond_9

    invoke-virtual {v5, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/d/c;

    invoke-virtual {p0, v0, p1}, Lorg/c/a/a/c/d/a/a;->a(Lorg/c/a/a/d/c;Z)V

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-nez v0, :cond_3

    goto :goto_3

    :cond_c
    iget v0, p0, Lorg/c/a/a/c/d/a/a;->e:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v4}, Lorg/c/a/a/c/d/a/b;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    :goto_7
    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-lez v0, :cond_10

    invoke-virtual {v4}, Lorg/c/a/a/c/d/a/b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_10
    :goto_8
    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-eq v1, v0, :cond_5

    move v2, v3

    goto/16 :goto_4

    :cond_11
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->b()I

    move-result v7

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v8

    if-ge v7, v8, :cond_d

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->f()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/c/a/a/c/d/a/b;->a(I)Lorg/c/a/a/d/c;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/d/c;

    invoke-virtual {v5}, Lorg/c/a/a/d/c;->clear()V

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, v5, p1}, Lorg/c/a/a/c/d/a/a;->b(Lorg/c/a/a/d/c;Z)V

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-nez v0, :cond_e

    goto :goto_7

    :cond_14
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v8

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->d()I

    move-result v9

    if-le v8, v9, :cond_13

    invoke-virtual {v5, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/d/c;

    invoke-virtual {p0, v0, p1}, Lorg/c/a/a/c/d/a/a;->b(Lorg/c/a/a/d/c;Z)V

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-nez v0, :cond_f

    goto :goto_8
.end method

.method public b()Lorg/c/a/a/b/b/c;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->b:Lorg/c/a/a/b/b/c;

    return-object v0
.end method

.method protected b(Lorg/c/a/a/c/d/c/a;)Lorg/c/a/a/c/d/a/a;
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/c/d/a/a;->c()Lorg/c/a/a/c/d/a/a;

    move-result-object v1

    invoke-virtual {p1}, Lorg/c/a/a/c/d/c/a;->a()V

    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->a()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/c/a/a/d/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    invoke-virtual {p1}, Lorg/c/a/a/c/d/c/a;->b()V

    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->c()Lorg/c/a/a/c/d/a/a;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, p1}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/d/c/a;->c()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1
.end method

.method protected b(Lorg/c/a/a/c/d/b/a;ILjava/util/List;)V
    .registers 8

    invoke-virtual {p1}, Lorg/c/a/a/c/d/b/a;->a()Lorg/c/a/a/c/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->a()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    sget-boolean v0, Lorg/c/a/a/c/d/a/a;->i:Z

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, v1}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->c()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    const/4 v2, 0x0

    invoke-interface {p3, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/c/a/a/d/c;->addAll(ILjava/util/Collection;)Z

    iget-object v1, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p3, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lorg/c/a/a/d/c;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/c/a/a/c/d/a/a;->g()V

    return-void
.end method

.method protected b(Lorg/c/a/a/d/c;Z)V
    .registers 6

    const v0, 0x7fffffff

    :goto_0
    iget v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-lez v1, :cond_0

    iget v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    invoke-virtual {p1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, p2}, Lorg/c/a/a/b/b/d;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public c()Lorg/c/a/a/c/d/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->c:Lorg/c/a/a/c/d/a/a;

    return-object v0
.end method

.method public d()Lorg/c/a/a/c/d/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->d:Lorg/c/a/a/c/d/a/a;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->f:I

    return v0
.end method

.method public f()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/c/d/a/a;->f:I

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->d()I

    move-result v2

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v3

    if-le v2, v3, :cond_0

    iget v2, p0, Lorg/c/a/a/c/d/a/a;->f:I

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->d()I

    move-result v3

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v0

    sub-int v0, v3, v0

    add-int/2addr v0, v2

    iput v0, p0, Lorg/c/a/a/c/d/a/a;->f:I

    goto :goto_0
.end method

.method protected g()V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->a()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Section{flexibleFragments.size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fixedFragment.firstLineNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->b:Lorg/c/a/a/b/b/c;

    if-nez v0, :cond_0

    const-string v0, "undefined"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/c/d/a/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->b:Lorg/c/a/a/b/b/c;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/c;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
