.class public Lorg/xutils/http/body/InputStreamBody;
.super Ljava/lang/Object;
.source "InputStreamBody.java"

# interfaces
.implements Lorg/xutils/http/body/ProgressBody;


# instance fields
.field private callBackHandler:Lorg/xutils/http/ProgressHandler;

.field private content:Ljava/io/InputStream;

.field private contentType:Ljava/lang/String;

.field private current:J

.field private final total:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    .line 36
    iput-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->content:Ljava/io/InputStream;

    .line 37
    iput-object p2, p0, Lorg/xutils/http/body/InputStreamBody;->contentType:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lorg/xutils/http/body/InputStreamBody;->getInputStreamLength(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    .line 39
    return-void
.end method

.method public static getInputStreamLength(Ljava/io/InputStream;)J
    .registers 3

    .line 89
    :try_start_0
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 96
    :goto_0
    return-wide v0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/octet-stream"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->contentType:Ljava/lang/String;

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->contentType:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    .line 44
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    .line 63
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    iget-wide v4, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 69
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->content:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 71
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 72
    iget-wide v2, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    int-to-long v4, v1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    .line 73
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "upload stopped!"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->content:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    throw v0

    .line 64
    :cond_2
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "upload stopped!"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 79
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_4

    .line 80
    iget-wide v2, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    iget-wide v4, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_4
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->content:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    return-void
.end method
