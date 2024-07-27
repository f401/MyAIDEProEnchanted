.class public Labcd/BK;
.super Ljava/lang/Object;


# direct methods
.method public static final DW(Ljava/io/File;I)[B
    .registers 8

    const/4 v1, 0x0

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-array v0, p1, [B

    move v2, v1

    :goto_0
    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-virtual {v3, v0, v2, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_1

    array-length v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v1, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    new-array v1, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    move-object v0, v1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public static j6(Ljava/io/InputStream;[BI)I
    .registers 6

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    array-length v2, p1

    if-lt v0, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/2addr p2, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static j6(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .registers 6

    const/4 v1, 0x0

    new-array v2, p1, [B

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_0

    invoke-static {v2, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Labcd/RK$c;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Labcd/RK$c;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, v3}, Labcd/RK;->write(I)V

    invoke-virtual {v0, p0}, Labcd/RK;->j6(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Labcd/RK;->Zo()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_1
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_2

    invoke-static {v2, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    goto :goto_0
.end method

.method public static j6(Ljava/io/InputStream;J)V
    .registers 10

    const-wide/16 v4, 0x0

    :goto_0
    cmp-long v0, p1, v4

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->shortSkipOfBlock:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Ljava/io/InputStream;[BII)V
    .registers 6

    :goto_0
    if-gtz p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_1

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->shortReadOfBlock:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final j6(Ljava/io/File;)[B
    .registers 2

    const v0, 0x7fffffff

    invoke-static {p0, v0}, Labcd/BK;->j6(Ljava/io/File;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static final j6(Ljava/io/File;I)[B
    .registers 10

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    int-to-long v0, p1

    cmp-long v0, v4, v0

    if-gtz v0, :cond_1

    long-to-int v0, v4

    new-array v1, v0, [B

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BI)I

    move-result v3

    int-to-long v6, v3

    cmp-long v0, v6, v4

    if-nez v0, :cond_0

    new-array v0, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->fileIsTooLarge:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method
