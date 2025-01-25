.class public final Lcom/baidu/mobstat/bu;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_2e
    .catchall {:try_start_1 .. :try_end_6} :catchall_2c

    const/16 p0, 0x2000

    :try_start_8
    new-array p0, p0, [C

    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    :goto_f
    invoke-virtual {v1, p0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    if-lez v3, :cond_1a

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v3}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_f

    :cond_1a
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_2a
    .catchall {:try_start_8 .. :try_end_1e} :catchall_27

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    :goto_26
    return-object p0

    :catchall_27
    move-exception p0

    move-object v0, v1

    goto :goto_3e

    :catch_2a
    move-exception p0

    goto :goto_30

    :catchall_2c
    move-exception p0

    goto :goto_3e

    :catch_2e
    move-exception p0

    move-object v1, v0

    :goto_30
    :try_start_30
    invoke-static {p0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_27

    if-eqz v1, :cond_3d

    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    invoke-static {p0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    return-object v0

    :goto_3e
    if-eqz v0, :cond_48

    :try_start_40
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    goto :goto_4a

    :goto_49
    throw p0

    :goto_4a
    goto :goto_49
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_a

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    invoke-static {p0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    :cond_a
    :goto_a
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 1

    return-void
.end method
