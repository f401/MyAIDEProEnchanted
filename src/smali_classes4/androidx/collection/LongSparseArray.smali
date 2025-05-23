.class public Landroidx/collection/LongSparseArray;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-nez p1, :cond_11

    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    :goto_10
    return-void

    :cond_11
    invoke-static {p1}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_10
.end method

.method private gc()V
    .registers 11

    const/4 v1, 0x0

    iget v3, p0, Landroidx/collection/LongSparseArray;->mSize:I

    iget-object v4, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v0, v1

    move v2, v1

    :goto_9
    if-ge v2, v3, :cond_21

    aget-object v6, v5, v2

    sget-object v7, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    if-eq v2, v0, :cond_1c

    aget-wide v8, v4, v2

    aput-wide v8, v4, v0

    aput-object v6, v5, v0

    const/4 v6, 0x0

    aput-object v6, v5, v2

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    iput-boolean v1, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    iput v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    if-eqz v0, :cond_13

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_13

    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_12
    return-void

    :cond_13
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_21

    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_21

    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_21
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_42

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    new-array v2, v1, [J

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v4, v3

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iput-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    :cond_42
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    goto :goto_12
.end method

.method public clear()V
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Landroidx/collection/LongSparseArray;->mSize:I

    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_e

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    iput v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    iput-boolean v1, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    return-void
.end method

.method public clone()Landroidx/collection/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongSparseArray;

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(J)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public delete(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_12

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v2, v3, :cond_13

    :cond_12
    :goto_12
    return-object p3

    :cond_13
    aget-object p3, v1, v0

    goto :goto_12
.end method

.method public indexOfKey(J)I
    .registers 6

    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    :goto_12
    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public keyAt(I)J
    .registers 4

    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_10

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    :goto_f
    return-void

    :cond_10
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aput-wide p1, v2, v0

    aput-object p3, v1, v0

    goto :goto_f

    :cond_25
    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_3d

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3d

    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_3d
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_5e

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    new-array v2, v1, [J

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v4, v3

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iput-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    :cond_5e
    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_74

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/LongSparseArray;->mSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_74
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    goto :goto_f
.end method

.method public putAll(Landroidx/collection/LongSparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_15

    invoke-virtual {p1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_15
    return-void
.end method

.method public putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_9
    return-object v0
.end method

.method public remove(J)V
    .registers 8

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_17

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_17

    aput-object v3, v1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    :cond_17
    return-void
.end method

.method public remove(JLjava/lang/Object;)Z
    .registers 7

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_19

    invoke-virtual {p0, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p3, v1, :cond_14

    if-eqz p3, :cond_19

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_14
    invoke-virtual {p0, v0}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public removeAt(I)V
    .registers 5

    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_d

    aput-object v2, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    :cond_d
    return-void
.end method

.method public replace(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_d

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v2, v1

    aput-object p3, v2, v1

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public replace(JLjava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eq v1, p3, :cond_14

    if-eqz p3, :cond_1a

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_14
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p4, v1, v0

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2

    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_7
    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_9

    const-string v0, "{}"

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/collection/LongSparseArray;->mSize:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_18
    iget v2, p0, Landroidx/collection/LongSparseArray;->mSize:I

    if-ge v0, v2, :cond_41

    if-lez v0, :cond_23

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_3b
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_41
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
