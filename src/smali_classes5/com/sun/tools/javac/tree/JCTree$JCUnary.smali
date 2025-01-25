.class public Lcom/sun/tools/javac/tree/JCTree$JCUnary;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/UnaryTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCUnary"
.end annotation


# instance fields
.field public arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field private opcode:I

.field public operator:Lcom/sun/tools/javac/code/Symbol;


# direct methods
.method protected constructor <init>(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)V
    .registers 3

    .line 2213
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 2214
    iput p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->opcode:I

    .line 2215
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2216
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

    .line 2237
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2220
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V

    .line 2221
    return-void
.end method

.method public bridge synthetic getExpression()Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 2208
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 2228
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 2224
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->tagToKind(I)Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Lcom/sun/tools/javac/code/Symbol;
    .registers 2

    .line 2232
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->operator:Lcom/sun/tools/javac/code/Symbol;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 2242
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->opcode:I

    return v0
.end method

.method public setTag(I)V
    .registers 2

    .line 2246
    iput p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->opcode:I

    .line 2247
    return-void
.end method
