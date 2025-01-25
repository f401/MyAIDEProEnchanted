.class final Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;
.super Lokhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IntervalPingRunnable"
.end annotation


# instance fields
.field final this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;)V
    .registers 6

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const-string v0, "OkHttp %s ping"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v3

    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$100(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v4

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$200(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_20

    move v0, v1

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_2b

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lokhttp3/internal/http2/Http2Connection;->access$000(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    :goto_1f
    return-void

    :cond_20
    :try_start_20
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$208(Lokhttp3/internal/http2/Http2Connection;)J
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_2b

    move v0, v2

    goto :goto_16

    :cond_27
    invoke-virtual {v3, v2, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    goto :goto_1f

    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method
