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
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    .line 12
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    monitor-enter p0

    .line 16
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([BZ)I
    .locals 8

    const/4 v0, 0x0

    monitor-enter p0

    .line 21
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-nez v1, :cond_1

    iget-boolean v2, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    .line 24
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0

    .line 29
    :cond_0
    monitor-exit p0

    .line 51
    :goto_1
    return v0

    .line 32
    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit p0

    const/4 v0, -0x1

    goto :goto_1

    .line 35
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    array-length v5, v2

    if-ne v5, v1, :cond_4

    const/4 v1, 0x1

    move v4, v1

    .line 37
    :goto_2
    array-length v2, p1

    move v3, v0

    move v1, v0

    :goto_3
    if-lez v2, :cond_5

    .line 39
    iget v0, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-lez v0, :cond_5

    .line 40
    iget v6, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    sub-int v6, v5, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

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

    if-lt v0, v5, :cond_3

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    .line 45
    :cond_3
    iget v0, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    sub-int v0, v2, v6

    add-int/2addr v3, v6

    add-int/2addr v1, v6

    move v2, v0

    goto :goto_3

    :cond_4
    move v4, v0

    .line 35
    goto :goto_2

    .line 45
    :cond_5
    if-eqz v4, :cond_6

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    :cond_6
    monitor-exit p0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([BII)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    add-int v2, p3, p2

    array-length v3, p1

    if-gt v2, v3, :cond_7

    if-lez p3, :cond_6

    .line 66
    iget-object v2, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    array-length v7, v2

    .line 68
    monitor-enter p0

    move v3, p2

    :goto_0
    if-lez p3, :cond_5

    .line 70
    :goto_1
    :try_start_0
    iget v2, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-ne v7, v2, :cond_0

    iget-boolean v4, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 72
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 61
    :catch_0
    move-exception v2

    goto :goto_1

    .line 77
    :cond_0
    :try_start_2
    iget-boolean v4, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    if-nez v4, :cond_1

    monitor-exit p0

    move v0, v1

    .line 105
    :goto_2
    return v0

    .line 77
    :cond_1
    if-nez v2, :cond_2

    move v6, v0

    .line 79
    :goto_3
    sub-int v2, v7, v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p3, v2

    move v4, v2

    move v5, v3

    :goto_4
    if-lez v4, :cond_4

    .line 83
    iget v2, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    iget v3, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    add-int/2addr v3, v2

    if-lt v3, v7, :cond_3

    sub-int/2addr v3, v7

    sub-int/2addr v2, v3

    .line 97
    :goto_5
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 98
    iget-object v2, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    invoke-static {p1, v5, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, v5, v8

    sub-int v2, v4, v8

    .line 101
    iget v4, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    add-int/2addr v4, v8

    iput v4, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    move v4, v2

    move v5, v3

    goto :goto_4

    :cond_2
    move v6, v1

    .line 77
    goto :goto_3

    .line 83
    :cond_3
    sub-int v2, v7, v3

    goto :goto_5

    .line 101
    :cond_4
    if-eqz v6, :cond_8

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    move v3, v5

    goto :goto_0

    .line 105
    :cond_5
    monitor-exit p0

    goto :goto_2

    .line 103
    :catchall_0
    move-exception v0

    .line 105
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 63
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length + offset > buffer.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v3, v5

    goto :goto_0
.end method
