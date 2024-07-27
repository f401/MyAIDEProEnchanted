.class public final Lcom/s1243808733/android/dex/Leb128;
.super Ljava/lang/Object;
.source "Leb128.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readSignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I
    .registers 8

    const/16 v6, 0x80

    const/4 v1, 0x0

    .line 58
    const/4 v2, -0x1

    move v0, v1

    move v3, v1

    .line 61
    :goto_0
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v1

    and-int/lit16 v4, v1, 0xff

    .line 62
    and-int/lit8 v1, v4, 0x7f

    mul-int/lit8 v5, v3, 0x7

    shl-int/2addr v1, v5

    or-int/2addr v0, v1

    .line 63
    shl-int/lit8 v1, v2, 0x7

    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 60
    and-int/lit16 v2, v4, 0x80

    if-ne v2, v6, :cond_0

    const/4 v2, 0x5

    if-lt v3, v2, :cond_3

    .line 67
    :cond_0
    and-int/lit16 v2, v4, 0x80

    if-ne v2, v6, :cond_1

    .line 68
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    const-string v1, "invalid LEB128 sequence"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    .line 73
    or-int/2addr v0, v1

    .line 76
    :cond_2
    return v0

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public static readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I
    .registers 7

    const/16 v5, 0x80

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 88
    :goto_0
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v1

    and-int/lit16 v3, v1, 0xff

    .line 89
    and-int/lit8 v1, v3, 0x7f

    mul-int/lit8 v4, v2, 0x7

    shl-int/2addr v1, v4

    or-int/2addr v0, v1

    .line 90
    add-int/lit8 v1, v2, 0x1

    .line 87
    and-int/lit16 v2, v3, 0x80

    if-ne v2, v5, :cond_0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 93
    :cond_0
    and-int/lit16 v1, v3, 0x80

    if-ne v1, v5, :cond_2

    .line 94
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    const-string v1, "invalid LEB128 sequence"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    .line 97
    goto :goto_0

    :cond_2
    return v0
.end method

.method public static unsignedLeb128Size(I)I
    .registers 3

    .line 40
    shr-int/lit8 v0, p0, 0x7

    .line 41
    const/4 v1, 0x0

    .line 43
    :goto_0
    if-nez v0, :cond_0

    .line 48
    add-int/lit8 v0, v1, 0x1

    return v0

    .line 44
    :cond_0
    shr-int/lit8 v0, v0, 0x7

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static writeSignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/util/ByteOutput;",
            "I)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 121
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    shr-int/lit8 v5, p1, 0x7

    move v3, v4

    .line 125
    :goto_1
    if-nez v3, :cond_1

    return-void

    .line 123
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 126
    :cond_1
    if-ne v5, v0, :cond_2

    and-int/lit8 v2, v5, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_2

    move v3, v1

    .line 129
    :goto_2
    if-eqz v3, :cond_3

    const/16 v2, 0x80

    :goto_3
    and-int/lit8 v6, p1, 0x7f

    or-int/2addr v2, v6

    int-to-byte v2, v2

    invoke-interface {p0, v2}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    .line 131
    shr-int/lit8 v2, v5, 0x7

    move p1, v5

    move v5, v2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 126
    goto :goto_2

    :cond_3
    move v2, v1

    .line 129
    goto :goto_3
.end method

.method public static writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/util/ByteOutput;",
            "I)V"
        }
    .end annotation

    .line 105
    ushr-int/lit8 v0, p1, 0x7

    .line 107
    :goto_0
    if-nez v0, :cond_0

    .line 113
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    return-void

    .line 108
    :cond_0
    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/s1243808733/android/dex/util/ByteOutput;->writeByte(I)V

    .line 110
    ushr-int/lit8 v1, v0, 0x7

    move p1, v0

    move v0, v1

    goto :goto_0
.end method
