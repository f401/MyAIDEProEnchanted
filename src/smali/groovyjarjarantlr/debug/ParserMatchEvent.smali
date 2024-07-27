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

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "ParserMatchEvent ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/ParserMatchEvent;->Zo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ok,"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/ParserMatchEvent;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NOT "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/Event;->j6()I

    move-result v0

    sget v2, Lgroovyjarjarantlr/debug/ParserMatchEvent;->FH:I

    if-ne v0, v2, :cond_2

    const-string v0, "token,"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/ParserMatchEvent;->Hw()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/ParserMatchEvent;->FH()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/GuessingEvent;->DW()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "bad,"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, "bitset,"

    goto :goto_2
.end method

.method public v5()Z
    .registers 2

    iget-boolean v0, p0, Lgroovyjarjarantlr/debug/ParserMatchEvent;->Hw:Z

    return v0
.end method
