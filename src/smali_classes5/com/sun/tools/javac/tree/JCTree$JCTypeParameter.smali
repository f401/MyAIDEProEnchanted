.class public Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;
.super Lcom/sun/tools/javac/tree/JCTree;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/TypeParameterTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCTypeParameter"
.end annotation


# instance fields
.field public bounds:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field public name:Lcom/sun/tools/javac/util/Name;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)V"
        }
    .end annotation

    .line 2757
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree;-><init>()V

    .line 2758
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->name:Lcom/sun/tools/javac/util/Name;

    .line 2759
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    .line 2760
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

    .line 2781
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2764
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTypeParameter(Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;)V

    .line 2765
    return-void
.end method

.method public getBounds()Lcom/sun/tools/javac/util/List;
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

    .line 2776
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getBounds()Ljava/util/List;
    .registers 2

    .line 2753
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->getBounds()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 2768
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getName()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 2772
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->name:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getName()Ljavax/lang/model/element/Name;
    .registers 2

    .line 2753
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->getName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 2786
    const/16 v0, 0x29

    return v0
.end method
