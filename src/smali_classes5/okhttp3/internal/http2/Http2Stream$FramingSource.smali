.class final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramingSource"
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field closed:Z

.field finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokio/Buffer;

.field private final receiveBuffer:Lokio/Buffer;

.field final this$0:Lokhttp3/internal/http2/Http2Stream;

.field private trailers:Lokhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Stream;J)V
    .registers 6

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokio/Buffer;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    return-object v0
.end method

.method static synthetic access$100(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokio/Buffer;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    return-object v0
.end method

.method static synthetic access$200(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokhttp3/Headers;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;

    return-object v0
.end method

.method static synthetic access$202(Lokhttp3/internal/http2/Http2Stream$FramingSource;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;

    return-object p1
.end method

.method private updateConnectionFlowControl(J)V
    .registers 4

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

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

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_20

    invoke-direct {p0, v2, v3}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    :cond_20
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const-wide/16 v2, -0x1

    cmp-long v0, p2, v6

    if-ltz v0, :cond_be

    :goto_8
    const/4 v0, 0x0

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v5

    :try_start_c
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_a3

    :try_start_13
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v1, :cond_d5

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    move-object v4, v0

    :goto_24
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-nez v0, :cond_ad

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_8e

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v0, p1, v6, v7}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v0

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v8, v6, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    add-long/2addr v8, v0

    iput-wide v8, v6, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    if-nez v4, :cond_73

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v6, v6, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_73

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget v7, v7, Lokhttp3/internal/http2/Http2Stream;->id:I

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v8, v8, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    invoke-virtual {v6, v7, v8, v9}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J
    :try_end_73
    .catchall {:try_start_13 .. :try_end_73} :catchall_b5

    :cond_73
    :goto_73
    :try_start_73
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    monitor-exit v5
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_a3

    cmp-long v5, v0, v2

    if-eqz v5, :cond_a8

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    :goto_82
    return-wide v0

    :cond_83
    :try_start_83
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    move-object v4, v0

    goto :goto_24

    :cond_8e
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_a6

    if-nez v4, :cond_a6

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_99
    .catchall {:try_start_83 .. :try_end_99} :catchall_b5

    :try_start_99
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    monitor-exit v5

    goto/16 :goto_8

    :catchall_a3
    move-exception v0

    monitor-exit v5
    :try_end_a5
    .catchall {:try_start_99 .. :try_end_a5} :catchall_a3

    throw v0

    :cond_a6
    move-wide v0, v2

    goto :goto_73

    :cond_a8
    if-nez v4, :cond_ac

    move-wide v0, v2

    goto :goto_82

    :cond_ac
    throw v4

    :cond_ad
    :try_start_ad
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b5
    .catchall {:try_start_ad .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception v0

    :try_start_b6
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_a3

    :cond_be
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

    :cond_d5
    move-object v4, v0

    goto/16 :goto_24
.end method

.method receive(Lokio/BufferedSource;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    :cond_4
    :goto_4
    cmp-long v0, p2, v2

    if-lez v0, :cond_28

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v1

    :try_start_b
    iget-boolean v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    iget-wide v10, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    add-long/2addr v8, p2

    cmp-long v0, v8, v10

    if-lez v0, :cond_29

    move v0, v4

    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_7d

    if-eqz v0, :cond_2b

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    move v0, v5

    goto :goto_1b

    :cond_2b
    if-eqz v6, :cond_31

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_28

    :cond_31
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_77

    sub-long/2addr p2, v0

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v6

    :try_start_41
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v7}, Lokio/Buffer;->clear()V

    :goto_50
    monitor-exit v6
    :try_end_51
    .catchall {:try_start_41 .. :try_end_51} :catchall_74

    cmp-long v6, v0, v2

    if-lez v6, :cond_4

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    goto :goto_4

    :cond_59
    :try_start_59
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_80

    move v0, v4

    :goto_64
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v1, v7}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    if-eqz v0, :cond_72

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_72
    move-wide v0, v2

    goto :goto_50

    :catchall_74
    move-exception v0

    monitor-exit v6
    :try_end_76
    .catchall {:try_start_59 .. :try_end_76} :catchall_74

    throw v0

    :cond_77
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_7d
    move-exception v0

    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v0

    :cond_80
    move v0, v5

    goto :goto_64
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
