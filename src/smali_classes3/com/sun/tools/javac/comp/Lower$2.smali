.class Lcom/sun/tools/javac/comp/Lower$2;
.super Ljava/lang/Object;
.source "Lower.java"

# interfaces
.implements Lcom/sun/tools/javac/comp/Lower$TreeBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Lower;->abstractLval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Lower;

.field final val$builder:Lcom/sun/tools/javac/comp/Lower$TreeBuilder;

.field final val$s:Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 4

    .line 2107
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower$2;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/Lower$2;->val$builder:Lcom/sun/tools/javac/comp/Lower$TreeBuilder;

    iput-object p3, p0, Lcom/sun/tools/javac/comp/Lower$2;->val$s:Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5

    .line 2109
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$2;->val$builder:Lcom/sun/tools/javac/comp/Lower$TreeBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$2;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/Lower;->access$700(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower$2;->val$s:Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1, p1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/tools/javac/comp/Lower$TreeBuilder;->build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method
