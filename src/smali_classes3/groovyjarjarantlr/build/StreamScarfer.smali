.class Lgroovyjarjarantlr/build/StreamScarfer;
.super Ljava/lang/Thread;


# instance fields
.field DW:Ljava/lang/String;

.field FH:Lgroovyjarjarantlr/build/Tool;

.field j6:Ljava/io/InputStream;


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lgroovyjarjarantlr/build/StreamScarfer;->j6:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lgroovyjarjarantlr/build/StreamScarfer;->DW:Ljava/lang/String;

    if-eqz v2, :cond_25

    const-string v3, "stdout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_25

    :cond_1f
    iget-object v2, p0, Lgroovyjarjarantlr/build/StreamScarfer;->FH:Lgroovyjarjarantlr/build/Tool;

    invoke-virtual {v2, v0}, Lgroovyjarjarantlr/build/Tool;->j6(Ljava/lang/String;)V

    goto :goto_c

    :cond_25
    :goto_25
    iget-object v2, p0, Lgroovyjarjarantlr/build/StreamScarfer;->FH:Lgroovyjarjarantlr/build/Tool;

    invoke-virtual {v2, v0}, Lgroovyjarjarantlr/build/Tool;->DW(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_c

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2f
    return-void
.end method
