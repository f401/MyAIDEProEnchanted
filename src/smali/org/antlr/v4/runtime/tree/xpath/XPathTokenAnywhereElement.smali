.class public Lorg/antlr/v4/runtime/tree/xpath/XPathTokenAnywhereElement;
.super Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
.source "XPathTokenAnywhereElement.java"


# instance fields
.field protected tokenType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/tree/xpath/XPathElement;-><init>(Ljava/lang/String;)V

    .line 18
    iput p2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenAnywhereElement;->tokenType:I

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

    .line 23
    iget v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathTokenAnywhereElement;->tokenType:I

    invoke-static {p1, v0}, Lorg/antlr/v4/runtime/tree/Trees;->findAllTokenNodes(Lorg/antlr/v4/runtime/tree/ParseTree;I)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
