.class public final Lcom/s1243808733/android/dex/EncodedValueCodec;
.super Ljava/lang/Object;
.source "EncodedValueCodec.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readSignedInt(Lcom/s1243808733/android/dex/util/ByteInput;I)I
    .registers 5

    .line 124
    const/4 v0, 0x0

    move v1, p1

    .line 125
    :goto_0
    if-gez v1, :cond_0

    .line 128
    rsub-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x8

    shr-int/2addr v0, v1

    return v0

    .line 126
    :cond_0
    ushr-int/lit8 v0, v0, 0x8

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    .line 125
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static readSignedLong(Lcom/s1243808733/android/dex/util/ByteInput;I)J
    .registers 10

    .line 159
    const/4 v0, 0x0

    int-to-long v0, v0

    move v2, p1

    .line 160
    :goto_0
    if-gez v2, :cond_0

    .line 163
    rsub-int/lit8 v2, p1, 0x7

    mul-int/lit8 v2, v2, 0x8

    shr-long/2addr v0, v2

    return-wide v0

    .line 161
    :cond_0
    const/16 v3, 0x8

    ushr-long/2addr v0, v3

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v3, 0x38

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 160
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static readUnsignedInt(Lcom/s1243808733/android/dex/util/ByteInput;IZ)I
    .registers 6

    const/4 v0, 0x0

    .line 139
    .line 140
    if-nez p2, :cond_2

    move v1, p1

    .line 141
    :goto_0
    if-gez v1, :cond_0

    .line 144
    rsub-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x8

    ushr-int/2addr v0, v1

    .line 150
    :goto_1
    return v0

    .line 142
    :cond_0
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    .line 141
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 147
    :cond_1
    ushr-int/lit8 v0, v0, 0x8

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 146
    add-int/lit8 p1, p1, -0x1

    :cond_2
    if-gez p1, :cond_1

    goto :goto_1
.end method

.method public static readUnsignedLong(Lcom/s1243808733/android/dex/util/ByteInput;IZ)J
    .registers 13

    const-wide/16 v8, 0xff

    const/16 v7, 0x38

    const/16 v6, 0x8

    .line 174
    const/4 v0, 0x0

    int-to-long v0, v0

    .line 175
    if-nez p2, :cond_2

    move v2, p1

    .line 176
    :goto_0
    if-gez v2, :cond_0

    .line 179
    rsub-int/lit8 v2, p1, 0x7

    mul-int/lit8 v2, v2, 0x8

    ushr-long/2addr v0, v2

    .line 185
    :goto_1
    return-wide v0

    .line 177
    :cond_0
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v3

    int-to-long v4, v3

    and-long/2addr v4, v8

    shl-long/2addr v4, v7

    ushr-long/2addr v0, v6

    or-long/2addr v0, v4

    .line 176
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 182
    :cond_1
    ushr-long/2addr v0, v6

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    .line 181
    add-int/lit8 p1, p1, -0x1

    :cond_2
    if-gez p1, :cond_1

    goto :goto_1
.end method

.method public static writeRightZeroExtendedValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/util/ByteOutput;",
            "IJ)V"
        }
    .end annotation

    .line 93
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 94
    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v2, v0, 0x3

    .line 102
    mul-int/lit8 v0, v2, 0x8

    rsub-int/lit8 v0, v0, 0x40

    shr-long v0, p2, v0

    .line 108
    add-int/lit8 v3, v2, -0x1

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v3, p1

    invoke-interface {p0, v3}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    .line 111
    :goto_0
    if-gtz v2, :cond_1

    return-void

    .line 112
    :cond_1
    long-to-int v3, v0

    int-to-byte v3, v3

    invoke-interface {p0, v3}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    .line 113
    const/16 v3, 0x8

    shr-long/2addr v0, v3

    .line 114
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/util/ByteOutput;",
            "IJ)V"
        }
    .end annotation

    .line 42
    const/16 v0, 0x3f

    shr-long v0, p2, v0

    xor-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    .line 45
    rsub-int/lit8 v0, v0, 0x41

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 51
    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, p1

    invoke-interface {p0, v1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    .line 54
    :goto_0
    if-gtz v0, :cond_0

    return-void

    .line 55
    :cond_0
    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    .line 56
    const/16 v1, 0x8

    shr-long/2addr p2, v1

    .line 57
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/util/ByteOutput;",
            "IJ)V"
        }
    .end annotation

    .line 66
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 67
    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 78
    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, p1

    invoke-interface {p0, v1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    .line 81
    :goto_0
    if-gtz v0, :cond_1

    return-void

    .line 82
    :cond_1
    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    .line 83
    const/16 v1, 0x8

    shr-long/2addr p2, v1

    .line 84
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
