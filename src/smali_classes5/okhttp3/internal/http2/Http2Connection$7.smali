.class Lokhttp3/internal/http2/Http2Connection$7;
.super Lokhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushResetLater(ILokhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lokhttp3/internal/http2/Http2Connection;

.field final val$errorCode:Lokhttp3/internal/http2/ErrorCode;

.field final val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V
    .registers 6

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$7;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$7;->val$streamId:I

    iput-object p5, p0, Lokhttp3/internal/http2/Http2Connection$7;->val$errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$7;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$7;->val$streamId:I

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$7;->val$errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/http2/PushObserver;->onReset(ILokhttp3/internal/http2/ErrorCode;)V

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$7;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$7;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$7;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v0
.end method
