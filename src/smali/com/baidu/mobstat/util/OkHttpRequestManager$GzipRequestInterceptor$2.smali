.class Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$2;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;->gzip(Lokhttp3/RequestBody;Ljava/lang/String;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;

.field final val$body:Lokhttp3/RequestBody;

.field final val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;Lokhttp3/RequestBody;Ljava/lang/String;)V
    .registers 4

    .line 201
    iput-object p1, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$2;->this$1:Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor;

    iput-object p2, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$2;->val$body:Lokhttp3/RequestBody;

    iput-object p3, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$2;->val$body:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    new-instance v0, Lokio/GzipSink;

    invoke-direct {v0, p1}, Lokio/GzipSink;-><init>(Lokio/Sink;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$2;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$2;->val$url:Ljava/lang/String;

    const-string v1, "bplus.gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 218
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_60

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 219
    new-array v1, v0, [B

    fill-array-data v1, :array_66

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 220
    new-array v1, v0, [B

    fill-array-data v1, :array_6c

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 221
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_72

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 222
    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_7a

    invoke-interface {p1, v2}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 223
    new-array v1, v1, [B

    fill-array-data v1, :array_80

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 224
    new-array v0, v0, [B

    fill-array-data v0, :array_86

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 226
    :cond_57
    iget-object v0, p0, Lcom/baidu/mobstat/util/OkHttpRequestManager$GzipRequestInterceptor$2;->val$body:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 227
    invoke-interface {p1}, Lokio/BufferedSink;->close()V

    return-void

    :array_60
    .array-data 1
        0x48t
        0x4dt
        0x30t
        0x31t
    .end array-data

    :array_66
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_6c
    .array-data 1
        0x0t
        0x0t
        0x3t
        -0xet
    .end array-data

    :array_72
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_7a
    .array-data 1
        0x0t
        0x2t
    .end array-data

    nop

    :array_80
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_86
    .array-data 1
        0x48t
        0x4dt
        0x30t
        0x31t
    .end array-data
.end method
