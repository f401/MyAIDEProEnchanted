.class public Lcom/baidu/android/common/net/ProxyHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final HTTP_TIMEOUT_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLeakedException:Ljava/lang/RuntimeException;

.field private mPort:Ljava/lang/String;

.field private mProxy:Ljava/lang/String;

.field private mUseWap:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/baidu/android/common/net/ProxyHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/common/net/ProxyHttpClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0, v0}, Lcom/baidu/android/common/net/ProxyHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/common/net/ConnectManager;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/android/common/net/ConnectManager;)V
    .registers 4

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/android/common/net/ProxyHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/common/net/ConnectManager;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/android/common/net/ProxyHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/common/net/ConnectManager;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/common/net/ConnectManager;)V
    .registers 8

    const/16 v3, 0x7530

    .line 88
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ProxyHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 92
    if-nez p3, :cond_0

    .line 93
    new-instance p3, Lcom/baidu/android/common/net/ConnectManager;

    invoke-direct {p3, p1}, Lcom/baidu/android/common/net/ConnectManager;-><init>(Landroid/content/Context;)V

    .line 96
    :cond_0
    invoke-virtual {p3}, Lcom/baidu/android/common/net/ConnectManager;->isWapNetwork()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mUseWap:Z

    .line 97
    invoke-virtual {p3}, Lcom/baidu/android/common/net/ConnectManager;->getProxy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    .line 98
    invoke-virtual {p3}, Lcom/baidu/android/common/net/ConnectManager;->getProxyPort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mPort:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 106
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v1, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mPort:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 107
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 112
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 118
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 120
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 123
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 142
    :cond_0
    return-void
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 3

    .line 157
    :try_start_0
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpParams()Lorg/apache/http/params/HttpParams;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 180
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 164
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 165
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 167
    const-string v1, "ISO-8859-1"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 175
    const-string v1, "Apache-HttpClient/UNAVAILABLE (java 1.4)"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeSafely(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/android/common/net/ProxyHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 127
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 128
    iget-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/baidu/android/common/net/ProxyHttpClient;->TAG:Ljava/lang/String;

    const-string v1, "Leak found"

    iget-object v2, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :cond_0
    return-void
.end method

.method public isWap()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mUseWap:Z

    return v0
.end method
