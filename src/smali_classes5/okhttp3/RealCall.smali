.class final Lokhttp3/RealCall;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lokhttp3/OkHttpClient;

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lokhttp3/Request;

.field private transmitter:Lokhttp3/internal/connection/Transmitter;


# direct methods
.method private constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iput-boolean p3, p0, Lokhttp3/RealCall;->forWebSocket:Z

    return-void
.end method

.method static synthetic access$000(Lokhttp3/RealCall;)Lokhttp3/internal/connection/Transmitter;
    .registers 2

    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    return-object v0
.end method

.method static newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;
    .registers 5

    new-instance v0, Lokhttp3/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    new-instance v1, Lokhttp3/internal/connection/Transmitter;

    invoke-direct {v1, p0, v0}, Lokhttp3/internal/connection/Transmitter;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Call;)V

    iput-object v1, v0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lokhttp3/Call;
    .registers 2

    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokhttp3/RealCall;
    .registers 4

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-boolean v2, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lokhttp3/RealCall;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_25

    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->callStart()V

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lokhttp3/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->enqueue(Lokhttp3/RealCall$AsyncCall;)V

    return-void

    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_25

    throw v0
.end method

.method public execute()Lokhttp3/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-nez v0, :cond_35

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3d

    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->timeoutEnter()V

    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->callStart()V

    :try_start_13
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->executed(Lokhttp3/RealCall;)V

    invoke-virtual {p0}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_2a

    move-result-object v0

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V

    return-object v0

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V

    throw v0

    :cond_35
    :try_start_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method getResponseWithInterceptorChain()Lokhttp3/Response;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v2

    invoke-direct {v0, v2}, Lokhttp3/internal/http/BridgeInterceptor;-><init>(Lokhttp3/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->internalCache()Lokhttp3/internal/cache/InternalCache;

    move-result-object v2

    invoke-direct {v0, v2}, Lokhttp3/internal/cache/CacheInterceptor;-><init>(Lokhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/internal/connection/ConnectInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v2}, Lokhttp3/internal/connection/ConnectInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-nez v0, :cond_4d

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4d
    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v0, v2}, Lokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v5, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-object v6, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v7

    iget-object v6, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v8

    iget-object v6, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v9

    move-object v6, p0

    invoke-direct/range {v0 .. v9}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;ILokhttp3/Request;Lokhttp3/Call;III)V

    :try_start_73
    iget-object v1, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7e} :catch_92
    .catchall {:try_start_73 .. :try_end_7e} :catchall_a4

    move-result v1

    if-nez v1, :cond_87

    iget-object v1, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v1, v3}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v0

    :cond_87
    :try_start_87
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_92} :catch_92
    .catchall {:try_start_87 .. :try_end_92} :catchall_a4

    :catch_92
    move-exception v0

    :try_start_93
    iget-object v1, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception v0

    const/4 v4, 0x1

    :goto_9c
    if-nez v4, :cond_a3

    iget-object v1, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v1, v3}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_a3
    throw v0

    :catchall_a4
    move-exception v0

    goto :goto_9c
.end method

.method public isCanceled()Z
    .registers 2

    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isExecuted()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method redactedUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lokhttp3/Request;
    .registers 2

    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/RealCall;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "canceled "

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-eqz v0, :cond_2d

    const-string v0, "web socket"

    :goto_16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    const-string v0, ""

    goto :goto_d

    :cond_2d
    const-string v0, "call"

    goto :goto_16
.end method
