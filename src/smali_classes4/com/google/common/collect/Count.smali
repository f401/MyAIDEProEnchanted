.class final Lcom/google/common/collect/Count;
.super Ljava/lang/Object;
.source "Count.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private value:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    .line 32
    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 3

    .line 39
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/Count;->value:I

    .line 40
    return-void
.end method

.method public addAndGet(I)I
    .registers 3

    .line 43
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 63
    instance-of v0, p1, Lcom/google/common/collect/Count;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/common/collect/Count;

    iget v0, p1, Lcom/google/common/collect/Count;->value:I

    iget v1, p0, Lcom/google/common/collect/Count;->value:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public get()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public getAndSet(I)I
    .registers 3

    .line 51
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    .line 52
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    .line 53
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public set(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 68
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
