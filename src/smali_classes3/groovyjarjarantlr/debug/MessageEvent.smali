.class public Lgroovyjarjarantlr/debug/MessageEvent;
.super Lgroovyjarjarantlr/debug/Event;


# static fields
.field public static DW:I


# instance fields
.field private FH:Ljava/lang/String;


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/debug/MessageEvent;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ParserMessageEvent ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/Event;->j6()I

    move-result v1

    sget v2, Lgroovyjarjarantlr/debug/MessageEvent;->DW:I

    if-ne v1, v2, :cond_15

    const-string v1, "warning,"

    goto :goto_17

    :cond_15
    const-string v1, "error,"

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/debug/MessageEvent;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
