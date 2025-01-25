.class public Lcom/a/b/g/q;
.super Lcom/a/b/g/j;


# instance fields
.field private final a:Lcom/a/b/g/n;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    new-instance v0, Lcom/a/b/g/n;

    invoke-direct {v0, p1}, Lcom/a/b/g/n;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    return-void
.end method

.method public constructor <init>(Lcom/a/b/g/q;)V
    .registers 5

    invoke-virtual {p1}, Lcom/a/b/g/q;->d_()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/b/g/j;-><init>(I)V

    iget-object v0, p1, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->f()Lcom/a/b/g/n;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    invoke-virtual {p1}, Lcom/a/b/g/q;->d_()I

    move-result v1

    const/4 v0, 0x0

    :goto_14
    if-lt v0, v1, :cond_17

    return-void

    :cond_17
    invoke-virtual {p1, v0}, Lcom/a/b/g/q;->e(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {p0, v0, v2}, Lcom/a/b/g/q;->a(ILjava/lang/Object;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/a/b/g/n;->b(II)V

    return-void
.end method

.method private a(II)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    sub-int v2, p1, v1

    if-le v0, v2, :cond_11

    iget-object v0, p0, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    invoke-virtual {v0, p1, p2}, Lcom/a/b/g/n;->b(II)V

    return-void

    :cond_11
    iget-object v2, p0, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/a/b/g/n;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private e()V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/g/q;->d_()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-lt v1, v2, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0, v1}, Lcom/a/b/g/q;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/p;

    if-eqz v0, :cond_1a

    iget-object v3, p0, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    invoke-interface {v0}, Lcom/a/b/g/p;->a()I

    move-result v0

    invoke-virtual {v3, v0, v1}, Lcom/a/b/g/n;->b(II)V

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method


# virtual methods
.method protected a(ILcom/a/b/g/p;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/a/b/g/q;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/g/p;

    invoke-virtual {p0, p1, p2}, Lcom/a/b/g/q;->a(ILjava/lang/Object;)V

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/a/b/g/p;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/b/g/q;->a(I)V

    :cond_12
    if-eqz p2, :cond_1b

    invoke-interface {p2}, Lcom/a/b/g/p;->a()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/a/b/g/q;->a(II)V

    :cond_1b
    return-void
.end method

.method public final c(I)I
    .registers 3

    iget-object v0, p0, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    invoke-virtual {v0, p1}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    goto :goto_9
.end method

.method public i()V
    .registers 1

    invoke-super {p0}, Lcom/a/b/g/j;->i()V

    invoke-direct {p0}, Lcom/a/b/g/q;->e()V

    return-void
.end method

.method public final j()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_12

    iget-object v1, p0, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    invoke-virtual {v1, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v1

    if-ltz v1, :cond_1a

    :cond_12
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/a/b/g/q;->a:Lcom/a/b/g/n;

    invoke-virtual {v1, v0}, Lcom/a/b/g/n;->e(I)V

    return v0

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method
