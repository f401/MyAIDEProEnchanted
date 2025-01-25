.class public Lcom/sun/tools/javac/tree/JCTree$JCBinary;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/BinaryTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCBinary"
.end annotation


# instance fields
.field public lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field private opcode:I

.field public operator:Lcom/sun/tools/javac/code/Symbol;

.field public rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method protected constructor <init>(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 5

    .line 2262
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 2263
    iput p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->opcode:I

    .line 2264
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2265
    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2266
    iput-object p4, p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 2267
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

    .line 2292
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2271
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V

    .line 2272
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 2275
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->tagToKind(I)Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeftOperand()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 2253
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->getLeftOperand()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getLeftOperand()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 2279
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getOperator()Lcom/sun/tools/javac/code/Symbol;
    .registers 2

    .line 2287
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    return-object v0
.end method

.method public bridge synthetic getRightOperand()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 2253
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->getRightOperand()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getRightOperand()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 2283
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 2297
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->opcode:I

    return v0
.end method
