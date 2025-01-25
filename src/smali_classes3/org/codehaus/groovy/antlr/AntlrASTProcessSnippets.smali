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
    if-eqz p1, :cond_62

    if-eqz p2, :cond_14

    new-instance v0, Lorg/codehaus/groovy/antlr/LineColumn;

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v1

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j3()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/groovy/antlr/LineColumn;-><init>(II)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz p3, :cond_50

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/LineColumn;

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->Mr()I

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {v0}, Lorg/codehaus/groovy/antlr/LineColumn;->DW()I

    move-result v1

    invoke-virtual {v0}, Lorg/codehaus/groovy/antlr/LineColumn;->j6()I

    move-result v0

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v2

    if-lt v1, v2, :cond_42

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v2

    if-ne v1, v2, :cond_4a

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j3()I

    move-result v2

    if-ge v0, v2, :cond_4a

    :cond_42
    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v1

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j3()I

    move-result v0

    :cond_4a
    invoke-virtual {p1, v1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->Hw(I)V

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->FH(I)V

    :cond_50
    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    if-eqz v0, :cond_5b

    invoke-direct {p0, v0, p2, p3}, Lorg/codehaus/groovy/antlr/AntlrASTProcessSnippets;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;Ljava/util/List;Ljava/util/Iterator;)V

    :cond_5b
    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object p1

    check-cast p1, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    goto :goto_0

    :cond_62
    return-void
.end method


# virtual methods
.method public j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/codehaus/groovy/antlr/AntlrASTProcessSnippets;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;Ljava/util/List;Ljava/util/Iterator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    :cond_19
    invoke-direct {p0, v1, v2, v0}, Lorg/codehaus/groovy/antlr/AntlrASTProcessSnippets;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;Ljava/util/List;Ljava/util/Iterator;)V

    return-object p1
.end method
