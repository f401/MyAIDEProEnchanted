.class public Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/DoWhileLoopTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCDoWhileLoop"
.end annotation


# instance fields
.field public body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

.field public cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)V
    .registers 3

    .line 1171
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1172
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 1173
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1174
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

    .line 1195
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1178
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitDoLoop(Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;)V

    .line 1179
    return-void
.end method

.method public bridge synthetic getCondition()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1167
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->getCondition()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getCondition()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1186
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1182
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->DO_WHILE_LOOP:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getStatement()Lcom/sun/source/tree/StatementTree;
    .registers 2

    .line 1167
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->getStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    return-object v0
.end method

.method public getStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 2

    .line 1190
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1200
    const/16 v0, 0x8

    return v0
.end method
