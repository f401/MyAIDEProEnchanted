.class public final Lcom/google/android/gms/internal/ads/hj;
.super Ljava/io/ByteArrayOutputStream;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Zd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Zd;I)V
    .registers 5

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hj;->j6:Lcom/google/android/gms/internal/ads/Zd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hj;->j6:Lcom/google/android/gms/internal/ads/Zd;

    const/16 v1, 0x100

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Zd;->j6(I)[B

    move-result-object v0

    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-void
.end method

.method private final j6(I)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int v1, v0, p1

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hj;->j6:Lcom/google/android/gms/internal/ads/Zd;

    add-int/2addr v0, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Zd;->j6(I)[B

    move-result-object v0

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hj;->j6:Lcom/google/android/gms/internal/ads/Zd;

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Zd;->j6([B)V

    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hj;->j6:Lcom/google/android/gms/internal/ads/Zd;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Zd;->j6([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method public final finalize()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hj;->j6:Lcom/google/android/gms/internal/ads/Zd;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Zd;->j6([B)V

    return-void
.end method

.method public final write(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/hj;->j6(I)V

    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final write([BII)V
    .registers 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/hj;->j6(I)V

    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
