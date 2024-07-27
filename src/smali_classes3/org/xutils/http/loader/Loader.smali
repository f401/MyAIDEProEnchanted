.class public abstract Lorg/xutils/http/loader/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected progressHandler:Lorg/xutils/http/ProgressHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private saveCacheInternal(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;[B)V
    .registers 8

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {v0}, Lorg/xutils/cache/DiskCacheEntity;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setKey(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setLastAccess(J)V

    .line 50
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setEtag(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getExpiration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setExpires(J)V

    .line 52
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getLastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setLastModify(Ljava/util/Date;)V

    .line 53
    invoke-virtual {v0, p2}, Lorg/xutils/cache/DiskCacheEntity;->setTextContent(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p3}, Lorg/xutils/cache/DiskCacheEntity;->setBytesContent([B)V

    .line 55
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xutils/cache/LruDiskCache;->put(Lorg/xutils/cache/DiskCacheEntity;)V

    .line 57
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/http/request/UriRequest;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/cache/DiskCacheEntity;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract newInstance()Lorg/xutils/http/loader/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract save2Cache(Lorg/xutils/http/request/UriRequest;)V
.end method

.method protected saveByteArrayCache(Lorg/xutils/http/request/UriRequest;[B)V
    .registers 4

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/xutils/http/loader/Loader;->saveCacheInternal(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;[B)V

    .line 35
    return-void
.end method

.method protected saveStringCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;)V
    .registers 4

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/xutils/http/loader/Loader;->saveCacheInternal(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;[B)V

    .line 31
    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .registers 2

    .line 23
    return-void
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lorg/xutils/http/loader/Loader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    .line 27
    return-void
.end method
