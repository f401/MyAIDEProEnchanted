.class public final Lcom/s1243808733/android/dex/Leb128;
.super Ljava/lang/Object;
.source "Leb128.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readSignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 61
    :cond_4
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    mul-int/lit8 v5, v1, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v0, v4

    shl-int/lit8 v2, v2, 0x7

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1a

    const/4 v5, 0x5

    if-lt v1, v5, :cond_4

    :cond_1a
    if-eq v3, v4, :cond_23

    shr-int/lit8 p0, v2, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_22

    or-int/2addr v0, v2

    :cond_22
    return v0

    .line 68
    :cond_23
    new-instance p0, Lcom/s1243808733/android/dex/DexException;

    const-string v0, "invalid LEB128 sequence"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    :goto_2b
    throw p0

    :goto_2c
    goto :goto_2b
.end method

.method public static readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    :cond_2
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    mul-int/lit8 v4, v1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_16

    const/4 v4, 0x5

    if-lt v1, v4, :cond_2

    :cond_16
    if-eq v2, v3, :cond_19

    return v0

    .line 94
    :cond_19
    new-instance p0, Lcom/s1243808733/android/dex/DexException;

    const-string v0, "invalid LEB128 sequence"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :goto_21
    throw p0

    :goto_22
    goto :goto_21
.end method

.method public static unsignedLeb128Size(I)I
    .registers 2

    shr-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    :goto_3
    if-eqz p0, :cond_a

    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static writeSignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V
    .registers 9

    shr-int/lit8 v0, p1, 0x7

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    const/4 v1, -0x1

    :goto_b
    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_d
    if-eqz v4, :cond_2f

    if-ne v0, v1, :cond_1b

    and-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, p1, 0x6

    and-int/2addr v5, v3

    if-eq v4, v5, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v4, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v4, 0x1

    :goto_1c
    if-eqz v4, :cond_21

    const/16 v5, 0x80

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    :goto_22
    and-int/lit8 p1, p1, 0x7f

    or-int/2addr p1, v5

    int-to-byte p1, p1

    .line 129
    invoke-interface {p0, p1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    shr-int/lit8 p1, v0, 0x7

    move v6, v0

    move v0, p1

    move p1, v6

    goto :goto_d

    :cond_2f
    return-void
.end method

.method public static writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V
    .registers 3

    :goto_0
    ushr-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_e

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 108
    invoke-interface {p0, p1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    move p1, v0

    goto :goto_0

    :cond_e
    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    .line 113
    invoke-interface {p0, p1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    return-void
.end method
