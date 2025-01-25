.class public Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/util/OkHttpRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GzipRequestInterceptor"
.end annotation


# instance fields
.field final this$0:Lcom/baidu/mobstat/util/OkHttpRequestManager;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/util/OkHttpRequestManager;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;->this$0:Lcom/baidu/mobstat/util/OkHttpRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private forceContentLength(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 180
    invoke-virtual {p1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 182
    new-instance v1, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$1;-><init>(Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;Lokhttp3/RequestBody;Lokio/Buffer;)V

    return-object v1
.end method

.method private gzip(Lokhttp3/RequestBody;Ljava/lang/String;)Lokhttp3/RequestBody;
    .registers 4

    .line 201
    new-instance v0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$2;-><init>(Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;Lokhttp3/RequestBody;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    const-string v2, "gzip"

    const-string v3, "Content-Encoding"

    if-nez v1, :cond_1f

    .line 158
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 161
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 164
    :cond_1f
    invoke-virtual {v0, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 165
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 169
    :cond_2a
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 171
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    .line 173
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-direct {p0, v3, v0}, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;->gzip(Lokhttp3/RequestBody;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;->forceContentLength(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 171
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 175
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
