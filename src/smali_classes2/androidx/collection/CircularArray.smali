.class public final Landroidx/collection/CircularArray;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroidx/collection/CircularArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v1, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 p1, v0, 0x1

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be <= 2^30"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doubleCapacity()V
    .registers 8

    const/4 v6, 0x0

    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v2, v1

    iget v3, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int v4, v2, v3

    shl-int/lit8 v5, v2, 0x1

    if-ltz v5, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v3, p0, Landroidx/collection/CircularArray;->mHead:I

    invoke-static {v1, v6, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iput v6, p0, Landroidx/collection/CircularArray;->mHead:I

    iput v2, p0, Landroidx/collection/CircularArray;->mTail:I

    add-int/lit8 v0, v5, -0x1

    iput v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Max array capacity exceeded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/collection/CircularArray;->doubleCapacity()V

    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    aput-object p1, v0, v1

    iget v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    add-int/lit8 v1, v1, 0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->mTail:I

    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/collection/CircularArray;->doubleCapacity()V

    :cond_0
    return-void
.end method

.method public clear()V
    .registers 2

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v2, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    add-int/2addr v1, p1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->mHead:I

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public popLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    iput v0, p0, Landroidx/collection/CircularArray;->mTail:I

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public removeFromEnd(I)V
    .registers 6

    const/4 v3, 0x0

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    const/4 v0, 0x0

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ge p1, v1, :cond_2

    sub-int v0, v1, p1

    :cond_2
    move v1, v0

    :goto_1
    iget v2, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sub-int v0, v2, v0

    sub-int v1, p1, v0

    sub-int v0, v2, v0

    iput v0, p0, Landroidx/collection/CircularArray;->mTail:I

    if-lez v1, :cond_0

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Landroidx/collection/CircularArray;->mTail:I

    sub-int v1, v0, v1

    move v0, v1

    :goto_2
    iget v2, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iput v1, p0, Landroidx/collection/CircularArray;->mTail:I

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public removeFromStart(I)V
    .registers 7

    const/4 v4, 0x0

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int v2, v0, v1

    if-ge p1, v2, :cond_2

    add-int v0, v1, p1

    :cond_2
    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v0, v1

    sub-int v2, p1, v0

    iget v3, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    add-int/2addr v0, v1

    and-int/2addr v0, v3

    iput v0, p0, Landroidx/collection/CircularArray;->mHead:I

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_4

    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iput v2, p0, Landroidx/collection/CircularArray;->mHead:I

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 3

    iget v0, p0, Landroidx/collection/CircularArray;->mTail:I

    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    return v0
.end method
