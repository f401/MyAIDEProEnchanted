.class public abstract Lcom/google/android/gms/internal/ads/Yc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/oh;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract DW(Lcom/google/android/gms/internal/ads/lE;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/Og;
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
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lE;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Yc;->DW(Lcom/google/android/gms/internal/ads/lE;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/Og;

    move-result-object p1

    new-instance p2, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    new-instance v1, Lorg/apache/http/ProtocolVersion;

    const-string v2, "HTTP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Og;->FH()I

    move-result v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {p2, v0}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Og;->Hw()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/lB;

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/lB;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/lB;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/http/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    invoke-virtual {p2, v0}, Lorg/apache/http/message/BasicHttpResponse;->setHeaders([Lorg/apache/http/Header;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Og;->j6()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_6e

    new-instance v1, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Og;->DW()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    invoke-virtual {p2, v1}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_6e
    return-object p2
.end method
