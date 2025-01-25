.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$AsciiDigits;,
        Lcom/google/common/primitives/Longs$LexicographicalComparator;,
        Lcom/google/common/primitives/Longs$LongArrayAsList;,
        Lcom/google/common/primitives/Longs$LongConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_POWER_OF_TWO:J = 0x4000000000000000L


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([JJII)I
    .registers 6

    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([JJII)I
    .registers 6

    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([J)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 650
    array-length v0, p0

    if-nez v0, :cond_8

    .line 651
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 653
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([J)V

    goto :goto_7
.end method

.method public static compare(JJ)I
    .registers 6

    .line 93
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static varargs concat([[J)[J
    .registers 8

    const/4 v1, 0x0

    .line 250
    .line 251
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v4, p0, v2

    .line 252
    array-length v4, v4

    add-int/2addr v0, v4

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 254
    :cond_d
    new-array v3, v0, [J

    .line 256
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_12
    if-ge v2, v4, :cond_1f

    aget-object v5, p0, v2

    .line 257
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    array-length v5, v5

    add-int/2addr v0, v5

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 260
    :cond_1f
    return-object v3
.end method

.method public static constrainToRange(JJJ)J
    .registers 12

    .line 238
    cmp-long v0, p2, p4

    if-gtz v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JJ)V

    .line 239
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 238
    :cond_15
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static contains([JJ)Z
    .registers 10

    const/4 v0, 0x0

    .line 104
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_c

    aget-wide v4, p0, v1

    .line 105
    cmp-long v3, v4, p1

    if-nez v3, :cond_d

    .line 106
    const/4 v0, 0x1

    .line 109
    :cond_c
    return v0

    .line 104
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static ensureCapacity([JII)[J
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 486
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 487
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 488
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    :cond_1a
    return-object p0

    :cond_1b
    move v0, v2

    .line 486
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 487
    goto :goto_c
.end method

.method public static fromByteArray([B)J
    .registers 9

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    array-length v0, p0

    if-lt v0, v5, :cond_29

    move v0, v1

    :goto_8
    const-string v3, "array too small: %s < %s"

    array-length v4, p0

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 297
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    const/4 v6, 0x6

    aget-byte v6, p0, v6

    const/4 v7, 0x7

    aget-byte v7, p0, v7

    invoke-static/range {v0 .. v7}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0

    :cond_29
    move v0, v2

    .line 296
    goto :goto_8
.end method

.method public static fromBytes(BBBBBBBB)J
    .registers 16

    const-wide/16 v6, 0xff

    .line 309
    int-to-long v0, p0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p3

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p4

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p5

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p6

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p7

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hashCode(J)I
    .registers 4

    .line 77
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static indexOf([JJ)I
    .registers 6

    .line 121
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static indexOf([JJII)I
    .registers 10

    .line 126
    move v0, p3

    :goto_1
    if-ge v0, p4, :cond_d

    .line 127
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_a

    .line 131
    :goto_9
    return v0

    .line 126
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :cond_d
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static indexOf([J[J)I
    .registers 10

    const/4 v1, 0x0

    .line 145
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    array-length v0, p1

    if-nez v0, :cond_f

    .line 160
    :goto_e
    return v1

    :cond_f
    move v0, v1

    .line 152
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2d

    move v2, v1

    .line 153
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_2b

    .line 154
    add-int v3, v0, v2

    aget-wide v4, p0, v3

    aget-wide v6, p1, v2

    cmp-long v3, v4, v6

    if-eqz v3, :cond_28

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 153
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2b
    move v1, v0

    .line 158
    goto :goto_e

    .line 160
    :cond_2d
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .registers 6

    .line 500
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    array-length v0, p1

    if-nez v0, :cond_9

    .line 502
    const-string v0, ""

    .line 511
    :goto_8
    return-object v0

    .line 506
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 507
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 508
    const/4 v0, 0x1

    :goto_18
    array-length v2, p1

    if-ge v0, v2, :cond_26

    .line 509
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 511
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static lastIndexOf([JJ)I
    .registers 6

    .line 172
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([JJII)I
    .registers 10

    .line 177
    add-int/lit8 v0, p4, -0x1

    :goto_2
    if-lt v0, p3, :cond_e

    .line 178
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_b

    .line 182
    :goto_a
    return v0

    .line 177
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 182
    :cond_e
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[J>;"
        }
    .end annotation

    .line 528
    sget-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    array-length v0, p0

    if-lez v0, :cond_1b

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 214
    aget-wide v2, p0, v2

    move v4, v1

    .line 215
    :goto_c
    array-length v0, p0

    if-ge v4, v0, :cond_1d

    .line 216
    aget-wide v0, p0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 217
    aget-wide v0, p0, v4

    .line 215
    :goto_17
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_c

    :cond_1b
    move v0, v2

    .line 213
    goto :goto_6

    .line 220
    :cond_1d
    return-wide v2

    :cond_1e
    move-wide v0, v2

    goto :goto_17
.end method

.method public static varargs min([J)J
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    array-length v0, p0

    if-lez v0, :cond_1b

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 195
    aget-wide v2, p0, v2

    move v4, v1

    .line 196
    :goto_c
    array-length v0, p0

    if-ge v4, v0, :cond_1d

    .line 197
    aget-wide v0, p0, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    .line 198
    aget-wide v0, p0, v4

    .line 196
    :goto_17
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_c

    :cond_1b
    move v0, v2

    .line 194
    goto :goto_6

    .line 201
    :cond_1d
    return-wide v2

    :cond_1e
    move-wide v0, v2

    goto :goto_17
.end method

.method public static reverse([J)V
    .registers 3

    .line 582
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Longs;->reverse([JII)V

    .line 584
    return-void
.end method

.method public static reverse([JII)V
    .registers 9

    .line 597
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 599
    add-int/lit8 v0, p2, -0x1

    :goto_9
    if-ge p1, v0, :cond_18

    .line 600
    aget-wide v2, p0, p1

    .line 601
    aget-wide v4, p0, v0

    aput-wide v4, p0, p1

    .line 602
    aput-wide v2, p0, v0

    .line 599
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 604
    :cond_18
    return-void
.end method

.method public static sortDescending([J)V
    .registers 3

    .line 558
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Longs;->sortDescending([JII)V

    .line 560
    return-void
.end method

.method public static sortDescending([JII)V
    .registers 4

    .line 569
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 571
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([JII)V

    .line 572
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Longs;->reverse([JII)V

    .line 573
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 469
    sget-object v0, Lcom/google/common/primitives/Longs$LongConverter;->INSTANCE:Lcom/google/common/primitives/Longs$LongConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[J"
        }
    .end annotation

    .line 620
    instance-of v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v0, :cond_b

    .line 621
    check-cast p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->toLongArray()[J

    move-result-object v0

    .line 631
    :goto_a
    return-object v0

    .line 624
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 625
    array-length v4, v3

    .line 626
    new-array v1, v4, [J

    .line 627
    const/4 v0, 0x0

    move v2, v0

    :goto_14
    if-ge v2, v4, :cond_28

    .line 629
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 627
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_28
    move-object v0, v1

    .line 631
    goto :goto_a
.end method

.method public static toByteArray(J)[B
    .registers 8

    const/16 v4, 0x8

    .line 276
    new-array v1, v4, [B

    .line 277
    const/4 v0, 0x7

    :goto_5
    if-ltz v0, :cond_12

    .line 278
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 279
    shr-long/2addr p0, v4

    .line 277
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 281
    :cond_12
    return-object v1
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 365
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/Longs;->tryParse(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 14
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v1, 0x1

    const-wide/high16 v10, -0x8000000000000000L

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 390
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, v3

    .line 427
    :goto_12
    return-object v0

    .line 393
    :cond_13
    const/4 v0, 0x2

    if-lt p1, v0, :cond_7f

    const/16 v0, 0x24

    if-gt p1, v0, :cond_7f

    .line 397
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_2e

    move v4, v1

    .line 398
    :goto_23
    if-eqz v4, :cond_96

    move v0, v1

    .line 399
    :goto_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_30

    move-object v0, v3

    .line 400
    goto :goto_12

    :cond_2e
    move v4, v2

    .line 397
    goto :goto_23

    .line 402
    :cond_30
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/Longs$AsciiDigits;->digit(C)I

    move-result v0

    .line 403
    if-ltz v0, :cond_3e

    if-lt v0, p1, :cond_40

    :cond_3e
    move-object v0, v3

    .line 404
    goto :goto_12

    .line 406
    :cond_40
    neg-int v0, v0

    int-to-long v0, v0

    .line 408
    int-to-long v6, p1

    div-long v6, v10, v6

    .line 410
    :goto_45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_6c

    .line 411
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/common/primitives/Longs$AsciiDigits;->digit(C)I

    move-result v5

    .line 412
    if-ltz v5, :cond_5b

    if-ge v5, p1, :cond_5b

    cmp-long v8, v0, v6

    if-gez v8, :cond_5d

    :cond_5b
    move-object v0, v3

    .line 413
    goto :goto_12

    .line 415
    :cond_5d
    int-to-long v8, p1

    mul-long/2addr v0, v8

    .line 416
    int-to-long v8, v5

    sub-long/2addr v8, v10

    cmp-long v8, v0, v8

    if-gez v8, :cond_67

    move-object v0, v3

    .line 417
    goto :goto_12

    .line 419
    :cond_67
    int-to-long v8, v5

    sub-long/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 422
    :cond_6c
    if-eqz v4, :cond_73

    .line 423
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_12

    .line 424
    :cond_73
    cmp-long v2, v0, v10

    if-nez v2, :cond_79

    move-object v0, v3

    .line 425
    goto :goto_12

    .line 427
    :cond_79
    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_12

    .line 394
    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "radix must be between MIN_RADIX and MAX_RADIX but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_96
    move v0, v2

    goto :goto_26
.end method
