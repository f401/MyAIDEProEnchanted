.class public Lorg/xutils/http/request/HttpRequest;
.super Lorg/xutils/http/request/UriRequest;
.source "HttpRequest.java"


# static fields
.field private static final COOKIE_MANAGER:Ljava/net/CookieManager;


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private connection:Ljava/net/HttpURLConnection;

.field private inputStream:Ljava/io/InputStream;

.field private isLoading:Z

.field private responseCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 57
    new-instance v0, Ljava/net/CookieManager;

    sget-object v1, Lorg/xutils/http/cookie/DbCookieStore;->INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    sput-object v0, Lorg/xutils/http/request/HttpRequest;->COOKIE_MANAGER:Ljava/net/CookieManager;

    return-void
.end method

.method public constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/request/UriRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    .line 50
    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 52
    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    .line 53
    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 54
    iput v1, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    .line 62
    return-void
.end method

.method private static toGMTString(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    .line 472
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 474
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 476
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected buildQueryUrl(Lorg/xutils/http/RequestParams;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 70
    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 77
    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Lorg/xutils/common/util/KeyValue;->getValueStrOrNull()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\+"

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\+"

    const-string v4, "%20"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 71
    :cond_2
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x26

    if-ne v0, v2, :cond_4

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 92
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x3f

    if-ne v0, v2, :cond_5

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 95
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clearCacheHeader()V
    .registers 4

    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1, v2}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, v2}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 344
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    .line 347
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 351
    :cond_1
    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 2

    .line 282
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .registers 5

    .line 355
    const-wide/16 v0, -0x1

    .line 356
    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    .line 358
    :try_start_0
    const-string v3, "content-length"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    if-eqz v2, :cond_0

    .line 360
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 366
    :cond_0
    :goto_0
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 368
    :try_start_1
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    int-to-long v0, v0

    .line 372
    :cond_1
    :goto_1
    return-wide v0

    .line 362
    :catchall_0
    move-exception v2

    .line 363
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 369
    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public getETag()Ljava/lang/String;
    .registers 3

    .line 449
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 450
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpiration()J
    .registers 9

    const-wide/16 v0, -0x1

    const-wide/16 v6, 0x0

    .line 399
    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v2, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-wide v0

    .line 404
    :cond_1
    const-string v3, "Cache-Control"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 406
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 408
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 409
    const-string v4, "max-age"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 410
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 411
    if-lez v3, :cond_3

    .line 413
    add-int/lit8 v3, v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 415
    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 428
    :cond_3
    :goto_1
    cmp-long v2, v0, v6

    if-gtz v2, :cond_4

    .line 429
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    .line 432
    :cond_4
    cmp-long v2, v0, v6

    if-gtz v2, :cond_5

    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v2}, Lorg/xutils/http/RequestParams;->getCacheMaxAge()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v2}, Lorg/xutils/http/RequestParams;->getCacheMaxAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 436
    :cond_5
    cmp-long v2, v0, v6

    if-gtz v2, :cond_0

    .line 437
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v2

    .line 419
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6

    .line 467
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 468
    :goto_0
    return-wide p2

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 335
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 336
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    return-object v0

    .line 336
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastModified()J
    .registers 5

    .line 444
    const-string v0, "Last-Modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/xutils/http/request/HttpRequest;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestUri()Ljava/lang/String;
    .registers 3

    .line 100
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->queryUrl:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    return-object v0
.end method

.method public getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 378
    iget v0, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    .line 383
    :goto_0
    return v0

    .line 380
    :cond_0
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 381
    const/16 v0, 0xc8

    goto :goto_0

    .line 383
    :cond_1
    const/16 v0, 0x194

    goto :goto_0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 455
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 456
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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

    .line 461
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .registers 2

    .line 277
    iget-boolean v0, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    return v0
.end method

