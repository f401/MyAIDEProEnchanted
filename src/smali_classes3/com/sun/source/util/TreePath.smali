.class public Lcom/sun/source/util/TreePath;
.super Ljava/lang/Object;
.source "TreePath.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/source/util/TreePath$1PathFinder;,
        Lcom/sun/source/util/TreePath$1Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/sun/source/tree/Tree;",
        ">;"
    }
.end annotation


# instance fields
.field private compilationUnit:Lcom/sun/source/tree/CompilationUnitTree;

.field private leaf:Lcom/sun/source/tree/Tree;

.field private parent:Lcom/sun/source/util/TreePath;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/CompilationUnitTree;)V
    .registers 3

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sun/source/util/TreePath;-><init>(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-interface {p2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->COMPILATION_UNIT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    move-object v0, p2

    .line 90
    check-cast v0, Lcom/sun/source/tree/CompilationUnitTree;

    iput-object v0, p0, Lcom/sun/source/util/TreePath;->compilationUnit:Lcom/sun/source/tree/CompilationUnitTree;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/source/util/TreePath;->parent:Lcom/sun/source/util/TreePath;

    .line 97
    :goto_0
    iput-object p2, p0, Lcom/sun/source/util/TreePath;->leaf:Lcom/sun/source/tree/Tree;

    .line 98
    return-void

    .line 94
    :cond_0
    iget-object v0, p1, Lcom/sun/source/util/TreePath;->compilationUnit:Lcom/sun/source/tree/CompilationUnitTree;

    iput-object v0, p0, Lcom/sun/source/util/TreePath;->compilationUnit:Lcom/sun/source/tree/CompilationUnitTree;

    .line 95
    iput-object p1, p0, Lcom/sun/source/util/TreePath;->parent:Lcom/sun/source/util/TreePath;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Tree;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/sun/source/util/TreePath;->leaf:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/sun/source/util/TreePath;->parent:Lcom/sun/source/util/TreePath;

    return-object v0
.end method

.method public static getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;
    .registers 3

    .line 44
    new-instance v0, Lcom/sun/source/util/TreePath;

    invoke-direct {v0, p0}, Lcom/sun/source/util/TreePath;-><init>(Lcom/sun/source/tree/CompilationUnitTree;)V

    invoke-static {v0, p1}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    return-object v0
.end method

.method public static getPath(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;
    .registers 3

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    :try_start_0
    new-instance v0, Lcom/sun/source/util/TreePath$1PathFinder;

    invoke-direct {v0}, Lcom/sun/source/util/TreePath$1PathFinder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/sun/source/util/TreePath$1PathFinder;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sun/source/util/TreePath$1Result; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    iget-object v0, v0, Lcom/sun/source/util/TreePath$1Result;->path:Lcom/sun/source/util/TreePath;

    goto :goto_0
.end method


# virtual methods
.method public getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/sun/source/util/TreePath;->compilationUnit:Lcom/sun/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method public getLeaf()Lcom/sun/source/tree/Tree;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/sun/source/util/TreePath;->leaf:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public getParentPath()Lcom/sun/source/util/TreePath;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/sun/source/util/TreePath;->parent:Lcom/sun/source/util/TreePath;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sun/source/tree/Tree;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/sun/source/util/TreePath$1;

    invoke-direct {v0, p0}, Lcom/sun/source/util/TreePath$1;-><init>(Lcom/sun/source/util/TreePath;)V

    return-object v0
.end method
