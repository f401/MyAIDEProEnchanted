.class public final Lcom/google/android/gms/common/util/k;
.super Ljava/lang/Object;


# direct methods
.method private static j6(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .registers 4

    const/16 v0, 0x400

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static j6(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J
    .registers 11

    new-array v0, p3, [B

    const-wide/16 v1, 0x0

    :goto_4
    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v3, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_12

    int-to-long v5, v4

    add-long/2addr v1, v5

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_1b

    goto :goto_4

    :cond_12
    if-eqz p2, :cond_1a

    invoke-static {p0}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    :cond_1a
    return-wide v1

    :catchall_1b
    move-exception p3

    if-eqz p2, :cond_24

    invoke-static {p0}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    :cond_24
    goto :goto_26

    :goto_25
    throw p3

    :goto_26
    goto :goto_25
.end method

.method public static j6(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_7

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    :cond_7
    :goto_7
    return-void
.end method

.method public static j6(Ljava/io/InputStream;Z)[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
