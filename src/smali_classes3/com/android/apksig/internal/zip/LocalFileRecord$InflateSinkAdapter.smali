.class Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/util/DataSink;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/zip/LocalFileRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateSinkAdapter"
.end annotation


# instance fields
.field private mClosed:Z

.field private final mDelegate:Lcom/android/apksig/util/DataSink;

.field private mInflater:Ljava/util/zip/Inflater;

.field private mInputBuffer:[B

.field private mOutputBuffer:[B

.field private mOutputByteCount:J


# direct methods
.method private constructor <init>(Lcom/android/apksig/util/DataSink;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mInflater:Ljava/util/zip/Inflater;

    iput-object p1, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mDelegate:Lcom/android/apksig/util/DataSink;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/apksig/util/DataSink;Lcom/android/apksig/internal/zip/LocalFileRecord$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;-><init>(Lcom/android/apksig/util/DataSink;)V

    return-void
.end method

.method private checkNotClosed()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mClosed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mClosed:Z

    iput-object v1, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mInputBuffer:[B

    iput-object v1, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mOutputBuffer:[B

    iget-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mInflater:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    iput-object v1, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mInflater:Ljava/util/zip/Inflater;

    :cond_0
    return-void
.end method

.method public consume(Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->checkNotClosed()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->consume([BII)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mInputBuffer:[B

    if-nez v0, :cond_2

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mInputBuffer:[B

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mInputBuffer:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mInputBuffer:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mInputBuffer:[B

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->consume([BII)V

    goto :goto_0
.end method

.method public consume([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->checkNotClosed()V

    iget-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mInflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    iget-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mOutputBuffer:[B

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mOutputBuffer:[B

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mInflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mInflater:Ljava/util/zip/Inflater;

    iget-object v1, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mOutputBuffer:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mDelegate:Lcom/android/apksig/util/DataSink;

    iget-object v2, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mOutputBuffer:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    iget-wide v2, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mOutputByteCount:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mOutputByteCount:J

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to inflate data"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutputByteCount()J
    .registers 3

    iget-wide v0, p0, Lcom/android/apksig/internal/zip/LocalFileRecord$InflateSinkAdapter;->mOutputByteCount:J

    return-wide v0
.end method
