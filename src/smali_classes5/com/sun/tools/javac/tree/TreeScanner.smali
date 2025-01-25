.class public Lcom/sun/tools/javac/tree/TreeScanner;
.super Lcom/sun/tools/javac/tree/JCTree$Visitor;
.source "TreeScanner.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 2

    .line 49
    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 50
    :cond_5
    return-void
.end method

.method public scan(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .line 55
    if-eqz p1, :cond_12

    .line 56
    :goto_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 57
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 56
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_2

    .line 58
    :cond_12
    return-void
.end method

.method public visitAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;)V
    .registers 3

    .line 299
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 300
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 301
    return-void
.end method

.method public visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .registers 3

    .line 196
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 197
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 198
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 199
    return-void
.end method

.method public visitAssert(Lcom/sun/tools/javac/tree/JCTree$JCAssert;)V
    .registers 3

    .line 191
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 192
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 193
    return-void
.end method

.method public visitAssign(Lcom/sun/tools/javac/tree/JCTree$JCAssign;)V
    .registers 3

    .line 220
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 221
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 222
    return-void
.end method

.method public visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 3

    .line 225
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 226
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 227
    return-void
.end method

.method public visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V
    .registers 3

    .line 234
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 235
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 236
    return-void
.end method

.method public visitBlock(Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V
    .registers 3

    .line 103
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 104
    return-void
.end method

.method public visitBreak(Lcom/sun/tools/javac/tree/JCTree$JCBreak;)V
    .registers 2

    .line 177
    return-void
.end method

.method public visitCase(Lcom/sun/tools/javac/tree/JCTree$JCCase;)V
    .registers 3

    .line 139
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 140
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 141
    return-void
.end method

.method public visitCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)V
    .registers 3

    .line 156
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 157
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 158
    return-void
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 3

    .line 76
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 77
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 78
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 79
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 80
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 81
    return-void
.end method

.method public visitConditional(Lcom/sun/tools/javac/tree/JCTree$JCConditional;)V
    .registers 3

    .line 161
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 162
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 163
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 164
    return-void
.end method

.method public visitContinue(Lcom/sun/tools/javac/tree/JCTree$JCContinue;)V
    .registers 2

    .line 180
    return-void
.end method

.method public visitDoLoop(Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .registers 3

    .line 107
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 108
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 109
    return-void
.end method

.method public visitErroneous(Lcom/sun/tools/javac/tree/JCTree$JCErroneous;)V
    .registers 2

    .line 304
    return-void
.end method

.method public visitExec(Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .registers 3

    .line 173
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 174
    return-void
.end method

.method public visitForLoop(Lcom/sun/tools/javac/tree/JCTree$JCForLoop;)V
    .registers 3

    .line 117
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 118
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 119
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->step:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 120
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 121
    return-void
.end method

.method public visitForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .registers 3

    .line 124
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 125
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 126
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 127
    return-void
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 2

    .line 258
    return-void
.end method

.method public visitIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V
    .registers 3

    .line 167
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 168
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 169
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 170
    return-void
.end method

.method public visitImport(Lcom/sun/tools/javac/tree/JCTree$JCImport;)V
    .registers 3

    .line 72
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;->qualid:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 73
    return-void
.end method

.method public visitIndexed(Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;)V
    .registers 3

    .line 249
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 250
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->index:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 251
    return-void
.end method

.method public visitLabelled(Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .registers 3

    .line 130
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 131
    return-void
.end method

.method public visitLetExpr(Lcom/sun/tools/javac/tree/JCTree$LetExpr;)V
    .registers 3

    .line 307
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 308
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->expr:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 309
    return-void
.end method

.method public visitLiteral(Lcom/sun/tools/javac/tree/JCTree$JCLiteral;)V
    .registers 2

    .line 261
    return-void
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 3

    .line 84
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 85
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 86
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 87
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 88
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 89
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 90
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 91
    return-void
.end method

.method public visitModifiers(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;)V
    .registers 3

    .line 295
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 296
    return-void
.end method

.method public visitNewArray(Lcom/sun/tools/javac/tree/JCTree$JCNewArray;)V
    .registers 3

    .line 210
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 211
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 212
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 213
    return-void
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 3

    .line 202
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 203
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 204
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 205
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 206
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 207
    return-void
.end method

.method public visitParens(Lcom/sun/tools/javac/tree/JCTree$JCParens;)V
    .registers 3

    .line 216
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 217
    return-void
.end method

.method public visitReturn(Lcom/sun/tools/javac/tree/JCTree$JCReturn;)V
    .registers 3

    .line 183
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 184
    return-void
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 3

    .line 254
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 255
    return-void
.end method

.method public visitSkip(Lcom/sun/tools/javac/tree/JCTree$JCSkip;)V
    .registers 2

    .line 100
    return-void
.end method

.method public visitSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)V
    .registers 3

    .line 134
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 135
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 136
    return-void
.end method

.method public visitSynchronized(Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;)V
    .registers 3

    .line 144
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->lock:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 145
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 146
    return-void
.end method

.method public visitThrow(Lcom/sun/tools/javac/tree/JCTree$JCThrow;)V
    .registers 3

    .line 187
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 188
    return-void
.end method

.method public visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .registers 3

    .line 66
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packageAnnotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 67
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pid:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 68
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 69
    return-void
.end method

.method public visitTree(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 2

    .line 312
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 313
    return-void
.end method

.method public visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V
    .registers 3

    .line 149
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 150
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 151
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 152
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 153
    return-void
.end method

.method public visitTypeApply(Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;)V
    .registers 3

    .line 271
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 272
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 273
    return-void
.end method

.method public visitTypeArray(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .registers 3

    .line 267
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 268
    return-void
.end method

.method public visitTypeBoundKind(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;)V
    .registers 2

    .line 292
    return-void
.end method

.method public visitTypeCast(Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;)V
    .registers 3

    .line 239
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 240
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 241
    return-void
.end method

.method public visitTypeIdent(Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V
    .registers 2

    .line 264
    return-void
.end method

.method public visitTypeParameter(Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;)V
    .registers 3

    .line 280
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 281
    return-void
.end method

.method public visitTypeTest(Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;)V
    .registers 3

    .line 244
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 245
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 246
    return-void
.end method

.method public visitTypeUnion(Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;)V
    .registers 3

    .line 276
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/util/List;)V

    .line 277
    return-void
.end method

.method public visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V
    .registers 3

    .line 230
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 231
    return-void
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 3

    .line 94
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 95
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 96
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 97
    return-void
.end method

.method public visitWhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;)V
    .registers 3

    .line 112
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 113
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 114
    return-void
.end method

.method public visitWildcard(Lcom/sun/tools/javac/tree/JCTree$JCWildcard;)V
    .registers 3

    .line 285
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->kind:Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 286
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->inner:Lcom/sun/tools/javac/tree/JCTree;

    if-eqz v0, :cond_e

    .line 287
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->inner:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 288
    :cond_e
    return-void
.end method
