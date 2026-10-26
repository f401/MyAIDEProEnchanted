.class public Lgroovyjarjarantlr/PreservingFileWriter;
.super Ljava/io/FileWriter;


# instance fields
.field protected DW:Ljava/io/File;

.field protected j6:Ljava/io/File;


# virtual methods
.method public close()V
    .locals 12

    const/4 v11, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/io/FileWriter;->close()V

    const/16 v1, 0x400

    new-array v5, v1, [C

    iget-object v1, p0, Lgroovyjarjarantlr/PreservingFileWriter;->j6:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-object v1, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_8

    const/16 v1, 0x400

    new-array v6, v1, [C

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v4, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v4, p0, Lgroovyjarjarantlr/PreservingFileWriter;->j6:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_a

    const/4 v4, 0x0

    const/16 v8, 0x400

    invoke-virtual {v2, v5, v4, v8}, Ljava/io/BufferedReader;->read([CII)I

    move-result v8

    const/4 v4, 0x0

    const/16 v9, 0x400

    invoke-virtual {v7, v6, v4, v9}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    if-eq v8, v4, :cond_2

    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v3, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    :cond_1
    :goto_2
    return-void

    :cond_2
    if-ne v8, v11, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_3
    if-ge v4, v8, :cond_0

    aget-char v9, v5, v4

    aget-char v10, v6, v4

    if-eq v9, v10, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    move-object v2, v3

    :goto_5
    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_6
    :goto_7
    iget-object v1, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput-object v3, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    :cond_7
    throw v0

    :cond_8
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    iget-object v2, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v4, p0, Lgroovyjarjarantlr/PreservingFileWriter;->j6:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_8
    const/4 v0, 0x0

    const/16 v4, 0x400

    :try_start_6
    invoke-virtual {v1, v5, v0, v4}, Ljava/io/BufferedReader;->read([CII)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v0

    if-ne v0, v11, :cond_9

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_9
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_a
    iget-object v0, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v3, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    :try_start_9
    invoke-virtual {v2, v5, v4, v0}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v3

    move-object v1, v3

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_4

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method
