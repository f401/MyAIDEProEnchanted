.class public Lcom/sun/tools/javac/tree/JCTree$JCConditional;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/ConditionalExpressionTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCConditional"
.end annotation


# instance fields
.field public cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V
    .registers 4

    .line 1611
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 1612
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1613
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1614
    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1615
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/source/tree/TreeVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 1640
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1619
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitConditional(Lcom/sun/tools/javac/tree/JCTree$JCConditional;)V

    .line 1620
    return-void
.end method

.method public bridge synthetic getCondition()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1604
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->getCondition()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getCondition()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1627
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public bridge synthetic getFalseExpression()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1604
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->getFalseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getFalseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1635
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1623
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1645
    const/16 v0, 0x12

    return v0
.end method

.method public bridge synthetic getTrueExpression()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1604
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->getTrueExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getTrueExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1631
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method
