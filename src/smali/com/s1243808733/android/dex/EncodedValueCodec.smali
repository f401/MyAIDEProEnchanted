.class public final Lcom/s1243808733/android/dex/EncodedValueCodec;
.super Ljava/lang/Object;
.source "EncodedValueCodec.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readSignedInt(Lcom/s1243808733/android/dex/util/ByteInput;I)I
    .registers 5

    const/4 v0, 0x0

    move v1, p1

    :goto_2
    if-ltz v1, :cond_12

    .line 126
    ushr-int/lit8 v0, v0, 0x8

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_12
    rsub-int/lit8 p0, p1, 0x3

    mul-int/lit8 p0, p0, 0x8

    shr-int p0, v0, p0

    return p0
.end method

.method public static readSignedLong(Lcom/s1243808733/android/dex/util/ByteInput;I)J
    .registers 9

    const-wide/16 v0, 0x0

    move v2, p1

    :goto_3
    const/16 v3, 0x8

    if-ltz v2, :cond_17

    .line 161
    ushr-long/2addr v0, v3

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_17
    rsub-int/lit8 p0, p1, 0x7

    mul-int/lit8 p0, p0, 0x8

    shr-long p0, v0, p0

    return-wide p0
.end method

.method public static readUnsignedInt(Lcom/s1243808733/android/dex/util/ByteInput;IZ)I
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_1b

    move p2, p1

    :goto_4
    if-ltz p2, :cond_14

    .line 142
    ushr-int/lit8 v0, v0, 0x8

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_14
    rsub-int/lit8 p0, p1, 0x3

    mul-int/lit8 p0, p0, 0x8

    ushr-int p0, v0, p0

    goto :goto_2c

    :cond_1b
    :goto_1b
    if-ltz p1, :cond_2b

    .line 147
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 v0, v0, 0x8

    or-int/2addr v0, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1b

    .line 142
    :cond_2b
    move p0, v0

    .line 147
    :goto_2c
    return p0
.end method

.method public static readUnsignedLong(Lcom/s1243808733/android/dex/util/ByteInput;IZ)J
    .registers 11

    const/16 v0, 0x38

    const-wide/16 v1, 0xff

    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    if-nez p2, :cond_20

    move p2, p1

    :goto_b
    if-ltz p2, :cond_19

    .line 177
    ushr-long/2addr v4, v3

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v1

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    add-int/lit8 p2, p2, -0x1

    goto :goto_b

    :cond_19
    rsub-int/lit8 p0, p1, 0x7

    mul-int/lit8 p0, p0, 0x8

    ushr-long p0, v4, p0

    goto :goto_2f

    :cond_20
    :goto_20
    if-ltz p1, :cond_2e

    .line 182
    ushr-long/2addr v4, v3

    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result p2

    int-to-long v6, p2

    and-long/2addr v6, v1

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    add-int/lit8 p1, p1, -0x1

    goto :goto_20

    .line 177
    :cond_2e
    move-wide p0, v4

    .line 182
    :goto_2f
    return-wide p0
.end method

.method public static writeRightZeroExtendedValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V
    .registers 6

    .line 93
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x40

    shr-long/2addr p2, v1

    .line 108
    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr p1, v1

    invoke-interface {p0, p1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    :goto_1a
    if-lez v0, :cond_27

    long-to-int p1, p2

    int-to-byte p1, p1

    .line 112
    invoke-interface {p0, p1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_27
    return-void
.end method

.method public static writeSignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V
    .registers 6

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

    or-int/2addr p1, v1

    invoke-interface {p0, p1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    :goto_15
    if-lez v0, :cond_22

    long-to-int p1, p2

    int-to-byte p1, p1

    .line 55
    invoke-interface {p0, p1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_22
    return-void
.end method

.method public static writeUnsignedIntegralValue(Lcom/s1243808733/android/dex/util/ByteOutput;IJ)V
    .registers 6

    .line 66
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 78
    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr p1, v1

    invoke-interface {p0, p1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    :goto_15
    if-lez v0, :cond_22

    long-to-int p1, p2

    int-to-byte p1, p1

    .line 82
    invoke-interface {p0, p1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_22
    return-void
.end method
