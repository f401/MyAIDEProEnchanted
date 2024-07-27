.class public Lgroovyjarjarantlr/debug/ParserTokenEvent;
.super Lgroovyjarjarantlr/debug/Event;


# static fields
.field public static DW:I = 0x0

.field public static FH:I = 0x1


# instance fields
.field private Hw:I

.field private v5:I


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/debug/ParserTokenEvent;->v5:I

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/debug/ParserTokenEvent;->Hw:I

    return v0
.end method

.method FH(I)V
    .registers 2

    iput p1, p0, Lgroovyjarjarantlr/debug/ParserTokenEvent;->v5:I

    return-void
.end method

.method Hw(I)V
    .registers 2

    iput p1, p0, Lgroovyjarjarantlr/debug/ParserTokenEvent;->Hw:I

    return-void
.end method

.method j6(III)V
    .registers 4

    invoke-super {p0, p1}, Lgroovyjarjarantlr/debug/Event;->DW(I)V

    invoke-virtual {p0, p2}, Lgroovyjarjarantlr/debug/ParserTokenEvent;->FH(I)V

    invoke-virtual {p0, p3}, Lgroovyjarjarantlr/debug/ParserTokenEvent;->Hw(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/Event;->j6()I

    move-result v0

    sget v1, Lgroovyjarjarantlr/debug/ParserTokenEvent;->DW:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ParserTokenEvent [LA,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/ParserTokenEvent;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/ParserTokenEvent;->FH()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ParserTokenEvent [consume,1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/ParserTokenEvent;->FH()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
