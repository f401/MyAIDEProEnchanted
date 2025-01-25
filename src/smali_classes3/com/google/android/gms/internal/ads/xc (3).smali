.class final Lcom/google/android/gms/internal/ads/xc;
.super Lcom/google/android/gms/internal/ads/Yc;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/oh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oh;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Yc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xc;->j6:Lcom/google/android/gms/internal/ads/oh;

    return-void
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/lE;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/Og;
    .registers 10
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

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xc;->j6:Lcom/google/android/gms/internal/ads/oh;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/oh;->j6(Lcom/google/android/gms/internal/ads/lE;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object p1
    :try_end_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_6} :catch_7b

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_31

    aget-object v4, v0, v3

    new-instance v5, Lcom/google/android/gms/internal/ads/lB;

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/google/android/gms/internal/ads/lB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_31
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_3d

    new-instance p1, Lcom/google/android/gms/internal/ads/Og;

    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/internal/ads/Og;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_3d
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v4, v0

    cmp-long v0, v4, v2

    if-nez v0, :cond_62

    new-instance v0, Lcom/google/android/gms/internal/ads/Og;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p2, v1, v3, p1}, Lcom/google/android/gms/internal/ads/Og;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object v0

    :cond_62
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Response too large: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_7b
    move-exception p1

    new-instance p2, Ljava/net/SocketTimeoutException;

    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    goto :goto_87

    :goto_86
    throw p2

    :goto_87
    goto :goto_86
.end method
