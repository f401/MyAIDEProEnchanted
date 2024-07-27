.class public abstract Lgroovyjarjarantlr/debug/DebuggingCharScanner;
.super Lgroovyjarjarantlr/CharScanner;

# interfaces
.implements Lgroovyjarjarantlr/debug/DebuggingParser;


# instance fields
.field private J0:Lgroovyjarjarantlr/debug/ParserEventSupport;


# virtual methods
.method public j6(I)C
    .registers 4

    invoke-super {p0, p1}, Lgroovyjarjarantlr/CharScanner;->j6(I)C

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/debug/DebuggingCharScanner;->J0:Lgroovyjarjarantlr/debug/ParserEventSupport;

    invoke-virtual {v1, p1, v0}, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6(II)V

    return v0
.end method

.method public j6()V
    .registers 3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/debug/DebuggingCharScanner;->j6(I)C
    :try_end_0
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-super {p0}, Lgroovyjarjarantlr/CharScanner;->j6()V

    iget-object v1, p0, Lgroovyjarjarantlr/debug/DebuggingCharScanner;->J0:Lgroovyjarjarantlr/debug/ParserEventSupport;

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/debug/ParserEventSupport;->j6(I)V

    return-void

    :catch_0
    move-exception v0

    const/16 v0, -0x63

    goto :goto_0
.end method
