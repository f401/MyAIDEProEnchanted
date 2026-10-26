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
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetsize(Lcom/s1243808733/android/dx/util/ByteArray;)I
    .locals 1

    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    return v0
.end method

.method static bridge synthetic -$$Nest$fgetstart(Lcom/s1243808733/android/dx/util/ByteArray;)I
    .locals 1

    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    return v0
.end method

.method static bridge synthetic -$$Nest$mgetUnsignedByte0(Lcom/s1243808733/android/dx/util/ByteArray;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v0

    return v0
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 77
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    if-lt p3, p2, :cond_1

    .line 62
    array-length v0, p1

    if-gt p3, v0, :cond_0

    .line 66
    iput-object p1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    .line 67
    iput p2, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    .line 68
    sub-int v0, p3, p2

    iput v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end > bytes.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOffsets(II)V
    .locals 2

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    .line 219
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    if-gt p2, v0, :cond_0

    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; actual size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getByte0(I)I
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method private getUnsignedByte0(I)I
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public getByte(I)I
    .locals 1

    .line 123
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 124
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    return v0
.end method

.method public getBytes([BI)V
    .locals 3

    .line 204
    array-length v0, p1

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    sub-int/2addr v0, p2

    if-lt v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    iget v2, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "(out.length - offset) < size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(I)I
    .locals 4

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
    add-int/lit8 v3, p1, 0x3

    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v3

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public getLong(I)J
    .locals 8

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
    add-int/lit8 v7, p1, 0x7

    invoke-direct {p0, v7}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v7

    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v7

    int-to-long v4, v4

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getShort(I)I
    .locals 2

    .line 134
    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 135
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public getUnsignedByte(I)I
    .locals 1

    .line 179
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 180
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 2

    .line 190
    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 191
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public makeDataInputStream()Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;
    .locals 2

    .line 257
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/ByteArray;->makeInputStream()Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;-><init>(Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;)V

    return-object v0
.end method

.method public makeInputStream()Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;
    .locals 1

    .line 270
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    return v0
.end method

.method public slice(II)Lcom/s1243808733/android/dx/util/ByteArray;
    .locals 2

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 99
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 100
    new-instance v1, Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([B)V

    return-object v1
.end method

.method public underlyingOffset(I)I
    .locals 1

    .line 113
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    add-int/2addr v0, p1

    return v0
.end method
