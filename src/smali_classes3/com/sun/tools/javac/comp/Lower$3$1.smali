.class Lcom/sun/tools/javac/comp/Lower$3$1;
.super Ljava/lang/Object;
.source "Lower.java"

# interfaces
.implements Lcom/sun/tools/javac/comp/Lower$TreeBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Lower$3;->build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/sun/tools/javac/comp/Lower$3;

.field final val$indexed:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Lower$3;Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 2117
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower$3$1;->this$1:Lcom/sun/tools/javac/comp/Lower$3;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/Lower$3$1;->val$indexed:Lcom/sun/tools/javac/tree/JCTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 4

    .line 2119
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$3$1;->this$1:Lcom/sun/tools/javac/comp/Lower$3;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Lower$3;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$3$1;->val$indexed:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Indexed(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v0

    .line 2121
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$3$1;->this$1:Lcom/sun/tools/javac/comp/Lower$3;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Lower$3;->val$i:Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;

    .line 2122
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$3$1;->this$1:Lcom/sun/tools/javac/comp/Lower$3;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Lower$3;->val$builder:Lcom/sun/tools/javac/comp/Lower$TreeBuilder;

    invoke-interface {v1, v0}, Lcom/sun/tools/javac/comp/Lower$TreeBuilder;->build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method
