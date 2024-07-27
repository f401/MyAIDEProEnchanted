.class public Lgroovyjarjarantlr/ByteBuffer;
.super Lgroovyjarjarantlr/InputBuffer;


# instance fields
.field public transient v5:Ljava/io/InputStream;


# virtual methods
.method public DW(I)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lgroovyjarjarantlr/InputBuffer;->FH()V

    :goto_0
    iget-object v0, p0, Lgroovyjarjarantlr/InputBuffer;->Hw:Lgroovyjarjarantlr/CharQueue;

    iget v0, v0, Lgroovyjarjarantlr/CharQueue;->Hw:I

    iget v1, p0, Lgroovyjarjarantlr/InputBuffer;->DW:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lgroovyjarjarantlr/InputBuffer;->Hw:Lgroovyjarjarantlr/CharQueue;

    iget-object v1, p0, Lgroovyjarjarantlr/ByteBuffer;->v5:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/CharQueue;->j6(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lgroovyjarjarantlr/CharStreamIOException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/CharStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_0
    return-void
.end method
