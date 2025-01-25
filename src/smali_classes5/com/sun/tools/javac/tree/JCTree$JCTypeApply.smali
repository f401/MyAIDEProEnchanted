.class public Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/ParameterizedTypeTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCTypeApply"
.end annotation


# instance fields
.field public arguments:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field public clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)V"
        }
    .end annotation

    .line 2679
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 2680
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2681
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lcom/sun/tools/javac/util/List;

    .line 2682
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

    .line 2703
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2686
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTypeApply(Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;)V

    .line 2687
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 2690
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 2708
    const/16 v0, 0x27

    return v0
.end method

.method public bridge synthetic getType()Lcom/sun/source/tree/Tree;
    .registers 2

    .line 2675
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->getType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/sun/tools/javac/tree/JCTree;
    .registers 2

    .line 2694
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getTypeArguments()Lcom/sun/tools/javac/util/List;
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

    .line 2698
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getTypeArguments()Ljava/util/List;
    .registers 2

    .line 2675
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method
