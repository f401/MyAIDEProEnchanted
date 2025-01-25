.class public Lorg/antlr/v4/runtime/tree/xpath/XPathRuleAnywhereElement;
.super Lorg/antlr/v4/runtime/tree/xpath/XPathElement;
.source "XPathRuleAnywhereElement.java"


# instance fields
.field protected ruleIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 20
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/tree/xpath/XPathElement;-><init>(Ljava/lang/String;)V

    .line 21
    iput p2, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleAnywhereElement;->ruleIndex:I

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

    .line 26
    iget v0, p0, Lorg/antlr/v4/runtime/tree/xpath/XPathRuleAnywhereElement;->ruleIndex:I

    invoke-static {p1, v0}, Lorg/antlr/v4/runtime/tree/Trees;->findAllRuleNodes(Lorg/antlr/v4/runtime/tree/ParseTree;I)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
