.class public Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;
.super Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;


# instance fields
.field private j6:Ljava/util/Stack;


# direct methods
.method private FH()Lorg/codehaus/groovy/antlr/GroovySourceAST;
    .registers 5

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->j6:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->j6:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->j6:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->j6:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->j6:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    return-object v0
.end method

.method private FH(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V
    .registers 5

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->j6:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->FH()Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/CommonAST;->setType(I)V

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/BaseAST;->DW(Lgroovyjarjarantlr/collections/AST;)V

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Lgroovyjarjarantlr/CommonAST;->setType(I)V

    :cond_0
    return-void
.end method

.method private Hw(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    return-void
.end method


# virtual methods
.method public DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V
    .registers 5

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    invoke-virtual {v0}, Lgroovyjarjarantlr/BaseAST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    check-cast v1, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    invoke-virtual {p1, v1}, Lgroovyjarjarantlr/BaseAST;->DW(Lgroovyjarjarantlr/collections/AST;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgroovyjarjarantlr/BaseAST;->FH(Lgroovyjarjarantlr/collections/AST;)V

    invoke-virtual {v1, v0}, Lgroovyjarjarantlr/BaseAST;->FH(Lgroovyjarjarantlr/collections/AST;)V

    return-void
.end method

.method public j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->j6:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ji(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->Hw(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->FH(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_0
.end method

.method public pop()Lorg/codehaus/groovy/antlr/GroovySourceAST;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->j6:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/java/PreJava2GroovyConverter;->j6:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
