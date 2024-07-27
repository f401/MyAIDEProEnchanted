.class public Lorg/codehaus/groovy/antlr/java/Groovifier;
.super Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;

# interfaces
.implements Lorg/codehaus/groovy/antlr/parser/GroovyTokenTypes;


# instance fields
.field private DW:Z

.field private j6:Ljava/lang/String;


# virtual methods
.method public Lz(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->DW(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/antlr/java/Groovifier;->j6:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public ji(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/groovy/antlr/java/Groovifier;->DW:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Lgroovyjarjarantlr/CommonAST;->setType(I)V

    :cond_0
    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->DW(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/java/Groovifier;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Lgroovyjarjarantlr/CommonAST;->setType(I)V

    :cond_1
    return-void
.end method
