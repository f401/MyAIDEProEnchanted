.class public Lcom/android/apksig/internal/util/RandomAccessFileDataSink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/util/DataSink;


# instance fields
.field private final mFile:Ljava/io/RandomAccessFile;

.field private final mFileChannel:Ljava/nio/channels/FileChannel;

.field private mPosition:J


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;-><init>(Ljava/io/RandomAccessFile;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2d

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_16

    iput-object p1, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mFileChannel:Ljava/nio/channels/FileChannel;

    iput-wide p2, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mPosition:J

    return-void

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public consume(Ljava/nio/ByteBuffer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mFile:Ljava/io/RandomAccessFile;

    monitor-enter v1

    :try_start_a
    iget-object v2, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mFile:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mPosition:J

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_11

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_1d

    throw v0

    :cond_20
    :try_start_20
    iget-wide v2, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mPosition:J

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    goto :goto_6
.end method

.method public consume([BII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_42

    array-length v0, p1

    if-gt p2, v0, :cond_22

    if-nez p3, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mFile:Ljava/io/RandomAccessFile;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mFile:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v2, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mPosition:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mPosition:J

    monitor-exit v1

    goto :goto_7

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buf.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFile()Ljava/io/RandomAccessFile;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/util/RandomAccessFileDataSink;->mFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method
