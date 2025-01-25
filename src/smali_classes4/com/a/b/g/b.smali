.class public Lcom/a/b/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/g/o;


# instance fields
.field a:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/a/b/g/d;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/g/b;->a:[I

    return-void
.end method

.method private c(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/b/g/b;->a:[I

    invoke-static {v0}, Lcom/a/b/g/d;->a([I)I

    move-result v0

    if-lt p1, v0, :cond_25

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/a/b/g/b;->a:[I

    invoke-static {v1}, Lcom/a/b/g/d;->a([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/a/b/g/d;->a(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/g/b;->a:[I

    iget-object v2, p0, Lcom/a/b/g/b;->a:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/a/b/g/b;->a:[I

    :cond_25
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/g/b;->a:[I

    invoke-static {v0}, Lcom/a/b/g/d;->c([I)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/a/b/g/b;->c(I)V

    iget-object v0, p0, Lcom/a/b/g/b;->a:[I

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/a/b/g/d;->a([IIZ)V

    return-void
.end method

.method public a(Lcom/a/b/g/o;)V
    .registers 6

    instance-of v0, p1, Lcom/a/b/g/b;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/a/b/g/b;

    iget-object v0, p1, Lcom/a/b/g/b;->a:[I

    invoke-static {v0}, Lcom/a/b/g/d;->a([I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/b/g/b;->c(I)V

    iget-object v0, p0, Lcom/a/b/g/b;->a:[I

    iget-object v1, p1, Lcom/a/b/g/b;->a:[I

    invoke-static {v0, v1}, Lcom/a/b/g/d;->a([I[I)V

    :cond_18
    return-void

    :cond_19
    instance-of v0, p1, Lcom/a/b/g/r;

    if-eqz v0, :cond_4a

    check-cast p1, Lcom/a/b/g/r;

    iget-object v0, p1, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/g/n;->b()I

    move-result v0

    if-lez v0, :cond_32

    iget-object v1, p1, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/b/g/b;->c(I)V

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iget-object v1, p1, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v1}, Lcom/a/b/g/n;->b()I

    move-result v1

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lcom/a/b/g/b;->a:[I

    iget-object v2, p1, Lcom/a/b/g/r;->a:Lcom/a/b/g/n;

    invoke-virtual {v2, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/a/b/g/d;->a([IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_4a
    invoke-interface {p1}, Lcom/a/b/g/o;->b()Lcom/a/b/g/m;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Lcom/a/b/g/m;->a()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Lcom/a/b/g/m;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/a/b/g/b;->a(I)V

    goto :goto_4e
.end method

.method public b()Lcom/a/b/g/m;
    .registers 2

    new-instance v0, Lcom/a/b/g/c;

    invoke-direct {v0, p0}, Lcom/a/b/g/c;-><init>(Lcom/a/b/g/b;)V

    return-object v0
.end method

.method public b(I)Z
    .registers 3

    iget-object v0, p0, Lcom/a/b/g/b;->a:[I

    invoke-static {v0}, Lcom/a/b/g/d;->a([I)I

    move-result v0

    if-ge p1, v0, :cond_12

    iget-object v0, p0, Lcom/a/b/g/b;->a:[I

    invoke-static {v0, p1}, Lcom/a/b/g/d;->a([II)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x7b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/a/b/g/b;->a:[I

    invoke-static {v2, v1}, Lcom/a/b/g/d;->d([II)I

    move-result v2

    :goto_12
    if-gez v2, :cond_1e

    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    if-nez v0, :cond_25

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/g/b;->a:[I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/a/b/g/d;->d([II)I

    move-result v2

    move v0, v1

    goto :goto_12
.end method
