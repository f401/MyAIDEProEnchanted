.class Lgroovyjarjarantlr/preprocessor/Grammar;
.super Ljava/lang/Object;


# instance fields
.field protected DW:Ljava/lang/String;

.field protected FH:Ljava/lang/String;

.field protected Hw:Lgroovyjarjarantlr/collections/impl/IndexedVector;

.field protected VH:Ljava/lang/String;

.field protected Zo:Ljava/lang/String;

.field protected gn:Ljava/lang/String;

.field protected j6:Ljava/lang/String;

.field protected u7:Ljava/lang/String;

.field protected v5:Lgroovyjarjarantlr/collections/impl/IndexedVector;


# virtual methods
.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->VH:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    iget-object v1, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->DW:Ljava/lang/String;

    const-string v2, ";"

    const-string v3, "class "

    if-nez v1, :cond_2b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b
    iget-object v1, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->u7:Ljava/lang/String;

    const-string v4, " extends "

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->j6:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->u7:Ljava/lang/String;

    goto :goto_56

    :cond_44
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->j6:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->FH:Ljava/lang/String;

    :goto_56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->v5:Lgroovyjarjarantlr/collections/impl/IndexedVector;

    if-eqz v1, :cond_8a

    invoke-static {v1}, Lgroovyjarjarantlr/preprocessor/Hierarchy;->j6(Lgroovyjarjarantlr/collections/impl/IndexedVector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8a
    iget-object v1, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->Zo:Ljava/lang/String;

    if-eqz v1, :cond_a4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->Zo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a4
    iget-object v1, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->gn:Ljava/lang/String;

    if-eqz v1, :cond_c0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->gn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c0
    const/4 v1, 0x0

    :goto_c1
    iget-object v3, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->Hw:Lgroovyjarjarantlr/collections/impl/IndexedVector;

    invoke-virtual {v3}, Lgroovyjarjarantlr/collections/impl/IndexedVector;->DW()I

    move-result v3

    if-ge v1, v3, :cond_122

    iget-object v3, p0, Lgroovyjarjarantlr/preprocessor/Grammar;->Hw:Lgroovyjarjarantlr/collections/impl/IndexedVector;

    invoke-virtual {v3, v1}, Lgroovyjarjarantlr/collections/impl/IndexedVector;->j6(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgroovyjarjarantlr/preprocessor/Rule;

    invoke-virtual {p0}, Lgroovyjarjarantlr/preprocessor/Grammar;->j6()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lgroovyjarjarantlr/preprocessor/Rule;->u7:Lgroovyjarjarantlr/preprocessor/Grammar;

    invoke-virtual {v5}, Lgroovyjarjarantlr/preprocessor/Grammar;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_102

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "// inherited from grammar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v3, Lgroovyjarjarantlr/preprocessor/Rule;->u7:Lgroovyjarjarantlr/preprocessor/Grammar;

    invoke-virtual {v5}, Lgroovyjarjarantlr/preprocessor/Grammar;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_102
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    :cond_122
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
