.class public final Lokhttp3/internal/connection/RealConnectionPool;
.super Ljava/lang/Object;


# static fields
.field static final $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Lokhttp3/internal/connection/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/internal/connection/RealConnectionPool;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;-><init>(Lokhttp3/internal/connection/RealConnectionPool;)V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    new-instance v0, Lokhttp3/internal/connection/RouteDatabase;

    invoke-direct {v0}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    iput p1, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_27

    return-void

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keepAliveDuration <= 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I
    .registers 10

    const/4 v2, 0x0

    iget-object v3, p1, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    move v1, v2

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5a

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1a

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_1a
    check-cast v0, Lokhttp3/internal/connection/Transmitter$TransmitterReference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    iget-object v0, v0, Lokhttp3/internal/connection/Transmitter$TransmitterReference;->callStackTrace:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Lokhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    sub-long v0, p2, v0

    iput-wide v0, p1, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    :goto_59
    return v2

    :cond_5a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_59
.end method


# virtual methods
.method cleanup(J)J
    .registers 14

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v0, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    move-object v2, v0

    move v3, v1

    move v8, v1

    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    invoke-direct {p0, v0, p1, p2}, Lokhttp3/internal/connection/RealConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I

    move-result v1

    if-lez v1, :cond_24

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    :cond_24
    add-int/lit8 v1, v8, 0x1

    iget-wide v6, v0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    sub-long v6, p1, v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_5f

    move-object v2, v0

    move-wide v4, v6

    move v8, v1

    goto :goto_e

    :cond_32
    iget-wide v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    cmp-long v6, v4, v0

    if-gez v6, :cond_3c

    iget v6, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    if-le v8, v6, :cond_4c

    :cond_3c
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_55

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const-wide/16 v0, 0x0

    :goto_4b
    return-wide v0

    :cond_4c
    if-lez v8, :cond_51

    :try_start_4e
    monitor-exit p0

    sub-long/2addr v0, v4

    goto :goto_4b

    :cond_51
    if-lez v3, :cond_58

    monitor-exit p0

    goto :goto_4b

    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_55

    throw v0

    :cond_58
    const/4 v0, 0x0

    :try_start_59
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_55

    const-wide/16 v0, -0x1

    goto :goto_4b

    :cond_5f
    move v8, v1

    goto :goto_e
.end method

.method public connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V
    .registers 6

    invoke-virtual {p1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_27

    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_27
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/RouteDatabase;->failed(Lokhttp3/Route;)V

    return-void
.end method

.method connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z
    .registers 3

    iget-boolean v0, p1, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    if-nez v0, :cond_8

    iget v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_f

    :cond_8
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x0

    goto :goto_e
.end method

.method public connectionCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public evictAll()V
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    iget-object v3, v0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    iput-boolean v3, v0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_32

    :cond_46
    return-void
.end method

.method public idleConnectionCount()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_23

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_21
    monitor-exit p0

    return v1

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$new$0$okhttp3-internal-connection-RealConnectionPool()V
    .registers 9

    const-wide/32 v6, 0xf4240

    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealConnectionPool;->cleanup(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    return-void

    :cond_12
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    div-long v2, v0, v6

    monitor-enter p0

    mul-long v4, v6, v2

    sub-long/2addr v0, v4

    long-to-int v0, v0

    :try_start_1f
    invoke-virtual {p0, v2, v3, v0}, Ljava/lang/Object;->wait(JI)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_27
    .catchall {:try_start_1f .. :try_end_22} :catchall_24

    :goto_22
    :try_start_22
    monitor-exit p0

    goto :goto_3

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v0

    :catch_27
    move-exception v0

    goto :goto_22
.end method

.method put(Lokhttp3/internal/connection/RealConnection;)V
    .registers 4

    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    sget-object v0, Lokhttp3/internal/connection/RealConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z
    .registers 8
    .param p3  # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Address;",
            "Lokhttp3/internal/connection/Transmitter;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Route;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    if-eqz p4, :cond_1a

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1a
    invoke-virtual {v0, p1, p3}, Lokhttp3/internal/connection/RealConnection;->isEligible(Lokhttp3/Address;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2, v0}, Lokhttp3/internal/connection/Transmitter;->acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method
