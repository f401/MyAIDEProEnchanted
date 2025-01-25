.class public final Landroidj/support/v4/util/CircularIntArray;
.super Ljava/lang/Object;


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[I

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroidj/support/v4/util/CircularIntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/high16 v0, 0x40000000  # 2.0f

    if-le p1, v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be <= 2^30"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-eq v0, v1, :cond_28

    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 p1, v0, 0x1

    :cond_28
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroidj/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    new-array v0, p1, [I

    iput-object v0, p0, Landroidj/support/v4/util/CircularIntArray;->mElements:[I

    return-void
.end method

.method private doubleCapacity()V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Landroidj/support/v4/util/CircularIntArray;->mElements:[I

    array-length v0, v0

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    sub-int v1, v0, v1

    shl-int/lit8 v2, v0, 0x1

    if-gez v2, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Max array capacity exceeded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-array v3, v2, [I

    iget-object v4, p0, Landroidj/support/v4/util/CircularIntArray;->mElements:[I

    iget v5, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    invoke-static {v4, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidj/support/v4/util/CircularIntArray;->mElements:[I

    iget v5, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    invoke-static {v4, v6, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Landroidj/support/v4/util/CircularIntArray;->mElements:[I

    iput v6, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    iput v0, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Landroidj/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    return-void
.end method


# virtual methods
.method public addFirst(I)V
    .registers 4

    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    iget-object v0, p0, Landroidj/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    aput p1, v0, v1

    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_18

    invoke-direct {p0}, Landroidj/support/v4/util/CircularIntArray;->doubleCapacity()V

    :cond_18
    return-void
.end method

.method public addLast(I)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    aput p1, v0, v1

    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    if-ne v0, v1, :cond_18

    invoke-direct {p0}, Landroidj/support/v4/util/CircularIntArray;->doubleCapacity()V

    :cond_18
    return-void
.end method

.method public clear()V
    .registers 2

    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    iput v0, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    return-void
.end method

.method public get(I)I
    .registers 5

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroidj/support/v4/util/CircularIntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    add-int/2addr v1, p1

    iget v2, p0, Landroidj/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public getFirst()I
    .registers 3

    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    aget v0, v0, v1

    return v0
.end method

.method public getLast()I
    .registers 4

    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroidj/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public popFirst()I
    .registers 4

    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    aget v0, v0, v1

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidj/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    iput v1, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    return v0
.end method

.method public popLast()I
    .registers 3

    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Landroidj/support/v4/util/CircularIntArray;->mElements:[I

    aget v1, v1, v0

    iput v0, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    return v1
.end method

.method public removeFromEnd(I)V
    .registers 4

    if-gtz p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroidj/support/v4/util/CircularIntArray;->size()I

    move-result v0

    if-le p1, v0, :cond_f

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_f
    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    sub-int/2addr v0, p1

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    goto :goto_2
.end method

.method public removeFromStart(I)V
    .registers 4

    if-gtz p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroidj/support/v4/util/CircularIntArray;->size()I

    move-result v0

    if-le p1, v0, :cond_f

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_f
    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    add-int/2addr v0, p1

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    goto :goto_2
.end method

.method public size()I
    .registers 3

    iget v0, p0, Landroidj/support/v4/util/CircularIntArray;->mTail:I

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mHead:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidj/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    return v0
.end method
