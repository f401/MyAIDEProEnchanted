.class public Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/EnhancedForLoopTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCEnhancedForLoop"
.end annotation


# instance fields
.field public body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

.field public expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field public var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)V
    .registers 4

    .line 1307
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1308
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 1309
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1310
    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 1311
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

    .line 1336
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1315
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V

    .line 1316
    return-void
.end method

.method public bridge synthetic getExpression()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 1302
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 1327
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1319
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ENHANCED_FOR_LOOP:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getStatement()Lcom/sun/source/tree/StatementTree;
    .registers 2

    .line 1302
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->getStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    return-object v0
.end method

.method public getStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 2

    .line 1331
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1341
    const/16 v0, 0xb

    return v0
.end method

.method public bridge synthetic getVariable()Lcom/sun/source/tree/VariableTree;
    .registers 2

    .line 1302
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->getVariable()Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    return-object v0
.end method

.method public getVariable()Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    .registers 2

    .line 1323
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    return-object v0
.end method
