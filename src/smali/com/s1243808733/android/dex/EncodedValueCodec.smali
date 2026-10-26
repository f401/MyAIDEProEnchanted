.class public final Lcom/s1243808733/android/dex/EncodedValueCodec;
.super Ljava/lang/Object;
.source "EncodedValueCodec.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readSignedInt(Lcom/s1243808733/android/dex/util/ByteInput;I)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ltz v1, :cond_0

    .line 126
    ushr-int/lit8 v0, v0, 0x8

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x8

    shr-int/2addr v0, v1

    return v0
.end method

.method public static readSignedLong(Lcom/s1243808733/android/dex/util/ByteInput;I)J
    .locals 8

    const-wide/16 v0, 0x0

    move v2, p1

    :goto_0
    if-ltz v2, :cond_0

    .line 161
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

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, p1, 0x7

    mul-int/lit8 v2, v2, 0x8

    shr-long/2addr v0, v2

    return-wide v0
.end method

.method public static readUnsignedInt(Lcom/s1243808733/android/dex/util/ByteInput;IZ)I
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_2

    move v1, p1

    :goto_0
    if-ltz v1, :cond_0

    .line 142
    ushr-int/lit8 v0, v0, 0x8

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x8

    ushr-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    :goto_1
    if-ltz p1, :cond_1

    .line 147
    ushr-int/lit8 v0, v0, 0x8

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1
.end method

.method public static readUnsignedLong(Lcom/s1243808733/android/dex/util/ByteInput;IZ)J
    .locals 10

    const-wide/16 v8, 0xff

    const/16 v7, 0x38

    const/16 v6, 0x8

    const-wide/16 v0, 0x0

    if-nez p2, :cond_2

    move v2, p1

    :goto_0
    if-ltz v2, :cond_0

    .line 177
    ushr-long/2addr v0, v6

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v3

    int-to-long v4, v3

    and-long/2addr v4, v8

    shl-long/2addr v4, v7

    or-long/2addr v0, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, p1, 0x7

    mul-int/lit8 v2, v2, 0x8

    ushr-long/2addr v0, v2

    :cond_1
    return-wide v0

    :cond_2
    :goto_1
    if-ltz p1, :cond_1

    .line 182
    ushr-long/2addr v0, v6

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1
.end method

.method public static writeRightZeroExtendedValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V
    .locals 4

    .line 93
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v2, v0, 0x3

    mul-int/lit8 v0, v2, 0x8

    rsub-int/lit8 v0, v0, 0x40

    shr-long v0, p2, v0

    .line 108
    add-int/lit8 v3, v2, -0x1

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v3, p1

    invoke-interface {p0, v3}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    :goto_0
    if-lez v2, :cond_1

    long-to-int v3, v0

    int-to-byte v3, v3

    .line 112
    invoke-interface {p0, v3}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    const/16 v3, 0x8

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V
    .locals 2

    .line 42
    const/16 v0, 0x3f

    shr-long v0, p2, v0

    xor-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x48

    shr-int/lit8 v0, v0, 0x3

    .line 51
    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, p1

    invoke-interface {p0, v1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    :goto_0
    if-lez v0, :cond_0

    long-to-int v1, p2

    int-to-byte v1, v1

    .line 55
    invoke-interface {p0, v1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    const/16 v1, 0x8

    shr-long/2addr p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V
    .locals 2

    .line 66
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 78
    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, p1

    invoke-interface {p0, v1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    :goto_0
    if-lez v0, :cond_1

    long-to-int v1, p2

    int-to-byte v1, v1

    .line 82
    invoke-interface {p0, v1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    const/16 v1, 0x8

    shr-long/2addr p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
