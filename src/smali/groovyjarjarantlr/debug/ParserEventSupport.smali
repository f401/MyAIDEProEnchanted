.class public Lgroovyjarjarantlr/debug/ParserEventSupport;
.super Ljava/lang/Object;


# instance fields
.field private DW:Lgroovyjarjarantlr/debug/ParserMatchEvent;

.field private FH:Lgroovyjarjarantlr/debug/MessageEvent;

.field private Hw:Lgroovyjarjarantlr/debug/ParserTokenEvent;

.field private VH:Lgroovyjarjarantlr/debug/TraceEvent;

.field private Zo:Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;

.field private gn:Lgroovyjarjarantlr/debug/NewLineEvent;

.field private j6:Ljava/util/Vector;

.field private u7:Lgroovyjarjarantlr/debug/ParserController;

.field private v5:Lgroovyjarjarantlr/debug/SemanticPredicateEvent;


# virtual methods
.method public j6(I)V
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Hw:Lgroovyjarjarantlr/debug/ParserTokenEvent;

    sget v1, Lgroovyjarjarantlr/debug/ParserTokenEvent;->FH:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lgroovyjarjarantlr/debug/ParserTokenEvent;->j6(III)V

    const/4 v0, 0x0

    iget-object v1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6(ILjava/util/Vector;)V

    return-void
.end method

.method public j6(II)V
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Hw:Lgroovyjarjarantlr/debug/ParserTokenEvent;

    sget v1, Lgroovyjarjarantlr/debug/ParserTokenEvent;->DW:I

    invoke-virtual {v0, v1, p1, p2}, Lgroovyjarjarantlr/debug/ParserTokenEvent;->j6(III)V

    const/4 v0, 0x3

    iget-object v1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6(ILjava/util/Vector;)V

    return-void
.end method

.method public j6(ILgroovyjarjarantlr/debug/ListenerBase;)V
    .registers 5

    packed-switch p1, :pswitch_data_0

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

    :pswitch_0
    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->VH:Lgroovyjarjarantlr/debug/TraceEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/ListenerBase;->j6(Lgroovyjarjarantlr/debug/TraceEvent;)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p2, Lgroovyjarjarantlr/debug/NewLineListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->gn:Lgroovyjarjarantlr/debug/NewLineEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/NewLineListener;->j6(Lgroovyjarjarantlr/debug/NewLineEvent;)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Lgroovyjarjarantlr/debug/SyntacticPredicateListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Zo:Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/SyntacticPredicateListener;->DW(Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;)V

    goto :goto_0

    :pswitch_3
    check-cast p2, Lgroovyjarjarantlr/debug/SyntacticPredicateListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Zo:Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/SyntacticPredicateListener;->j6(Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lgroovyjarjarantlr/debug/SyntacticPredicateListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Zo:Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/SyntacticPredicateListener;->FH(Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;)V

    goto :goto_0

    :pswitch_5
    check-cast p2, Lgroovyjarjarantlr/debug/SemanticPredicateListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->v5:Lgroovyjarjarantlr/debug/SemanticPredicateEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/SemanticPredicateListener;->j6(Lgroovyjarjarantlr/debug/SemanticPredicateEvent;)V

    goto :goto_0

    :pswitch_6
    check-cast p2, Lgroovyjarjarantlr/debug/MessageListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->FH:Lgroovyjarjarantlr/debug/MessageEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/MessageListener;->j6(Lgroovyjarjarantlr/debug/MessageEvent;)V

    goto :goto_0

    :pswitch_7
    check-cast p2, Lgroovyjarjarantlr/debug/MessageListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->FH:Lgroovyjarjarantlr/debug/MessageEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/MessageListener;->DW(Lgroovyjarjarantlr/debug/MessageEvent;)V

    goto :goto_0

    :pswitch_8
    check-cast p2, Lgroovyjarjarantlr/debug/ParserMatchListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->DW:Lgroovyjarjarantlr/debug/ParserMatchEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/ParserMatchListener;->j6(Lgroovyjarjarantlr/debug/ParserMatchEvent;)V

    goto :goto_0

    :pswitch_9
    check-cast p2, Lgroovyjarjarantlr/debug/ParserMatchListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->DW:Lgroovyjarjarantlr/debug/ParserMatchEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/ParserMatchListener;->DW(Lgroovyjarjarantlr/debug/ParserMatchEvent;)V

    goto :goto_0

    :pswitch_a
    check-cast p2, Lgroovyjarjarantlr/debug/ParserMatchListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->DW:Lgroovyjarjarantlr/debug/ParserMatchEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/ParserMatchListener;->FH(Lgroovyjarjarantlr/debug/ParserMatchEvent;)V

    goto :goto_0

    :pswitch_b
    check-cast p2, Lgroovyjarjarantlr/debug/ParserMatchListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->DW:Lgroovyjarjarantlr/debug/ParserMatchEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/ParserMatchListener;->Hw(Lgroovyjarjarantlr/debug/ParserMatchEvent;)V

    goto :goto_0

    :pswitch_c
    check-cast p2, Lgroovyjarjarantlr/debug/ParserTokenListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Hw:Lgroovyjarjarantlr/debug/ParserTokenEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/ParserTokenListener;->j6(Lgroovyjarjarantlr/debug/ParserTokenEvent;)V

    goto :goto_0

    :pswitch_d
    check-cast p2, Lgroovyjarjarantlr/debug/TraceListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->VH:Lgroovyjarjarantlr/debug/TraceEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/TraceListener;->FH(Lgroovyjarjarantlr/debug/TraceEvent;)V

    goto :goto_0

    :pswitch_e
    check-cast p2, Lgroovyjarjarantlr/debug/TraceListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->VH:Lgroovyjarjarantlr/debug/TraceEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/TraceListener;->DW(Lgroovyjarjarantlr/debug/TraceEvent;)V

    goto :goto_0

    :pswitch_f
    check-cast p2, Lgroovyjarjarantlr/debug/ParserTokenListener;

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Hw:Lgroovyjarjarantlr/debug/ParserTokenEvent;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/debug/ParserTokenListener;->DW(Lgroovyjarjarantlr/debug/ParserTokenEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j6(ILjava/util/Vector;)V
    .registers 5

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/debug/ListenerBase;

    invoke-virtual {p0, p1, v0}, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6(ILgroovyjarjarantlr/debug/ListenerBase;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->u7:Lgroovyjarjarantlr/debug/ParserController;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lgroovyjarjarantlr/debug/ParserController;->j6()V

    :cond_1
    return-void
.end method
