.class public Labcd/BK;
.super Ljava/lang/Object;


# direct methods
.method public static final DW(Ljava/io/File;I)[B
    .registers 6

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    new-array p0, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    sub-int v3, p1, v2

    invoke-virtual {v0, p0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_26

    if-gtz v3, :cond_24

    if-ne v2, p1, :cond_19

    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    move-exception p1

    :goto_18
    return-object p0

    :cond_19
    :try_start_19
    new-array p1, v2, [B

    invoke-static {p0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_26

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception p0

    :goto_23
    return-object p1

    :cond_24
    add-int/2addr v2, v3

    goto :goto_9

    :catchall_26
    move-exception p0

    :try_start_27
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    move-exception p1

    :goto_2c
    goto :goto_2e

    :goto_2d
    throw p0

    :goto_2e
    goto :goto_2d
.end method

.method public static j6(Ljava/io/InputStream;[BI)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_10

    array-length v2, p1

    if-lt v0, v2, :cond_d

    goto :goto_10

    :cond_d
    add-int/2addr p2, v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_10
    :goto_10
    return v0
.end method

.method public static j6(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .registers 6

    new-array v0, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-lt v2, p1, :cond_2b

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    if-gez p1, :cond_11

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance v1, Labcd/RK$c;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Labcd/RK$c;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p1}, Labcd/RK;->write(I)V

    invoke-virtual {v1, p0}, Labcd/RK;->j6(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Labcd/RK;->Zo()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_2b
    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_38

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_38
    add-int/2addr v2, v3

    goto :goto_4
.end method

.method public static j6(Ljava/io/InputStream;J)V
    .registers 8

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_11

    sub-long/2addr p1, v2

    goto :goto_0

    :cond_11
    new-instance p0, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->shortSkipOfBlock:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto :goto_1e

    :goto_1d
    throw p0

    :goto_1e
    goto :goto_1d
.end method

.method public static j6(Ljava/io/InputStream;[BII)V
    .registers 5

    :goto_0
    if-gtz p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_c

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_c
    new-instance p0, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->shortReadOfBlock:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto :goto_19

    :goto_18
    throw p0

    :goto_19
    goto :goto_18
.end method

.method public static final j6(Ljava/io/File;)[B
    .registers 2

    const v0, 0x7fffffff

    invoke-static {p0, v0}, Labcd/BK;->j6(Ljava/io/File;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static final j6(Ljava/io/File;I)[B
    .registers 9

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    int-to-long v3, p1

    const/4 p1, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_30

    long-to-int p0, v1

    new-array p0, p0, [B

    invoke-static {v0, p0, p1}, Labcd/BK;->j6(Ljava/io/InputStream;[BI)I

    move-result v3

    int-to-long v4, v3

    cmp-long v6, v4, v1

    if-nez v6, :cond_2a

    new-array v1, v3, [B

    invoke-static {p0, p1, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_45

    :try_start_24
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    move-exception p0

    :goto_29
    return-object v1

    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    move-exception p1

    :goto_2f
    return-object p0

    :cond_30
    :try_start_30
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->fileIsTooLarge:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, p1

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p0

    :try_start_46
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_4b

    :catch_4a
    move-exception p1

    :goto_4b
    throw p0
.end method
