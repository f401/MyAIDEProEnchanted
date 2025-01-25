.class public Lcom/sun/tools/javac/tree/JCTree$JCCatch;
.super Lcom/sun/tools/javac/tree/JCTree;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/CatchTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCCatch"
.end annotation


# instance fields
.field public body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

.field public param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V
    .registers 3

    .line 1568
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree;-><init>()V

    .line 1569
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 1570
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 1571
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

    .line 1592
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1575
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)V

    .line 1576
    return-void
.end method

.method public bridge synthetic getBlock()Lcom/sun/source/tree/BlockTree;
    .registers 2

    .line 1564
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->getBlock()Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    return-object v0
.end method

.method public getBlock()Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    .registers 2

    .line 1587
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1579
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CATCH:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getParameter()Lcom/sun/source/tree/VariableTree;
    .registers 2

    .line 1564
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->getParameter()Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    return-object v0
.end method

.method public getParameter()Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    .registers 2

    .line 1583
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1597
    const/16 v0, 0x11

    return v0
.end method
