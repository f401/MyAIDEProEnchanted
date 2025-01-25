.class public Lokhttp3/internal/platform/ConscryptPlatform;
.super Lokhttp3/internal/platform/Platform;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/ConscryptPlatform;
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "org.conscrypt.Conscrypt"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Lorg/conscrypt/Conscrypt;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_d

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Lokhttp3/internal/platform/ConscryptPlatform;

    invoke-direct {v1}, Lokhttp3/internal/platform/ConscryptPlatform;-><init>()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_14

    move-object v0, v1

    goto :goto_c

    :catch_14
    move-exception v1

    goto :goto_c
.end method

.method private getProvider()Ljava/security/Provider;
    .registers 2

    invoke-static {}, Lorg/conscrypt/Conscrypt;->newProviderBuilder()Lorg/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager()Lorg/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$ProviderBuilder;->build()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setUseEngineSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V

    :cond_a
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p2, :cond_f

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    invoke-static {p1, p2}, Lorg/conscrypt/Conscrypt;->setHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    :cond_f
    invoke-static {p3}, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setApplicationProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1f
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .registers 4

    :try_start_0
    const-string v0, "TLSv1.3"

    invoke-direct {p0}, Lokhttp3/internal/platform/ConscryptPlatform;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    :try_start_c
    const-string v1, "TLS"

    invoke-direct {p0}, Lokhttp3/internal/platform/ConscryptPlatform;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_a

    :catch_17
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No TLS provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    const-class v0, Ljava/lang/Object;

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lokhttp3/internal/platform/ConscryptPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    const-class v1, Ljavax/net/ssl/X509TrustManager;

    const-string v2, "x509TrustManager"

    invoke-static {v0, v1, v2}, Lokhttp3/internal/platform/ConscryptPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_22

    goto :goto_a

    :cond_20
    const/4 v0, 0x0

    goto :goto_a

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on Conscrypt"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
