.class public final Lcom/s1243808733/android/dx/util/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/util/ByteArray$GetCursor;,
        Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;,
        Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;
    }
.end annotation


# instance fields
.field private final bytes:[B

.field private final size:I

.field private final start:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbytes(Lcom/s1243808733/android/dx/util/ByteArray;)[B
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsize(Lcom/s1243808733/android/dx/util/ByteArray;)I
    .registers 1

    iget p0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstart(Lcom/s1243808733/android/dx/util/ByteArray;)I
    .registers 1

    iget p0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetUnsignedByte0(Lcom/s1243808733/android/dx/util/ByteArray;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 77
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2c

    if-ltz p2, :cond_24

    if-lt p3, p2, :cond_1c

    .line 62
    array-length v0, p1

    if-gt p3, v0, :cond_14

    .line 66
    iput-object p1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    .line 67
    iput p2, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    .line 68
    sub-int/2addr p3, p2

    iput p3, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    return-void

    .line 63
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end > bytes.length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end < start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkOffsets(II)V
    .registers 5

    if-ltz p1, :cond_9

    if-lt p2, p1, :cond_9

    .line 219
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    if-gt p2, v0, :cond_9

    return-void

    .line 220
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; actual size "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getByte0(I)I
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method private getUnsignedByte0(I)I
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method


# virtual methods
.method public getByte(I)I
    .registers 3

    .line 123
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 124
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte0(I)I

    move-result p1

    return p1
.end method

.method public getBytes([BI)V
    .registers 6

    .line 204
    array-length v0, p1

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    sub-int/2addr v0, p2

    if-lt v0, v1, :cond_e

    .line 209
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    iget v2, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 205
    :cond_e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "(out.length - offset) < size()"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInt(I)I
    .registers 5

    .line 145
    add-int/lit8 v0, p1, 0x4

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 146
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    .line 147
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    .line 148
    add-int/lit8 v2, p1, 0x2

    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v2

    .line 149
    add-int/lit8 p1, p1, 0x3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result p1

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1
.end method

.method public getLong(I)J
    .registers 10

    .line 159
    add-int/lit8 v0, p1, 0x8

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 160
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    .line 161
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    .line 162
    add-int/lit8 v2, p1, 0x2

    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v2

    .line 163
    add-int/lit8 v3, p1, 0x3

    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v3

    .line 164
    add-int/lit8 v4, p1, 0x4

    invoke-direct {p0, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte0(I)I

    move-result v4

    .line 165
    add-int/lit8 v5, p1, 0x5

    invoke-direct {p0, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v5

    .line 166
    add-int/lit8 v6, p1, 0x6

    invoke-direct {p0, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v6

    .line 167
    add-int/lit8 p1, p1, 0x7

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result p1

    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v4, v5

    or-int/2addr p1, v4

    int-to-long v4, p1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p1, v3

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    or-long/2addr v0, v4

    return-wide v0
.end method

.method public getShort(I)I
    .registers 3

    .line 134
    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 135
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result p1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method public getUnsignedByte(I)I
    .registers 3

    .line 179
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 180
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result p1

    return p1
.end method

.method public getUnsignedShort(I)I
    .registers 3

    .line 190
    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 191
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result p1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method public makeDataInputStream()Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;
    .registers 3

    .line 257
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/ByteArray;->makeInputStream()Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;-><init>(Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;)V

    return-object v0
.end method

.method public makeInputStream()Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;
    .registers 2

    .line 270
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    return v0
.end method

.method public slice(II)Lcom/s1243808733/android/dx/util/ByteArray;
    .registers 4

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 99
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 100
    new-instance p2, Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([B)V

    return-object p2
.end method

.method public underlyingOffset(I)I
    .registers 3

    .line 113
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    add-int/2addr v0, p1

    return v0
.end method
