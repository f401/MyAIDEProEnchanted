.class public Lsun/nio/cs/StreamEncoder;
.super Ljava/io/Writer;
.source "StreamEncoder.java"


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

.field private ch:Ljava/nio/channels/WritableByteChannel;

.field private cs:Ljava/nio/charset/Charset;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private haveLeftoverChar:Z

.field private volatile isOpen:Z

.field private lcb:Ljava/nio/CharBuffer;

.field private leftoverChar:C

.field private final out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .registers 6

    .line 174
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 176
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 177
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 174
    invoke-direct {p0, p1, p2, v0}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V

    .line 178
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V
    .registers 6

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, p2}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    .line 171
    iput-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    .line 182
    iput-object p1, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    .line 183
    iput-object v1, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    .line 184
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    .line 185
    iput-object p3, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 193
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_24

    .line 194
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    .line 196
    :cond_24
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)V
    .registers 6

    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    .line 171
    iput-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    .line 199
    iput-object v1, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    .line 200
    iput-object p1, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    .line 201
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    .line 202
    iput-object p2, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 203
    if-gez p3, :cond_1c

    .line 204
    const/16 p3, 0x2000

    .line 205
    :cond_1c
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    .line 206
    return-void
.end method

.method private ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    if-eqz v0, :cond_5

    .line 45
    return-void

    .line 44
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private flushLeftoverChar(Ljava/nio/CharBuffer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    if-nez v0, :cond_7

    if-nez p2, :cond_7

    .line 259
    :cond_6
    :goto_6
    return-void

    .line 231
    :cond_7
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    if-nez v0, :cond_69

    .line 232
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    .line 235
    :goto_12
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    if-eqz v0, :cond_1d

    .line 236
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iget-char v1, p0, Lsun/nio/cs/StreamEncoder;->leftoverChar:C

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 237
    :cond_1d
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 238
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 239
    :cond_2e
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 240
    :goto_33
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3d

    if-eqz p2, :cond_6d

    .line 241
    :cond_3d
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 243
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 244
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    iput-char v0, p0, Lsun/nio/cs/StreamEncoder;->leftoverChar:C

    .line 245
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 246
    invoke-direct {p0, p1, p2}, Lsun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    goto :goto_6

    .line 234
    :cond_69
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_12

    .line 258
    :cond_6d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    goto :goto_6

    .line 251
    :cond_71
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 252
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    goto :goto_33

    .line 256
    :cond_7b
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_33
.end method

.method public static forEncoder(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Lsun/nio/cs/StreamEncoder;
    .registers 4

    .line 84
    new-instance v0, Lsun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)V

    return-object v0
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamEncoder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 53
    .line 54
    if-nez p2, :cond_a

    .line 55
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    .line 57
    :cond_a
    :try_start_a
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 58
    new-instance v0, Lsun/nio/cs/StreamEncoder;

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    :try_end_19
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_a .. :try_end_19} :catch_1a

    return-object v0

    .line 59
    :catch_1a
    move-exception v0

    .line 60
    :cond_1b
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;
    .registers 4

    .line 67
    new-instance v0, Lsun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)Lsun/nio/cs/StreamEncoder;
    .registers 4

    .line 74
    new-instance v0, Lsun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V

    return-object v0
.end method

.method private isOpen()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    return v0
.end method

.method private writeBytes()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 210
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 211
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 212
    if-gt v1, v0, :cond_28

    sub-int/2addr v0, v1

    .line 215
    :goto_14
    if-lez v0, :cond_22

    .line 216
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-eqz v2, :cond_2a

    .line 217
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v0, :cond_22

    .line 223
    :cond_22
    :goto_22
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 224
    return-void

    .line 212
    :cond_28
    const/4 v0, 0x0

    goto :goto_14

    .line 220
    :cond_2a
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_22
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_3
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    if-nez v0, :cond_9

    .line 147
    monitor-exit v1

    .line 151
    :goto_8
    return-void

    .line 148
    :cond_9
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implClose()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    .line 150
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

    .line 327
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    instance-of v1, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    if-eqz v1, :cond_d

    .line 328
    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_c
    return-object v0

    .line 329
    :cond_d
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_3
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->ensureOpen()V

    .line 140
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implFlush()V

    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public flushBuffer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_3
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 103
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implFlushBuffer()V

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 105
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 95
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 96
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->encodingName()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method implClose()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lsun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    .line 303
    :goto_5
    :try_start_5
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 305
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_1e

    .line 315
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    .line 316
    :cond_1e
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_28

    .line 317
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 323
    :goto_27
    return-void

    .line 319
    :cond_28
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_27

    .line 320
    :catch_2e
    move-exception v0

    .line 321
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 322
    throw v0

    .line 306
    :cond_35
    :try_start_35
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 307
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    goto :goto_5

    .line 311
    :cond_3f
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_42} :catch_2e

    goto :goto_5
.end method

.method implFlush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implFlushBuffer()V

    .line 295
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_a

    .line 296
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 297
    :cond_a
    return-void
.end method

.method implFlushBuffer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_b

    .line 290
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    .line 291
    :cond_b
    return-void
.end method

.method implWrite([CII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 264
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 266
    iget-boolean v1, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    if-eqz v1, :cond_d

    .line 267
    invoke-direct {p0, v0, v3}, Lsun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    .line 269
    :cond_d
    :goto_d
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 270
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 272
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-ne v1, v4, :cond_2f

    .line 274
    iput-boolean v4, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    .line 275
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    iput-char v0, p0, Lsun/nio/cs/StreamEncoder;->leftoverChar:C

    .line 286
    :cond_2f
    return-void

    .line 279
    :cond_30
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 280
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    goto :goto_d

    .line 284
    :cond_3a
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_d
.end method

.method public write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    int-to-char v0, p1

    .line 112
    new-array v1, v3, [C

    aput-char v0, v1, v2

    invoke-virtual {p0, v1, v2, v3}, Lsun/nio/cs/StreamEncoder;->write([CII)V

    .line 113
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 130
    if-ltz p3, :cond_e

    .line 132
    new-array v0, p3, [C

    .line 133
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 134
    invoke-virtual {p0, v0, v2, p3}, Lsun/nio/cs/StreamEncoder;->write([CII)V

    .line 135
    return-void

    .line 131
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public write([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_3
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->ensureOpen()V

    .line 118
    if-ltz p2, :cond_22

    array-length v0, p1

    if-gt p2, v0, :cond_22

    if-ltz p3, :cond_22

    add-int v0, p2, p3

    array-length v2, p1

    if-gt v0, v2, :cond_22

    add-int v0, p2, p3

    if-ltz v0, :cond_22

    .line 121
    if-nez p3, :cond_1a

    .line 122
    monitor-exit v1

    .line 126
    :goto_19
    return-void

    .line 124
    :cond_1a
    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/cs/StreamEncoder;->implWrite([CII)V

    .line 125
    monitor-exit v1

    goto :goto_19

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    .line 120
    :cond_22
    :try_start_22
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_1f
.end method
