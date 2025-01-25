.class Lokhttp3/internal/platform/Android10Platform;
.super Lokhttp3/internal/platform/AndroidPlatform;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/platform/AndroidPlatform;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lokhttp3/internal/platform/Platform;->isAndroid()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-static {}, Lokhttp3/internal/platform/Android10Platform;->getSdkInt()I

    move-result v1

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_7

    new-instance v1, Lokhttp3/internal/platform/Android10Platform;

    const-string v2, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lokhttp3/internal/platform/Android10Platform;-><init>(Ljava/lang/Class;)V
    :try_end_1b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_8 .. :try_end_1b} :catch_1d

    move-object v0, v1

    goto :goto_7

    :catch_1d
    move-exception v1

    goto :goto_7
.end method

.method private enableSessionTickets(Ljavax/net/ssl/SSLSocket;)V
    .registers 3

    invoke-static {p1}, Landroid/net/ssl/SSLSockets;->isSupportedSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/net/ssl/SSLSockets;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    :cond_a
    return-void
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
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

    :try_start_0
    invoke-direct {p0, p1}, Lokhttp3/internal/platform/Android10Platform;->enableSessionTickets(Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    invoke-static {p3}, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Android internal error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method
