.class public final Lokhttp3/internal/http1/Http1ExchangeCodec;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/internal/http/ExchangeCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;,
        Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;
    }
.end annotation


# static fields
.field private static final HEADER_LIMIT:I = 0x40000

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private headerLimit:J

.field private final realConnection:Lokhttp3/internal/connection/RealConnection;

.field private final sink:Lokio/BufferedSink;

.field private final source:Lokio/BufferedSource;

.field private state:I

.field private trailers:Lokhttp3/Headers;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headerLimit:J

    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->client:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    iput-object p3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;

    iput-object p4, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    return-void
.end method

.method static synthetic access$1000(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/OkHttpClient;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method static synthetic access$200(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSink;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    return-object v0
.end method

.method static synthetic access$300(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokio/ForwardingTimeout;)V
    .registers 2

    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->detachTimeout(Lokio/ForwardingTimeout;)V

    return-void
.end method

.method static synthetic access$400(Lokhttp3/internal/http1/Http1ExchangeCodec;)I
    .registers 2

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    return v0
.end method

.method static synthetic access$402(Lokhttp3/internal/http1/Http1ExchangeCodec;I)I
    .registers 2

    iput p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    return p1
.end method

.method static synthetic access$500(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokio/BufferedSource;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method static synthetic access$600(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/internal/connection/RealConnection;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method static synthetic access$800(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/Headers;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->trailers:Lokhttp3/Headers;

    return-object v0
.end method

.method static synthetic access$802(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->trailers:Lokhttp3/Headers;

    return-object p1
.end method

.method static synthetic access$900(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/Headers;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaders()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method private detachTimeout(Lokio/ForwardingTimeout;)V
    .registers 4

    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v0

    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    return-void
.end method

.method private newChunkedSink()Lokio/Sink;
    .registers 3

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;
    .registers 4

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private newFixedLengthSource(J)Lokio/Source;
    .registers 6

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;J)V

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private newKnownLengthSink()Lokio/Sink;
    .registers 3

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/internal/http1/Http1ExchangeCodec$1;)V

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private newUnknownLengthSource()Lokio/Source;
    .registers 3

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/internal/http1/Http1ExchangeCodec$1;)V

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readHeaderLine()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->source:Lokio/BufferedSource;

    iget-wide v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headerLimit:J

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headerLimit:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->headerLimit:J

    return-object v0
.end method

.method private readHeaders()Lokhttp3/Headers;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    :goto_5
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaderLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    :cond_7
    return-void
.end method

.method public connection()Lokhttp3/internal/connection/RealConnection;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_10
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newChunkedSink()Lokio/Sink;

    move-result-object v0

    :goto_22
    return-object v0

    :cond_23
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Duplex connections are not supported for HTTP/1"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newKnownLengthSink()Lokio/Sink;

    move-result-object v0

    goto :goto_22

    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public flushRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public isClosed()Z
    .registers 3

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public openResponseBodySource(Lokhttp3/Response;)Lokio/Source;
    .registers 6

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;

    move-result-object v0

    goto :goto_c

    :cond_28
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_37

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v0

    goto :goto_c

    :cond_37
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newUnknownLengthSource()Lokio/Source;

    move-result-object v0

    goto :goto_c
.end method

.method public readResponseHeaders(Z)Lokhttp3/Response$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x64

    const/4 v2, 0x3

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    if-ne v0, v2, :cond_39

    :cond_a
    :try_start_a
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaderLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v1

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    iget-object v2, v1, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget v2, v1, Lokhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v2, v1, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-direct {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->readHeaders()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v0

    if-eqz p1, :cond_52

    iget v2, v1, Lokhttp3/internal/http/StatusLine;->code:I
    :try_end_35
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_35} :catch_5a

    if-ne v2, v3, :cond_52

    const/4 v0, 0x0

    :goto_38
    return-object v0

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    :try_start_52
    iget v1, v1, Lokhttp3/internal/http/StatusLine;->code:I

    if-ne v1, v3, :cond_87

    const/4 v1, 0x3

    iput v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I
    :try_end_59
    .catch Ljava/io/EOFException; {:try_start_52 .. :try_end_59} :catch_5a

    goto :goto_38

    :catch_5a
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    :goto_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_87
    const/4 v1, 0x4

    :try_start_88
    iput v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I
    :try_end_8a
    .catch Ljava/io/EOFException; {:try_start_88 .. :try_end_8a} :catch_5a

    goto :goto_38

    :cond_8b
    const-string v0, "unknown"

    goto :goto_70
.end method

.method public reportedContentLength(Lokhttp3/Response;)J
    .registers 4

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide/16 v0, -0x1

    goto :goto_8

    :cond_1a
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v0

    goto :goto_8
.end method

.method public skipConnectBody(Lokhttp3/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, Lokio/Source;->close()V

    goto :goto_a
.end method

.method public trailers()Lokhttp3/Headers;
    .registers 3

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->trailers:Lokhttp3/Headers;

    if-eqz v0, :cond_a

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "too early; can\'t read the trailers yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    if-nez v0, :cond_41

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v1

    :goto_14
    if-ge v0, v1, :cond_36

    iget-object v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_36
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->sink:Lokio/BufferedSink;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    return-void

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec;->realConnection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/internal/http/RequestLine;->get(Lokhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    return-void
.end method
