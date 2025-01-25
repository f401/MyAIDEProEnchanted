.class public Lgroovyjarjarantlr/debug/DebuggingInputBuffer;
.super Lgroovyjarjarantlr/InputBuffer;


# instance fields
.field private VH:Z

.field private Zo:Lgroovyjarjarantlr/debug/InputBufferEventSupport;

.field private v5:Lgroovyjarjarantlr/InputBuffer;


# virtual methods
.method public DW()I
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/debug/DebuggingInputBuffer;->v5:Lgroovyjarjarantlr/InputBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/InputBuffer;->DW()I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/debug/DebuggingInputBuffer;->Zo:Lgroovyjarjarantlr/debug/InputBufferEventSupport;

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(I)V

    return v0
.end method

.method public DW(I)V
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/debug/DebuggingInputBuffer;->v5:Lgroovyjarjarantlr/InputBuffer;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/InputBuffer;->DW(I)V

    return-void
.end method

.method public FH(I)V
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/debug/DebuggingInputBuffer;->v5:Lgroovyjarjarantlr/InputBuffer;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/InputBuffer;->FH(I)V

    iget-object v0, p0, Lgroovyjarjarantlr/debug/DebuggingInputBuffer;->Zo:Lgroovyjarjarantlr/debug/InputBufferEventSupport;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW(I)V

    return-void
.end method

.method public j6(I)C
    .registers 4

    iget-object v0, p0, Lgroovyjarjarantlr/debug/DebuggingInputBuffer;->v5:Lgroovyjarjarantlr/InputBuffer;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/InputBuffer;->j6(I)C

    move-result v0

    iget-boolean v1, p0, Lgroovyjarjarantlr/debug/DebuggingInputBuffer;->VH:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lgroovyjarjarantlr/debug/DebuggingInputBuffer;->Zo:Lgroovyjarjarantlr/debug/InputBufferEventSupport;

    invoke-virtual {v1, v0, p1}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(CI)V

    :cond_f
    return v0
.end method

.method public j6()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lgroovyjarjarantlr/debug/DebuggingInputBuffer;->v5:Lgroovyjarjarantlr/InputBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/InputBuffer;->j6(I)C

    move-result v0
    :try_end_7
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    const/16 v0, 0x20

    :goto_b
    iget-object v1, p0, Lgroovyjarjarantlr/debug/DebuggingInputBuffer;->v5:Lgroovyjarjarantlr/InputBuffer;

    invoke-virtual {v1}, Lgroovyjarjarantlr/InputBuffer;->j6()V

    iget-boolean v1, p0, Lgroovyjarjarantlr/debug/DebuggingInputBuffer;->VH:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lgroovyjarjarantlr/debug/DebuggingInputBuffer;->Zo:Lgroovyjarjarantlr/debug/InputBufferEventSupport;

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(C)V

    :cond_19
    return-void
.end method
