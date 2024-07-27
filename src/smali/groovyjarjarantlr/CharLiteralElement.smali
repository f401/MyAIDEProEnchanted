.class Lgroovyjarjarantlr/CharLiteralElement;
.super Lgroovyjarjarantlr/GrammarAtom;


# virtual methods
.method public j6(I)Lgroovyjarjarantlr/Lookahead;
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/GrammarElement;->j6:Lgroovyjarjarantlr/Grammar;

    iget-object v0, v0, Lgroovyjarjarantlr/Grammar;->j6:Lgroovyjarjarantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lgroovyjarjarantlr/LLkGrammarAnalyzer;->j6(ILgroovyjarjarantlr/CharLiteralElement;)Lgroovyjarjarantlr/Lookahead;

    move-result-object v0

    return-object v0
.end method
