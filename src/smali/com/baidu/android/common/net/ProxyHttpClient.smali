.class public Lcom/baidu/android/common/net/ProxyHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final HTTP_TIMEOUT_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "ProxyHttpClient"


# instance fields
.field private mLeakedException:Ljava/lang/RuntimeException;

.field private mPort:Ljava/lang/String;

.field private mProxy:Ljava/lang/String;

.field private mUseWap:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/baidu/android/common/net/ProxyHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/common/net/ConnectManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/android/common/net/ConnectManager;)V
    .registers 4

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/android/common/net/ProxyHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/common/net/ConnectManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/android/common/net/ProxyHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/common/net/ConnectManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/common/net/ConnectManager;)V
    .registers 6

    .line 88
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ProxyHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-nez p3, :cond_13

    .line 93
    new-instance p3, Lcom/baidu/android/common/net/ConnectManager;

    invoke-direct {p3, p1}, Lcom/baidu/android/common/net/ConnectManager;-><init>(Landroid/content/Context;)V

    .line 96
    :cond_13
    invoke-virtual {p3}, Lcom/baidu/android/common/net/ConnectManager;->isWapNetwork()Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mUseWap:Z

    .line 97
    invoke-virtual {p3}, Lcom/baidu/android/common/net/ConnectManager;->getProxy()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    .line 98
    invoke-virtual {p3}, Lcom/baidu/android/common/net/ConnectManager;->getProxyPort()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mPort:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_49

    .line 106
    new-instance p1, Lorg/apache/http/HttpHost;

    iget-object p3, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mProxy:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mPort:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, p3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 107
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p3

    const-string v0, "http.route.default-proxy"

    invoke-interface {p3, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 111
    :cond_49
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const/16 p3, 0x7530

    invoke-static {p1, p3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 112
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 118
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const/16 p3, 0x2000

    invoke-static {p1, p3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 120
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6f

    .line 121
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :cond_6f
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_e

    .line 139
    invoke-virtual {p0}, Lcom/baidu/android/common/net/ProxyHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    :cond_e
    return-void
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 3

    .line 157
    :try_start_0
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_1a

    .line 164
    :catch_5
    move-exception v0

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

    .line 179
    :goto_1a
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    return-object v0
.end method

.method public executeSafely(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/android/common/net/ProxyHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    .line 198
    new-instance v0, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v0, p1}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v0
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

    if-eqz v0, :cond_e

    .line 129
    sget-object v1, Lcom/baidu/android/common/net/ProxyHttpClient;->TAG:Ljava/lang/String;

    const-string v2, "Leak found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    return-void
.end method

.method public isWap()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Lcom/baidu/android/common/net/ProxyHttpClient;->mUseWap:Z

    return v0
.end method
