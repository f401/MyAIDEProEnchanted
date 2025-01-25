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

    if-nez v0, :cond_7

    move-object v0, v1

    :cond_7
    iget-object v2, p0, Lgroovyjarjarantlr/preprocessor/GrammarFile;->DW:Lgroovyjarjarantlr/collections/impl/IndexedVector;

    if-nez v2, :cond_c

    goto :goto_10

    :cond_c
    invoke-static {v2}, Lgroovyjarjarantlr/preprocessor/Hierarchy;->j6(Lgroovyjarjarantlr/collections/impl/IndexedVector;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x2710

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgroovyjarjarantlr/preprocessor/GrammarFile;->FH:Lgroovyjarjarantlr/collections/impl/IndexedVector;

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/IndexedVector;->j6()Ljava/util/Enumeration;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/preprocessor/Grammar;

    invoke-virtual {v1}, Lgroovyjarjarantlr/preprocessor/Grammar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
