.class final Lokhttp3/internal/http2/Http2Connection$PingRunnable;
.super Lokhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PingRunnable"
.end annotation


# instance fields
.field final payload1:I

.field final payload2:I

.field final reply:Z

.field final this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;ZII)V
    .registers 9

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const-string v0, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->reply:Z

    iput p3, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->payload1:I

    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->payload2:I

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->reply:Z

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->payload1:I

    iget v3, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->payload2:I

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    return-void
.end method
