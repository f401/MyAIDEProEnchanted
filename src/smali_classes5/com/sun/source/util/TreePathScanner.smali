.class public Lcom/sun/source/util/TreePathScanner;
.super Lcom/sun/source/util/TreeScanner;
.source "TreePathScanner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/source/util/TreeScanner",
        "<TR;TP;>;"
    }
.end annotation


# instance fields
.field private path:Lcom/sun/source/util/TreePath;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/sun/source/util/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPath()Lcom/sun/source/util/TreePath;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/sun/source/util/TreePathScanner;->path:Lcom/sun/source/util/TreePath;

    return-object v0
.end method

.method public scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "TP;)TR;"
        }
    .end annotation

    .line 61
    if-nez p1, :cond_4

    .line 62
    const/4 v0, 0x0

    .line 67
    :goto_3
    return-object v0

    .line 64
    :cond_4
    iget-object v1, p0, Lcom/sun/source/util/TreePathScanner;->path:Lcom/sun/source/util/TreePath;

    .line 65
    new-instance v0, Lcom/sun/source/util/TreePath;

    iget-object v2, p0, Lcom/sun/source/util/TreePathScanner;->path:Lcom/sun/source/util/TreePath;

    invoke-direct {v0, v2, p1}, Lcom/sun/source/util/TreePath;-><init>(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)V

    iput-object v0, p0, Lcom/sun/source/util/TreePathScanner;->path:Lcom/sun/source/util/TreePath;

    .line 67
    :try_start_f
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_16

    move-result-object v0

    .line 69
    iput-object v1, p0, Lcom/sun/source/util/TreePathScanner;->path:Lcom/sun/source/util/TreePath;

    goto :goto_3

    :catchall_16
    move-exception v0

    iput-object v1, p0, Lcom/sun/source/util/TreePathScanner;->path:Lcom/sun/source/util/TreePath;

    .line 70
    throw v0
.end method

.method public scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/util/TreePath;",
            "TP;)TR;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 47
    iput-object p1, p0, Lcom/sun/source/util/TreePathScanner;->path:Lcom/sun/source/util/TreePath;

    .line 49
    :try_start_3
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    move-result-object v0

    .line 51
    iput-object v1, p0, Lcom/sun/source/util/TreePathScanner;->path:Lcom/sun/source/util/TreePath;

    .line 49
    return-object v0

    .line 51
    :catchall_e
    move-exception v0

    iput-object v1, p0, Lcom/sun/source/util/TreePathScanner;->path:Lcom/sun/source/util/TreePath;

    .line 52
    throw v0
.end method
