.class public Lcom/sun/tools/javac/tree/TreeCopier;
.super Ljava/lang/Object;
.source "TreeCopier.java"

# interfaces
.implements Lcom/sun/source/tree/TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sun/source/tree/TreeVisitor",
        "<",
        "Lcom/sun/tools/javac/tree/JCTree;",
        "TP;>;"
    }
.end annotation


# instance fields
.field private M:Lcom/sun/tools/javac/tree/TreeMaker;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/tree/TreeMaker;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 48
    return-void
.end method


# virtual methods
.method public copy(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(TT;TP;)TT;"
        }
    .end annotation

    .line 56
    if-nez p1, :cond_4

    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1, p0, p2}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_3
.end method

.method public copy(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;)",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;TP;)",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 66
    if-nez p1, :cond_4

    .line 67
    const/4 v0, 0x0

    .line 71
    :goto_3
    return-object v0

    .line 68
    :cond_4
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 70
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_d

    .line 71
    :cond_21
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/AnnotationTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 75
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    .line 76
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 77
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Annotation(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ArrayAccessTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 213
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    .line 214
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 215
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->index:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 216
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Indexed(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ArrayTypeTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 348
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    .line 349
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 350
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/AssertTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 82
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;

    .line 83
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 84
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 85
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Assert(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssert;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/AssignmentTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 89
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    .line 90
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 91
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 92
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/BinaryTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 103
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    .line 104
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 105
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 106
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->getTag()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Binary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/BlockTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 110
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 111
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-wide v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->flags:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitBreak(Lcom/sun/source/tree/BreakTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/BreakTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 116
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCBreak;

    .line 117
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->label:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Break(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCBreak;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitBreak(Lcom/sun/source/tree/BreakTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitBreak(Lcom/sun/source/tree/BreakTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CaseTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 121
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    .line 122
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 123
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Case(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CatchTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 128
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    .line 129
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 130
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 131
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Catch(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ClassTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 135
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 136
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    .line 137
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 138
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 139
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 140
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 141
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 318
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 319
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packageAnnotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 320
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pid:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 321
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 322
    iget-object v3, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pos:I

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->TopLevel(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompoundAssignmentTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 96
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    .line 97
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 98
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->getTag()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Assignop(ILcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ConditionalExpressionTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 145
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;

    .line 146
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 147
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 148
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 149
    iget-object v3, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->pos:I

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Conditional(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCConditional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitContinue(Lcom/sun/source/tree/ContinueTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ContinueTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 153
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCContinue;

    .line 154
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->label:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Continue(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCContinue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitContinue(Lcom/sun/source/tree/ContinueTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitContinue(Lcom/sun/source/tree/ContinueTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/DoWhileLoopTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 158
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;

    .line 159
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 160
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 161
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->DoLoop(Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitEmptyStatement(Lcom/sun/source/tree/EmptyStatementTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/EmptyStatementTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 293
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCSkip;

    .line 294
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCSkip;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Skip()Lcom/sun/tools/javac/tree/JCTree$JCSkip;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitEmptyStatement(Lcom/sun/source/tree/EmptyStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitEmptyStatement(Lcom/sun/source/tree/EmptyStatementTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/EnhancedForLoopTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 177
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;

    .line 178
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 179
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 180
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 181
    iget-object v3, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->pos:I

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->ForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitErroneous(Lcom/sun/source/tree/ErroneousTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ErroneousTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 165
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    .line 166
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Erroneous(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitErroneous(Lcom/sun/source/tree/ErroneousTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitErroneous(Lcom/sun/source/tree/ErroneousTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionStatementTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 171
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    .line 172
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 173
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ForLoopTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 185
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;

    .line 186
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 187
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 188
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->step:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 189
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 190
    iget-object v4, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->pos:I

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->ForLoop(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCForLoop;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/IdentifierTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 194
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    .line 195
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/IfTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 199
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;

    .line 200
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 201
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 202
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 203
    iget-object v3, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->pos:I

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->If(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCIf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitImport(Lcom/sun/source/tree/ImportTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ImportTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 207
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;

    .line 208
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;->qualid:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-boolean v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Import(Lcom/sun/tools/javac/tree/JCTree;Z)Lcom/sun/tools/javac/tree/JCTree$JCImport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitImport(Lcom/sun/source/tree/ImportTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitImport(Lcom/sun/source/tree/ImportTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/InstanceOfTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 372
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;

    .line 373
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 374
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeTest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/LabeledStatementTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 220
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;

    .line 221
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 222
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Labelled(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/LiteralTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 226
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    .line 227
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->typetag:I

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MemberSelectTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 287
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 288
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 289
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 231
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 232
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    .line 233
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 234
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 235
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 236
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 237
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v7

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 238
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v8

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 239
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos:I

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual/range {v0 .. v8}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodInvocationTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 243
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    .line 244
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 245
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 246
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 247
    iget-object v3, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->pos:I

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Apply(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ModifiersTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 251
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    .line 252
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-wide v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/NewArrayTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 257
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    .line 258
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 259
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 260
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 261
    iget-object v3, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->pos:I

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/NewClassTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 265
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    .line 266
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 267
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 268
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 269
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 270
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 271
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v6, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->pos:I

    invoke-virtual {v0, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/tree/TreeMaker;->NewClass(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitOther(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 407
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 408
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_26

    .line 410
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;

    .line 411
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 412
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->expr:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->LetExpr(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$LetExpr;

    move-result-object v0

    return-object v0

    .line 416
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tree tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitOther(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitOther(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ParameterizedTypeTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 335
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    .line 336
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 337
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeApply(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ParenthesizedTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 275
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;

    .line 276
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 277
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Parens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCParens;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/PrimitiveTypeTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 361
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    .line 362
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->typetag:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(I)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ReturnTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 281
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    .line 282
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 283
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/SwitchTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 298
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;

    .line 299
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 300
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 301
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Switch(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCSwitch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/SynchronizedTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 305
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;

    .line 306
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->lock:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 307
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 308
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Synchronized(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ThrowTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 312
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;

    .line 313
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Throw(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCThrow;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/TryTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 326
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;

    .line 327
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 328
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 329
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 330
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 331
    iget-object v4, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v5, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->pos:I

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Try(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCTry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/TypeCastTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 354
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    .line 355
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 356
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 357
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/TypeParameterTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 366
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    .line 367
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeParameter(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/UnaryTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 379
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    .line 380
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 381
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Unary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/UnionTypeTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 342
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;

    .line 343
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/util/List;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeUnion(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/VariableTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 385
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 386
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    .line 387
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 388
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 389
    iget-object v3, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos:I

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/WhileLoopTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 393
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;

    .line 394
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 395
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 396
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->WhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/WildcardTree;",
            "TP;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 400
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    .line 401
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->kind:Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    iget v1, v1, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->kind:Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v0

    .line 402
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->inner:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->copy(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    .line 403
    iget-object v2, p0, Lcom/sun/tools/javac/tree/TreeCopier;->M:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->pos:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Wildcard(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/tree/TreeCopier;->visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method
