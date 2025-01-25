.class public Lorg/c/a/a/d/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:[Ljava/lang/Object;

.field protected b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/d/e;->b:I

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/d/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    iget v0, p1, Lorg/c/a/a/d/e;->b:I

    iput v0, p0, Lorg/c/a/a/d/e;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/d/e;->b:I

    return v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lorg/c/a/a/d/e;->b:I

    iget-object v1, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    :cond_19
    iget-object v0, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    iget v1, p0, Lorg/c/a/a/d/e;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/c/a/a/d/e;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lorg/c/a/a/d/e;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_c

    iget-object v1, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v1, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    aput-object p2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4
.end method

.method public a(Lorg/c/a/a/d/e;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p1, Lorg/c/a/a/d/e;->b:I

    if-ge v0, v1, :cond_e

    iget v0, p1, Lorg/c/a/a/d/e;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    :cond_e
    iget-object v0, p1, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    iget v2, p1, Lorg/c/a/a/d/e;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/c/a/a/d/e;->b:I

    iput v0, p0, Lorg/c/a/a/d/e;->b:I

    return-void
.end method

.method public b()Z
    .registers 2

    iget v0, p0, Lorg/c/a/a/d/e;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    iget v1, p0, Lorg/c/a/a/d/e;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/c/a/a/d/e;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    iget v2, p0, Lorg/c/a/a/d/e;->b:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    iget v1, p0, Lorg/c/a/a/d/e;->b:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Stack{head="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/c/a/a/d/e;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", elements=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/c/a/a/d/e;->b:I

    if-lez v0, :cond_22

    iget-object v0, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1e
    iget v2, p0, Lorg/c/a/a/d/e;->b:I

    if-lt v0, v2, :cond_2c

    :cond_22
    const-string v0, "]}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/c/a/a/d/e;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method
