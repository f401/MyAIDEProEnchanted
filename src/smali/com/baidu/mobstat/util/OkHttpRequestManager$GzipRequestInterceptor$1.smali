.class Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$1;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;->forceContentLength(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;

.field final val$buffer:Lokio/Buffer;

.field final val$requestBody:Lokhttp3/RequestBody;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;Lokhttp3/RequestBody;Lokio/Buffer;)V
    .registers 4

    .line 182
    iput-object p1, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$1;->this$1:Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;

    iput-object p2, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$1;->val$requestBody:Lokhttp3/RequestBody;

    iput-object p3, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$1;->val$buffer:Lokio/Buffer;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$1;->val$buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$1;->val$requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$1;->val$buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    return-void
.end method
