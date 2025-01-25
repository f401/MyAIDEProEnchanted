.class public Lgroovyjarjarantlr/debug/InputBufferEventSupport;
.super Ljava/lang/Object;


# instance fields
.field private DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

.field private j6:Ljava/util/Vector;


# virtual methods
.method public DW(I)V
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    const/16 v1, 0x20

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p1}, Lgroovyjarjarantlr/debug/InputBufferEvent;->j6(ICI)V

    iget-object p1, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6:Ljava/util/Vector;

    invoke-virtual {p0, v2, p1}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(ILjava/util/Vector;)V

    return-void
.end method

.method public j6(C)V
    .registers 4

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Lgroovyjarjarantlr/debug/InputBufferEvent;->j6(ICI)V

    iget-object p1, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6:Ljava/util/Vector;

    invoke-virtual {p0, v1, p1}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(ILjava/util/Vector;)V

    return-void
.end method

.method public j6(CI)V
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lgroovyjarjarantlr/debug/InputBufferEvent;->j6(ICI)V

    iget-object p1, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6:Ljava/util/Vector;

    invoke-virtual {p0, v1, p1}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(ILjava/util/Vector;)V

    return-void
.end method

.method public j6(I)V
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    const/16 v1, 0x20

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p1}, Lgroovyjarjarantlr/debug/InputBufferEvent;->j6(ICI)V

    iget-object p1, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6:Ljava/util/Vector;

    invoke-virtual {p0, v2, p1}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(ILjava/util/Vector;)V

    return-void
.end method

.method public j6(ILgroovyjarjarantlr/debug/ListenerBase;)V
    .registers 4

    if-eqz p1, :cond_3f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_37

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    check-cast p2, Lgroovyjarjarantlr/debug/InputBufferListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/InputBufferListener;->DW(Lgroovyjarjarantlr/debug/InputBufferEvent;)V

    goto :goto_46

    :cond_13
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "bad type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " for fireEvent()"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    check-cast p2, Lgroovyjarjarantlr/debug/InputBufferListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/InputBufferListener;->FH(Lgroovyjarjarantlr/debug/InputBufferEvent;)V

    goto :goto_46

    :cond_37
    check-cast p2, Lgroovyjarjarantlr/debug/InputBufferListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/InputBufferListener;->j6(Lgroovyjarjarantlr/debug/InputBufferEvent;)V

    goto :goto_46

    :cond_3f
    check-cast p2, Lgroovyjarjarantlr/debug/InputBufferListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->DW:Lgroovyjarjarantlr/debug/InputBufferEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/InputBufferListener;->Hw(Lgroovyjarjarantlr/debug/InputBufferEvent;)V

    :goto_46
    return-void
.end method

.method public j6(ILjava/util/Vector;)V
    .registers 5

    monitor-enter p0

    if-nez p2, :cond_5

    :try_start_3
    monitor-exit p0

    return-void

    :cond_5
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Vector;

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_22

    if-eqz p2, :cond_21

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/debug/ListenerBase;

    invoke-virtual {p0, p1, v1}, Lgroovyjarjarantlr/debug/InputBufferEventSupport;->j6(ILgroovyjarjarantlr/debug/ListenerBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_21
    return-void

    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    goto :goto_26

    :goto_25
    throw p1

    :goto_26
    goto :goto_25
.end method
