.class public final Lcom/s1243808733/android/dx/util/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anyInRange([III)Z
    .registers 4

    .line 153
    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    .line 154
    if-ltz v0, :cond_0

    if-lt v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static bitCount([I)I
    .registers 5

    const/4 v1, 0x0

    .line 132
    array-length v3, p0

    move v0, v1

    move v2, v1

    .line 135
    :goto_0
    if-lt v0, v3, :cond_0

    .line 139
    return v2

    .line 136
    :cond_0
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 135
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public static clear([II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)V"
        }
    .end annotation

    .line 101
    shr-int/lit8 v0, p1, 0x5

    .line 102
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
    .registers 4

    .line 194
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 196
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public static findFirst([II)I
    .registers 6

    .line 167
    array-length v2, p0

    .line 168
    and-int/lit8 v0, p1, 0x1f

    .line 170
    shr-int/lit8 v1, p1, 0x5

    :goto_0
    if-lt v1, v2, :cond_0

    .line 181
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 171
    :cond_0
    aget v3, p0, v1

    .line 172
    if-eqz v3, :cond_1

    .line 173
    invoke-static {v3, v0}, Lcom/s1243808733/android/dx/util/Bits;->findFirst(II)I

    move-result v0

    .line 174
    if-ltz v0, :cond_1

    .line 175
    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    goto :goto_1

    .line 178
    :cond_1
    const/4 v0, 0x0

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static get([II)Z
    .registers 5

    const/4 v0, 0x1

    .line 59
    shr-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static getMax([I)I
    .registers 2

    .line 48
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static isEmpty([I)Z
    .registers 5

    const/4 v0, 0x0

    .line 114
    array-length v2, p0

    move v1, v0

    .line 116
    :goto_0
    if-lt v1, v2, :cond_1

    .line 122
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 117
    :cond_1
    aget v3, p0, v1

    if-nez v3, :cond_0

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static makeBitSet(I)[I
    .registers 2

    .line 37
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method public static or([I[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I)V"
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 211
    :cond_0
    aget v1, p0, v0

    aget v2, p1, v0

    or-int/2addr v1, v2

    aput v1, p0, v0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static set([II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)V"
        }
    .end annotation

    .line 89
    shr-int/lit8 v0, p1, 0x5

    .line 90
    const/4 v1, 0x1

    and-int/lit8 v2, p1, 0x1f

    shl-int/2addr v1, v2

    aget v2, p0, v0

    or-int/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method public static set([IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IIZ)V"
        }
    .end annotation

    .line 72
    shr-int/lit8 v0, p1, 0x5

    .line 73
    const/4 v1, 0x1

    and-int/lit8 v2, p1, 0x1f

    shl-int/2addr v1, v2

    .line 75
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
    .registers 6

    const/4 v1, 0x0

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    const/16 v0, 0x7b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    array-length v4, p0

    move v0, v1

    move v2, v1

    .line 223
    :goto_0
    mul-int/lit8 v1, v4, 0x20

    if-lt v2, v1, :cond_0

    .line 232
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    invoke-static {p0, v2}, Lcom/s1243808733/android/dx/util/Bits;->get([II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    if-eqz v0, :cond_1

    .line 226
    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    :cond_1
    const/4 v0, 0x1

    .line 229
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method
