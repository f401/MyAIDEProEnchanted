.class public abstract Lcom/sun/tools/javac/tree/JCTree$Visitor;
.super Ljava/lang/Object;
.source "JCTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Visitor"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;)V
    .registers 2

    .line 3187
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3188
    return-void
.end method

.method public visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .registers 2

    .line 3103
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3104
    return-void
.end method

.method public visitAssert(Lcom/sun/tools/javac/tree/JCTree$JCAssert;)V
    .registers 2

    .line 3099
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3100
    return-void
.end method

.method public visitAssign(Lcom/sun/tools/javac/tree/JCTree$JCAssign;)V
    .registers 2

    .line 3119
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3120
    return-void
.end method

.method public visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 2

    .line 3123
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3124
    return-void
.end method

.method public visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V
    .registers 2

    .line 3131
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3132
    return-void
.end method

.method public visitBlock(Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V
    .registers 2

    .line 3027
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3028
    return-void
.end method

.method public visitBreak(Lcom/sun/tools/javac/tree/JCTree$JCBreak;)V
    .registers 2

    .line 3083
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3084
    return-void
.end method

.method public visitCase(Lcom/sun/tools/javac/tree/JCTree$JCCase;)V
    .registers 2

    .line 3055
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3056
    return-void
.end method

.method public visitCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)V
    .registers 2

    .line 3067
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3068
    return-void
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 2

    .line 3011
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3012
    return-void
.end method

.method public visitConditional(Lcom/sun/tools/javac/tree/JCTree$JCConditional;)V
    .registers 2

    .line 3071
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3072
    return-void
.end method

.method public visitContinue(Lcom/sun/tools/javac/tree/JCTree$JCContinue;)V
    .registers 2

    .line 3087
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3088
    return-void
.end method

.method public visitDoLoop(Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .registers 2

    .line 3031
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3032
    return-void
.end method

.method public visitErroneous(Lcom/sun/tools/javac/tree/JCTree$JCErroneous;)V
    .registers 2

    .line 3195
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3196
    return-void
.end method

.method public visitExec(Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .registers 2

    .line 3079
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3080
    return-void
.end method

.method public visitForLoop(Lcom/sun/tools/javac/tree/JCTree$JCForLoop;)V
    .registers 2

    .line 3039
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3040
    return-void
.end method

.method public visitForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .registers 2

    .line 3043
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3044
    return-void
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 2

    .line 3151
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3152
    return-void
.end method

.method public visitIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V
    .registers 2

    .line 3075
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3076
    return-void
.end method

.method public visitImport(Lcom/sun/tools/javac/tree/JCTree$JCImport;)V
    .registers 2

    .line 3007
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3008
    return-void
.end method

.method public visitIndexed(Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;)V
    .registers 2

    .line 3143
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3144
    return-void
.end method

.method public visitLabelled(Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .registers 2

    .line 3047
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3048
    return-void
.end method

.method public visitLetExpr(Lcom/sun/tools/javac/tree/JCTree$LetExpr;)V
    .registers 2

    .line 3199
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3200
    return-void
.end method

.method public visitLiteral(Lcom/sun/tools/javac/tree/JCTree$JCLiteral;)V
    .registers 2

    .line 3155
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3156
    return-void
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 2

    .line 3015
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3016
    return-void
.end method

.method public visitModifiers(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;)V
    .registers 2

    .line 3191
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3192
    return-void
.end method

.method public visitNewArray(Lcom/sun/tools/javac/tree/JCTree$JCNewArray;)V
    .registers 2

    .line 3111
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3112
    return-void
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 2

    .line 3107
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3108
    return-void
.end method

.method public visitParens(Lcom/sun/tools/javac/tree/JCTree$JCParens;)V
    .registers 2

    .line 3115
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3116
    return-void
.end method

.method public visitReturn(Lcom/sun/tools/javac/tree/JCTree$JCReturn;)V
    .registers 2

    .line 3091
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3092
    return-void
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 2

    .line 3147
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3148
    return-void
.end method

.method public visitSkip(Lcom/sun/tools/javac/tree/JCTree$JCSkip;)V
    .registers 2

    .line 3023
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3024
    return-void
.end method

.method public visitSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)V
    .registers 2

    .line 3051
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3052
    return-void
.end method

.method public visitSynchronized(Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;)V
    .registers 2

    .line 3059
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3060
    return-void
.end method

.method public visitThrow(Lcom/sun/tools/javac/tree/JCTree$JCThrow;)V
    .registers 2

    .line 3095
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3096
    return-void
.end method

.method public visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .registers 2

    .line 3003
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3004
    return-void
.end method

.method public visitTree(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 2

    .line 3203
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 3204
    return-void
.end method

.method public visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V
    .registers 2

    .line 3063
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3064
    return-void
.end method

.method public visitTypeApply(Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;)V
    .registers 2

    .line 3167
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3168
    return-void
.end method

.method public visitTypeArray(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .registers 2

    .line 3163
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3164
    return-void
.end method

.method public visitTypeBoundKind(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;)V
    .registers 2

    .line 3183
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3184
    return-void
.end method

.method public visitTypeCast(Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;)V
    .registers 2

    .line 3135
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3136
    return-void
.end method

.method public visitTypeIdent(Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V
    .registers 2

    .line 3159
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3160
    return-void
.end method

.method public visitTypeParameter(Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;)V
    .registers 2

    .line 3175
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3176
    return-void
.end method

.method public visitTypeTest(Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;)V
    .registers 2

    .line 3139
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3140
    return-void
.end method

.method public visitTypeUnion(Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;)V
    .registers 2

    .line 3171
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3172
    return-void
.end method

.method public visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V
    .registers 2

    .line 3127
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3128
    return-void
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 2

    .line 3019
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3020
    return-void
.end method

.method public visitWhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;)V
    .registers 2

    .line 3035
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3036
    return-void
.end method

.method public visitWildcard(Lcom/sun/tools/javac/tree/JCTree$JCWildcard;)V
    .registers 2

    .line 3179
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTree(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 3180
    return-void
.end method
