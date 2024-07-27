.class public Lorg/codehaus/groovy/antlr/AntlrASTProcessSnippets;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/groovy/antlr/AntlrASTProcessor;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;Ljava/util/List;Ljava/util/Iterator;)V
    .registers 7

    :goto_0
    if-eqz p1, :cond_5

    if-eqz p2, :cond_0

    new-instance v0, Lorg/codehaus/groovy/antlr/LineColumn;

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v1

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j3()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/groovy/antlr/LineColumn;-><init>(II)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/LineColumn;

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->Mr()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/codehaus/groovy/antlr/LineColumn;->DW()I

    move-result v1

    invoke-virtual {v0}, Lorg/codehaus/groovy/antlr/LineColumn;->j6()I

    move-result v0

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j3()I

    move-result v2

    if-ge v0, v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v1

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j3()I

    move-result v0

    :cond_2
    invoke-virtual {p1, v1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->Hw(I)V

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->FH(I)V

    :cond_3
    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0, p2, p3}, Lorg/codehaus/groovy/antlr/AntlrASTProcessSnippets;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;Ljava/util/List;Ljava/util/Iterator;)V

    :cond_4
    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-object p1, v0

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    invoke-direct {p0, v0, v1, v3}, Lorg/codehaus/groovy/antlr/AntlrASTProcessSnippets;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;Ljava/util/List;Ljava/util/Iterator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, v0, v3, v1}, Lorg/codehaus/groovy/antlr/AntlrASTProcessSnippets;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;Ljava/util/List;Ljava/util/Iterator;)V

    return-object p1
.end method
