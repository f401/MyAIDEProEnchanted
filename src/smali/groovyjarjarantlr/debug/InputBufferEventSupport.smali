.class public Lgroovyjarjarantlr/debug/InputBufferEventSupport;
.super Ljava/lang/Object;


# instance fields
.field private DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

.field private j6:Ljava/util/Vector;


# virtual methods
.method public DW(I)V
    .registers 5

    const/4 v2, 0x3

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    const/16 v1, 0x20

    invoke-virtual {v0, v2, v1, p1}, Lgroovyjarjarantlr/debug/InputBufferEvent;->j6(ICI)V

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6:Ljava/util/Vector;

    invoke-virtual {p0, v2, v0}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(ILjava/util/Vector;)V

    return-void
.end method

.method public j6(C)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    invoke-virtual {v0, v1, p1, v1}, Lgroovyjarjarantlr/debug/InputBufferEvent;->j6(ICI)V

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6:Ljava/util/Vector;

    invoke-virtual {p0, v1, v0}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(ILjava/util/Vector;)V

    return-void
.end method

.method public j6(CI)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    invoke-virtual {v0, v1, p1, p2}, Lgroovyjarjarantlr/debug/InputBufferEvent;->j6(ICI)V

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6:Ljava/util/Vector;

    invoke-virtual {p0, v1, v0}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(ILjava/util/Vector;)V

    return-void
.end method

.method public j6(I)V
    .registers 5

    const/4 v2, 0x2

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    const/16 v1, 0x20

    invoke-virtual {v0, v2, v1, p1}, Lgroovyjarjarantlr/debug/InputBufferEvent;->j6(ICI)V

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6:Ljava/util/Vector;

    invoke-virtual {p0, v2, v0}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(ILjava/util/Vector;)V

    return-void
.end method

.method public j6(ILgroovyjarjarantlr/debug/ListenerBase;)V
    .registers 5

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    check-cast p2, Lgroovyjarjarantlr/debug/InputBufferListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/InputBufferListener;->DW(Lgroovyjarjarantlr/debug/InputBufferEvent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "bad type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " for fireEvent()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast p2, Lgroovyjarjarantlr/debug/InputBufferListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/InputBufferListener;->FH(Lgroovyjarjarantlr/debug/InputBufferEvent;)V

    goto :goto_0

    :cond_2
    check-cast p2, Lgroovyjarjarantlr/debug/InputBufferListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/InputBufferListener;->j6(Lgroovyjarjarantlr/debug/InputBufferEvent;)V

    goto :goto_0

    :cond_3
    check-cast p2, Lgroovyjarjarantlr/debug/InputBufferListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/InputBufferListener;->Hw(Lgroovyjarjarantlr/debug/InputBufferEvent;)V

    goto :goto_0
.end method

.method public j6(ILjava/util/Vector;)V
    .registers 6

    monitor-enter p0

    if-nez p2, :cond_1

    :try_start_0
    monitor-exit p0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/debug/ListenerBase;

    invoke-virtual {p0, p1, v1}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(ILgroovyjarjarantlr/debug/ListenerBase;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
