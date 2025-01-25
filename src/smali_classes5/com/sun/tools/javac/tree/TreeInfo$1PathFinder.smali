.class Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "TreeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/TreeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PathFinder"
.end annotation


# instance fields
.field path:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field

.field final val$node:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 523
    iput-object p1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;->val$node:Lcom/sun/tools/javac/tree/JCTree;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    .line 524
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;->path:Lcom/sun/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public scan(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 4

    .line 526
    if-eqz p1, :cond_17

    .line 527
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;->path:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;->path:Lcom/sun/tools/javac/util/List;

    .line 528
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;->val$node:Lcom/sun/tools/javac/tree/JCTree;

    if-eq p1, v0, :cond_18

    .line 530
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 531
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;->path:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;->path:Lcom/sun/tools/javac/util/List;

    .line 533
    :cond_17
    return-void

    .line 529
    :cond_18
    new-instance v0, Lcom/sun/tools/javac/tree/TreeInfo$1Result;

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;->path:Lcom/sun/tools/javac/util/List;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/tree/TreeInfo$1Result;-><init>(Lcom/sun/tools/javac/util/List;)V

    throw v0
.end method
