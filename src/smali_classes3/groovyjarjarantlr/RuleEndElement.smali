.class Lgroovyjarjarantlr/RuleEndElement;
.super Lgroovyjarjarantlr/BlockEndElement;


# instance fields
.field protected tp:Z

.field protected u7:[Lgroovyjarjarantlr/Lookahead;


# virtual methods
.method public j6(I)Lgroovyjarjarantlr/Lookahead;
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/GrammarElement;->j6:Lgroovyjarjarantlr/Grammar;

    iget-object v0, v0, Lgroovyjarjarantlr/Grammar;->j6:Lgroovyjarjarantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lgroovyjarjarantlr/LLkGrammarAnalyzer;->DW(ILgroovyjarjarantlr/RuleEndElement;)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
