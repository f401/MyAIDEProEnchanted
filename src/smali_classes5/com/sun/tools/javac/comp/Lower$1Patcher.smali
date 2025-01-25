.class Lcom/sun/tools/javac/comp/Lower$1Patcher;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "Lower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Lower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Patcher"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Lower;

.field final val$dest:Lcom/sun/tools/javac/tree/JCTree;

.field final val$src:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Lower;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3213
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Lower$1Patcher;->this$0:Lcom/sun/tools/javac/comp/Lower;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/Lower$1Patcher;->val$src:Lcom/sun/tools/javac/tree/JCTree;

    iput-object p3, p0, Lcom/sun/tools/javac/comp/Lower$1Patcher;->val$dest:Lcom/sun/tools/javac/tree/JCTree;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBreak(Lcom/sun/tools/javac/tree/JCTree$JCBreak;)V
    .registers 4

    .line 3215
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->target:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$1Patcher;->val$src:Lcom/sun/tools/javac/tree/JCTree;

    if-ne v0, v1, :cond_a

    .line 3216
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$1Patcher;->val$dest:Lcom/sun/tools/javac/tree/JCTree;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->target:Lcom/sun/tools/javac/tree/JCTree;

    .line 3217
    :cond_a
    return-void
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 2

    .line 3222
    return-void
.end method

.method public visitContinue(Lcom/sun/tools/javac/tree/JCTree$JCContinue;)V
    .registers 4

    .line 3219
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->target:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Lower$1Patcher;->val$src:Lcom/sun/tools/javac/tree/JCTree;

    if-ne v0, v1, :cond_a

    .line 3220
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Lower$1Patcher;->val$dest:Lcom/sun/tools/javac/tree/JCTree;

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->target:Lcom/sun/tools/javac/tree/JCTree;

    .line 3221
    :cond_a
    return-void
.end method
