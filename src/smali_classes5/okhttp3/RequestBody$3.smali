.class Lokhttp3/RequestBody$3;
.super Lokhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$contentType:Lokhttp3/MediaType;

.field final val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lokhttp3/RequestBody$3;->val$contentType:Lokhttp3/MediaType;

    iput-object p2, p0, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    iget-object v0, p0, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/RequestBody$3;->val$contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    :try_start_6
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lokio/Source;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception v1

    :try_start_10
    throw v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v2

    if-eqz v0, :cond_17

    :try_start_14
    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    :cond_17
    :goto_17
    throw v2

    :catchall_18
    move-exception v0

    invoke-static {v1, v0}, Lokhttp3/Cache$2$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_17
.end method
