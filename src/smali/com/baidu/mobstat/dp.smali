.class public final Lcom/baidu/mobstat/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_7

    .line 69
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception p0

    :cond_7
    :goto_7
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 46
    const/16 v1, 0xfd0

    new-array v1, v1, [B

    .line 49
    :goto_9
    :try_start_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    const/4 p0, 0x1

    return p0

    .line 54
    :cond_12
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_16

    goto :goto_9

    :catch_16
    move-exception p0

    :cond_17
    return v0
.end method
