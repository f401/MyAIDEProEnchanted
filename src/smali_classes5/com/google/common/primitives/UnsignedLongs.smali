.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;,
        Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = -0x1L


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(JJ)I
    .registers 8

    .line 79
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)J
    .registers 4

    .line 380
    invoke-static {p0}, Lcom/google/common/primitives/ParseRequest;->fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;

    move-result-object v0

    .line 383
    :try_start_4
    iget-object v1, v0, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    iget v0, v0, Lcom/google/common/primitives/ParseRequest;->radix:I

    invoke-static {v1, v0}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-wide v0

    return-wide v0

    .line 384
    :catch_d
    move-exception v0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v2, v0}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 388
    throw v2
.end method

.method public static divide(JJ)J
    .registers 10

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 248
    cmp-long v1, p2, v2

    if-gez v1, :cond_12

    .line 249
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    if-gez v0, :cond_f

    move-wide v0, v2

    .line 268
    :goto_e
    return-wide v0

    .line 252
    :cond_f
    const-wide/16 v0, 0x1

    goto :goto_e

    .line 257
    :cond_12
    cmp-long v1, p0, v2

    if-ltz v1, :cond_19

    .line 258
    div-long v0, p0, p2

    goto :goto_e

    .line 267
    :cond_19
    ushr-long v2, p0, v0

    div-long/2addr v2, p2

    shl-long/2addr v2, v0

    .line 268
    mul-long v4, v2, p2

    sub-long v4, p0, v4

    invoke-static {v4, v5, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v1

    if-ltz v1, :cond_2a

    :goto_27
    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_e

    :cond_2a
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private static flip(J)J
    .registers 4

    .line 64
    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .registers 6

    .line 131
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    array-length v0, p1

    if-nez v0, :cond_9

    .line 133
    const-string v0, ""

    .line 142
    :goto_8
    return-object v0

    .line 137
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const/4 v0, 0x1

    :goto_1c
    array-length v2, p1

    if-ge v0, v2, :cond_2e

    .line 140
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 142
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
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

    .line 157
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    array-length v0, p0

    if-lez v0, :cond_21

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 112
    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    move v4, v1

    .line 113
    :goto_10
    array-length v0, p0

    if-ge v4, v0, :cond_23

    .line 114
    aget-wide v0, p0, v4

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    .line 115
    cmp-long v5, v0, v2

    if-lez v5, :cond_28

    .line 113
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_10

    :cond_21
    move v0, v2

    .line 111
    goto :goto_6

    .line 119
    :cond_23
    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    return-wide v0

    :cond_28
    move-wide v0, v2

    goto :goto_1d
.end method

.method public static varargs min([J)J
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    array-length v0, p0

    if-lez v0, :cond_21

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    move v4, v1

    .line 93
    :goto_10
    array-length v0, p0

    if-ge v4, v0, :cond_23

    .line 94
    aget-wide v0, p0, v4

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    .line 95
    cmp-long v5, v0, v2

    if-gez v5, :cond_28

    .line 93
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_10

    :cond_21
    move v0, v2

    .line 91
    goto :goto_6

    .line 99
    :cond_23
    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    return-wide v0

    :cond_28
    move-wide v0, v2

    goto :goto_1d
.end method

.method public static parseUnsignedLong(Ljava/lang/String;)J
    .registers 3

    .line 320
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;I)J
    .registers 10

    .line 338
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6d

    .line 342
    const/4 v0, 0x2

    if-lt p1, v0, :cond_56

    const/16 v0, 0x24

    if-gt p1, v0, :cond_56

    .line 346
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxSafeDigits:[I

    aget v3, v0, p1

    .line 347
    const-wide/16 v0, 0x0

    .line 348
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_75

    .line 349
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 350
    const/4 v5, -0x1

    if-eq v4, v5, :cond_50

    .line 353
    add-int/lit8 v5, v3, -0x1

    if-le v2, v5, :cond_32

    invoke-static {v0, v1, v4, p1}, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->overflowInParse(JII)Z

    move-result v5

    if-nez v5, :cond_39

    .line 356
    :cond_32
    int-to-long v6, p1

    mul-long/2addr v0, v6

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 354
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too large for unsigned long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_50
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal radix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_6d
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_75
    return-wide v0
.end method

.method public static remainder(JJ)J
    .registers 10

    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    .line 284
    cmp-long v2, p2, v0

    if-gez v2, :cond_10

    .line 285
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    if-gez v0, :cond_e

    .line 305
    :goto_d
    return-wide p0

    .line 288
    :cond_e
    sub-long/2addr p0, p2

    goto :goto_d

    .line 293
    :cond_10
    cmp-long v2, p0, v0

    if-ltz v2, :cond_16

    .line 294
    rem-long/2addr p0, p2

    goto :goto_d

    .line 303
    :cond_16
    ushr-long v2, p0, v4

    div-long/2addr v2, p2

    .line 304
    shl-long/2addr v2, v4

    mul-long/2addr v2, p2

    sub-long v2, p0, v2

    .line 305
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    if-ltz v4, :cond_26

    :goto_23
    sub-long p0, v2, p2

    goto :goto_d

    :cond_26
    move-wide p2, v0

    goto :goto_23
.end method

.method public static sort([J)V
    .registers 3

    .line 186
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->sort([JII)V

    .line 188
    return-void
.end method

.method public static sort([JII)V
    .registers 7

    .line 197
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p1

    .line 199
    :goto_8
    if-ge v0, p2, :cond_15

    .line 200
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 202
    :cond_15
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([JII)V

    .line 203
    :goto_18
    if-ge p1, p2, :cond_25

    .line 204
    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    aput-wide v0, p0, p1

    .line 203
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 206
    :cond_25
    return-void
.end method

.method public static sortDescending([J)V
    .registers 3

    .line 215
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->sortDescending([JII)V

    .line 217
    return-void
.end method

.method public static sortDescending([JII)V
    .registers 9

    const-wide v4, 0x7fffffffffffffffL

    .line 226
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p1

    .line 228
    :goto_d
    if-ge v0, p2, :cond_17

    .line 229
    aget-wide v2, p0, v0

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 231
    :cond_17
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([JII)V

    .line 232
    :goto_1a
    if-ge p1, p2, :cond_24

    .line 233
    aget-wide v0, p0, p1

    xor-long/2addr v0, v4

    aput-wide v0, p0, p1

    .line 232
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    .line 235
    :cond_24
    return-void
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 4

    .line 442
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .registers 13

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    .line 457
    const/4 v0, 0x2

    if-lt p2, v0, :cond_17

    const/16 v0, 0x24

    if-gt p2, v0, :cond_17

    move v0, v1

    :goto_b
    const-string v2, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    invoke-static {v0, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 461
    cmp-long v0, p0, v8

    if-nez v0, :cond_19

    .line 463
    const-string v0, "0"

    .line 497
    :goto_16
    return-object v0

    .line 457
    :cond_17
    const/4 v0, 0x0

    goto :goto_b

    .line 464
    :cond_19
    cmp-long v0, p0, v8

    if-lez v0, :cond_22

    .line 465
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 467
    :cond_22
    const/16 v0, 0x40

    new-array v4, v0, [C

    .line 468
    array-length v0, v4

    .line 469
    add-int/lit8 v2, p2, -0x1

    and-int/2addr v2, p2

    if-nez v2, :cond_4a

    .line 471
    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 472
    :cond_30
    add-int/lit8 v0, v0, -0x1

    long-to-int v2, p0

    add-int/lit8 v3, p2, -0x1

    and-int/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    aput-char v2, v4, v0

    .line 475
    ushr-long/2addr p0, v1

    .line 476
    cmp-long v2, p0, v8

    if-nez v2, :cond_30

    .line 497
    :cond_41
    new-instance v1, Ljava/lang/String;

    array-length v2, v4

    sub-int/2addr v2, v0

    invoke-direct {v1, v4, v0, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    goto :goto_16

    .line 481
    :cond_4a
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_74

    .line 483
    ushr-long v2, p0, v1

    ushr-int/lit8 v1, p2, 0x1

    int-to-long v6, v1

    div-long/2addr v2, v6

    .line 487
    :goto_54
    int-to-long v6, p2

    .line 488
    add-int/lit8 v0, v0, -0x1

    mul-long/2addr v6, v2

    sub-long v6, p0, v6

    long-to-int v1, v6

    invoke-static {v1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, v4, v0

    .line 491
    :goto_61
    cmp-long v1, v2, v8

    if-lez v1, :cond_41

    .line 492
    add-int/lit8 v0, v0, -0x1

    int-to-long v6, p2

    rem-long v6, v2, v6

    long-to-int v1, v6

    invoke-static {v1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, v4, v0

    .line 493
    int-to-long v6, p2

    div-long/2addr v2, v6

    goto :goto_61

    .line 485
    :cond_74
    int-to-long v2, p2

    invoke-static {p0, p1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v2

    goto :goto_54
.end method
