.class final Lokhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Reader$ContinuationSource;,
        Lokhttp3/internal/http2/Http2Reader$Handler;
    }
.end annotation


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private final continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

.field final hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lokhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Reader;->client:Z

    new-instance v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    invoke-direct {v0, p1}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    new-instance v1, Lokhttp3/internal/http2/Hpack$Reader;

    const/16 v2, 0x1000

    invoke-direct {v1, v2, v0}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(ILokio/Source;)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    return-void
.end method

.method static lengthWithoutPadding(IBS)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_6

    add-int/lit8 p0, p0, -0x1

    :cond_6
    if-gt p2, p0, :cond_c

    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0

    :cond_c
    const-string v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readData(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_39

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_2c

    move v2, v1

    :goto_9
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_2e

    :goto_d
    if-nez v1, :cond_30

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1c
    invoke-static {p2, p3, v0}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result v1

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v2, p4, v3, v1}, Lokhttp3/internal/http2/Http2Reader$Handler;->data(ZILokio/BufferedSource;I)V

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_2c
    move v2, v0

    goto :goto_9

    :cond_2e
    move v1, v0

    goto :goto_d

    :cond_30
    const-string v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_39
    const-string v1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readGoAway(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x8

    if-lt p2, v0, :cond_43

    if-nez p4, :cond_3a

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v1

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    add-int/lit8 v2, p2, -0x8

    invoke-static {v0}, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v3

    if-eqz v3, :cond_2b

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez v2, :cond_27

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    :cond_27
    invoke-interface {p1, v1, v3, v0}, Lokhttp3/internal/http2/Http2Reader$Handler;->goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V

    return-void

    :cond_2b
    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3a
    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_43
    const-string v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    int-to-short v1, p2

    iput-short v1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    int-to-byte v1, p3

    iput-byte v1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput p4, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Hpack$Reader;->readHeaders()V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_2d

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    :goto_8
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_15

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_15
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_1e

    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_1e
    const/4 v2, -0x1

    invoke-static {p2, p3, v0}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result v3

    invoke-direct {p0, v3, v0, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v1, p4, v2, v0}, Lokhttp3/internal/http2/Http2Reader$Handler;->headers(ZIILjava/util/List;)V

    return-void

    :cond_2b
    move v1, v0

    goto :goto_8

    :cond_2d
    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method static readMedium(Lokio/BufferedSource;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method private readPing(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p2, v2, :cond_27

    if-nez p4, :cond_1e

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_1c

    :goto_18
    invoke-interface {p1, v0, v2, v3}, Lokhttp3/internal/http2/Http2Reader$Handler;->ping(ZII)V

    return-void

    :cond_1c
    move v0, v1

    goto :goto_18

    :cond_1e
    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_27
    const-string v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_c
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, p2, v1, v2, v0}, Lokhttp3/internal/http2/Http2Reader$Handler;->priority(IIIZ)V

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_13

    if-eqz p4, :cond_a

    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V

    return-void

    :cond_a
    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_13
    const-string v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPushPromise(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_28

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_10

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_10
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, -0x4

    invoke-static {v2, p3, v0}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result v2

    invoke-direct {p0, v2, v0, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p4, v1, v0}, Lokhttp3/internal/http2/Http2Reader$Handler;->pushPromise(IILjava/util/List;)V

    return-void

    :cond_28
    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readRstStream(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2f

    if-eqz p4, :cond_26

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    invoke-static {v0}, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-interface {p1, p4, v1}, Lokhttp3/internal/http2/Http2Reader$Handler;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_17
    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_26
    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2f
    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readSettings(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v7, 0x1

    const/4 v3, 0x0

    if-nez p4, :cond_8c

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_18

    if-nez p2, :cond_f

    invoke-interface {p1}, Lokhttp3/internal/http2/Http2Reader$Handler;->ackSettings()V

    :goto_e
    return-void

    :cond_f
    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_18
    rem-int/lit8 v0, p2, 0x6

    if-nez v0, :cond_7d

    new-instance v4, Lokhttp3/internal/http2/Settings;

    invoke-direct {v4}, Lokhttp3/internal/http2/Settings;-><init>()V

    move v2, v3

    :goto_22
    if-ge v2, p2, :cond_79

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    move-result v0

    const v5, 0xffff

    and-int/2addr v0, v5

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    const/4 v6, 0x2

    if-eq v0, v6, :cond_6c

    const/4 v6, 0x3

    if-eq v0, v6, :cond_6a

    if-eq v0, v1, :cond_5e

    const/4 v6, 0x5

    if-eq v0, v6, :cond_46

    :cond_3f
    :goto_3f
    invoke-virtual {v4, v0, v5}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    add-int/lit8 v0, v2, 0x6

    move v2, v0

    goto :goto_22

    :cond_46
    const/16 v6, 0x4000

    if-lt v5, v6, :cond_4f

    const v6, 0xffffff

    if-le v5, v6, :cond_3f

    :cond_4f
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5e
    const/4 v0, 0x7

    if-gez v5, :cond_3f

    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_6a
    move v0, v1

    goto :goto_3f

    :cond_6c
    if-eqz v5, :cond_3f

    if-eq v5, v7, :cond_3f

    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_79
    invoke-interface {p1, v3, v4}, Lokhttp3/internal/http2/Http2Reader$Handler;->settings(ZLokhttp3/internal/http2/Settings;)V

    goto :goto_e

    :cond_7d
    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8c
    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readWindowUpdate(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_29

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1a

    invoke-interface {p1, p4, v0, v1}, Lokhttp3/internal/http2/Http2Reader$Handler;->windowUpdate(IJ)V

    return-void

    :cond_1a
    const-string v2, "windowSizeIncrement was 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_29
    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    return-void
.end method

.method public nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    const-wide/16 v4, 0x9

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->require(J)V
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_9} :catch_93

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-static {v2}, Lokhttp3/internal/http2/Http2Reader;->readMedium(Lokio/BufferedSource;)I

    move-result v2

    if-ltz v2, :cond_84

    const/16 v3, 0x4000

    if-gt v2, v3, :cond_84

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    if-eqz p1, :cond_23

    const/4 v4, 0x4

    if-ne v3, v4, :cond_51

    :cond_23
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    sget-object v5, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-static {v0, v4, v2, v3, v1}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_47
    packed-switch v3, :pswitch_data_96

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    :goto_50
    return v0

    :cond_51
    const-string v2, "Expected a SETTINGS frame but was %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_60  #0x8
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readWindowUpdate(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_50

    :pswitch_64  #0x7
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readGoAway(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_50

    :pswitch_68  #0x6
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readPing(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_50

    :pswitch_6c  #0x5
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readPushPromise(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_50

    :pswitch_70  #0x4
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readSettings(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_50

    :pswitch_74  #0x3
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readRstStream(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_50

    :pswitch_78  #0x2
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_50

    :pswitch_7c  #0x1
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readHeaders(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_50

    :pswitch_80  #0x0
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readData(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_50

    :cond_84
    const-string v3, "FRAME_SIZE_ERROR: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_93
    move-exception v0

    move v0, v1

    goto :goto_50

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_80  #00000000
        :pswitch_7c  #00000001
        :pswitch_78  #00000002
        :pswitch_74  #00000003
        :pswitch_70  #00000004
        :pswitch_6c  #00000005
        :pswitch_68  #00000006
        :pswitch_64  #00000007
        :pswitch_60  #00000008
    .end packed-switch
.end method

.method public readConnectionPreface(Lokhttp3/internal/http2/Http2Reader$Handler;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Reader;->client:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0, v6, p1}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    const-string v0, "Required SETTINGS preface not received"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_16
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    sget-object v1, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3e
    sget-object v1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
