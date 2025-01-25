.class public Lcom/android/apksig/internal/util/FileChannelDataSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/util/DataSource;


# static fields
.field private static final MAX_READ_CHUNK_SIZE:I = 0x100000


# instance fields
.field private final mChannel:Ljava/nio/channels/FileChannel;

.field private final mOffset:J

.field private final mSize:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mOffset:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mSize:J

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .registers 10

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, p2, v2

    if-ltz v0, :cond_2b

    cmp-long v0, p4, v2

    if-ltz v0, :cond_14

    iput-object p1, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    iput-wide p2, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mOffset:J

    iput-wide p4, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mSize:J

    return-void

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static checkChunkValid(JJJ)V
    .registers 10

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-ltz v0, :cond_a4

    cmp-long v0, p2, v2

    if-ltz v0, :cond_8d

    cmp-long v0, p0, p4

    if-gtz v0, :cond_69

    add-long v0, p0, p2

    cmp-long v2, v0, p0

    if-ltz v2, :cond_45

    cmp-long v0, v0, p4

    if-gtz v0, :cond_19

    return-void

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") + size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") > source size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") + size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") overflow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") > source size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public copyTo(JILjava/nio/ByteBuffer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/apksig/internal/util/FileChannelDataSource;->size()J

    move-result-wide v4

    int-to-long v2, p3

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/util/FileChannelDataSource;->checkChunkValid(JJJ)V

    if-nez p3, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_42

    iget-wide v0, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mOffset:J

    add-long/2addr v0, p1

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    :try_start_19
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p4, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_21
    if-lez p3, :cond_3e

    iget-object v3, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_39

    :try_start_26
    iget-object v4, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    monitor-exit v3

    int-to-long v6, v4

    add-long/2addr v0, v6

    sub-int/2addr p3, v4

    goto :goto_21

    :catchall_36
    move-exception v0

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_36

    :try_start_38
    throw v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    invoke-virtual {p4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    :cond_3e
    invoke-virtual {p4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_b

    :cond_42
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public feed(JJLcom/android/apksig/util/DataSink;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    invoke-virtual {p0}, Lcom/android/apksig/internal/util/FileChannelDataSource;->size()J

    move-result-wide v6

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lcom/android/apksig/internal/util/FileChannelDataSource;->checkChunkValid(JJJ)V

    cmp-long v2, p3, v10

    if-nez v2, :cond_11

    :cond_10
    return-void

    :cond_11
    iget-wide v2, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mOffset:J

    const-wide/32 v4, 0x100000

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    :goto_21
    add-long v4, v2, p1

    cmp-long v2, p3, v10

    if-lez v2, :cond_10

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v7, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    monitor-enter v7

    :try_start_39
    iget-object v2, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move v2, v3

    :goto_3f
    if-lez v2, :cond_56

    iget-object v8, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v8, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    if-ltz v8, :cond_4b

    sub-int/2addr v2, v8

    goto :goto_3f

    :cond_4b
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected EOF encountered"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_53
    move-exception v2

    monitor-exit v7
    :try_end_55
    .catchall {:try_start_39 .. :try_end_55} :catchall_53

    throw v2

    :cond_56
    :try_start_56
    monitor-exit v7
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_53

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    int-to-long p1, v3

    sub-long p3, p3, p1

    move-wide v2, v4

    goto :goto_21
.end method

.method public getByteBuffer(JI)Ljava/nio/ByteBuffer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_d

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/apksig/internal/util/FileChannelDataSource;->copyTo(JILjava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public size()J
    .registers 5

    iget-wide v0, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mSize:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    :try_start_8
    iget-object v0, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-wide v0

    :cond_e
    :goto_e
    return-wide v0

    :catch_f
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public slice(JJ)Lcom/android/apksig/internal/util/FileChannelDataSource;
    .registers 12

    invoke-virtual {p0}, Lcom/android/apksig/internal/util/FileChannelDataSource;->size()J

    move-result-wide v4

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/util/FileChannelDataSource;->checkChunkValid(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_14

    cmp-long v0, p3, v4

    if-nez v0, :cond_14

    :goto_13
    return-object p0

    :cond_14
    new-instance v0, Lcom/android/apksig/internal/util/FileChannelDataSource;

    iget-object v1, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mChannel:Ljava/nio/channels/FileChannel;

    iget-wide v2, p0, Lcom/android/apksig/internal/util/FileChannelDataSource;->mOffset:J

    add-long/2addr v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/apksig/internal/util/FileChannelDataSource;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    move-object p0, v0

    goto :goto_13
.end method

.method public bridge synthetic slice(JJ)Lcom/android/apksig/util/DataSource;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/util/FileChannelDataSource;->slice(JJ)Lcom/android/apksig/internal/util/FileChannelDataSource;

    move-result-object v0

    return-object v0
.end method
