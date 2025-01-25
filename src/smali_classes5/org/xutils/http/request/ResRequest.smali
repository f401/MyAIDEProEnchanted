.class public Lorg/xutils/http/request/ResRequest;
.super Lorg/xutils/http/request/UriRequest;
.source "ResRequest.java"


# static fields
.field private static lastModifiedTime:J


# instance fields
.field protected contentLength:J

.field protected inputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/xutils/http/request/ResRequest;->lastModifiedTime:J

    return-void
.end method

.method public constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/request/UriRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xutils/http/request/ResRequest;->contentLength:J

    .line 33
    return-void
.end method

.method private getResId()I
    .registers 5

    .line 78
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lorg/xutils/http/request/ResRequest;->queryUrl:Ljava/lang/String;

    const-string v2, "res:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    :cond_1f
    if-lez v0, :cond_22

    .line 89
    return v0

    .line 86
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resId not found in url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/http/request/ResRequest;->queryUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public clearCacheHeader()V
    .registers 1

    .line 75
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

    .line 106
    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->queryUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lorg/xutils/http/request/ResRequest;->getInputStream()Ljava/io/InputStream;

    .line 112
    iget-wide v0, p0, Lorg/xutils/http/request/ResRequest;->contentLength:J
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 116
    :goto_5
    return-wide v0

    .line 113
    :catchall_6
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    const-wide/16 v0, -0x1

    goto :goto_5
.end method

.method public getETag()Ljava/lang/String;
    .registers 2

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpiration()J
    .registers 3

    .line 131
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 4

    .line 173
    return-wide p2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_1f

    .line 95
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lorg/xutils/http/request/ResRequest;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

    .line 97
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/xutils/http/request/ResRequest;->contentLength:J

    .line 99
    :cond_1f
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLastModified()J
    .registers 7

    const-wide/16 v4, 0x0

    .line 136
    sget-wide v0, Lorg/xutils/http/request/ResRequest;->lastModifiedTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_31

    .line 138
    :try_start_8
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sput-wide v0, Lorg/xutils/http/request/ResRequest;->lastModifiedTime:J
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_34

    .line 148
    :cond_25
    sget-wide v0, Lorg/xutils/http/request/ResRequest;->lastModifiedTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_31

    .line 149
    :goto_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/xutils/http/request/ResRequest;->lastModifiedTime:J

    .line 153
    :cond_31
    sget-wide v0, Lorg/xutils/http/request/ResRequest;->lastModifiedTime:J

    return-wide v0

    .line 144
    :catchall_34
    move-exception v0

    .line 145
    :try_start_35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/xutils/http/request/ResRequest;->lastModifiedTime:J
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_45

    .line 148
    cmp-long v0, v4, v4

    if-nez v0, :cond_31

    goto :goto_2b

    :catchall_45
    move-exception v0

    sget-wide v2, Lorg/xutils/http/request/ResRequest;->lastModifiedTime:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_52

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/xutils/http/request/ResRequest;->lastModifiedTime:J

    .line 151
    :cond_52
    throw v0
.end method

.method public getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lorg/xutils/http/request/ResRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v0, 0xc8

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x194

    goto :goto_8
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public loadResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p0}, Lorg/xutils/http/loader/Loader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadResultFromCache()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lorg/xutils/http/request/ResRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v1

    iget-object v2, p0, Lorg/xutils/http/request/ResRequest;->params:Lorg/xutils/http/RequestParams;

    .line 58
    invoke-virtual {v2}, Lorg/xutils/http/RequestParams;->getCacheSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/xutils/cache/LruDiskCache;->setMaxSize(J)Lorg/xutils/cache/LruDiskCache;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lorg/xutils/http/request/ResRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_31

    .line 62
    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheEntity;->getLastModify()Ljava/util/Date;

    move-result-object v2

    .line 63
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/xutils/http/request/ResRequest;->getLastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_32

    .line 68
    :cond_31
    :goto_31
    return-object v0

    .line 66
    :cond_32
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, v1}, Lorg/xutils/http/loader/Loader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_31
.end method

.method public sendRequest()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    return-void
.end method
