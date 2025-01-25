.class public abstract Labcd/Ww;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Zw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Ww$a;,
        Labcd/Ww$b;,
        Labcd/Ww$c;,
        Labcd/Ww$d;,
        Labcd/Ww$e;
    }
.end annotation


# instance fields
.field private final DW:Labcd/Yw;

.field private FH:Labcd/Xw;

.field private Hw:Ljava/lang/String;

.field private final j6:Labcd/Zw$a;

.field private v5:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Labcd/Yw;Labcd/Zw$a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Labcd/Ww;-><init>(Labcd/Yw;Labcd/Zw$a;Labcd/Xw;)V

    return-void
.end method

.method public constructor <init>(Labcd/Yw;Labcd/Zw$a;Labcd/Xw;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Ww;->FH:Labcd/Xw;

    iput-object v0, p0, Labcd/Ww;->Hw:Ljava/lang/String;

    iput-object v0, p0, Labcd/Ww;->v5:Lorg/apache/http/client/HttpClient;

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_15

    iput-object p1, p0, Labcd/Ww;->DW:Labcd/Yw;

    iput-object p2, p0, Labcd/Ww;->j6:Labcd/Zw$a;

    iput-object p3, p0, Labcd/Ww;->FH:Labcd/Xw;

    return-void

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'type\' must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'appKeyPair\' must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "UTF-8 isn\'t available"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method private static j6(Labcd/Yw;Labcd/Xw;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAuth oauth_version=\"1.0\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oauth_signature_method=\"PLAINTEXT\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oauth_consumer_key=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/_w;->j6:Ljava/lang/String;

    invoke-static {v1}, Labcd/Ww;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    if-eqz p1, :cond_56

    const-string v3, ", oauth_token=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Labcd/_w;->j6:Ljava/lang/String;

    invoke-static {v3}, Labcd/Ww;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Labcd/_w;->DW:Ljava/lang/String;

    invoke-static {p0}, Labcd/Ww;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Labcd/_w;->DW:Ljava/lang/String;

    invoke-static {p0}, Labcd/Ww;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6b

    :cond_56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Labcd/_w;->DW:Ljava/lang/String;

    invoke-static {p0}, Labcd/Ww;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6b
    const-string p1, ", oauth_signature=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-object v0, p0, Labcd/Ww;->FH:Labcd/Xw;

    if-nez v0, :cond_b

    iget-object v0, p0, Labcd/Ww;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public FH()Labcd/Zw$a;
    .registers 2

    iget-object v0, p0, Labcd/Ww;->j6:Labcd/Zw$a;

    return-object v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    const-string v0, "api.dropbox.com"

    return-object v0
.end method

.method public VH()Labcd/Xw;
    .registers 2

    iget-object v0, p0, Labcd/Ww;->FH:Labcd/Xw;

    return-object v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "api-content.dropbox.com"

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object v0
.end method

.method public gn()Labcd/Yw;
    .registers 2

    iget-object v0, p0, Labcd/Ww;->DW:Labcd/Yw;

    return-object v0
.end method

.method public j6()Labcd/Zw$b;
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Labcd/Xw;)V
    .registers 3

    if-eqz p1, :cond_8

    iput-object p1, p0, Labcd/Ww;->FH:Labcd/Xw;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/Ww;->Hw:Ljava/lang/String;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'oauth1AccessToken\' must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_8

    iput-object p1, p0, Labcd/Ww;->Hw:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/Ww;->FH:Labcd/Xw;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'oauth2AccessToken\' must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Lorg/apache/http/HttpRequest;)V
    .registers 4

    iget-object v0, p0, Labcd/Ww;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Ww;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_18
    iget-object v0, p0, Labcd/Ww;->DW:Labcd/Yw;

    iget-object v1, p0, Labcd/Ww;->FH:Labcd/Xw;

    invoke-static {v0, v1}, Labcd/Ww;->j6(Labcd/Yw;Labcd/Xw;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    const-string v1, "Authorization"

    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j6(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 3

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const/16 v0, 0x7530

    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public u7()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Ww;->FH:Labcd/Xw;

    iput-object v0, p0, Labcd/Ww;->Hw:Ljava/lang/String;

    return-void
.end method

.method public v5()Lorg/apache/http/client/HttpClient;
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Labcd/Ww;->v5:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_ac

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    new-instance v1, Labcd/Sw;

    invoke-direct {v1, p0}, Labcd/Sw;-><init>(Labcd/Ww;)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_b0

    :try_start_17
    new-instance v1, Labcd/Iw;

    invoke-direct {v1}, Labcd/Iw;-><init>()V
    :try_end_1c
    .catch Ljava/security/KeyManagementException; {:try_start_17 .. :try_end_1c} :catch_a5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_17 .. :try_end_1c} :catch_9e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1c} :catch_97
    .catch Ljava/security/KeyStoreException; {:try_start_17 .. :try_end_1c} :catch_90
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_1c} :catch_89
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_82
    .catchall {:try_start_17 .. :try_end_1c} :catchall_b0

    :try_start_1c
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Labcd/Ww$a;

    invoke-direct {v1, v0, v2}, Labcd/Ww$a;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v2, 0x7530

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x2000

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OfficialDropboxJavaSDK/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Labcd/Dw;->j6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v2, Labcd/Tw;

    invoke-direct {v2, p0, v1, v0}, Labcd/Tw;-><init>(Labcd/Ww;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    new-instance v0, Labcd/Uw;

    invoke-direct {v0, p0}, Labcd/Uw;-><init>(Labcd/Ww;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v0, Labcd/Vw;

    invoke-direct {v0, p0}, Labcd/Vw;-><init>(Labcd/Ww;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    iput-object v2, p0, Labcd/Ww;->v5:Lorg/apache/http/client/HttpClient;

    goto :goto_ac

    :catch_82
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_89
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_90
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_97
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_9e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_a5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_ac
    :goto_ac
    iget-object v0, p0, Labcd/Ww;->v5:Lorg/apache/http/client/HttpClient;
    :try_end_ae
    .catchall {:try_start_1c .. :try_end_ae} :catchall_b0

    monitor-exit p0

    return-object v0

    :catchall_b0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
