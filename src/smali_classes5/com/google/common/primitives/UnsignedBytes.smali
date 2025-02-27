.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;,
        Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;,
        Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
    }
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = -0x80t

.field public static final MAX_VALUE:B = -0x1t

.field private static final UNSIGNED_MASK:I = 0xff


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .registers 6

    .line 87
    const/16 v0, 0x8

    shr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_b
    const-string v1, "out of range: %s"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 88
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0

    .line 87
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static compare(BB)I
    .registers 4

    .line 120
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static flip(B)B
    .registers 2

    .line 451
    xor-int/lit16 v0, p0, 0x80

    int-to-byte v0, v0

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 5

    .line 242
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    array-length v0, p1

    if-nez v0, :cond_9

    .line 244
    const-string v0, ""

    .line 253
    :goto_8
    return-object v0

    .line 248
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    mul-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 249
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const/4 v0, 0x1

    :goto_21
    array-length v2, p1

    if-ge v0, v2, :cond_33

    .line 251
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v0

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 253
    :cond_33
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
            "<[B>;"
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->BEST_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static lexicographicalComparatorJavaImpl()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    array-length v0, p0

    if-lez v0, :cond_1e

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 153
    aget-byte v0, p0, v2

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    .line 154
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 155
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 156
    if-le v2, v0, :cond_1b

    move v0, v2

    .line 154
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    move v0, v2

    .line 152
    goto :goto_6

    .line 160
    :cond_20
    int-to-byte v0, v0

    return v0
.end method

.method public static varargs min([B)B
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    array-length v0, p0

    if-lez v0, :cond_1e

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 133
    aget-byte v0, p0, v2

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    .line 134
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 135
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 136
    if-ge v2, v0, :cond_1b

    move v0, v2

    .line 134
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    move v0, v2

    .line 132
    goto :goto_6

    .line 140
    :cond_20
    int-to-byte v0, v0

    return v0
.end method

.method public static parseUnsignedByte(Ljava/lang/String;)B
    .registers 2

    .line 205
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedBytes;->parseUnsignedByte(Ljava/lang/String;I)B

    move-result v0

    return v0
.end method

.method public static parseUnsignedByte(Ljava/lang/String;I)B
    .registers 5

    .line 223
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 225
    shr-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_10

    .line 226
    int-to-byte v0, v0

    return v0

    .line 228
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static saturatedCast(J)B
    .registers 6

    const/4 v0, -0x1

    .line 100
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, p0, v2

    if-lez v1, :cond_b

    .line 106
    :goto_a
    return v0

    .line 103
    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 104
    const/4 v0, 0x0

    goto :goto_a

    .line 106
    :cond_13
    long-to-int v0, p0

    int-to-byte v0, v0

    goto :goto_a
.end method

.method public static sort([B)V
    .registers 3

    .line 460
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/UnsignedBytes;->sort([BII)V

    .line 462
    return-void
.end method

.method public static sort([BII)V
    .registers 5

    .line 471
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p1

    .line 473
    :goto_8
    if-ge v0, p2, :cond_15

    .line 474
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->flip(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 476
    :cond_15
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([BII)V

    .line 477
    :goto_18
    if-ge p1, p2, :cond_25

    .line 478
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->flip(B)B

    move-result v0

    aput-byte v0, p0, p1

    .line 477
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 480
    :cond_25
    return-void
.end method

.method public static sortDescending([B)V
    .registers 3

    .line 489
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/UnsignedBytes;->sortDescending([BII)V

    .line 491
    return-void
.end method

.method public static sortDescending([BII)V
    .registers 5

    .line 500
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p1

    .line 502
    :goto_8
    if-ge v0, p2, :cond_14

    .line 503
    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 505
    :cond_14
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([BII)V

    .line 506
    :goto_17
    if-ge p1, p2, :cond_23

    .line 507
    aget-byte v0, p0, p1

    xor-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 506
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    .line 509
    :cond_23
    return-void
.end method

.method public static toInt(B)I
    .registers 2

    .line 74
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static toString(B)Ljava/lang/String;
    .registers 2

    .line 170
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedBytes;->toString(BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(BI)Ljava/lang/String;
    .registers 4

    .line 185
    const/4 v0, 0x2

    if-lt p1, v0, :cond_16

    const/16 v0, 0x24

    if-gt p1, v0, :cond_16

    const/4 v0, 0x1

    :goto_8
    const-string v1, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 190
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_16
    const/4 v0, 0x0

    goto :goto_8
.end method
