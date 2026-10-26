.class public interface abstract Lcom/sun/tools/javac/tree/JCTree$Factory;
.super Ljava/lang/Object;
.source "JCTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract Annotation(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;"
        }
    .end annotation
.end method

.method public abstract Apply(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;"
        }
    .end annotation
.end method

.method public abstract Assert(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssert;
.end method

.method public abstract Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;
.end method

.method public abstract Assignop(ILcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;
.end method

.method public abstract Binary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;
.end method

.method public abstract Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;"
        }
    .end annotation
.end method

.method public abstract Break(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCBreak;
.end method

.method public abstract Case(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCCase;"
        }
    .end annotation
.end method

.method public abstract Catch(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCCatch;
.end method

.method public abstract ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCModifiers;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;"
        }
    .end annotation
.end method

.method public abstract Conditional(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCConditional;
.end method

.method public abstract Continue(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCContinue;
.end method

.method public abstract DoLoop(Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;
.end method

.method public abstract Erroneous(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCErroneous;"
        }
    .end annotation
.end method

.method public abstract Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;
.end method

.method public abstract ForLoop(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCForLoop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCForLoop;"
        }
    .end annotation
.end method

.method public abstract ForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;
.end method

.method public abstract Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;
.end method

.method public abstract If(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCIf;
.end method

.method public abstract Import(Lcom/sun/tools/javac/tree/JCTree;Z)Lcom/sun/tools/javac/tree/JCTree$JCImport;
.end method

.method public abstract Indexed(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;
.end method

.method public abstract Labelled(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;
.end method

.method public abstract LetExpr(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$LetExpr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$LetExpr;"
        }
    .end annotation
.end method

.method public abstract Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;
.end method

.method public abstract MethodDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCModifiers;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;"
        }
    .end annotation
.end method

.method public abstract Modifiers(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCModifiers;"
        }
    .end annotation
.end method

.method public abstract NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCNewArray;"
        }
    .end annotation
.end method

.method public abstract NewClass(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCNewClass;"
        }
    .end annotation
.end method

.method public abstract Parens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCParens;
.end method

.method public abstract Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;
.end method

.method public abstract Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
.end method

.method public abstract Skip()Lcom/sun/tools/javac/tree/JCTree$JCSkip;
.end method

.method public abstract Switch(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCSwitch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCase;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCSwitch;"
        }
    .end annotation
.end method

.method public abstract Synchronized(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;
.end method

.method public abstract Throw(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCThrow;
.end method

.method public abstract TopLevel(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;"
        }
    .end annotation
.end method

.method public abstract Try(Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCTry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCatch;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCTry;"
        }
    .end annotation
.end method

.method public abstract Try(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCTry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCatch;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCTry;"
        }
    .end annotation
.end method

.method public abstract TypeApply(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;"
        }
    .end annotation
.end method

.method public abstract TypeArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;
.end method

.method public abstract TypeBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;
.end method

.method public abstract TypeCast(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;
.end method

.method public abstract TypeIdent(I)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;
.end method

.method public abstract TypeParameter(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;"
        }
    .end annotation
.end method

.method public abstract TypeTest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;
.end method

.method public abstract Unary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;
.end method

.method public abstract VarDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
.end method

.method public abstract WhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;
.end method

.method public abstract Wildcard(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCWildcard;
.end method
