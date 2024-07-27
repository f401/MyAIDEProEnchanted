.class public Lcom/sun/tools/javac/tree/JCTree$JCBreak;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/BreakTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCBreak"
.end annotation


# instance fields
.field public label:Lcom/sun/tools/javac/util/Name;

.field public target:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 1740
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1741
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->label:Lcom/sun/tools/javac/util/Name;

    .line 1742
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->target:Lcom/sun/tools/javac/tree/JCTree;

    .line 1743
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

    .line 1760
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitBreak(Lcom/sun/source/tree/BreakTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1747
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitBreak(Lcom/sun/tools/javac/tree/JCTree$JCBreak;)V

    .line 1748
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1751
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->BREAK:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getLabel()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 1755
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->label:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getLabel()Ljavax/lang/model/element/Name;
    .registers 2

    .line 1736
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->getLabel()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1765
    const/16 v0, 0x15

    return v0
.end method
