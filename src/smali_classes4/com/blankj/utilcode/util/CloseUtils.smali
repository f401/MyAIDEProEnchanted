.class public final Lcom/blankj/utilcode/util/CloseUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs closeIO([Ljava/io/Closeable;)V
    .registers 4

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    array-length v1, p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_2

    aget-object v2, p0, v0

    if-eqz v2, :cond_e

    :try_start_b
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_11

    :cond_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_11
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e
.end method

.method public static varargs closeIOQuietly([Ljava/io/Closeable;)V
    .registers 4

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    array-length v1, p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_2

    aget-object v2, p0, v0

    if-eqz v2, :cond_e

    :try_start_b
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_11

    :cond_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_11
    move-exception v2

    goto :goto_e
.end method
