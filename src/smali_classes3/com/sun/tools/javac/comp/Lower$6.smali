.class Lcom/sun/tools/javac/comp/Lower$6;
.super Ljava/lang/Object;
.source "Lower.java"

# interfaces
.implements Lcom/sun/tools/javac/comp/Lower$TreeBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Lower;->lowerBoxedPostop(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Lower;

.field final val$cast:Z

.field final val$tree:Lcom/sun/tools/javac/tree/JCTree$JCUnary;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/tree/JCTree$JCUnary;Z)V
    .registers 4

    .line 3042
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower$6;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/Lower$6;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    iput-boolean p3, p0, Lcom/sun/tools/javac/comp/Lower$6;->val$cast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5

    .line 3044
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$6;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$6;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    new-instance v2, Lcom/sun/tools/javac/comp/Lower$6$1;

    invoke-direct {v2, p0, p1}, Lcom/sun/tools/javac/comp/Lower$6$1;-><init>(Lcom/sun/tools/javac/comp/Lower$6;Lcom/sun/tools/javac/tree/JCTree;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/comp/Lower;->abstractRval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method
