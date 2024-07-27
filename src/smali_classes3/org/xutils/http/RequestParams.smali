.class public Lorg/xutils/http/RequestParams;
.super Lorg/xutils/http/BaseParams;
.source "RequestParams.java"


# static fields
.field private static final DEFAULT_REDIRECT_HANDLER:Lorg/xutils/http/app/DefaultRedirectHandler;

.field public static final MAX_FILE_LOAD_WORKER:I = 0xa


# instance fields
.field private autoRename:Z

.field private autoResume:Z

.field private buildCacheKey:Ljava/lang/String;

.field private buildUri:Ljava/lang/String;

.field private builder:Lorg/xutils/http/app/ParamsBuilder;

.field private cacheDirName:Ljava/lang/String;

.field private final cacheKeys:[Ljava/lang/String;

.field private cacheMaxAge:J

.field private cacheSize:J

.field private cancelFast:Z

.field private connectTimeout:I

.field private context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/Executor;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private httpRequest:Lorg/xutils/http/annotation/HttpRequest;

.field private httpRetryHandler:Lorg/xutils/http/app/HttpRetryHandler;

.field private invokedGetHttpRequest:Z

.field private loadingUpdateMaxTimeSpan:I

.field private maxRetryCount:I

.field private priority:Lorg/xutils/common/task/Priority;

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:I

.field private redirectHandler:Lorg/xutils/http/app/RedirectHandler;

.field private requestTracker:Lorg/xutils/http/app/RequestTracker;

.field private saveFilePath:Ljava/lang/String;

.field private final signs:[Ljava/lang/String;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private uri:Ljava/lang/String;

.field private useCookie:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lorg/xutils/http/app/DefaultRedirectHandler;

    invoke-direct {v0}, Lorg/xutils/http/app/DefaultRedirectHandler;-><init>()V

    sput-object v0, Lorg/xutils/http/RequestParams;->DEFAULT_REDIRECT_HANDLER:Lorg/xutils/http/app/DefaultRedirectHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, v0, v0, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    const/16 v3, 0x3a98

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;-><init>()V

    .line 45
    iput-boolean v2, p0, Lorg/xutils/http/RequestParams;->useCookie:Z

    .line 50
    sget-object v0, Lorg/xutils/common/task/Priority;->DEFAULT:Lorg/xutils/common/task/Priority;

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->priority:Lorg/xutils/common/task/Priority;

    .line 51
    iput v3, p0, Lorg/xutils/http/RequestParams;->connectTimeout:I

    .line 52
    iput v3, p0, Lorg/xutils/http/RequestParams;->readTimeout:I

    .line 53
    iput-boolean v2, p0, Lorg/xutils/http/RequestParams;->autoResume:Z

    .line 54
    iput-boolean v1, p0, Lorg/xutils/http/RequestParams;->autoRename:Z

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lorg/xutils/http/RequestParams;->maxRetryCount:I

    .line 57
    iput-boolean v1, p0, Lorg/xutils/http/RequestParams;->cancelFast:Z

    .line 58
    const/16 v0, 0x12c

    iput v0, p0, Lorg/xutils/http/RequestParams;->loadingUpdateMaxTimeSpan:I

    .line 61
    sget-object v0, Lorg/xutils/http/RequestParams;->DEFAULT_REDIRECT_HANDLER:Lorg/xutils/http/app/DefaultRedirectHandler;

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->redirectHandler:Lorg/xutils/http/app/RedirectHandler;

    .line 385
    iput-boolean v1, p0, Lorg/xutils/http/RequestParams;->invokedGetHttpRequest:Z

    .line 84
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 85
    new-instance p2, Lorg/xutils/http/app/DefaultParamsBuilder;

    invoke-direct {p2}, Lorg/xutils/http/app/DefaultParamsBuilder;-><init>()V

    .line 87
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lorg/xutils/http/RequestParams;->signs:[Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lorg/xutils/http/RequestParams;->cacheKeys:[Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    .line 91
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->context:Landroid/content/Context;

    .line 92
    return-void
.end method

.method private getHttpRequest()Lorg/xutils/http/annotation/HttpRequest;
    .registers 3

    .line 388
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->httpRequest:Lorg/xutils/http/annotation/HttpRequest;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->invokedGetHttpRequest:Z

    if-nez v0, :cond_0

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->invokedGetHttpRequest:Z

    .line 390
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 391
    const-class v1, Lorg/xutils/http/RequestParams;

    if-eq v0, v1, :cond_0

    .line 392
    const-class v1, Lorg/xutils/http/annotation/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/annotation/HttpRequest;

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->httpRequest:Lorg/xutils/http/annotation/HttpRequest;

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->httpRequest:Lorg/xutils/http/annotation/HttpRequest;

    return-object v0
.end method

.method private initEntityParams()V
    .registers 3

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/RequestParams$1;

    invoke-direct {v1, p0}, Lorg/xutils/http/RequestParams$1;-><init>(Lorg/xutils/http/RequestParams;)V

    invoke-static {p0, v0, v1}, Lorg/xutils/http/RequestParamsHelper;->parseKV(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/http/RequestParamsHelper$ParseKVListener;)V

    .line 383
    return-void
.end method


# virtual methods
.method public getCacheDirName()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->cacheDirName:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 3

    .line 138
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildCacheKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->getHttpRequest()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    .line 141
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->cacheKeys()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lorg/xutils/http/app/ParamsBuilder;->buildCacheKey(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->buildCacheKey:Ljava/lang/String;

    .line 146
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildCacheKey:Ljava/lang/String;

    return-object v0

    .line 143
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    iget-object v1, p0, Lorg/xutils/http/RequestParams;->cacheKeys:[Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lorg/xutils/http/app/ParamsBuilder;->buildCacheKey(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->buildCacheKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCacheMaxAge()J
    .registers 3

    .line 246
    iget-wide v0, p0, Lorg/xutils/http/RequestParams;->cacheMaxAge:J

    return-wide v0
.end method

.method public getCacheSize()J
    .registers 3

    .line 235
    iget-wide v0, p0, Lorg/xutils/http/RequestParams;->cacheSize:J

    return-wide v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .line 204
    iget v0, p0, Lorg/xutils/http/RequestParams;->connectTimeout:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 180
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 260
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 158
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getHttpRetryHandler()Lorg/xutils/http/app/HttpRetryHandler;
    .registers 2

    .line 350
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->httpRetryHandler:Lorg/xutils/http/app/HttpRetryHandler;

    return-object v0
.end method

.method public getLoadingUpdateMaxTimeSpan()I
    .registers 2

    .line 339
    iget v0, p0, Lorg/xutils/http/RequestParams;->loadingUpdateMaxTimeSpan:I

    return v0
.end method

.method public getMaxRetryCount()I
    .registers 2

    .line 313
    iget v0, p0, Lorg/xutils/http/RequestParams;->maxRetryCount:I

    return v0
.end method

.method public getPriority()Lorg/xutils/common/task/Priority;
    .registers 2

    .line 196
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->priority:Lorg/xutils/common/task/Priority;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .registers 2

    .line 188
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .line 214
    iget v0, p0, Lorg/xutils/http/RequestParams;->readTimeout:I

    return v0
.end method

.method public getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;
    .registers 2

    .line 358
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->redirectHandler:Lorg/xutils/http/app/RedirectHandler;

    return-object v0
.end method

.method public getRequestTracker()Lorg/xutils/http/app/RequestTracker;
    .registers 2

    .line 369
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->requestTracker:Lorg/xutils/http/app/RequestTracker;

    return-object v0
.end method

.method public getSaveFilePath()Ljava/lang/String;
    .registers 2

    .line 302
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->saveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 154
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    goto :goto_0
.end method

.method init()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->getHttpRequest()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 103
    :cond_2
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->initEntityParams()V

    .line 106
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->getHttpRequest()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    invoke-interface {v1}, Lorg/xutils/http/annotation/HttpRequest;->builder()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/app/ParamsBuilder;

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    .line 110
    invoke-interface {v0, p0, v1}, Lorg/xutils/http/app/ParamsBuilder;->buildUri(Lorg/xutils/http/RequestParams;Lorg/xutils/http/annotation/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0, p0}, Lorg/xutils/http/app/ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;)V

    .line 112
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v1}, Lorg/xutils/http/annotation/HttpRequest;->signs()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/xutils/http/app/ParamsBuilder;->buildSign(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/app/ParamsBuilder;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    .line 99
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "uri is empty && @HttpRequest == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_4
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p0}, Lorg/xutils/http/app/ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;)V

    .line 118
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    iget-object v1, p0, Lorg/xutils/http/RequestParams;->signs:[Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lorg/xutils/http/app/ParamsBuilder;->buildSign(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->builder:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/app/ParamsBuilder;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method public isAutoRename()Z
    .registers 2

    .line 288
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->autoRename:Z

    return v0
.end method

.method public isAutoResume()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->autoResume:Z

    return v0
.end method

.method public isCancelFast()Z
    .registers 2

    .line 326
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->cancelFast:Z

    return v0
.end method

.method public isUseCookie()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->useCookie:Z

    return v0
.end method

.method public setAutoRename(Z)V
    .registers 2

    .line 295
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->autoRename:Z

    .line 296
    return-void
.end method

.method public setAutoResume(Z)V
    .registers 2

    .line 281
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->autoResume:Z

    .line 282
    return-void
.end method

.method public setCacheDirName(Ljava/lang/String;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->cacheDirName:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setCacheMaxAge(J)V
    .registers 4

    .line 253
    iput-wide p1, p0, Lorg/xutils/http/RequestParams;->cacheMaxAge:J

    .line 254
    return-void
.end method

.method public setCacheSize(J)V
    .registers 4

    .line 239
    iput-wide p1, p0, Lorg/xutils/http/RequestParams;->cacheSize:J

    .line 240
    return-void
.end method

.method public setCancelFast(Z)V
    .registers 2

    .line 335
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->cancelFast:Z

    .line 336
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 2

    .line 208
    if-lez p1, :cond_0

    .line 209
    iput p1, p0, Lorg/xutils/http/RequestParams;->connectTimeout:I

    .line 211
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->context:Landroid/content/Context;

    .line 185
    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->executor:Ljava/util/concurrent/Executor;

    .line 268
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 163
    return-void
.end method

.method public setHttpRetryHandler(Lorg/xutils/http/app/HttpRetryHandler;)V
    .registers 2

    .line 354
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->httpRetryHandler:Lorg/xutils/http/app/HttpRetryHandler;

    .line 355
    return-void
.end method

.method public setLoadingUpdateMaxTimeSpan(I)V
    .registers 2

    .line 346
    iput p1, p0, Lorg/xutils/http/RequestParams;->loadingUpdateMaxTimeSpan:I

    .line 347
    return-void
.end method

.method public setMaxRetryCount(I)V
    .registers 2

    .line 317
    iput p1, p0, Lorg/xutils/http/RequestParams;->maxRetryCount:I

    .line 318
    return-void
.end method

.method public setPriority(Lorg/xutils/common/task/Priority;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->priority:Lorg/xutils/common/task/Priority;

    .line 201
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->proxy:Ljava/net/Proxy;

    .line 193
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 2

    .line 221
    if-lez p1, :cond_0

    .line 222
    iput p1, p0, Lorg/xutils/http/RequestParams;->readTimeout:I

    .line 224
    :cond_0
    return-void
.end method

.method public setRedirectHandler(Lorg/xutils/http/app/RedirectHandler;)V
    .registers 2

    .line 365
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->redirectHandler:Lorg/xutils/http/app/RedirectHandler;

    .line 366
    return-void
.end method

.method public setRequestTracker(Lorg/xutils/http/app/RequestTracker;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->requestTracker:Lorg/xutils/http/app/RequestTracker;

    .line 374
    return-void
.end method

.method public setSaveFilePath(Ljava/lang/String;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->saveFilePath:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 151
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 3

    .line 130
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->uri:Ljava/lang/String;

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->buildUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUseCookie(Z)V
    .registers 2

    .line 176
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->useCookie:Z

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 401
    invoke-virtual {p0}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v0, "?"

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "&"

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
