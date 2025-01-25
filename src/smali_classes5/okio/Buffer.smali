.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .registers 8

    .line 1712
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1713
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_31

    .line 1714
    iget-object v0, v0, Lokio/Segment;->data:[B

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 1715
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_1e
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_31

    .line 1716
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 1715
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1e

    .line 1719
    :cond_31
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_38} :catch_3a

    move-result-object v0

    return-object v0

    .line 1720
    :catch_3a
    move-exception v0

    .line 1721
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .registers 9

    .line 1742
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 1743
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1744
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_3d

    .line 1745
    iget-object v0, v0, Lokio/Segment;->data:[B

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 1746
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_2a
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_3d

    .line 1747
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Mac;->update([BII)V

    .line 1746
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_2a

    .line 1750
    :cond_3d
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_44} :catch_4d
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_44} :catch_46

    move-result-object v0

    return-object v0

    .line 1753
    :catch_46
    move-exception v0

    .line 1754
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1751
    :catch_4d
    move-exception v0

    .line 1752
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z
    .registers 12

    .line 1643
    iget v2, p1, Lokio/Segment;->limit:I

    .line 1644
    iget-object v0, p1, Lokio/Segment;->data:[B

    move-object v3, p1

    move v1, p2

    .line 1646
    :goto_6
    if-ge p4, p5, :cond_21

    .line 1647
    if-ne v1, v2, :cond_12

    .line 1648
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1649
    iget-object v0, v3, Lokio/Segment;->data:[B

    .line 1650
    iget v1, v3, Lokio/Segment;->pos:I

    .line 1651
    iget v2, v3, Lokio/Segment;->limit:I

    .line 1654
    :cond_12
    aget-byte v4, v0, v1

    invoke-virtual {p3, p4}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_1c

    .line 1655
    const/4 v0, 0x0

    .line 1662
    :goto_1b
    return v0

    .line 1658
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 1659
    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    .line 1662
    :cond_21
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    if-eqz p1, :cond_3b

    .line 255
    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_a

    if-eqz p4, :cond_26

    .line 256
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 257
    iget v1, v0, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 258
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 259
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2d

    .line 260
    if-eqz p4, :cond_27

    .line 267
    :cond_26
    return-void

    .line 261
    :cond_27
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 263
    :cond_2d
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->limit:I

    .line 264
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 265
    int-to-long v0, v1

    sub-long/2addr p2, v0

    .line 266
    goto :goto_2

    .line 254
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .registers 1

    .line 71
    return-object p0
.end method

.method public final clear()V
    .registers 3

    .line 930
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    .line 933
    return-void

    .line 931
    :catch_6
    move-exception v0

    .line 932
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .registers 7

    .line 1814
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 1815
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    move-object v0, v1

    .line 1823
    :goto_e
    return-object v0

    .line 1817
    :cond_f
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-virtual {v0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v0

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1818
    iput-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1819
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_1f
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_31

    .line 1820
    iget-object v2, v1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1819
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1f

    .line 1822
    :cond_31
    iget-wide v2, p0, Lokio/Buffer;->size:J

    iput-wide v2, v1, Lokio/Buffer;->size:J

    move-object v0, v1

    .line 1823
    goto :goto_e
.end method

.method public close()V
    .registers 1

    .line 1673
    return-void
.end method

.method public final completeSegmentByteCount()J
    .registers 6

    const-wide/16 v2, 0x0

    .line 275
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 276
    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    move-wide v0, v2

    .line 284
    :cond_9
    :goto_9
    return-wide v0

    .line 279
    :cond_a
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 280
    iget v3, v2, Lokio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_9

    iget-boolean v3, v2, Lokio/Segment;->owner:Z

    if-eqz v3, :cond_9

    .line 281
    iget v3, v2, Lokio/Segment;->limit:I

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_9
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lokio/Buffer;->size:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    .line 158
    if-eqz p1, :cond_43

    .line 159
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 160
    cmp-long v0, p4, v6

    if-nez v0, :cond_10

    .line 177
    :cond_f
    return-object p0

    .line 163
    :cond_10
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 164
    :goto_12
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_26

    .line 165
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 164
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_12

    .line 169
    :cond_26
    :goto_26
    cmp-long v1, p4, v6

    if-lez v1, :cond_f

    .line 170
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v2, v1

    add-long/2addr v2, p2

    long-to-int v1, v2

    .line 171
    iget v2, v0, Lokio/Segment;->limit:I

    sub-int/2addr v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 172
    iget-object v3, v0, Lokio/Segment;->data:[B

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 173
    int-to-long v2, v2

    sub-long/2addr p4, v2

    .line 169
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v6

    goto :goto_26

    .line 158
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .registers 14

    const-wide/16 v6, 0x0

    .line 182
    if-eqz p1, :cond_62

    .line 183
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 184
    cmp-long v0, p4, v6

    if-nez v0, :cond_10

    .line 208
    :cond_f
    return-object p0

    .line 186
    :cond_10
    iget-wide v0, p1, Lokio/Buffer;->size:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 189
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 190
    :goto_17
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_2b

    .line 191
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 190
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_17

    .line 195
    :cond_2b
    :goto_2b
    cmp-long v1, p4, v6

    if-lez v1, :cond_f

    .line 196
    invoke-virtual {v0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v1

    .line 197
    iget v2, v1, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, Lokio/Segment;->pos:I

    .line 198
    iget v2, v1, Lokio/Segment;->pos:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lokio/Segment;->limit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lokio/Segment;->limit:I

    .line 199
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_5c

    .line 200
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 204
    :goto_50
    iget v2, v1, Lokio/Segment;->limit:I

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    .line 195
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v6

    goto :goto_2b

    .line 202
    :cond_5c
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v2, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    goto :goto_50

    .line 182
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emit()Lokio/BufferedSink;
    .registers 1

    .line 105
    return-object p0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .registers 1

    .line 101
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 16

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1759
    if-ne p0, p1, :cond_8

    move v0, v6

    .line 1788
    :goto_7
    return v0

    .line 1760
    :cond_8
    instance-of v0, p1, Lokio/Buffer;

    if-nez v0, :cond_e

    move v0, v7

    goto :goto_7

    .line 1761
    :cond_e
    check-cast p1, Lokio/Buffer;

    .line 1762
    iget-wide v0, p0, Lokio/Buffer;->size:J

    iget-wide v4, p1, Lokio/Buffer;->size:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1a

    move v0, v7

    goto :goto_7

    .line 1763
    :cond_1a
    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    move v0, v6

    goto :goto_7

    .line 1765
    :cond_20
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1766
    iget-object v5, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1767
    iget v1, v0, Lokio/Segment;->pos:I

    .line 1768
    iget v4, v5, Lokio/Segment;->pos:I

    .line 1770
    :goto_28
    iget-wide v8, p0, Lokio/Buffer;->size:J

    cmp-long v8, v2, v8

    if-gez v8, :cond_64

    .line 1771
    iget v8, v0, Lokio/Segment;->limit:I

    sub-int/2addr v8, v1

    iget v9, v5, Lokio/Segment;->limit:I

    sub-int/2addr v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    .line 1773
    :goto_3a
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_52

    .line 1774
    iget-object v9, v0, Lokio/Segment;->data:[B

    aget-byte v9, v9, v1

    iget-object v12, v5, Lokio/Segment;->data:[B

    aget-byte v12, v12, v4

    if-eq v9, v12, :cond_4b

    move v0, v7

    goto :goto_7

    .line 1773
    :cond_4b
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 1777
    :cond_52
    iget v8, v0, Lokio/Segment;->limit:I

    if-ne v1, v8, :cond_5a

    .line 1778
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1779
    iget v1, v0, Lokio/Segment;->pos:I

    .line 1782
    :cond_5a
    iget v8, v5, Lokio/Segment;->limit:I

    if-ne v4, v8, :cond_62

    .line 1783
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    .line 1784
    iget v4, v5, Lokio/Segment;->pos:I

    .line 1770
    :cond_62
    add-long/2addr v2, v10

    goto :goto_28

    :cond_64
    move v0, v6

    .line 1788
    goto :goto_7
.end method

.method public exhausted()Z
    .registers 5

    .line 109
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public flush()V
    .registers 1

    .line 1666
    return-void
.end method

.method public getBuffer()Lokio/Buffer;
    .registers 1

    .line 75
    return-object p0
.end method

.method public final getByte(J)B
    .registers 10

    .line 310
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 311
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long v2, v0, p1

    cmp-long v2, v2, p1

    if-lez v2, :cond_2a

    .line 312
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 313
    :goto_12
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    .line 314
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_25

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v0, v0, Lokio/Segment;->pos:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    .line 321
    :goto_24
    return v0

    .line 315
    :cond_25
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 312
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_12

    .line 318
    :cond_2a
    sub-long v2, p1, v0

    .line 319
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 320
    :goto_30
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 321
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_46

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v0, v0, Lokio/Segment;->pos:I

    long-to-int v2, v2

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    goto :goto_24

    .line 319
    :cond_46
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_30
.end method

.method public hashCode()I
    .registers 6

    .line 1792
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1793
    if-nez v0, :cond_6

    const/4 v1, 0x0

    .line 1801
    :goto_5
    return v1

    .line 1794
    :cond_6
    const/4 v1, 0x1

    .line 1796
    :cond_7
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    :goto_b
    if-ge v2, v3, :cond_17

    .line 1797
    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lokio/Segment;->data:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    .line 1796
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1799
    :cond_17
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1800
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v0, v2, :cond_7

    goto :goto_5
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 1727
    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 1732
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 1737
    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(B)J
    .registers 8

    .line 1413
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .registers 10

    .line 1421
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .registers 16

    .line 1425
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_7d

    cmp-long v0, p4, p2

    if-ltz v0, :cond_7d

    .line 1430
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v0, p4, v2

    if-lez v0, :cond_12

    iget-wide p4, p0, Lokio/Buffer;->size:J

    .line 1431
    :cond_12
    cmp-long v0, p2, p4

    if-nez v0, :cond_19

    const-wide/16 v0, -0x1

    .line 1477
    :goto_18
    return-wide v0

    .line 1439
    :cond_19
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1440
    if-nez v0, :cond_20

    .line 1442
    const-wide/16 v0, -0x1

    goto :goto_18

    .line 1443
    :cond_20
    sub-long/2addr v2, p2

    cmp-long v1, v2, p2

    if-gez v1, :cond_35

    .line 1445
    iget-wide v2, p0, Lokio/Buffer;->size:J

    .line 1446
    :goto_27
    cmp-long v1, v2, p2

    if-lez v1, :cond_a3

    .line 1447
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 1448
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    sub-long/2addr v2, v4

    goto :goto_27

    .line 1452
    :cond_35
    const-wide/16 v2, 0x0

    .line 1453
    :goto_37
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v4, v2

    cmp-long v1, v4, p2

    if-gez v1, :cond_a3

    .line 1454
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide v2, v4

    .line 1455
    goto :goto_37

    .line 1472
    :cond_46
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    add-long/2addr v2, v4

    .line 1474
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v2

    move-wide v4, v2

    .line 1461
    :goto_51
    cmp-long v1, v4, p4

    if-gez v1, :cond_7a

    .line 1462
    iget-object v2, v0, Lokio/Segment;->data:[B

    .line 1463
    iget v1, v0, Lokio/Segment;->limit:I

    int-to-long v6, v1

    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v8, v1

    add-long/2addr v8, p4

    sub-long/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    .line 1464
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v6, v1

    add-long/2addr v6, p2

    sub-long/2addr v6, v4

    long-to-int v1, v6

    .line 1465
    :goto_6a
    if-ge v1, v3, :cond_46

    .line 1466
    aget-byte v6, v2, v1

    if-ne v6, p1, :cond_77

    .line 1467
    iget v0, v0, Lokio/Segment;->pos:I

    sub-int v0, v1, v0

    int-to-long v0, v0

    add-long/2addr v0, v4

    goto :goto_18

    .line 1465
    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 1477
    :cond_7a
    const-wide/16 v0, -0x1

    goto :goto_18

    .line 1426
    :cond_7d
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 1427
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size=%s fromIndex=%s toIndex=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a3
    move-wide v4, v2

    goto :goto_51
.end method

.method public indexOf(Lokio/ByteString;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1481
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1485
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v2

    if-eqz v2, :cond_b0

    .line 1486
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_a8

    .line 1494
    move-object/from16 v0, p0

    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1495
    if-nez v2, :cond_15

    .line 1497
    const-wide/16 v2, -0x1

    .line 1536
    :goto_14
    return-wide v2

    .line 1498
    :cond_15
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokio/Buffer;->size:J

    sub-long v4, v4, p2

    cmp-long v3, v4, p2

    if-gez v3, :cond_31

    .line 1500
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokio/Buffer;->size:J

    .line 1501
    :goto_23
    cmp-long v3, v4, p2

    if-lez v3, :cond_42

    .line 1502
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1503
    iget v3, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v6

    int-to-long v6, v3

    sub-long/2addr v4, v6

    goto :goto_23

    .line 1507
    :cond_31
    const-wide/16 v4, 0x0

    .line 1508
    :goto_33
    iget v3, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v6

    int-to-long v6, v3

    add-long/2addr v6, v4

    cmp-long v3, v6, p2

    if-gez v3, :cond_42

    .line 1509
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide v4, v6

    .line 1510
    goto :goto_33

    .line 1517
    :cond_42
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lokio/ByteString;->getByte(I)B

    move-result v9

    .line 1518
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v7

    .line 1519
    const-wide/16 v10, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lokio/Buffer;->size:J

    int-to-long v14, v7

    sub-long/2addr v12, v14

    add-long/2addr v12, v10

    move-object v3, v2

    move-wide v10, v4

    .line 1520
    :goto_58
    cmp-long v2, v10, v12

    if-gez v2, :cond_a4

    .line 1522
    iget-object v14, v3, Lokio/Segment;->data:[B

    .line 1523
    iget v2, v3, Lokio/Segment;->limit:I

    int-to-long v4, v2

    iget v2, v3, Lokio/Segment;->pos:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v16, v16, v12

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v15, v4

    .line 1524
    iget v2, v3, Lokio/Segment;->pos:I

    int-to-long v4, v2

    add-long v4, v4, p2

    sub-long/2addr v4, v10

    long-to-int v2, v4

    move v8, v2

    :goto_79
    if-ge v8, v15, :cond_97

    .line 1525
    aget-byte v2, v14, v8

    if-ne v2, v9, :cond_93

    add-int/lit8 v4, v8, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 1526
    iget v2, v3, Lokio/Segment;->pos:I

    sub-int v2, v8, v2

    int-to-long v2, v2

    add-long/2addr v2, v10

    goto :goto_14

    .line 1525
    :cond_93
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_79

    .line 1531
    :cond_97
    iget v2, v3, Lokio/Segment;->limit:I

    iget v4, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    add-long/2addr v4, v10

    .line 1533
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    move-wide v10, v4

    move-wide/from16 p2, v4

    .line 1534
    goto :goto_58

    .line 1536
    :cond_a4
    const-wide/16 v2, -0x1

    goto/16 :goto_14

    .line 1486
    :cond_a8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "fromIndex < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1485
    :cond_b0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bytes is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .registers 4

    .line 1540
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .registers 16

    .line 1544
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_b4

    .line 1552
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1553
    if-nez v0, :cond_d

    .line 1555
    const-wide/16 v0, -0x1

    .line 1602
    :goto_c
    return-wide v0

    .line 1556
    :cond_d
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p2

    cmp-long v1, v2, p2

    if-gez v1, :cond_24

    .line 1558
    iget-wide v2, p0, Lokio/Buffer;->size:J

    .line 1559
    :goto_16
    cmp-long v1, v2, p2

    if-lez v1, :cond_35

    .line 1560
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 1561
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    sub-long/2addr v2, v4

    goto :goto_16

    .line 1565
    :cond_24
    const-wide/16 v2, 0x0

    .line 1566
    :goto_26
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v4, v2

    cmp-long v1, v4, p2

    if-gez v1, :cond_35

    .line 1567
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide v2, v4

    .line 1568
    goto :goto_26

    .line 1576
    :cond_35
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_74

    .line 1578
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    move-result v6

    .line 1579
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    move-result v7

    .line 1580
    :goto_46
    iget-wide v4, p0, Lokio/Buffer;->size:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_b0

    .line 1581
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 1582
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v8, v1

    add-long/2addr v8, p2

    sub-long/2addr v8, v2

    long-to-int v1, v8

    iget v5, v0, Lokio/Segment;->limit:I

    :goto_56
    if-ge v1, v5, :cond_68

    .line 1583
    aget-byte v8, v4, v1

    .line 1584
    if-eq v8, v6, :cond_5e

    if-ne v8, v7, :cond_65

    .line 1585
    :cond_5e
    iget v0, v0, Lokio/Segment;->pos:I

    sub-int v0, v1, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_c

    .line 1582
    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 1590
    :cond_68
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v4, v2

    .line 1592
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide v2, v4

    move-wide p2, v4

    .line 1593
    goto :goto_46

    .line 1596
    :cond_74
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object v6

    .line 1597
    :goto_78
    iget-wide v4, p0, Lokio/Buffer;->size:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_b0

    .line 1598
    iget-object v5, v0, Lokio/Segment;->data:[B

    .line 1599
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v8, v1

    add-long/2addr v8, p2

    sub-long/2addr v8, v2

    long-to-int v1, v8

    iget v7, v0, Lokio/Segment;->limit:I

    move v4, v1

    :goto_89
    const/4 v1, 0x0

    if-ge v4, v7, :cond_a4

    .line 1600
    aget-byte v8, v5, v4

    .line 1601
    array-length v9, v6

    :goto_8f
    if-ge v1, v9, :cond_a0

    aget-byte v10, v6, v1

    .line 1602
    if-ne v8, v10, :cond_9d

    iget v0, v0, Lokio/Segment;->pos:I

    sub-int v0, v4, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto/16 :goto_c

    .line 1601
    :cond_9d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 1599
    :cond_a0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_89

    .line 1607
    :cond_a4
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v4, v2

    .line 1609
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide v2, v4

    move-wide p2, v4

    .line 1610
    goto :goto_78

    .line 1597
    :cond_b0
    const-wide/16 v0, -0x1

    goto/16 :goto_c

    .line 1544
    :cond_b4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    .line 125
    new-instance v0, Lokio/Buffer$2;

    invoke-direct {v0, p0}, Lokio/Buffer$2;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .line 1669
    const/4 v0, 0x1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .registers 2

    .line 1692
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .registers 2

    .line 79
    new-instance v0, Lokio/Buffer$1;

    invoke-direct {v0, p0}, Lokio/Buffer$1;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public peek()Lokio/BufferedSource;
    .registers 2

    .line 121
    new-instance v0, Lokio/PeekSource;

    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .registers 11

    .line 1617
    const/4 v5, 0x0

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .registers 13

    const/4 v0, 0x0

    .line 1622
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1a

    if-ltz p4, :cond_1a

    if-ltz p5, :cond_1a

    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    int-to-long v4, p5

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1a

    .line 1626
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_1b

    .line 1634
    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    move v1, v0

    .line 1629
    :goto_1c
    if-ge v1, p5, :cond_2f

    .line 1630
    int-to-long v2, v1

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 1629
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1634
    :cond_2f
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 908
    if-nez v1, :cond_6

    const/4 v0, -0x1

    .line 921
    :cond_5
    :goto_5
    return v0

    .line 910
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 911
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 913
    iget v2, v1, Lokio/Segment;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Lokio/Segment;->pos:I

    .line 914
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 916
    iget v2, v1, Lokio/Segment;->pos:I

    iget v3, v1, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_5

    .line 917
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 918
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_5
.end method

.method public read([B)I
    .registers 4

    .line 875
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10

    .line 888
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 890
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 891
    if-nez v1, :cond_d

    const/4 v0, -0x1

    .line 903
    :cond_c
    :goto_c
    return v0

    .line 892
    :cond_d
    iget v0, v1, Lokio/Segment;->limit:I

    iget v2, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 893
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iget v2, v1, Lokio/Segment;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Lokio/Segment;->pos:I

    .line 896
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 898
    iget v2, v1, Lokio/Segment;->pos:I

    iget v3, v1, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_c

    .line 899
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 900
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_c
.end method

.method public read(Lokio/Buffer;J)J
    .registers 8

    const-wide/16 v2, 0x0

    .line 1404
    if-eqz p1, :cond_32

    .line 1405
    cmp-long v0, p2, v2

    if-ltz v0, :cond_1b

    .line 1406
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    const-wide/16 p2, -0x1

    .line 1409
    :goto_10
    return-wide p2

    .line 1407
    :cond_11
    cmp-long v0, p2, v0

    if-lez v0, :cond_17

    iget-wide p2, p0, Lokio/Buffer;->size:J

    .line 1408
    :cond_17
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_10

    .line 1405
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1404
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAll(Lokio/Sink;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 684
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    .line 685
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 687
    :cond_b
    return-wide v0
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .registers 2

    .line 1857
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .registers 4

    .line 1861
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_a

    .line 1865
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1867
    return-object p1

    .line 1862
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()B
    .registers 11

    .line 288
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    .line 290
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 291
    iget v1, v0, Lokio/Segment;->pos:I

    .line 292
    iget v2, v0, Lokio/Segment;->limit:I

    .line 294
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 295
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    .line 296
    iget-wide v6, p0, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 298
    if-ne v4, v2, :cond_27

    .line 299
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 300
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 305
    :goto_26
    return v1

    .line 302
    :cond_27
    iput v4, v0, Lokio/Segment;->pos:I

    goto :goto_26

    .line 288
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteArray()[B
    .registers 3

    .line 857
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 858
    :catch_7
    move-exception v0

    .line 859
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 864
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 865
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_16

    .line 869
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 870
    invoke-virtual {p0, v0}, Lokio/Buffer;->readFully([B)V

    .line 871
    return-object v0

    .line 866
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readByteString()Lokio/ByteString;
    .registers 3

    .line 548
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 552
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 21

    .line 434
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d3

    .line 437
    const-wide/16 v4, 0x0

    .line 438
    const/4 v7, 0x0

    .line 439
    const/4 v6, 0x0

    .line 440
    const/4 v8, 0x0

    .line 442
    const-wide v10, -0xcccccccccccccccL

    .line 443
    const-wide/16 v2, -0x7

    .line 446
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 448
    iget-object v13, v12, Lokio/Segment;->data:[B

    .line 449
    iget v9, v12, Lokio/Segment;->pos:I

    .line 450
    iget v14, v12, Lokio/Segment;->limit:I

    .line 452
    :goto_20
    if-ge v9, v14, :cond_91

    .line 453
    aget-byte v15, v13, v9

    .line 454
    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v15, v0, :cond_80

    const/16 v16, 0x39

    move/from16 v0, v16

    if-gt v15, v0, :cond_80

    .line 455
    rsub-int/lit8 v16, v15, 0x30

    .line 458
    cmp-long v17, v4, v10

    if-ltz v17, :cond_43

    cmp-long v17, v4, v10

    if-nez v17, :cond_70

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v17, v18, v2

    if-gez v17, :cond_70

    :cond_43
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v15}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 460
    if-nez v6, :cond_55

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 461
    :cond_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    :cond_70
    const-wide/16 v18, 0xa

    mul-long v4, v4, v18

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    .line 452
    :goto_7b
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 465
    :cond_80
    const/16 v16, 0x2d

    move/from16 v0, v16

    if-ne v15, v0, :cond_8e

    if-nez v7, :cond_8e

    .line 466
    const/4 v6, 0x1

    .line 467
    const-wide/16 v16, 0x1

    sub-long v2, v2, v16

    goto :goto_7b

    .line 469
    :cond_8e
    if-eqz v7, :cond_b3

    .line 474
    const/4 v8, 0x1

    .line 452
    :cond_91
    if-ne v9, v14, :cond_ce

    .line 480
    invoke-virtual {v12}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 481
    invoke-static {v12}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 485
    :goto_9e
    if-nez v8, :cond_a6

    move-object/from16 v0, p0

    iget-object v9, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v9, :cond_16

    .line 487
    :cond_a6
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    int-to-long v8, v7

    sub-long/2addr v2, v8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lokio/Buffer;->size:J

    .line 488
    if-eqz v6, :cond_d1

    :goto_b2
    return-wide v4

    .line 470
    :cond_b3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 483
    :cond_ce
    iput v9, v12, Lokio/Segment;->pos:I

    goto :goto_9e

    .line 488
    :cond_d1
    neg-long v4, v4

    goto :goto_b2

    .line 434
    :cond_d3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 243
    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_b

    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 250
    return-object p0

    .line 248
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readFully(Lokio/Buffer;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 675
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_a

    .line 679
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 680
    return-void

    .line 676
    :cond_a
    invoke-virtual {p1, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 677
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readFully([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 879
    const/4 v0, 0x0

    .line 880
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 881
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    .line 882
    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 883
    add-int/2addr v0, v1

    .line 884
    goto :goto_1

    .line 882
    :cond_f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 885
    :cond_15
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 15

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    .line 492
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_af

    move-wide v0, v2

    move v4, v5

    move v6, v5

    .line 499
    :goto_c
    iget-object v8, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 501
    iget-object v9, v8, Lokio/Segment;->data:[B

    .line 502
    iget v7, v8, Lokio/Segment;->pos:I

    .line 503
    iget v10, v8, Lokio/Segment;->limit:I

    move v5, v6

    .line 505
    :goto_15
    if-ge v7, v10, :cond_79

    .line 508
    aget-byte v11, v9, v7

    .line 509
    const/16 v6, 0x30

    if-lt v11, v6, :cond_34

    const/16 v6, 0x39

    if-gt v11, v6, :cond_34

    .line 510
    add-int/lit8 v6, v11, -0x30

    .line 526
    :goto_23
    const-wide/high16 v12, -0x1000000000000000L  # -3.105036184601418E231

    and-long/2addr v12, v0

    cmp-long v12, v12, v2

    if-nez v12, :cond_4e

    .line 531
    const/4 v11, 0x4

    shl-long/2addr v0, v11

    int-to-long v12, v6

    or-long/2addr v0, v12

    .line 505
    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    move v7, v6

    goto :goto_15

    .line 511
    :cond_34
    const/16 v6, 0x61

    if-lt v11, v6, :cond_41

    const/16 v6, 0x66

    if-gt v11, v6, :cond_41

    .line 512
    add-int/lit8 v6, v11, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_23

    .line 513
    :cond_41
    const/16 v6, 0x41

    if-lt v11, v6, :cond_76

    const/16 v6, 0x46

    if-gt v11, v6, :cond_76

    .line 514
    add-int/lit8 v6, v11, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_23

    .line 527
    :cond_4e
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_76
    if-eqz v5, :cond_91

    .line 521
    const/4 v4, 0x1

    .line 535
    :cond_79
    if-ne v7, v10, :cond_ac

    .line 536
    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 537
    invoke-static {v8}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 541
    :goto_84
    if-nez v4, :cond_8a

    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_b7

    .line 543
    :cond_8a
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v5

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 544
    return-wide v0

    .line 517
    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_ac
    iput v7, v8, Lokio/Segment;->pos:I

    goto :goto_84

    .line 492
    :cond_af
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b7
    move v6, v5

    goto/16 :goto_c
.end method

.method public readInt()I
    .registers 13

    const-wide/16 v10, 0x4

    .line 356
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v10

    if-ltz v0, :cond_6c

    .line 358
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 359
    iget v1, v0, Lokio/Segment;->pos:I

    .line 360
    iget v2, v0, Lokio/Segment;->limit:I

    .line 363
    sub-int v3, v2, v1

    const/4 v4, 0x4

    if-ge v3, v4, :cond_35

    .line 364
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    .line 365
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    .line 366
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v2

    .line 367
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    .line 364
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    or-int/2addr v0, v1

    .line 384
    :goto_34
    return v0

    .line 370
    :cond_35
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 371
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v3, v5

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    .line 375
    iget-wide v8, p0, Lokio/Buffer;->size:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lokio/Buffer;->size:J

    .line 377
    if-ne v7, v2, :cond_69

    .line 378
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 379
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 384
    :goto_57
    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, v4, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v5, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    or-int/2addr v0, v1

    goto :goto_34

    .line 381
    :cond_69
    iput v7, v0, Lokio/Segment;->pos:I

    goto :goto_57

    .line 356
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size < 4: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readIntLe()I
    .registers 2

    .line 426
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 29

    .line 388
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokio/Buffer;->size:J

    const-wide/16 v6, 0x8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_c1

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 391
    iget v5, v4, Lokio/Segment;->pos:I

    .line 392
    iget v6, v4, Lokio/Segment;->limit:I

    .line 395
    sub-int v7, v6, v5

    const/16 v8, 0x8

    if-ge v7, v8, :cond_33

    .line 396
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readInt()I

    move-result v4

    int-to-long v4, v4

    .line 397
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readInt()I

    move-result v6

    int-to-long v6, v6

    .line 396
    const-wide v8, 0xffffffffL

    and-long/2addr v4, v8

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 418
    :goto_32
    return-wide v4

    .line 400
    :cond_33
    iget-object v7, v4, Lokio/Segment;->data:[B

    .line 401
    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v7, v5

    int-to-long v10, v5

    add-int/lit8 v5, v8, 0x1

    aget-byte v8, v7, v8

    int-to-long v8, v8

    add-int/lit8 v12, v5, 0x1

    aget-byte v5, v7, v5

    int-to-long v14, v5

    add-int/lit8 v5, v12, 0x1

    aget-byte v12, v7, v12

    int-to-long v12, v12

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v7, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-int/lit8 v5, v16, 0x1

    aget-byte v16, v7, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-int/lit8 v20, v5, 0x1

    aget-byte v5, v7, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    add-int/lit8 v5, v20, 0x1

    aget-byte v7, v7, v20

    int-to-long v0, v7

    move-wide/from16 v20, v0

    .line 409
    move-object/from16 v0, p0

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x8

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lokio/Buffer;->size:J

    .line 411
    if-ne v5, v6, :cond_be

    .line 412
    invoke-virtual {v4}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 413
    invoke-static {v4}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 418
    :goto_84
    const-wide/16 v4, 0xff

    and-long v4, v4, v22

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v6, v10

    const/16 v10, 0x38

    shl-long/2addr v6, v10

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v8, v14

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v8, v12

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long v8, v8, v18

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long v8, v8, v16

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    or-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long v6, v6, v20

    or-long/2addr v4, v6

    goto/16 :goto_32

    .line 415
    :cond_be
    iput v5, v4, Lokio/Segment;->pos:I

    goto :goto_84

    .line 388
    :cond_c1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size < 8: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lokio/Buffer;->size:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public readLongLe()J
    .registers 3

    .line 430
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 11

    const-wide/16 v8, 0x2

    .line 327
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_4a

    .line 329
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 330
    iget v1, v0, Lokio/Segment;->pos:I

    .line 331
    iget v2, v0, Lokio/Segment;->limit:I

    .line 334
    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_24

    .line 335
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    .line 336
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    .line 337
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 352
    :goto_23
    return v0

    .line 340
    :cond_24
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 341
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    .line 343
    iget-wide v6, p0, Lokio/Buffer;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 345
    if-ne v5, v2, :cond_47

    .line 346
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 347
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 352
    :goto_3e
    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v3, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_23

    .line 349
    :cond_47
    iput v5, v0, Lokio/Segment;->pos:I

    goto :goto_3e

    .line 327
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size < 2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readShortLe()S
    .registers 2

    .line 422
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    .line 711
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 712
    if-eqz p3, :cond_6c

    .line 713
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_55

    .line 716
    cmp-long v0, p1, v2

    if-nez v0, :cond_18

    const-string v0, ""

    .line 733
    :cond_17
    :goto_17
    return-object v0

    .line 718
    :cond_18
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 719
    iget v0, v1, Lokio/Segment;->pos:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lokio/Segment;->limit:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2f

    .line 721
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_17

    .line 724
    :cond_2f
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 725
    iget v2, v1, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lokio/Segment;->pos:I

    .line 726
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 728
    iget v2, v1, Lokio/Segment;->pos:I

    iget v3, v1, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_17

    .line 729
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 730
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_17

    .line 714
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 712
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 704
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 705
    :catch_7
    move-exception v0

    .line 706
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .registers 2

    .line 1843
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .registers 4

    .line 1847
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_a

    .line 1851
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1852
    const/4 v0, 0x0

    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1853
    return-object p1

    .line 1848
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 4

    .line 692
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 693
    :catch_9
    move-exception v0

    .line 694
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 699
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/16 v1, 0x80

    const/4 v3, 0x1

    const v5, 0xfffd

    .line 781
    iget-wide v6, p0, Lokio/Buffer;->size:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_b3

    .line 783
    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v6

    .line 788
    and-int/lit16 v0, v6, 0x80

    if-nez v0, :cond_34

    .line 790
    and-int/lit8 v4, v6, 0x7f

    .line 792
    const/4 v0, 0x0

    move v2, v3

    .line 818
    :goto_1a
    iget-wide v8, p0, Lokio/Buffer;->size:J

    int-to-long v10, v2

    cmp-long v7, v8, v10

    if-ltz v7, :cond_7a

    .line 826
    :goto_21
    if-ge v3, v2, :cond_5d

    .line 827
    int-to-long v6, v3

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v6

    .line 828
    and-int/lit16 v7, v6, 0xc0

    if-ne v7, v1, :cond_57

    .line 830
    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v4, v6

    .line 826
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 794
    :cond_34
    and-int/lit16 v0, v6, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_3f

    .line 796
    and-int/lit8 v4, v6, 0x1f

    .line 797
    const/4 v2, 0x2

    move v0, v1

    .line 798
    goto :goto_1a

    .line 800
    :cond_3f
    and-int/lit16 v0, v6, 0xf0

    const/16 v2, 0xe0

    if-ne v0, v2, :cond_4b

    .line 802
    and-int/lit8 v4, v6, 0xf

    .line 803
    const/4 v2, 0x3

    .line 804
    const/16 v0, 0x800

    goto :goto_1a

    .line 806
    :cond_4b
    and-int/lit16 v0, v6, 0xf8

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_ac

    .line 808
    and-int/lit8 v4, v6, 0x7

    .line 809
    const/4 v2, 0x4

    .line 810
    const/high16 v0, 0x10000

    goto :goto_1a

    .line 833
    :cond_57
    int-to-long v0, v3

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    move v0, v5

    .line 852
    :goto_5c
    return v0

    .line 838
    :cond_5d
    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 840
    const v1, 0x10ffff

    if-le v4, v1, :cond_68

    move v0, v5

    .line 841
    goto :goto_5c

    .line 844
    :cond_68
    const v1, 0xd800

    if-lt v4, v1, :cond_74

    const v1, 0xdfff

    if-gt v4, v1, :cond_74

    move v0, v5

    .line 845
    goto :goto_5c

    .line 848
    :cond_74
    if-ge v4, v0, :cond_78

    move v0, v5

    .line 849
    goto :goto_5c

    :cond_78
    move v0, v4

    .line 852
    goto :goto_5c

    .line 819
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " (to read code point prefixed 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 814
    :cond_ac
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    move v0, v5

    .line 815
    goto :goto_5c

    .line 781
    :cond_b3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 737
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    .line 739
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1b

    .line 740
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 743
    :goto_18
    return-object v0

    .line 740
    :cond_19
    const/4 v0, 0x0

    goto :goto_18

    .line 743
    :cond_1b
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x1

    .line 766
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1e

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    .line 768
    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 769
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 776
    :goto_1d
    return-object v0

    .line 774
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 775
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    goto :goto_1d
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 747
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v10, 0x1

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    .line 751
    cmp-long v0, p1, v2

    if-ltz v0, :cond_8a

    .line 752
    cmp-long v0, p1, v4

    if-nez v0, :cond_23

    :goto_13
    move-object v0, p0

    .line 753
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v6

    .line 754
    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_26

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    .line 757
    :goto_22
    return-object v0

    .line 752
    :cond_23
    add-long v4, p1, v10

    goto :goto_13

    .line 755
    :cond_26
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_43

    .line 756
    sub-long v6, v4, v10

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v6, 0xd

    if-ne v0, v6, :cond_43

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v0

    if-ne v0, v1, :cond_43

    .line 757
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 759
    :cond_43
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 760
    const-wide/16 v4, 0x20

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " content="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2026

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 751
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "limit < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public request(J)Z
    .registers 6

    .line 117
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public require(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 113
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_7

    .line 114
    return-void

    .line 113
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method segmentSizes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1681
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1687
    :goto_8
    return-object v0

    .line 1682
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1683
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1684
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_22
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_35

    .line 1685
    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1684
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_22

    :cond_35
    move-object v0, v1

    .line 1687
    goto :goto_8
.end method

.method public select(Lokio/Options;)I
    .registers 6

    const/4 v0, -0x1

    .line 556
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lokio/Buffer;->selectPrefix(Lokio/Options;Z)I

    move-result v1

    .line 557
    if-ne v1, v0, :cond_9

    .line 565
    :goto_8
    return v0

    .line 560
    :cond_9
    iget-object v0, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 562
    int-to-long v2, v0

    :try_start_12
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_15} :catch_17

    move v0, v1

    .line 565
    goto :goto_8

    .line 563
    :catch_17
    move-exception v0

    .line 564
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method selectPrefix(Lokio/Options;Z)I
    .registers 16

    .line 582
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 583
    if-nez v6, :cond_f

    .line 584
    if-eqz p2, :cond_8

    const/4 v1, -0x2

    .line 671
    :cond_7
    :goto_7
    return v1

    .line 585
    :cond_8
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {p1, v0}, Lokio/Options;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_7

    .line 589
    :cond_f
    iget-object v0, v6, Lokio/Segment;->data:[B

    .line 590
    iget v3, v6, Lokio/Segment;->pos:I

    .line 591
    iget v4, v6, Lokio/Segment;->limit:I

    .line 593
    iget-object v10, p1, Lokio/Options;->trie:[I

    .line 594
    const/4 v2, 0x0

    .line 596
    const/4 v1, -0x1

    move-object v5, v6

    .line 600
    :goto_1a
    add-int/lit8 v8, v2, 0x1

    aget v11, v10, v2

    .line 602
    add-int/lit8 v7, v8, 0x1

    aget v2, v10, v8

    .line 603
    const/4 v8, -0x1

    if-eq v2, v8, :cond_26

    move v1, v2

    .line 609
    :cond_26
    if-nez v5, :cond_2c

    .line 670
    :cond_28
    if-eqz p2, :cond_7

    const/4 v1, -0x2

    goto :goto_7

    .line 611
    :cond_2c
    if-gez v11, :cond_60

    move v2, v7

    move v8, v3

    .line 616
    :goto_30
    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v0, v8

    .line 617
    add-int/lit8 v3, v2, 0x1

    and-int/lit16 v8, v8, 0xff

    aget v2, v10, v2

    if-ne v8, v2, :cond_7

    .line 618
    mul-int/lit8 v2, v11, -0x1

    add-int/2addr v2, v7

    if-ne v3, v2, :cond_5a

    const/4 v2, 0x1

    .line 621
    :goto_42
    if-ne v9, v4, :cond_5c

    .line 622
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    .line 623
    iget v8, v5, Lokio/Segment;->pos:I

    .line 624
    iget-object v0, v5, Lokio/Segment;->data:[B

    .line 625
    iget v4, v5, Lokio/Segment;->limit:I

    .line 626
    if-ne v5, v6, :cond_51

    .line 627
    if-eqz v2, :cond_28

    .line 628
    const/4 v5, 0x0

    .line 632
    :cond_51
    :goto_51
    if-eqz v2, :cond_5e

    .line 633
    aget v2, v10, v3

    move v3, v8

    .line 665
    :cond_56
    :goto_56
    if-ltz v2, :cond_82

    move v1, v2

    goto :goto_7

    .line 618
    :cond_5a
    const/4 v2, 0x0

    goto :goto_42

    :cond_5c
    move v8, v9

    .line 621
    goto :goto_51

    :cond_5e
    move v2, v3

    .line 636
    goto :goto_30

    .line 639
    :cond_60
    add-int/lit8 v8, v3, 0x1

    aget-byte v3, v0, v3

    move v2, v7

    .line 643
    :goto_65
    add-int v9, v7, v11

    if-eq v2, v9, :cond_7

    .line 645
    and-int/lit16 v9, v3, 0xff

    aget v12, v10, v2

    if-ne v9, v12, :cond_84

    .line 646
    add-int/2addr v2, v11

    aget v2, v10, v2

    .line 647
    if-ne v8, v4, :cond_80

    .line 655
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    .line 656
    iget v3, v5, Lokio/Segment;->pos:I

    .line 657
    iget-object v0, v5, Lokio/Segment;->data:[B

    .line 658
    iget v4, v5, Lokio/Segment;->limit:I

    .line 659
    if-ne v5, v6, :cond_56

    .line 660
    const/4 v5, 0x0

    goto :goto_56

    :cond_80
    move v3, v8

    .line 654
    goto :goto_56

    .line 666
    :cond_82
    neg-int v2, v2

    .line 667
    goto :goto_1a

    .line 650
    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_65
.end method

.method public final sha1()Lokio/ByteString;
    .registers 2

    .line 1697
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .registers 2

    .line 1702
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .registers 2

    .line 1707
    const-string v0, "SHA-512"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()J
    .registers 3

    .line 67
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 938
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_42

    .line 939
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_3c

    .line 941
    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 942
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 943
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 944
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v1, Lokio/Segment;->pos:I

    add-int/2addr v0, v2

    iput v0, v1, Lokio/Segment;->pos:I

    .line 946
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->pos:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 947
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 948
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 949
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 939
    :cond_3c
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 952
    :cond_42
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .registers 5

    .line 1828
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_f

    .line 1831
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 1829
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final snapshot(I)Lokio/ByteString;
    .registers 3

    .line 1838
    if-nez p1, :cond_5

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 1839
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    goto :goto_4
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 1676
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1809
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writableSegment(I)Lokio/Segment;
    .registers 5

    const/16 v2, 0x2000

    .line 1298
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2a

    if-gt p1, v2, :cond_2a

    .line 1300
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_16

    .line 1301
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1302
    iput-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1309
    :cond_15
    :goto_15
    return-object v0

    .line 1305
    :cond_16
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 1306
    iget v1, v0, Lokio/Segment;->limit:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_21

    iget-boolean v1, v0, Lokio/Segment;->owner:Z

    if-nez v1, :cond_15

    .line 1307
    :cond_21
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    goto :goto_15

    .line 1298
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1122
    if-eqz p1, :cond_2b

    .line 1124
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    move v0, v1

    .line 1126
    :goto_7
    if-lez v0, :cond_24

    .line 1127
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1129
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1130
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1132
    sub-int/2addr v0, v3

    .line 1133
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v3, v4

    iput v3, v2, Lokio/Segment;->limit:I

    goto :goto_7

    .line 1136
    :cond_24
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 1137
    return v1

    .line 1122
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .registers 4

    .line 955
    if-eqz p1, :cond_6

    .line 956
    invoke-virtual {p1, p0}, Lokio/ByteString;->write(Lokio/Buffer;)V

    .line 957
    return-object p0

    .line 955
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)Lokio/Buffer;
    .registers 4

    .line 1098
    if-eqz p1, :cond_9

    .line 1099
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1098
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)Lokio/Buffer;
    .registers 10

    .line 1103
    if-eqz p1, :cond_31

    .line 1104
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1106
    add-int v0, p2, p3

    .line 1107
    :goto_b
    if-ge p2, v0, :cond_2a

    .line 1108
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 1110
    sub-int v2, v0, p2

    iget v3, v1, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1111
    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->limit:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    add-int/2addr p2, v2

    .line 1114
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/2addr v2, v3

    iput v2, v1, Lokio/Segment;->limit:I

    goto :goto_b

    .line 1117
    :cond_2a
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1118
    return-object p0

    .line 1103
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1150
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_18

    .line 1151
    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 1152
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 1153
    sub-long/2addr p2, v0

    .line 1154
    goto :goto_0

    .line 1152
    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1155
    :cond_18
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 12

    const-wide/16 v2, 0x0

    .line 1363
    if-eqz p1, :cond_92

    .line 1364
    if-eq p1, p0, :cond_8a

    .line 1365
    iget-wide v0, p1, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1367
    :goto_c
    cmp-long v0, p2, v2

    if-lez v0, :cond_4c

    .line 1369
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_5c

    .line 1370
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_4d

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object v1, v0

    .line 1371
    :goto_25
    if-eqz v1, :cond_53

    iget-boolean v0, v1, Lokio/Segment;->owner:Z

    if-eqz v0, :cond_53

    iget v0, v1, Lokio/Segment;->limit:I

    int-to-long v4, v0

    iget-boolean v0, v1, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_50

    .line 1372
    const/4 v0, 0x0

    :goto_33
    add-long/2addr v4, p2

    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_53

    .line 1374
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1375
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1376
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1401
    :cond_4c
    return-void

    .line 1370
    :cond_4d
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_25

    .line 1372
    :cond_50
    iget v0, v1, Lokio/Segment;->pos:I

    goto :goto_33

    .line 1381
    :cond_53
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1386
    :cond_5c
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1387
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    .line 1388
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1389
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_80

    .line 1390
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1391
    iput-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1397
    :goto_74
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1398
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1399
    sub-long/2addr p2, v4

    .line 1400
    goto :goto_c

    .line 1393
    :cond_80
    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1394
    invoke-virtual {v1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    .line 1395
    invoke-virtual {v0}, Lokio/Segment;->compact()V

    goto :goto_74

    .line 1364
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1363
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeAll(Lokio/Source;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    if-eqz p1, :cond_12

    .line 1142
    const-wide/16 v0, 0x0

    .line 1143
    :goto_4
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1a

    .line 1144
    add-long/2addr v0, v2

    goto :goto_4

    .line 1141
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1146
    :cond_1a
    return-wide v0
.end method

.method public writeByte(I)Lokio/Buffer;
    .registers 6

    .line 1159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1160
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->limit:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 1161
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1162
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .registers 14

    .line 1219
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 1221
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    .line 1271
    :goto_c
    return-object p0

    .line 1224
    :cond_d
    const/4 v0, 0x0

    .line 1225
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_121

    .line 1226
    neg-long v2, p1

    .line 1227
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_22

    .line 1228
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    goto :goto_c

    .line 1230
    :cond_22
    const/4 v0, 0x1

    move v4, v0

    .line 1234
    :goto_24
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-gez v0, :cond_8c

    .line 1237
    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gez v0, :cond_6e

    .line 1238
    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-gez v0, :cond_64

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_62

    const/4 v0, 0x1

    .line 1253
    :goto_3e
    if-eqz v4, :cond_42

    .line 1254
    add-int/lit8 v0, v0, 0x1

    .line 1257
    :cond_42
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v5

    .line 1258
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 1259
    iget v1, v5, Lokio/Segment;->limit:I

    add-int/2addr v1, v0

    .line 1260
    :goto_4b
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_10c

    .line 1261
    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    .line 1262
    add-int/lit8 v1, v1, -0x1

    sget-object v8, Lokio/Buffer;->DIGITS:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    .line 1263
    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_4b

    .line 1238
    :cond_62
    const/4 v0, 0x2

    goto :goto_3e

    .line 1239
    :cond_64
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_6c

    const/4 v0, 0x3

    goto :goto_3e

    :cond_6c
    const/4 v0, 0x4

    goto :goto_3e

    .line 1241
    :cond_6e
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_80

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7e

    const/4 v0, 0x5

    goto :goto_3e

    :cond_7e
    const/4 v0, 0x6

    goto :goto_3e

    .line 1242
    :cond_80
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_89

    const/4 v0, 0x7

    goto :goto_3e

    :cond_89
    const/16 v0, 0x8

    goto :goto_3e

    .line 1244
    :cond_8c
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ba

    .line 1245
    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ab

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_a8

    const/16 v0, 0x9

    goto :goto_3e

    :cond_a8
    const/16 v0, 0xa

    goto :goto_3e

    .line 1246
    :cond_ab
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_b7

    const/16 v0, 0xb

    goto :goto_3e

    :cond_b7
    const/16 v0, 0xc

    goto :goto_3e

    .line 1248
    :cond_ba
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_e1

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d0

    const/16 v0, 0xd

    goto/16 :goto_3e

    .line 1249
    :cond_d0
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_dd

    const/16 v0, 0xe

    goto/16 :goto_3e

    :cond_dd
    const/16 v0, 0xf

    goto/16 :goto_3e

    .line 1251
    :cond_e1
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_fb

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f7

    const/16 v0, 0x10

    goto/16 :goto_3e

    :cond_f7
    const/16 v0, 0x11

    goto/16 :goto_3e

    .line 1252
    :cond_fb
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_108

    const/16 v0, 0x12

    goto/16 :goto_3e

    :cond_108
    const/16 v0, 0x13

    goto/16 :goto_3e

    .line 1265
    :cond_10c
    if-eqz v4, :cond_114

    .line 1266
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    .line 1269
    :cond_114
    iget v1, v5, Lokio/Segment;->limit:I

    add-int/2addr v1, v0

    iput v1, v5, Lokio/Segment;->limit:I

    .line 1270
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    goto/16 :goto_c

    :cond_121
    move-wide v2, p1

    move v4, v0

    goto/16 :goto_24
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .registers 12

    .line 1275
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 1277
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    .line 1290
    :goto_c
    return-object p0

    .line 1280
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 1282
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1283
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1284
    iget v0, v2, Lokio/Segment;->limit:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lokio/Segment;->limit:I

    :goto_26
    if-lt v0, v4, :cond_37

    .line 1285
    sget-object v5, Lokio/Buffer;->DIGITS:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    .line 1286
    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    .line 1284
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 1288
    :cond_37
    iget v0, v2, Lokio/Segment;->limit:I

    add-int/2addr v0, v1

    iput v0, v2, Lokio/Segment;->limit:I

    .line 1289
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    goto :goto_c
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lokio/Buffer;
    .registers 7

    .line 1181
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1182
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1183
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1184
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1185
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1186
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1187
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 1188
    add-int/lit8 v1, v3, 0x1

    iput v1, v0, Lokio/Segment;->limit:I

    .line 1189
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1190
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .registers 3

    .line 1194
    invoke-static {p1}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lokio/Buffer;
    .registers 12

    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 1198
    invoke-virtual {p0, v8}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1199
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1200
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1201
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1202
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1203
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1204
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1205
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1206
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1207
    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1208
    and-long v4, p1, v6

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 1209
    add-int/lit8 v1, v3, 0x1

    iput v1, v0, Lokio/Segment;->limit:I

    .line 1210
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1211
    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .registers 6

    .line 1215
    invoke-static {p1, p2}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lokio/Buffer;
    .registers 7

    .line 1166
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1167
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1168
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1169
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1170
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 1171
    add-int/lit8 v1, v3, 0x1

    iput v1, v0, Lokio/Segment;->limit:I

    .line 1172
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1173
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .registers 3

    .line 1177
    int-to-short v0, p1

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .registers 8

    .line 1082
    if-eqz p1, :cond_8b

    .line 1083
    if-ltz p2, :cond_74

    .line 1084
    if-lt p3, p2, :cond_55

    .line 1087
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_32

    .line 1091
    if-eqz p4, :cond_2a

    .line 1092
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    .line 1094
    :goto_1a
    return-object v0

    .line 1093
    :cond_1b
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1094
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    goto :goto_1a

    .line 1091
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1085
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1083
    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginIndex < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1082
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .registers 5

    .line 1077
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    .line 218
    if-eqz p1, :cond_40

    .line 219
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 221
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 222
    :goto_c
    cmp-long v0, p2, v2

    if-lez v0, :cond_48

    .line 223
    iget v0, v1, Lokio/Segment;->limit:I

    iget v4, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v4

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 224
    iget-object v4, v1, Lokio/Segment;->data:[B

    iget v5, v1, Lokio/Segment;->pos:I

    invoke-virtual {p1, v4, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 226
    iget v4, v1, Lokio/Segment;->pos:I

    add-int/2addr v4, v0

    iput v4, v1, Lokio/Segment;->pos:I

    .line 227
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 228
    int-to-long v4, v0

    sub-long/2addr p2, v4

    .line 230
    iget v0, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    if-ne v0, v4, :cond_49

    .line 231
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 233
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :goto_3e
    move-object v1, v0

    .line 235
    goto :goto_c

    .line 218
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_48
    return-object p0

    :cond_49
    move-object v0, v1

    goto :goto_3e
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .registers 4

    .line 961
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .registers 13

    const v8, 0xdfff

    const/16 v7, 0x80

    .line 965
    if-eqz p1, :cond_135

    .line 966
    if-ltz p2, :cond_11e

    .line 967
    if-lt p3, p2, :cond_ff

    .line 970
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_dc

    .line 976
    :goto_11
    if-ge p2, p3, :cond_13d

    .line 977
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 979
    if-ge v1, v7, :cond_53

    .line 980
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 981
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 982
    iget v0, v2, Lokio/Segment;->limit:I

    sub-int v4, v0, p2

    .line 983
    rsub-int v0, v4, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 986
    add-int/lit8 v0, p2, 0x1

    add-int v6, p2, v4

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    .line 990
    :goto_31
    if-ge v0, v5, :cond_39

    .line 991
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 992
    if-lt v1, v7, :cond_4b

    .line 996
    :cond_39
    add-int v1, v0, v4

    iget v3, v2, Lokio/Segment;->limit:I

    sub-int/2addr v1, v3

    .line 997
    iget v3, v2, Lokio/Segment;->limit:I

    add-int/2addr v3, v1

    iput v3, v2, Lokio/Segment;->limit:I

    .line 998
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    :goto_49
    move p2, v0

    .line 1035
    goto :goto_11

    .line 993
    :cond_4b
    add-int v6, v0, v4

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 1000
    :cond_53
    const/16 v0, 0x800

    if-ge v1, v0, :cond_68

    .line 1002
    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1003
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1004
    add-int/lit8 v0, p2, 0x1

    goto :goto_49

    .line 1006
    :cond_68
    const v0, 0xd800

    if-lt v1, v0, :cond_6f

    if-le v1, v8, :cond_89

    .line 1008
    :cond_6f
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1009
    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1010
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1011
    add-int/lit8 v0, p2, 0x1

    goto :goto_49

    .line 1016
    :cond_89
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_a8

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1017
    :goto_93
    const v2, 0xdbff

    if-gt v1, v2, :cond_9f

    const v2, 0xdc00

    if-lt v0, v2, :cond_9f

    if-le v0, v8, :cond_aa

    .line 1018
    :cond_9f
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1019
    add-int/lit8 p2, p2, 0x1

    .line 1020
    goto/16 :goto_11

    .line 1016
    :cond_a8
    const/4 v0, 0x0

    goto :goto_93

    .line 1026
    :cond_aa
    const v2, -0xd801

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0xa

    const v2, -0xdc01

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    .line 1029
    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1030
    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1031
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1032
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1033
    add-int/lit8 v0, p2, 0x2

    goto/16 :goto_49

    .line 971
    :cond_dc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 968
    :cond_ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 966
    :cond_11e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginIndex < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 965
    :cond_135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_13d
    return-object p0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .registers 4

    .line 1041
    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 1043
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1073
    :goto_7
    return-object p0

    .line 1045
    :cond_8
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1b

    .line 1047
    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1048
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7

    .line 1050
    :cond_1b
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_47

    .line 1051
    const v0, 0xd800

    if-lt p1, v0, :cond_2f

    const v0, 0xdfff

    if-gt p1, v0, :cond_2f

    .line 1053
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7

    .line 1056
    :cond_2f
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1057
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1058
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7

    .line 1061
    :cond_47
    const v0, 0x10ffff

    if-gt p1, v0, :cond_6d

    .line 1063
    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1064
    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1065
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1066
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7

    .line 1069
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected code point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method
