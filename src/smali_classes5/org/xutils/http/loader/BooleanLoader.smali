.class Lorg/xutils/http/loader/BooleanLoader;
.super Lorg/xutils/http/loader/Loader;
.source "BooleanLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 20
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public bridge synthetic load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/BooleanLoader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/BooleanLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Lorg/xutils/http/loader/BooleanLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/BooleanLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .registers 2

    .line 31
    return-void
.end method
