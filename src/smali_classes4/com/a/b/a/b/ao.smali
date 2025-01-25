.class public final Lcom/a/b/a/b/ao;
.super Lcom/a/b/g/t;


# instance fields
.field private final a:Lcom/a/b/g/n;

.field private final b:Lcom/a/b/g/n;

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/b/g/t;-><init>(Z)V

    new-instance v0, Lcom/a/b/g/n;

    invoke-direct {v0, p1}, Lcom/a/b/g/n;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/a/b/ao;->a:Lcom/a/b/g/n;

    new-instance v0, Lcom/a/b/g/n;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Lcom/a/b/g/n;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    iput p1, p0, Lcom/a/b/a/b/ao;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/ao;->c:I

    return v0
.end method

.method public a(I)I
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/ao;->a:Lcom/a/b/g/n;

    invoke-virtual {v0, p1}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    return v0
.end method

.method public a(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/a/b/ao;->l()V

    if-gez p2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/a/b/a/b/ao;->a:Lcom/a/b/g/n;

    invoke-virtual {v0, p1}, Lcom/a/b/g/n;->c(I)V

    iget-object v0, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    invoke-virtual {v0, p2}, Lcom/a/b/g/n;->c(I)V

    return-void
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    iget v1, p0, Lcom/a/b/a/b/ao;->c:I

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    return v0
.end method

.method public b(I)I
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    invoke-virtual {v0, p1}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    return v0
.end method

.method public c(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/a/b/ao;->l()V

    if-gez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    iget v1, p0, Lcom/a/b/a/b/ao;->c:I

    if-eq v0, v1, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "non-default elements not all set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    invoke-virtual {v0, p1}, Lcom/a/b/g/n;->c(I)V

    return-void
.end method

.method public c_()V
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ao;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->c_()V

    iget-object v0, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->c_()V

    invoke-super {p0}, Lcom/a/b/g/t;->c_()V

    return-void
.end method

.method public d()Lcom/a/b/g/n;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    return-object v0
.end method

.method public e()Lcom/a/b/g/n;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ao;->a:Lcom/a/b/g/n;

    return-object v0
.end method

.method public f()V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/a/b/a/b/ao;->l()V

    iget v3, p0, Lcom/a/b/a/b/ao;->c:I

    iget-object v0, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incomplete instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    invoke-virtual {v0, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v4

    move v0, v1

    move v2, v1

    :goto_20
    if-lt v2, v3, :cond_38

    if-eq v0, v3, :cond_37

    iget-object v1, p0, Lcom/a/b/a/b/ao;->a:Lcom/a/b/g/n;

    invoke-virtual {v1, v0}, Lcom/a/b/g/n;->e(I)V

    iget-object v1, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    invoke-virtual {v1, v0, v4}, Lcom/a/b/g/n;->b(II)V

    iget-object v1, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/a/b/g/n;->e(I)V

    iput v0, p0, Lcom/a/b/a/b/ao;->c:I

    :cond_37
    return-void

    :cond_38
    iget-object v1, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    invoke-virtual {v1, v2}, Lcom/a/b/g/n;->b(I)I

    move-result v1

    if-eq v1, v4, :cond_54

    if-eq v2, v0, :cond_52

    iget-object v5, p0, Lcom/a/b/a/b/ao;->b:Lcom/a/b/g/n;

    invoke-virtual {v5, v0, v1}, Lcom/a/b/g/n;->b(II)V

    iget-object v1, p0, Lcom/a/b/a/b/ao;->a:Lcom/a/b/g/n;

    iget-object v5, p0, Lcom/a/b/a/b/ao;->a:Lcom/a/b/g/n;

    invoke-virtual {v5, v2}, Lcom/a/b/g/n;->b(I)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Lcom/a/b/g/n;->b(II)V

    :cond_52
    add-int/lit8 v0, v0, 0x1

    :cond_54
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_20
.end method
