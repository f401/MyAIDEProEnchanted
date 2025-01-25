.class public Lgroovyjarjarantlr/PreservingFileWriter;
.super Ljava/io/FileWriter;


# instance fields
.field protected DW:Ljava/io/File;

.field protected j6:Ljava/io/File;


# virtual methods
.method public close()V
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/io/FileWriter;->close()V

    const/16 v1, 0x400

    new-array v2, v1, [C

    iget-object v3, p0, Lgroovyjarjarantlr/PreservingFileWriter;->j6:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v5, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-nez v9, :cond_71

    new-array v3, v1, [C

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_b1

    :try_start_28
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v9, p0, Lgroovyjarjarantlr/PreservingFileWriter;->j6:Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v6, 0x1

    :cond_35
    :goto_35
    if-eqz v6, :cond_54

    invoke-virtual {v4, v2, v8, v1}, Ljava/io/BufferedReader;->read([CII)I

    move-result v9

    invoke-virtual {v5, v3, v8, v1}, Ljava/io/BufferedReader;->read([CII)I

    move-result v10
    :try_end_3f
    .catchall {:try_start_28 .. :try_end_3f} :catchall_6e

    if-eq v9, v10, :cond_43

    const/4 v6, 0x0

    goto :goto_54

    :cond_43
    if-ne v9, v7, :cond_46

    goto :goto_54

    :cond_46
    const/4 v10, 0x0

    :goto_47
    if-ge v10, v9, :cond_35

    aget-char v11, v2, v10

    aget-char v12, v3, v10

    if-eq v11, v12, :cond_51

    const/4 v6, 0x0

    goto :goto_35

    :cond_51
    add-int/lit8 v10, v10, 0x1

    goto :goto_47

    :cond_54
    :goto_54
    :try_start_54
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_6e

    if-eqz v6, :cond_71

    iget-object v1, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput-object v0, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    :cond_6d
    return-void

    :catchall_6e
    move-exception v1

    move-object v3, v0

    goto :goto_b4

    :cond_71
    :try_start_71
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v5, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_b1

    :try_start_7d
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, p0, Lgroovyjarjarantlr/PreservingFileWriter;->j6:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_89
    .catchall {:try_start_7d .. :try_end_89} :catchall_6e

    :goto_89
    :try_start_89
    invoke-virtual {v4, v2, v8, v1}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_af

    if-ne v5, v7, :cond_ab

    :try_start_8f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_94

    :catch_93
    move-exception v1

    :goto_94
    :try_start_94
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_99

    :catch_98
    move-exception v1

    :goto_99
    iget-object v1, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    if-eqz v1, :cond_aa

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_aa

    iget-object v1, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput-object v0, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    :cond_aa
    return-void

    :cond_ab
    :try_start_ab
    invoke-virtual {v3, v2, v8, v5}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_89

    :catchall_af
    move-exception v1

    goto :goto_b4

    :catchall_b1
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_b4
    if-eqz v4, :cond_bb

    :try_start_b6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_bb

    :catch_ba
    move-exception v2

    :cond_bb
    :goto_bb
    if-eqz v3, :cond_c2

    :try_start_bd
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_c2

    :catch_c1
    move-exception v2

    :cond_c2
    :goto_c2
    iget-object v2, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    if-eqz v2, :cond_d3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d3

    iget-object v2, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iput-object v0, p0, Lgroovyjarjarantlr/PreservingFileWriter;->DW:Ljava/io/File;

    :cond_d3
    goto :goto_d5

    :goto_d4
    throw v1

    :goto_d5
    goto :goto_d4
.end method
