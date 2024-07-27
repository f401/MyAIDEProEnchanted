.class public Lgroovyjarjarantlr/preprocessor/GrammarFile;
.super Ljava/lang/Object;


# instance fields
.field protected DW:Lgroovyjarjarantlr/collections/impl/IndexedVector;

.field protected FH:Lgroovyjarjarantlr/collections/impl/IndexedVector;

.field protected j6:Ljava/lang/String;


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/preprocessor/GrammarFile;->j6:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v2, p0, Lgroovyjarjarantlr/preprocessor/GrammarFile;->DW:Lgroovyjarjarantlr/collections/impl/IndexedVector;

    if-nez v2, :cond_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x2710

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgroovyjarjarantlr/preprocessor/GrammarFile;->FH:Lgroovyjarjarantlr/collections/impl/IndexedVector;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/IndexedVector;->j6()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/preprocessor/Grammar;

    invoke-virtual {v0}, Lgroovyjarjarantlr/preprocessor/Grammar;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lgroovyjarjarantlr/preprocessor/Hierarchy;->j6(Lgroovyjarjarantlr/collections/impl/IndexedVector;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