.method public loadResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 296
    invoke-super {p0}, Lorg/xutils/http/request/UriRequest;->loadResult()Ljava/lang/Object;

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

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 305
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    .line 306
    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCacheSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/xutils/cache/LruDiskCache;->setMaxSize(J)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_2

    .line 310
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/http/HttpMethod;->permitsCache(Lorg/xutils/http/HttpMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getLastModify()Ljava/util/Date;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 313
    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v3, "If-Modified-Since"

    invoke-static {v1}, Lorg/xutils/http/request/HttpRequest;->toGMTString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getEtag()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v3, "If-None-Match"

    invoke-virtual {v2, v3, v1}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_1
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v1, v0}, Lorg/xutils/http/loader/Loader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendRequest()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/high16 v11, 0x40000

    const/16 v10, 0x13

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 116
    iput-boolean v3, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 117
    iput v3, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    .line 119
    new-instance v4, Ljava/net/URL;

    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->queryUrl:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_5

    .line 123
    invoke-virtual {v4, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 129
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v10, :cond_0

    .line 130
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v5, "close"

    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 134
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getConnectTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 135
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 136
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_1

    .line 139
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_2

    .line 144
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 149
    :cond_2
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->isUseCookie()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    :try_start_0
    sget-object v0, Lorg/xutils/http/request/HttpRequest;->COOKIE_MANAGER:Ljava/net/CookieManager;

    .line 152
    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0, v1, v5}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 153
    const-string v1, "Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 154
    if-eqz v0, :cond_3

    .line 155
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-string v5, "Cookie"

    const-string v6, ";"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getHeaders()Ljava/util/List;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_8

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/BaseParams$Header;

    .line 166
    iget-object v5, v0, Lorg/xutils/http/BaseParams$Header;->key:Ljava/lang/String;

    .line 167
    invoke-virtual {v0}, Lorg/xutils/http/BaseParams$Header;->getValueStrOrNull()Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 169
    iget-boolean v0, v0, Lorg/xutils/http/BaseParams$Header;->setHeader:Z

    if-eqz v0, :cond_7

    .line 170
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 125
    :cond_5
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    goto/16 :goto_0

    :cond_6
    move v0, v3

    .line 135
    goto/16 :goto_1

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 172
    :cond_7
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 180
    :cond_8
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->responseParser:Lorg/xutils/http/app/ResponseParser;

    if-eqz v0, :cond_9

    .line 181
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->responseParser:Lorg/xutils/http/app/ResponseParser;

    invoke-interface {v0, p0}, Lorg/xutils/http/app/ResponseParser;->beforeRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 183
    :cond_9
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    if-eqz v0, :cond_a

    .line 184
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    invoke-interface {v0, p0}, Lorg/xutils/http/app/RequestInterceptListener;->beforeRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 188
    :cond_a
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v1

    .line 190
    :try_start_1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Lorg/xutils/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    :goto_4
    invoke-static {v1}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 201
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getRequestBody()Lorg/xutils/http/body/RequestBody;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_d

    .line 203
    instance-of v0, v1, Lorg/xutils/http/body/ProgressBody;

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 204
    check-cast v0, Lorg/xutils/http/body/ProgressBody;

    iget-object v5, p0, Lorg/xutils/http/request/HttpRequest;->progressHandler:Lorg/xutils/http/ProgressHandler;

    invoke-interface {v0, v5}, Lorg/xutils/http/body/ProgressBody;->setProgressHandler(Lorg/xutils/http/ProgressHandler;)V

    .line 206
    :cond_b
    invoke-interface {v1}, Lorg/xutils/http/body/RequestBody;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 208
    iget-object v5, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Type"

    invoke-virtual {v5, v6, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_c
    invoke-interface {v1}, Lorg/xutils/http/body/RequestBody;->getContentLength()J

    move-result-wide v6

    .line 212
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_11

    .line 213
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    move v3, v2

    .line 226
    :goto_5
    if-eqz v3, :cond_14

    .line 227
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-string v3, "Transfer-Encoding"

    const-string v5, "chunked"

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_6
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 233
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/xutils/http/body/RequestBody;->writeTo(Ljava/io/OutputStream;)V

    .line 238
    :cond_d
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->isUseCookie()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 240
    :try_start_2
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_e

    .line 242
    sget-object v1, Lorg/xutils/http/request/HttpRequest;->COOKIE_MANAGER:Ljava/net/CookieManager;

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 250
    :cond_e
    :goto_7
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    .line 252
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->responseParser:Lorg/xutils/http/app/ResponseParser;

    if-eqz v0, :cond_f

    .line 253
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->responseParser:Lorg/xutils/http/app/ResponseParser;

    invoke-interface {v0, p0}, Lorg/xutils/http/app/ResponseParser;->afterRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 255
    :cond_f
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    if-eqz v0, :cond_10

    .line 256
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    invoke-interface {v0, p0}, Lorg/xutils/http/app/RequestInterceptListener;->afterRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 259
    :cond_10
    iget v0, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_16

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_16

    .line 261
    const/16 v1, 0x12c

    if-ge v0, v1, :cond_15

    .line 272
    iput-boolean v2, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 273
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 193
    :try_start_3
    const-class v5, Ljava/net/HttpURLConnection;

    const-string v6, "method"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 194
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 195
    iget-object v6, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Lorg/xutils/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4

    .line 196
    :catchall_1
    move-exception v1

    .line 197
    throw v0

    .line 216
    :cond_11
    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v6, v8

    if-gez v0, :cond_12

    .line 217
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    long-to-int v5, v6

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto/16 :goto_5

    .line 218
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_13

    .line 219
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto/16 :goto_5

    .line 221
    :cond_13
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    move v3, v2

    .line 222
    goto/16 :goto_5

    .line 229
    :cond_14
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Length"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 244
    :catchall_2
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 262
    :cond_15
    new-instance v1, Lorg/xutils/ex/HttpException;

    iget v0, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/xutils/ex/HttpException;-><init>(ILjava/lang/String;)V

    .line 264
    :try_start_4
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v2}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xutils/ex/HttpException;->setResult(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 268
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/xutils/ex/HttpException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->queryUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 269
    throw v1

    .line 265
    :catchall_3
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 260
    :cond_16
    new-instance v0, Lorg/xutils/ex/HttpException;

    iget v1, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xutils/ex/HttpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
