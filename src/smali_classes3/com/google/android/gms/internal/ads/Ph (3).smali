.class public final Lcom/google/android/gms/internal/ads/Ph;
.super Lcom/google/android/gms/internal/ads/Yc;


# instance fields
.field private final DW:Ljavax/net/ssl/SSLSocketFactory;

.field private final j6:Lcom/google/android/gms/internal/ads/Ki;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Ph;-><init>(Lcom/google/android/gms/internal/ads/Ki;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/Ki;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/ads/Ph;-><init>(Lcom/google/android/gms/internal/ads/Ki;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/Ki;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Yc;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ph;->j6:Lcom/google/android/gms/internal/ads/Ki;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ph;->DW:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static DW(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method static synthetic j6(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ph;->DW(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/lB;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/lB;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/google/android/gms/internal/ads/lB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_48
    return-object v0
.end method

.method private static j6(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/lE;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->j3()[B

    move-result-object p1

    if-eqz p1, :cond_3c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "UTF-8"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "application/x-www-form-urlencoded; charset="

    if-eqz v2, :cond_25

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2a
    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_3c
    return-void
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/lE;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/Og;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/Og;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->VH()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->Hw()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ph;->j6:Lcom/google/android/gms/internal/ads/Ki;

    if-eqz p2, :cond_3a

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/Ki;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_39

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "URL blocked by rewriter: "

    if-eqz p2, :cond_2e

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_33

    :cond_2e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_33
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_39
    move-object v0, p2

    :cond_3a
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->U2()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v4, "https"

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :try_start_67
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :cond_85
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->Zo()I

    move-result p2

    packed-switch p2, :pswitch_data_11c

    new-instance p1, Ljava/lang/IllegalStateException;

    goto/16 :goto_10d

    :pswitch_90  #0x7
    const-string p2, "PATCH"

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_95
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Ph;->j6(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/lE;)V

    goto :goto_b7

    :pswitch_99  #0x6
    const-string p2, "TRACE"

    :goto_9b
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_b7

    :pswitch_9f  #0x5
    const-string p2, "OPTIONS"

    goto :goto_9b

    :pswitch_a2  #0x4
    const-string p2, "HEAD"

    goto :goto_9b

    :pswitch_a5  #0x3
    const-string p2, "DELETE"

    goto :goto_9b

    :pswitch_a8  #0x2
    const-string p2, "PUT"

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_95

    :pswitch_ae  #0x1
    const-string p2, "POST"

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_95

    :pswitch_b4  #0x0
    const-string p2, "GET"

    goto :goto_9b

    :goto_b7
    :pswitch_b7  #0xffffffff
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_105

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->Zo()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d7

    const/16 p1, 0x64

    if-gt p1, p2, :cond_cd

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_d7

    :cond_cd
    const/16 p1, 0xcc

    if-eq p2, p1, :cond_d7

    const/16 p1, 0x130

    if-eq p2, p1, :cond_d7

    const/4 p1, 0x1

    goto :goto_d8

    :cond_d7
    const/4 p1, 0x0

    :goto_d8
    if-nez p1, :cond_eb

    new-instance p1, Lcom/google/android/gms/internal/ads/Og;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ph;->j6(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/internal/ads/Og;-><init>(ILjava/util/List;)V
    :try_end_e7
    .catchall {:try_start_67 .. :try_end_e7} :catchall_113

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_eb
    :try_start_eb
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ph;->j6(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    new-instance v2, Lcom/google/android/gms/internal/ads/li;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/li;-><init>(Ljava/net/HttpURLConnection;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/Og;

    invoke-direct {v4, p2, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Og;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_101
    .catchall {:try_start_eb .. :try_end_101} :catchall_102

    return-object v4

    :catchall_102
    move-exception p1

    const/4 v2, 0x1

    goto :goto_114

    :cond_105
    :try_start_105
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_10d
    const-string p2, "Unknown method type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_113
    .catchall {:try_start_105 .. :try_end_113} :catchall_113

    :catchall_113
    move-exception p1

    :goto_114
    if-nez v2, :cond_119

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_119
    goto :goto_11b

    :goto_11a
    throw p1

    :goto_11b
    goto :goto_11a

    :pswitch_data_11c
    .packed-switch -0x1
        :pswitch_b7  #ffffffff
        :pswitch_b4  #00000000
        :pswitch_ae  #00000001
        :pswitch_a8  #00000002
        :pswitch_a5  #00000003
        :pswitch_a2  #00000004
        :pswitch_9f  #00000005
        :pswitch_99  #00000006
        :pswitch_90  #00000007
    .end packed-switch
.end method
