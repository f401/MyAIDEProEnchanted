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

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/c/d/a/a;->i:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
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

    if-nez v0, :cond_23

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    if-gtz v0, :cond_23

    :cond_1b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Section must contain flexible fragments"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_23
    if-nez p3, :cond_2b

    const/4 v0, 0x1

    :goto_26
    if-nez p2, :cond_34

    iput v1, p0, Lorg/c/a/a/c/d/a/a;->e:I

    :goto_2a
    return-void

    :cond_2b
    iput-object p0, p3, Lorg/c/a/a/c/d/a/a;->d:Lorg/c/a/a/c/d/a/a;

    iget-object v0, p3, Lorg/c/a/a/c/d/a/a;->b:Lorg/c/a/a/b/b/c;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/c;->b()I

    move-result v0

    goto :goto_26

    :cond_34
    invoke-virtual {p2}, Lorg/c/a/a/b/b/c;->a()I

    move-result v1

    sub-int v0, v1, v0

    iput v0, p0, Lorg/c/a/a/c/d/a/a;->e:I

    goto :goto_2a
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

    :goto_7
    if-nez v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Lorg/c/a/a/c/d/c/a;->b()V

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->a()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->d()Lorg/c/a/a/c/d/a/a;

    move-result-object v1

    goto :goto_7

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, p1}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/d/c/a;->c()I

    move-result v0

    if-nez v0, :cond_16

    move-object v0, v1

    goto :goto_a
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

    :cond_f
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_30

    :goto_15
    sget-boolean v0, Lorg/c/a/a/c/d/a/a;->i:Z

    if-nez v0, :cond_40

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_40

    :cond_2a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_30
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, v1}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->c()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_15

    :cond_40
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

    :goto_3
    iget v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-lez v1, :cond_b

    iget v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-lt v1, v0, :cond_c

    :cond_b
    return-void

    :cond_c
    iget v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    invoke-virtual {p1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v1

    goto :goto_3

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, p2}, Lorg/c/a/a/b/b/d;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-nez v0, :cond_12

    move v0, v1

    goto :goto_3
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

    :goto_24
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v4}, Lorg/c/a/a/c/d/c/b;->f()Z

    move-result v0

    if-nez v0, :cond_95

    :cond_30
    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_36
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9f

    :goto_3c
    invoke-virtual {v4}, Lorg/c/a/a/c/d/c/b;->e()I

    move-result v0

    invoke-virtual {p0, v6}, Lorg/c/a/a/c/d/a/a;->a(Lorg/c/a/a/c/d/c/a;)Lorg/c/a/a/c/d/a/a;

    move-result-object v8

    if-le v0, v1, :cond_bf

    if-eqz v8, :cond_bf

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

    if-le v6, v1, :cond_b7

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

    if-le v9, v10, :cond_af

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

    :goto_93
    move v0, v1

    :goto_94
    return v0

    :cond_95
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, v4}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    goto :goto_24

    :cond_9f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, v5}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    invoke-virtual {v5}, Lorg/c/a/a/c/d/c/b;->f()Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_3c

    :cond_af
    invoke-virtual {p0, v0, v3}, Lorg/c/a/a/c/d/a/a;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, p1, v4, v0}, Lorg/c/a/a/c/d/a/a;->a(Lorg/c/a/a/c/d/b/a;ILjava/util/List;)V

    goto :goto_93

    :cond_b7
    invoke-virtual {p0, v0, v3}, Lorg/c/a/a/c/d/a/a;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, p1, v4, v0}, Lorg/c/a/a/c/d/a/a;->a(Lorg/c/a/a/c/d/b/a;ILjava/util/List;)V

    goto :goto_93

    :cond_bf
    invoke-virtual {v5}, Lorg/c/a/a/c/d/c/b;->e()I

    move-result v0

    if-le v0, v1, :cond_f1

    invoke-virtual {v5, v2}, Lorg/c/a/a/c/d/c/b;->a(I)I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v5, v4}, Lorg/c/a/a/c/d/c/b;->a(I)I

    move-result v4

    invoke-virtual {p0, v7}, Lorg/c/a/a/c/d/a/a;->b(Lorg/c/a/a/c/d/c/a;)Lorg/c/a/a/c/d/a/a;

    move-result-object v5

    if-le v0, v1, :cond_f1

    if-eqz v5, :cond_f1

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

    goto :goto_94

    :cond_f1
    move v0, v2

    goto :goto_94
.end method

