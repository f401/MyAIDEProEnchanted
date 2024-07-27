.class public final Lcom/baidu/mobstat/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .registers 2

    .line 67
    if-eqz p0, :cond_0

    .line 69
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 6

    const/4 v0, 0x0

    .line 45
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 46
    const/16 v1, 0xfd0

    new-array v1, v1, [B

    .line 49
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 50
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 57
    const/4 v0, 0x1

    .line 63
    :cond_0
    :goto_1
    return v0

    .line 54
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    goto :goto_1
.end method
