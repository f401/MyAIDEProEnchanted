.class public Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/WhileLoopTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCWhileLoop"
.end annotation


# instance fields
.field public body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

.field public cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)V
    .registers 3

    .line 1211
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1212
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1213
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 1214
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

    .line 1235
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1218
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitWhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;)V

    .line 1219
    return-void
.end method

.method public bridge synthetic getCondition()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1207
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->getCondition()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getCondition()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1226
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1222
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->WHILE_LOOP:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getStatement()Lcom/sun/source/tree/StatementTree;
    .registers 2

    .line 1207
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->getStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    return-object v0
.end method

.method public getStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 2

    .line 1230
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1240
    const/16 v0, 0x9

    return v0
.end method
