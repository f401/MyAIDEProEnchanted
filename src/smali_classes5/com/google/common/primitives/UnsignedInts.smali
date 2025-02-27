.class public final Lcom/google/common/primitives/UnsignedInts;
.super Ljava/lang/Object;
.source "UnsignedInts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;
    }
.end annotation


# static fields
.field static final INT_MASK:J = 0xffffffffL


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)I
    .registers 6

    .line 94
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_b
    const-string v1, "out of range: %s"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 95
    long-to-int v0, p0

    return v0

    .line 94
    :cond_12
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static compare(II)I
    .registers 4

    .line 71
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)I
    .registers 4

    .line 316
    invoke-static {p0}, Lcom/google/common/primitives/ParseRequest;->fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;

    move-result-object v0

    .line 319
    :try_start_4
    iget-object v1, v0, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    iget v0, v0, Lcom/google/common/primitives/ParseRequest;->radix:I

    invoke-static {v1, v0}, Lcom/google/common/primitives/UnsignedInts;->parseUnsignedInt(Ljava/lang/String;I)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v0

    return v0

    .line 320
    :catch_d
    move-exception v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2, v0}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 324
    throw v2
.end method

.method public static divide(II)I
    .registers 6

    .line 282
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static flip(I)I
    .registers 2

    .line 56
    const/high16 v0, -0x80000000

    xor-int/2addr v0, p0

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 5

    .line 166
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    array-length v0, p1

    if-nez v0, :cond_9

    .line 168
    const-string v0, ""

    .line 177
    :goto_8
    return-object v0

    .line 172
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 173
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const/4 v0, 0x1

    :goto_1c
    array-length v2, p1

    if-ge v0, v2, :cond_2e

    .line 175
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v0

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedInts;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 177
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
            "<[I>;"
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([I)I
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    array-length v0, p0

    if-lez v0, :cond_1e

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 147
    aget v0, p0, v2

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v0

    .line 148
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 149
    aget v2, p0, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v2

    .line 150
    if-le v2, v0, :cond_1b

    move v0, v2

    .line 148
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    move v0, v2

    .line 146
    goto :goto_6

    .line 154
    :cond_20
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v0

    return v0
.end method

.method public static varargs min([I)I
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    array-length v0, p0

    if-lez v0, :cond_1e

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 127
    aget v0, p0, v2

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v0

    .line 128
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 129
    aget v2, p0, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v2

    .line 130
    if-ge v2, v0, :cond_1b

    move v0, v2

    .line 128
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    move v0, v2

    .line 126
    goto :goto_6

    .line 134
    :cond_20
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v0

    return v0
.end method

.method public static parseUnsignedInt(Ljava/lang/String;)I
    .registers 2

    .line 339
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedInts;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseUnsignedInt(Ljava/lang/String;I)I
    .registers 6

    .line 357
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 359
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    cmp-long v2, v2, v0

    if-nez v2, :cond_13

    .line 363
    long-to-int v0, v0

    return v0

    .line 360
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in base "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not in the range of an unsigned integer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static remainder(II)I
    .registers 6

    .line 296
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static saturatedCast(J)I
    .registers 4

    .line 108
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_8

    .line 109
    const/4 v0, 0x0

    .line 113
    :goto_7
    return v0

    .line 110
    :cond_8
    const-wide v0, 0x100000000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_13

    .line 111
    const/4 v0, -0x1

    goto :goto_7

    .line 113
    :cond_13
    long-to-int v0, p0

    goto :goto_7
.end method

.method public static sort([I)V
    .registers 3

    .line 220
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/UnsignedInts;->sort([III)V

    .line 222
    return-void
.end method

.method public static sort([III)V
    .registers 5

    .line 231
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p1

    .line 233
    :goto_8
    if-ge v0, p2, :cond_15

    .line 234
    aget v1, p0, v0

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v1

    aput v1, p0, v0

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 236
    :cond_15
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([III)V

    .line 237
    :goto_18
    if-ge p1, p2, :cond_25

    .line 238
    aget v0, p0, p1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v0

    aput v0, p0, p1

    .line 237
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 240
    :cond_25
    return-void
.end method

.method public static sortDescending([I)V
    .registers 3

    .line 249
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/UnsignedInts;->sortDescending([III)V

    .line 251
    return-void
.end method

.method public static sortDescending([III)V
    .registers 6

    const v2, 0x7fffffff

    .line 260
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p1

    .line 262
    :goto_b
    if-ge v0, p2, :cond_15

    .line 263
    aget v1, p0, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 265
    :cond_15
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([III)V

    .line 266
    :goto_18
    if-ge p1, p2, :cond_22

    .line 267
    aget v0, p0, p1

    xor-int/2addr v0, v2

    aput v0, p0, p1

    .line 266
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 269
    :cond_22
    return-void
.end method

.method public static toLong(I)J
    .registers 5

    .line 80
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    .line 372
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedInts;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(II)Ljava/lang/String;
    .registers 6

    .line 387
    int-to-long v0, p0

    .line 388
    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
