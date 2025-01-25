.class public Lgroovyjarjarantlr/RuleBlock;
.super Lgroovyjarjarantlr/AlternativeBlock;


# instance fields
.field protected J0:Lgroovyjarjarantlr/RuleEndElement;

.field J8:Lgroovyjarjarantlr/collections/impl/Vector;

.field protected QX:[Lgroovyjarjarantlr/Lookahead;

.field protected Ws:[Z

.field protected we:Ljava/lang/String;


# virtual methods
.method public j6(I)Lgroovyjarjarantlr/Lookahead;
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/GrammarElement;->j6:Lgroovyjarjarantlr/Grammar;

    iget-object v0, v0, Lgroovyjarjarantlr/Grammar;->j6:Lgroovyjarjarantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lgroovyjarjarantlr/LLkGrammarAnalyzer;->j6(ILgroovyjarjarantlr/RuleBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lgroovyjarjarantlr/RuleBlock;->J0:Lgroovyjarjarantlr/RuleEndElement;

    iget-object v0, v0, Lgroovyjarjarantlr/RuleEndElement;->u7:[Lgroovyjarjarantlr/Lookahead;

    iget-object v1, p0, Lgroovyjarjarantlr/GrammarElement;->j6:Lgroovyjarjarantlr/Grammar;

    iget v1, v1, Lgroovyjarjarantlr/Grammar;->VH:I

    const/4 v2, 0x1

    const-string v3, " FOLLOW={"

    move-object v4, v3

    const/4 v3, 0x1

    :goto_d
    if-gt v2, v1, :cond_52

    aget-object v5, v0, v2

    if-nez v5, :cond_14

    goto :goto_4f

    :cond_14
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v0, v2

    iget-object v5, p0, Lgroovyjarjarantlr/GrammarElement;->j6:Lgroovyjarjarantlr/Grammar;

    iget-object v5, v5, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v5}, Lgroovyjarjarantlr/TokenManager;->j6()Lgroovyjarjarantlr/collections/impl/Vector;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v4, v6, v5}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-ge v2, v1, :cond_4d

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v0, v5

    if-eqz v5, :cond_4d

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4d
    move-object v4, v3

    const/4 v3, 0x0

    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_67

    const-string v0, ""

    :cond_67
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lgroovyjarjarantlr/RuleBlock;->we:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Lgroovyjarjarantlr/AlternativeBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/RuleBlock;->we:Ljava/lang/String;

    return-object v0
.end method
