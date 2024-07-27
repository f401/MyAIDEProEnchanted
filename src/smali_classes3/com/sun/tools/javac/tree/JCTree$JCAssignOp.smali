.class public Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/CompoundAssignmentTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCAssignOp"
.end annotation


# instance fields
.field public lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field private opcode:I

.field public operator:Lcom/sun/tools/javac/code/Symbol;

.field public rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method protected constructor <init>(ILcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 5

    .line 2166
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 2167
    iput p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->opcode:I

    .line 2168
    check-cast p2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2169
    check-cast p3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2170
    iput-object p4, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 2171
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

    .line 2196
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2175
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V

    .line 2176
    return-void
.end method

.method public bridge synthetic getExpression()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 2160
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 2187
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 2179
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->tagToKind(I)Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Lcom/sun/tools/javac/code/Symbol;
    .registers 2

    .line 2191
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->operator:Lcom/sun/tools/javac/code/Symbol;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 2201
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->opcode:I

    return v0
.end method

.method public bridge synthetic getVariable()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 2160
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->getVariable()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getVariable()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 2183
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method
