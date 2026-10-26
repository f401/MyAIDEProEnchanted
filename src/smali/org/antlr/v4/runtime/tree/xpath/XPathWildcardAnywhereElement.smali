.class public Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardAnywhereElement;
.super Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
.source "XPathWildcardAnywhereElement.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    const-string v0, "*"

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/tree/xpath/XPathElement;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 22
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardAnywhereElement;->invert:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/antlr/v4/runtime/tree/Trees;->getDescendants(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
