.class public final Lokhttp3/internal/connection/Transmitter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/Transmitter$TransmitterReference;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private final call:Lokhttp3/Call;

.field private callStackTrace:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field public connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

.field private final eventListener:Lokhttp3/EventListener;

.field private exchange:Lokhttp3/internal/connection/Exchange;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

.field private exchangeRequestDone:Z

.field private exchangeResponseDone:Z

.field private noMoreExchanges:Z

.field private request:Lokhttp3/Request;

.field private final timeout:Lokio/AsyncTimeout;

.field private timeoutEarlyExit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Call;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/internal/connection/Transmitter$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/connection/Transmitter$1;-><init>(Lokhttp3/internal/connection/Transmitter;)V

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/Internal;->realConnectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RealConnectionPool;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    iput-object p2, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->eventListenerFactory()Lokhttp3/EventListener$Factory;

    move-result-object v1

    invoke-interface {v1, p2}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/AsyncTimeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    return-void
.end method

.method private createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    .registers 15

    const/4 v0, 0x0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v7

    :goto_19
    new-instance v0, Lokhttp3/Address;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    iget-object v8, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v8

    iget-object v9, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v9

    iget-object v10, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v10}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v11}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v12}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0

    :cond_51
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    goto :goto_19
.end method

.method private maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;
    .registers 10
    .param p1  # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v5

    if-eqz p2, :cond_c

    :try_start_8
    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v3, :cond_4b

    :cond_c
    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_56

    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v4, :cond_56

    if-nez p2, :cond_1a

    iget-boolean v4, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    if-eqz v4, :cond_56

    :cond_1a
    invoke-virtual {p0}, Lokhttp3/internal/connection/Transmitter;->releaseConnectionNoEvents()Ljava/net/Socket;

    move-result-object v4

    :goto_1e
    iget-object v6, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v6, :cond_23

    move-object v3, v2

    :cond_23
    iget-boolean v2, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    if-eqz v2, :cond_58

    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v2, :cond_58

    move v2, v0

    :goto_2c
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_53

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v3, :cond_39

    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v5, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {v4, v5, v3}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_39
    if-eqz v2, :cond_4a

    if-eqz p1, :cond_5e

    :goto_3d
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/Transmitter;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    if-eqz v0, :cond_5a

    invoke-virtual {v1, v2, p1}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    :cond_4a
    :goto_4a
    return-object p1

    :cond_4b
    :try_start_4b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot release connection while it is in use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_53
    move-exception v0

    monitor-exit v5
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_53

    throw v0

    :cond_56
    move-object v4, v2

    goto :goto_1e

    :cond_58
    move v2, v1

    goto :goto_2c

    :cond_5a
    invoke-virtual {v1, v2}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    goto :goto_4a

    :cond_5e
    move v0, v1

    goto :goto_3d
.end method

.method private timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1  # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-object p1

    :cond_5
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_19

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_19
    move-object p1, v0

    goto :goto_4
.end method


# virtual methods
.method acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V
    .registers 5

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_13

    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    new-instance v1, Lokhttp3/internal/connection/Transmitter$TransmitterReference;

    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lokhttp3/internal/connection/Transmitter$TransmitterReference;-><init>(Lokhttp3/internal/connection/Transmitter;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public callStart()V
    .registers 3

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lokhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->callStackTrace:Ljava/lang/Object;

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    return-void
.end method

.method public canRetry()Z
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->hasRouteToTry()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public cancel()V
    .registers 4

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->canceled:Z

    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    :goto_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_28

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->cancel()V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_28

    goto :goto_18

    :cond_22
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    goto :goto_1e

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public exchangeDoneDueToException()V
    .registers 3

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    monitor-exit v1

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method exchangeMessageDone(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;
    .registers 11
    .param p4  # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v3

    :try_start_5
    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-eq p1, v4, :cond_b

    monitor-exit v3

    :cond_a
    :goto_a
    return-object p4

    :cond_b
    if-eqz p2, :cond_3d

    iget-boolean v2, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    xor-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    iput-boolean v5, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    :goto_14
    if-eqz p3, :cond_1e

    iget-boolean v5, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    if-nez v5, :cond_1b

    move v2, v0

    :cond_1b
    const/4 v5, 0x1

    iput-boolean v5, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    :cond_1e
    iget-boolean v5, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    if-eqz v5, :cond_3f

    iget-boolean v5, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    if-eqz v5, :cond_3f

    if-eqz v2, :cond_3f

    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    iget v4, v2, Lokhttp3/internal/connection/RealConnection;->successCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lokhttp3/internal/connection/RealConnection;->successCount:I

    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_41

    if-eqz v0, :cond_a

    invoke-direct {p0, p4, v1}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object p4

    goto :goto_a

    :cond_3d
    move v2, v1

    goto :goto_14

    :cond_3f
    move v0, v1

    goto :goto_35

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public hasExchange()Z
    .registers 3

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public isCanceled()Z
    .registers 3

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->canceled:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method newExchange(Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/connection/Exchange;
    .registers 9

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v0, :cond_30

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_38

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/internal/connection/ExchangeFinder;->find(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/ExchangeCodec;

    move-result-object v5

    new-instance v0, Lokhttp3/internal/connection/Exchange;

    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/Exchange;-><init>(Lokhttp3/internal/connection/Transmitter;Lokhttp3/Call;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    :try_start_23
    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    monitor-exit v1

    return-object v0

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    :try_start_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "cannot make a new request because the previous response is still open: please call response.close()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v0

    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_38
.end method

.method public noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1  # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object v0

    return-object v0

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public prepareToConnect(Lokhttp3/Request;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->request:Lokhttp3/Request;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->sameConnection(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->hasRouteToTry()Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v0, :cond_43

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    iput-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    :cond_2a
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->request:Lokhttp3/Request;

    new-instance v0, Lokhttp3/internal/connection/ExchangeFinder;

    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Lokhttp3/internal/connection/Transmitter;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    iget-object v5, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/ExchangeFinder;-><init>(Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    goto :goto_1b

    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method releaseConnectionNoEvents()Ljava/net/Socket;
    .registers 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v4, :cond_47

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_44

    move v0, v2

    :goto_1e
    if-eq v0, v3, :cond_49

    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v3, v2, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v2, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v2, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/RealConnectionPool;->connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    :goto_43
    return-object v0

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_47
    move v0, v3

    goto :goto_1e

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4f
    move-object v0, v1

    goto :goto_43
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public timeoutEarlyExit()V
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public timeoutEnter()V
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    return-void
.end method
