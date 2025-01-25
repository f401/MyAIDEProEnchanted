.class public Lsun/nio/cs/StreamDecoder;
.super Ljava/io/Reader;
.source "StreamDecoder.java"


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000

.field private static final MIN_BYTE_BUFFER_SIZE:I = 0x20

.field private static volatile channelsAvailable:Z


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

.field private ch:Ljava/nio/channels/ReadableByteChannel;

.field private cs:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private haveLeftoverChar:Z

.field private in:Ljava/io/InputStream;

.field private volatile isOpen:Z

.field private leftoverChar:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lsun/nio/cs/StreamDecoder;->channelsAvailable:Z

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .registers 6

    .line 229
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 231
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 232
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 229
    invoke-direct {p0, p1, p2, v0}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V

    .line 233
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V
    .registers 5

    .line 236
    invoke-direct {p0, p2}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 237
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    .line 238
    iput-object p3, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 246
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-nez v0, :cond_22

    .line 247
    iput-object p1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    .line 249
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    .line 251
    :cond_22
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 252
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)V
    .registers 6

    const/16 v0, 0x20

    .line 254
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    .line 256
    iput-object p1, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    .line 257
    iput-object p2, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 258
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    .line 259
    if-gez p3, :cond_26

    .line 260
    const/16 p3, 0x2000

    .line 263
    :cond_1c
    :goto_1c
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    .line 264
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 265
    return-void

    .line 261
    :cond_26
    if-ge p3, v0, :cond_1c

    move p3, v0

    .line 262
    goto :goto_1c
.end method

.method private ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    if-eqz v0, :cond_5

    .line 46
    return-void

    .line 45
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forDecoder(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Lsun/nio/cs/StreamDecoder;
    .registers 4

    .line 94
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)V

    return-object v0
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamDecoder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 63
    .line 64
    if-nez p2, :cond_a

    .line 65
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    .line 67
    :cond_a
    :try_start_a
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 68
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    :try_end_19
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_a .. :try_end_19} :catch_1a

    return-object v0

    .line 69
    :catch_1a
    move-exception v0

    .line 70
    :cond_1b
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamDecoder;
    .registers 4

    .line 77
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)Lsun/nio/cs/StreamDecoder;
    .registers 4

    .line 84
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V

    return-object v0
.end method

