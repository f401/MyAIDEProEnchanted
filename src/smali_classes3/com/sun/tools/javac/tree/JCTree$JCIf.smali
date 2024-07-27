.class public Lcom/sun/tools/javac/tree/JCTree$JCIf;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/IfTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCIf"
.end annotation


# instance fields
.field public cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

.field public thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)V
    .registers 4

    .line 1659
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1660
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1661
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 1662
    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 1663
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

    .line 1688
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1667
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V

    .line 1668
    return-void
.end method

.method public bridge synthetic getCondition()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1652
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCIf;->getCondition()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getCondition()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1675
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public bridge synthetic getElseStatement()Lcom/sun/source/tree/StatementTree;
    .registers 2

    .line 1652
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCIf;->getElseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    return-object v0
.end method

.method public getElseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 2

    .line 1683
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1671
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->IF:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1693
    const/16 v0, 0x13

    return v0
.end method

.method public bridge synthetic getThenStatement()Lcom/sun/source/tree/StatementTree;
    .registers 2

    .line 1652
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCIf;->getThenStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    return-object v0
.end method

.method public getThenStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 2

    .line 1679
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    return-object v0
.end method
