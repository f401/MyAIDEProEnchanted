.class Lcom/sun/tools/javac/comp/Lower$5;
.super Ljava/lang/Object;
.source "Lower.java"

# interfaces
.implements Lcom/sun/tools/javac/comp/Lower$TreeBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Lower;->visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Lower;

.field final val$tree:Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 3

    .line 2989
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower$5;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/Lower$5;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 8

    .line 2991
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$5;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->getTag()I

    move-result v0

    add-int/lit8 v2, v0, -0x11

    .line 2996
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$5;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Lower;->access$1000(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/comp/Resolve;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$5;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower$5;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v3, v3, Lcom/sun/tools/javac/comp/Lower;->attrEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower$5;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Lower$5;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v5, v5, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, v5, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/comp/Resolve;->resolveBinaryOperator(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;ILcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    move-object v0, p1

    .line 3001
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 3002
    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower$5;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->type:Lcom/sun/tools/javac/code/Type;

    if-eq v3, v4, :cond_3f

    .line 3003
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower$5;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower$5;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    .line 3004
    :cond_3f
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower$5;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Lower$5;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3, v2, v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Binary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v0

    .line 3005
    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->operator:Lcom/sun/tools/javac/code/Symbol;

    .line 3006
    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->type:Lcom/sun/tools/javac/code/Type;

    .line 3007
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$5;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower$5;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v2}, Lcom/sun/tools/javac/comp/Lower;->access$1100(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Types;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower$5;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Types;->unboxedType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    .line 3009
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$5;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, p1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$5;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method
