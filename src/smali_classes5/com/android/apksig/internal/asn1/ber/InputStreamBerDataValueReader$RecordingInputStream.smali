.class Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingInputStream"
.end annotation


# instance fields
.field private final mBuf:Ljava/io/ByteArrayOutputStream;

.field private final mIn:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mIn:Ljava/io/InputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getReadByteCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public getReadBytes()[B
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public mark(I)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    iget-object v1, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_e
    return v0
.end method

.method public read([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_e

    iget-object v1, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_d

    iget-object v1, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_d
    return v0
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/16 v4, 0x1000

    const/4 v6, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_10

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    :cond_f
    :goto_f
    return-wide v0

    :cond_10
    new-array v2, v4, [B

    iget-object v3, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mIn:Ljava/io/InputStream;

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v2, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_25

    iget-object v4, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_25
    if-ltz v3, :cond_f

    int-to-long v0, v3

    goto :goto_f
.end method
