.class public Lorg/apache/tools/tar/TarInputStream;
.super Ljava/io/FilterInputStream;
.source "TarInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final BYTE_MASK:I = 0xff

.field private static final LARGE_BUFFER_SIZE:I = 0x8000

.field private static final SMALL_BUFFER_SIZE:I = 0x100


# instance fields
.field private final SKIP_BUF:[B

.field private final SMALL_BUF:[B

.field protected buffer:Lorg/apache/tools/tar/TarBuffer;

.field protected currEntry:Lorg/apache/tools/tar/TarEntry;

.field protected debug:Z

.field private final encoding:Lorg/apache/tools/zip/ZipEncoding;

.field protected entryOffset:J

.field protected entrySize:J

.field protected hasHitEOF:Z

.field protected oneBuf:[B

.field protected readBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 79
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/tar/TarInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    .line 97
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->SKIP_BUF:[B

    .line 52
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->SMALL_BUF:[B

    .line 130
    new-instance v0, Lorg/apache/tools/tar/TarBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->readBuf:[B

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->oneBuf:[B

    .line 133
    iput-boolean v1, p0, Lorg/apache/tools/tar/TarInputStream;->debug:Z

    .line 134
    iput-boolean v1, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    .line 135
    invoke-static {p4}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/lang/String;)V
    .registers 5

    .line 107
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/tools/tar/TarInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5

    .line 88
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/tools/tar/TarInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 89
    return-void
.end method

.method private applyPaxHeadersToCurrentEntry(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 486
    new-instance v0, Lorg/apache/tools/tar/TarInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/tools/tar/TarInputStream$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/tar/TarInputStream;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 520
    return-void
.end method

.method private getRecord()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 394
    iget-boolean v1, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    if-eqz v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-object v0

    .line 398
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v1}, Lorg/apache/tools/tar/TarBuffer;->readRecord()[B

    move-result-object v1

    .line 400
    if-nez v1, :cond_4

    .line 401
    iget-boolean v2, p0, Lorg/apache/tools/tar/TarInputStream;->debug:Z

    if-eqz v2, :cond_2

    .line 402
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "READ NULL RECORD"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    :cond_2
    iput-boolean v4, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    .line 412
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 405
    :cond_4
    iget-object v2, p0, Lorg/apache/tools/tar/TarInputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v2, v1}, Lorg/apache/tools/tar/TarBuffer;->isEOFRecord([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    iget-boolean v2, p0, Lorg/apache/tools/tar/TarInputStream;->debug:Z

    if-eqz v2, :cond_5

    .line 407
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "READ EOF RECORD"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    :cond_5
    iput-boolean v4, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    goto :goto_1
.end method

.method private isDirectory()Z
    .registers 2

    .line 680
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private paxHeaders()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    invoke-virtual {p0, p0}, Lorg/apache/tools/tar/TarInputStream;->parsePaxHeaders(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    .line 417
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarInputStream;->getNextEntry()Lorg/apache/tools/tar/TarEntry;

    .line 418
    invoke-direct {p0, v0}, Lorg/apache/tools/tar/TarInputStream;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;)V

    .line 419
    return-void
.end method

.method private readGNUSparse()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->getRecord()[B

    move-result-object v0

    .line 539
    iget-boolean v1, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    if-eqz v1, :cond_2

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    .line 549
    :cond_1
    :goto_0
    return-void

    .line 543
    :cond_2
    new-instance v1, Lorg/apache/tools/tar/TarArchiveSparseEntry;

    invoke-direct {v1, v0}, Lorg/apache/tools/tar/TarArchiveSparseEntry;-><init>([B)V

    .line 547
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarArchiveSparseEntry;->isExtended()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    .line 183
    :cond_0
    iget-wide v0, p0, Lorg/apache/tools/tar/TarInputStream;->entrySize:J

    iget-wide v2, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    sub-long v4, v0, v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 184
    const v0, 0x7fffffff

    goto :goto_0

    .line 186
    :cond_1
    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public canReadEntryData(Lorg/apache/tools/tar/TarEntry;)Z
    .registers 3

    .line 676
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->isGNUSparse()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarBuffer;->close()V

    .line 155
    return-void
.end method

.method public copyEntryContents(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 654
    const v0, 0x8000

    new-array v0, v0, [B

    .line 657
    :goto_0
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Lorg/apache/tools/tar/TarInputStream;->read([BII)I

    move-result v1

    .line 659
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 660
    return-void

    .line 663
    :cond_0
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method protected getLongNameData()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 356
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 357
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->SMALL_BUF:[B

    invoke-virtual {p0, v1}, Lorg/apache/tools/tar/TarInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    .line 359
    iget-object v2, p0, Lorg/apache/tools/tar/TarInputStream;->SMALL_BUF:[B

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarInputStream;->getNextEntry()Lorg/apache/tools/tar/TarEntry;

    .line 362
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    if-nez v1, :cond_1

    .line 365
    const/4 v0, 0x0

    .line 376
    :goto_1
    return-object v0

    .line 367
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 369
    array-length v0, v1

    move v2, v0

    .line 370
    :goto_2
    if-lez v2, :cond_2

    add-int/lit8 v0, v2, -0x1

    aget-byte v0, v1, v0

    if-nez v0, :cond_2

    .line 371
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 373
    :cond_2
    array-length v0, v1

    if-eq v2, v0, :cond_3

    .line 374
    new-array v0, v2, [B

    .line 375
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public getNextEntry()Lorg/apache/tools/tar/TarEntry;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 261
    iget-boolean v1, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    if-eqz v1, :cond_5

    .line 266
    iget-wide v2, p0, Lorg/apache/tools/tar/TarInputStream;->entrySize:J

    iget-wide v4, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    sub-long/2addr v2, v4

    .line 268
    iget-boolean v1, p0, Lorg/apache/tools/tar/TarInputStream;->debug:Z

    if-eqz v1, :cond_2

    .line 269
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TarInputStream: SKIP currENTRY \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    .line 270
    invoke-virtual {v5}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' SZ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/apache/tools/tar/TarInputStream;->entrySize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " OFF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    :cond_2
    :goto_1
    cmp-long v1, v2, v8

    if-lez v1, :cond_4

    .line 277
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/tar/TarInputStream;->skip(J)J

    move-result-wide v4

    .line 278
    cmp-long v1, v4, v8

    if-lez v1, :cond_3

    .line 282
    sub-long/2addr v2, v4

    .line 283
    goto :goto_1

    .line 279
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to skip current tar entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_4
    iput-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->readBuf:[B

    .line 288
    :cond_5
    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->getRecord()[B

    move-result-object v1

    .line 290
    iget-boolean v2, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    if-eqz v2, :cond_6

    .line 291
    iput-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    goto :goto_0

    .line 296
    :cond_6
    :try_start_0
    new-instance v2, Lorg/apache/tools/tar/TarEntry;

    iget-object v3, p0, Lorg/apache/tools/tar/TarInputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-direct {v2, v1, v3}, Lorg/apache/tools/tar/TarEntry;-><init>([BLorg/apache/tools/zip/ZipEncoding;)V

    iput-object v2, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    iget-boolean v1, p0, Lorg/apache/tools/tar/TarInputStream;->debug:Z

    if-eqz v1, :cond_7

    .line 301
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TarInputStream: SET CURRENTRY \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    .line 302
    invoke-virtual {v3}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    .line 304
    invoke-virtual {v3}, Lorg/apache/tools/tar/TarEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    :cond_7
    iput-wide v8, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    .line 308
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v1}, Lorg/apache/tools/tar/TarEntry;->getSize()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/tools/tar/TarInputStream;->entrySize:J

    .line 310
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v1}, Lorg/apache/tools/tar/TarEntry;->isGNULongLinkEntry()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 311
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarInputStream;->getLongNameData()[B

    move-result-object v1

    .line 312
    if-eqz v1, :cond_0

    .line 318
    iget-object v2, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    iget-object v3, p0, Lorg/apache/tools/tar/TarInputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-interface {v3, v1}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/tar/TarEntry;->setLinkName(Ljava/lang/String;)V

    .line 321
    :cond_8
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v1}, Lorg/apache/tools/tar/TarEntry;->isGNULongNameEntry()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 322
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarInputStream;->getLongNameData()[B

    move-result-object v1

    .line 323
    if-eqz v1, :cond_0

    .line 329
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    iget-object v2, p0, Lorg/apache/tools/tar/TarInputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-interface {v2, v1}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/tar/TarEntry;->setName(Ljava/lang/String;)V

    .line 332
    :cond_9
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->isPaxHeader()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 333
    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->paxHeaders()V

    .line 336
    :cond_a
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->isGNUSparse()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 337
    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->readGNUSparse()V

    .line 344
    :cond_b
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarInputStream;->entrySize:J

    .line 345
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    goto/16 :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error detected parsing the header"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRecordSize()I
    .registers 2

    .line 163
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarBuffer;->getRecordSize()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$applyPaxHeadersToCurrentEntry$0$TarInputStream(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 487
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 490
    :goto_1
    return-void

    .line 487
    :sswitch_0
    const-string v0, "linkpath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "uname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "mtime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "gname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_6
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "gid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "SCHILY.devminor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v0, "SCHILY.devmajor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    .line 516
    :pswitch_0
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/tar/TarEntry;->setDevMajor(I)V

    goto :goto_1

    .line 513
    :pswitch_1
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/tar/TarEntry;->setDevMinor(I)V

    goto :goto_1

    .line 510
    :pswitch_2
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/tar/TarEntry;->setModTime(J)V

    goto/16 :goto_1

    .line 507
    :pswitch_3
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/tar/TarEntry;->setSize(J)V

    goto/16 :goto_1

    .line 504
    :pswitch_4
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0, p2}, Lorg/apache/tools/tar/TarEntry;->setUserName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 501
    :pswitch_5
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/tar/TarEntry;->setUserId(J)V

    goto/16 :goto_1

    .line 498
    :pswitch_6
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0, p2}, Lorg/apache/tools/tar/TarEntry;->setGroupName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 495
    :pswitch_7
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/tar/TarEntry;->setGroupId(J)V

    goto/16 :goto_1

    .line 492
    :pswitch_8
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0, p2}, Lorg/apache/tools/tar/TarEntry;->setLinkName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 489
    :pswitch_9
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0, p2}, Lorg/apache/tools/tar/TarEntry;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 487
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7240fdec -> :sswitch_9
        -0x723d4bf0 -> :sswitch_8
        0x18fc2 -> :sswitch_7
        0x1c450 -> :sswitch_6
        0x346425 -> :sswitch_5
        0x35e001 -> :sswitch_4
        0x5deef72 -> :sswitch_3
        0x63654ba -> :sswitch_2
        0x6a43880 -> :sswitch_1
        0x473a871f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mark(I)V
    .registers 2

    .line 238
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method parsePaxHeaders(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 422
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move v0, v1

    move v2, v1

    .line 428
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v8, :cond_5

    .line 429
    add-int/lit8 v2, v2, 0x1

    .line 430
    const/16 v5, 0x20

    if-ne v3, v5, :cond_4

    .line 432
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 433
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v8, :cond_5

    .line 434
    add-int/lit8 v2, v2, 0x1

    .line 435
    const/16 v6, 0x3d

    if-ne v3, v6, :cond_3

    .line 436
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 438
    sub-int v6, v0, v2

    .line 439
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v2, v1

    move v0, v3

    .line 441
    :goto_2
    if-ge v2, v6, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v8, :cond_1

    .line 442
    int-to-byte v3, v0

    invoke-virtual {v7, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 445
    :cond_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 446
    if-ne v2, v6, :cond_2

    .line 453
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 455
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v1, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 457
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :goto_3
    if-ne v0, v8, :cond_0

    .line 468
    return-object v4

    .line 447
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read Paxheader. Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes, read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :cond_3
    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 464
    :cond_4
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_3
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 561
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->oneBuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/tools/tar/TarInputStream;->read([BII)I

    move-result v1

    .line 562
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->oneBuf:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 580
    .line 582
    iget-wide v0, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    iget-wide v4, p0, Lorg/apache/tools/tar/TarInputStream;->entrySize:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    :cond_0
    const/4 v0, -0x1

    .line 643
    :goto_0
    return v0

    .line 586
    :cond_1
    int-to-long v0, p3

    iget-wide v4, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    iget-wide v6, p0, Lorg/apache/tools/tar/TarInputStream;->entrySize:J

    add-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    .line 587
    sub-long v0, v6, v4

    long-to-int p3, v0

    .line 590
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->readBuf:[B

    if-eqz v1, :cond_8

    .line 591
    array-length v0, v1

    if-le p3, v0, :cond_3

    array-length v0, v1

    .line 594
    :goto_1
    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->readBuf:[B

    array-length v2, v1

    if-lt v0, v2, :cond_4

    .line 597
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->readBuf:[B

    .line 607
    :goto_2
    add-int/lit8 v2, v0, 0x0

    .line 608
    sub-int v1, p3, v0

    .line 609
    add-int/2addr p2, v0

    .line 612
    :goto_3
    if-lez v1, :cond_7

    .line 613
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarBuffer;->readRecord()[B

    move-result-object v4

    .line 615
    if-eqz v4, :cond_6

    .line 622
    array-length v0, v4

    .line 624
    if-le v0, v1, :cond_5

    .line 625
    invoke-static {v4, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    sub-int v5, v0, v1

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/apache/tools/tar/TarInputStream;->readBuf:[B

    .line 629
    sub-int/2addr v0, v1

    invoke-static {v4, v1, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 636
    :goto_4
    add-int/2addr v2, v0

    .line 637
    sub-int/2addr v1, v0

    .line 638
    add-int/2addr p2, v0

    .line 639
    goto :goto_3

    :cond_3
    move v0, p3

    .line 592
    goto :goto_1

    .line 599
    :cond_4
    array-length v2, v1

    sub-int/2addr v2, v0

    .line 600
    new-array v4, v2, [B

    .line 602
    invoke-static {v1, v0, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 604
    iput-object v4, p0, Lorg/apache/tools/tar/TarInputStream;->readBuf:[B

    goto :goto_2

    .line 633
    :cond_5
    invoke-static {v4, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 617
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected EOF with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes unread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 641
    :cond_7
    iget-wide v0, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    move v0, v2

    .line 643
    goto :goto_0

    :cond_8
    move v2, v3

    move v1, p3

    goto :goto_3
.end method

.method public reset()V
    .registers 1

    .line 245
    return-void
.end method

.method public setDebug(Z)V
    .registers 3

    .line 144
    iput-boolean p1, p0, Lorg/apache/tools/tar/TarInputStream;->debug:Z

    .line 145
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/tools/tar/TarBuffer;->setDebug(Z)V

    .line 146
    return-void
.end method

.method public skip(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    .line 201
    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-wide v0, v4

    .line 218
    :goto_0
    return-wide v0

    :cond_1
    move-wide v2, p1

    .line 209
    :goto_1
    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 210
    iget-object v6, p0, Lorg/apache/tools/tar/TarInputStream;->SKIP_BUF:[B

    array-length v0, v6

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    .line 211
    array-length v0, v6

    int-to-long v0, v0

    :goto_2
    long-to-int v0, v0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1, v0}, Lorg/apache/tools/tar/TarInputStream;->read([BII)I

    move-result v0

    .line 213
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 218
    :cond_2
    sub-long v0, p1, v2

    goto :goto_0

    :cond_3
    move-wide v0, v2

    .line 211
    goto :goto_2

    .line 216
    :cond_4
    int-to-long v0, v0

    sub-long/2addr v2, v0

    .line 217
    goto :goto_1
.end method
