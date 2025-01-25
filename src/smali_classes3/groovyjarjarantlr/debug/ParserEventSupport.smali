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

    const/4 p1, 0x0

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6(ILjava/util/Vector;)V

    return-void
.end method

.method public j6(II)V
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Hw:Lgroovyjarjarantlr/debug/ParserTokenEvent;

    sget v1, Lgroovyjarjarantlr/debug/ParserTokenEvent;->DW:I

    invoke-virtual {v0, v1, p1, p2}, Lgroovyjarjarantlr/debug/ParserTokenEvent;->j6(III)V

    const/4 p1, 0x3

    iget-object p2, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6:Ljava/util/Vector;

    invoke-virtual {p0, p1, p2}, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6(ILjava/util/Vector;)V

    return-void
.end method

.method public j6(ILgroovyjarjarantlr/debug/ListenerBase;)V
    .registers 4

    packed-switch p1, :pswitch_data_a0

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

    :pswitch_1f  #0xf
    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->VH:Lgroovyjarjarantlr/debug/TraceEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/ListenerBase;->j6(Lgroovyjarjarantlr/debug/TraceEvent;)V

    goto/16 :goto_9f

    :pswitch_26  #0xe
    check-cast p2, Lgroovyjarjarantlr/debug/NewLineListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->gn:Lgroovyjarjarantlr/debug/NewLineEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/NewLineListener;->j6(Lgroovyjarjarantlr/debug/NewLineEvent;)V

    goto/16 :goto_9f

    :pswitch_2f  #0xd
    check-cast p2, Lgroovyjarjarantlr/debug/SyntacticPredicateListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Zo:Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/SyntacticPredicateListener;->DW(Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;)V

    goto/16 :goto_9f

    :pswitch_38  #0xc
    check-cast p2, Lgroovyjarjarantlr/debug/SyntacticPredicateListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Zo:Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/SyntacticPredicateListener;->j6(Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;)V

    goto :goto_9f

    :pswitch_40  #0xb
    check-cast p2, Lgroovyjarjarantlr/debug/SyntacticPredicateListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Zo:Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/SyntacticPredicateListener;->FH(Lgroovyjarjarantlr/debug/SyntacticPredicateEvent;)V

    goto :goto_9f

    :pswitch_48  #0xa
    check-cast p2, Lgroovyjarjarantlr/debug/SemanticPredicateListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->v5:Lgroovyjarjarantlr/debug/SemanticPredicateEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/SemanticPredicateListener;->j6(Lgroovyjarjarantlr/debug/SemanticPredicateEvent;)V

    goto :goto_9f

    :pswitch_50  #0x9
    check-cast p2, Lgroovyjarjarantlr/debug/MessageListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->FH:Lgroovyjarjarantlr/debug/MessageEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/MessageListener;->j6(Lgroovyjarjarantlr/debug/MessageEvent;)V

    goto :goto_9f

    :pswitch_58  #0x8
    check-cast p2, Lgroovyjarjarantlr/debug/MessageListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->FH:Lgroovyjarjarantlr/debug/MessageEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/MessageListener;->DW(Lgroovyjarjarantlr/debug/MessageEvent;)V

    goto :goto_9f

    :pswitch_60  #0x7
    check-cast p2, Lgroovyjarjarantlr/debug/ParserMatchListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->DW:Lgroovyjarjarantlr/debug/ParserMatchEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/ParserMatchListener;->j6(Lgroovyjarjarantlr/debug/ParserMatchEvent;)V

    goto :goto_9f

    :pswitch_68  #0x6
    check-cast p2, Lgroovyjarjarantlr/debug/ParserMatchListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->DW:Lgroovyjarjarantlr/debug/ParserMatchEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/ParserMatchListener;->DW(Lgroovyjarjarantlr/debug/ParserMatchEvent;)V

    goto :goto_9f

    :pswitch_70  #0x5
    check-cast p2, Lgroovyjarjarantlr/debug/ParserMatchListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->DW:Lgroovyjarjarantlr/debug/ParserMatchEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/ParserMatchListener;->FH(Lgroovyjarjarantlr/debug/ParserMatchEvent;)V

    goto :goto_9f

    :pswitch_78  #0x4
    check-cast p2, Lgroovyjarjarantlr/debug/ParserMatchListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->DW:Lgroovyjarjarantlr/debug/ParserMatchEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/ParserMatchListener;->Hw(Lgroovyjarjarantlr/debug/ParserMatchEvent;)V

    goto :goto_9f

    :pswitch_80  #0x3
    check-cast p2, Lgroovyjarjarantlr/debug/ParserTokenListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Hw:Lgroovyjarjarantlr/debug/ParserTokenEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/ParserTokenListener;->j6(Lgroovyjarjarantlr/debug/ParserTokenEvent;)V

    goto :goto_9f

    :pswitch_88  #0x2
    check-cast p2, Lgroovyjarjarantlr/debug/TraceListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->VH:Lgroovyjarjarantlr/debug/TraceEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/TraceListener;->FH(Lgroovyjarjarantlr/debug/TraceEvent;)V

    goto :goto_9f

    :pswitch_90  #0x1
    check-cast p2, Lgroovyjarjarantlr/debug/TraceListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->VH:Lgroovyjarjarantlr/debug/TraceEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/TraceListener;->DW(Lgroovyjarjarantlr/debug/TraceEvent;)V

    goto :goto_9f

    :pswitch_98  #0x0
    check-cast p2, Lgroovyjarjarantlr/debug/ParserTokenListener;

    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->Hw:Lgroovyjarjarantlr/debug/ParserTokenEvent;

    invoke-interface {p2, p1}, Lgroovyjarjarantlr/debug/ParserTokenListener;->DW(Lgroovyjarjarantlr/debug/ParserTokenEvent;)V

    :goto_9f
    return-void

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_98  #00000000
        :pswitch_90  #00000001
        :pswitch_88  #00000002
        :pswitch_80  #00000003
        :pswitch_78  #00000004
        :pswitch_70  #00000005
        :pswitch_68  #00000006
        :pswitch_60  #00000007
        :pswitch_58  #00000008
        :pswitch_50  #00000009
        :pswitch_48  #0000000a
        :pswitch_40  #0000000b
        :pswitch_38  #0000000c
        :pswitch_2f  #0000000d
        :pswitch_26  #0000000e
        :pswitch_1f  #0000000f
    .end packed-switch
.end method

.method public j6(ILjava/util/Vector;)V
    .registers 5

    if-eqz p2, :cond_15

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/debug/ListenerBase;

    invoke-virtual {p0, p1, v1}, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6(ILgroovyjarjarantlr/debug/ListenerBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    iget-object p1, p0, Lgroovyjarjarantlr/debug/ParserEventSupport;->u7:Lgroovyjarjarantlr/debug/ParserController;

    if-eqz p1, :cond_1c

    invoke-interface {p1}, Lgroovyjarjarantlr/debug/ParserController;->j6()V

    :cond_1c
    return-void
.end method
