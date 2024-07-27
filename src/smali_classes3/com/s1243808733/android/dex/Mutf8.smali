.class public final Lcom/s1243808733/android/dex/Mutf8;
.super Ljava/lang/Object;
.source "Mutf8.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countBytes(Ljava/lang/String;Z)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 67
    int-to-long v0, v2

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 69
    :goto_0
    if-lt v2, v3, :cond_0

    .line 82
    return-wide v0

    .line 70
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 71
    if-eqz v4, :cond_1

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_1

    .line 72
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 78
    :goto_1
    if-eqz p1, :cond_3

    const v4, 0xffff

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 79
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "String more than 65535 UTF bytes long"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    const/16 v5, 0x7ff

    if-gt v4, v5, :cond_2

    .line 74
    const/4 v4, 0x2

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 76
    :cond_2
    const/4 v4, 0x3

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 69
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static decode(Lcom/s1243808733/android/dex/util/ByteInput;[C)Ljava/lang/String;
    .registers 9
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

    .line 38
    if-nez v2, :cond_0

    .line 39
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 41
    :cond_0
    aput-char v2, p1, v0

    .line 42
    if-ge v2, v6, :cond_1

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    and-int/lit16 v3, v2, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_3

    .line 45
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 46
    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v6, :cond_2

    .line 47
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "bad second byte"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_3
    and-int/lit16 v3, v2, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_6

    .line 51
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 52
    invoke-interface {p0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 53
    and-int/lit16 v5, v3, 0xc0

    if-ne v5, v6, :cond_4

    and-int/lit16 v5, v4, 0xc0

    if-eq v5, v6, :cond_5

    .line 54
    :cond_4
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "bad second or third byte"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_5
    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    and-int/lit8 v3, v4, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_6
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "bad byte"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode([BILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 91
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 93
    if-eqz v3, :cond_1

    const/16 v0, 0x7f

    if-gt v3, v0, :cond_1

    .line 94
    add-int/lit8 v0, p1, 0x1

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    .line 91
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move p1, v0

    goto :goto_0

    .line 95
    :cond_1
    const/16 v0, 0x7ff

    if-gt v3, v0, :cond_2

    .line 96
    add-int/lit8 v4, p1, 0x1

    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 97
    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p0, v4

    goto :goto_1

    .line 99
    :cond_2
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    .line 100
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p0, v0

    .line 101
    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p0, v4

    goto :goto_1
.end method

.method public static encode(Ljava/lang/String;)[B
    .registers 3
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

    .line 113
    return-object v0
.end method
