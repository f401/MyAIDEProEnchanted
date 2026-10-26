.class public final Lcom/baidu/mobstat/bu;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [C

    new-instance v3, Ljava/io/CharArrayWriter;

    invoke-direct {v3}, Ljava/io/CharArrayWriter;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/CharArrayWriter;->write([CII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_2
    return-object v2

    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
