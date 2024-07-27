.class public Lcom/sun/tools/javac/tree/JCTree$JCAssert;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/AssertTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCAssert"
.end annotation


# instance fields
.field public cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V
    .registers 3

    .line 1880
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1881
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1882
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1883
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

    .line 1904
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1887
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitAssert(Lcom/sun/tools/javac/tree/JCTree$JCAssert;)V

    .line 1888
    return-void
.end method

.method public bridge synthetic getCondition()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1876
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->getCondition()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getCondition()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1895
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public bridge synthetic getDetail()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1876
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->getDetail()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getDetail()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1899
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1891
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ASSERT:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1909
    const/16 v0, 0x19

    return v0
.end method
