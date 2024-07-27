.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Chars$CharArrayAsList;,
        Lcom/google/common/primitives/Chars$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([CCII)I
    .registers 5

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([CCII)I
    .registers 5

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([C)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 502
    array-length v0, p0

    if-nez v0, :cond_0

    .line 503
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 505
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([C)V

    goto :goto_0
.end method

.method public static checkedCast(J)C
    .registers 6

    .line 81
    long-to-int v0, p0

    int-to-char v1, v0

    .line 82
    int-to-long v2, v1

    cmp-long v0, v2, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Out of range: %s"

    invoke-static {v0, v2, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 83
    return v1

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compare(CC)I
    .registers 3

    .line 117
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[C)[C
    .registers 8

    const/4 v1, 0x0

    .line 274
    .line 275
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p0, v2

    .line 276
    array-length v4, v4

    add-int/2addr v0, v4

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_0
    new-array v3, v0, [C

    .line 280
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, p0, v2

    .line 281
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    array-length v5, v5

    add-int/2addr v0, v5

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 284
    :cond_1
    return-object v3
.end method

.method public static constrainToRange(CCC)C
    .registers 5

    .line 262
    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;CC)V

    .line 263
    if-ge p0, p1, :cond_1

    :goto_1
    return p1

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :cond_1
    if-ge p0, p2, :cond_2

    move p1, p0

    goto :goto_1

    :cond_2
    move p1, p2

    goto :goto_1
.end method

.method public static contains([CC)Z
    .registers 6

    const/4 v0, 0x0

    .line 128
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v3, p0, v1

    .line 129
    if-ne v3, p1, :cond_1

    .line 130
    const/4 v0, 0x1

    .line 133
    :cond_0
    return v0

    .line 128
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static ensureCapacity([CII)[C
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 342
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 343
    if-ltz p2, :cond_2

    :goto_1
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 344
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 342
    goto :goto_0

    :cond_2
    move v1, v2

    .line 343
    goto :goto_1
.end method

.method public static fromByteArray([B)C
    .registers 7

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    array-length v0, p0

    if-lt v0, v5, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "array too small: %s < %s"

    array-length v4, p0

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 314
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Chars;->fromBytes(BB)C

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 313
    goto :goto_0
.end method

.method public static fromBytes(BB)C
    .registers 4

    .line 325
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static hashCode(C)I
    .registers 1

    .line 69
    return p0
.end method

.method public static indexOf([CC)I
    .registers 4

    .line 145
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static indexOf([CCII)I
    .registers 6

    .line 150
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 151
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 155
    :goto_1
    return v0

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([C[C)I
    .registers 7

    const/4 v1, 0x0

    .line 169
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    array-length v0, p1

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 176
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 177
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 178
    add-int v3, v0, v2

    aget-char v3, p0, v3

    aget-char v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 182
    goto :goto_0

    .line 184
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 6

    .line 356
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    array-length v1, p1

    .line 358
    if-nez v1, :cond_0

    .line 359
    const-string v0, ""

    .line 367
    :goto_0
    return-object v0

    .line 362
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 363
    const/4 v0, 0x0

    aget-char v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 365
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 367
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf([CC)I
    .registers 4

    .line 196
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([CCII)I
    .registers 6

    .line 201
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 202
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 206
    :goto_1
    return v0

    .line 201
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 206
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[C>;"
        }
    .end annotation

    .line 384
    sget-object v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Chars$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([C)C
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 238
    aget-char v0, p0, v2

    .line 239
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 240
    aget-char v2, p0, v1

    if-le v2, v0, :cond_0

    .line 241
    aget-char v0, p0, v1

    .line 239
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 237
    goto :goto_0

    .line 244
    :cond_2
    return v0
.end method

.method public static varargs min([C)C
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 219
    aget-char v0, p0, v2

    .line 220
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 221
    aget-char v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 222
    aget-char v0, p0, v1

    .line 220
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 218
    goto :goto_0

    .line 225
    :cond_2
    return v0
.end method

.method public static reverse([C)V
    .registers 3

    .line 465
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Chars;->reverse([CII)V

    .line 467
    return-void
.end method

.method public static reverse([CII)V
    .registers 6

    .line 480
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 482
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 483
    aget-char v1, p0, p1

    .line 484
    aget-char v2, p0, v0

    aput-char v2, p0, p1

    .line 485
    aput-char v1, p0, v0

    .line 482
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 487
    :cond_0
    return-void
.end method

.method public static saturatedCast(J)C
    .registers 4

    .line 95
    const-wide/32 v0, 0xffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 96
    const v0, 0xffff

    .line 101
    :goto_0
    return v0

    .line 98
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 99
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_1
    long-to-int v0, p0

    int-to-char v0, v0

    goto :goto_0
.end method

.method public static sortDescending([C)V
    .registers 3

    .line 441
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Chars;->sortDescending([CII)V

    .line 443
    return-void
.end method

.method public static sortDescending([CII)V
    .registers 4

    .line 452
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 454
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([CII)V

    .line 455
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Chars;->reverse([CII)V

    .line 456
    return-void
.end method

.method public static toArray(Ljava/util/Collection;)[C
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .line 421
    instance-of v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v0, :cond_0

    .line 422
    check-cast p0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->toCharArray()[C

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 425
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 426
    array-length v4, v3

    .line 427
    new-array v1, v4, [C

    .line 428
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 430
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    aput-char v0, v1, v2

    .line 428
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 432
    goto :goto_0
.end method

.method public static toByteArray(C)[B
    .registers 4

    .line 298
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
