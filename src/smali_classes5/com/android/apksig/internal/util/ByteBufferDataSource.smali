.class public Lcom/android/apksig/internal/util/ByteBufferDataSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/util/DataSource;


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mSize:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/apksig/internal/util/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    return-void

    :cond_12
    move-object v0, p1

    goto :goto_9
.end method

.method private checkChunkValid(JJ)V
    .registers 10

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_ab

    cmp-long v0, p3, v2

    if-ltz v0, :cond_94

    iget v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_6e

    add-long v2, p1, p3

    cmp-long v4, v2, p1

    if-ltz v4, :cond_4a

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1c

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") + size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") > source size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") + size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") overflow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") > source size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public copyTo(JILjava/nio/ByteBuffer;)V
    .registers 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/apksig/internal/util/ByteBufferDataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public feed(JJLcom/android/apksig/util/DataSink;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_16

    iget v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_16

    long-to-int v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/apksig/internal/util/ByteBufferDataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", source size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getByteBuffer(JI)Ljava/nio/ByteBuffer;
    .registers 9

    int-to-long v0, p3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/apksig/internal/util/ByteBufferDataSource;->checkChunkValid(JJ)V

    long-to-int v0, p1

    iget-object v1, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mBuffer:Ljava/nio/ByteBuffer;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mBuffer:Ljava/nio/ByteBuffer;

    add-int v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public size()J
    .registers 3

    iget v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public slice(JJ)Lcom/android/apksig/internal/util/ByteBufferDataSource;
    .registers 10

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_e

    :goto_d
    return-object p0

    :cond_e
    cmp-long v0, p3, v2

    if-ltz v0, :cond_26

    iget v0, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_26

    new-instance v0, Lcom/android/apksig/internal/util/ByteBufferDataSource;

    long-to-int v1, p3

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/apksig/internal/util/ByteBufferDataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/apksig/internal/util/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;Z)V

    move-object p0, v0

    goto :goto_d

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", source size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/apksig/internal/util/ByteBufferDataSource;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic slice(JJ)Lcom/android/apksig/util/DataSource;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/util/ByteBufferDataSource;->slice(JJ)Lcom/android/apksig/internal/util/ByteBufferDataSource;

    move-result-object v0

    return-object v0
.end method
