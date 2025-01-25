.class public Lgroovyjarjarantlr/debug/InputBufferEvent;
.super Lgroovyjarjarantlr/debug/Event;


# instance fields
.field DW:C

.field FH:I


# virtual methods
.method public DW()C
    .registers 2

    iget-char v0, p0, Lgroovyjarjarantlr/debug/InputBufferEvent;->DW:C

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/debug/InputBufferEvent;->FH:I

    return v0
.end method

.method FH(I)V
    .registers 2

    iput p1, p0, Lgroovyjarjarantlr/debug/InputBufferEvent;->FH:I

    return-void
.end method

.method j6(C)V
    .registers 2

    iput-char p1, p0, Lgroovyjarjarantlr/debug/InputBufferEvent;->DW:C

    return-void
.end method

.method j6(ICI)V
    .registers 4

    invoke-super {p0, p1}, Lgroovyjarjarantlr/debug/Event;->DW(I)V

    invoke-virtual {p0, p2}, Lgroovyjarjarantlr/debug/InputBufferEvent;->j6(C)V

    invoke-virtual {p0, p3}, Lgroovyjarjarantlr/debug/InputBufferEvent;->FH(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CharBufferEvent ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/Event;->j6()I

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "CONSUME, "

    goto :goto_15

    :cond_13
    const-string v1, "LA, "

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/InputBufferEvent;->DW()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/InputBufferEvent;->FH()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
