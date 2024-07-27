.class final Lcom/termux/terminal/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field private final mBuffer:[B

.field private mHead:I

.field private mOpen:Z

.field private mStoredBytes:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    .line 12
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    .line 17
    invoke-virtual {p0}, Lcom/termux/terminal/ByteQueue;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([BZ)I
    .registers 11

    const/4 v0, 0x0

    monitor-enter p0

    .line 21
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    if-nez v1, :cond_2

    .line 32
    :cond_0
    iget-boolean v1, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    const/4 v0, -0x1

    .line 51
    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    .line 22
    :cond_2
    if-eqz p2, :cond_1

    .line 24
    :try_start_1
    invoke-virtual {p0}, Lcom/termux/terminal/ByteQueue;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 35
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    array-length v5, v1

    .line 36
    iget v1, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-eq v5, v1, :cond_6

    move v4, v0

    .line 37
    :goto_2
    array-length v2, p1

    move v3, v0

    move v1, v0

    .line 39
    :goto_3
    if-lez v2, :cond_4

    iget v0, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-gtz v0, :cond_7

    .line 50
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/termux/terminal/ByteQueue;->notify()V

    :cond_5
    move v0, v1

    .line 51
    goto :goto_1

    .line 36
    :cond_6
    const/4 v1, 0x1

    move v4, v1

    goto :goto_2

    .line 40
    :cond_7
    iget v0, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    sub-int v0, v5, v0

    iget v6, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 41
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 42
    iget-object v0, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    iget v7, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    invoke-static {v0, v7, p1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget v0, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    .line 44
    iget v0, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    if-lt v0, v5, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    .line 45
    :cond_8
    iget v0, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    sub-int v0, v2, v6

    .line 47
    add-int/2addr v1, v6

    add-int/2addr v3, v6

    move v2, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([BII)Z
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    add-int v2, p3, p2

    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length + offset > buffer.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    if-gtz p3, :cond_1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    array-length v7, v2

    .line 68
    monitor-enter p0

    move v3, p2

    .line 69
    :goto_0
    if-gtz p3, :cond_3

    monitor-exit p0

    .line 106
    :goto_1
    return v0

    .line 72
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/terminal/ByteQueue;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_3
    :goto_2
    :try_start_1
    iget v2, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-ne v7, v2, :cond_4

    iget-boolean v2, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    if-nez v2, :cond_2

    .line 77
    :cond_4
    iget-boolean v2, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    if-nez v2, :cond_5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :cond_5
    :try_start_2
    iget v2, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-eqz v2, :cond_7

    move v6, v1

    .line 79
    :goto_3
    iget v2, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    sub-int v2, v7, v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 80
    sub-int/2addr p3, v2

    move v4, v2

    move v5, v3

    .line 82
    :goto_4
    if-gtz v4, :cond_8

    .line 103
    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/termux/terminal/ByteQueue;->notify()V

    :cond_6
    move v3, v5

    goto :goto_0

    :cond_7
    move v6, v0

    .line 78
    goto :goto_3

    .line 83
    :cond_8
    iget v2, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    iget v3, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    add-int/2addr v3, v2

    .line 84
    if-lt v3, v7, :cond_9

    .line 92
    sub-int/2addr v3, v7

    .line 93
    iget v2, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    sub-int/2addr v2, v3

    .line 97
    :goto_5
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 98
    iget-object v2, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    invoke-static {p1, v5, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget v2, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    add-int/2addr v2, v8

    iput v2, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int v2, v4, v8

    add-int v3, v5, v8

    move v4, v2

    move v5, v3

    goto :goto_4

    .line 95
    :cond_9
    sub-int v2, v7, v3

    goto :goto_5

    .line 72
    :catch_0
    move-exception v2

    goto :goto_2
.end method
