.class public Lcom/a/b/g/g;
.super Ljava/io/InputStream;


# instance fields
.field final a:Lcom/a/b/g/e;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/a/b/g/e;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/a/b/g/g;->a:Lcom/a/b/g/e;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v0, p0, Lcom/a/b/g/g;->b:I

    iput v0, p0, Lcom/a/b/g/g;->c:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/g/g;->a:Lcom/a/b/g/e;

    invoke-static {v0}, Lcom/a/b/g/e;->a(Lcom/a/b/g/e;)I

    move-result v0

    iget v1, p0, Lcom/a/b/g/g;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .registers 3

    iget v0, p0, Lcom/a/b/g/g;->b:I

    iput v0, p0, Lcom/a/b/g/g;->c:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 3

    iget v0, p0, Lcom/a/b/g/g;->b:I

    iget-object v1, p0, Lcom/a/b/g/g;->a:Lcom/a/b/g/e;

    invoke-static {v1}, Lcom/a/b/g/e;->a(Lcom/a/b/g/e;)I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/a/b/g/g;->a:Lcom/a/b/g/e;

    iget v1, p0, Lcom/a/b/g/g;->b:I

    invoke-static {v0, v1}, Lcom/a/b/g/e;->a(Lcom/a/b/g/e;I)I

    move-result v0

    iget v1, p0, Lcom/a/b/g/g;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/b/g/g;->b:I

    goto :goto_b
.end method

.method public read([BII)I
    .registers 7

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_8

    array-length v0, p1

    sub-int p3, v0, p2

    :cond_8
    iget-object v0, p0, Lcom/a/b/g/g;->a:Lcom/a/b/g/e;

    invoke-static {v0}, Lcom/a/b/g/e;->a(Lcom/a/b/g/e;)I

    move-result v0

    iget v1, p0, Lcom/a/b/g/g;->b:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_14

    move p3, v0

    :cond_14
    iget-object v0, p0, Lcom/a/b/g/g;->a:Lcom/a/b/g/e;

    invoke-static {v0}, Lcom/a/b/g/e;->b(Lcom/a/b/g/e;)[B

    move-result-object v0

    iget v1, p0, Lcom/a/b/g/g;->b:I

    iget-object v2, p0, Lcom/a/b/g/g;->a:Lcom/a/b/g/e;

    invoke-static {v2}, Lcom/a/b/g/e;->c(Lcom/a/b/g/e;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/a/b/g/g;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/a/b/g/g;->b:I

    return p3
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Lcom/a/b/g/g;->c:I

    iput v0, p0, Lcom/a/b/g/g;->b:I

    return-void
.end method
