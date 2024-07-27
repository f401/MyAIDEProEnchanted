.class public Lcom/sun/source/util/SimpleTreeVisitor;
.super Ljava/lang/Object;
.source "SimpleTreeVisitor.java"

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


# instance fields
.field protected final DEFAULT_VALUE:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/source/util/SimpleTreeVisitor;->DEFAULT_VALUE:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sun/source/util/SimpleTreeVisitor;->DEFAULT_VALUE:Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method protected defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "TP;)TR;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/sun/source/util/SimpleTreeVisitor;->DEFAULT_VALUE:Ljava/lang/Object;

    return-object v0
.end method

.method public final visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "TP;)TR;"
        }
    .end annotation

    .line 52
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final visit(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/sun/source/tree/Tree;",
            ">;TP;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 59
    invoke-virtual {p0, v0, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_0
    return-object v0
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/AnnotationTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 248
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ArrayAccessTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/AssertTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/AssignmentTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/BinaryTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CaseTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CatchTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ClassTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompoundAssignmentTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ConditionalExpressionTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/DoWhileLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/EnhancedForLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ForLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/IfTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/InstanceOfTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodInvocationTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/NewArrayTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/NewClassTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ParameterizedTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/SwitchTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/SynchronizedTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/TryTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/TypeCastTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/VariableTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/WhileLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/SimpleTreeVisitor;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
