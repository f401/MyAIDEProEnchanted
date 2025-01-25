.class public Lgroovyjarjarantlr/debug/TraceEvent;
.super Lgroovyjarjarantlr/debug/GuessingEvent;


# static fields
.field public static FH:I


# instance fields
.field private Hw:I


# virtual methods
.method public FH()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/debug/TraceEvent;->Hw:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ParserTraceEvent ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/Event;->j6()I

    move-result v1

    sget v2, Lgroovyjarjarantlr/debug/TraceEvent;->FH:I

    if-ne v1, v2, :cond_15

    const-string v1, "enter,"

    goto :goto_17

    :cond_15
    const-string v1, "exit,"

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/TraceEvent;->FH()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

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
