.class Lcom/sun/tools/javac/comp/Lower$6$1;
.super Ljava/lang/Object;
.source "Lower.java"

# interfaces
.implements Lcom/sun/tools/javac/comp/Lower$TreeBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Lower$6;->build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/sun/tools/javac/comp/Lower$6;

.field final val$tmp1:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Lower$6;Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 3044
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower$6$1;->this$1:Lcom/sun/tools/javac/comp/Lower$6;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/Lower$6$1;->val$tmp1:Lcom/sun/tools/javac/tree/JCTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7

    .line 3046
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$6$1;->this$1:Lcom/sun/tools/javac/comp/Lower$6;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower$6;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_4f

    .line 3047
    const/16 v0, 0x58

    move v1, v0

    .line 3048
    :goto_f
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$6$1;->this$1:Lcom/sun/tools/javac/comp/Lower$6;

    iget-boolean v0, v0, Lcom/sun/tools/javac/comp/Lower$6;->val$cast:Z

    if-eqz v0, :cond_53

    .line 3049
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$6$1;->this$1:Lcom/sun/tools/javac/comp/Lower$6;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower$6;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$6$1;->this$1:Lcom/sun/tools/javac/comp/Lower$6;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower$6;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$6$1;->val$tmp1:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    .line 3051
    :goto_2d
    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower$6$1;->this$1:Lcom/sun/tools/javac/comp/Lower$6;

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Lower$6;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Lower$6$1;->this$1:Lcom/sun/tools/javac/comp/Lower$6;

    iget-object v3, v3, Lcom/sun/tools/javac/comp/Lower$6;->this$0:Lcom/sun/tools/javac/comp/Lower;

    .line 3053
    invoke-static {v3}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v3

    .line 3051
    invoke-virtual {v2, v1, v0, v3}, Lcom/sun/tools/javac/comp/Lower;->makeAssignop(ILcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    move-result-object v0

    .line 3054
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$6$1;->this$1:Lcom/sun/tools/javac/comp/Lower$6;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Lower$6;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-virtual {v1, v0, p1}, Lcom/sun/tools/javac/comp/Lower;->makeComma(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0

    .line 3047
    :cond_4f
    const/16 v0, 0x59

    move v1, v0

    goto :goto_f

    .line 3050
    :cond_53
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$6$1;->val$tmp1:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_2d
.end method
