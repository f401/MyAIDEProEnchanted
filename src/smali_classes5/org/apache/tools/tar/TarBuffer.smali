.class public Lorg/apache/tools/tar/TarBuffer;
.super Ljava/lang/Object;
.source "TarBuffer.java"


# static fields
.field public static final DEFAULT_BLKSIZE:I = 0x2800

.field public static final DEFAULT_RCDSIZE:I = 0x200


# instance fields
.field private final blockBuffer:[B

.field private final blockSize:I

.field private currBlkIdx:I

.field private currRecIdx:I

.field private debug:Z

.field private inStream:Ljava/io/InputStream;

.field private outStream:Ljava/io/OutputStream;

.field private final recordSize:I

.field private final recsPerBlock:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 68
    const/16 v0, 0x2800

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/InputStream;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    .line 77
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/InputStream;II)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;II)V

    .line 88
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;II)V
    .registers 8

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    .line 122
    iput-object p2, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    .line 123
    iput-boolean v2, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    .line 124
    iput p3, p0, Lorg/apache/tools/tar/TarBuffer;->blockSize:I

    .line 125
    iput p4, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    .line 126
    div-int v0, p3, p4

    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->recsPerBlock:I

    .line 127
    new-array v1, p3, [B

    iput-object v1, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    .line 129
    if-eqz p1, :cond_1e

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    .line 131
    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    .line 136
    :goto_1d
    return-void

    .line 133
    :cond_1e
    iput v2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    .line 134
    iput v2, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    goto :goto_1d
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    .line 95
    const/16 v0, 0x2800

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/OutputStream;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4

    .line 104
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/OutputStream;II)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .registers 5

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;II)V

    .line 115
    return-void
.end method

.method private readBlock()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 239
    iget-boolean v1, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v1, :cond_1d

    .line 240
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReadBlock: blkIdx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    :cond_1d
    iget-object v1, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-eqz v1, :cond_7f

    .line 247
    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    .line 250
    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->blockSize:I

    move v1, v0

    .line 252
    :cond_26
    :goto_26
    if-lez v2, :cond_40

    .line 253
    iget-object v3, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    int-to-long v4, v3

    .line 269
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_48

    .line 270
    if-nez v1, :cond_3a

    .line 301
    :goto_39
    return v0

    .line 282
    :cond_3a
    iget-object v3, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    add-int/2addr v2, v1

    invoke-static {v3, v1, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 299
    :cond_40
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    .line 301
    const/4 v0, 0x1

    goto :goto_39

    .line 287
    :cond_48
    int-to-long v6, v1

    add-long/2addr v6, v4

    long-to-int v1, v6

    .line 288
    int-to-long v2, v2

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 290
    iget v3, p0, Lorg/apache/tools/tar/TarBuffer;->blockSize:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-eqz v3, :cond_26

    .line 291
    iget-boolean v3, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v3, :cond_26

    .line 292
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReadBlock: INCOMPLETE READ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/tools/tar/TarBuffer;->blockSize:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes read."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 244
    :cond_7f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeBlock()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 404
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_1d

    .line 405
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriteBlock: blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    :cond_1d
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_3b

    .line 412
    iget-object v1, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->blockSize:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 413
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 415
    iput v3, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    .line 416
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    .line 417
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 418
    return-void

    .line 409
    :cond_3b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 443
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_c

    .line 444
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TarBuffer.closeBuffer()."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    :cond_c
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_27

    .line 448
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarBuffer;->flushBlock()V

    .line 450
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_26

    .line 452
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 454
    iput-object v2, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    .line 462
    :cond_26
    :goto_26
    return-void

    .line 456
    :cond_27
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_26

    .line 457
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_34

    .line 458
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 460
    :cond_34
    iput-object v2, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    goto :goto_26
.end method

.method flushBlock()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_b

    .line 425
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TarBuffer.flushBlock() called."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 428
    :cond_b
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_17

    .line 432
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    if-lez v0, :cond_16

    .line 433
    invoke-direct {p0}, Lorg/apache/tools/tar/TarBuffer;->writeBlock()V

    .line 435
    :cond_16
    return-void

    .line 429
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlockSize()I
    .registers 2

    .line 143
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->blockSize:I

    return v0
.end method

.method public getCurrentBlockNum()I
    .registers 2

    .line 310
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    return v0
.end method

.method public getCurrentRecordNum()I
    .registers 2

    .line 320
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getRecordSize()I
    .registers 2

    .line 151
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    return v0
.end method

.method public isEOFRecord([B)Z
    .registers 6

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarBuffer;->getRecordSize()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_10

    .line 172
    aget-byte v3, p1, v1

    if-eqz v3, :cond_d

    .line 177
    :goto_c
    return v0

    .line 171
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 177
    :cond_10
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public readRecord()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_26

    .line 209
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadRecord: recIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    :cond_26
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_3e

    .line 214
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_36

    .line 215
    new-instance v0, Ljava/io/IOException;

    const-string v1, "input buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_3e
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_4c

    invoke-direct {p0}, Lorg/apache/tools/tar/TarBuffer;->readBlock()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 221
    const/4 v0, 0x0

    .line 232
    :goto_4b
    return-object v0

    .line 224
    :cond_4c
    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    new-array v0, v1, [B

    .line 226
    iget-object v2, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    iget v3, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    mul-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    goto :goto_4b
.end method

.method public setDebug(Z)V
    .registers 2

    .line 160
    iput-boolean p1, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    .line 161
    return-void
.end method

.method public skipRecord()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_26

    .line 186
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkipRecord: recIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    :cond_26
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3e

    .line 194
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_37

    invoke-direct {p0}, Lorg/apache/tools/tar/TarBuffer;->readBlock()Z

    move-result v0

    if-nez v0, :cond_37

    .line 199
    :goto_36
    return-void

    .line 198
    :cond_37
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    goto :goto_36

    .line 191
    :cond_3e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading (via skip) from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRecord([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_26

    .line 331
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriteRecord: recIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    :cond_26
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_3e

    .line 336
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_36

    .line 337
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_3e
    array-length v0, p1

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    if-ne v0, v1, :cond_5e

    .line 349
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_4c

    .line 350
    invoke-direct {p0}, Lorg/apache/tools/tar/TarBuffer;->writeBlock()V

    .line 353
    :cond_4c
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    const/4 v3, 0x0

    mul-int/2addr v1, v2

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    .line 358
    return-void

    .line 343
    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record to write has length \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' which is not the record size of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeRecord([BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_26

    .line 371
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriteRecord: recIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    :cond_26
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_3e

    .line 376
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_36

    .line 377
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_3e
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_5e

    .line 389
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_4d

    .line 390
    invoke-direct {p0}, Lorg/apache/tools/tar/TarBuffer;->writeBlock()V

    .line 393
    :cond_4d
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    mul-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    .line 398
    return-void

    .line 383
    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record has length \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' with offset \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' which is less than the record size of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
