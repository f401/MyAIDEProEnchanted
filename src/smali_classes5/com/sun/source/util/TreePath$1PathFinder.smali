.class Lcom/sun/source/util/TreePath$1PathFinder;
.super Lcom/sun/source/util/TreePathScanner;
.source "TreePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/source/util/TreePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PathFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreePathScanner",
        "<",
        "Lcom/sun/source/util/TreePath;",
        "Lcom/sun/source/tree/Tree;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/sun/source/util/TreePathScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;
    .registers 6

    .line 64
    if-eq p1, p2, :cond_9

    .line 66
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/util/TreePath;

    return-object v0

    .line 65
    :cond_9
    new-instance v0, Lcom/sun/source/util/TreePath$1Result;

    new-instance v1, Lcom/sun/source/util/TreePath;

    invoke-virtual {p0}, Lcom/sun/source/util/TreePath$1PathFinder;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/sun/source/util/TreePath;-><init>(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)V

    invoke-direct {v0, v1}, Lcom/sun/source/util/TreePath$1Result;-><init>(Lcom/sun/source/util/TreePath;)V

    throw v0
.end method

.method public bridge synthetic scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 62
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lcom/sun/source/util/TreePath$1PathFinder;->scan(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    return-object v0
.end method
