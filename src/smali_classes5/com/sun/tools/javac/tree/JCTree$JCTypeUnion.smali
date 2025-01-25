.class public Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/UnionTypeTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCTypeUnion"
.end annotation


# instance fields
.field public alternatives:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
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
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)V"
        }
    .end annotation

    .line 2719
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 2720
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lcom/sun/tools/javac/util/List;

    .line 2721
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

    .line 2738
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2725
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTypeUnion(Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;)V

    .line 2726
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 2729
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 2743
    const/16 v0, 0x28

    return v0
.end method

.method public getTypeAlternatives()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 2733
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getTypeAlternatives()Ljava/util/List;
    .registers 2

    .line 2715
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->getTypeAlternatives()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method
