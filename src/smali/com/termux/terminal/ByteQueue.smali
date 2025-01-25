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

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    .line 12
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    monitor-enter p0

    .line 16
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 18
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([BZ)I
    .registers 11

    monitor-enter p0

    .line 21
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-boolean v2, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_58

    if-eqz v2, :cond_14

    if-eqz p2, :cond_12

    .line 24
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10
    .catchall {:try_start_c .. :try_end_f} :catchall_58

    goto :goto_1

    .line 51
    :catch_10
    move-exception v0

    goto :goto_1

    .line 29
    :cond_12
    monitor-exit p0

    return v1

    .line 32
    :cond_14
    :try_start_14
    iget-boolean p2, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_58

    if-nez p2, :cond_1b

    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 35
    :cond_1b
    :try_start_1b
    iget-object p2, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    array-length p2, p2

    if-ne p2, v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 37
    :goto_23
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_26
    if-lez v2, :cond_51

    .line 39
    iget v5, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-lez v5, :cond_51

    .line 40
    iget v6, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    sub-int v6, p2, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 41
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 42
    iget-object v6, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    iget v7, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    invoke-static {v6, v7, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget v6, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    if-lt v6, p2, :cond_48

    .line 44
    iput v1, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    .line 45
    :cond_48
    iget v6, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    sub-int/2addr v2, v5

    add-int/2addr v4, v5

    add-int/2addr v3, v5

    goto :goto_26

    :cond_51
    if-eqz v0, :cond_56

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_56
    .catchall {:try_start_1b .. :try_end_56} :catchall_58

    .line 51
    :cond_56
    monitor-exit p0

    return v3

    :catchall_58
    move-exception p1

    monitor-exit p0

    goto :goto_5c

    :goto_5b
    throw p1

    :goto_5c
    goto :goto_5b
.end method

.method public write([BII)Z
    .registers 10

    .line 60
    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_61

    if-lez p3, :cond_59

    .line 66
    iget-object v0, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    array-length v0, v0

    .line 68
    monitor-enter p0

    :cond_b
    :goto_b
    const/4 v1, 0x1

    if-lez p3, :cond_55

    .line 70
    :goto_e
    :try_start_e
    iget v2, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    if-ne v0, v2, :cond_1c

    iget-boolean v3, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_53

    if-eqz v3, :cond_1c

    .line 72
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a
    .catchall {:try_start_16 .. :try_end_19} :catchall_53

    goto :goto_e

    .line 61
    :catch_1a
    move-exception v2

    goto :goto_e

    .line 77
    :cond_1c
    :try_start_1c
    iget-boolean v3, p0, Lcom/termux/terminal/ByteQueue;->mOpen:Z

    const/4 v4, 0x0

    if-nez v3, :cond_23

    monitor-exit p0

    return v4

    :cond_23
    if-nez v2, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 79
    :goto_27
    sub-int v2, v0, v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p3, v2

    :goto_2e
    if-lez v2, :cond_4d

    .line 83
    iget v3, p0, Lcom/termux/terminal/ByteQueue;->mHead:I

    iget v4, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    add-int/2addr v4, v3

    if-lt v4, v0, :cond_3a

    sub-int/2addr v4, v0

    sub-int/2addr v3, v4

    goto :goto_3c

    :cond_3a
    sub-int v3, v0, v4

    .line 97
    :goto_3c
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 98
    iget-object v5, p0, Lcom/termux/terminal/ByteQueue;->mBuffer:[B

    invoke-static {p1, p2, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v3

    sub-int/2addr v2, v3

    .line 101
    iget v4, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/termux/terminal/ByteQueue;->mStoredBytes:I

    goto :goto_2e

    :cond_4d
    if-eqz v1, :cond_b

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_b

    :catchall_53
    move-exception p1

    goto :goto_57

    .line 105
    :cond_55
    monitor-exit p0

    return v1

    :goto_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_1c .. :try_end_58} :catchall_53

    throw p1

    .line 63
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length + offset > buffer.length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6a

    :goto_69
    throw p1

    :goto_6a
    goto :goto_69
.end method
