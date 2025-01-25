.class public Lgroovyjarjarantlr/debug/ParserMatchEvent;
.super Lgroovyjarjarantlr/debug/GuessingEvent;


# static fields
.field public static FH:I


# instance fields
.field private Hw:Z

.field private VH:I

.field private Zo:Ljava/lang/Object;

.field private v5:Z


# virtual methods
.method public FH()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/debug/ParserMatchEvent;->Zo:Ljava/lang/Object;

    return-object v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/debug/ParserMatchEvent;->VH:I

    return v0
.end method

.method public Zo()Z
    .registers 2

    iget-boolean v0, p0, Lgroovyjarjarantlr/debug/ParserMatchEvent;->v5:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ParserMatchEvent ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/ParserMatchEvent;->Zo()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "ok,"

    goto :goto_15

    :cond_13
    const-string v1, "bad,"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/ParserMatchEvent;->v5()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "NOT "

    goto :goto_23

    :cond_21
    const-string v1, ""

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/Event;->j6()I

    move-result v1

    sget v2, Lgroovyjarjarantlr/debug/ParserMatchEvent;->FH:I

    if-ne v1, v2, :cond_31

    const-string v1, "token,"

    goto :goto_33

    :cond_31
    const-string v1, "bitset,"

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/ParserMatchEvent;->Hw()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/ParserMatchEvent;->FH()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/GuessingEvent;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()Z
    .registers 2

    iget-boolean v0, p0, Lgroovyjarjarantlr/debug/ParserMatchEvent;->Hw:Z

    return v0
.end method
