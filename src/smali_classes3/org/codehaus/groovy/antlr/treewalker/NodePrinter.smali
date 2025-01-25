.class public Lorg/codehaus/groovy/antlr/treewalker/NodePrinter;
.super Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;


# instance fields
.field private DW:Ljava/io/PrintStream;

.field private j6:[Ljava/lang/String;


# virtual methods
.method public ji(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 6

    const/4 v0, 0x1

    const-string v1, ">"

    if-ne p2, v0, :cond_1a

    iget-object p2, p0, Lorg/codehaus/groovy/antlr/treewalker/NodePrinter;->DW:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/treewalker/NodePrinter;->j6:[Ljava/lang/String;

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result p1

    aget-object p1, v2, p1

    goto :goto_2e

    :cond_1a
    iget-object p2, p0, Lorg/codehaus/groovy/antlr/treewalker/NodePrinter;->DW:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/treewalker/NodePrinter;->j6:[Ljava/lang/String;

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result p1

    aget-object p1, v2, p1

    :goto_2e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
