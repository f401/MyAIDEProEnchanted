.class public final Lokhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Stream$FramingSink;,
        Lokhttp3/internal/http2/Http2Stream$FramingSource;,
        Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field final connection:Lokhttp3/internal/http2/Http2Connection;

.field errorCode:Lokhttp3/internal/http2/ErrorCode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field errorException:Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hasResponseHeaders:Z

.field private final headersQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/Headers;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field final readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

.field final sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

.field private final source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

.field unacknowledgedBytesRead:J

.field final writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V
    .registers 10
    .param p5  # Lokhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    new-instance v1, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    new-instance v1, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    if-eqz p2, :cond_6a

    iput p1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, p2, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    new-instance v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-object v2, p2, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, p0, v2, v3}, Lokhttp3/internal/http2/Http2Stream$FramingSource;-><init>(Lokhttp3/internal/http2/Http2Stream;J)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    new-instance v2, Lokhttp3/internal/http2/Http2Stream$FramingSink;

    invoke-direct {v2, p0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iput-boolean p4, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    iput-boolean p3, v2, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz p5, :cond_49

    invoke-interface {v0, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_49
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_51

    if-nez p5, :cond_5a

    :cond_51
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_59

    if-eqz p5, :cond_62

    :cond_59
    return-void

    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remotely-initiated streams should have headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeInternal(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z
    .registers 5
    .param p2  # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v1, :cond_8

    monitor-exit p0

    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz v1, :cond_19

    monitor-exit p0

    goto :goto_7

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    :try_start_19
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_16

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6

    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method cancelStreamIfNecessary()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_28

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_34

    if-eqz v0, :cond_2a

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_1a

    :cond_2a
    if-nez v1, :cond_27

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    goto :goto_27

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method checkOutNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v0, :cond_15

    :goto_14
    throw v0

    :cond_15
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_14

    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    return-void
.end method

.method public close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .registers 5
    .param p2  # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/http2/Http2Connection;->writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V

    goto :goto_6
.end method

.method public closeLater(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    goto :goto_7
.end method

.method public enqueueTrailers(Lokhttp3/Headers;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    invoke-static {v0, p1}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->access$302(Lokhttp3/internal/http2/Http2Stream$FramingSink;Lokhttp3/Headers;)Lokhttp3/Headers;

    monitor-exit p0

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trailers.size() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0

    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_1c
.end method

.method public getConnection()Lokhttp3/internal/http2/Http2Connection;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    return-object v0
.end method

.method public getErrorCode()Lokhttp3/internal/http2/ErrorCode;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    return v0
.end method

.method public getSink()Lokio/Sink;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_17

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    return-object v0

    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getSource()Lokio/Source;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    move v0, v1

    :goto_9
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v3, v3, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-ne v3, v0, :cond_12

    :goto_f
    return v1

    :cond_10
    move v0, v2

    goto :goto_9

    :cond_12
    move v1, v2

    goto :goto_f
.end method

.method public isOpen()Z
    .registers 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_29

    if-eqz v1, :cond_8

    monitor-exit p0

    :goto_7
    return v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v1, :cond_26

    :cond_14
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v1, :cond_20

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v1, :cond_26

    :cond_20
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    if-eqz v1, :cond_26

    monitor-exit p0

    goto :goto_7

    :cond_26
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_7

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Lokio/BufferedSource;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receive(Lokio/BufferedSource;J)V

    return-void
.end method

.method receiveHeaders(Lokhttp3/Headers;Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-eqz v0, :cond_7

    if-nez p2, :cond_28

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :goto_f
    if-eqz p2, :cond_16

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    :cond_16
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2e

    if-nez v0, :cond_27

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    :cond_27
    return-void

    :cond_28
    :try_start_28
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    invoke-static {v0, p1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->access$202(Lokhttp3/internal/http2/Http2Stream$FramingSource;Lokhttp3/Headers;)Lokhttp3/Headers;

    goto :goto_f

    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_a

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public takeHeaders()Lokhttp3/Headers;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1d

    :goto_6
    :try_start_6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    goto :goto_6

    :catchall_16
    move-exception v0

    :try_start_17
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    :try_start_20
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Headers;
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_1d

    monitor-exit p0

    return-object v0

    :cond_37
    :try_start_37
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v0, :cond_3c

    :goto_3b
    throw v0

    :cond_3c
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_1d

    goto :goto_3b
.end method

.method public trailers()Lokhttp3/Headers;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v0, :cond_d

    :goto_9
    throw v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_a

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d
    :try_start_d
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_9

    :cond_15
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->access$000(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->access$100(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->access$200(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokhttp3/Headers;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->access$200(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokhttp3/Headers;
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_a

    move-result-object v0

    :goto_41
    monitor-exit p0

    return-object v0

    :cond_43
    :try_start_43
    sget-object v0, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    goto :goto_41

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "too early; can\'t read the trailers yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_a
.end method

.method waitForIo()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public writeHeaders(Ljava/util/List;ZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_37

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-eqz p2, :cond_e

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_34

    if-nez p3, :cond_20

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    :try_start_14
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v2, v2, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2f

    move p3, v0

    :goto_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_31

    :cond_20
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p2, p1}, Lokhttp3/internal/http2/Http2Connection;->writeHeaders(IZLjava/util/List;)V

    if-eqz p3, :cond_2e

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    :cond_2e
    return-void

    :cond_2f
    const/4 p3, 0x0

    goto :goto_1f

    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "headers == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTimeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
