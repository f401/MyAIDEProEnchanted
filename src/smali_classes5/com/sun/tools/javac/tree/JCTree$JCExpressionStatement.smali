.class public Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/ExpressionStatementTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCExpressionStatement"
.end annotation


# instance fields
.field public expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V
    .registers 2

    .line 1705
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1706
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1707
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

    .line 1724
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1711
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitExec(Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;)V

    .line 1712
    return-void
.end method

.method public bridge synthetic getExpression()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1702
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1719
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1715
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->EXPRESSION_STATEMENT:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1729
    const/16 v0, 0x14

    return v0
.end method
