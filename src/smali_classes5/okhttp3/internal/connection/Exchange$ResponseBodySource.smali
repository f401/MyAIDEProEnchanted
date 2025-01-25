.class final Lokhttp3/internal/connection/Exchange$ResponseBodySource;
.super Lokio/ForwardingSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/Exchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResponseBodySource"
.end annotation


# instance fields
.field private bytesReceived:J

.field private closed:Z

.field private completed:Z

.field private final contentLength:J

.field final this$0:Lokhttp3/internal/connection/Exchange;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V
    .registers 8

    iput-object p1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->this$0:Lokhttp3/internal/connection/Exchange;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    iput-wide p3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->contentLength:J

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_11
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->closed:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->closed:Z

    :try_start_8
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_4

    :catch_10
    move-exception v0

    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method complete(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 9
    .param p1  # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v4, 0x1

    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->completed:Z

    if-eqz v0, :cond_6

    :goto_5
    return-object p1

    :cond_6
    iput-boolean v4, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->completed:Z

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->this$0:Lokhttp3/internal/connection/Exchange;

    iget-wide v2, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->bytesReceived:J

    const/4 v5, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/Exchange;->bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_5
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    iget-boolean v2, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->closed:Z

    if-nez v2, :cond_57

    :try_start_6
    invoke-virtual {p0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->delegate()Lokio/Source;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_17

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    :goto_16
    return-wide v0

    :cond_17
    iget-wide v4, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->bytesReceived:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->contentLength:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_24

    cmp-long v0, v4, v6

    if-gtz v0, :cond_30

    :cond_24
    iput-wide v4, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->bytesReceived:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_2e
    move-wide v0, v2

    goto :goto_16

    :cond_30
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_51} :catch_51

    :catch_51
    move-exception v0

    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
