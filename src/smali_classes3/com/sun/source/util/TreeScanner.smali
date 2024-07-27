.class public Lcom/sun/source/util/TreeScanner;
.super Ljava/lang/Object;
.source "TreeScanner.java"

# interfaces
.implements Lcom/sun/source/tree/TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sun/source/tree/TreeVisitor",
        "<TR;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "TP;TR;)TR;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sun/source/util/TreeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/sun/source/tree/Tree;",
            ">;TP;TR;)TR;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sun/source/util/TreeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)TR;"
        }
    .end annotation

    .line 107
    return-object p1
.end method

.method public scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "TP;)TR;"
        }
    .end annotation

    .line 76
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/sun/source/tree/Tree;",
            ">;TP;)TR;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 86
    .line 87
    if-eqz p1, :cond_1

    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 90
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    :goto_1
    const/4 v1, 0x0

    move-object v2, v0

    .line 92
    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0, v0, p2, v2}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 94
    :cond_1
    return-object v2
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/AnnotationTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 376
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getAnnotationType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 377
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 378
    return-object v0
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ArrayAccessTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 327
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getIndex()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    return-object v0
.end method

.method public visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ArrayTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 349
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/AssertTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 261
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getDetail()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 262
    return-object v0
.end method

.method public visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/AssignmentTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 293
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 294
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 295
    return-object v0
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/BinaryTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 309
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 310
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 311
    return-object v0
.end method

.method public visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/BlockTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 159
    invoke-interface {p1}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitBreak(Lcom/sun/source/tree/BreakTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/BreakTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CaseTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 200
    invoke-interface {p1}, Lcom/sun/source/tree/CaseTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    invoke-interface {p1}, Lcom/sun/source/tree/CaseTree;->getStatements()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    return-object v0
.end method

.method public visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CatchTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 220
    invoke-interface {p1}, Lcom/sun/source/tree/CatchTree;->getParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    invoke-interface {p1}, Lcom/sun/source/tree/CatchTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 222
    return-object v0
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ClassTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    return-object v0
.end method

.method public visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 116
    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getPackageAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getPackageName()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getImports()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getTypeDecls()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompoundAssignmentTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 299
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 300
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    return-object v0
.end method

.method public visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ConditionalExpressionTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 226
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    return-object v0
.end method

.method public visitContinue(Lcom/sun/source/tree/ContinueTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ContinueTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/DoWhileLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    return-object v0
.end method

.method public visitEmptyStatement(Lcom/sun/source/tree/EmptyStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/EmptyStatementTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/EnhancedForLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 183
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getVariable()Lcom/sun/source/tree/VariableTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 185
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    return-object v0
.end method

.method public visitErroneous(Lcom/sun/source/tree/ErroneousTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ErroneousTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionStatementTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 240
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionStatementTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ForLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 175
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getUpdate()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    return-object v0
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/IdentifierTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/IfTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 233
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getThenStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    return-object v0
.end method

.method public visitImport(Lcom/sun/source/tree/ImportTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ImportTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 124
    invoke-interface {p1}, Lcom/sun/source/tree/ImportTree;->getQualifiedIdentifier()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/InstanceOfTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 321
    invoke-interface {p1}, Lcom/sun/source/tree/InstanceOfTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 322
    invoke-interface {p1}, Lcom/sun/source/tree/InstanceOfTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    return-object v0
.end method

.method public visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/LabeledStatementTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 190
    invoke-interface {p1}, Lcom/sun/source/tree/LabeledStatementTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/LiteralTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MemberSelectTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 333
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getThrows()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getDefaultValue()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodInvocationTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 266
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 268
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 269
    return-object v0
.end method

.method public visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ModifiersTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 372
    invoke-interface {p1}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/NewArrayTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 282
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 284
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    return-object v0
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/NewClassTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 273
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 277
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 278
    return-object v0
.end method

.method public visitOther(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "TP;)TR;"
        }
    .end annotation

    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ParameterizedTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 353
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 354
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 355
    return-object v0
.end method

.method public visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ParenthesizedTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 289
    invoke-interface {p1}, Lcom/sun/source/tree/ParenthesizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/PrimitiveTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ReturnTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 252
    invoke-interface {p1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/SwitchTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 194
    invoke-interface {p1}, Lcom/sun/source/tree/SwitchTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    invoke-interface {p1}, Lcom/sun/source/tree/SwitchTree;->getCases()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 196
    return-object v0
.end method

.method public visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/SynchronizedTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 206
    invoke-interface {p1}, Lcom/sun/source/tree/SynchronizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    invoke-interface {p1}, Lcom/sun/source/tree/SynchronizedTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    return-object v0
.end method

.method public visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ThrowTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 256
    invoke-interface {p1}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/TryTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 212
    invoke-interface {p1}, Lcom/sun/source/tree/TryTree;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    invoke-interface {p1}, Lcom/sun/source/tree/TryTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    invoke-interface {p1}, Lcom/sun/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    invoke-interface {p1}, Lcom/sun/source/tree/TryTree;->getFinallyBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    return-object v0
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/TypeCastTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 315
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    return-object v0
.end method

.method public visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/TypeParameterTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 363
    invoke-interface {p1}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 364
    return-object v0
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/UnaryTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 305
    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/UnionTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 359
    invoke-interface {p1}, Lcom/sun/source/tree/UnionTypeTree;->getTypeAlternatives()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/VariableTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 148
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method public visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/WhileLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Lcom/sun/source/tree/WhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    invoke-interface {p1}, Lcom/sun/source/tree/WhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/sun/source/util/TreeScanner;->scanAndReduce(Lcom/sun/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method public visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/WildcardTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 368
    invoke-interface {p1}, Lcom/sun/source/tree/WildcardTree;->getBound()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
