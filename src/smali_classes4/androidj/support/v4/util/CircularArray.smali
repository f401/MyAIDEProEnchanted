.class public final Landroidj/support/v4/util/CircularArray;
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

    invoke-direct {p0, v0}, Landroidj/support/v4/util/CircularArray;-><init>(I)V

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

    iput v0, p0, Landroidj/support/v4/util/CircularArray;->mCapacityBitmask:I

    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    return-void
.end method

.method private doubleCapacity()V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v1, v0

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    sub-int v2, v1, v0

    shl-int/lit8 v3, v1, 0x1

    if-gez v3, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Max array capacity exceeded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v5, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    invoke-static {v4, v5, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v5, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    invoke-static {v4, v6, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iput v6, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    iput v1, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v0, v3, -0x1

    iput v0, p0, Landroidj/support/v4/util/CircularArray;->mCapacityBitmask:I

    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    iget-object v0, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    aput-object p1, v0, v1

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    if-ne v0, v1, :cond_18

    invoke-direct {p0}, Landroidj/support/v4/util/CircularArray;->doubleCapacity()V

    :cond_18
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    aput-object p1, v0, v1

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    if-ne v0, v1, :cond_18

    invoke-direct {p0}, Landroidj/support/v4/util/CircularArray;->doubleCapacity()V

    :cond_18
    return-void
.end method

.method public clear()V
    .registers 2

    invoke-virtual {p0}, Landroidj/support/v4/util/CircularArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/util/CircularArray;->removeFromStart(I)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroidj/support/v4/util/CircularArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    add-int/2addr v1, p1

    iget v2, p0, Landroidj/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroidj/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public popFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    iget v2, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidj/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    iput v1, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    return-object v0
.end method

.method public popLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    iput v0, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    return-object v1
.end method

.method public removeFromEnd(I)V
    .registers 6

    const/4 v3, 0x0

    if-gtz p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {p0}, Landroidj/support/v4/util/CircularArray;->size()I

    move-result v0

    if-le p1, v0, :cond_10

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_10
    const/4 v0, 0x0

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    if-ge p1, v1, :cond_18

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    sub-int/2addr v0, p1

    :cond_18
    move v1, v0

    :goto_19
    iget v2, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_24
    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    sub-int v0, v1, v0

    sub-int v1, p1, v0

    iget v2, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    sub-int v0, v2, v0

    iput v0, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    if-lez v1, :cond_3

    iget-object v0, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    sub-int v1, v0, v1

    move v0, v1

    :goto_3c
    iget v2, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    if-ge v0, v2, :cond_47

    iget-object v2, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_47
    iput v1, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    goto :goto_3
.end method

.method public removeFromStart(I)V
    .registers 6

    const/4 v3, 0x0

    if-gtz p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {p0}, Landroidj/support/v4/util/CircularArray;->size()I

    move-result v0

    if-le p1, v0, :cond_10

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    sub-int v1, v0, v1

    if-ge p1, v1, :cond_1c

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    add-int/2addr v0, p1

    :cond_1c
    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    :goto_1e
    if-ge v1, v0, :cond_27

    iget-object v2, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_27
    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    iget v2, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    add-int/2addr v0, v2

    iget v2, p0, Landroidj/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v2

    iput v0, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    if-lez v1, :cond_3

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v1, :cond_40

    iget-object v2, p0, Landroidj/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_40
    iput v1, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    goto :goto_3
.end method

.method public size()I
    .registers 3

    iget v0, p0, Landroidj/support/v4/util/CircularArray;->mTail:I

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mHead:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidj/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    return v0
.end method
