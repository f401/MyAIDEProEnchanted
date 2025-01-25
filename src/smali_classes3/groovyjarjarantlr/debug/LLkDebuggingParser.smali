.class public Lgroovyjarjarantlr/debug/LLkDebuggingParser;
.super Lgroovyjarjarantlr/LLkParser;

# interfaces
.implements Lgroovyjarjarantlr/debug/DebuggingParser;


# instance fields
.field protected u7:Lgroovyjarjarantlr/debug/ParserEventSupport;


# virtual methods
.method public j6(I)I
    .registers 4

    invoke-super {p0, p1}, Lgroovyjarjarantlr/LLkParser;->j6(I)I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/debug/LLkDebuggingParser;->u7:Lgroovyjarjarantlr/debug/ParserEventSupport;

    invoke-virtual {v1, p1, v0}, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6(II)V

    return v0
.end method

.method public j6()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/debug/LLkDebuggingParser;->j6(I)I

    move-result v0

    invoke-super {p0}, Lgroovyjarjarantlr/LLkParser;->j6()V

    iget-object v1, p0, Lgroovyjarjarantlr/debug/LLkDebuggingParser;->u7:Lgroovyjarjarantlr/debug/ParserEventSupport;

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6(I)V

    return-void
.end method
