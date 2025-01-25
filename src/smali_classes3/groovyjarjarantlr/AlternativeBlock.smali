.class Lgroovyjarjarantlr/AlternativeBlock;
.super Lgroovyjarjarantlr/AlternativeElement;


# instance fields
.field EQ:Z

.field protected VH:Ljava/lang/String;

.field protected gn:Lgroovyjarjarantlr/collections/impl/Vector;

.field protected tp:I

.field protected u7:Ljava/lang/String;


# virtual methods
.method public DW(I)Lgroovyjarjarantlr/Alternative;
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/AlternativeBlock;->gn:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/collections/impl/Vector;->j6(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgroovyjarjarantlr/Alternative;

    return-object p1
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/AlternativeBlock;->u7:Ljava/lang/String;

    return-object v0
.end method

.method public j6(I)Lgroovyjarjarantlr/Lookahead;
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/GrammarElement;->j6:Lgroovyjarjarantlr/Grammar;

    iget-object v0, v0, Lgroovyjarjarantlr/Grammar;->j6:Lgroovyjarjarantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lgroovyjarjarantlr/LLkGrammarAnalyzer;->j6(ILgroovyjarjarantlr/AlternativeBlock;)Lgroovyjarjarantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    iget-object v0, p0, Lgroovyjarjarantlr/AlternativeBlock;->VH:Ljava/lang/String;

    const-string v1, " ("

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgroovyjarjarantlr/AlternativeBlock;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iget-object v2, p0, Lgroovyjarjarantlr/AlternativeBlock;->gn:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v2

    if-ge v0, v2, :cond_e5

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/AlternativeBlock;->DW(I)Lgroovyjarjarantlr/Alternative;

    move-result-object v2

    iget-object v3, v2, Lgroovyjarjarantlr/Alternative;->Zo:[Lgroovyjarjarantlr/Lookahead;

    iget v4, v2, Lgroovyjarjarantlr/Alternative;->VH:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2d

    goto :goto_9e

    :cond_2d
    const v5, 0x7fffffff

    if-ne v4, v5, :cond_44

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "{?}:"

    :goto_3c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9e

    :cond_44
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " {"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    :goto_56
    if-gt v5, v4, :cond_93

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, v3, v5

    iget-object v8, p0, Lgroovyjarjarantlr/GrammarElement;->j6:Lgroovyjarjarantlr/Grammar;

    iget-object v8, v8, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {v8}, Lgroovyjarjarantlr/TokenManager;->j6()Lgroovyjarjarantlr/collections/impl/Vector;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v1, v9, v8}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    if-ge v5, v4, :cond_90

    add-int/lit8 v7, v5, 0x1

    aget-object v7, v3, v7

    if-eqz v7, :cond_90

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_90
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_93
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "}:"

    goto :goto_3c

    :goto_9e
    iget-object v3, v2, Lgroovyjarjarantlr/Alternative;->j6:Lgroovyjarjarantlr/AlternativeElement;

    iget-object v2, v2, Lgroovyjarjarantlr/Alternative;->Hw:Ljava/lang/String;

    if-eqz v2, :cond_b3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b3
    :goto_b3
    if-eqz v3, :cond_c7

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v3, Lgroovyjarjarantlr/AlternativeElement;->Hw:Lgroovyjarjarantlr/AlternativeElement;

    goto :goto_b3

    :cond_c7
    iget-object v2, p0, Lgroovyjarjarantlr/AlternativeBlock;->gn:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lgroovyjarjarantlr/collections/impl/Vector;->DW()I

    move-result v2

    sub-int/2addr v2, v6

    if-ge v0, v2, :cond_e1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " |"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    :cond_e5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
