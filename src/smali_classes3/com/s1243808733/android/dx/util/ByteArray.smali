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
.method public constructor <init>([B)V
    .registers 4

    .line 77
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-gez p2, :cond_1

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    if-ge p3, p2, :cond_2

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    array-length v0, p1

    if-le p3, v0, :cond_3

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end > bytes.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_3
    iput-object p1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    .line 67
    iput p2, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    .line 68
    sub-int v0, p3, p2

    iput v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    return-void
.end method

.method static synthetic access$1000005(Lcom/s1243808733/android/dx/util/ByteArray;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$L1000000(Lcom/s1243808733/android/dx/util/ByteArray;)[B
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/s1243808733/android/dx/util/ByteArray;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    return v0
.end method

.method static synthetic access$L1000002(Lcom/s1243808733/android/dx/util/ByteArray;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    return v0
.end method

.method private checkOffsets(II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 219
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    if-le p2, v0, :cond_1

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "bad range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "; actual size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private getByte0(I)I
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method private getUnsignedByte0(I)I
    .registers 4

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
    .registers 3

    .line 123
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 124
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    return v0
.end method

.method public getBytes([BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)V"
        }
    .end annotation

    .line 204
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    if-ge v0, v1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "(out.length - offset) < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "size()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->bytes:[B

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    iget v2, p0, Lcom/s1243808733/android/dx/util/ByteArray;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getInt(I)I
    .registers 4

    .line 145
    add-int/lit8 v0, p1, 0x4

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 146
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getLong(I)J
    .registers 10

    .line 159
    add-int/lit8 v0, p1, 0x8

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 160
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    add-int/lit8 v2, p1, 0x2

    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v2

    add-int/lit8 v3, p1, 0x3

    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v3

    .line 164
    add-int/lit8 v4, p1, 0x4

    invoke-direct {p0, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte0(I)I

    move-result v4

    add-int/lit8 v5, p1, 0x5

    invoke-direct {p0, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v5

    add-int/lit8 v6, p1, 0x6

    invoke-direct {p0, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v6

    add-int/lit8 v7, p1, 0x7

    invoke-direct {p0, v7}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v7

    .line 169
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
    .registers 4

    .line 134
    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 135
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte0(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getUnsignedByte(I)I
    .registers 3

    .line 179
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 180
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShort(I)I
    .registers 4

    .line 190
    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->checkOffsets(II)V

    .line 191
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
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
    .registers 5

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
    .registers 3

    .line 113
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray;->start:I

    add-int/2addr v0, p1

    return v0
.end method
