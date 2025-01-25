.class public final Lcom/google/common/primitives/Shorts;
.super Ljava/lang/Object;
.source "Shorts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Shorts$LexicographicalComparator;,
        Lcom/google/common/primitives/Shorts$ShortArrayAsList;,
        Lcom/google/common/primitives/Shorts$ShortConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2

.field public static final MAX_POWER_OF_TWO:S = 0x4000s


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([SSII)I
    .registers 5

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([SSII)I
    .registers 5

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([S)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
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
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([S)V

    goto :goto_7
.end method

.method public static checkedCast(J)S
    .registers 6

    .line 86
    long-to-int v0, p0

    int-to-short v1, v0

    .line 87
    int-to-long v2, v1

    cmp-long v0, v2, p0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_8
    const-string v2, "Out of range: %s"

    invoke-static {v0, v2, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 88
    return v1

    .line 87
    :cond_e
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static compare(SS)I
    .registers 3

    .line 121
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[S)[S
    .registers 8

    const/4 v1, 0x0

    .line 279
    .line 280
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v4, p0, v2

    .line 281
    array-length v4, v4

    add-int/2addr v0, v4

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 283
    :cond_d
    new-array v3, v0, [S

    .line 285
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_12
    if-ge v2, v4, :cond_1f

    aget-object v5, p0, v2

    .line 286
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    array-length v5, v5

    add-int/2addr v0, v5

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 289
    :cond_1f
    return-object v3
.end method

.method public static constrainToRange(SSS)S
    .registers 5

    .line 266
    if-gt p1, p2, :cond_b

    const/4 v0, 0x1

    :goto_3
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 267
    if-ge p0, p1, :cond_d

    :goto_a
    return p1

    .line 266
    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    .line 267
    :cond_d
    if-ge p0, p2, :cond_11

    move p1, p0

    goto :goto_a

    :cond_11
    move p1, p2

    goto :goto_a
.end method

.method public static contains([SS)Z
    .registers 6

    const/4 v0, 0x0

    .line 132
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_a

    aget-short v3, p0, v1

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

.method public static ensureCapacity([SII)[S
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 390
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 391
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p0

    :cond_1a
    return-object p0

    :cond_1b
    move v0, v2

    .line 389
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 390
    goto :goto_c
.end method

.method public static fromByteArray([B)S
    .registers 7

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 318
    array-length v0, p0

    if-lt v0, v5, :cond_16

    move v0, v1

    :goto_7
    const-string v3, "array too small: %s < %s"

    array-length v4, p0

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 319
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Shorts;->fromBytes(BB)S

    move-result v0

    return v0

    :cond_16
    move v0, v2

    .line 318
    goto :goto_7
.end method

.method public static fromBytes(BB)S
    .registers 4

    .line 330
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static hashCode(S)I
    .registers 1

    .line 74
    return p0
.end method

.method public static indexOf([SS)I
    .registers 4

    .line 149
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static indexOf([SSII)I
    .registers 6

    .line 154
    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_b

    .line 155
    aget-short v1, p0, v0

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

.method public static indexOf([S[S)I
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

    aget-short v3, p0, v3

    aget-short v4, p1, v2

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

.method public static varargs join(Ljava/lang/String;[S)Ljava/lang/String;
    .registers 5

    .line 404
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    array-length v0, p1

    if-nez v0, :cond_9

    .line 406
    const-string v0, ""

    .line 415
    :goto_8
    return-object v0

    .line 410
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x6

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 411
    const/4 v0, 0x0

    aget-short v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    const/4 v0, 0x1

    :goto_18
    array-length v2, p1

    if-ge v0, v2, :cond_26

    .line 413
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-short v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 415
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static lastIndexOf([SS)I
    .registers 4

    .line 200
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([SSII)I
    .registers 6

    .line 205
    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-lt v0, p2, :cond_c

    .line 206
    aget-short v1, p0, v0

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
            "<[S>;"
        }
    .end annotation

    .line 432
    sget-object v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([S)S
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
    aget-short v0, p0, v2

    .line 243
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 244
    aget-short v2, p0, v1

    if-le v2, v0, :cond_14

    .line 245
    aget-short v0, p0, v1

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

.method public static varargs min([S)S
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
    aget-short v0, p0, v2

    .line 224
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 225
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_14

    .line 226
    aget-short v0, p0, v1

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

.method public static reverse([S)V
    .registers 3

    .line 486
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Shorts;->reverse([SII)V

    .line 488
    return-void
.end method

.method public static reverse([SII)V
    .registers 6

    .line 501
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 503
    add-int/lit8 v0, p2, -0x1

    :goto_9
    if-ge p1, v0, :cond_18

    .line 504
    aget-short v1, p0, p1

    .line 505
    aget-short v2, p0, v0

    aput-short v2, p0, p1

    .line 506
    aput-short v1, p0, v0

    .line 503
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 508
    :cond_18
    return-void
.end method

.method public static saturatedCast(J)S
    .registers 4

    .line 99
    const-wide/16 v0, 0x7fff

    cmp-long v0, p0, v0

    if-lez v0, :cond_9

    .line 100
    const/16 v0, 0x7fff

    .line 105
    :goto_8
    return v0

    .line 102
    :cond_9
    const-wide/16 v0, -0x8000

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    .line 103
    const/16 v0, -0x8000

    goto :goto_8

    .line 105
    :cond_12
    long-to-int v0, p0

    int-to-short v0, v0

    goto :goto_8
.end method

.method public static sortDescending([S)V
    .registers 3

    .line 462
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Shorts;->sortDescending([SII)V

    .line 464
    return-void
.end method

.method public static sortDescending([SII)V
    .registers 4

    .line 473
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 475
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([SII)V

    .line 476
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Shorts;->reverse([SII)V

    .line 477
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
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 372
    sget-object v0, Lcom/google/common/primitives/Shorts$ShortConverter;->INSTANCE:Lcom/google/common/primitives/Shorts$ShortConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[S
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[S"
        }
    .end annotation

    .line 524
    instance-of v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v0, :cond_b

    .line 525
    check-cast p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->toShortArray()[S

    move-result-object v0

    .line 535
    :goto_a
    return-object v0

    .line 528
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 529
    array-length v4, v3

    .line 530
    new-array v1, v4, [S

    .line 531
    const/4 v0, 0x0

    move v2, v0

    :goto_14
    if-ge v2, v4, :cond_28

    .line 533
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    aput-short v0, v1, v2

    .line 531
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_28
    move-object v0, v1

    .line 535
    goto :goto_a
.end method

.method public static toByteArray(S)[B
    .registers 4

    .line 303
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method
