.class public Lcom/a/b/g/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/g/o;


# instance fields
.field final a:Lcom/a/b/g/n;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/b/g/n;

    invoke-direct {v0}, Lcom/a/b/g/n;-><init>()V

    iput-object v0, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    iget-object v0, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->g()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v0, p1}, Lcom/a/b/g/n;->g(I)I

    move-result v0

    if-gez v0, :cond_10

    iget-object v1, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v1, v0, p1}, Lcom/a/b/g/n;->c(II)V

    :cond_10
    return-void
.end method

.method public a(Lcom/a/b/g/o;)V
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/g/r;

    if-eqz v1, :cond_5f

    check-cast p1, Lcom/a/b/g/r;

    iget-object v1, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v1}, Lcom/a/b/g/n;->b()I

    move-result v3

    iget-object v1, p1, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v1}, Lcom/a/b/g/n;->b()I

    move-result v4

    move v1, v0

    move v2, v0

    :goto_15
    if-ge v2, v4, :cond_19

    if-lt v1, v3, :cond_2d

    :cond_19
    :goto_19
    if-lt v2, v4, :cond_53

    iget-object v0, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->g()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p1, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v0, v2}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/b/g/r;->a(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    :cond_2d
    if-ge v2, v4, :cond_3d

    iget-object v0, p1, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v0, v2}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    iget-object v5, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v5, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v5

    if-lt v0, v5, :cond_21

    :cond_3d
    if-eq v2, v4, :cond_19

    move v0, v1

    :goto_40
    if-ge v0, v3, :cond_8d

    iget-object v1, p1, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v1, v2}, Lcom/a/b/g/n;->b(I)I

    move-result v1

    iget-object v5, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v5, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v5

    if-lt v1, v5, :cond_8d

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_53
    iget-object v0, p1, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v0, v2}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/b/g/r;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_5f
    instance-of v1, p1, Lcom/a/b/g/b;

    if-eqz v1, :cond_7b

    check-cast p1, Lcom/a/b/g/b;

    :goto_65
    if-gez v0, :cond_6d

    iget-object v0, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->g()V

    goto :goto_20

    :cond_6d
    iget-object v1, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v1, v0}, Lcom/a/b/g/n;->c(I)V

    iget-object v1, p1, Lcom/a/b/g/b;->a:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/a/b/g/d;->d([II)I

    move-result v0

    goto :goto_65

    :cond_7b
    invoke-interface {p1}, Lcom/a/b/g/o;->b()Lcom/a/b/g/m;

    move-result-object v0

    :goto_7f
    invoke-interface {v0}, Lcom/a/b/g/m;->a()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Lcom/a/b/g/m;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/a/b/g/r;->a(I)V

    goto :goto_7f

    :cond_8d
    move v1, v0

    goto :goto_15
.end method

.method public b()Lcom/a/b/g/m;
    .registers 2

    new-instance v0, Lcom/a/b/g/s;

    invoke-direct {v0, p0}, Lcom/a/b/g/s;-><init>(Lcom/a/b/g/r;)V

    return-object v0
.end method

.method public b(I)Z
    .registers 3

    iget-object v0, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v0, p1}, Lcom/a/b/g/n;->f(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
