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

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 394
    iget-boolean v1, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    if-eqz v1, :cond_7

    .line 412
    :cond_6
    :goto_6
    return-object v0

    .line 398
    :cond_7
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v1}, Lorg/apache/tools/tar/TarBuffer;->readRecord()[B

    move-result-object v1

    .line 400
    if-nez v1, :cond_22

    .line 401
    iget-boolean v2, p0, Lorg/apache/tools/tar/TarInputStream;->debug:Z

    if-eqz v2, :cond_1a

    .line 402
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "READ NULL RECORD"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    :cond_1a
    iput-boolean v4, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    .line 412
    :cond_1c
    :goto_1c
    iget-boolean v2, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    if-nez v2, :cond_6

    move-object v0, v1

    goto :goto_6

    .line 405
    :cond_22
    iget-object v2, p0, Lorg/apache/tools/tar/TarInputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v2, v1}, Lorg/apache/tools/tar/TarBuffer;->isEOFRecord([B)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 406
    iget-boolean v2, p0, Lorg/apache/tools/tar/TarInputStream;->debug:Z

    if-eqz v2, :cond_35

    .line 407
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "READ EOF RECORD"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    :cond_35
    iput-boolean v4, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    goto :goto_1c
.end method

.method private isDirectory()Z
    .registers 2

    .line 680
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
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

    if-eqz v0, :cond_13

    .line 538
    :cond_8
    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->getRecord()[B

    move-result-object v0

    .line 539
    iget-boolean v1, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    if-eqz v1, :cond_14

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    .line 549
    :cond_13
    :goto_13
    return-void

    .line 543
    :cond_14
    new-instance v1, Lorg/apache/tools/tar/TarArchiveSparseEntry;

    invoke-direct {v1, v0}, Lorg/apache/tools/tar/TarArchiveSparseEntry;-><init>([B)V

    .line 547
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarArchiveSparseEntry;->isExtended()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_13
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

    if-eqz v0, :cond_8

    .line 181
    const/4 v0, 0x0

    .line 186
    :goto_7
    return v0

    .line 183
    :cond_8
    iget-wide v0, p0, Lorg/apache/tools/tar/TarInputStream;->entrySize:J

    iget-wide v2, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    sub-long v4, v0, v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_19

    .line 184
    const v0, 0x7fffffff

    goto :goto_7

    .line 186
    :cond_19
    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_7
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
    :goto_6
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Lorg/apache/tools/tar/TarInputStream;->read([BII)I

    move-result v1

    .line 659
    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 660
    return-void

    .line 663
    :cond_f
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6
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
    :goto_6
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->SMALL_BUF:[B

    invoke-virtual {p0, v1}, Lorg/apache/tools/tar/TarInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_14

    .line 359
    iget-object v2, p0, Lorg/apache/tools/tar/TarInputStream;->SMALL_BUF:[B

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    .line 361
    :cond_14
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarInputStream;->getNextEntry()Lorg/apache/tools/tar/TarEntry;

    .line 362
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    if-nez v1, :cond_1d

    .line 365
    const/4 v0, 0x0

    .line 376
    :goto_1c
    return-object v0

    .line 367
    :cond_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 369
    array-length v0, v1

    move v2, v0

    .line 370
    :goto_23
    if-lez v2, :cond_2f

    add-int/lit8 v0, v2, -0x1

    aget-byte v0, v1, v0

    if-nez v0, :cond_2f

    .line 371
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_23

    .line 373
    :cond_2f
    array-length v0, v1

    if-eq v2, v0, :cond_38

    .line 374
    new-array v0, v2, [B

    .line 375
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1c

    :cond_38
    move-object v0, v1

    goto :goto_1c
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

    if-eqz v1, :cond_8

    .line 345
    :cond_7
    :goto_7
    return-object v0

    .line 265
    :cond_8
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    if-eqz v1, :cond_6a

    .line 266
    iget-wide v2, p0, Lorg/apache/tools/tar/TarInputStream;->entrySize:J

    iget-wide v4, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    sub-long/2addr v2, v4

    .line 268
    iget-boolean v1, p0, Lorg/apache/tools/tar/TarInputStream;->debug:Z

    if-eqz v1, :cond_52

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
    :cond_52
    :goto_52
    cmp-long v1, v2, v8

    if-lez v1, :cond_68

    .line 277
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/tar/TarInputStream;->skip(J)J

    move-result-wide v4

    .line 278
    cmp-long v1, v4, v8

    if-lez v1, :cond_60

    .line 282
    sub-long/2addr v2, v4

    .line 283
    goto :goto_52

    .line 279
    :cond_60
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to skip current tar entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_68
    iput-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->readBuf:[B

    .line 288
    :cond_6a
    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->getRecord()[B

    move-result-object v1

    .line 290
    iget-boolean v2, p0, Lorg/apache/tools/tar/TarInputStream;->hasHitEOF:Z

    if-eqz v2, :cond_75

    .line 291
    iput-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    goto :goto_7

    .line 296
    :cond_75
    :try_start_75
    new-instance v2, Lorg/apache/tools/tar/TarEntry;

    iget-object v3, p0, Lorg/apache/tools/tar/TarInputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-direct {v2, v1, v3}, Lorg/apache/tools/tar/TarEntry;-><init>([BLorg/apache/tools/zip/ZipEncoding;)V

    iput-object v2, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;
    :try_end_7e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_7e} :catch_10a

    .line 299
    iget-boolean v1, p0, Lorg/apache/tools/tar/TarInputStream;->debug:Z

    if-eqz v1, :cond_ac

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
    :cond_ac
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

    if-eqz v1, :cond_cf

    .line 311
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarInputStream;->getLongNameData()[B

    move-result-object v1

    .line 312
    if-eqz v1, :cond_7

    .line 318
    iget-object v2, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    iget-object v3, p0, Lorg/apache/tools/tar/TarInputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-interface {v3, v1}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/tar/TarEntry;->setLinkName(Ljava/lang/String;)V

    .line 321
    :cond_cf
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v1}, Lorg/apache/tools/tar/TarEntry;->isGNULongNameEntry()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 322
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarInputStream;->getLongNameData()[B

    move-result-object v1

    .line 323
    if-eqz v1, :cond_7

    .line 329
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    iget-object v2, p0, Lorg/apache/tools/tar/TarInputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-interface {v2, v1}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/tar/TarEntry;->setName(Ljava/lang/String;)V

    .line 332
    :cond_e8
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->isPaxHeader()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 333
    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->paxHeaders()V

    .line 336
    :cond_f3
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->isGNUSparse()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 337
    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->readGNUSparse()V

    .line 344
    :cond_fe
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarInputStream;->entrySize:J

    .line 345
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    goto/16 :goto_7

    .line 297
    :catch_10a
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

    sparse-switch v0, :sswitch_data_d6

    :cond_7
    const/4 v0, -0x1

    :goto_8
    packed-switch v0, :pswitch_data_100

    .line 490
    :goto_b
    return-void

    .line 487
    :sswitch_c
    const-string v0, "linkpath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_16
    const-string v0, "uname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_8

    :sswitch_20
    const-string v0, "mtime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_8

    :sswitch_2a
    const-string v0, "gname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_34
    const-string v0, "size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_8

    :sswitch_3e
    const-string v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_48
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_52
    const-string v0, "gid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_5c
    const-string v0, "SCHILY.devminor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_8

    :sswitch_67
    const-string v0, "SCHILY.devmajor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_8

    .line 516
    :pswitch_72  #0x9
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/tar/TarEntry;->setDevMajor(I)V

    goto :goto_b

    .line 513
    :pswitch_7c  #0x8
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/tar/TarEntry;->setDevMinor(I)V

    goto :goto_b

    .line 510
    :pswitch_86  #0x7
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L  # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/tar/TarEntry;->setModTime(J)V

    goto/16 :goto_b

    .line 507
    :pswitch_98  #0x6
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/tar/TarEntry;->setSize(J)V

    goto/16 :goto_b

    .line 504
    :pswitch_a3  #0x5
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0, p2}, Lorg/apache/tools/tar/TarEntry;->setUserName(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 501
    :pswitch_aa  #0x4
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/tar/TarEntry;->setUserId(J)V

    goto/16 :goto_b

    .line 498
    :pswitch_b5  #0x3
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0, p2}, Lorg/apache/tools/tar/TarEntry;->setGroupName(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 495
    :pswitch_bc  #0x2
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/tar/TarEntry;->setGroupId(J)V

    goto/16 :goto_b

    .line 492
    :pswitch_c7  #0x1
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0, p2}, Lorg/apache/tools/tar/TarEntry;->setLinkName(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 489
    :pswitch_ce  #0x0
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->currEntry:Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {v0, p2}, Lorg/apache/tools/tar/TarEntry;->setName(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 487
    nop

    :sswitch_data_d6
    .sparse-switch
        -0x7240fdec -> :sswitch_67
        -0x723d4bf0 -> :sswitch_5c
        0x18fc2 -> :sswitch_52
        0x1c450 -> :sswitch_48
        0x346425 -> :sswitch_3e
        0x35e001 -> :sswitch_34
        0x5deef72 -> :sswitch_2a
        0x63654ba -> :sswitch_20
        0x6a43880 -> :sswitch_16
        0x473a871f -> :sswitch_c
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_ce  #00000000
        :pswitch_c7  #00000001
        :pswitch_bc  #00000002
        :pswitch_b5  #00000003
        :pswitch_aa  #00000004
        :pswitch_a3  #00000005
        :pswitch_98  #00000006
        :pswitch_86  #00000007
        :pswitch_7c  #00000008
        :pswitch_72  #00000009
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

    :cond_7
    move v0, v1

    move v2, v1

    .line 428
    :goto_9
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v8, :cond_86

    .line 429
    add-int/lit8 v0, v0, 0x1

    .line 430
    const/16 v5, 0x20

    if-ne v3, v5, :cond_80

    .line 432
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 433
    :goto_1a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v8, :cond_86

    .line 434
    add-int/lit8 v0, v0, 0x1

    .line 435
    const/16 v6, 0x3d

    if-ne v3, v6, :cond_7b

    .line 436
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 438
    sub-int v6, v2, v0

    .line 439
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v2, v1

    move v0, v3

    .line 441
    :goto_35
    if-ge v2, v6, :cond_44

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v8, :cond_44

    .line 442
    int-to-byte v3, v0

    invoke-virtual {v7, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 445
    :cond_44
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 446
    if-ne v2, v6, :cond_5c

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
    :goto_59
    if-ne v0, v8, :cond_7

    .line 468
    return-object v4

    .line 447
    :cond_5c
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
    :cond_7b
    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1a

    .line 464
    :cond_80
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    goto :goto_9

    :cond_86
    move v0, v3

    goto :goto_59
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
    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->oneBuf:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_b
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

    if-gez v0, :cond_f

    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 583
    :cond_f
    const/4 v0, -0x1

    .line 643
    :goto_10
    return v0

    .line 586
    :cond_11
    int-to-long v0, p3

    iget-wide v4, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    iget-wide v6, p0, Lorg/apache/tools/tar/TarInputStream;->entrySize:J

    add-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-lez v0, :cond_1e

    .line 587
    sub-long v0, v6, v4

    long-to-int p3, v0

    .line 590
    :cond_1e
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->readBuf:[B

    if-eqz v1, :cond_89

    .line 591
    array-length v0, v1

    if-le p3, v0, :cond_55

    array-length v0, v1

    .line 594
    :goto_26
    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    iget-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->readBuf:[B

    array-length v2, v1

    if-lt v0, v2, :cond_57

    .line 597
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/tar/TarInputStream;->readBuf:[B

    .line 607
    :goto_31
    add-int/lit8 v2, v0, 0x0

    .line 608
    sub-int v1, p3, v0

    .line 609
    add-int/2addr p2, v0

    .line 612
    :goto_36
    if-lez v1, :cond_81

    .line 613
    iget-object v0, p0, Lorg/apache/tools/tar/TarInputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarBuffer;->readRecord()[B

    move-result-object v4

    .line 615
    if-eqz v4, :cond_65

    .line 622
    array-length v0, v4

    .line 624
    if-le v0, v1, :cond_61

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
    :goto_51
    add-int/2addr v2, v0

    .line 637
    sub-int/2addr v1, v0

    .line 638
    add-int/2addr p2, v0

    .line 639
    goto :goto_36

    :cond_55
    move v0, p3

    .line 592
    goto :goto_26

    .line 599
    :cond_57
    array-length v2, v1

    sub-int/2addr v2, v0

    .line 600
    new-array v4, v2, [B

    .line 602
    invoke-static {v1, v0, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 604
    iput-object v4, p0, Lorg/apache/tools/tar/TarInputStream;->readBuf:[B

    goto :goto_31

    .line 633
    :cond_61
    invoke-static {v4, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_51

    .line 617
    :cond_65
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
    :cond_81
    iget-wide v0, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/tools/tar/TarInputStream;->entryOffset:J

    move v0, v2

    .line 643
    goto :goto_10

    :cond_89
    move v2, v3

    move v1, p3

    goto :goto_36
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

    if-lez v0, :cond_c

    invoke-direct {p0}, Lorg/apache/tools/tar/TarInputStream;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    move-wide v0, v4

    .line 218
    :goto_d
    return-wide v0

    :cond_e
    move-wide v2, p1

    .line 209
    :goto_f
    cmp-long v0, v2, v4

    if-lez v0, :cond_26

    .line 210
    iget-object v6, p0, Lorg/apache/tools/tar/TarInputStream;->SKIP_BUF:[B

    array-length v0, v6

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_29

    .line 211
    array-length v0, v6

    int-to-long v0, v0

    :goto_1d
    long-to-int v0, v0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1, v0}, Lorg/apache/tools/tar/TarInputStream;->read([BII)I

    move-result v0

    .line 213
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 218
    :cond_26
    sub-long v0, p1, v2

    goto :goto_d

    :cond_29
    move-wide v0, v2

    .line 211
    goto :goto_1d

    .line 216
    :cond_2b
    int-to-long v0, v0

    sub-long/2addr v2, v0

    .line 217
    goto :goto_f
.end method
