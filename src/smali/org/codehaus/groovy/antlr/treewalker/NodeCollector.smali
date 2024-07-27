.class public Lorg/codehaus/groovy/antlr/treewalker/NodeCollector;
.super Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;


# instance fields
.field private j6:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeCollector;->j6:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public FH()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeCollector;->j6:Ljava/util/List;

    return-object v0
.end method

.method public ji(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/NodeCollector;->j6:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
