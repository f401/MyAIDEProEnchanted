.class public abstract Lorg/apache/tools/zip/AbstractUnicodeExtraField;
.super Ljava/lang/Object;
.source "AbstractUnicodeExtraField.java"

# interfaces
.implements Lorg/apache/tools/zip/ZipExtraField;


# instance fields
.field private data:[B

.field private nameCRC32:J

.field private unicodeName:[B


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .registers 5

    .line 67
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[BII)V
    .registers 7

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 51
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 52
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->nameCRC32:J

    .line 54
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    .line 55
    return-void
.end method

.method private assembleData()V
    .registers 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 71
    iget-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    .line 77
    aput-byte v3, v0, v4

    .line 78
    iget-wide v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->nameCRC32:J

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    const/4 v2, 0x4

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    iget-object v1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    const/4 v2, 0x5

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .registers 5

    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->assembleData()V

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    if-eqz v1, :cond_1

    .line 132
    array-length v0, v1

    new-array v0, v0, [B

    .line 133
    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    :cond_1
    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;
    .registers 3

    .line 140
    iget-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->assembleData()V

    .line 143
    :cond_0
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .registers 2

    .line 148
    invoke-virtual {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->getCentralDirectoryData()[B

    move-result-object v0

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;
    .registers 2

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getNameCRC32()J
    .registers 3

    .line 87
    iget-wide v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->nameCRC32:J

    return-wide v0
.end method

.method public getUnicodeName()[B
    .registers 5

    const/4 v3, 0x0

    .line 103
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    if-eqz v1, :cond_0

    .line 105
    array-length v0, v1

    new-array v0, v0, [B

    .line 106
    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    :cond_0
    return-object v0
.end method

.method public parseFromLocalFileData([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 160
    const/4 v0, 0x5

    if-lt p3, v0, :cond_1

    .line 165
    aget-byte v0, p1, p2

    .line 167
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 172
    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->nameCRC32:J

    .line 173
    add-int/lit8 v0, p3, -0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    .line 174
    add-int/lit8 v1, p2, 0x5

    const/4 v2, 0x0

    add-int/lit8 v3, p3, -0x5

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    .line 176
    return-void

    .line 168
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported version ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] for UniCode path extra data."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "UniCode path extra data must have at least 5 bytes."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNameCRC32(J)V
    .registers 4

    .line 95
    iput-wide p1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->nameCRC32:J

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    .line 97
    return-void
.end method

.method public setUnicodeName([B)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 115
    if-eqz p1, :cond_0

    .line 116
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    .line 117
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    :goto_0
    iput-object v3, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    .line 123
    return-void

    .line 120
    :cond_0
    iput-object v3, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    goto :goto_0
.end method
