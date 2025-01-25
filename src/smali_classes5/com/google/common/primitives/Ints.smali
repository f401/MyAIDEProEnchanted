.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;,
        Lcom/google/common/primitives/Ints$IntConverter;,
        Lcom/google/common/primitives/Ints$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4

.field public static final MAX_POWER_OF_TWO:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([IIII)I
    .registers 5

    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([IIII)I
    .registers 5

    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 551
    array-length v0, p0

    if-nez v0, :cond_8

    .line 552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 554
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([I)V

    goto :goto_7
.end method

.method public static checkedCast(J)I
    .registers 6

    .line 85
    long-to-int v1, p0

    .line 86
    int-to-long v2, v1

    cmp-long v0, v2, p0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_7
    const-string v2, "Out of range: %s"

    invoke-static {v0, v2, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 87
    return v1

    .line 86
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static compare(II)I
    .registers 3

    .line 121
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-le p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static varargs concat([[I)[I
    .registers 8

    const/4 v1, 0x0

    .line 278
    .line 279
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v4, p0, v2

    .line 280
    array-length v4, v4

    add-int/2addr v0, v4

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 282
    :cond_d
    new-array v3, v0, [I

    .line 284
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_12
    if-ge v2, v4, :cond_1f

    aget-object v5, p0, v2

    .line 285
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    array-length v5, v5

    add-int/2addr v0, v5

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 288
    :cond_1f
    return-object v3
.end method

.method public static constrainToRange(III)I
    .registers 5

    .line 266
    if-gt p1, p2, :cond_11

    const/4 v0, 0x1

    :goto_3
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 267
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 266
    :cond_11
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static contains([II)Z
    .registers 6

    const/4 v0, 0x0

    .line 132
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_a

    aget v3, p0, v1

    .line 133
    if-ne v3, p1, :cond_b

    .line 134
    const/4 v0, 0x1

    .line 137
    :cond_a
    return v0

    .line 132
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static ensureCapacity([III)[I
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 389
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 390
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    :cond_1a
    return-object p0

    :cond_1b
    move v0, v2

    .line 388
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 389
    goto :goto_c
.end method

.method public static fromByteArray([B)I
    .registers 7

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 318
    array-length v0, p0

    if-lt v0, v5, :cond_1c

    move v0, v1

    :goto_7
    const-string v3, "array too small: %s < %s"

    array-length v4, p0

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 319
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0

    :cond_1c
    move v0, v2

    .line 318
    goto :goto_7
.end method

.method public static fromBytes(BBBB)I
    .registers 6

    .line 329
    shl-int/lit8 v0, p0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static hashCode(I)I
    .registers 1

    .line 73
    return p0
.end method

.method public static indexOf([II)I
    .registers 4

    .line 149
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method private static indexOf([IIII)I
    .registers 6

    .line 154
    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_b

    .line 155
    aget v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 159
    :goto_7
    return v0

    .line 154
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_b
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static indexOf([I[I)I
    .registers 7

    const/4 v1, 0x0

    .line 173
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    array-length v0, p1

    if-nez v0, :cond_f

    .line 188
    :goto_e
    return v1

    :cond_f
    move v0, v1

    .line 180
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    move v2, v1

    .line 181
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_29

    .line 182
    add-int v3, v0, v2

    aget v3, p0, v3

    aget v4, p1, v2

    if-eq v3, v4, :cond_26

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 181
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    move v1, v0

    .line 186
    goto :goto_e

    .line 188
    :cond_2b
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public static varargs join(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 5

    .line 402
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    array-length v0, p1

    if-nez v0, :cond_9

    .line 404
    const-string v0, ""

    .line 413
    :goto_8
    return-object v0

    .line 408
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 409
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    const/4 v0, 0x1

    :goto_18
    array-length v2, p1

    if-ge v0, v2, :cond_26

    .line 411
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 413
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static lastIndexOf([II)I
    .registers 4

    .line 200
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([IIII)I
    .registers 6

    .line 205
    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-lt v0, p2, :cond_c

    .line 206
    aget v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 210
    :goto_8
    return v0

    .line 205
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 210
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[I>;"
        }
    .end annotation

    .line 429
    sget-object v0, Lcom/google/common/primitives/Ints$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Ints$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([I)I
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    array-length v0, p0

    if-lez v0, :cond_17

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 242
    aget v0, p0, v2

    .line 243
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 244
    aget v2, p0, v1

    if-le v2, v0, :cond_14

    .line 245
    aget v0, p0, v1

    .line 243
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    move v0, v2

    .line 241
    goto :goto_6

    .line 248
    :cond_19
    return v0
.end method

.method public static varargs min([I)I
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    array-length v0, p0

    if-lez v0, :cond_17

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 223
    aget v0, p0, v2

    .line 224
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 225
    aget v2, p0, v1

    if-ge v2, v0, :cond_14

    .line 226
    aget v0, p0, v1

    .line 224
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    move v0, v2

    .line 222
    goto :goto_6

    .line 229
    :cond_19
    return v0
.end method

.method public static reverse([I)V
    .registers 3

    .line 483
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Ints;->reverse([III)V

    .line 485
    return-void
.end method

.method public static reverse([III)V
    .registers 6

    .line 498
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 500
    add-int/lit8 v0, p2, -0x1

    :goto_9
    if-ge p1, v0, :cond_18

    .line 501
    aget v1, p0, p1

    .line 502
    aget v2, p0, v0

    aput v2, p0, p1

    .line 503
    aput v1, p0, v0

    .line 500
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 505
    :cond_18
    return-void
.end method

.method public static saturatedCast(J)I
    .registers 4

    .line 99
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    .line 100
    const v0, 0x7fffffff

    .line 105
    :goto_a
    return v0

    .line 102
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_15

    .line 103
    const/high16 v0, -0x80000000

    goto :goto_a

    .line 105
    :cond_15
    long-to-int v0, p0

    goto :goto_a
.end method

.method public static sortDescending([I)V
    .registers 3

    .line 459
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Ints;->sortDescending([III)V

    .line 461
    return-void
.end method

.method public static sortDescending([III)V
    .registers 4

    .line 470
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 472
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([III)V

    .line 473
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Ints;->reverse([III)V

    .line 474
    return-void
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 371
    sget-object v0, Lcom/google/common/primitives/Ints$IntConverter;->INSTANCE:Lcom/google/common/primitives/Ints$IntConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    .line 521
    instance-of v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v0, :cond_b

    .line 522
    check-cast p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->toIntArray()[I

    move-result-object v0

    .line 532
    :goto_a
    return-object v0

    .line 525
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 526
    array-length v4, v3

    .line 527
    new-array v1, v4, [I

    .line 528
    const/4 v0, 0x0

    move v2, v0

    :goto_14
    if-ge v2, v4, :cond_28

    .line 530
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 528
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_28
    move-object v0, v1

    .line 532
    goto :goto_a
.end method

.method public static toByteArray(I)[B
    .registers 4

    .line 301
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 705
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 8
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 730
    invoke-static {p0, p1}, Lcom/google/common/primitives/Longs;->tryParse(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_15

    .line 732
    :cond_13
    const/4 v0, 0x0

    .line 734
    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_14
.end method
