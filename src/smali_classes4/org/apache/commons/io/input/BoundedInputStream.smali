.class public Lorg/apache/commons/io/input/BoundedInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private final in:Ljava/io/InputStream;

.field private mark:J

.field private final max:J

.field private pos:J

.field private propagateClose:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    iput-wide p2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    iput-object p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_11
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_9
    return-void
.end method

.method public isPropagateClose()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    return v0
.end method

.method public mark(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    const/4 v0, -0x1

    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    goto :goto_11
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v0, -0x1

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_12

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_33

    int-to-long v2, p3

    iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    iget-wide v6, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_22
    iget-object v1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    long-to-int v2, v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-eq v1, v0, :cond_11

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    move v0, v1

    goto :goto_11

    :cond_33
    int-to-long v2, p3

    goto :goto_22
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
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPropagateClose(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    return-void
.end method

.method public skip(J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
