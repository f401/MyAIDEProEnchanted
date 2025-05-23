.class final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lokio/Buffer;I)V
    .registers 10

    const/4 v6, 0x0

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 58
    iget-wide v0, p1, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 63
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    move v1, v6

    move v2, v6

    :goto_11
    if-ge v1, p2, :cond_2c

    .line 64
    iget v3, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    if-eq v3, v4, :cond_24

    .line 67
    iget v3, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 63
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_11

    .line 65
    :cond_24
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "s.limit == s.pos"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 72
    :cond_2c
    new-array v0, v2, [[B

    iput-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 73
    mul-int/lit8 v0, v2, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    .line 76
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    move v1, v6

    move v0, v6

    :goto_3a
    if-ge v0, p2, :cond_5f

    .line 77
    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    iget-object v4, v2, Lokio/Segment;->data:[B

    aput-object v4, v3, v1

    .line 78
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 79
    if-le v0, p2, :cond_4b

    move v0, p2

    .line 82
    :cond_4b
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aput v0, v3, v1

    .line 83
    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v4, v4

    add-int/2addr v4, v1

    iget v5, v2, Lokio/Segment;->pos:I

    aput v5, v3, v4

    .line 84
    const/4 v3, 0x1

    iput-boolean v3, v2, Lokio/Segment;->shared:Z

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 76
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_3a

    .line 87
    :cond_5f
    return-void
.end method

.method private segment(I)I
    .registers 6

    .line 156
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 157
    if-ltz v0, :cond_f

    :goto_e
    return v0

    :cond_f
    xor-int/lit8 v0, v0, -0x1

    goto :goto_e
.end method

.method private toByteString()Lokio/ByteString;
    .registers 3

    .line 257
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .line 296
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 178
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .registers 2

    .line 98
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .registers 2

    .line 134
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    if-ne p1, p0, :cond_5

    .line 266
    :goto_4
    return v1

    :cond_5
    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_25

    move-object v0, p1

    check-cast v0, Lokio/ByteString;

    .line 267
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v3

    if-ne v0, v3, :cond_25

    check-cast p1, Lokio/ByteString;

    .line 268
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    invoke-virtual {p0, v2, p1, v2, v0}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_23
    move v1, v0

    .line 266
    goto :goto_4

    :cond_25
    move v0, v2

    .line 268
    goto :goto_23
.end method

.method public getByte(I)B
    .registers 8

    .line 146
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 147
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v1

    .line 148
    if-nez v1, :cond_27

    const/4 v0, 0x0

    .line 149
    :goto_17
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v4, v3

    add-int/2addr v4, v1

    aget v2, v2, v4

    .line 150
    aget-object v1, v3, v1

    sub-int v0, p1, v0

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    .line 148
    :cond_27
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    goto :goto_17
.end method

.method public hashCode()I
    .registers 10

    const/4 v1, 0x0

    .line 272
    iget v0, p0, Lokio/SegmentedByteString;->hashCode:I

    .line 273
    if-eqz v0, :cond_6

    .line 288
    :goto_5
    return v0

    .line 276
    :cond_6
    const/4 v0, 0x1

    .line 278
    iget-object v2, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v7, v2

    move v4, v1

    move v6, v1

    :goto_c
    if-ge v6, v7, :cond_30

    .line 279
    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v8, v1, v6

    .line 280
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v2, v7, v6

    aget v2, v1, v2

    .line 281
    aget v5, v1, v6

    move v1, v2

    move v3, v0

    .line 282
    :goto_1c
    sub-int v0, v5, v4

    add-int/2addr v0, v2

    if-ge v1, v0, :cond_2a

    .line 284
    mul-int/lit8 v0, v3, 0x1f

    aget-byte v3, v8, v1

    add-int/2addr v3, v0

    .line 283
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    .line 278
    :cond_2a
    add-int/lit8 v1, v6, 0x1

    move v0, v3

    move v4, v5

    move v6, v1

    goto :goto_c

    .line 288
    :cond_30
    iput v0, p0, Lokio/SegmentedByteString;->hashCode:I

    goto :goto_5
.end method

.method public hex()Ljava/lang/String;
    .registers 2

    .line 102
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 126
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->hmacSha1(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 130
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->hmacSha256(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf([BI)I
    .registers 4

    .line 248
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method internalArray()[B
    .registers 2

    .line 261
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf([BI)I
    .registers 4

    .line 252
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public md5()Lokio/ByteString;
    .registers 2

    .line 114
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .registers 12

    const/4 v1, 0x0

    .line 211
    if-ltz p1, :cond_a

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-le p1, v0, :cond_b

    .line 224
    :cond_a
    :goto_a
    return v1

    .line 213
    :cond_b
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    move v2, v0

    :goto_10
    if-lez p4, :cond_41

    .line 214
    if-nez v2, :cond_3a

    move v0, v1

    .line 215
    :goto_15
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aget v3, v3, v2

    .line 216
    sub-int/2addr v3, v0

    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 217
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v6, v5

    add-int/2addr v6, v2

    aget v4, v4, v6

    .line 218
    aget-object v5, v5, v2

    sub-int v0, p1, v0

    add-int/2addr v0, v4

    invoke-virtual {p2, p3, v5, v0, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 220
    add-int/2addr p1, v3

    .line 221
    add-int/2addr p3, v3

    .line 222
    sub-int/2addr p4, v3

    .line 213
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 214
    :cond_3a
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    goto :goto_15

    .line 224
    :cond_41
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public rangeEquals(I[BII)Z
    .registers 12

    const/4 v1, 0x0

    .line 228
    if-ltz p1, :cond_10

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_10

    if-ltz p3, :cond_10

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_11

    .line 244
    :cond_10
    :goto_10
    return v1

    .line 233
    :cond_11
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    move v2, v0

    :goto_16
    if-lez p4, :cond_47

    .line 234
    if-nez v2, :cond_40

    move v0, v1

    .line 235
    :goto_1b
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aget v3, v3, v2

    .line 236
    sub-int/2addr v3, v0

    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 237
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v6, v5

    add-int/2addr v6, v2

    aget v4, v4, v6

    .line 238
    aget-object v5, v5, v2

    sub-int v0, p1, v0

    add-int/2addr v0, v4

    invoke-static {v5, v0, p2, p3, v3}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 240
    add-int/2addr p1, v3

    .line 241
    add-int/2addr p3, v3

    .line 242
    sub-int/2addr p4, v3

    .line 233
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    .line 234
    :cond_40
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    goto :goto_1b

    .line 244
    :cond_47
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public sha1()Lokio/ByteString;
    .registers 2

    .line 118
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lokio/ByteString;
    .registers 2

    .line 122
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha256()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .line 161
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 94
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Lokio/ByteString;
    .registers 3

    .line 138
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->substring(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .registers 4

    .line 142
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .registers 2

    .line 106
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .registers 2

    .line 110
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .registers 9

    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v2, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget v0, v0, v3

    new-array v3, v0, [B

    .line 167
    array-length v4, v2

    move v0, v1

    move v2, v1

    :goto_f
    if-ge v2, v4, :cond_26

    .line 168
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v5, v4, v2

    aget v5, v1, v5

    .line 169
    aget v1, v1, v2

    .line 170
    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v2

    sub-int v7, v1, v0

    invoke-static {v6, v5, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_f

    .line 174
    :cond_26
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 292
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .registers 2

    .line 90
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 182
    if-eqz p1, :cond_1f

    .line 184
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v3, v0

    move v0, v1

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_27

    .line 185
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v4, v3, v2

    aget v4, v1, v4

    .line 186
    aget v1, v1, v2

    .line 187
    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v2

    sub-int v0, v1, v0

    invoke-virtual {p1, v5, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_8

    .line 182
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_27
    return-void
.end method

.method write(Lokio/Buffer;)V
    .registers 11

    const/4 v5, 0x0

    .line 193
    .line 194
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v8, v0

    move v3, v5

    move v7, v5

    :goto_6
    if-ge v7, v8, :cond_35

    .line 195
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v1, v8, v7

    aget v2, v0, v1

    .line 196
    aget v6, v0, v7

    .line 197
    new-instance v0, Lokio/Segment;

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v1, v1, v7

    add-int v4, v2, v6

    sub-int v3, v4, v3

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lokio/Segment;-><init>([BIIZZ)V

    .line 199
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_2d

    .line 200
    iput-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 194
    :goto_28
    add-int/lit8 v0, v7, 0x1

    move v3, v6

    move v7, v0

    goto :goto_6

    .line 202
    :cond_2d
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    goto :goto_28

    .line 206
    :cond_35
    iget-wide v0, p1, Lokio/Buffer;->size:J

    int-to-long v2, v3

    add-long/2addr v0, v2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 207
    return-void
.end method
