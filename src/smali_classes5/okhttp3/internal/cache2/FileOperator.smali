.class final Lokhttp3/internal/cache2/FileOperator;
.super Ljava/lang/Object;


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method public read(JLokio/Buffer;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    cmp-long v0, p4, v8

    if-ltz v0, :cond_16

    move-wide v4, p4

    move-wide v2, p1

    :goto_8
    cmp-long v0, v4, v8

    if-lez v0, :cond_1c

    iget-object v1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    add-long/2addr v2, v0

    sub-long/2addr v4, v0

    goto :goto_8

    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1c
    return-void
.end method

.method public write(JLokio/Buffer;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    cmp-long v0, p4, v6

    if-ltz v0, :cond_1e

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_1e

    move-wide v2, p1

    move-wide v4, p4

    :goto_10
    cmp-long v0, v4, v6

    if-lez v0, :cond_24

    iget-object v0, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    sub-long/2addr v4, v0

    goto :goto_10

    :cond_1e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_24
    return-void
.end method
