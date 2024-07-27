.class public Lcom/sun/tools/javac/tree/JCTree$JCTry;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/TryTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCTry"
.end annotation


# instance fields
.field public body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

.field public catchers:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCatch;",
            ">;"
        }
    .end annotation
.end field

.field public finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

.field public resources:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCatch;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCBlock;",
            ")V"
        }
    .end annotation

    .line 1517
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1518
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 1519
    iput-object p3, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    .line 1520
    iput-object p4, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 1521
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    .line 1522
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/source/tree/TreeVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 1547
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1526
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V

    .line 1527
    return-void
.end method

.method public bridge synthetic getBlock()Lcom/sun/source/tree/BlockTree;
    .registers 2

    .line 1508
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCTry;->getBlock()Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    return-object v0
.end method

.method public getBlock()Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    .registers 2

    .line 1534
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    return-object v0
.end method

.method public getCatches()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCatch;",
            ">;"
        }
    .end annotation

    .line 1538
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getCatches()Ljava/util/List;
    .registers 2

    .line 1508
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCTry;->getCatches()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFinallyBlock()Lcom/sun/source/tree/BlockTree;
    .registers 2

    .line 1508
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCTry;->getFinallyBlock()Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    return-object v0
.end method

.method public getFinallyBlock()Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    .registers 2

    .line 1542
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1530
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->TRY:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getResources()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    .line 1552
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getResources()Ljava/util/List;
    .registers 2

    .line 1508
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCTry;->getResources()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1557
    const/16 v0, 0x10

    return v0
.end method
