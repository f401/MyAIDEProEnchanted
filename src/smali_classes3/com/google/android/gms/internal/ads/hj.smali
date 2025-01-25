.class public final Lcom/google/android/gms/internal/ads/hj;
.super Ljava/io/ByteArrayOutputStream;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Zd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Zd;I)V
    .registers 4

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hj;->j6:Lcom/google/android/gms/internal/ads/Zd;

    const/16 v0, 0x100

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Zd;->j6(I)[B

    move-result-object p1

    iput-object p1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-void
.end method

.method private final j6(I)V
    .registers 5

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p1

    iget-object p1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length p1, p1

    if-gt v0, p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hj;->j6:Lcom/google/android/gms/internal/ads/Zd;

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Zd;->j6(I)[B

    move-result-object p1

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hj;->j6:Lcom/google/android/gms/internal/ads/Zd;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Zd;->j6([B)V

    iput-object p1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-void
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

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/hj;->j6(I)V

    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final write([BII)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/hj;->j6(I)V

    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
