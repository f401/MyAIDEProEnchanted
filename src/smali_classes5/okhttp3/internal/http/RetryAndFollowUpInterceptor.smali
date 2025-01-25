.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;
    .registers 9
    .param p2  # Lokhttp3/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x1f7

    const/16 v4, 0x198

    const/4 v0, 0x0

    if-eqz p1, :cond_156

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x133

    if-eq v1, v3, :cond_b1

    const/16 v3, 0x134

    if-eq v1, v3, :cond_b1

    const/16 v3, 0x191

    if-eq v1, v3, :cond_a5

    if-eq v1, v5, :cond_87

    const/16 v3, 0x197

    if-eq v1, v3, :cond_5f

    if-eq v1, v4, :cond_2b

    packed-switch v1, :pswitch_data_15c

    :cond_2a
    :goto_2a
    return-object v0

    :cond_2b
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v1

    if-nez v1, :cond_2a

    :cond_43
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    if-eq v1, v4, :cond_2a

    :cond_53
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result v1

    if-gtz v1, :cond_2a

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    goto :goto_2a

    :cond_5f
    if-eqz p2, :cond_78

    invoke-virtual {p2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    :goto_65
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_7f

    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    goto :goto_2a

    :cond_78
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_65

    :cond_7f
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_87
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v1

    if-eqz v1, :cond_97

    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    if-eq v1, v5, :cond_2a

    :cond_97
    const v1, 0x7fffffff

    invoke-direct {p0, p1, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    goto :goto_2a

    :cond_a5
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    goto/16 :goto_2a

    :cond_b1
    const-string v1, "GET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    const-string v1, "HEAD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_c1
    :pswitch_c1  #0x12c, 0x12d, 0x12e, 0x12f
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "Location"

    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fd

    iget-object v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_fd
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12b

    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_148

    const-string v2, "GET"

    invoke-virtual {v3, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    :goto_11a
    if-nez v4, :cond_12b

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v0, "Content-Length"

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v0, "Content-Type"

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_12b
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->sameConnection(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v0

    if-nez v0, :cond_13e

    const-string v0, "Authorization"

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_13e
    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    goto/16 :goto_2a

    :cond_148
    if-eqz v4, :cond_152

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    :cond_152
    invoke-virtual {v3, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_11a

    :cond_156
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_data_15c
    .packed-switch 0x12c
        :pswitch_c1  #0000012c
        :pswitch_c1  #0000012d
        :pswitch_c1  #0000012e
        :pswitch_c1  #0000012f
    .end packed-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_13

    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_25

    if-nez p2, :cond_25

    :goto_11
    move v1, v0

    goto :goto_6

    :cond_13
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_1f

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_6

    :cond_1f
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_6

    move v1, v0

    goto :goto_6

    :cond_25
    move v0, v1

    goto :goto_11
.end method

.method private recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    if-eqz p3, :cond_12

    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_12
    invoke-direct {p0, p1, p3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lokhttp3/internal/connection/Transmitter;->canRetry()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method private requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z
    .registers 4

    invoke-virtual {p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_c
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private retryAfter(Lokhttp3/Response;I)I
    .registers 5

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return p2

    :cond_9
    const-string v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_8

    :cond_1a
    const p2, 0x7fffffff

    goto :goto_8
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->transmitter()Lokhttp3/internal/connection/Transmitter;

    move-result-object v4

    move-object v2, v1

    :cond_d
    :goto_d
    invoke-virtual {v4, v0}, Lokhttp3/internal/connection/Transmitter;->prepareToConnect(Lokhttp3/Request;)V

    invoke-virtual {v4}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_b9

    const/4 v5, 0x0

    :try_start_17
    invoke-virtual {p1, v0, v4, v5}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Response;
    :try_end_1a
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_17 .. :try_end_1a} :catch_a8
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_92
    .catchall {:try_start_17 .. :try_end_1a} :catchall_a3

    move-result-object v0

    if-eqz v2, :cond_c1

    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    :goto_35
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v0, v2}, Lokhttp3/internal/Internal;->exchange(Lokhttp3/Response;)Lokhttp3/internal/connection/Exchange;

    move-result-object v5

    if-eqz v5, :cond_57

    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v0

    :goto_45
    invoke-direct {p0, v2, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;

    move-result-object v0

    if-nez v0, :cond_59

    if-eqz v5, :cond_56

    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->isDuplex()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {v4}, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit()V

    :cond_56
    return-object v2

    :cond_57
    move-object v0, v1

    goto :goto_45

    :cond_59
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v6

    if-eqz v6, :cond_65

    invoke-virtual {v6}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v6

    if-nez v6, :cond_56

    :cond_65
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v4}, Lokhttp3/internal/connection/Transmitter;->hasExchange()Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-virtual {v5}, Lokhttp3/internal/connection/Exchange;->detachWithViolence()V

    :cond_75
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x14

    if-le v3, v5, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_92
    move-exception v5

    :try_start_93
    instance-of v6, v5, Lokhttp3/internal/http2/ConnectionShutdownException;

    xor-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v5, v4, v6, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_a3

    move-result v6

    if-eqz v6, :cond_a2

    :cond_9d
    invoke-virtual {v4}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    goto/16 :goto_d

    :cond_a2
    :try_start_a2
    throw v5
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception v0

    invoke-virtual {v4}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    throw v0

    :catch_a8
    move-exception v5

    :try_start_a9
    invoke-virtual {v5}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v4, v7, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v6

    if-nez v6, :cond_9d

    invoke-virtual {v5}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_b9
    .catchall {:try_start_a9 .. :try_end_b9} :catchall_a3

    :cond_b9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c1
    move-object v2, v0

    goto/16 :goto_35
.end method
