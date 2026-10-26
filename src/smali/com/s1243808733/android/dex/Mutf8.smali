.class public final Lcom/s1243808733/android/dex/Mutf8;
.super Ljava/lang/Object;
.source "Mutf8.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countBytes(Ljava/lang/String;Z)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    move-wide v2, v0

    :goto_0
    if-ge v4, v5, :cond_4

    .line 70
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    add-long/2addr v0, v2

    if-eqz p1, :cond_0

    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 79
    :cond_0
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_0

    .line 70
    :cond_1
    const/16 v1, 0x7ff

    if-gt v0, v1, :cond_2

    const-wide/16 v0, 0x2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x3

    goto :goto_1

    .line 79
    :cond_3
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "String more than 65535 UTF bytes long"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-wide v2
.end method

.method public static decode(Lcom/s1243808733/android/dex/util/ByteInput;[C)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v6, 0x80

    move v0, v1

    .line 37
    :goto_0
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    if-nez v2, :cond_0

    .line 39
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 41
    :cond_0
    aput-char v2, p1, v0

    if-ge v2, v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v3, v2, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_3

    .line 45
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v4, v3, 0xc0

    if-ne v4, v6, :cond_2

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    .line 49
    aput-char v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_2
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "bad second byte"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    and-int/lit16 v3, v2, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_5

    .line 51
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v3

    .line 52
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v4

    and-int/lit16 v5, v3, 0xc0

    if-ne v5, v6, :cond_4

    and-int/lit16 v5, v4, 0xc0

    if-ne v5, v6, :cond_4

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    and-int/lit8 v3, v4, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    .line 56
    aput-char v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_4
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "bad second or third byte"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_5
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "bad byte"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode([BILjava/lang/String;)V
    .locals 5

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_0

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_0

    int-to-byte v0, v0

    .line 94
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    .line 101
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move p1, v0

    goto :goto_0

    .line 94
    :cond_0
    const/16 v3, 0x7ff

    if-gt v0, v3, :cond_1

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    .line 96
    aput-byte v3, p0, p1

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 97
    add-int/lit8 v3, p1, 0x1

    aput-byte v0, p0, v3

    add-int/lit8 v0, p1, 0x2

    goto :goto_1

    :cond_1
    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    .line 99
    aput-byte v3, p0, p1

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 100
    add-int/lit8 v4, p1, 0x1

    aput-byte v3, p0, v4

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 101
    add-int/lit8 v3, p1, 0x2

    aput-byte v0, p0, v3

    add-int/lit8 v0, p1, 0x3

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/s1243808733/android/dex/Mutf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v0

    long-to-int v0, v0

    .line 111
    new-array v0, v0, [B

    .line 112
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/s1243808733/android/dex/Mutf8;->encode([BILjava/lang/String;)V

    return-object v0
.end method
