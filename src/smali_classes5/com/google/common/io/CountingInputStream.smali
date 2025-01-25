.class public final Lcom/google/common/io/CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "CountingInputStream.java"


# instance fields
.field private count:J

.field private mark:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/google/common/io/CountingInputStream;->count:J

    return-wide v0
.end method

.method public mark(I)V
    .registers 4

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 80
    iget-wide v0, p0, Lcom/google/common/io/CountingInputStream;->count:J

    iput-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 82
    monitor-exit p0

    return-void

    .line 78
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 55
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 56
    iget-wide v2, p0, Lcom/google/common/io/CountingInputStream;->count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/io/CountingInputStream;->count:J

    .line 58
    :cond_10
    return v0
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 64
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 65
    iget-wide v2, p0, Lcom/google/common/io/CountingInputStream;->count:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/io/CountingInputStream;->count:J

    .line 67
    :cond_f
    return v0
.end method

.method public reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 89
    iget-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 93
    iget-object v0, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 94
    iget-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J

    iput-wide v0, p0, Lcom/google/common/io/CountingInputStream;->count:J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_24

    .line 95
    monitor-exit p0

    return-void

    .line 90
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    .line 85
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_27
    :try_start_27
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_24
.end method

.method public skip(J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 73
    iget-wide v2, p0, Lcom/google/common/io/CountingInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/io/CountingInputStream;->count:J

    .line 74
    return-wide v0
.end method
