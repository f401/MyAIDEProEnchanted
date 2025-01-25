.class Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;
.super Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;


# direct methods
.method constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;J)V
    .registers 6

    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/internal/http1/Http1ExchangeCodec$1;)V

    iput-wide p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->responseBodyComplete()V

    :cond_11
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$600(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->responseBodyComplete()V

    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->closed:Z

    goto :goto_4
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const-wide/16 v6, 0x0

    cmp-long v2, p2, v6

    if-ltz v2, :cond_49

    iget-boolean v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->closed:Z

    if-nez v2, :cond_41

    iget-wide v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    cmp-long v4, v2, v6

    if-nez v4, :cond_13

    :goto_12
    return-wide v0

    :cond_13
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->read(Lokio/Buffer;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2d

    iget-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->responseBodyComplete()V

    :cond_2b
    move-wide v0, v2

    goto :goto_12

    :cond_2d
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$600(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->responseBodyComplete()V

    throw v0

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
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