.method public a(Z)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->b:Lorg/c/a/a/b/b/c;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_63

    if-nez p1, :cond_19

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->g:I

    if-eq v0, v1, :cond_62

    :cond_19
    iput v1, p0, Lorg/c/a/a/c/d/a/a;->g:I

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->e:I

    if-eq v0, v1, :cond_62

    new-instance v4, Lorg/c/a/a/c/d/a/b;

    invoke-direct {v4, p0}, Lorg/c/a/a/c/d/a/b;-><init>(Lorg/c/a/a/c/d/a/a;)V

    new-instance v5, Lorg/c/a/a/d/c;

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    invoke-direct {v5, v0}, Lorg/c/a/a/d/c;-><init>(I)V

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->e:I

    if-le v0, v1, :cond_c9

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->e:I

    sub-int v1, v0, v1

    iput v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3f
    :goto_3f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_70

    invoke-virtual {v4}, Lorg/c/a/a/c/d/a/b;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_49
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8c

    :goto_4f
    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-lez v0, :cond_5d

    invoke-virtual {v4}, Lorg/c/a/a/c/d/a/b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_57
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_bb

    :cond_5d
    :goto_5d
    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-eq v1, v0, :cond_62

    move v2, v3

    :cond_62
    :goto_62
    return v2

    :cond_63
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_d

    :cond_70
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v7

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->c()I

    move-result v8

    if-ge v7, v8, :cond_3f

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->f()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/c/a/a/c/d/a/b;->a(I)Lorg/c/a/a/d/c;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_8c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/d/c;

    invoke-virtual {v5}, Lorg/c/a/a/d/c;->clear()V

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_99
    :goto_99
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a7

    invoke-virtual {p0, v5, p1}, Lorg/c/a/a/c/d/a/a;->a(Lorg/c/a/a/d/c;Z)V

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-nez v0, :cond_49

    goto :goto_4f

    :cond_a7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v8

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->d()I

    move-result v9

    if-ge v8, v9, :cond_99

    invoke-virtual {v5, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_99

    :cond_bb
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/d/c;

    invoke-virtual {p0, v0, p1}, Lorg/c/a/a/c/d/a/a;->a(Lorg/c/a/a/d/c;Z)V

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-nez v0, :cond_57

    goto :goto_5d

    :cond_c9
    iget v0, p0, Lorg/c/a/a/c/d/a/a;->e:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d4
    :goto_d4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f9

    invoke-virtual {v4}, Lorg/c/a/a/c/d/a/b;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_de
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_115

    :goto_e4
    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-lez v0, :cond_f2

    invoke-virtual {v4}, Lorg/c/a/a/c/d/a/b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ec
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_144

    :cond_f2
    :goto_f2
    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-eq v1, v0, :cond_62

    move v2, v3

    goto/16 :goto_62

    :cond_f9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->b()I

    move-result v7

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v8

    if-ge v7, v8, :cond_d4

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->f()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/c/a/a/c/d/a/b;->a(I)Lorg/c/a/a/d/c;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    :cond_115
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/d/c;

    invoke-virtual {v5}, Lorg/c/a/a/d/c;->clear()V

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_122
    :goto_122
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_130

    invoke-virtual {p0, v5, p1}, Lorg/c/a/a/c/d/a/a;->b(Lorg/c/a/a/d/c;Z)V

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-nez v0, :cond_de

    goto :goto_e4

    :cond_130
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v8

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->d()I

    move-result v9

    if-le v8, v9, :cond_122

    invoke-virtual {v5, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_122

    :cond_144
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/d/c;

    invoke-virtual {p0, v0, p1}, Lorg/c/a/a/c/d/a/a;->b(Lorg/c/a/a/d/c;Z)V

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-nez v0, :cond_ec

    goto :goto_f2
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

    :goto_7
    if-nez v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->a()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/c/a/a/d/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    invoke-virtual {p1}, Lorg/c/a/a/c/d/c/a;->b()V

    :cond_1a
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {v1}, Lorg/c/a/a/c/d/a/a;->c()Lorg/c/a/a/c/d/a/a;

    move-result-object v1

    goto :goto_7

    :cond_25
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, p1}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/d/c/a;->c()I

    move-result v0

    if-nez v0, :cond_1a

    move-object v0, v1

    goto :goto_a
.end method

.method protected b(Lorg/c/a/a/c/d/b/a;ILjava/util/List;)V
    .registers 8

    invoke-virtual {p1}, Lorg/c/a/a/c/d/b/a;->a()Lorg/c/a/a/c/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->a()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    :goto_11
    sget-boolean v0, Lorg/c/a/a/c/d/a/a;->i:Z

    if-nez v0, :cond_3d

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_26

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->d()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_3d

    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, v1}, Lorg/c/a/a/b/b/d;->a(Lorg/c/a/a/b/b/f;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/d/c/a;->c()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    goto :goto_11

    :cond_3d
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

    :goto_3
    iget v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-lez v1, :cond_b

    iget v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-lt v1, v0, :cond_c

    :cond_b
    return-void

    :cond_c
    iget v1, p0, Lorg/c/a/a/c/d/a/a;->h:I

    invoke-virtual {p1}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v1

    goto :goto_3

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0, p2}, Lorg/c/a/a/b/b/d;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/c/d/a/a;->h:I

    if-nez v0, :cond_12

    move v0, v1

    goto :goto_3
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

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->d()I

    move-result v2

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v3

    if-le v2, v3, :cond_9

    iget v2, p0, Lorg/c/a/a/c/d/a/a;->f:I

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->d()I

    move-result v3

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->e()I

    move-result v0

    sub-int v0, v3, v0

    add-int/2addr v0, v2

    iput v0, p0, Lorg/c/a/a/c/d/a/a;->f:I

    goto :goto_9
.end method

.method protected g()V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/d;->a()V

    goto :goto_6
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

    if-nez v0, :cond_38

    const-string v0, "undefined"

    :goto_1d
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

    :cond_38
    iget-object v0, p0, Lorg/c/a/a/c/d/a/a;->b:Lorg/c/a/a/b/b/c;

    invoke-virtual {v0}, Lorg/c/a/a/b/b/c;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1d
.end method
