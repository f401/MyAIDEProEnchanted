.class public Lcom/a/b/c/b/v;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:I

.field private c:Lcom/a/b/e/b/z;

.field private d:[I

.field private final e:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    iput v1, p0, Lcom/a/b/c/b/v;->b:I

    iput-object v2, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    iput-object v2, p0, Lcom/a/b/c/b/v;->d:[I

    iput v1, p0, Lcom/a/b/c/b/v;->e:I

    return-void
.end method

.method private static a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;
    .registers 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private a(II)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/c/b/v;->d:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/a/b/c/b/v;->e:I

    if-ne p1, v2, :cond_2

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/a/b/c/b/v;->e:I

    if-ge p1, v2, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/a/b/c/b/v;->d:[I

    array-length v2, v2

    if-lt p2, v2, :cond_0

    :cond_4
    add-int/lit8 v2, p2, 0x1

    new-instance v3, Lcom/a/b/e/b/z;

    invoke-direct {v3, v2}, Lcom/a/b/e/b/z;-><init>(I)V

    new-array v2, v2, [I

    const/4 v4, -0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    invoke-virtual {v3, v0}, Lcom/a/b/e/b/z;->a(Lcom/a/b/e/b/z;)V

    iget-object v0, p0, Lcom/a/b/c/b/v;->d:[I

    iget-object v4, p0, Lcom/a/b/c/b/v;->d:[I

    array-length v4, v4

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iput-object v3, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    iput-object v2, p0, Lcom/a/b/c/b/v;->d:[I

    goto :goto_1
.end method

.method private a(ILcom/a/b/c/b/t;Lcom/a/b/e/b/u;)V
    .registers 7

    invoke-virtual {p3}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/a/b/c/b/u;

    invoke-direct {v2, p1, p2, p3}, Lcom/a/b/c/b/u;-><init>(ILcom/a/b/c/b/t;Lcom/a/b/e/b/u;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/b/c/b/t;->a:Lcom/a/b/c/b/t;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    invoke-virtual {v1, p3}, Lcom/a/b/e/b/z;->d(Lcom/a/b/e/b/u;)V

    iget-object v1, p0, Lcom/a/b/c/b/v;->d:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    invoke-virtual {v1, p3}, Lcom/a/b/e/b/z;->c(Lcom/a/b/e/b/u;)V

    iget-object v1, p0, Lcom/a/b/c/b/v;->d:[I

    iget-object v2, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    goto :goto_0
.end method

.method private b(ILcom/a/b/c/b/t;Lcom/a/b/e/b/u;)V
    .registers 7

    sget-object v0, Lcom/a/b/c/b/t;->a:Lcom/a/b/c/b/t;

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/b/v;->d:[I

    aget v1, v1, v0

    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/u;

    invoke-virtual {v0}, Lcom/a/b/c/b/u;->a()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v0}, Lcom/a/b/c/b/u;->h()Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/a/b/e/b/u;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Lcom/a/b/c/b/u;->a(Lcom/a/b/c/b/t;)Lcom/a/b/c/b/u;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    invoke-virtual {v0, p3}, Lcom/a/b/e/b/z;->c(Lcom/a/b/e/b/u;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p3, p2}, Lcom/a/b/c/b/v;->a(ILcom/a/b/e/b/u;Lcom/a/b/c/b/t;)V

    goto :goto_0
.end method

.method private c(ILcom/a/b/e/b/u;)Z
    .registers 9

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-gez v3, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    invoke-virtual {v0, p2}, Lcom/a/b/e/b/z;->c(Lcom/a/b/e/b/u;)V

    iget-object v0, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/a/b/c/b/v;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/b/c/b/v;->b:I

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->g()I

    move-result v5

    add-int/lit8 v3, v3, -0x1

    move-object v0, v4

    :goto_2
    if-gez v3, :cond_5

    :goto_3
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/a/b/c/b/v;->d:[I

    aput v3, v2, v5

    invoke-virtual {v0}, Lcom/a/b/c/b/u;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    sget-object v4, Lcom/a/b/c/b/t;->b:Lcom/a/b/c/b/t;

    invoke-virtual {v0, v4}, Lcom/a/b/c/b/u;->a(Lcom/a/b/c/b/t;)Lcom/a/b/c/b/u;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v0, v1

    :goto_4
    return v0

    :cond_1
    iget-object v0, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/u;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/a/b/c/b/u;->a()I

    move-result v5

    if-eq v5, p1, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v0, p2}, Lcom/a/b/c/b/u;->a(Lcom/a/b/e/b/u;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/u;

    if-nez v0, :cond_7

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/a/b/c/b/u;->h()Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/u;->g()I

    move-result v4

    if-ne v4, v5, :cond_6

    move v2, v1

    goto :goto_3
.end method


# virtual methods
.method public a()Lcom/a/b/c/b/s;
    .registers 7

    const/4 v2, 0x0

    const v0, 0x7fffffff

    invoke-direct {p0, v0, v2}, Lcom/a/b/c/b/v;->a(II)V

    iget-object v0, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/a/b/c/b/v;->b:I

    sub-int v3, v0, v1

    if-nez v3, :cond_0

    sget-object v0, Lcom/a/b/c/b/s;->a:Lcom/a/b/c/b/s;

    :goto_0
    return-object v0

    :cond_0
    new-array v4, v3, [Lcom/a/b/c/b/u;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Lcom/a/b/c/b/s;

    invoke-direct {v0, v3}, Lcom/a/b/c/b/s;-><init>(I)V

    :goto_1
    if-lt v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/a/b/c/b/s;->c_()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/u;

    if-eqz v0, :cond_3

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    aget-object v1, v4, v2

    invoke-virtual {v0, v2, v1}, Lcom/a/b/c/b/s;->a(ILcom/a/b/c/b/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public a(ILcom/a/b/e/b/u;)V
    .registers 8

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-static {p2}, Lcom/a/b/c/b/v;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-direct {p0, p1, v1}, Lcom/a/b/c/b/v;->a(II)V

    iget-object v0, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/b/u;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    invoke-virtual {v3, v2}, Lcom/a/b/e/b/z;->b(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, Lcom/a/b/c/b/t;->d:Lcom/a/b/c/b/t;

    invoke-direct {p0, p1, v4, v3}, Lcom/a/b/c/b/v;->b(ILcom/a/b/c/b/t;Lcom/a/b/e/b/u;)V

    :cond_1
    iget-object v3, p0, Lcom/a/b/c/b/v;->d:[I

    aget v3, v3, v1

    if-eqz v0, :cond_5

    sget-object v3, Lcom/a/b/c/b/t;->c:Lcom/a/b/c/b/t;

    invoke-direct {p0, p1, v3, v0}, Lcom/a/b/c/b/v;->a(ILcom/a/b/c/b/t;Lcom/a/b/e/b/u;)V

    :cond_2
    :goto_1
    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->l()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/a/b/c/b/t;->f:Lcom/a/b/c/b/t;

    invoke-direct {p0, p1, v3, v0}, Lcom/a/b/c/b/v;->b(ILcom/a/b/c/b/t;Lcom/a/b/e/b/u;)V

    :cond_3
    invoke-virtual {v2}, Lcom/a/b/e/b/u;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/a/b/c/b/t;->e:Lcom/a/b/c/b/t;

    invoke-direct {p0, p1, v1, v0}, Lcom/a/b/c/b/v;->b(ILcom/a/b/c/b/t;Lcom/a/b/e/b/u;)V

    :cond_4
    sget-object v0, Lcom/a/b/c/b/t;->a:Lcom/a/b/c/b/t;

    invoke-direct {p0, p1, v0, v2}, Lcom/a/b/c/b/v;->a(ILcom/a/b/c/b/t;Lcom/a/b/e/b/u;)V

    goto :goto_0

    :cond_5
    if-ltz v3, :cond_2

    iget-object v0, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/u;

    invoke-virtual {v0}, Lcom/a/b/c/b/u;->a()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v0, v2}, Lcom/a/b/c/b/u;->a(Lcom/a/b/e/b/u;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/a/b/c/b/v;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/b/c/b/v;->b:I

    iget-object v0, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/z;->d(Lcom/a/b/e/b/u;)V

    iget-object v0, p0, Lcom/a/b/c/b/v;->d:[I

    const/4 v2, -0x1

    aput v2, v0, v1

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/a/b/c/b/t;->c:Lcom/a/b/c/b/t;

    invoke-virtual {v0, v4}, Lcom/a/b/c/b/u;->a(Lcom/a/b/c/b/t;)Lcom/a/b/c/b/u;

    move-result-object v0

    iget-object v4, p0, Lcom/a/b/c/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public a(ILcom/a/b/e/b/u;Lcom/a/b/c/b/t;)V
    .registers 7

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-static {p2}, Lcom/a/b/c/b/v;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/a/b/c/b/v;->a(II)V

    iget-object v2, p0, Lcom/a/b/c/b/v;->d:[I

    aget v0, v2, v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/a/b/c/b/v;->c(ILcom/a/b/e/b/u;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p3, v1}, Lcom/a/b/c/b/v;->a(ILcom/a/b/c/b/t;Lcom/a/b/e/b/u;)V

    goto :goto_0
.end method

.method public a(ILcom/a/b/e/b/z;)V
    .registers 8

    invoke-virtual {p2}, Lcom/a/b/e/b/z;->b()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, p1, v0}, Lcom/a/b/c/b/v;->a(II)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/a/b/c/b/v;->c:Lcom/a/b/e/b/z;

    invoke-virtual {v2, v0}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/a/b/e/b/z;->a(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-static {v3}, Lcom/a/b/c/b/v;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/u;

    move-result-object v3

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v3}, Lcom/a/b/c/b/v;->a(ILcom/a/b/e/b/u;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {p0, p1, v2}, Lcom/a/b/c/b/v;->b(ILcom/a/b/e/b/u;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v2}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/b/u;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/a/b/c/b/v;->b(ILcom/a/b/e/b/u;)V

    invoke-virtual {p0, p1, v3}, Lcom/a/b/c/b/v;->a(ILcom/a/b/e/b/u;)V

    goto :goto_1
.end method

.method public b(ILcom/a/b/e/b/u;)V
    .registers 4

    sget-object v0, Lcom/a/b/c/b/t;->b:Lcom/a/b/c/b/t;

    invoke-virtual {p0, p1, p2, v0}, Lcom/a/b/c/b/v;->a(ILcom/a/b/e/b/u;Lcom/a/b/c/b/t;)V

    return-void
.end method
