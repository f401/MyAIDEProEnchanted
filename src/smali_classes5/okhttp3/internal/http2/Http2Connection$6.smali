.class Lokhttp3/internal/http2/Http2Connection$6;
.super Lokhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushDataLater(ILokio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lokhttp3/internal/http2/Http2Connection;

.field final val$buffer:Lokio/Buffer;

.field final val$byteCount:I

.field final val$inFinished:Z

.field final val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V
    .registers 8

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$6;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    iput-object p5, p0, Lokhttp3/internal/http2/Http2Connection$6;->val$buffer:Lokio/Buffer;

    iput p6, p0, Lokhttp3/internal/http2/Http2Connection$6;->val$byteCount:I

    iput-boolean p7, p0, Lokhttp3/internal/http2/Http2Connection$6;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$6;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$6;->val$buffer:Lokio/Buffer;

    iget v3, p0, Lokhttp3/internal/http2/Http2Connection$6;->val$byteCount:I

    iget-boolean v4, p0, Lokhttp3/internal/http2/Http2Connection$6;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lokhttp3/internal/http2/PushObserver;->onData(ILokio/BufferedSource;IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$6;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    :cond_1d
    if-nez v0, :cond_23

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection$6;->val$inFinished:Z

    if-eqz v0, :cond_34

    :cond_23
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$6;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_38

    :try_start_26
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$6;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_34
    :goto_34
    return-void

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    :try_start_37
    throw v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    move-exception v0

    goto :goto_34
.end method
