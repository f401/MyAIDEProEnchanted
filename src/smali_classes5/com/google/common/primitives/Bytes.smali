.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([BBII)I
    .registers 5

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([BBII)I
    .registers 5

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([B)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 233
    array-length v0, p0

    if-nez v0, :cond_8

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 236
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([B)V

    goto :goto_7
.end method

.method public static varargs concat([[B)[B
    .registers 8

    const/4 v1, 0x0

    .line 160
    .line 161
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v4, p0, v2

    .line 162
    array-length v4, v4

    add-int/2addr v0, v4

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 164
    :cond_d
    new-array v3, v0, [B

    .line 166
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_12
    if-ge v2, v4, :cond_1f

    aget-object v5, p0, v2

    .line 167
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    array-length v5, v5

    add-int/2addr v0, v5

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 170
    :cond_1f
    return-object v3
.end method

.method public static contains([BB)Z
    .registers 6

    const/4 v0, 0x0

    .line 71
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_a

    aget-byte v3, p0, v1

    .line 72
    if-ne v3, p1, :cond_b

    .line 73
    const/4 v0, 0x1

    .line 76
    :cond_a
    return v0

    .line 71
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static ensureCapacity([BII)[B
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 188
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 189
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    :cond_1a
    return-object p0

    :cond_1b
    move v0, v2

    .line 187
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 188
    goto :goto_c
.end method

.method public static hashCode(B)I
    .registers 1

    .line 60
    return p0
.end method

.method public static indexOf([BB)I
    .registers 4

    .line 88
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static indexOf([BBII)I
    .registers 6

    .line 93
    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_b

    .line 94
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 98
    :goto_7
    return v0

    .line 93
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_b
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static indexOf([B[B)I
    .registers 7

    const/4 v1, 0x0

    .line 112
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    array-length v0, p1

    if-nez v0, :cond_f

    .line 127
    :goto_e
    return v1

    :cond_f
    move v0, v1

    .line 119
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    move v2, v1

    .line 120
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_29

    .line 121
    add-int v3, v0, v2

    aget-byte v3, p0, v3

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_26

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 120
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    move v1, v0

    .line 125
    goto :goto_e

    .line 127
    :cond_2b
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public static lastIndexOf([BB)I
    .registers 4

    .line 139
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([BBII)I
    .registers 6

    .line 144
    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-lt v0, p2, :cond_c

    .line 145
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 149
    :goto_8
    return v0

    .line 144
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 149
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static reverse([B)V
    .registers 3

    .line 375
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Bytes;->reverse([BII)V

    .line 377
    return-void
.end method

.method public static reverse([BII)V
    .registers 6

    .line 390
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 392
    add-int/lit8 v0, p2, -0x1

    :goto_9
    if-ge p1, v0, :cond_18

    .line 393
    aget-byte v1, p0, p1

    .line 394
    aget-byte v2, p0, v0

    aput-byte v2, p0, p1

    .line 395
    aput-byte v1, p0, v0

    .line 392
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 397
    :cond_18
    return-void
.end method

.method public static toArray(Ljava/util/Collection;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[B"
        }
    .end annotation

    .line 206
    instance-of v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    if-eqz v0, :cond_b

    .line 207
    check-cast p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->toByteArray()[B

    move-result-object v0

    .line 217
    :goto_a
    return-object v0

    .line 210
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 211
    array-length v4, v3

    .line 212
    new-array v1, v4, [B

    .line 213
    const/4 v0, 0x0

    move v2, v0

    :goto_14
    if-ge v2, v4, :cond_28

    .line 215
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    aput-byte v0, v1, v2

    .line 213
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_28
    move-object v0, v1

    .line 217
    goto :goto_a
.end method
