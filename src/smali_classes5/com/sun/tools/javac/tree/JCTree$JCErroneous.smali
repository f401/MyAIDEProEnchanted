.class public Lcom/sun/tools/javac/tree/JCTree$JCErroneous;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/ErroneousTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCErroneous"
.end annotation


# instance fields
.field public errs:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .line 2938
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 2939
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    .line 2940
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

    .line 2957
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitErroneous(Lcom/sun/source/tree/ErroneousTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2944
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitErroneous(Lcom/sun/tools/javac/tree/JCTree$JCErroneous;)V

    .line 2945
    return-void
.end method

.method public getErrorTrees()Lcom/sun/tools/javac/util/List;
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

    .line 2952
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getErrorTrees()Ljava/util/List;
    .registers 2

    .line 2934
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->getErrorTrees()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 2948
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ERRONEOUS:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 2962
    const/16 v0, 0x2f

    return v0
.end method
