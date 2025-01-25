.class final Lokhttp3/internal/connection/Exchange$RequestBodySink;
.super Lokio/ForwardingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/Exchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestBodySink"
.end annotation


# instance fields
.field private bytesReceived:J

.field private closed:Z

.field private completed:Z

.field private contentLength:J

.field final this$0:Lokhttp3/internal/connection/Exchange;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/Exchange;Lokio/Sink;J)V
    .registers 6

    iput-object p1, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->this$0:Lokhttp3/internal/connection/Exchange;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    iput-wide p3, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->contentLength:J

    return-void
.end method

.method private complete(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 9
    .param p1  # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v5, 0x1

    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->completed:Z

    if-eqz v0, :cond_6

    :goto_5
    return-object p1

    :cond_6
    iput-boolean v5, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->completed:Z

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->this$0:Lokhttp3/internal/connection/Exchange;

    iget-wide v2, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->bytesReceived:J

    const/4 v4, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/Exchange;->bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->closed:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->closed:Z

    iget-wide v0, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_16

    iget-wide v2, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->bytesReceived:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_24

    :cond_16
    :try_start_16
    invoke-super {p0}, Lokio/ForwardingSink;->close()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/Exchange$RequestBodySink;->complete(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_4

    :catch_1e
    move-exception v0

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/Exchange$RequestBodySink;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_24
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Lokio/ForwardingSink;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/Exchange$RequestBodySink;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->closed:Z

    if-nez v0, :cond_46

    iget-wide v0, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    iget-wide v2, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->bytesReceived:J

    add-long/2addr v2, p2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1c

    :cond_13
    :try_start_13
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    iget-wide v0, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->bytesReceived:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->bytesReceived:J
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_40

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->contentLength:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokhttp3/internal/connection/Exchange$RequestBodySink;->bytesReceived:J

    add-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_40
    move-exception v0

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/Exchange$RequestBodySink;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
