.class public Lorg/codehaus/groovy/antlr/treewalker/NodePrinter;
.super Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;


# instance fields
.field private DW:Ljava/io/PrintStream;

.field private j6:[Ljava/lang/String;


# virtual methods
.method public ji(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/treewalker/NodePrinter;->DW:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/NodePrinter;->j6:[Ljava/lang/String;

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v3

    aget-object v0, v0, v3

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/codehaus/groovy/antlr/treewalker/NodePrinter;->DW:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "</"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/NodePrinter;->j6:[Ljava/lang/String;

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v3

    aget-object v0, v0, v3

    goto :goto_0
.end method
