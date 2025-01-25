.class public La/b/c/r;
.super Ljava/lang/Object;


# instance fields
.field private a:La/b/k;


# direct methods
.method public constructor <init>(La/b/k;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/r;->a:La/b/k;

    return-void
.end method

.method private c(La/b/d;)I
    .registers 6

    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget v0, v0, La/b/k;->i:I

    iget-object v1, p0, La/b/c/r;->a:La/b/k;

    iget-object v1, v1, La/b/k;->j:[La/b/l;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_18

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v0, v2

    goto :goto_18

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    :goto_18
    return v0
.end method

.method private c(La/b/j;)I
    .registers 6

    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget v0, v0, La/b/k;->k:I

    iget-object v1, p0, La/b/c/r;->a:La/b/k;

    iget-object v1, v1, La/b/k;->l:[La/b/n;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_18

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v0, v2

    goto :goto_18

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    :goto_18
    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 6

    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget v0, v0, La/b/k;->g:I

    iget-object v1, p0, La/b/c/r;->a:La/b/k;

    iget-object v1, v1, La/b/k;->h:[I

    array-length v2, v1

    if-gt v2, v0, :cond_1f

    iget-object v2, p0, La/b/c/r;->a:La/b/k;

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [I

    iput-object v3, v2, La/b/k;->h:[I

    iget-object v2, p0, La/b/c/r;->a:La/b/k;

    iget-object v2, v2, La/b/k;->h:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget-object v1, v0, La/b/k;->h:[I

    :cond_1f
    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget v2, v0, La/b/k;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, La/b/k;->g:I

    aput p1, v1, v2

    return-void
.end method

.method public a(La/b/d;)V
    .registers 6

    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget v0, v0, La/b/k;->i:I

    iget-object v1, p0, La/b/c/r;->a:La/b/k;

    iget-object v1, v1, La/b/k;->j:[La/b/l;

    array-length v2, v1

    if-gt v2, v0, :cond_1f

    iget-object v2, p0, La/b/c/r;->a:La/b/k;

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [La/b/l;

    iput-object v3, v2, La/b/k;->j:[La/b/l;

    iget-object v2, p0, La/b/c/r;->a:La/b/k;

    iget-object v2, v2, La/b/k;->j:[La/b/l;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget-object v1, v0, La/b/k;->j:[La/b/l;

    :cond_1f
    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget v2, v0, La/b/k;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, La/b/k;->i:I

    aput-object p1, v1, v2

    return-void
.end method

.method public a(La/b/j;)V
    .registers 6

    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget v0, v0, La/b/k;->k:I

    iget-object v1, p0, La/b/c/r;->a:La/b/k;

    iget-object v1, v1, La/b/k;->l:[La/b/n;

    array-length v2, v1

    if-gt v2, v0, :cond_1f

    iget-object v2, p0, La/b/c/r;->a:La/b/k;

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [La/b/n;

    iput-object v3, v2, La/b/k;->l:[La/b/n;

    iget-object v2, p0, La/b/c/r;->a:La/b/k;

    iget-object v2, v2, La/b/k;->l:[La/b/n;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget-object v1, v0, La/b/k;->l:[La/b/n;

    :cond_1f
    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget v2, v0, La/b/k;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, La/b/k;->k:I

    aput-object p1, v1, v2

    return-void
.end method

.method public b(La/b/d;)V
    .registers 5

    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget v0, v0, La/b/k;->i:I

    iget-object v1, p0, La/b/c/r;->a:La/b/k;

    iget-object v1, v1, La/b/k;->j:[La/b/l;

    invoke-direct {p0, p1}, La/b/c/r;->c(La/b/d;)I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, La/b/c/r;->a:La/b/k;

    iget v0, p1, La/b/k;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, La/b/k;->i:I

    const/4 p1, 0x0

    aput-object p1, v1, v0

    return-void
.end method

.method public b(La/b/j;)V
    .registers 5

    iget-object v0, p0, La/b/c/r;->a:La/b/k;

    iget v0, v0, La/b/k;->k:I

    iget-object v1, p0, La/b/c/r;->a:La/b/k;

    iget-object v1, v1, La/b/k;->l:[La/b/n;

    invoke-direct {p0, p1}, La/b/c/r;->c(La/b/j;)I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, La/b/c/r;->a:La/b/k;

    iget v0, p1, La/b/k;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, La/b/k;->k:I

    const/4 p1, 0x0

    aput-object p1, v1, v0

    return-void
.end method