.method private static getChannel(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;
    .registers 3

    const/4 v0, 0x0

    .line 210
    sget-boolean v1, Lsun/nio/cs/StreamDecoder;->channelsAvailable:Z

    if-nez v1, :cond_6

    .line 216
    :goto_5
    return-object v0

    .line 213
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    goto :goto_5

    .line 214
    :catch_b
    move-exception v1

    .line 215
    const/4 v1, 0x0

    sput-boolean v1, Lsun/nio/cs/StreamDecoder;->channelsAvailable:Z

    goto :goto_5
.end method

.method private inReady()Z
    .registers 3

    const/4 v0, 0x0

    .line 361
    :try_start_1
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gtz v1, :cond_13

    :cond_d
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    instance-of v1, v1, Ljava/nio/channels/FileChannel;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_15

    if-eqz v1, :cond_14

    :cond_13
    const/4 v0, 0x1

    .line 364
    :cond_14
    :goto_14
    return v0

    .line 363
    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method private isOpen()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    return v0
.end method

.method private read0()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, -0x1

    .line 115
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_7
    iget-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    if-eqz v2, :cond_12

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 120
    iget-char v0, p0, Lsun/nio/cs/StreamDecoder;->leftoverChar:C

    monitor-exit v1

    .line 136
    :goto_11
    return v0

    .line 124
    :cond_12
    const/4 v2, 0x2

    new-array v2, v2, [C

    .line 125
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lsun/nio/cs/StreamDecoder;->read([CII)I

    move-result v3

    .line 126
    if-eq v3, v0, :cond_32

    if-eq v3, v6, :cond_2e

    if-eq v3, v7, :cond_26

    .line 136
    monitor-exit v1

    goto :goto_11

    .line 139
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v0

    .line 130
    :cond_26
    const/4 v0, 0x1

    :try_start_27
    aget-char v0, v2, v0

    iput-char v0, p0, Lsun/nio/cs/StreamDecoder;->leftoverChar:C

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_23

    .line 134
    :cond_2e
    aget-char v0, v2, v5

    :try_start_30
    monitor-exit v1

    goto :goto_11

    .line 128
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_23

    goto :goto_11
.end method

.method private readBytes()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 270
    :try_start_5
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_19

    .line 272
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_61

    move-result v0

    .line 273
    if-gez v0, :cond_4d

    .line 274
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 297
    :goto_18
    return v0

    .line 277
    :cond_19
    :try_start_19
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 278
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 279
    if-gt v1, v0, :cond_43

    sub-int/2addr v0, v1

    .line 281
    :goto_28
    iget-object v2, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_61

    move-result v0

    .line 283
    if-gez v0, :cond_45

    .line 284
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_18

    .line 279
    :cond_43
    const/4 v0, 0x0

    goto :goto_28

    .line 285
    :cond_45
    if-eqz v0, :cond_59

    .line 287
    :try_start_47
    iget-object v2, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_61

    .line 293
    :cond_4d
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 294
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_18

    .line 286
    :cond_59
    :try_start_59
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Underlying input stream returned zero bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_61

    .line 293
    :catchall_61
    move-exception v0

    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 294
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_3
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    if-nez v0, :cond_9

    .line 190
    monitor-exit v1

    .line 194
    :goto_8
    return-void

    .line 191
    :cond_9
    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->implClose()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    .line 193
    monitor-exit v1

    goto :goto_8

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method encodingName()Ljava/lang/String;
    .registers 3

    .line 354
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    instance-of v1, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    if-eqz v1, :cond_d

    .line 355
    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    .line 354
    :goto_c
    return-object v0

    .line 356
    :cond_d
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 105
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 106
    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->encodingName()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method implClose()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_8

    .line 374
    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 377
    :goto_7
    return-void

    .line 376
    :cond_8
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_7
.end method

.method implRead([CII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    .line 307
    sub-int v0, p3, p2

    invoke-static {p1, p2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_11

    .line 312
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 314
    :cond_11
    const/4 v1, 0x0

    .line 316
    :cond_12
    :goto_12
    iget-object v3, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 317
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 318
    if-eqz v1, :cond_33

    .line 334
    :cond_22
    :goto_22
    if-eqz v1, :cond_29

    .line 342
    iget-object v2, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 345
    :cond_29
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    if-nez v2, :cond_6c

    .line 346
    if-eqz v1, :cond_6c

    .line 347
    const/4 v0, -0x1

    .line 350
    :goto_32
    return v0

    .line 320
    :cond_33
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 322
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    if-lez v3, :cond_45

    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->inReady()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 324
    :cond_45
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->readBytes()I

    move-result v3

    .line 325
    if-gez v3, :cond_12

    .line 327
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_5b

    move v1, v2

    .line 328
    goto :goto_22

    .line 329
    :cond_5b
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    move v1, v2

    goto :goto_12

    .line 333
    :cond_62
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-nez v4, :cond_22

    .line 337
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_12

    .line 350
    :cond_6c
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    goto :goto_32
.end method

.method implReady()Z
    .registers 2

    .line 369
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->inReady()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->read0()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    .line 145
    iget-object v3, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 146
    :try_start_6
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->ensureOpen()V

    .line 147
    if-ltz p2, :cond_58

    array-length v4, p1

    if-gt p2, v4, :cond_58

    if-ltz p3, :cond_58

    add-int v4, p2, p3

    array-length v5, p1

    if-gt v4, v5, :cond_58

    add-int v4, p2, p3

    if-ltz v4, :cond_58

    .line 151
    if-nez p3, :cond_1d

    .line 152
    monitor-exit v3

    .line 176
    :goto_1c
    return v0

    .line 156
    :cond_1d
    iget-boolean v4, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    if-eqz v4, :cond_38

    .line 158
    iget-char v0, p0, Lsun/nio/cs/StreamDecoder;->leftoverChar:C

    aput-char v0, p1, p2

    .line 159
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 162
    if-eqz p3, :cond_34

    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->implReady()Z

    move-result v0

    if-nez v0, :cond_37

    .line 164
    :cond_34
    monitor-exit v3

    move v0, v1

    goto :goto_1c

    :cond_37
    move v0, v1

    .line 167
    :cond_38
    if-ne p3, v1, :cond_4f

    .line 169
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->read0()I

    move-result v1

    .line 170
    if-ne v1, v2, :cond_48

    .line 171
    if-nez v0, :cond_43

    move v0, v2

    :cond_43
    monitor-exit v3

    goto :goto_1c

    .line 177
    :catchall_45
    move-exception v0

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_45

    throw v0

    .line 172
    :cond_48
    int-to-char v1, v1

    aput-char v1, p1, p2

    .line 173
    :try_start_4b
    monitor-exit v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 176
    :cond_4f
    add-int v1, p2, p3

    invoke-virtual {p0, p1, p2, v1}, Lsun/nio/cs/StreamDecoder;->implRead([CII)I

    move-result v1

    monitor-exit v3

    add-int/2addr v0, v1

    goto :goto_1c

    .line 149
    :cond_58
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_45
.end method

.method public ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_3
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->ensureOpen()V

    .line 183
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->implReady()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_10
    const/4 v0, 0x1

    :goto_11
    monitor-exit v1

    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 184
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method
