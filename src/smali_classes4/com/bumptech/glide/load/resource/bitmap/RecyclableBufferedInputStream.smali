.class public Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BufferedIs"


# instance fields
.field private volatile buf:[B

.field private count:I

.field private marklimit:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-eqz p2, :cond_b

    array-length v0, p2

    if-nez v0, :cond_13

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    return-void
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-eq v0, v2, :cond_f

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    if-lt v0, v1, :cond_1c

    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_1b

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-nez v0, :cond_79

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    array-length v1, p2

    if-le v0, v1, :cond_79

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    array-length v1, p2

    if-ne v0, v1, :cond_79

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    if-le v0, v1, :cond_33

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    :cond_33
    const-string v1, "BufferedIs"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "BufferedIs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocate buffer of length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    new-array v0, v0, [B

    array-length v1, p2

    invoke-static {p2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object p2, v0

    :cond_5d
    :goto_5d
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    array-length v1, p2

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_87

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    :goto_76
    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    goto :goto_1b

    :cond_79
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-lez v0, :cond_5d

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    array-length v1, p2

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v1, v2

    invoke-static {p2, v0, p2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5d

    :cond_87
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v1, v0

    goto :goto_76
.end method

.method private static streamClosed()Ljava/io/IOException;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v1, :cond_9

    if-nez v0, :cond_11

    :cond_9
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    :try_start_11
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_e

    move-result v0

    monitor-exit p0

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_c
    return-void
.end method

.method public fixMarkLimit()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    array-length v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mark(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_a

    if-nez v2, :cond_12

    :cond_a
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    :try_start_12
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-lt v3, v4, :cond_20

    invoke-direct {p0, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_f

    move-result v2

    if-ne v2, v0, :cond_20

    :cond_1e
    :goto_1e
    monitor-exit p0

    return v0

    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v1, v2, :cond_2d

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-nez v1, :cond_2d

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2d
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_1e

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_f

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_1e
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-nez v2, :cond_e

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    if-nez p3, :cond_13

    const/4 p3, 0x0

    :cond_11
    :goto_11
    monitor-exit p0

    return p3

    :cond_13
    :try_start_13
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    if-nez v4, :cond_1c

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1c
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-ge v0, v3, :cond_59

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v0, v3

    if-lt v0, p3, :cond_3e

    move v0, p3

    :goto_2a
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    if-eq v0, p3, :cond_3c

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_44

    :cond_3c
    move p3, v0

    goto :goto_11

    :cond_3e
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v0, v3

    goto :goto_2a

    :cond_44
    add-int/2addr p2, v0

    sub-int v3, p3, v0

    move-object v0, v2

    :goto_48
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-ne v2, v1, :cond_5e

    array-length v2, v0

    if-lt v3, v2, :cond_5e

    invoke-virtual {v4, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_89

    if-ne v3, p3, :cond_5c

    move p3, v1

    goto :goto_11

    :cond_59
    move-object v0, v2

    move v3, p3

    goto :goto_48

    :cond_5c
    sub-int/2addr p3, v3

    goto :goto_11

    :cond_5e
    invoke-direct {p0, v4, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v2

    if-ne v2, v1, :cond_6a

    if-ne v3, p3, :cond_68

    move p3, v1

    goto :goto_11

    :cond_68
    sub-int/2addr p3, v3

    goto :goto_11

    :cond_6a
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eq v0, v2, :cond_77

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-nez v0, :cond_77

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_77
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v2, v5

    if-lt v2, v3, :cond_95

    move v2, v3

    :goto_7f
    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    invoke-static {v0, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    :cond_89
    sub-int/2addr v3, v2

    if-eqz v3, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    if-nez v5, :cond_9b

    sub-int/2addr p3, v3

    goto/16 :goto_11

    :cond_95
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_99
    .catchall {:try_start_13 .. :try_end_99} :catchall_b

    sub-int/2addr v2, v5

    goto :goto_7f

    :cond_9b
    add-int/2addr p2, v2

    goto :goto_48
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
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    const/4 v0, -0x1

    :try_start_11
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-ne v0, v1, :cond_1d

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;

    const-string v1, "Mark has been invalidated"

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, -0x1

    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_10

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_1a

    const-wide/16 p1, 0x0

    :goto_18
    monitor-exit p0

    return-wide p1

    :cond_1a
    if-nez v3, :cond_21

    :try_start_1c
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_21
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_33

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    goto :goto_18

    :cond_33
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-eq v4, v6, :cond_74

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-gtz v4, :cond_74

    invoke-direct {p0, v3, v2}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v2

    if-ne v2, v6, :cond_50

    move-wide p1, v0

    goto :goto_18

    :cond_50
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v4, p1, v0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_66

    sub-long v0, p1, v0

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    goto :goto_18

    :cond_66
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    int-to-long v2, v2

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v4, v4

    iget v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iput v6, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-long/2addr v0, v2

    sub-long p1, v0, v4

    goto :goto_18

    :cond_74
    sub-long v4, p1, v0

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_79
    .catchall {:try_start_1c .. :try_end_79} :catchall_d

    move-result-wide v2

    add-long p1, v0, v2

    goto :goto_18
.end method
