.class public final Lcom/s1243808733/android/dx/util/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anyInRange([III)Z
    .locals 1

    .line 153
    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    if-ltz v0, :cond_0

    if-ge v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bitCount([I)I
    .locals 4

    const/4 v1, 0x0

    .line 132
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 136
    aget v1, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static clear([II)V
    .locals 3

    shr-int/lit8 v0, p1, 0x5

    .line 103
    const/4 v1, 0x1

    and-int/lit8 v2, p1, 0x1f

    shl-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    aget v2, p0, v0

    and-int/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method public static findFirst(II)I
    .locals 3

    .line 195
    const/4 v0, -0x1

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static findFirst([II)I
    .locals 4

    .line 167
    array-length v2, p0

    and-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v1, p1, 0x5

    :goto_0
    if-ge v1, v2, :cond_1

    .line 171
    aget v3, p0, v1

    if-eqz v3, :cond_0

    .line 173
    invoke-static {v3, v0}, Lcom/s1243808733/android/dx/util/Bits;->findFirst(II)I

    move-result v0

    if-ltz v0, :cond_0

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static get([II)Z
    .locals 3

    const/4 v0, 0x1

    .line 61
    shr-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMax([I)I
    .locals 1

    .line 48
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static isEmpty([I)Z
    .locals 4

    const/4 v0, 0x0

    .line 114
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 117
    aget v3, p0, v1

    if-eqz v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static makeBitSet(I)[I
    .locals 1

    .line 38
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method public static or([I[I)V
    .locals 3

    const/4 v0, 0x0

    .line 210
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 211
    aget v1, p0, v0

    aget v2, p1, v0

    or-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static set([II)V
    .locals 3

    shr-int/lit8 v0, p1, 0x5

    .line 91
    const/4 v1, 0x1

    and-int/lit8 v2, p1, 0x1f

    shl-int/2addr v1, v2

    aget v2, p0, v0

    or-int/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method public static set([IIZ)V
    .locals 3

    shr-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    and-int/lit8 v2, p1, 0x1f

    shl-int/2addr v1, v2

    if-eqz p2, :cond_0

    .line 76
    aget v2, p0, v0

    or-int/2addr v1, v2

    aput v1, p0, v0

    .line 78
    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v1, v1, -0x1

    aget v2, p0, v0

    and-int/2addr v1, v2

    aput v1, p0, v0

    goto :goto_0
.end method

.method public static toHuman([I)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_0
    mul-int/lit8 v1, v4, 0x20

    if-ge v2, v1, :cond_2

    .line 224
    invoke-static {p0, v2}, Lcom/s1243808733/android/dx/util/Bits;->get([II)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 226
    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 232
    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
