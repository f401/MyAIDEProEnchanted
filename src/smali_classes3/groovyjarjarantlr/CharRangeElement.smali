.class Lgroovyjarjarantlr/CharRangeElement;
.super Lgroovyjarjarantlr/AlternativeElement;


# instance fields
.field protected EQ:Ljava/lang/String;

.field VH:Ljava/lang/String;

.field protected gn:C

.field protected tp:Ljava/lang/String;

.field protected u7:C


# virtual methods
.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/CharRangeElement;->VH:Ljava/lang/String;

    return-object v0
.end method

.method public j6(I)Lgroovyjarjarantlr/Lookahead;
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/GrammarElement;->j6:Lgroovyjarjarantlr/Grammar;

    iget-object v0, v0, Lgroovyjarjarantlr/Grammar;->j6:Lgroovyjarjarantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lgroovyjarjarantlr/LLkGrammarAnalyzer;->j6(ILgroovyjarjarantlr/CharRangeElement;)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lgroovyjarjarantlr/CharRangeElement;->VH:Ljava/lang/String;

    const-string v1, ".."

    const-string v2, " "

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lgroovyjarjarantlr/CharRangeElement;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    :goto_17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lgroovyjarjarantlr/CharRangeElement;->tp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgroovyjarjarantlr/CharRangeElement;->EQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_17
.end method
