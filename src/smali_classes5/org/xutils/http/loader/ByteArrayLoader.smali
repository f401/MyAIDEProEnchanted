.class Lorg/xutils/http/loader/ByteArrayLoader;
.super Lorg/xutils/http/loader/Loader;
.source "ByteArrayLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader",
        "<[B>;"
    }
.end annotation


# instance fields
.field private resultData:[B


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/ByteArrayLoader;->load(Lorg/xutils/http/request/UriRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 23
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/ByteArrayLoader;->resultData:[B

    .line 24
    return-object v0
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/ByteArrayLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)[B

    move-result-object v0

    return-object v0
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    if-eqz p1, :cond_c

    .line 30
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getBytesContent()[B

    move-result-object v0

    .line 31
    if-eqz v0, :cond_c

    array-length v1, v0

    if-lez v1, :cond_c

    .line 35
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<[B>;"
        }
    .end annotation

    .line 17
    new-instance v0, Lorg/xutils/http/loader/ByteArrayLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/ByteArrayLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lorg/xutils/http/loader/ByteArrayLoader;->resultData:[B

    invoke-virtual {p0, p1, v0}, Lorg/xutils/http/loader/ByteArrayLoader;->saveByteArrayCache(Lorg/xutils/http/request/UriRequest;[B)V

    .line 41
    return-void
.end method
