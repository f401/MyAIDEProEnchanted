.class public Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardElement;
.super Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
.source "XPathWildcardElement.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    const-string v0, "*"

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/tree/xpath/XPathElement;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 24
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardElement;->invert:Z

    if-eqz v0, :cond_a

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 25
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {p1}, Lorg/antlr/v4/runtime/tree/Trees;->getChildren(Lorg/antlr/v4/runtime/tree/Tree;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/tree/Tree;

    .line 27
    check-cast v1, Lorg/antlr/v4/runtime/tree/ParseTree;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_29
    return-object v0
.end method
