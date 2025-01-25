.class final Lokhttp3/internal/connection/ExchangeFinder;
.super Ljava/lang/Object;


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private final address:Lokhttp3/Address;

.field private final call:Lokhttp3/Call;

.field private connectingConnection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

.field private final eventListener:Lokhttp3/EventListener;

.field private hasStreamFailure:Z

.field private nextRouteToTry:Lokhttp3/Route;

.field private routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

.field private final routeSelector:Lokhttp3/internal/connection/RouteSelector;

.field private final transmitter:Lokhttp3/internal/connection/Transmitter;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iput-object p2, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iput-object p3, p0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    iput-object p4, p0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    iput-object p5, p0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    iget-object v1, p2, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    invoke-direct {v0, p3, v1, p4, p5}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    return-void
.end method

.method private findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v6

    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_13d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure:Z

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v0, v0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v1, v1, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v8, 0x0

    if-eqz v1, :cond_64

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v1, v1, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-boolean v1, v1, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    if-eqz v1, :cond_64

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->releaseConnectionNoEvents()Ljava/net/Socket;

    move-result-object v1

    move-object v5, v1

    :goto_28
    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v1, v1, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v1, :cond_67

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v1, v0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v0, 0x0

    move-object v3, v0

    :goto_34
    if-nez v1, :cond_83

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    iget-object v4, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v4, v7, v9}, Lokhttp3/internal/connection/RealConnectionPool;->transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v1, v0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_4a
    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_145

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v3, :cond_57

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    iget-object v5, p0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    invoke-virtual {v0, v5, v3}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_57
    if-eqz v4, :cond_60

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    iget-object v3, p0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    invoke-virtual {v0, v3, v1}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_60
    if-eqz v1, :cond_85

    move-object v0, v1

    :goto_63
    return-object v0

    :cond_64
    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_28

    :cond_67
    const/4 v1, 0x0

    move-object v3, v0

    goto :goto_34

    :cond_6a
    :try_start_6a
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    if-eqz v0, :cond_74

    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    :goto_71
    const/4 v4, 0x0

    move-object v2, v0

    goto :goto_4a

    :cond_74
    invoke-direct {p0}, Lokhttp3/internal/connection/ExchangeFinder;->retryCurrentRoute()Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v0, v0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;
    :try_end_81
    .catchall {:try_start_6a .. :try_end_81} :catchall_145

    move-result-object v0

    goto :goto_71

    :cond_83
    const/4 v0, 0x0

    goto :goto_71

    :cond_85
    if-nez v2, :cond_e0

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v0, :cond_91

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e0

    :cond_91
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/internal/connection/RouteSelector$Selection;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    const/4 v0, 0x1

    :goto_9a
    iget-object v5, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v5

    :try_start_9d
    iget-object v3, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_132

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->getAll()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v6, p0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    iget-object v7, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v3, v9}, Lokhttp3/internal/connection/RealConnectionPool;->transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_14c

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v1, v0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v4, 0x1

    move-object v10, v3

    move-object v0, v1

    :goto_c1
    if-nez v4, :cond_14a

    if-nez v2, :cond_148

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->next()Lokhttp3/Route;

    move-result-object v1

    :goto_cb
    new-instance v0, Lokhttp3/internal/connection/RealConnection;

    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V

    iput-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection:Lokhttp3/internal/connection/RealConnection;

    move-object v9, v1

    :goto_d5
    monitor-exit v5
    :try_end_d6
    .catchall {:try_start_9d .. :try_end_d6} :catchall_13a

    if-eqz v4, :cond_e6

    :goto_d8
    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    goto :goto_63

    :cond_e0
    const/4 v0, 0x0

    goto :goto_9a

    :cond_e2
    const/4 v3, 0x0

    move-object v10, v3

    move-object v0, v1

    goto :goto_c1

    :cond_e6
    iget-object v6, p0, Lokhttp3/internal/connection/ExchangeFinder;->call:Lokhttp3/Call;

    iget-object v7, p0, Lokhttp3/internal/connection/ExchangeFinder;->eventListener:Lokhttp3/EventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Lokhttp3/internal/connection/RealConnection;->connect(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/connection/RouteDatabase;->connected(Lokhttp3/Route;)V

    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_102
    iput-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection:Lokhttp3/internal/connection/RealConnection;

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v3, p0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    iget-object v4, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v10, v5}, Lokhttp3/internal/connection/RealConnectionPool;->transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_123

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v0, v0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iput-object v9, p0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    :goto_11e
    monitor-exit v2
    :try_end_11f
    .catchall {:try_start_102 .. :try_end_11f} :catchall_12f

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_d8

    :cond_123
    :try_start_123
    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/RealConnectionPool;->put(Lokhttp3/internal/connection/RealConnection;)V

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/Transmitter;->acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V

    move-object v1, v8

    goto :goto_11e

    :catchall_12f
    move-exception v0

    monitor-exit v2
    :try_end_131
    .catchall {:try_start_123 .. :try_end_131} :catchall_12f

    throw v0

    :cond_132
    :try_start_132
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_13a
    move-exception v0

    monitor-exit v5
    :try_end_13c
    .catchall {:try_start_132 .. :try_end_13c} :catchall_13a

    throw v0

    :cond_13d
    :try_start_13d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_145
    move-exception v0

    monitor-exit v6
    :try_end_147
    .catchall {:try_start_13d .. :try_end_147} :catchall_145

    throw v0

    :cond_148
    move-object v1, v2

    goto :goto_cb

    :cond_14a
    move-object v9, v2

    goto :goto_d5

    :cond_14c
    move-object v10, v3

    move-object v0, v1

    goto/16 :goto_c1
.end method

.method private findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/connection/ExchangeFinder;->findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    :try_start_7
    iget v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v2, :cond_13

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-nez v2, :cond_13

    monitor-exit v1

    :cond_12
    return-object v0

    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1e

    invoke-virtual {v0, p6}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    goto :goto_0

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private retryCurrentRoute()Z
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v0, v0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v0, v0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v0, v0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    if-nez v0, :cond_2c

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v0, v0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->address:Lokhttp3/Address;

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->sameConnection(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method


# virtual methods
.method connectingConnection()Lokhttp3/internal/connection/RealConnection;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public find(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/ExchangeCodec;
    .registers 11

    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->connectTimeoutMillis()I

    move-result v1

    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v2

    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v4

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v5

    move-object v0, p0

    move v6, p3

    :try_start_16
    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/connection/ExchangeFinder;->findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/connection/RealConnection;->newCodec(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;)Lokhttp3/internal/http/ExchangeCodec;
    :try_end_1d
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_16 .. :try_end_1d} :catch_29
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_1f

    move-result-object v0

    return-object v0

    :catch_1f
    move-exception v0

    invoke-virtual {p0}, Lokhttp3/internal/connection/ExchangeFinder;->trackFailure()V

    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_29
    move-exception v0

    invoke-virtual {p0}, Lokhttp3/internal/connection/ExchangeFinder;->trackFailure()V

    throw v0
.end method

.method hasRouteToTry()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    if-eqz v2, :cond_a

    monitor-exit v1

    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lokhttp3/internal/connection/ExchangeFinder;->retryCurrentRoute()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v2, v2, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->nextRouteToTry:Lokhttp3/Route;

    monitor-exit v1

    goto :goto_9

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v0

    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v2

    if-nez v2, :cond_31

    :cond_29
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_31
    :goto_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_1c

    goto :goto_9

    :cond_33
    const/4 v0, 0x0

    goto :goto_31
.end method

.method hasStreamFailure()Z
    .registers 3

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method trackFailure()V
    .registers 3

    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure:Z

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method
