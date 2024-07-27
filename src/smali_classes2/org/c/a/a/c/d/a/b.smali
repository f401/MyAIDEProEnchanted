.class public Lorg/c/a/a/c/d/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# instance fields
.field protected a:[Lorg/c/a/a/d/c;

.field protected b:I

.field final c:Lorg/c/a/a/c/d/a/a;


# direct methods
.method protected constructor <init>(Lorg/c/a/a/c/d/a/a;)V
    .registers 3

    iput-object p1, p0, Lorg/c/a/a/c/d/a/b;->c:Lorg/c/a/a/c/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15

    new-array v0, v0, [Lorg/c/a/a/d/c;

    iput-object v0, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/d/c;
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    iget v1, p0, Lorg/c/a/a/c/d/a/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/c/a/a/c/d/a/b;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    array-length v1, v1

    :goto_0
    iget v2, p0, Lorg/c/a/a/c/d/a/b;->b:I

    if-ge v2, v1, :cond_0

    iget-object v2, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    iget v3, p0, Lorg/c/a/a/c/d/a/b;->b:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget v2, p0, Lorg/c/a/a/c/d/a/b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/c/a/a/c/d/a/b;->b:I

    goto :goto_0
.end method

.method public a(I)Lorg/c/a/a/d/c;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/d/a/b;->b(I)V

    iget-object v0, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    new-instance v0, Lorg/c/a/a/d/c;

    iget-object v2, p0, Lorg/c/a/a/c/d/a/b;->c:Lorg/c/a/a/c/d/a/a;

    iget-object v2, v2, Lorg/c/a/a/c/d/a/a;->a:Lorg/c/a/a/d/c;

    invoke-virtual {v2}, Lorg/c/a/a/d/c;->size()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/c/a/a/d/c;-><init>(I)V

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method protected b(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    add-int/lit8 v0, p1, 0xa

    new-array v0, v0, [Lorg/c/a/a/d/c;

    iget-object v1, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    iget-object v2, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    :cond_0
    return-void
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/d/a/b;->b:I

    iget-object v1, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    array-length v0, v0

    const/4 v1, 0x0

    iput v1, p0, Lorg/c/a/a/c/d/a/b;->b:I

    :goto_0
    iget v1, p0, Lorg/c/a/a/c/d/a/b;->b:I

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lorg/c/a/a/c/d/a/b;->a:[Lorg/c/a/a/d/c;

    iget v2, p0, Lorg/c/a/a/c/d/a/b;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    iget v1, p0, Lorg/c/a/a/c/d/a/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/c/a/a/c/d/a/b;->b:I

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/c/a/a/c/d/a/b;->a()Lorg/c/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 1

    return-void
.end method
