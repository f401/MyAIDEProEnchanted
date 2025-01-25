.class Lcom/sun/tools/javac/comp/Lower$3;
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

.field final val$i:Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)V
    .registers 4

    .line 2115
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower$3;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/Lower$3;->val$i:Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    iput-object p3, p0, Lcom/sun/tools/javac/comp/Lower$3;->val$builder:Lcom/sun/tools/javac/comp/Lower$TreeBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6

    .line 2117
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$3;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$3;->val$i:Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->index:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Lower$3;->this$0:Lcom/sun/tools/javac/comp/Lower;

    invoke-static {v2}, Lcom/sun/tools/javac/comp/Lower;->access$500(Lcom/sun/tools/javac/comp/Lower;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    new-instance v3, Lcom/sun/tools/javac/comp/Lower$3$1;

    invoke-direct {v3, p0, p1}, Lcom/sun/tools/javac/comp/Lower$3$1;-><init>(Lcom/sun/tools/javac/comp/Lower$3;Lcom/sun/tools/javac/tree/JCTree;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/Lower;->abstractRval(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/comp/Lower$TreeBuilder;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method
