.class public Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardAnywhereElement;
.super Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
.source "XPathWildcardAnywhereElement.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    const-string v0, "*"

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/tree/xpath/XPathElement;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;
    .registers 3
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

    .line 22
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathWildcardAnywhereElement;->invert:Z

    if-eqz v0, :cond_a

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 23
    :cond_a
    invoke-static {p1}, Lorg/antlr/v4/runtime/tree/Trees;->getDescendants(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
